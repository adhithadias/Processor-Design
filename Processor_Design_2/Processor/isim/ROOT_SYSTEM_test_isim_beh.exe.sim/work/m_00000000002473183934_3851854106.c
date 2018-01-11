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
static const char *ng0 = "E:/UOM/Xilinx Workspace/Processor/ALU.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static int ng8[] = {1, 0};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {8U, 0U};
static unsigned int ng12[] = {9U, 0U};
static unsigned int ng13[] = {10U, 0U};
static unsigned int ng14[] = {11U, 0U};
static int ng15[] = {23, 0};



static void Always_42_0(char *t0)
{
    char t8[8];
    char t41[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    t1 = (t0 + 4640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4960);
    *((int *)t2) = 1;
    t3 = (t0 + 4672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 3560);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3720);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3000U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:
LAB31:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3400);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t17 = (t5 + 4);
    t18 = (t7 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t17);
    t13 = *((unsigned int *)t18);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t17);
    t19 = *((unsigned int *)t18);
    t20 = (t16 | t19);
    t23 = (~(t20));
    t24 = (t15 & t23);
    if (t24 != 0)
        goto LAB46;

LAB43:    if (t20 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t8) = 1;

LAB46:    t22 = (t8 + 4);
    t25 = *((unsigned int *)t22);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB47;

LAB48:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3400);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 3400);
    t17 = (t7 + 72U);
    t18 = *((char **)t17);
    t21 = ((char*)((ng15)));
    xsi_vlog_generic_get_index_select_value(t8, 32, t5, t18, 2, t21, 32, 1);
    t22 = ((char*)((ng8)));
    memset(t41, 0, 8);
    t39 = (t8 + 4);
    t40 = (t22 + 4);
    t9 = *((unsigned int *)t8);
    t10 = *((unsigned int *)t22);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t39);
    t13 = *((unsigned int *)t40);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t39);
    t19 = *((unsigned int *)t40);
    t20 = (t16 | t19);
    t23 = (~(t20));
    t24 = (t15 & t23);
    if (t24 != 0)
        goto LAB54;

LAB51:    if (t20 != 0)
        goto LAB53;

LAB52:    *((unsigned int *)t41) = 1;

LAB54:    t43 = (t41 + 4);
    t25 = *((unsigned int *)t43);
    t26 = (~(t25));
    t27 = *((unsigned int *)t41);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB55;

LAB56:
LAB57:
LAB49:    goto LAB2;

LAB7:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    t4 = (t0 + 3400);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 24);
    goto LAB31;

LAB9:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    t4 = (t0 + 2840U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 24, t5, 24, t7, 24);
    t4 = (t0 + 3400);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 24);
    goto LAB31;

LAB11:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    t4 = (t0 + 2840U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 24, t5, 24, t7, 24);
    t4 = (t0 + 3400);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 24);
    goto LAB31;

LAB13:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    t4 = (t0 + 2840U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_lshift(t8, 24, t5, 24, t7, 24);
    t4 = (t0 + 3400);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 24);
    goto LAB31;

LAB15:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    t4 = (t0 + 2840U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_rshift(t8, 24, t5, 24, t7, 24);
    t4 = (t0 + 3400);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 24);
    goto LAB31;

LAB17:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng8)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t5, 24, t4, 32);
    t7 = (t0 + 3400);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 24);
    goto LAB31;

LAB19:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng8)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 32, t5, 24, t4, 32);
    t7 = (t0 + 3400);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 24);
    goto LAB31;

LAB21:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_unary_minus(t8, 24, t5, 24);
    t4 = (t0 + 3400);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 24);
    goto LAB31;

LAB23:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (~(t9));
    *((unsigned int *)t8) = t10;
    *((unsigned int *)t4) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB33;

LAB32:    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 16777215U);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 & 16777215U);
    t17 = (t0 + 3400);
    xsi_vlogvar_assign_value(t17, t8, 0, 0, 24);
    goto LAB31;

LAB25:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    t4 = (t0 + 2840U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 & t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t17 = (t7 + 4);
    t18 = (t8 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t17);
    t14 = (t12 | t13);
    *((unsigned int *)t18) = t14;
    t15 = *((unsigned int *)t18);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB34;

LAB35:
LAB36:    t39 = (t0 + 3400);
    xsi_vlogvar_assign_value(t39, t8, 0, 0, 24);
    goto LAB31;

LAB27:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    t4 = (t0 + 2840U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t17 = (t7 + 4);
    t18 = (t8 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t17);
    t14 = (t12 | t13);
    *((unsigned int *)t18) = t14;
    t15 = *((unsigned int *)t18);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB37;

LAB38:
LAB39:    t39 = (t0 + 3400);
    xsi_vlogvar_assign_value(t39, t8, 0, 0, 24);
    goto LAB31;

LAB29:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 2680U);
    t5 = *((char **)t4);
    t4 = (t0 + 2840U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t17 = (t7 + 4);
    t18 = (t8 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t17);
    t14 = (t12 | t13);
    *((unsigned int *)t18) = t14;
    t15 = *((unsigned int *)t18);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB40;

LAB41:
LAB42:    t21 = (t0 + 3400);
    xsi_vlogvar_assign_value(t21, t8, 0, 0, 24);
    goto LAB31;

LAB33:    t11 = *((unsigned int *)t8);
    t12 = *((unsigned int *)t7);
    *((unsigned int *)t8) = (t11 | t12);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t4) = (t13 | t14);
    goto LAB32;

LAB34:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t18);
    *((unsigned int *)t8) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t5);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t7);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t35 & t33);
    t36 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t36 & t34);
    t37 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t37 & t33);
    t38 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t38 & t34);
    goto LAB36;

LAB37:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t18);
    *((unsigned int *)t8) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t5);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t33 & t29);
    t34 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t34 & t30);
    goto LAB39;

LAB40:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t18);
    *((unsigned int *)t8) = (t19 | t20);
    goto LAB42;

LAB45:    t21 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB46;

LAB47:    xsi_set_current_line(62, ng0);

LAB50:    xsi_set_current_line(63, ng0);
    t39 = ((char*)((ng8)));
    t40 = (t0 + 3560);
    xsi_vlogvar_assign_value(t40, t39, 0, 0, 1);
    goto LAB49;

LAB53:    t42 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB54;

LAB55:    xsi_set_current_line(65, ng0);

LAB58:    xsi_set_current_line(66, ng0);
    t44 = ((char*)((ng8)));
    t45 = (t0 + 3720);
    xsi_vlogvar_assign_value(t45, t44, 0, 0, 1);
    goto LAB57;

}


extern void work_m_00000000002473183934_3851854106_init()
{
	static char *pe[] = {(void *)Always_42_0};
	xsi_register_didat("work_m_00000000002473183934_3851854106", "isim/ROOT_SYSTEM_test_isim_beh.exe.sim/work/m_00000000002473183934_3851854106.didat");
	xsi_register_executes(pe);
}
