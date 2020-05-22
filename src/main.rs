use std::time::Instant;

fn main() {
	let timer = Instant::now();
	let cnt = 10_000_000;
	let mut str = String::new();
	let mut num: f64 = 0.0;
	let mut seed: u16 = (timer.elapsed().subsec_nanos() & 0xffff) as u16;

	for _i in 0..cnt {
		str.clear();
		for j in 0..17 {
			if j == 8 {
				str.push('.');
			} else {
				seed = ((seed + 11) << 5) / 11;
				let c = (('0' as u8) + ((seed % 10) as u8)) as char;
				str.push(c);
			}
		}
		num = str.parse().unwrap();
	}
	println!("Random numbers parsed: {} str: {} num: {} ", cnt, str, num);
	println!("Time: {} ms", timer.elapsed().as_millis());
}
