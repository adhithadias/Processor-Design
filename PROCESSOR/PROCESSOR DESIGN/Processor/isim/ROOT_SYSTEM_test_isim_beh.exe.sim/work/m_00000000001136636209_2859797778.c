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
static const char *ng0 = "E:/UOM/Xilinx Workspace/Processor/UART_TX.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {0, 0, 0, 0};
static int ng4[] = {0, 0};
static int ng5[] = {1, 0, 0, 0};
static unsigned int ng6[] = {2U, 0U};
static int ng7[] = {7, 0};
static int ng8[] = {1, 0};
static unsigned int ng9[] = {3U, 0U};
static unsigned int ng10[] = {4U, 0U};



static void Always_44_0(char *t0)
{
    char t16[16];
    char t17[16];
    char t21[16];
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t24;

LAB0:    t1 = (t0 + 4760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5576);
    *((int *)t2) = 1;
    t3 = (t0 + 4792);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 3040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);

LAB20:    xsi_set_current_line(50, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 3680);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 1, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2160U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(61, ng0);

LAB25:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB23:    goto LAB19;

LAB9:    xsi_set_current_line(66, ng0);

LAB26:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3680);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t7 = *((char **)t5);
    t5 = ((char*)((ng5)));
    xsi_vlog_unsigned_minus(t16, 33, t7, 32, t5, 32);
    xsi_vlog_unsigned_less(t17, 33, t4, 33, t16, 33);
    t9 = (t17 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t17);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(75, ng0);

LAB31:    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB29:    goto LAB19;

LAB11:    xsi_set_current_line(81, ng0);

LAB32:    xsi_set_current_line(82, ng0);
    t3 = (t0 + 3200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 3200);
    t9 = (t7 + 72U);
    t10 = *((char **)t9);
    t18 = (t0 + 3520);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_generic_get_index_select_value(t23, 1, t5, t10, 2, t20, 3, 2);
    t22 = (t0 + 3680);
    xsi_vlogvar_wait_assign_value(t22, t23, 0, 0, 1, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t7 = *((char **)t5);
    t5 = ((char*)((ng5)));
    xsi_vlog_unsigned_minus(t16, 33, t7, 32, t5, 32);
    xsi_vlog_unsigned_less(t17, 33, t4, 33, t16, 33);
    t9 = (t17 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t17);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB33;

LAB34:    xsi_set_current_line(90, ng0);

LAB37:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t23, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB39;

LAB38:    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB39;

LAB42:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB40;

LAB41:    t18 = (t23 + 4);
    t11 = *((unsigned int *)t18);
    t12 = (~(t11));
    t13 = *((unsigned int *)t23);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(98, ng0);

LAB47:    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB45:
LAB35:    goto LAB19;

LAB13:    xsi_set_current_line(107, ng0);

LAB48:    xsi_set_current_line(108, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3680);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 3360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t7 = *((char **)t5);
    t5 = ((char*)((ng5)));
    xsi_vlog_unsigned_minus(t16, 33, t7, 32, t5, 32);
    xsi_vlog_unsigned_less(t17, 33, t4, 33, t16, 33);
    t9 = (t17 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t17);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(116, ng0);

LAB53:    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB51:    goto LAB19;

LAB15:    xsi_set_current_line(122, ng0);

LAB54:    xsi_set_current_line(123, ng0);
    t3 = (t0 + 3360);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 1288);
    t9 = *((char **)t7);
    t7 = ((char*)((ng5)));
    xsi_vlog_unsigned_minus(t16, 33, t9, 32, t7, 32);
    xsi_vlog_unsigned_less(t17, 33, t5, 33, t16, 33);
    t10 = (t17 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t17);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB55;

LAB56:    xsi_set_current_line(128, ng0);

LAB59:    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB57:    goto LAB19;

LAB21:    xsi_set_current_line(55, ng0);

LAB24:    xsi_set_current_line(56, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 3840);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2320U);
    t3 = *((char **)t2);
    t2 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB23;

LAB27:    xsi_set_current_line(70, ng0);

LAB30:    xsi_set_current_line(71, ng0);
    t10 = (t0 + 3360);
    t18 = (t10 + 56U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng5)));
    xsi_vlog_unsigned_add(t21, 33, t19, 33, t20, 32);
    t22 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t22, t21, 0, 0, 33, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB29;

LAB33:    xsi_set_current_line(85, ng0);

LAB36:    xsi_set_current_line(86, ng0);
    t10 = (t0 + 3360);
    t18 = (t10 + 56U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng5)));
    xsi_vlog_unsigned_add(t21, 33, t19, 33, t20, 32);
    t22 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t22, t21, 0, 0, 33, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB35;

LAB39:    t10 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB41;

LAB40:    *((unsigned int *)t23) = 1;
    goto LAB41;

LAB43:    xsi_set_current_line(92, ng0);

LAB46:    xsi_set_current_line(93, ng0);
    t19 = ((char*)((ng3)));
    t20 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 33, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 3520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng8)));
    memset(t23, 0, 8);
    xsi_vlog_unsigned_add(t23, 32, t4, 3, t5, 32);
    t7 = (t0 + 3520);
    xsi_vlogvar_wait_assign_value(t7, t23, 0, 0, 3, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB45;

LAB49:    xsi_set_current_line(111, ng0);

LAB52:    xsi_set_current_line(112, ng0);
    t10 = (t0 + 3360);
    t18 = (t10 + 56U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng5)));
    xsi_vlog_unsigned_add(t21, 33, t19, 33, t20, 32);
    t22 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t22, t21, 0, 0, 33, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB51;

LAB55:    xsi_set_current_line(124, ng0);

LAB58:    xsi_set_current_line(125, ng0);
    t18 = (t0 + 3360);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t22 = ((char*)((ng5)));
    xsi_vlog_unsigned_add(t21, 33, t20, 33, t22, 32);
    t24 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t24, t21, 0, 0, 33, 0LL);
    goto LAB57;

}

static void Cont_141_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 5008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 3680);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5688);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 5592);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_142_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 5256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5752);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 5608);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000001136636209_2859797778_init()
{
	static char *pe[] = {(void *)Always_44_0,(void *)Cont_141_1,(void *)Cont_142_2};
	xsi_register_didat("work_m_00000000001136636209_2859797778", "isim/ROOT_SYSTEM_test_isim_beh.exe.sim/work/m_00000000001136636209_2859797778.didat");
	xsi_register_executes(pe);
}
