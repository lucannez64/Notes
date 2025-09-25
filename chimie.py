import numpy as np
from scipy.linalg import null_space
from collections import defaultdict
import re
from fractions import Fraction
from math import gcd
from functools import reduce

class ChemicalParser:
    """Fixed parser for chemical formulas"""
    
    def __init__(self):
        self.elements = {
            'H': 1, 'He': 2, 'Li': 3, 'Be': 4, 'B': 5, 'C': 6, 'N': 7, 'O': 8, 'F': 9, 'Ne': 10,
            'Na': 11, 'Mg': 12, 'Al': 13, 'Si': 14, 'P': 15, 'S': 16, 'Cl': 17, 'Ar': 18, 'K': 19, 'Ca': 20,
            'Sc': 21, 'Ti': 22, 'V': 23, 'Cr': 24, 'Mn': 25, 'Fe': 26, 'Co': 27, 'Ni': 28, 'Cu': 29, 'Zn': 30,
            'Ga': 31, 'Ge': 32, 'As': 33, 'Se': 34, 'Br': 35, 'Kr': 36, 'Rb': 37, 'Sr': 38, 'Y': 39, 'Zr': 40,
            'Nb': 41, 'Mo': 42, 'Tc': 43, 'Ru': 44, 'Rh': 45, 'Pd': 46, 'Ag': 47, 'Cd': 48, 'In': 49, 'Sn': 50,
            'Sb': 51, 'Te': 52, 'I': 53, 'Xe': 54, 'Cs': 55, 'Ba': 56, 'La': 57, 'Ce': 58, 'Pr': 59, 'Nd': 60,
            'Pm': 61, 'Sm': 62, 'Eu': 63, 'Gd': 64, 'Tb': 65, 'Dy': 66, 'Ho': 67, 'Er': 68, 'Tm': 69, 'Yb': 70,
            'Lu': 71, 'Hf': 72, 'Ta': 73, 'W': 74, 'Re': 75, 'Os': 76, 'Ir': 77, 'Pt': 78, 'Au': 79, 'Hg': 80,
            'Tl': 81, 'Pb': 82, 'Bi': 83, 'Po': 84, 'At': 85, 'Rn': 86, 'Fr': 87, 'Ra': 88, 'Ac': 89, 'Th': 90,
            'Pa': 91, 'U': 92, 'Np': 93, 'Pu': 94, 'Am': 95, 'Cm': 96, 'Bk': 97, 'Cf': 98, 'Es': 99, 'Fm': 100
        }
        self.element_set = set(self.elements.keys())
    
    def parse_formula(self, formula):
        """Parse chemical formula with proper element recognition"""
        if not formula:
            return {}
        
        formula = formula.replace(' ', '')
        stack = []
        current = defaultdict(int)
        i = 0
        length = len(formula)
        
        while i < length:
            char = formula[i]
            
            if char.isupper():
                # Start of element symbol
                if i + 1 < length and formula[i + 1].islower():
                    element = formula[i:i+2]
                    i += 2
                else:
                    element = formula[i]
                    i += 1
                
                if element not in self.element_set:
                    if len(element) == 2 and element[0] in self.element_set:
                        element = element[0]
                    else:
                        raise ValueError(f"Unknown element: {element}")
                
                # Parse subscript
                num = 0
                while i < length and formula[i].isdigit():
                    num = num * 10 + int(formula[i])
                    i += 1
                if num == 0:
                    num = 1
                
                current[element] += num
                
            elif char.islower():
                # Part of previous element
                i += 1
                
            elif char in '([{':
                stack.append((current.copy(), 1))
                current = defaultdict(int)
                i += 1
                
            elif char in ')]}':
                i += 1
                # Parse multiplier
                num = 0
                while i < length and formula[i].isdigit():
                    num = num * 10 + int(formula[i])
                    i += 1
                if num == 0:
                    num = 1
                
                # Apply multiplier
                for element in current:
                    current[element] *= num
                
                if stack:
                    parent_counts, parent_mult = stack.pop()
                    for element in current:
                        parent_counts[element] += current[element] * parent_mult
                    current = parent_counts
                else:
                    raise ValueError("Mismatched brackets")
                    
            elif char.isdigit():
                i += 1
            else:
                i += 1
        
        return dict(current)

class ChemicalBalancer:
    """Corrected chemical equation balancer with proper stoichiometry"""
    
    def __init__(self):
        self.parser = ChemicalParser()
    
    def build_coefficient_matrix(self, compounds, side_signs):
        """Build the stoichiometry matrix A correctly - FIXED VERSION"""
        if len(compounds) != len(side_signs):
            raise ValueError("Number of compounds must match number of signs")
        
        # Parse all compounds first
        parsed_compounds = []
        for compound in compounds:
            parsed = self.parser.parse_formula(compound)
            parsed_compounds.append(parsed)
        
        # Get all unique elements
        elements = self.get_all_elements(compounds)
        n_elements = len(elements)
        n_compounds = len(compounds)
        
        # Build stoichiometry matrix ν (STANDARD FORM - CORRECTED)
        # ν[i,j] = stoichiometric coefficient of compound j for element i
        # Reactants: NEGATIVE, Products: POSITIVE
        # For balancing: ν * x = 0 where x[j] > 0 are balancing coefficients
        nu = np.zeros((n_elements, n_compounds))
        
        element_to_idx = {el: idx for idx, el in enumerate(elements)}
        
        for j, (compound, sign) in enumerate(zip(compounds, side_signs)):
            parsed = parsed_compounds[j]
            for element, count in parsed.items():
                if element in element_to_idx:
                    i = element_to_idx[element]
                    # CORRECTED: Reactants (sign > 0) get NEGATIVE coefficients
                    # Products (sign < 0) get POSITIVE coefficients
                    nu[i, j] = count * (-1 if sign > 0 else 1)
        
        print(f"📊 Stoichiometry matrix ν ({n_elements}×{n_compounds}):")
        print(nu)
        
        return nu, elements, parsed_compounds
    
    def balance_equation(self, compounds, side_signs):
        """Balance equation using correct linear algebra - FIXED VERSION"""
        try:
            # Build stoichiometry matrix
            nu, elements, parsed_compounds = self.build_coefficient_matrix(compounds, side_signs)
            
            if np.allclose(nu, 0):
                raise ValueError("Empty stoichiometry matrix")
            
            # Compute null space of stoichiometry matrix
            # Solve ν * x = 0 where x are balancing coefficients (all positive)
            ns = null_space(nu.T)  # Transpose because scipy expects A*x=0
            
            print(f"🔍 Null space dimension: {ns.shape[1]}")
            
            if ns.shape[1] == 0:
                rank = np.linalg.matrix_rank(nu)
                raise ValueError(f"No balancing solution (rank {rank}/{nu.shape[0]})")
            
            # Take first basis vector
            x = ns[:, 0]
            print(f"📈 Raw null space vector: {x}")
            
            # FIXED NORMALIZATION: Make all coefficients positive and scale properly
            x_normalized = self._normalize_null_space_vector(x)
            print(f"📏 Normalized coefficients: {x_normalized}")
            
            # Convert to smallest integers - IMPROVED VERSION
            integer_coeffs = self._convert_to_smallest_integers(x_normalized)
            print(f"🔢 Final integer coefficients: {integer_coeffs}")
            
            # Verify the solution
            residual = np.dot(nu, integer_coeffs)
            print(f"🔍 Verification residual: {residual}")
            if not np.allclose(residual, 0, atol=1e-2):  # Relaxed tolerance for integers
                print("⚠️  Warning: Solution may not be exact due to numerical precision")
                # Try to find exact solution
                exact_coeffs = self._find_exact_solution(nu, integer_coeffs)
                if exact_coeffs is not None:
                    integer_coeffs = exact_coeffs
                    residual = np.dot(nu, integer_coeffs)
                    print(f"🎯 Exact solution found: {integer_coeffs}")
                    print(f"🔍 Exact verification residual: {residual}")
            
            return integer_coeffs, elements, parsed_compounds, nu
            
        except Exception as e:
            print(f"❌ Error in balancing: {e}")
            import traceback
            traceback.print_exc()
            return None, None, None, None
    
    def _normalize_null_space_vector(self, x):
        """FIXED: Normalize null space vector to have all positive coefficients"""
        # Make all coefficients positive by flipping sign if needed
        if np.min(x) < 0:
            x = -x
        
        # FIXED: Scale so the SMALLEST ABSOLUTE VALUE is 1 (not minimum of positives)
        abs_x = np.abs(x)
        min_abs = np.min(abs_x[abs_x > 1e-10])
        if min_abs > 0:
            scale = 1.0 / min_abs
            x = x * scale
        
        return x
    
    def _convert_to_smallest_integers(self, coeffs, tolerance=1e-6):
        """IMPROVED: Convert floating point coefficients to smallest integers"""
        # Round to nearest integers first (since null space should give near-integers)
        rounded_coeffs = np.round(coeffs).astype(int)
        
        # Check if rounding is reasonable
        if np.all(np.abs(coeffs - rounded_coeffs) < tolerance):
            # Reduce by GCD
            non_zero = rounded_coeffs[rounded_coeffs != 0]
            if len(non_zero) > 0:
                g = reduce(gcd, non_zero)
                if g > 1:
                    rounded_coeffs = rounded_coeffs // g
            return rounded_coeffs
        
        # Fallback: use fraction-based approach
        return self._fraction_based_integers(coeffs)
    
    def _fraction_based_integers(self, coeffs, tolerance=1e-8):
        """Convert using exact fractions as fallback"""
        frac_coeffs = []
        for c in coeffs:
            if abs(c) > tolerance:
                frac = Fraction(c).limit_denominator(max_denominator=1000)
                frac_coeffs.append(frac)
            else:
                frac_coeffs.append(Fraction(0))
        
        # Find LCM of denominators
        denominators = [f.denominator for f in frac_coeffs if f.denominator != 1]
        if denominators:
            lcm_den = reduce(self._lcm, denominators, 1)
        else:
            lcm_den = 1
        
        # Convert to integers
        integer_coeffs = np.array([int((f.numerator * lcm_den) // f.denominator) 
                                 for f in frac_coeffs], dtype=int)
        
        # Reduce by GCD
        non_zero = integer_coeffs[integer_coeffs != 0]
        if len(non_zero) > 0:
            g = reduce(gcd, non_zero)
            if g > 1:
                integer_coeffs = integer_coeffs // g
        
        return integer_coeffs
    
    def _find_exact_solution(self, nu, approx_coeffs):
        """Try to find exact integer solution near the approximate one"""
        # Test small integer multiples around the approximate solution
        for scale in range(1, 6):  # Try scaling up to 5x
            test_coeffs = np.round(approx_coeffs * scale).astype(int)
            non_zero = test_coeffs[test_coeffs != 0]
            if len(non_zero) > 0:
                g = reduce(gcd, non_zero)
                if g > 1:
                    test_coeffs = test_coeffs // g
            
            residual = np.dot(nu, test_coeffs)
            if np.all(np.abs(residual) < 1e-6):
                return test_coeffs
        
        return None
    
    def _lcm(self, a, b):
        """Least common multiple"""
        return abs(a * b) // gcd(a, b) if a and b else 0
    
    def get_all_elements(self, compounds):
        """Get all unique elements"""
        all_elements = set()
        for compound in compounds:
            formula_dict = self.parser.parse_formula(compound)
            all_elements.update(formula_dict.keys())
        return sorted(list(all_elements))

class EquationPrinter:
    """Enhanced equation printer with better formatting"""
    
    def __init__(self):
        self.parser = ChemicalParser()
        self.subscript_map = str.maketrans("0123456789", "₀₁₂₃₄₅₆₇₈₉")
    
    def print_balanced_equation(self, compounds, coefficients, side_signs, equation_num=None):
        """Print beautifully formatted balanced equation"""
        if coefficients is None:
            print("❌ Could not balance the equation")
            return False
        
        if np.all(coefficients == 0):
            print("⚠️  Trivial solution (all coefficients zero)")
            return False
        
        # Separate reactants and products
        reactants = []
        products = []
        
        for i, (compound, coeff, sign) in enumerate(zip(compounds, coefficients, side_signs)):
            if abs(coeff) < 1e-6:  # Skip near-zero coefficients
                continue
            
            abs_coeff = abs(coeff)
            # Don't show coefficient 1 except for standalone elements
            if compound in self.parser.element_set and abs_coeff == 1:
                show_coeff = ""
            else:
                show_coeff = str(abs_coeff)
            
            # Format compound with subscripts
            formatted_compound = self._format_formula(compound)
            
            if sign > 0:  # Reactant
                if show_coeff:
                    reactants.append(f"{show_coeff} {formatted_compound}")
                else:
                    reactants.append(formatted_compound)
            else:  # Product
                if show_coeff:
                    products.append(f"{show_coeff} {formatted_compound}")
                else:
                    products.append(formatted_compound)
        
        if not reactants or not products:
            print("⚠️  No valid reactants or products")
            return False
        
        equation_str = " + ".join(reactants) + " → " + " + ".join(products)
        
        if equation_num:
            print(f"\n{'='*10} {equation_num} {'='*10}")
        
        print("\n" + "="*80)
        print("⚗️  BALANCED CHEMICAL EQUATION")
        print("="*80)
        print(f"  {equation_str}")
        print("="*80)
        
        # Verify balance
        return self.verify_balance(compounds, coefficients, side_signs)
    
    def _format_formula(self, formula):
        """Format formula with proper subscripts"""
        result = formula.translate(self.subscript_map)
        return result
    
    def verify_balance(self, compounds, coefficients, side_signs):
        """Verify equation balance with detailed output"""
        print("\n🔬 BALANCE VERIFICATION:")
        
        reactant_totals = defaultdict(int)
        product_totals = defaultdict(int)
        parser = self.parser
        
        for i, (compound, coeff, sign) in enumerate(zip(compounds, coefficients, side_signs)):
            if abs(coeff) < 1e-6:
                continue
            
            try:
                parsed = parser.parse_formula(compound)
                multiplier = abs(coeff)
                
                for element, count in parsed.items():
                    if sign > 0:  # Reactant
                        reactant_totals[element] += count * multiplier
                    else:  # Product
                        product_totals[element] += count * multiplier
            except Exception as e:
                print(f"  ⚠️  Could not parse {compound}: {e}")
                continue
        
        all_elements = set(reactant_totals) | set(product_totals)
        is_balanced = True
        
        print(f"\n{'Element':<8} | {'Reactants':>10} | {'Products':>10} | {'Status':<8}")
        print("-" * 50)
        
        for element in sorted(all_elements):
            r = reactant_totals.get(element, 0)
            p = product_totals.get(element, 0)
            status = "✅" if abs(r - p) < 1e-6 else "❌"
            if abs(r - p) > 1e-6:
                is_balanced = False
            print(f"{element:<8} | {r:>10.0f} | {p:>10.0f} | {status}")
        
        if is_balanced:
            print(f"\n🎉 Perfectly balanced! ✓ All elements conserved")
        else:
            print(f"\n⚠️  Equation NOT balanced! Check coefficients")
        
        return is_balanced

def main():
    """Main demonstration function with corrected test cases"""
    print("🧪 CORRECTED CHEMICAL EQUATION BALANCER")
    print("=" * 60)
    print("Fixed: Proper stoichiometry matrix + robust integer conversion!")
    print("=" * 60)
    
    balancer = ChemicalBalancer()
    printer = EquationPrinter()
    
    # Test cases - CORRECTED FORMULAS AND SIGNS
    test_cases = [
        {
            "num": "1️⃣",
            "desc": "HCl + MnO₂ → MnCl₂ + H₂O + Cl₂",  # Removed incorrect coefficients
            "compounds": ["HCl", "MnO2", "MnCl2", "H2O", "Cl2"],
            "signs": [1, 1, -1, -1, -1]  # Reactants: +, Products: -
        },
        {
            "num": "2️⃣",
            "desc": "NaOH + H₂CO₃ → Na₂CO₃ + H₂O", 
            "compounds": ["NaOH", "H2CO3", "Na2CO3", "H2O"],
            "signs": [1, 1, -1, -1]
        },
        {
            "num": "3️⃣",
            "desc": "TiO₂ + HCl → TiCl₄ + H₂O",  # Simplified
            "compounds": ["TiO2", "HCl", "TiCl4", "H2O"],
            "signs": [1, 1, -1, -1]
        },
        {
            "num": "4️⃣",
            "desc": "Sn + HNO₃ → SnO₂ + NO₂ + H₂O",  # Simplified
            "compounds": ["Sn", "HNO3", "SnO2", "NO2", "H2O"],
            "signs": [1, 1, -1, -1, -1]
        }
    ]
    
    success_count = 0
    for case in test_cases:
        print(f"\n{case['num']} Testing: {case['desc']}")
        print("-" * 60)
        
        try:
            coeffs, elements, parsed, matrix = balancer.balance_equation(
                case["compounds"], case["signs"]
            )
            
            success = printer.print_balanced_equation(
                case["compounds"], coeffs, case["signs"], case["num"]
            )
            
            if success:
                success_count += 1
                if matrix is not None:
                    print(f"\n📊 LINEAR ALGEBRA SOLUTION:")
                    print(f"Matrix: {matrix.shape[0]} elements × {matrix.shape[1]} compounds")
                    print(f"Elements: {', '.join(elements)}")
                    print(f"Balancing coefficients: {list(coeffs)}")
                    print(f"Equation solved: ν × x = 0 (null space solution)")
            else:
                print("❌ Balancing failed")
                
        except Exception as e:
            print(f"💥 Error: {e}")
            import traceback
            traceback.print_exc()
        
        print("\n" + "="*80 + "\n")
    
    print(f"\n📈 SUMMARY: {success_count}/{len(test_cases)} equations balanced successfully!")
    
    # Test known balanced equations to verify the fix
    print("\n🔬 TESTING KNOWN BALANCED EQUATIONS:")
    known_cases = [
        {
            "compounds": ["H2", "O2", "H2O"],
            "signs": [1, 1, -1],
            "expected": "2 H₂ + O₂ → 2 H₂O"
        },
        {
            "compounds": ["CH4", "O2", "CO2", "H2O"],
            "signs": [1, 1, -1, -1],
            "expected": "CH₄ + 2 O₂ → CO₂ + 2 H₂O"
        }
    ]
    
    for i, case in enumerate(known_cases, 1):
        print(f"\nTest {i}: {case['expected']}")
        coeffs, elements, parsed, matrix = balancer.balance_equation(
            case["compounds"], case["signs"]
        )
        if coeffs is not None:
            printer.print_balanced_equation(case["compounds"], coeffs, case["signs"])
    
    print("\n🎮 INTERACTIVE MODE")
    print("Format: 'HCl + MnO2 -> MnCl2 + H2O + Cl2'")
    print("Type 'quit' to exit\n")
    
    while True:
        try:
            eq = input("Enter equation: ").strip()
            if eq.lower() in ['quit', 'exit', 'q']:
                break
            
            if '->' in eq or '→' in eq:
                # Parse equation
                arrow = '->' if '->' in eq else '→'
                parts = eq.split(arrow)
                if len(parts) == 2:
                    left, right = [p.strip() for p in parts]
                    left_compounds = [c.strip() for c in re.split(r'\s*\+\s*', left) if c.strip()]
                    right_compounds = [c.strip() for c in re.split(r'\s*\+\s*', right) if c.strip()]
                    
                    all_compounds = left_compounds + right_compounds
                    all_signs = [1] * len(left_compounds) + [-1] * len(right_compounds)
                    
                    coeffs, elements, parsed, matrix = balancer.balance_equation(all_compounds, all_signs)
                    success = printer.print_balanced_equation(all_compounds, coeffs, all_signs)
                    
                    if coeffs is not None and success:
                        print(f"\n📊 LINEAR ALGEBRA SOLUTION:")
                        print(f"Elements: {', '.join(elements)}")
                        print(f"Balancing coefficients: {list(coeffs)}")
                else:
                    print("❌ Use format: reactants -> products")
            else:
                print("❌ Please use '->' or '→' to separate reactants and products")
                
        except KeyboardInterrupt:
            print("\n\n👋 Thanks for using the Chemical Balancer!")
            break
        except Exception as e:
            print(f"❌ Error: {e}\n")

if __name__ == "__main__":
    main()
