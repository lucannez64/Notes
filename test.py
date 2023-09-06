def find_corresponding_n(numerator, denominator):
    left_n = 0
    left_fraction = (0, 1)
    right_n = 1
    right_fraction = (1, 0)

    while True:
        mid_n = left_n + right_n
        mid_fraction = (left_fraction[0] + right_fraction[0], left_fraction[1] + right_fraction[1])

        if mid_fraction == (numerator, denominator):
            return mid_n

        if numerator * mid_fraction[1] < mid_fraction[0] * denominator:
            right_n = mid_n
            right_fraction = mid_fraction
        else:
            left_n = mid_n
            left_fraction = mid_fraction
print(find_corresponding_n(31, 43));
