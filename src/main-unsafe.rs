use std::time::Instant;
mod tests;

fn run() {
    let timer = Instant::now();
    let cnt = 10_000_000;
    let mut str = String::with_capacity(17);
    let mut num: f64 = 0.0;
    let mut seed: i32 = 1;

    // Заполняем строку начальным значением, чтобы всегда иметь 17 байтов
    unsafe {
        str.as_mut_vec().extend_from_slice(b"00000000.000000000");
    }

    for _i in 0..cnt {
        // Прямое изменение байтов строки
        unsafe {
            let bytes = str.as_mut_vec();

            for j in 0..17 {
                if j == 8 {
                    // Заменяем символ в позиции 8 на точку
                    bytes[j] = b'.';
                } else {
                    // Генерируем случайный символ
                    seed = (((seed + 7) << 4) / 11) & 0xffffff;
                    let c = b'0' + ((seed % 10) as u8);
                    bytes[j] = c;
                }
            }
        }

        // Парсим число из строки
        num = str.parse().unwrap();
    }
    println!("Random numbers parsed: {} str: {} num: {} ", cnt, str, num);
    println!("Time: {} ms", timer.elapsed().as_millis());
}

fn main() {
    run();
}
