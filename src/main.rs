use rand::Rng;

use std::time::Instant;

fn rand(seed: u16) -> u16 {
	return (((seed + 11) << 5) / 11) & 0xffff;
}
fn digit(seed: u16) -> char {
	return (('0' as u8) + ((seed % 10) as u8)) as char;
}

pub struct Results {
	cnt: i32,
	str: String,
	num: f64,
}

fn testPseudo(cnt: i32) -> Results {
	let mut seed = (Instant::now().elapsed().subsec_nanos() & 0xffff) as u16;
	let mut str = String::new();
	let mut num: f64 = 0.0;
	for _i in 0..cnt {
		str.clear();
		for _j in 0..8 {
			seed = rand(seed);
			let c = digit(seed);
			str.push(c);
		}
		str.push('.');
		for _j in 0..8 {
			seed = rand(seed);
			let c = digit(seed);
			str.push(c);
		}
		num = str.parse().unwrap();
	}
	return Results { cnt, str, num };
}

fn testDoubleConv(cnt: i32) -> Results {
	let mut rng = rand::thread_rng();
	let mut str = String::new();
	let mut num: f64 = 0.0;
	for _i in 0..cnt {
		num = rng.gen();
		str = num.to_string();
		num = str.parse().unwrap();
	}
	return Results { cnt, str, num };
}

fn main() {
	let timer = Instant::now();
	let ret = testPseudo(10_000_000);
	println!("cnt: {} str: {} num: {} ", ret.cnt, ret.str, ret.num * 10.0);

	println!("Time: {} ms", timer.elapsed().as_millis());
}
