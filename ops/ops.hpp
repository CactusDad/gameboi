#ifndef __OPS_H__
#define __OPS_H__
#include <iostream>
#include "../cpu/cpu.hpp"
#include "load.hpp"
#include "arithmetic.hpp"
#include "control.hpp"
#include "misc.hpp"
struct operation
{
	std::string name;
	int size;
	int cycles;
	operation(std::string, int , int , int(*)(cpu*));
	int (*func)(cpu*);
};
int  not_imp(cpu* c);
extern operation inst_set[512];

#endif // __OPS_H__