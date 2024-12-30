use std::time::Instant;
mod tests;

fn run() {
    let timer = Instant::now();
    let cnt = 10_000_000;
    let mut str = String::with_capacity(17);
    let mut num: f64 = 0.0;
    let mut seed: i32 = 1;

    for _i in 0..cnt {
        str.clear();

        // Предварительно заполняем строку placeholder-символами
        str.push_str(&"0".repeat(17));

        for j in 0..17 {
            if j == 8 {
                // Используем replace_range для вставки точки
                str.replace_range(j..j + 1, ".");
            } else {
                seed = (((seed + 7) << 4) / 11) & 0xffffff;
                let c = (('0' as u8) + ((seed % 10) as u8)) as char;
                str.replace_range(j..j + 1, &c.to_string());
            }
        }
        num = str.parse().unwrap();
    }

    println!("Random numbers parsed: {} str: {} num: {} ", cnt, str, num);
    println!("Time: {} ms", timer.elapsed().as_millis());
}

fn main() {
    run();
}
