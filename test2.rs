fn get_nth_fraction(n: u32) -> (u32, u32) {
    if n == 1 {
        return (1, 1);
    }
    let bits = format!("{:b}", n)[1..].to_string();
    let mut fraction = (1, 1); // numerator, denominator
    for bit in bits.chars() {
        if bit == 48 as char {
            fraction = (fraction.0, fraction.0 + fraction.1);
        } else {
            fraction = (fraction.0 + fraction.1, fraction.1);
        }
    }
    fraction
}

fn find_n(f: (u32, u32), n: u32) -> u32 {
    let mut x = get_nth_fraction(n);
    let mut n = n.clone();
    while x.0 != f.0 || x.1 != f.1 {
        n += 1;
        x = get_nth_fraction(n);
    }
    return n;
}

fn main() {
    let f = get_nth_fraction(2023);
    println!("{}/{}", f.0, f.1);
    let f2 = (31, 43);
    let n = find_n(f2, 1);
    println!("{}", n);
}
