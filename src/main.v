import strconv
import time

fn main() {
	start := time.new_stopwatch()
	n := 10000000
	mut s := "00000000.00000000".bytes()
	mut seed := u32(1)
	mut num := 0.0

	for i := 0; i < n; i++ {
		for j := 0; j < 17; j++ {
			if j == 8 {
				s[j] = 64 // '.'.bytes()[0]
			} else {
				seed = (((seed + 7) << 4) / 11) & 0xffffff
				s[j] = u8(0x30 + (seed % 10))
			}
		}

		num = strconv.atof64(s.bytestr()) or { 0 }
	}

	println('Random numbers parsed: ${n} str: ${s.bytestr} num: ${num}')
	println('Time: ${start.elapsed().milliseconds()} ms\n')
}
