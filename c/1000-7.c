#include <stdio.h>
#include <locale.h>
#include <unistd.h>

int main(void) {
	setlocale(LC_ALL, "");

	const int delay = 50;
	int i = 0;
	int n = 1000;

	while (i < 143) {
		usleep(delay * 1000);
		++i;

		if (n <= 6) {
			printf("Я гуль!\n");
			return 0;
		}

		printf("%d - 7 = %d\n", n, n - 7);
		n -= 7;
	}

	return 0;
}