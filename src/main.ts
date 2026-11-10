'use strict';

const start: Date = new Date();
let num: number = 0.0;
let str: string = "";
const n: number = 10000000;
let seed: number = 1;

for (let i: number = 0; i < n; i++) {
    str = "";
    for (let j: number = 0; j < 17; j++) {
        if (j === 8) {
            str += '.';
        } else {
            seed = (((seed + 7) << 4) / 11) & 0xffffff;
            str += String.fromCharCode(0x30 + (seed % 10));
        }
    }
    num = parseFloat(str);
}

console.log("");
console.log("Random numbers parsed: %d str: %s num: %f", n, str, num);
console.log('Time: %d ms', new Date().getTime() - start.getTime());