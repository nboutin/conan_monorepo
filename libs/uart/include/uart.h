#pragma once

#include <vector>
#include <string>


#ifdef _WIN32
  #define UART_EXPORT __declspec(dllexport)
#else
  #define UART_EXPORT
#endif

UART_EXPORT void uart();
UART_EXPORT void uart_print_vector(const std::vector<std::string> &strings);
