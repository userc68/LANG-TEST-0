use std::io::{self, Write};

fn main() {
  let mut height = String::new();
  let mut width = String::new();

  print!("Height: ");
  io::stdout().flush().expect("Failed to flush stdout");
  io::stdin().read_line(&mut height).expect("Failed to read height");

  print!("Width: ");
  io::stdout().flush().expect("Failed to flush stdout");
  io::stdin().read_line(&mut width).expect("Failed to read width");

  let height: u32 = height.trim().parse().expect("Please enter a valid height!");
  let width: u32 = width.trim().parse().expect("Please enter a valid width!");

  for _i in 0..height {
    for _j in 0..width {
      print!("#");
    }
    println!();
  }
}