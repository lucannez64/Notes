
def fibonacci(n):
    #Compute the nth Fibonacci number using optimized fast doubling method with small-case optimization and reduced operations.
    if n < 0:
        raise ValueError("Negative arguments not implemented")
    if n == 0:
        return 0
    if n <= 2:
        return 1

    a, b = 1, 1
    mask = 1 << (n.bit_length() - 2)  # Start from second highest bit

    while mask:
        # Compute both paths with minimal operations
        a_sq = a * a
        b_sq = b * b
        ab2 = (a + a) * b
        c = ab2 - a_sq
        d = a_sq + b_sq

        # Branchless selection using bitmask
        bit = n & mask
        mask >>= 1
        a = (d & -bit) | (c & ~-bit)
        b = ((c + d) & -bit) | (d & ~-bit)

    return a
