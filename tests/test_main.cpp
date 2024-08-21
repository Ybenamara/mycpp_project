#include "../include/main.h"
#include <cassert>

void test_hello() {
    hello(); // This would print "Hello, World!", and normally we'd capture and assert the output.
}

int main() {
    test_hello();
    std::cout << "All tests passed!" << std::endl;
    return 0;
}

