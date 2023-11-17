
#include <stddef.h>

#include "uart.h"

int main() {
    UART_Configure();
    UART_Transmit(NULL, 0);
}
