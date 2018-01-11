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
static const char *ng0 = "C:/Users/adhit/Desktop/Processor Design/Processor2/Start/ALU.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {3U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {4U, 0U};
static int ng7[] = {2, 0};
static unsigned int ng8[] = {5U, 0U};
static int ng9[] = {8, 0};
static unsigned int ng10[] = {6U, 0U};
static int ng11[] = {4, 0};
static unsigned int ng12[] = {7U, 0U};
static unsigned int ng13[] = {8U, 0U};
static unsigned int ng14[] = {9U, 0U};
static unsigned int ng15[] = {10U, 0U};
static unsigned int ng16[] = {11U, 0U};



static void Always_29_0(char *t0)
{
    char t10[8];
    char t11[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;

LAB0:    t1 = (t0 + 4344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 4664);
    *((int *)t2) = 1;
    t3 = (t0 + 4376);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 2864U);
    t5 = *((char **)t4);

LAB5:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB26;

LAB27:
LAB29:
LAB28:    xsi_set_current_line(56, ng0);

LAB49:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3264);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 24);

LAB30:    goto LAB2;

LAB6:    xsi_set_current_line(31, ng0);
    t7 = (t0 + 2544U);
    t8 = *((char **)t7);
    t7 = (t0 + 2704U);
    t9 = *((char **)t7);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 24, t8, 24, t9, 24);
    t7 = (t0 + 3264);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 24);
    goto LAB30;

LAB8:    xsi_set_current_line(33, ng0);

LAB31:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 2544U);
    t4 = *((char **)t3);
    t3 = (t0 + 2704U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 24, t4, 24, t7, 24);
    t3 = (t0 + 3264);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 24);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3264);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng3)));
    memset(t12, 0, 8);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t8);
    t17 = *((unsigned int *)t9);
    t18 = (t16 ^ t17);
    t19 = (t15 | t18);
    t20 = *((unsigned int *)t8);
    t21 = *((unsigned int *)t9);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB35;

LAB32:    if (t22 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t12) = 1;

LAB35:    memset(t11, 0, 8);
    t26 = (t12 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t12);
    t30 = (t29 & t28);
    t31 = (t30 & 1U);
    if (t31 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t26) != 0)
        goto LAB38;

LAB39:    t33 = (t11 + 4);
    t34 = *((unsigned int *)t11);
    t35 = *((unsigned int *)t33);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB40;

LAB41:    t38 = *((unsigned int *)t11);
    t39 = (~(t38));
    t40 = *((unsigned int *)t33);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t33) > 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t11) > 0)
        goto LAB46;

LAB47:    memcpy(t10, t42, 8);

LAB48:    t43 = (t0 + 3424);
    xsi_vlogvar_assign_value(t43, t10, 0, 0, 1);
    goto LAB30;

LAB10:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 2544U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_lshift(t10, 24, t4, 24, t3, 32);
    t7 = (t0 + 3264);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 24);
    goto LAB30;

LAB12:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 2544U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng7)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_lshift(t10, 24, t4, 24, t3, 32);
    t7 = (t0 + 3264);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 24);
    goto LAB30;

LAB14:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 2544U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng9)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_lshift(t10, 24, t4, 24, t3, 32);
    t7 = (t0 + 3264);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 24);
    goto LAB30;

LAB16:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 2544U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng11)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_rshift(t10, 24, t4, 24, t3, 32);
    t7 = (t0 + 3264);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 24);
    goto LAB30;

LAB18:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 2544U);
    t4 = *((char **)t3);
    t3 = (t0 + 3264);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 24);
    goto LAB30;

LAB20:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 2704U);
    t4 = *((char **)t3);
    t3 = (t0 + 3264);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 24);
    goto LAB30;

LAB22:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 2544U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 24, t4, 24, t3, 24);
    t7 = (t0 + 3264);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 24);
    goto LAB30;

LAB24:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 2544U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 24, t4, 24, t3, 24);
    t7 = (t0 + 3264);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 24);
    goto LAB30;

LAB26:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3264);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 24);
    goto LAB30;

LAB34:    t25 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB35;

LAB36:    *((unsigned int *)t11) = 1;
    goto LAB39;

LAB38:    t32 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB39;

LAB40:    t37 = ((char*)((ng1)));
    goto LAB41;

LAB42:    t42 = ((char*)((ng3)));
    goto LAB43;

LAB44:    xsi_vlog_unsigned_bit_combine(t10, 1, t37, 1, t42, 1);
    goto LAB48;

LAB46:    memcpy(t10, t37, 8);
    goto LAB48;

}


extern void work_m_00000000003548892813_0886308060_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_00000000003548892813_0886308060", "isim/ALU_isim_beh.exe.sim/work/m_00000000003548892813_0886308060.didat");
	xsi_register_executes(pe);
}
