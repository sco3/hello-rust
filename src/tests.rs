#[test]
fn test() {
	let mut str = String::new();
	str.push_str("1");
	let num: f64 = str.parse().unwrap();
	println!("num: {}", num);
}
#[test]
fn test2() {
	let mut str = String::new();
	str.push_str("2B");
	let num: f64 = str.parse().unwrap_or_else(|_e| {
		return 0.0;
	});
	println!("num: {}", num);
}
