#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int main() {
	system("pkill -x clientd");
	system("pkill -x client");
	return 0;
}
