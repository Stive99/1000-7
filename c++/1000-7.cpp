#include <iostream>
#include <thread>
#include <chrono>

int main() {
	std::setlocale(LC_ALL, "");
	const int delay = 50;
	int i = 0;
	int n = 1000;

	while (i < 143) {
		std::this_thread::sleep_for(std::chrono::milliseconds(delay));
		++i;

		if (n <= 6) {
			std::cout << "Я гуль!" << std::endl;
			return 0;
		}

		std::cout << n << " - " << 7 << " = " << (n - 7) << std::endl;
		n -= 7;
	}

	return 0;
}