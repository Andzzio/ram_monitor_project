#include "modules/ram_manager.h"

RamInfo get_ram_info() {
  RamInfo info = {0, 0, 0};

  info.free = 1000;
  info.total = 1001;
  info.used = 1002;

  return info;
}

int sumar(int a, int b) { return a + b; }
int restar(int a, int b) { return a - b; }