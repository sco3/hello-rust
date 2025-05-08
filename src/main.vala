#!/usr/bin/env valac --pkg glib-2.0 --pkg posix -X -O3 -X -lm -o gen && exec ./gen

using GLib;
using Posix;

int main(string[] args) {
    var timer = new Timer();
    timer.start();

    int n = 10000000;
    if (args.length > 1) {
        n = int.parse(args[1]);
    }

    double num = 0.0;
    string str = "00000000.00000000";
    int seed = 1;

    for (int i = 0; i < n; i++) {
        var sb = new StringBuilder();
        for (int j = 0; j < 17; j++) {
            if (j == 8) {
                sb.append_c('.');
            } else {
                seed = (((seed + 7) << 4) / 11) & 0xffffff;
                sb.append_c((char) ('0' + (seed % 10)));
            }
        }
        str = sb.str;
        //try {
        num = double.parse(str);
        //} catch (Error e) {
        //    GLib.stderr.printf("Parse error: %s\n", e.message);
        //}
    }

    print("Random numbers parsed: %d str: %s num: %17.8f\n", n, str, num);

    double time_spent = timer.elapsed();
    print("Time: %d ms\n", (int)(time_spent * 1000));

    return 0;
}
