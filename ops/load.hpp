#ifndef __LOAD_H__
#define __LOAD_H__
#include "../cpu/cpu.hpp"

int load_pair(cpu* c);
int load_sp(cpu* c);
int load_aindirect(cpu* c);
int ld(cpu* c);
int load_rtoa(cpu* c);
int load_rtob(cpu* c);
int load_rtoc(cpu* c);
int load_rtod(cpu* c);
int load_rtoe(cpu* c);
int load_rtoh(cpu* c);
int load_rtol(cpu* c);
int load_rtomem(cpu* c);
int load_atomem(cpu* c);
int load_memtor(cpu* c);
int ldh_an(cpu* c);
int ldia_hl(cpu* c);
int load_sp_to_mem(cpu* c);
int lddahl(cpu* c);
#endif // __LOAD_H__