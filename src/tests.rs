use std::time::Instant;

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

#[test]
fn test3() {
	let mut bytes = String::from("00000000.00000000").into_bytes();
	bytes[0] = '1' as u8;
	println!("num: {}", String::from_utf8_lossy(&bytes));
}

#[test]
fn test4() {
	let mut bytes = ['.' as u8; 17];
	bytes[0] = '1' as u8;
	println!("num: {}", String::from_utf8_lossy(&bytes));
}

#[test]
fn pass1() {
	let timer = Instant::now();
	let cnt = 10;
	let mut num: f64 = 0.0;
	let mut seed: i32 = 1;
	let mut bytes = ['.' as u8; 17];

	for _i in 0..cnt {
		for j in 0..17 {
			if j == 8 {
				bytes[j] = '.' as u8;
			} else {
				seed = (((seed + 7) << 4) / 11) & 0xffffff;
				let c = (('0' as u8) + ((seed % 10) as u8)) as char;
				bytes[j] = c as u8;
			}
		}
		num = String::from_utf8_lossy(&bytes).parse().unwrap();
	}
	println!(
		"Random numbers parsed: {} str: {} num: {} ",
		cnt,
		String::from_utf8_lossy(&bytes),
		num
	);
	println!("Time: {} ms", timer.elapsed().as_millis());
}

#[test]
fn pass3() {
	let timer = Instant::now();
	let cnt = 10;
	let mut str = String::from("00000000.00000000");
	let mut num: f64 = 0.0;
	let mut seed: i32 = 1;

	for _i in 0..cnt {
		str.clear();
		for j in 0..17 {
			if j == 8 {
				str.push('.');
			} else {
				seed = (((seed + 7) << 4) / 11) & 0xffffff;
				let c = (('0' as u8) + ((seed % 10) as u8)) as char;
				//str.replace_range(j..j, c);
				str.push(c)
			}
		}
		num = str.parse().unwrap();
	}
	println!("Random numbers parsed: {} str: {} num: {} ", cnt, str, num);
	println!("Time: {} ms", timer.elapsed().as_millis());
}

