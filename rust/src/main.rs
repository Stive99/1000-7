use std::thread;
use std::time::Duration;
use std::io;

fn main() {
	let mut number = 1000;
	while number > 6 {
		let expression = format!("{}-7 = {}", number, number - 7);
		println!("{}", expression);
		number -= 7;
		thread::sleep(Duration::from_millis(23));
		if number == 6 {
			println!("Я гуль!");
			break;
		}
	}
	let mut input = String::new();
	io::stdin().read_line(&mut input).expect("Failed to read line");
}