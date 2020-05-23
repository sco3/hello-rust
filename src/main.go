package main

import (
	"fmt"
	"strconv"
	"time"
)

func main() {
	start := time.Now()
	var n = 10000000
	str := []byte("00000000.00000000")
	seed := 1
	num := 0.0

	for i := 0; i < n; i++ {
		for j := 0; j < 17; j++ {
			if j == 8 {
				str[j] = '.'
			} else {
				seed = (((seed + 7) << 4) / 11) & 0xffffff
				str[j] = byte(0x30 + (seed % 10))
			}
		}

		num, _ = strconv.ParseFloat(string(str), 10)
	}

	fmt.Printf("converted: %d str: %s num: %f\n", n, str, num)
	fmt.Printf("Time: %d ms\n", time.Since(start)/time.Millisecond)
}
