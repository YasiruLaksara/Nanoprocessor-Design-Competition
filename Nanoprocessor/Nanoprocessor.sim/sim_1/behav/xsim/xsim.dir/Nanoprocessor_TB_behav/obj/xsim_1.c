/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_239(char*, char *);
extern void execute_240(char*, char *);
extern void execute_16(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_36(char*, char *);
extern void execute_33(char*, char *);
extern void execute_41(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_75(char*, char *);
extern void execute_72(char*, char *);
extern void execute_78(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_102(char*, char *);
extern void execute_104(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_159(char*, char *);
extern void execute_160(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_163(char*, char *);
extern void execute_237(char*, char *);
extern void execute_238(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_1(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_7(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_17(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_28(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[61] = {(funcp)execute_241, (funcp)execute_242, (funcp)execute_239, (funcp)execute_240, (funcp)execute_16, (funcp)execute_23, (funcp)execute_24, (funcp)execute_25, (funcp)execute_26, (funcp)execute_27, (funcp)execute_28, (funcp)execute_29, (funcp)execute_30, (funcp)execute_19, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_36, (funcp)execute_33, (funcp)execute_41, (funcp)execute_50, (funcp)execute_51, (funcp)execute_45, (funcp)execute_46, (funcp)execute_75, (funcp)execute_72, (funcp)execute_78, (funcp)execute_95, (funcp)execute_96, (funcp)execute_97, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_101, (funcp)execute_102, (funcp)execute_104, (funcp)execute_157, (funcp)execute_158, (funcp)execute_159, (funcp)execute_160, (funcp)execute_161, (funcp)execute_162, (funcp)execute_163, (funcp)execute_237, (funcp)execute_238, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_1, (funcp)transaction_7, (funcp)transaction_17, (funcp)transaction_28, (funcp)transaction_29, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_104, (funcp)transaction_105, (funcp)transaction_112, (funcp)transaction_113};
const int NumRelocateId= 61;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Nanoprocessor_TB_behav/xsim.reloc",  (void **)funcTab, 61);
	iki_vhdl_file_variable_register(dp + 31752);
	iki_vhdl_file_variable_register(dp + 31808);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Nanoprocessor_TB_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Nanoprocessor_TB_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Nanoprocessor_TB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Nanoprocessor_TB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Nanoprocessor_TB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
