import static java.lang.String.format;
import static java.lang.System.currentTimeMillis;
import static java.lang.System.out;

public class Main {
	public static void main(String[] argv) {

		long begin = System.currentTimeMillis();
		System.out.println(System.getProperty("java.vm.name"));

		int n = 10000000;
		if (argv.length > 0) {
			n = Integer.parseInt(argv[0]);
		}
		double num = 0;
		StringBuilder str = new StringBuilder();

		byte seed1 = 1;
		byte seed2 = 1;

		for (int i = 0; i < n; i++) {
			str.setLength(0);
			for (int j = 0; j < 17; j++) {
				if (j == 8) {
					str.append('.');
				} else {
					byte seed = (byte) ((seed1 + seed2) % 10);
					seed1 = seed2;
					seed2 = seed;
					char c = (char) (((byte) '0') + seed);
					str.append(c);
				}
			}
			num = Double.parseDouble(str.toString());
		}
		out.println(format("Random numbers parsed: %d str: %s num: %f", n, str, num));
		out.println(String.format("Time: %d ms", currentTimeMillis() - begin));
	}
}