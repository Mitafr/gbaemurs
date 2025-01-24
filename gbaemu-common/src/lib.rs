pub mod mem;

#[macro_export]
macro_rules! print_bits_with_indices {
    ($value:expr) => {
        let value = $value;
        for i in (0..32).rev() {
            print!("{: >2} ", i);
        }
        println!();
        for i in (0..32).rev() {
            print!(" {} ", (value >> i) & 1);
        }
        println!();
        for i in (0..32).rev() {
            print!("{}", (value >> i) & 1);
        }
        println!();
    };
    ($value:expr, $l:expr) => {
        let value = $value;
        for i in (0..$l).rev() {
            print!("{: >2} ", i);
        }
        println!();
        for i in (0..$l).rev() {
            print!(" {} ", (value >> i) & 1);
        }
        println!();
        for i in (0..$l).rev() {
            print!("{}", (value >> i) & 1);
        }
        println!();
    };
}
