use wasm_bindgen::prelude::*;

use std::time::Instant;

#[wasm_bindgen]
pub fn wasm_run() {
    run();
}


pub fn run() {
    let timer = Instant::now();
    let cnt = 10_000_000;
    let mut str = String::with_capacity(17);
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
                str.push(c)
            }
        }
        num = str.parse().unwrap();
    }
    println!("Random numbers parsed: {} str: {} num: {} ", cnt, str, num);
    println!("Time: {} ms", timer.elapsed().as_millis());
}

