import static ch.randelshofer.fastdoubleparser.JavaDoubleParser.parseDouble;
import static java.lang.Integer.parseInt;
import static java.lang.String.format;
import static java.lang.System.currentTimeMillis;
import static java.lang.System.getProperty;
import static java.lang.System.out;

public class MainFast {
	private static final String LATIN_1 = "ISO-8859-1";

	public static void main(String[] argv) throws Exception {
		String version = getProperty("java.vendor.version");
		if (version == null) {
			version = getProperty("java.vm.name");
		}
		out.println(format("%s %s", version, MainFast.class.getSimpleName()));
		byte zero = (byte) '0';
		long begin = currentTimeMillis();

		int n = 10000000;
		if (argv.length > 0) {
			n = parseInt(argv[0]);
		}
		double num = 0;
		byte[] str = "00000000.00000000".getBytes(LATIN_1);

		int seed = 1;
		for (int i = 0; i < n; i++) {
			for (int j = 0; j < 17; j++) {
				if (j != 8) {
					seed = (((seed + 7) << 4) / 11) & 0xffffff;
					byte c = (byte) (zero + seed % 10);
					str[j] = c;
				}
			}
			num = parseDouble(str);
		}
		String nstr = new String(str, LATIN_1);
		out.println(format("Random numbers parsed: %d str: %s num: %17.8f", n, nstr, num));
		out.println(format("Time: %d ms", currentTimeMillis() - begin));
	}
}