#include "modules/ram_manager.h"
#include <iostream>

using namespace std;

int main(int, char **) {

  cout << "Hello, from ram_cpp_library!\n";
  cout << "Total: " << get_ram_info().total << endl;
  cout << "Free: " << get_ram_info().free << endl;
  cout << "Used: " << get_ram_info().used << endl;
}
