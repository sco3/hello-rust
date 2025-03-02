import java.lang.System.getProperty
import java.lang.System.currentTimeMillis
import java.lang.Double.parseDouble

fun main() {
	var begin = currentTimeMillis()
	println(getProperty("java.vendor.version"))

	var n = 10_000_000
	var num = 0.0

	var str = StringBuilder()
	var seed = 1
	for (i in 0 until n) {
		str.setLength(0)
		for (j in 0 until 17) {
			if (j == 8) {
				str.append('.')
			} else {
				seed = (((seed + 7) shl 4) / 11) and 0xffffff
				//var c =(((byte) '0') + seed % 10)
				var c = ('0'.code + seed % 10).toChar()
				str.append(c);
			}
		}
		num = parseDouble(str.toString());
	}
	println("Random numbers parsed: $n str: $str num: %17.8f".format(num));
	println("Time: ${currentTimeMillis() - begin} ms");
}