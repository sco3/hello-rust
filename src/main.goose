import std;
import os;

fn main() {
    var str: u8[17] = ['0'; 17];
    str[8] = '.';
    var seed: i32 = 1;
    var num: f64 = 0.0;
    const N: i32 = 10000000;

    var start: f64 = clock();

    for i in N {
        for j in 17 {
            if j != 8 {
                seed = (((seed + 7) << 4) / 11) & 0xffffff;
                str[j] = '0' + (seed % 10) as u8;
            }
        }
        let parsed, ok = parse_flt(str[..]);
        if ok { num = parsed; }
    }
    var took: u32 = (1000*(clock() - start) ) as u32;
    print("Random numbers parsed: ", N, " str: ", str, " num: ", num);
    print("Time: ", took ,    " ms");
}
