#!/usr/bin/env node
'use strict';

var start = new Date();
var num = 0.0;
var str = "";
var n = 10000000;
var seed = 1;
for (var i = 0; i < n; i++) {
	str = "";
	for (var j = 0; j < 17; j++) {
		if (j == 8) {
			str += '.';
		} else {
			seed = (((seed + 17) * 13) / 11) & 0xffff;
			str += String.fromCharCode(0x30 + (seed % 10));
		}
	}
	num = parseFloat(str);
}
console.log("Random numbers parsed: %d str: %s num: %f\n", n, str, num);

console.log('Time: %d', new Date() - start);
