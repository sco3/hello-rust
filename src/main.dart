void main() {
  int start = DateTime.now().millisecondsSinceEpoch;

  int n = 10000000;
  StringBuffer sb = StringBuffer();

  int seed = 1;
  String sZero = '0';
  int zero = sZero.codeUnitAt(0);
  double num = 0;
  String str = "";

  for (int i = 0; i < n; i++) {
    sb.clear();
    for (int j = 0; j < 17; j++) {
      if (j == 8) {
        sb.write(".");
      } else {
        seed = (((seed + 7) << 4) ~/ 11) & 0xffffff;
        int c = zero + seed % 10;
        sb.writeCharCode(c);
      }
    }
    str = sb.toString();
    num = double.parse(str);
  }

  int end = DateTime.now().millisecondsSinceEpoch;
  int duration = end - start;

  print("Random numbers parsed: $n str: $str num: $num");
  print("Time: $duration ms");
}
