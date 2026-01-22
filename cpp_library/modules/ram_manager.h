#pragma once

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
  unsigned long total;
  unsigned long free;
  unsigned long used;
} RamInfo;

RamInfo get_ram_info();

int sumar(int a, int b);
int restar(int a, int b);
#ifdef __cplusplus
}
#endif