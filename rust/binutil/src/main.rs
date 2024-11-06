use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    if &args.len() > &1 {
        print_various_units(args[1].clone());
    }
    else {
        println!("Usage: binutil <text>");
    }
}

fn print_binary(text: String) {
    println!("Binary:");
    for c in text.chars() {
        print!("{:b} ", c as u8);
    }
    println!("");
}

fn print_hex(text: String) {
    println!("Hex:");
    for c in text.chars() {
        print!("{:x} ", c as u8);
    }
    println!("");
}

fn print_various_units(text: String) {
    print_binary(text.clone());
    println!("");
    print_hex(text.clone());
}
