
#ifndef __ARITHMETIC_H__
#define __ARITHMETIC_H__
#include "../cpu/cpu.hpp"

int cmp(cpu* c);
int xorop(cpu* c);
int orop(cpu* c);
int bit7(cpu* c);
int andop(cpu* c);
int inc(cpu *c);
int inc_pair(cpu* c);
int dec_pair(cpu* c);
int dec(cpu* c);
int rl(cpu* c);
int sub(cpu* c);
int add(cpu* c);
int cpl(cpu* c);
int swapop(cpu* c);
int add_pair(cpu* c);
int res0(cpu* c);
int sla(cpu* c);
int bit2(cpu* c);
int bit3(cpu* c);
int bit4(cpu* c);
int bit5(cpu* c);
int bit6(cpu* c);
int bit0(cpu* c);
int bit1(cpu* c);
int srl(cpu* c);
#endif // __ARITHMETIC_H__