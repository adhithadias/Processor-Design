/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/adhit/Desktop/Processor Design/Projects/Start/decoder.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {8U, 0U};



static void Always_25_0(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 3968);
    *((int *)t2) = 1;
    t3 = (t0 + 3680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);

LAB5:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB20;

LAB21:
LAB23:
LAB22:    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 24, 0LL);

LAB24:    goto LAB2;

LAB6:    xsi_set_current_line(28, ng0);
    t8 = (t0 + 2168U);
    t9 = *((char **)t8);
    t8 = ((char*)((ng2)));
    xsi_vlogtype_concat(t7, 24, 24, 2U, t8, 16, t9, 8);
    t10 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t10, t7, 0, 0, 24, 0LL);
    goto LAB24;

LAB8:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    xsi_vlogtype_concat(t7, 24, 24, 2U, t3, 15, t4, 9);
    t8 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 24, 0LL);
    goto LAB24;

LAB10:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    xsi_vlogtype_concat(t7, 24, 24, 2U, t3, 16, t4, 8);
    t8 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 24, 0LL);
    goto LAB24;

LAB12:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 24, 0LL);
    goto LAB24;

LAB14:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 24, 0LL);
    goto LAB24;

LAB16:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 24, 0LL);
    goto LAB24;

LAB18:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 24, 0LL);
    goto LAB24;

LAB20:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 24, 0LL);
    goto LAB24;

}


extern void work_m_00000000001331953923_3069169239_init()
{
	static char *pe[] = {(void *)Always_25_0};
	xsi_register_didat("work_m_00000000001331953923_3069169239", "isim/decoder_isim_beh.exe.sim/work/m_00000000001331953923_3069169239.didat");
	xsi_register_executes(pe);
}
