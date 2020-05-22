#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int old_main(int argc, char **argv) {
	int n = 10000000;
	if (argc > 1) {
		n = atol(argv[1]);
	}
	double random_value;
	char str[64] = "00000000.00000000";
	char *err;

	srand(time(NULL));

	for (int i = 0; i < n; i++) {

		random_value = (double) rand() / RAND_MAX * 2.0 - 1.0;

		sprintf(str, "%lf", random_value);

		random_value = strtod(str, &err);
	}
	printf("cnt: %d str: %s num: %lf\n", n, str, random_value);

	return 0;
}
int main(int argc, char **argv) {
	int n = 10000000;
	if (argc > 1) {
		n = atol(argv[1]);
	}
	double num;
	char str[64] = "00000000.00000000";
	char *err;

	unsigned short seed = clock();

	for (int i = 0; i < n; i++) {
		for (int j = 0; j < 17; j++) {
			if (j == 8) {
				str[j] = '.';
			} else {
				seed = (((seed + 11) << 5) / 11) & 0xffff;
				str[j] = '0' + (seed % 10);
			}
		}
		num = strtod(str, &err);
	}
	printf("cnt: %d str: %s num: %lf\n", n, str, num*10);

	return 0;
}

