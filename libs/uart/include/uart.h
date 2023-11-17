#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>

void UART_Configure(void);

bool UART_Transmit(const uint8_t* data, size_t size);
