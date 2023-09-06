fn find_path(target_fraction: (u64, u64)) -> Option<Vec<char>> {
    if target_fraction == (1, 1) {
        return Some(Vec::new());
    }

    let mut path: Vec<char> = Vec::new();
    let mut left_numerator = 0;
    let mut left_denominator = 1;
    let mut right_numerator = 1;
    let mut right_denominator = 1;

    while (left_numerator, left_denominator) != target_fraction
        && (right_numerator, right_denominator) != target_fraction
    {
        let mid_numerator = left_numerator + right_numerator;
        let mid_denominator = left_denominator + right_denominator;

        if target_fraction.0 * mid_denominator < mid_numerator * target_fraction.1 {
            right_numerator = mid_numerator;
            right_denominator = mid_denominator;
            path.push('1');
        } else {
            left_numerator = mid_numerator;
            left_denominator = mid_denominator;
            path.push('0');
        }
    }

    if (left_numerator, left_denominator) == target_fraction {
        Some(path)
    } else {
        None
    }
}

fn main() {
    let target_fraction = (45, 13);

    match find_path(target_fraction) {
        Some(path) => {
            let path_string: String = path.into_iter().collect();
            println!(
                "The path to reach the fraction {}/{} in the Stern-Brocot tree: {}",
                target_fraction.0, target_fraction.1, path_string
            );
        }
        None => println!(
            "The fraction {}/{} is not found in the Stern-Brocot tree.",
            target_fraction.0, target_fraction.1
        ),
    }
}
