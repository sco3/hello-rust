use wasm_bindgen::prelude::*;
use web_sys;
use wasmtimer::std::Instant;

#[wasm_bindgen]
pub fn wasm_run() {
    run();
}

pub fn run() {
    let timer_start = Instant::now();

    let cnt = 10_000_000;
    let mut s = String::with_capacity(17);
    let mut num: f64 = 0.0;
    let mut seed: i32 = 1;

    for _i in 0..cnt {
        s.clear();
        for j in 0..17 {
            if j == 8 {
                s.push('.');
            } else {
                seed = (((seed + 7) << 4) / 11) & 0xffffff;
                let c = (('0' as u8) + ((seed % 10) as u8)) as char;
                s.push(c)
            }
        }
        num = s.parse().unwrap();
    }
    
    let elapsed = timer_start.elapsed();

    // Используем `web_sys::console::log_1` для вывода в консоль браузера
    web_sys::console::log_1(&format!("Random numbers parsed: {}", cnt).into());
    web_sys::console::log_1(&format!("str: {}", s).into());
    web_sys::console::log_1(&format!("num: {}", num).into());
    web_sys::console::log_1(&format!("Time: {} ms", elapsed.as_millis()).into());
}