
#ifndef __CONTROL_H__
#define __CONTROL_H__
#include "../cpu/cpu.hpp"

int nop(cpu* c);
int jr(cpu* c);
int jp(cpu* c);
int call(cpu *c);
int push(cpu* c);
int pop(cpu* c);
int ret(cpu* c);
int reti(cpu* c);
int rst(cpu* c);
int jphl(cpu* c);
#endif // __CONTROL_H__