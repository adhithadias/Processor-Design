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
static const char *ng0 = "E:/UOM/Xilinx Workspace/Processor/IO_MODULE.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Cont_58_0(char *t0)
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

LAB0:    t1 = (t0 + 6080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 5160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6744);
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
    t18 = (t0 + 6648);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_60_1(char *t0)
{
    char t20[8];
    char t34[8];
    char t41[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;

LAB0:    t1 = (t0 + 6328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 6664);
    *((int *)t2) = 1;
    t3 = (t0 + 6360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(60, ng0);

LAB5:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 4520);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = (t0 + 608);
    t8 = *((char **)t7);
    t9 = xsi_vlog_unsigned_case_compare(t6, 4, t8, 32);
    if (t9 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 4, t3, 32);
    if (t9 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 4, t3, 32);
    if (t9 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 4, t3, 32);
    if (t9 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 1152);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 4, t3, 32);
    if (t9 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t2 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);

LAB19:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 4680);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB60:    t5 = (t0 + 1288);
    t7 = *((char **)t5);
    t9 = xsi_vlog_unsigned_case_compare(t4, 4, t7, 32);
    if (t9 == 1)
        goto LAB61;

LAB62:    t2 = (t0 + 1424);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t4, 4, t3, 32);
    if (t9 == 1)
        goto LAB63;

LAB64:    t2 = (t0 + 1560);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t4, 4, t3, 32);
    if (t9 == 1)
        goto LAB65;

LAB66:    t2 = (t0 + 1696);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t4, 4, t3, 32);
    if (t9 == 1)
        goto LAB67;

LAB68:    t2 = (t0 + 1832);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t4, 4, t3, 32);
    if (t9 == 1)
        goto LAB69;

LAB70:    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t4, 4, t3, 32);
    if (t9 == 1)
        goto LAB71;

LAB72:
LAB74:
LAB73:    xsi_set_current_line(193, ng0);
    t2 = (t0 + 1288);
    t3 = *((char **)t2);
    t2 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);

LAB75:    goto LAB2;

LAB7:    xsi_set_current_line(65, ng0);

LAB20:    xsi_set_current_line(66, ng0);
    t7 = (t0 + 3160U);
    t10 = *((char **)t7);
    t7 = (t10 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(70, ng0);

LAB25:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t2 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);

LAB23:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2840U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(79, ng0);

LAB30:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4840);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 10, 0LL);

LAB28:    goto LAB19;

LAB9:    xsi_set_current_line(85, ng0);

LAB31:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 4200);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t2 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    goto LAB19;

LAB11:    xsi_set_current_line(90, ng0);

LAB32:    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 4200);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 4840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t4, 10, t5, 32);
    t7 = (t0 + 4840);
    xsi_vlogvar_wait_assign_value(t7, t20, 0, 0, 10, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t2 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    goto LAB19;

LAB13:    xsi_set_current_line(96, ng0);

LAB33:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 4840);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 472);
    t8 = *((char **)t7);
    memset(t20, 0, 8);
    t7 = (t5 + 4);
    t10 = (t8 + 4);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t7);
    t15 = *((unsigned int *)t10);
    t21 = (t14 ^ t15);
    t22 = (t13 | t21);
    t23 = *((unsigned int *)t7);
    t24 = *((unsigned int *)t10);
    t25 = (t23 | t24);
    t26 = (~(t25));
    t27 = (t22 & t26);
    if (t27 != 0)
        goto LAB37;

LAB34:    if (t25 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t20) = 1;

LAB37:    t17 = (t20 + 4);
    t28 = *((unsigned int *)t17);
    t29 = (~(t28));
    t30 = *((unsigned int *)t20);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(102, ng0);

LAB42:    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1152);
    t3 = *((char **)t2);
    t2 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);

LAB40:    goto LAB19;

LAB15:    xsi_set_current_line(109, ng0);

LAB43:    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 3160U);
    t3 = *((char **)t2);
    memset(t20, 0, 8);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB47;

LAB45:    if (*((unsigned int *)t2) == 0)
        goto LAB44;

LAB46:    t4 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t4) = 1;

LAB47:    t5 = (t20 + 4);
    t7 = (t3 + 4);
    t21 = *((unsigned int *)t3);
    t22 = (~(t21));
    *((unsigned int *)t20) = t22;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB49;

LAB48:    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 1U);
    t28 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t28 & 1U);
    t8 = (t20 + 4);
    t29 = *((unsigned int *)t8);
    t30 = (~(t29));
    t31 = *((unsigned int *)t20);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB50;

LAB51:    xsi_set_current_line(115, ng0);

LAB54:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 1152);
    t3 = *((char **)t2);
    t2 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);

LAB52:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2840U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB55;

LAB56:    xsi_set_current_line(123, ng0);

LAB59:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 4840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4840);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 10, 0LL);

LAB57:    goto LAB19;

LAB21:    xsi_set_current_line(66, ng0);

LAB24:    xsi_set_current_line(67, ng0);
    t16 = (t0 + 4840);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t0 + 4040);
    xsi_vlogvar_wait_assign_value(t19, t18, 0, 0, 10, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t2 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    goto LAB23;

LAB26:    xsi_set_current_line(75, ng0);

LAB29:    xsi_set_current_line(76, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 4840);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 10, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB28;

LAB36:    t16 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(97, ng0);

LAB41:    xsi_set_current_line(98, ng0);
    t18 = ((char*)((ng2)));
    t19 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t19, t18, 0, 0, 1, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1152);
    t3 = *((char **)t2);
    t2 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    goto LAB40;

LAB44:    *((unsigned int *)t20) = 1;
    goto LAB47;

LAB49:    t23 = *((unsigned int *)t20);
    t24 = *((unsigned int *)t7);
    *((unsigned int *)t20) = (t23 | t24);
    t25 = *((unsigned int *)t5);
    t26 = *((unsigned int *)t7);
    *((unsigned int *)t5) = (t25 | t26);
    goto LAB48;

LAB50:    xsi_set_current_line(112, ng0);

LAB53:    xsi_set_current_line(113, ng0);
    t10 = (t0 + 608);
    t16 = *((char **)t10);
    t10 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t10, t16, 0, 0, 4, 0LL);
    goto LAB52;

LAB55:    xsi_set_current_line(119, ng0);

LAB58:    xsi_set_current_line(120, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 4840);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 10, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB57;

LAB61:    xsi_set_current_line(139, ng0);

LAB76:    xsi_set_current_line(140, ng0);
    t5 = (t0 + 3000U);
    t8 = *((char **)t5);
    t5 = (t8 + 4);
    t11 = *((unsigned int *)t5);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB77;

LAB78:    xsi_set_current_line(145, ng0);

LAB81:    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    xsi_set_current_line(148, ng0);
    t2 = (t0 + 1288);
    t3 = *((char **)t2);
    t2 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);

LAB79:    goto LAB75;

LAB63:    xsi_set_current_line(152, ng0);

LAB82:    xsi_set_current_line(153, ng0);
    t2 = (t0 + 5000);
    t5 = (t2 + 56U);
    t7 = *((char **)t5);
    t8 = (t0 + 4040);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 10, 0LL);
    xsi_set_current_line(154, ng0);
    t2 = (t0 + 1560);
    t3 = *((char **)t2);
    t2 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    goto LAB75;

LAB65:    xsi_set_current_line(157, ng0);

LAB83:    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng2)));
    t5 = (t0 + 3880);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(159, ng0);
    t2 = (t0 + 1696);
    t3 = *((char **)t2);
    t2 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    goto LAB75;

LAB67:    xsi_set_current_line(162, ng0);

LAB84:    xsi_set_current_line(163, ng0);
    t2 = ((char*)((ng1)));
    t5 = (t0 + 3880);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(164, ng0);
    t2 = (t0 + 1832);
    t3 = *((char **)t2);
    t2 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    goto LAB75;

LAB69:    xsi_set_current_line(167, ng0);

LAB85:    xsi_set_current_line(168, ng0);
    t2 = (t0 + 3320U);
    t5 = *((char **)t2);
    t2 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t5);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB86;

LAB87:    xsi_set_current_line(178, ng0);

LAB100:    xsi_set_current_line(179, ng0);
    t2 = (t0 + 1832);
    t3 = *((char **)t2);
    t2 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);

LAB88:    goto LAB75;

LAB71:    xsi_set_current_line(183, ng0);

LAB101:    xsi_set_current_line(184, ng0);
    t2 = (t0 + 3000U);
    t5 = *((char **)t2);
    memset(t20, 0, 8);
    t2 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t5);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB105;

LAB103:    if (*((unsigned int *)t2) == 0)
        goto LAB102;

LAB104:    t7 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t7) = 1;

LAB105:    t8 = (t20 + 4);
    t10 = (t5 + 4);
    t21 = *((unsigned int *)t5);
    t22 = (~(t21));
    *((unsigned int *)t20) = t22;
    *((unsigned int *)t8) = 0;
    if (*((unsigned int *)t10) != 0)
        goto LAB107;

LAB106:    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 1U);
    t28 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t28 & 1U);
    t16 = (t20 + 4);
    t29 = *((unsigned int *)t16);
    t30 = (~(t29));
    t31 = *((unsigned int *)t20);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB108;

LAB109:    xsi_set_current_line(187, ng0);

LAB112:    xsi_set_current_line(188, ng0);
    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t2 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);

LAB110:    goto LAB75;

LAB77:    xsi_set_current_line(140, ng0);

LAB80:    xsi_set_current_line(141, ng0);
    t10 = ((char*)((ng1)));
    t16 = (t0 + 5000);
    xsi_vlogvar_wait_assign_value(t16, t10, 0, 0, 10, 0LL);
    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 1424);
    t3 = *((char **)t2);
    t2 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    goto LAB79;

LAB86:    xsi_set_current_line(168, ng0);

LAB89:    xsi_set_current_line(169, ng0);
    t7 = (t0 + 5000);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t16 = (t0 + 472);
    t17 = *((char **)t16);
    t16 = ((char*)((ng2)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_minus(t20, 32, t17, 32, t16, 32);
    memset(t34, 0, 8);
    t18 = (t10 + 4);
    if (*((unsigned int *)t18) != 0)
        goto LAB91;

LAB90:    t19 = (t20 + 4);
    if (*((unsigned int *)t19) != 0)
        goto LAB91;

LAB94:    if (*((unsigned int *)t10) < *((unsigned int *)t20))
        goto LAB92;

LAB93:    t36 = (t34 + 4);
    t21 = *((unsigned int *)t36);
    t22 = (~(t21));
    t23 = *((unsigned int *)t34);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB95;

LAB96:    xsi_set_current_line(173, ng0);

LAB99:    xsi_set_current_line(174, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    xsi_set_current_line(175, ng0);
    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t2 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);

LAB97:    goto LAB88;

LAB91:    t35 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB93;

LAB92:    *((unsigned int *)t34) = 1;
    goto LAB93;

LAB95:    xsi_set_current_line(169, ng0);

LAB98:    xsi_set_current_line(170, ng0);
    t37 = (t0 + 5000);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = ((char*)((ng2)));
    memset(t41, 0, 8);
    xsi_vlog_unsigned_add(t41, 32, t39, 10, t40, 32);
    t42 = (t0 + 5000);
    xsi_vlogvar_wait_assign_value(t42, t41, 0, 0, 10, 0LL);
    xsi_set_current_line(171, ng0);
    t2 = (t0 + 1424);
    t3 = *((char **)t2);
    t2 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);
    goto LAB97;

LAB102:    *((unsigned int *)t20) = 1;
    goto LAB105;

LAB107:    t23 = *((unsigned int *)t20);
    t24 = *((unsigned int *)t10);
    *((unsigned int *)t20) = (t23 | t24);
    t25 = *((unsigned int *)t8);
    t26 = *((unsigned int *)t10);
    *((unsigned int *)t8) = (t25 | t26);
    goto LAB106;

LAB108:    xsi_set_current_line(184, ng0);

LAB111:    xsi_set_current_line(185, ng0);
    t17 = (t0 + 1288);
    t18 = *((char **)t17);
    t17 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t17, t18, 0, 0, 4, 0LL);
    goto LAB110;

}


extern void work_m_00000000000497231599_3064728085_init()
{
	static char *pe[] = {(void *)Cont_58_0,(void *)Always_60_1};
	xsi_register_didat("work_m_00000000000497231599_3064728085", "isim/ROOT_SYSTEM_test_isim_beh.exe.sim/work/m_00000000000497231599_3064728085.didat");
	xsi_register_executes(pe);
}
