use std::time::Instant;

fn main() {
	let timer = Instant::now();
	let cnt = 10_000_000;
	let mut str = String::new();
	let mut num: f64 = 0.0;
	let mut seed: i32 = 1;

	for _i in 0..cnt {
		str.clear();
		for j in 0..17 {
			if j == 8 {
				str.push('.');
			} else {
				seed = (((seed + 17) * 13) / 11) & 0xffff;
				let c = (('0' as u8) + ((seed % 10) as u8)) as char;
				str.push(c);
			}
		}
		num = str.parse().unwrap();
	}
	println!("Random numbers parsed: {} str: {} num: {} ", cnt, str, num);
	println!("Time: {} ms", timer.elapsed().as_millis());
}
