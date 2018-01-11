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
static const char *ng0 = "E:/UOM/Xilinx Workspace/Processor/UART_RX.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {0, 0, 0, 0};
static int ng5[] = {2, 0, 0, 0};
static int ng6[] = {1, 0, 0, 0};
static unsigned int ng7[] = {2U, 0U};
static int ng8[] = {7, 0};
static int ng9[] = {1, 0};
static unsigned int ng10[] = {3U, 0U};
static unsigned int ng11[] = {4U, 0U};



static void Cont_43_0(char *t0)
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

LAB0:    t1 = (t0 + 4440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5368);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
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
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 5256);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_44_1(char *t0)
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

LAB0:    t1 = (t0 + 4688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3520);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5432);
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
    t18 = (t0 + 5272);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_46_2(char *t0)
{
    char t11[8];
    char t35[16];
    char t36[16];
    char t37[16];
    char t38[16];
    char t39[8];
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
    char *t12;
    char *t13;
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
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 4936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 5288);
    *((int *)t2) = 1;
    t3 = (t0 + 4968);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);

LAB5:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 2880);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(51, ng0);

LAB20:    xsi_set_current_line(52, ng0);
    t9 = (t0 + 2160U);
    t10 = *((char **)t9);
    t9 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t12 = (t10 + 4);
    t13 = (t9 + 4);
    t14 = *((unsigned int *)t10);
    t15 = *((unsigned int *)t9);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB24;

LAB21:    if (t23 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t11) = 1;

LAB24:    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(59, ng0);

LAB29:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB27:    goto LAB19;

LAB9:    xsi_set_current_line(67, ng0);

LAB30:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 3200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 472);
    t9 = *((char **)t7);
    t7 = ((char*)((ng5)));
    xsi_vlog_unsigned_divide(t35, 33, t9, 32, t7, 32);
    t10 = ((char*)((ng6)));
    xsi_vlog_unsigned_minus(t36, 33, t35, 33, t10, 32);
    xsi_vlog_unsigned_less(t37, 33, t5, 33, t36, 33);
    t12 = (t37 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t37);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(74, ng0);

LAB35:    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB33:    goto LAB19;

LAB11:    xsi_set_current_line(81, ng0);

LAB36:    xsi_set_current_line(82, ng0);
    t3 = (t0 + 3200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 472);
    t9 = *((char **)t7);
    t7 = ((char*)((ng6)));
    xsi_vlog_unsigned_minus(t35, 33, t9, 32, t7, 32);
    xsi_vlog_unsigned_less(t36, 33, t5, 33, t35, 33);
    t10 = (t36 + 4);
    t14 = *((unsigned int *)t10);
    t15 = (~(t14));
    t16 = *((unsigned int *)t36);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(88, ng0);

LAB41:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2160U);
    t3 = *((char **)t2);
    t2 = (t0 + 3040);
    t4 = (t0 + 3040);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t9 = (t0 + 3360);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    xsi_vlog_generic_convert_bit_index(t11, t7, 2, t12, 3, 2);
    t13 = (t11 + 4);
    t14 = *((unsigned int *)t13);
    t8 = (!(t14));
    if (t8 == 1)
        goto LAB42;

LAB43:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng8)));
    memset(t11, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB45;

LAB44:    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB45;

LAB48:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB46;

LAB47:    t12 = (t11 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(98, ng0);

LAB53:    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB51:
LAB39:    goto LAB19;

LAB13:    xsi_set_current_line(108, ng0);

LAB54:    xsi_set_current_line(109, ng0);
    t3 = (t0 + 3200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 472);
    t9 = *((char **)t7);
    t7 = ((char*)((ng6)));
    xsi_vlog_unsigned_minus(t35, 33, t9, 32, t7, 32);
    xsi_vlog_unsigned_less(t36, 33, t5, 33, t35, 33);
    t10 = (t36 + 4);
    t14 = *((unsigned int *)t10);
    t15 = (~(t14));
    t16 = *((unsigned int *)t36);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB55;

LAB56:    xsi_set_current_line(115, ng0);

LAB59:    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);

LAB57:    goto LAB19;

LAB15:    xsi_set_current_line(122, ng0);

LAB60:    xsi_set_current_line(123, ng0);
    t3 = (t0 + 3200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 1288);
    t9 = *((char **)t7);
    t7 = ((char*)((ng6)));
    xsi_vlog_unsigned_minus(t35, 33, t9, 32, t7, 32);
    xsi_vlog_unsigned_less(t36, 33, t5, 33, t35, 33);
    t10 = (t36 + 4);
    t14 = *((unsigned int *)t10);
    t15 = (~(t14));
    t16 = *((unsigned int *)t36);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB61;

LAB62:    xsi_set_current_line(128, ng0);

LAB65:    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);

LAB63:    goto LAB19;

LAB23:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB24;

LAB25:    xsi_set_current_line(53, ng0);

LAB28:    xsi_set_current_line(54, ng0);
    t33 = ((char*)((ng1)));
    t34 = (t0 + 3520);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 1, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB27;

LAB31:    xsi_set_current_line(69, ng0);

LAB34:    xsi_set_current_line(70, ng0);
    t13 = (t0 + 3200);
    t26 = (t13 + 56U);
    t27 = *((char **)t26);
    t33 = ((char*)((ng6)));
    xsi_vlog_unsigned_add(t38, 33, t27, 33, t33, 32);
    t34 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t34, t38, 0, 0, 33, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB33;

LAB37:    xsi_set_current_line(83, ng0);

LAB40:    xsi_set_current_line(84, ng0);
    t12 = (t0 + 3200);
    t13 = (t12 + 56U);
    t26 = *((char **)t13);
    t27 = ((char*)((ng6)));
    xsi_vlog_unsigned_add(t37, 33, t26, 33, t27, 32);
    t33 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t33, t37, 0, 0, 33, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB39;

LAB42:    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t11), 1, 0LL);
    goto LAB43;

LAB45:    t10 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB47;

LAB46:    *((unsigned int *)t11) = 1;
    goto LAB47;

LAB49:    xsi_set_current_line(92, ng0);

LAB52:    xsi_set_current_line(93, ng0);
    t13 = (t0 + 3360);
    t26 = (t13 + 56U);
    t27 = *((char **)t26);
    t33 = ((char*)((ng9)));
    memset(t39, 0, 8);
    xsi_vlog_unsigned_add(t39, 32, t27, 3, t33, 32);
    t34 = (t0 + 3360);
    xsi_vlogvar_wait_assign_value(t34, t39, 0, 0, 3, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);
    goto LAB51;

LAB55:    xsi_set_current_line(110, ng0);

LAB58:    xsi_set_current_line(111, ng0);
    t12 = (t0 + 3200);
    t13 = (t12 + 56U);
    t26 = *((char **)t13);
    t27 = ((char*)((ng6)));
    xsi_vlog_unsigned_add(t37, 33, t26, 33, t27, 32);
    t33 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t33, t37, 0, 0, 33, 0LL);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB57;

LAB61:    xsi_set_current_line(124, ng0);

LAB64:    xsi_set_current_line(125, ng0);
    t12 = (t0 + 3200);
    t13 = (t12 + 56U);
    t26 = *((char **)t13);
    t27 = ((char*)((ng6)));
    xsi_vlog_unsigned_add(t37, 33, t26, 33, t27, 32);
    t33 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t33, t37, 0, 0, 33, 0LL);
    goto LAB63;

}


extern void work_m_00000000001425118177_4230982292_init()
{
	static char *pe[] = {(void *)Cont_43_0,(void *)Cont_44_1,(void *)Always_46_2};
	xsi_register_didat("work_m_00000000001425118177_4230982292", "isim/ROOT_SYSTEM_test_isim_beh.exe.sim/work/m_00000000001425118177_4230982292.didat");
	xsi_register_executes(pe);
}
