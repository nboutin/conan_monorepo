#include "uart.h"
#include <vector>
#include <string>

int main() {
    uart();

    std::vector<std::string> vec;
    vec.push_back("test_package");

    uart_print_vector(vec);
}
