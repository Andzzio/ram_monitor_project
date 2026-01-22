#include "modules/ram_manager.h"
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
using namespace std;

RamInfo get_ram_info() {
  RamInfo info = {0, 0, 0};
  string line;

  ifstream meminfo("/proc/meminfo");

  if (!meminfo) {
    throw "Error opening file";
  }

  while (getline(meminfo, line)) {

    istringstream iss(line);
    string key;
    unsigned long value;

    iss >> key >> value;

    if (key == "MemTotal:") {
      info.total = value;
    }
    if (key == "MemAvailable:") {
      info.free = value;
    }
  }
  info.used = info.total - info.free;

  return info;
}

int sumar(int a, int b) { return a + b; }
int restar(int a, int b) { return a - b; }