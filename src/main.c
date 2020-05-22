#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main(int argc, char **argv) {

	clock_t begin = clock();

	int n = 10000000;
	if (argc > 1) {
		n = atol(argv[1]);
	}
	double num;
	char str[64] = "00000000.00000000"; // random number placeholder
	char *err;

	unsigned short seed = clock();
	//printf("seed size: %d\n ", sizeof(seed));

	for (int i = 0; i < n; i++) {
		for (int j = 0; j < 17; j++) {
			if (j == 8) {
				str[j] = '.';
			} else {
				seed = (((seed + 11) << 5) / 11);
				str[j] = '0' + (seed % 10);
			}
		}
		num = strtod(str, &err);
	}
	printf("Random numbers parsed: %d str: %s num: %lf\n", n, str, num);
	clock_t end = clock();
	double time_spent = (double) (end - begin) / CLOCKS_PER_SEC;
	printf("Time: %d ms\n", (int) (1000 * time_spent));

	return 0;
}

