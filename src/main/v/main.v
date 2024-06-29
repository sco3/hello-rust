#!/usr/bin/env -S v -prod run

module main

import strconv
import time

fn main() {
	mut start := time.now()
	mut n := 10000000
	mut seed := u32(1)
	mut num := 0.0
	mut sstr := '00000000.00000000'
	mut str := sstr.bytes()
	for i := 0; i < n; i++ {
		for j := 0; j < 17; j++ {
			if j != 8 {
				seed = (((seed + 7) << 4) / 11) & 0xffffff
				str[j] = u8(`0` + (seed % 10))
			}
		}
		// sstr = str.bytestr()
		unsafe {
			sstr = tos(&str[0], str.len)
			num = strconv.atof_quick(sstr)
		}
		// println('str: $sstr num: ${num:17.8f}')
	}
	println('Random numbers parsed: ${n} str: ${sstr} num: ${num:17.8f}')
	duration := time.since(start).milliseconds()
	println('Time: ${duration} ms')
}
