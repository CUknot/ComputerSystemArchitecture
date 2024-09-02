#include <stdio.h>

int max1(int a, int b) {
    return (a > b) ? a : b;
}

int main() {
    int result;
    for (int i = 0; i < 100000000; i++) {
        result = max1(5, 3);
    }
    printf("Result: %d\n", result);
    return 0;
}
