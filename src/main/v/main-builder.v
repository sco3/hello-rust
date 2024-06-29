#!/usr/bin/env -S v -prod run


module main

import strconv
import time
import strings

fn main() {
	mut start := time.now()
	mut n := 10000000
	mut seed := u32(1)
	mut num := 0.0
	mut sstr := ''
	mut sb := strings.new_builder(17)

	for i := 0; i < n; i++ {
		for j := 0; j < 17; j++ {
			if j != 8 {
				seed = (((seed + 7) << 4) / 11) & 0xffffff
				sb.write_byte(u8(`0` + (seed % 10)))
			}
		}
		sstr = sb.str()
		num = strconv.atof_quick(sstr)
	}
	println('Random numbers parsed: ${n} str: ${sstr} num: ${num:17.8f}')
        duration := time.since(start).milliseconds()
        println('Time: ${duration} ms')
}
