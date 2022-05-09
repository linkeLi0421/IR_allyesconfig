; ModuleID = '/llk/IR_all_yes/drivers/net/sungem_phy.c_pt.bc'
source_filename = "../drivers/net/sungem_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sungem_phy_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_sungem_phy_probe\09\09\09\09"
module asm "\09.long\09__crc_sungem_phy_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sungem_phy_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22sungem_phy_probe\22\09\09\09\09\09"
module asm "__kstrtabns_sungem_phy_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mii_phy_def = type { i32, i32, i32, i32, ptr, ptr }
%struct.mii_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_phy = type { ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }

@sungem_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017sungem_phy: PHY ID: %x, addr: %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sungem_phy_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/sungem_phy.c\00", [39 x i8] zeroinitializer }, align 32
@sungem_phy_probe._entry_ptr = internal global ptr @sungem_phy_probe._entry, section ".printk_index", align 4
@__kstrtab_sungem_phy_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_sungem_phy_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_sungem_phy_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sungem_phy_probe to i32), ptr @__kstrtab_sungem_phy_probe, ptr @__kstrtabns_sungem_phy_probe }, section "___ksymtab+sungem_phy_probe", align 4
@__UNIQUE_ID_file339 = internal constant [39 x i8] c"sungem_phy.file=drivers/net/sungem_phy\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [23 x i8] c"sungem_phy.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm5201_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 4219408, i32 -16, i32 8911, i32 1, ptr @.str.3, ptr @bcm5201_phy_ops }, [40 x i8] zeroinitializer }, align 32
@bcm5221_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 4219360, i32 -16, i32 8911, i32 1, ptr @.str.4, ptr @bcm5221_phy_ops }, [40 x i8] zeroinitializer }, align 32
@bcm5241_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 21216304, i32 -16, i32 8911, i32 1, ptr @.str.5, ptr @bcm5241_phy_ops }, [40 x i8] zeroinitializer }, align 32
@bcm5400_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 2121792, i32 -16, i32 8959, i32 1, ptr @.str.6, ptr @bcm5400_phy_ops }, [40 x i8] zeroinitializer }, align 32
@bcm5401_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 2121808, i32 -16, i32 8959, i32 1, ptr @.str.7, ptr @bcm5401_phy_ops }, [40 x i8] zeroinitializer }, align 32
@bcm5411_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 2121840, i32 -16, i32 8959, i32 1, ptr @.str.8, ptr @bcm5411_phy_ops }, [40 x i8] zeroinitializer }, align 32
@bcm5421_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 2121952, i32 -16, i32 8959, i32 1, ptr @.str.9, ptr @bcm5421_phy_ops }, [40 x i8] zeroinitializer }, align 32
@bcm5421k2_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 2122464, i32 -16, i32 8959, i32 1, ptr @.str.10, ptr @bcm5421k2_phy_ops }, [40 x i8] zeroinitializer }, align 32
@bcm5461_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 2121920, i32 -16, i32 8959, i32 1, ptr @.str.11, ptr @bcm5461_phy_ops }, [40 x i8] zeroinitializer }, align 32
@bcm5462V_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 2121936, i32 -16, i32 8959, i32 1, ptr @.str.12, ptr @bcm5462V_phy_ops }, [40 x i8] zeroinitializer }, align 32
@marvell88e1101v1_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 21040160, i32 -16, i32 8959, i32 1, ptr @.str.13, ptr @marvell88e1101_phy_ops }, [40 x i8] zeroinitializer }, align 32
@marvell88e1101v2_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 21040224, i32 -16, i32 8959, i32 1, ptr @.str.14, ptr @marvell88e1101_phy_ops }, [40 x i8] zeroinitializer }, align 32
@marvell88e1111_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 21040320, i32 -16, i32 8959, i32 1, ptr @.str.15, ptr @marvell88e1111_phy_ops }, [40 x i8] zeroinitializer }, align 32
@genmii_phy_def = internal global { %struct.mii_phy_def, [40 x i8] } { %struct.mii_phy_def { i32 0, i32 0, i32 8911, i32 0, ptr @.str.16, ptr @generic_phy_ops }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BCM5201\00", [24 x i8] zeroinitializer }, align 32
@bcm5201_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @bcm5201_init, ptr @bcm5201_suspend, ptr @genmii_setup_aneg, ptr @genmii_setup_forced, ptr @genmii_poll_link, ptr @genmii_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BCM5221\00", [24 x i8] zeroinitializer }, align 32
@bcm5221_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @bcm5221_init, ptr @bcm5221_suspend, ptr @genmii_setup_aneg, ptr @genmii_setup_forced, ptr @genmii_poll_link, ptr @genmii_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BCM5241\00", [24 x i8] zeroinitializer }, align 32
@bcm5241_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @bcm5241_init, ptr @bcm5241_suspend, ptr @genmii_setup_aneg, ptr @genmii_setup_forced, ptr @genmii_poll_link, ptr @genmii_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BCM5400\00", [24 x i8] zeroinitializer }, align 32
@bcm5400_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @bcm5400_init, ptr @bcm5400_suspend, ptr @bcm54xx_setup_aneg, ptr @bcm54xx_setup_forced, ptr @genmii_poll_link, ptr @bcm54xx_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@phy_BCM5400_link_table = internal constant { [8 x [3 x i32]], [32 x i8] } { [8 x [3 x i32]] [[3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [3 x i32] [i32 1, i32 0, i32 0], [3 x i32] [i32 0, i32 1, i32 0], [3 x i32] [i32 0, i32 1, i32 0], [3 x i32] [i32 1, i32 1, i32 0], [3 x i32] [i32 1, i32 0, i32 1], [3 x i32] [i32 1, i32 0, i32 1]], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BCM5401\00", [24 x i8] zeroinitializer }, align 32
@bcm5401_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @bcm5401_init, ptr @bcm5401_suspend, ptr @bcm54xx_setup_aneg, ptr @bcm54xx_setup_forced, ptr @genmii_poll_link, ptr @bcm54xx_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BCM5411\00", [24 x i8] zeroinitializer }, align 32
@bcm5411_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @bcm5411_init, ptr @generic_suspend, ptr @bcm54xx_setup_aneg, ptr @bcm54xx_setup_forced, ptr @genmii_poll_link, ptr @bcm54xx_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BCM5421\00", [24 x i8] zeroinitializer }, align 32
@bcm5421_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @bcm5421_init, ptr @generic_suspend, ptr @bcm54xx_setup_aneg, ptr @bcm54xx_setup_forced, ptr @bcm5421_poll_link, ptr @bcm5421_read_link, ptr @bcm5421_enable_fiber }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCM5421-K2\00", [21 x i8] zeroinitializer }, align 32
@bcm5421k2_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @bcm5421_init, ptr @generic_suspend, ptr @bcm54xx_setup_aneg, ptr @bcm54xx_setup_forced, ptr @genmii_poll_link, ptr @bcm54xx_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BCM5461\00", [24 x i8] zeroinitializer }, align 32
@bcm5461_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @bcm5421_init, ptr @generic_suspend, ptr @bcm54xx_setup_aneg, ptr @bcm54xx_setup_forced, ptr @bcm5461_poll_link, ptr @bcm5461_read_link, ptr @bcm5461_enable_fiber }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BCM5462-Vesta\00", [18 x i8] zeroinitializer }, align 32
@bcm5462V_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @bcm5421_init, ptr @generic_suspend, ptr @bcm54xx_setup_aneg, ptr @bcm54xx_setup_forced, ptr @genmii_poll_link, ptr @bcm54xx_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Marvell 88E1101v1\00", [46 x i8] zeroinitializer }, align 32
@marvell88e1101_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr null, ptr @generic_suspend, ptr @marvell_setup_aneg, ptr @marvell_setup_forced, ptr @genmii_poll_link, ptr @marvell_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Marvell 88E1101v2\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E1111\00", [16 x i8] zeroinitializer }, align 32
@marvell88e1111_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr @marvell88e1111_init, ptr @generic_suspend, ptr @marvell_setup_aneg, ptr @marvell_setup_forced, ptr @genmii_poll_link, ptr @marvell_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Generic MII\00", [20 x i8] zeroinitializer }, align 32
@generic_phy_ops = internal constant { %struct.mii_phy_ops, [36 x i8] } { %struct.mii_phy_ops { ptr null, ptr null, ptr @genmii_setup_aneg, ptr @genmii_setup_forced, ptr @genmii_poll_link, ptr @genmii_read_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1179, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"bcm5201_phy_def\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 899, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"bcm5221_phy_def\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 918, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"bcm5241_phy_def\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 936, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"bcm5400_phy_def\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 955, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"bcm5401_phy_def\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 974, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"bcm5411_phy_def\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 993, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"bcm5421_phy_def\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1013, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"bcm5421k2_phy_def\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1032, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"bcm5461_phy_def\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1051, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"bcm5462V_phy_def\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1070, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"marvell88e1101v1_phy_def\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1100, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"marvell88e1101v2_phy_def\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1108, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant [23 x i8] c"marvell88e1111_phy_def\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1116, i32 27 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"genmii_phy_def\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1133, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 902, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"bcm5201_phy_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 890, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 921, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"bcm5221_phy_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 909, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 939, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"bcm5241_phy_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 928, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 958, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"bcm5400_phy_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 946, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"phy_BCM5400_link_table\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 40, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 977, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"bcm5401_phy_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 965, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 996, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"bcm5411_phy_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 984, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1016, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"bcm5421_phy_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1003, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1035, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"bcm5421k2_phy_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1023, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1054, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"bcm5461_phy_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1041, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1073, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"bcm5462V_phy_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1061, i32 33 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1103, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"marvell88e1101_phy_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1080, i32 33 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1111, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1119, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [23 x i8] c"marvell88e1111_phy_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1088, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1136, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"generic_phy_ops\00", align 1
@___asan_gen_.156 = private constant [28 x i8] c"../drivers/net/sungem_phy.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1126, i32 33 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__ksymtab_sungem_phy_probe, ptr @sungem_phy_probe._entry, ptr @sungem_phy_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bcm5201_phy_def, ptr @bcm5221_phy_def, ptr @bcm5241_phy_def, ptr @bcm5400_phy_def, ptr @bcm5401_phy_def, ptr @bcm5411_phy_def, ptr @bcm5421_phy_def, ptr @bcm5421k2_phy_def, ptr @bcm5461_phy_def, ptr @bcm5462V_phy_def, ptr @marvell88e1101v1_phy_def, ptr @marvell88e1101v2_phy_def, ptr @marvell88e1111_phy_def, ptr @genmii_phy_def, ptr @.str.3, ptr @bcm5201_phy_ops, ptr @.str.4, ptr @bcm5221_phy_ops, ptr @.str.5, ptr @bcm5241_phy_ops, ptr @.str.6, ptr @bcm5400_phy_ops, ptr @phy_BCM5400_link_table, ptr @.str.7, ptr @bcm5401_phy_ops, ptr @.str.8, ptr @bcm5411_phy_ops, ptr @.str.9, ptr @bcm5421_phy_ops, ptr @.str.10, ptr @bcm5421k2_phy_ops, ptr @.str.11, ptr @bcm5461_phy_ops, ptr @.str.12, ptr @bcm5462V_phy_ops, ptr @.str.13, ptr @marvell88e1101_phy_ops, ptr @.str.14, ptr @.str.15, ptr @marvell88e1111_phy_ops, ptr @.str.16, ptr @generic_phy_ops], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sungem_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5201_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5221_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5241_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5400_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5401_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5411_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5421_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5421k2_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5461_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5462V_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell88e1101v1_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell88e1101v2_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell88e1111_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genmii_phy_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5201_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5221_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5241_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5400_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_BCM5400_link_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5401_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5411_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5421_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5421k2_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5461_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm5462V_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell88e1101_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell88e1111_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_phy_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sungem_phy_probe(ptr nocapture noundef %phy, i32 noundef %mii_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_id1 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %mii_id1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mii_id, ptr %mii_id1, align 4
  %mdio_read.i.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %1 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdio_read.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = tail call i32 %2(ptr noundef %4, i32 noundef %mii_id, i32 noundef 0) #3
  %5 = and i32 %call.i.i, 29695
  %conv4.i = or i32 %5, 32768
  %mdio_write.i.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %6 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i.i, align 4
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %mii_id, i32 noundef 0, i32 noundef %conv4.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec49.i = phi i32 [ 9999, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdio_read.i.i, align 4
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %call.i38.i = tail call i32 %12(ptr noundef %14, i32 noundef %mii_id, i32 noundef 0) #3
  %and9.i = and i32 %call.i38.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp.i = icmp eq i32 %and9.i, 0
  br i1 %cmp.i, label %while.end.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #3
  %dec.i = add nsw i32 %dec49.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.fail_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end.i.fail_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

while.end.i:                                      ; preds = %while.body.i
  %and12.i = and i32 %call.i38.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp ne i32 %and12.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec49.i)
  %cmp14.i = icmp sgt i32 %dec49.i, 0
  %or.cond.i = select i1 %tobool13.not.i, i1 %cmp14.i, i1 false
  br i1 %or.cond.i, label %reset_one_mii_phy.exit.thread, label %reset_one_mii_phy.exit

reset_one_mii_phy.exit.thread:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %and18.i = and i32 %call.i38.i, 64511
  %16 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_write.i.i, align 4
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  tail call void %17(ptr noundef %19, i32 noundef %mii_id, i32 noundef 0, i32 noundef %and18.i) #3
  br label %if.end

reset_one_mii_phy.exit:                           ; preds = %while.end.i
  br i1 %cmp14.i, label %reset_one_mii_phy.exit.if.end_crit_edge, label %reset_one_mii_phy.exit.fail_crit_edge

reset_one_mii_phy.exit.fail_crit_edge:            ; preds = %reset_one_mii_phy.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

reset_one_mii_phy.exit.if.end_crit_edge:          ; preds = %reset_one_mii_phy.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %reset_one_mii_phy.exit.if.end_crit_edge, %reset_one_mii_phy.exit.thread
  %20 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdio_read.i.i, align 4
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %24 = ptrtoint ptr %mii_id1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mii_id1, align 4
  %call.i = tail call i32 %21(ptr noundef %23, i32 noundef %25, i32 noundef 2) #3
  %shl = shl i32 %call.i, 16
  %26 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdio_read.i.i, align 4
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %30 = ptrtoint ptr %mii_id1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mii_id1, align 4
  %call.i33 = tail call i32 %27(ptr noundef %29, i32 noundef %31, i32 noundef 3) #3
  %or = or i32 %call.i33, %shl
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %or, i32 noundef %mii_id) #6
  %32 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @bcm5201_phy_def, i32 0, i32 1), align 4
  %and = and i32 %32, %or
  %33 = load i32, ptr @bcm5201_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %33)
  %cmp5 = icmp eq i32 %and, %33
  br i1 %cmp5, label %if.end.if.end10_crit_edge, label %for.cond

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond:                                         ; preds = %if.end
  %34 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @bcm5221_phy_def, i32 0, i32 1), align 4
  %and.1 = and i32 %34, %or
  %35 = load i32, ptr @bcm5221_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1, i32 %35)
  %cmp5.1 = icmp eq i32 %and.1, %35
  br i1 %cmp5.1, label %for.cond.if.end10_crit_edge, label %for.cond.1

for.cond.if.end10_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.1:                                       ; preds = %for.cond
  %36 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @bcm5241_phy_def, i32 0, i32 1), align 4
  %and.2 = and i32 %36, %or
  %37 = load i32, ptr @bcm5241_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2, i32 %37)
  %cmp5.2 = icmp eq i32 %and.2, %37
  br i1 %cmp5.2, label %for.cond.1.if.end10_crit_edge, label %for.cond.2

for.cond.1.if.end10_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.2:                                       ; preds = %for.cond.1
  %38 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @bcm5400_phy_def, i32 0, i32 1), align 4
  %and.3 = and i32 %38, %or
  %39 = load i32, ptr @bcm5400_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.3, i32 %39)
  %cmp5.3 = icmp eq i32 %and.3, %39
  br i1 %cmp5.3, label %for.cond.2.if.end10_crit_edge, label %for.cond.3

for.cond.2.if.end10_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.3:                                       ; preds = %for.cond.2
  %40 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @bcm5401_phy_def, i32 0, i32 1), align 4
  %and.4 = and i32 %40, %or
  %41 = load i32, ptr @bcm5401_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.4, i32 %41)
  %cmp5.4 = icmp eq i32 %and.4, %41
  br i1 %cmp5.4, label %for.cond.3.if.end10_crit_edge, label %for.cond.4

for.cond.3.if.end10_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.4:                                       ; preds = %for.cond.3
  %42 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @bcm5411_phy_def, i32 0, i32 1), align 4
  %and.5 = and i32 %42, %or
  %43 = load i32, ptr @bcm5411_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.5, i32 %43)
  %cmp5.5 = icmp eq i32 %and.5, %43
  br i1 %cmp5.5, label %for.cond.4.if.end10_crit_edge, label %for.cond.5

for.cond.4.if.end10_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.5:                                       ; preds = %for.cond.4
  %44 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @bcm5421_phy_def, i32 0, i32 1), align 4
  %and.6 = and i32 %44, %or
  %45 = load i32, ptr @bcm5421_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.6, i32 %45)
  %cmp5.6 = icmp eq i32 %and.6, %45
  br i1 %cmp5.6, label %for.cond.5.if.end10_crit_edge, label %for.cond.6

for.cond.5.if.end10_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.6:                                       ; preds = %for.cond.5
  %46 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @bcm5421k2_phy_def, i32 0, i32 1), align 4
  %and.7 = and i32 %46, %or
  %47 = load i32, ptr @bcm5421k2_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.7, i32 %47)
  %cmp5.7 = icmp eq i32 %and.7, %47
  br i1 %cmp5.7, label %for.cond.6.if.end10_crit_edge, label %for.cond.7

for.cond.6.if.end10_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.7:                                       ; preds = %for.cond.6
  %48 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @bcm5461_phy_def, i32 0, i32 1), align 4
  %and.8 = and i32 %48, %or
  %49 = load i32, ptr @bcm5461_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.8, i32 %49)
  %cmp5.8 = icmp eq i32 %and.8, %49
  br i1 %cmp5.8, label %for.cond.7.if.end10_crit_edge, label %for.cond.8

for.cond.7.if.end10_crit_edge:                    ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.8:                                       ; preds = %for.cond.7
  %50 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @bcm5462V_phy_def, i32 0, i32 1), align 4
  %and.9 = and i32 %50, %or
  %51 = load i32, ptr @bcm5462V_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.9, i32 %51)
  %cmp5.9 = icmp eq i32 %and.9, %51
  br i1 %cmp5.9, label %for.cond.8.if.end10_crit_edge, label %for.cond.9

for.cond.8.if.end10_crit_edge:                    ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.9:                                       ; preds = %for.cond.8
  %52 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @marvell88e1101v1_phy_def, i32 0, i32 1), align 4
  %and.10 = and i32 %52, %or
  %53 = load i32, ptr @marvell88e1101v1_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.10, i32 %53)
  %cmp5.10 = icmp eq i32 %and.10, %53
  br i1 %cmp5.10, label %for.cond.9.if.end10_crit_edge, label %for.cond.10

for.cond.9.if.end10_crit_edge:                    ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.10:                                      ; preds = %for.cond.9
  %54 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @marvell88e1101v2_phy_def, i32 0, i32 1), align 4
  %and.11 = and i32 %54, %or
  %55 = load i32, ptr @marvell88e1101v2_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.11, i32 %55)
  %cmp5.11 = icmp eq i32 %and.11, %55
  br i1 %cmp5.11, label %for.cond.10.if.end10_crit_edge, label %for.cond.11

for.cond.10.if.end10_crit_edge:                   ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.11:                                      ; preds = %for.cond.10
  %56 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @marvell88e1111_phy_def, i32 0, i32 1), align 4
  %and.12 = and i32 %56, %or
  %57 = load i32, ptr @marvell88e1111_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.12, i32 %57)
  %cmp5.12 = icmp eq i32 %and.12, %57
  br i1 %cmp5.12, label %for.cond.11.if.end10_crit_edge, label %for.cond.12

for.cond.11.if.end10_crit_edge:                   ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.12:                                      ; preds = %for.cond.11
  %58 = load i32, ptr getelementptr inbounds (%struct.mii_phy_def, ptr @genmii_phy_def, i32 0, i32 1), align 4
  %and.13 = and i32 %58, %or
  %59 = load i32, ptr @genmii_phy_def, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.13, i32 %59)
  %cmp5.13 = icmp eq i32 %and.13, %59
  br i1 %cmp5.13, label %for.cond.12.if.end10_crit_edge, label %for.cond.12.fail_crit_edge

for.cond.12.fail_crit_edge:                       ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

for.cond.12.if.end10_crit_edge:                   ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.end10:                                         ; preds = %for.cond.12.if.end10_crit_edge, %for.cond.11.if.end10_crit_edge, %for.cond.10.if.end10_crit_edge, %for.cond.9.if.end10_crit_edge, %for.cond.8.if.end10_crit_edge, %for.cond.7.if.end10_crit_edge, %for.cond.6.if.end10_crit_edge, %for.cond.5.if.end10_crit_edge, %for.cond.4.if.end10_crit_edge, %for.cond.3.if.end10_crit_edge, %for.cond.2.if.end10_crit_edge, %for.cond.1.if.end10_crit_edge, %for.cond.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %.lcssa = phi ptr [ @bcm5201_phy_def, %if.end.if.end10_crit_edge ], [ @bcm5221_phy_def, %for.cond.if.end10_crit_edge ], [ @bcm5241_phy_def, %for.cond.1.if.end10_crit_edge ], [ @bcm5400_phy_def, %for.cond.2.if.end10_crit_edge ], [ @bcm5401_phy_def, %for.cond.3.if.end10_crit_edge ], [ @bcm5411_phy_def, %for.cond.4.if.end10_crit_edge ], [ @bcm5421_phy_def, %for.cond.5.if.end10_crit_edge ], [ @bcm5421k2_phy_def, %for.cond.6.if.end10_crit_edge ], [ @bcm5461_phy_def, %for.cond.7.if.end10_crit_edge ], [ @bcm5462V_phy_def, %for.cond.8.if.end10_crit_edge ], [ @marvell88e1101v1_phy_def, %for.cond.9.if.end10_crit_edge ], [ @marvell88e1101v2_phy_def, %for.cond.10.if.end10_crit_edge ], [ @marvell88e1111_phy_def, %for.cond.11.if.end10_crit_edge ], [ @genmii_phy_def, %for.cond.12.if.end10_crit_edge ]
  %60 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %.lcssa, ptr %phy, align 4
  br label %cleanup

fail:                                             ; preds = %for.cond.12.fail_crit_edge, %reset_one_mii_phy.exit.fail_crit_edge, %if.end.i.fail_crit_edge
  %speed = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %61 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %62 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %63 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %pause, align 4
  %advertising = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 1
  %64 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %advertising, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end10
  %retval.0 = phi i32 [ -19, %fail ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5201_init(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 30) #3
  %conv2 = and i32 %call.i, 65527
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 30, i32 noundef %conv2) #3
  %12 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  tail call void %13(ptr noundef %15, i32 noundef %17, i32 noundef 26, i32 noundef 0) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5201_suspend(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  tail call void %1(ptr noundef %3, i32 noundef %5, i32 noundef 26, i32 noundef 0) #3
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 30, i32 noundef 8) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genmii_setup_aneg(ptr nocapture noundef %phy, i32 noundef %advertise) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %autoneg, align 4
  %speed = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pause, align 4
  %advertising = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 1
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %advertise, ptr %advertising, align 4
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %5 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %9 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %6(ptr noundef %8, i32 noundef %10, i32 noundef 4) #3
  %conv2 = and i32 %call.i, 64543
  %11 = shl i32 %advertise, 5
  %12 = and i32 %11, 480
  %13 = or i32 %12, %conv2
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %14 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdio_write.i, align 4
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mii_id.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %19, i32 noundef 4, i32 noundef %13) #3
  %20 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdio_read.i, align 4
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mii_id.i, align 4
  %call.i57 = tail call i32 %21(ptr noundef %23, i32 noundef %25, i32 noundef 0) #3
  %conv32 = and i32 %call.i57, 60927
  %conv33 = or i32 %conv32, 4608
  %26 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdio_write.i, align 4
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mii_id.i, align 4
  tail call void %27(ptr noundef %29, i32 noundef %31, i32 noundef 0, i32 noundef %conv33) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genmii_setup_forced(ptr nocapture noundef %phy, i32 noundef %speed, i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoneg, align 4
  %speed1 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %1 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %speed, ptr %speed1, align 4
  %duplex = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %fd, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pause, align 4
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %4 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %8 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef %9, i32 noundef 0) #3
  %10 = trunc i32 %call.i to i16
  %conv3 = and i16 %10, -12545
  %11 = or i16 %conv3, -32768
  %or = zext i16 %11 to i32
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %12 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  tail call void %13(ptr noundef %15, i32 noundef %17, i32 noundef 0, i32 noundef %or) #3
  %18 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %entry.cleanup_crit_edge [
    i32 10, label %entry.sw.epilog_crit_edge
    i32 100, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or6 = or i16 %conv3, 8192
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ctl.0 = phi i16 [ %or6, %sw.bb ], [ %conv3, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fd)
  %cmp = icmp eq i32 %fd, 1
  %19 = or i16 %ctl.0, 256
  %spec.select = select i1 %cmp, i16 %19, i16 %ctl.0
  %conv13 = zext i16 %spec.select to i32
  %20 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdio_write.i, align 4
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mii_id.i, align 4
  tail call void %21(ptr noundef %23, i32 noundef %25, i32 noundef 0, i32 noundef %conv13) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genmii_poll_link(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1) #3
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  %call.i15 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 1) #3
  %and = and i32 %call.i15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %autoneg = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %12 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %and5 = and i32 %call.i15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp ne i32 %and5, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  %spec.select = zext i1 %or.cond to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genmii_read_link(ptr nocapture noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %2 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %6 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %3(ptr noundef %5, i32 noundef %7, i32 noundef 5) #3
  %and = and i32 %call.i, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  %spec.select = zext i1 %tobool2.not to i32
  %8 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %and6 = and i32 %call.i, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %.sink20 = select i1 %tobool7.not, i32 10, i32 100
  %10 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink20, ptr %10, align 4
  %pause = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %12 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pause, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then, %entry.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5221_init(ptr noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 31) #3
  %conv1 = and i32 %call.i, 65407
  %or = or i32 %conv1, 128
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 31, i32 noundef %or) #3
  %12 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_read.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  %call.i28 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 27) #3
  %conv4 = and i32 %call.i28, 65503
  %or5 = or i32 %conv4, 32
  %18 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii_id.i, align 4
  tail call void %19(ptr noundef %21, i32 noundef %23, i32 noundef 27, i32 noundef %or5) #3
  %24 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_read.i, align 4
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mii_id.i, align 4
  %call.i35 = tail call i32 %25(ptr noundef %27, i32 noundef %29, i32 noundef 26) #3
  %conv8 = and i32 %call.i35, 65531
  %or9 = or i32 %conv8, 4
  %30 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio_write.i, align 4
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mii_id.i, align 4
  tail call void %31(ptr noundef %33, i32 noundef %35, i32 noundef 26, i32 noundef %or9) #3
  %36 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdio_read.i, align 4
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mii_id.i, align 4
  %call.i42 = tail call i32 %37(ptr noundef %39, i32 noundef %41, i32 noundef 31) #3
  %and = and i32 %call.i42, 65407
  %42 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdio_write.i, align 4
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %46 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mii_id.i, align 4
  tail call void %43(ptr noundef %45, i32 noundef %47, i32 noundef 31, i32 noundef %and) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5221_suspend(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 31) #3
  %conv1 = and i32 %call.i, 65407
  %or = or i32 %conv1, 128
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 31, i32 noundef %or) #3
  %12 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_read.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  %call.i15 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 26) #3
  %conv4 = and i32 %call.i15, 65534
  %or5 = or i32 %conv4, 1
  %18 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii_id.i, align 4
  tail call void %19(ptr noundef %21, i32 noundef %23, i32 noundef 26, i32 noundef %or5) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5241_init(ptr noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 31) #3
  %conv1 = and i32 %call.i, 65407
  %or = or i32 %conv1, 128
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 31, i32 noundef %or) #3
  %12 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_read.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  %call.i28 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 27) #3
  %conv4 = and i32 %call.i28, 65503
  %or5 = or i32 %conv4, 32
  %18 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii_id.i, align 4
  tail call void %19(ptr noundef %21, i32 noundef %23, i32 noundef 27, i32 noundef %or5) #3
  %24 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_read.i, align 4
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mii_id.i, align 4
  %call.i35 = tail call i32 %25(ptr noundef %27, i32 noundef %29, i32 noundef 26) #3
  %and = and i32 %call.i35, 65527
  %30 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio_write.i, align 4
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mii_id.i, align 4
  tail call void %31(ptr noundef %33, i32 noundef %35, i32 noundef 26, i32 noundef %and) #3
  %36 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdio_read.i, align 4
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mii_id.i, align 4
  %call.i42 = tail call i32 %37(ptr noundef %39, i32 noundef %41, i32 noundef 31) #3
  %and12 = and i32 %call.i42, 65407
  %42 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdio_write.i, align 4
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %46 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mii_id.i, align 4
  tail call void %43(ptr noundef %45, i32 noundef %47, i32 noundef 31, i32 noundef %and12) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5241_suspend(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 31) #3
  %conv1 = and i32 %call.i, 65407
  %or = or i32 %conv1, 128
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 31, i32 noundef %or) #3
  %12 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_read.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  %call.i15 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 26) #3
  %conv4 = and i32 %call.i15, 65527
  %or5 = or i32 %conv4, 8
  %18 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii_id.i, align 4
  tail call void %19(ptr noundef %21, i32 noundef %23, i32 noundef 26, i32 noundef %or5) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5400_init(ptr noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 24) #3
  %conv2 = and i32 %call.i, 65531
  %conv3 = or i32 %conv2, 4
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 24, i32 noundef %conv3) #3
  %12 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_read.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  %call.i42 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 9) #3
  %conv8 = and i32 %call.i42, 65023
  %conv9 = or i32 %conv8, 512
  %18 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii_id.i, align 4
  tail call void %19(ptr noundef %21, i32 noundef %23, i32 noundef 9, i32 noundef %conv9) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #3
  %25 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdio_read.i, align 4
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %28, i32 noundef 31, i32 noundef 0) #3
  %29 = and i32 %call.i.i, 29695
  %conv4.i = or i32 %29, 32768
  %30 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio_write.i, align 4
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void %31(ptr noundef %33, i32 noundef 31, i32 noundef 0, i32 noundef %conv4.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 21474800) #3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec49.i = phi i32 [ 9999, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %35 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdio_read.i, align 4
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %call.i38.i = tail call i32 %36(ptr noundef %38, i32 noundef 31, i32 noundef 0) #3
  %and9.i = and i32 %call.i38.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp.i = icmp eq i32 %and9.i, 0
  br i1 %cmp.i, label %while.end.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #3
  %dec.i = add nsw i32 %dec49.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.reset_one_mii_phy.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end.i.reset_one_mii_phy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %reset_one_mii_phy.exit

while.end.i:                                      ; preds = %while.body.i
  %and12.i = and i32 %call.i38.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp ne i32 %and12.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec49.i)
  %cmp14.i = icmp sgt i32 %dec49.i, 0
  %or.cond.i = select i1 %tobool13.not.i, i1 %cmp14.i, i1 false
  br i1 %or.cond.i, label %if.then16.i, label %while.end.i.reset_one_mii_phy.exit_crit_edge

while.end.i.reset_one_mii_phy.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %reset_one_mii_phy.exit

if.then16.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %and18.i = and i32 %call.i38.i, 64511
  %40 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdio_write.i, align 4
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void %41(ptr noundef %43, i32 noundef 31, i32 noundef 0, i32 noundef %and18.i) #3
  br label %reset_one_mii_phy.exit

reset_one_mii_phy.exit:                           ; preds = %if.then16.i, %while.end.i.reset_one_mii_phy.exit_crit_edge, %if.end.i.reset_one_mii_phy.exit_crit_edge
  %44 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdio_read.i, align 4
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %call.i48 = tail call i32 %45(ptr noundef %47, i32 noundef 31, i32 noundef 30) #3
  %conv15 = and i32 %call.i48, 65533
  %conv16 = or i32 %conv15, 2
  %48 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdio_write.i, align 4
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  tail call void %49(ptr noundef %51, i32 noundef 31, i32 noundef 30, i32 noundef %conv16) #3
  %52 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdio_read.i, align 4
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %56 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mii_id.i, align 4
  %call.i54 = tail call i32 %53(ptr noundef %55, i32 noundef %57, i32 noundef 24) #3
  %conv20 = and i32 %call.i54, 65531
  %58 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mdio_write.i, align 4
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  %62 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mii_id.i, align 4
  tail call void %59(ptr noundef %61, i32 noundef %63, i32 noundef 24, i32 noundef %conv20) #3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm5400_suspend(ptr nocapture noundef readnone %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54xx_setup_aneg(ptr noundef %phy, i32 noundef %advertise) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %autoneg, align 4
  %speed = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pause, align 4
  %advertising = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 1
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %advertise, ptr %advertising, align 4
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %5 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %9 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %6(ptr noundef %8, i32 noundef %10, i32 noundef 4) #3
  %conv2 = and i32 %call.i, 64543
  %11 = shl i32 %advertise, 5
  %12 = lshr i32 %advertise, 3
  %13 = and i32 %12, 1024
  %14 = and i32 %12, 2048
  %15 = and i32 %11, 480
  %16 = or i32 %15, %13
  %.masked = or i32 %16, %14
  %conv41 = or i32 %.masked, %conv2
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %17 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdio_write.i, align 4
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mii_id.i, align 4
  tail call void %18(ptr noundef %20, i32 noundef %22, i32 noundef 4, i32 noundef %conv41) #3
  %23 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdio_read.i, align 4
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mii_id.i, align 4
  %call.i103 = tail call i32 %24(ptr noundef %26, i32 noundef %28, i32 noundef 9) #3
  %conv46 = and i32 %call.i103, 64767
  %29 = shl i32 %advertise, 4
  %30 = and i32 %29, 768
  %31 = or i32 %30, %conv46
  %32 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdio_write.i, align 4
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %36 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mii_id.i, align 4
  tail call void %33(ptr noundef %35, i32 noundef %37, i32 noundef 9, i32 noundef %31) #3
  %38 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdio_read.i, align 4
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mii_id.i, align 4
  %call.i110 = tail call i32 %39(ptr noundef %41, i32 noundef %43, i32 noundef 0) #3
  %conv66 = and i32 %call.i110, 60927
  %conv67 = or i32 %conv66, 4608
  %44 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdio_write.i, align 4
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %48 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mii_id.i, align 4
  tail call void %45(ptr noundef %47, i32 noundef %49, i32 noundef 0, i32 noundef %conv67) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54xx_setup_forced(ptr nocapture noundef %phy, i32 noundef %speed, i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoneg, align 4
  %speed1 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %1 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %speed, ptr %speed1, align 4
  %duplex = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %fd, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pause, align 4
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %4 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %8 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef %9, i32 noundef 0) #3
  %10 = trunc i32 %call.i to i16
  %conv3 = and i16 %10, -12609
  %11 = or i16 %conv3, -32768
  %or = zext i16 %11 to i32
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %12 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  tail call void %13(ptr noundef %15, i32 noundef %17, i32 noundef 0, i32 noundef %or) #3
  %18 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %speed, label %entry.sw.epilog_crit_edge [
    i32 1000, label %sw.bb8
    i32 100, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or6 = or i16 %conv3, 8192
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or10 = or i16 %conv3, 64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb, %entry.sw.epilog_crit_edge
  %ctl.0 = phi i16 [ %conv3, %entry.sw.epilog_crit_edge ], [ %or6, %sw.bb ], [ %or10, %sw.bb8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fd)
  %cmp = icmp eq i32 %fd, 1
  %19 = or i16 %ctl.0, 256
  %spec.select = select i1 %cmp, i16 %19, i16 %ctl.0
  %conv16 = zext i16 %spec.select to i32
  %20 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdio_write.i, align 4
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mii_id.i, align 4
  tail call void %21(ptr noundef %23, i32 noundef %25, i32 noundef 0, i32 noundef %conv16) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54xx_read_link(ptr nocapture noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %2 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %6 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %3(ptr noundef %5, i32 noundef %7, i32 noundef 25) #3
  %and = lshr i32 %call.i, 8
  %8 = and i32 %and, 7
  %arrayidx = getelementptr [8 x [3 x i32]], ptr @phy_BCM5400_link_table, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp ne i32 %10, 0
  %cond = zext i1 %tobool3.not to i32
  %duplex = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %duplex, align 4
  %12 = or i32 %and, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %12)
  %13 = icmp ult i32 %12, -2
  %14 = add nsw i32 %8, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %14)
  %tobool9.not = icmp ult i32 %14, -3
  %cond10 = select i1 %tobool9.not, i32 10, i32 100
  %cond11 = select i1 %13, i32 %cond10, i32 1000
  %speed = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond11, ptr %speed, align 4
  %16 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_read.i, align 4
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mii_id.i, align 4
  %call.i32 = tail call i32 %17(ptr noundef %19, i32 noundef %21, i32 noundef 5) #3
  %22 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp eq i32 %23, 1
  %24 = lshr i32 %call.i32, 10
  %and17.lobit = and i32 %24, 1
  %25 = select i1 %cmp, i32 %and17.lobit, i32 0
  %pause = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %26 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %pause, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5401_init(ptr noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 3) #3
  %and = and i32 %call.i, 15
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and, label %entry.if.end_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 3, label %entry.if.then_crit_edge89
  ]

entry.if.then_crit_edge89:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge89
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %7 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_write.i, align 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mii_id.i, align 4
  tail call void %8(ptr noundef %10, i32 noundef %12, i32 noundef 24, i32 noundef 3104) #3
  %13 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdio_write.i, align 4
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mii_id.i, align 4
  tail call void %14(ptr noundef %16, i32 noundef %18, i32 noundef 23, i32 noundef 18) #3
  %19 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdio_write.i, align 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mii_id.i, align 4
  tail call void %20(ptr noundef %22, i32 noundef %24, i32 noundef 21, i32 noundef 6148) #3
  %25 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdio_write.i, align 4
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mii_id.i, align 4
  tail call void %26(ptr noundef %28, i32 noundef %30, i32 noundef 23, i32 noundef 19) #3
  %31 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdio_write.i, align 4
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %35 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mii_id.i, align 4
  tail call void %32(ptr noundef %34, i32 noundef %36, i32 noundef 21, i32 noundef 4612) #3
  %37 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdio_write.i, align 4
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %41 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mii_id.i, align 4
  tail call void %38(ptr noundef %40, i32 noundef %42, i32 noundef 23, i32 noundef 32774) #3
  %43 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdio_write.i, align 4
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %47 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mii_id.i, align 4
  tail call void %44(ptr noundef %46, i32 noundef %48, i32 noundef 21, i32 noundef 306) #3
  %49 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mdio_write.i, align 4
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %53 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mii_id.i, align 4
  tail call void %50(ptr noundef %52, i32 noundef %54, i32 noundef 23, i32 noundef 32774) #3
  %55 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mdio_write.i, align 4
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  %59 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mii_id.i, align 4
  tail call void %56(ptr noundef %58, i32 noundef %60, i32 noundef 21, i32 noundef 562) #3
  %61 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mdio_write.i, align 4
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  %65 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mii_id.i, align 4
  tail call void %62(ptr noundef %64, i32 noundef %66, i32 noundef 23, i32 noundef 8223) #3
  %67 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mdio_write.i, align 4
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  %71 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mii_id.i, align 4
  tail call void %68(ptr noundef %70, i32 noundef %72, i32 noundef 21, i32 noundef 2592) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %73 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mdio_read.i, align 4
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  %77 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mii_id.i, align 4
  %call.i68 = tail call i32 %74(ptr noundef %76, i32 noundef %78, i32 noundef 9) #3
  %conv4 = and i32 %call.i68, 65023
  %conv5 = or i32 %conv4, 512
  %mdio_write.i69 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %79 = ptrtoint ptr %mdio_write.i69 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mdio_write.i69, align 4
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  %83 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mii_id.i, align 4
  tail call void %80(ptr noundef %82, i32 noundef %84, i32 noundef 9, i32 noundef %conv5) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 2147480) #3
  %86 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mdio_read.i, align 4
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 %87(ptr noundef %89, i32 noundef 31, i32 noundef 0) #3
  %90 = and i32 %call.i.i, 29695
  %conv4.i = or i32 %90, 32768
  %91 = ptrtoint ptr %mdio_write.i69 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mdio_write.i69, align 4
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 4
  tail call void %92(ptr noundef %94, i32 noundef 31, i32 noundef 0, i32 noundef %conv4.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 21474800) #3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end
  %dec49.i = phi i32 [ 9999, %if.end ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %96 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mdio_read.i, align 4
  %98 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i, align 4
  %call.i38.i = tail call i32 %97(ptr noundef %99, i32 noundef 31, i32 noundef 0) #3
  %and9.i = and i32 %call.i38.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp.i = icmp eq i32 %and9.i, 0
  br i1 %cmp.i, label %while.end.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 2147480) #3
  %dec.i = add nsw i32 %dec49.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.reset_one_mii_phy.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end.i.reset_one_mii_phy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %reset_one_mii_phy.exit

while.end.i:                                      ; preds = %while.body.i
  %and12.i = and i32 %call.i38.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp ne i32 %and12.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec49.i)
  %cmp14.i = icmp sgt i32 %dec49.i, 0
  %or.cond.i = select i1 %tobool13.not.i, i1 %cmp14.i, i1 false
  br i1 %or.cond.i, label %if.then16.i, label %while.end.i.reset_one_mii_phy.exit_crit_edge

while.end.i.reset_one_mii_phy.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %reset_one_mii_phy.exit

if.then16.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %and18.i = and i32 %call.i38.i, 64511
  %101 = ptrtoint ptr %mdio_write.i69 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mdio_write.i69, align 4
  %103 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i, align 4
  tail call void %102(ptr noundef %104, i32 noundef 31, i32 noundef 0, i32 noundef %and18.i) #3
  br label %reset_one_mii_phy.exit

reset_one_mii_phy.exit:                           ; preds = %if.then16.i, %while.end.i.reset_one_mii_phy.exit_crit_edge, %if.end.i.reset_one_mii_phy.exit_crit_edge
  %105 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mdio_read.i, align 4
  %107 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i, align 4
  %call.i74 = tail call i32 %106(ptr noundef %108, i32 noundef 31, i32 noundef 30) #3
  %conv11 = and i32 %call.i74, 65533
  %conv12 = or i32 %conv11, 2
  %109 = ptrtoint ptr %mdio_write.i69 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mdio_write.i69, align 4
  %111 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i, align 4
  tail call void %110(ptr noundef %112, i32 noundef 31, i32 noundef 30, i32 noundef %conv12) #3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm5401_suspend(ptr nocapture noundef readnone %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5411_init(ptr noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  tail call void %1(ptr noundef %3, i32 noundef %5, i32 noundef 28, i32 noundef 35875) #3
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 28, i32 noundef 36003) #3
  %12 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  tail call void %13(ptr noundef %15, i32 noundef %17, i32 noundef 28, i32 noundef 35875) #3
  %18 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii_id.i, align 4
  tail call void %19(ptr noundef %21, i32 noundef %23, i32 noundef 0, i32 noundef 32768) #3
  %24 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_write.i, align 4
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mii_id.i, align 4
  tail call void %25(ptr noundef %27, i32 noundef %29, i32 noundef 0, i32 noundef 4928) #3
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %30 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio_read.i, align 4
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %31(ptr noundef %33, i32 noundef %35, i32 noundef 9) #3
  %conv2 = and i32 %call.i, 65023
  %conv3 = or i32 %conv2, 512
  %36 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdio_write.i, align 4
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mii_id.i, align 4
  tail call void %37(ptr noundef %39, i32 noundef %41, i32 noundef 9, i32 noundef %conv3) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #3
  %43 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdio_read.i, align 4
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 %44(ptr noundef %46, i32 noundef 31, i32 noundef 0) #3
  %47 = and i32 %call.i.i, 29695
  %conv4.i = or i32 %47, 32768
  %48 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdio_write.i, align 4
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  tail call void %49(ptr noundef %51, i32 noundef 31, i32 noundef 0, i32 noundef %conv4.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 21474800) #3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec49.i = phi i32 [ 9999, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %53 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mdio_read.i, align 4
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  %call.i38.i = tail call i32 %54(ptr noundef %56, i32 noundef 31, i32 noundef 0) #3
  %and9.i = and i32 %call.i38.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp.i = icmp eq i32 %and9.i, 0
  br i1 %cmp.i, label %while.end.i, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #3
  %dec.i = add nsw i32 %dec49.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.reset_one_mii_phy.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end.i.reset_one_mii_phy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %reset_one_mii_phy.exit

while.end.i:                                      ; preds = %while.body.i
  %and12.i = and i32 %call.i38.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp ne i32 %and12.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec49.i)
  %cmp14.i = icmp sgt i32 %dec49.i, 0
  %or.cond.i = select i1 %tobool13.not.i, i1 %cmp14.i, i1 false
  br i1 %or.cond.i, label %if.then16.i, label %while.end.i.reset_one_mii_phy.exit_crit_edge

while.end.i.reset_one_mii_phy.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %reset_one_mii_phy.exit

if.then16.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %and18.i = and i32 %call.i38.i, 64511
  %58 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mdio_write.i, align 4
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  tail call void %59(ptr noundef %61, i32 noundef 31, i32 noundef 0, i32 noundef %and18.i) #3
  br label %reset_one_mii_phy.exit

reset_one_mii_phy.exit:                           ; preds = %if.then16.i, %while.end.i.reset_one_mii_phy.exit_crit_edge, %if.end.i.reset_one_mii_phy.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_suspend(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  tail call void %1(ptr noundef %3, i32 noundef %5, i32 noundef 0, i32 noundef 2048) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5421_init(ptr noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 2) #3
  %shl = shl i32 %call.i, 16
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  %call.i35 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 3) #3
  %or = or i32 %call.i35, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 2121952, i32 %or)
  %cmp = icmp eq i32 %or, 2121952
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %12 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  tail call void %13(ptr noundef %15, i32 noundef %17, i32 noundef 24, i32 noundef 4103) #3
  %18 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_read.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii_id.i, align 4
  %call.i41 = tail call i32 %19(ptr noundef %21, i32 noundef %23, i32 noundef 24) #3
  %conv3 = and i32 %call.i41, 64511
  %or4 = or i32 %conv3, 1024
  %24 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_write.i, align 4
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mii_id.i, align 4
  tail call void %25(ptr noundef %27, i32 noundef %29, i32 noundef 24, i32 noundef %or4) #3
  %30 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio_write.i, align 4
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mii_id.i, align 4
  tail call void %31(ptr noundef %33, i32 noundef %35, i32 noundef 24, i32 noundef 7) #3
  %36 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdio_read.i, align 4
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mii_id.i, align 4
  %call.i51 = tail call i32 %37(ptr noundef %39, i32 noundef %41, i32 noundef 24) #3
  %conv7 = and i32 %call.i51, 63487
  %or8 = or i32 %conv7, 2048
  %42 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdio_write.i, align 4
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %46 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mii_id.i, align 4
  tail call void %43(ptr noundef %45, i32 noundef %47, i32 noundef 24, i32 noundef %or8) #3
  %48 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdio_write.i, align 4
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %52 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mii_id.i, align 4
  tail call void %49(ptr noundef %51, i32 noundef %53, i32 noundef 23, i32 noundef 10) #3
  %54 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdio_read.i, align 4
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %58 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mii_id.i, align 4
  %call.i61 = tail call i32 %55(ptr noundef %57, i32 noundef %59, i32 noundef 21) #3
  %conv11 = and i32 %call.i61, 65023
  %or12 = or i32 %conv11, 512
  %60 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mdio_write.i, align 4
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %64 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mii_id.i, align 4
  tail call void %61(ptr noundef %63, i32 noundef %65, i32 noundef 21, i32 noundef %or12) #3
  br label %if.end16

if.end:                                           ; preds = %entry
  %and = and i32 %or, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2122464, i32 %and)
  %cmp13 = icmp eq i32 %and, 2122464
  br i1 %cmp13, label %if.then15, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %mdio_write.i65 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %66 = ptrtoint ptr %mdio_write.i65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mdio_write.i65, align 4
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  %70 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mii_id.i, align 4
  tail call void %67(ptr noundef %69, i32 noundef %71, i32 noundef 4, i32 noundef 481) #3
  %72 = ptrtoint ptr %mdio_write.i65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mdio_write.i65, align 4
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %76 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mii_id.i, align 4
  tail call void %73(ptr noundef %75, i32 noundef %77, i32 noundef 9, i32 noundef 768) #3
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge, %if.end.thread
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5421_poll_link(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  tail call void %1(ptr noundef %3, i32 noundef %5, i32 noundef 28, i32 noundef 4096) #3
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 28) #3
  %12 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdio_read.i, align 4
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mii_id.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %16, i32 noundef %18, i32 noundef 1) #3
  %19 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdio_read.i, align 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mii_id.i, align 4
  %call.i15.i = tail call i32 %20(ptr noundef %22, i32 noundef %24, i32 noundef 1) #3
  %and.i = and i32 %call.i15.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %autoneg.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %25 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %autoneg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %and5.i = and i32 %call.i15.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp ne i32 %and5.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool6.not.i
  %spec.select.i = zext i1 %or.cond.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdio_write.i, align 4
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %31 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mii_id.i, align 4
  tail call void %28(ptr noundef %30, i32 noundef %32, i32 noundef 28, i32 noundef 8192) #3
  %33 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdio_read.i, align 4
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %37 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mii_id.i, align 4
  %call.i19 = tail call i32 %34(ptr noundef %36, i32 noundef %38, i32 noundef 28) #3
  %and3 = lshr i32 %call.i19, 5
  %and3.lobit = and i32 %and3, 1
  %39 = xor i32 %and3.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %if.end ], [ 0, %if.then.cleanup_crit_edge ], [ %spec.select.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5421_read_link(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  tail call void %1(ptr noundef %3, i32 noundef %5, i32 noundef 28, i32 noundef 4096) #3
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 28) #3
  %12 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %autoneg.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %13 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %autoneg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_read.i, align 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mii_id.i, align 4
  %call.i.i = tail call i32 %16(ptr noundef %18, i32 noundef %20, i32 noundef 25) #3
  %and.i = lshr i32 %call.i.i, 8
  %21 = and i32 %and.i, 7
  %arrayidx.i = getelementptr [8 x [3 x i32]], ptr @phy_BCM5400_link_table, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp ne i32 %23, 0
  %cond.i = zext i1 %tobool3.not.i to i32
  %duplex.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %24 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i, ptr %duplex.i, align 4
  %25 = or i32 %and.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %25)
  %26 = icmp ult i32 %25, -2
  %27 = add nsw i32 %21, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %27)
  %tobool9.not.i = icmp ult i32 %27, -3
  %cond10.i = select i1 %tobool9.not.i, i32 10, i32 100
  %cond11.i = select i1 %26, i32 %cond10.i, i32 1000
  %speed.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %28 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond11.i, ptr %speed.i, align 4
  %29 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdio_read.i, align 4
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mii_id.i, align 4
  %call.i32.i = tail call i32 %30(ptr noundef %32, i32 noundef %34, i32 noundef 5) #3
  %35 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i = icmp eq i32 %36, 1
  %37 = lshr i32 %call.i32.i, 10
  %and17.lobit.i = and i32 %37, 1
  %38 = select i1 %cmp.i, i32 %and17.lobit.i, i32 0
  %pause.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %39 = ptrtoint ptr %pause.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %pause.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %40 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1000, ptr %speed, align 4
  %41 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdio_write.i, align 4
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  %45 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mii_id.i, align 4
  tail call void %42(ptr noundef %44, i32 noundef %46, i32 noundef 28, i32 noundef 8192) #3
  %47 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdio_read.i, align 4
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %51 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mii_id.i, align 4
  %call.i26 = tail call i32 %48(ptr noundef %50, i32 noundef %52, i32 noundef 28) #3
  %53 = and i32 %call.i26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not = icmp eq i32 %53, 0
  br i1 %tobool.not, label %if.else, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %duplex6 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %54 = ptrtoint ptr %duplex6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %duplex6, align 4
  %or7 = or i32 %55, 1
  store i32 %or7, ptr %duplex6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5421_enable_fiber(ptr nocapture noundef %phy, i32 noundef %autoneg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  tail call void %1(ptr noundef %3, i32 noundef %5, i32 noundef 28, i32 noundef 36896) #3
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 28, i32 noundef 37983) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %autoneg)
  %tobool.not = icmp eq i32 %autoneg, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  tail call void %13(ptr noundef %15, i32 noundef %17, i32 noundef 28, i32 noundef 64513) #3
  %18 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii_id.i, align 4
  tail call void %19(ptr noundef %21, i32 noundef %23, i32 noundef 11, i32 noundef 4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %autoneg1 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %24 = ptrtoint ptr %autoneg1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %autoneg, ptr %autoneg1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5461_poll_link(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  tail call void %1(ptr noundef %3, i32 noundef %5, i32 noundef 28, i32 noundef 31744) #3
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 28) #3
  %12 = and i32 %call.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdio_read.i, align 4
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mii_id.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %16, i32 noundef %18, i32 noundef 1) #3
  %19 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdio_read.i, align 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mii_id.i, align 4
  %call.i15.i = tail call i32 %20(ptr noundef %22, i32 noundef %24, i32 noundef 1) #3
  %and.i = and i32 %call.i15.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %autoneg.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %25 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %autoneg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %and5.i = and i32 %call.i15.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp ne i32 %and5.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool6.not.i
  %spec.select.i = zext i1 %or.cond.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdio_write.i, align 4
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %31 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mii_id.i, align 4
  tail call void %28(ptr noundef %30, i32 noundef %32, i32 noundef 28, i32 noundef 28672) #3
  %33 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdio_read.i, align 4
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %37 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mii_id.i, align 4
  %call.i19 = tail call i32 %34(ptr noundef %36, i32 noundef %38, i32 noundef 28) #3
  %and3 = lshr i32 %call.i19, 2
  %and3.lobit = and i32 %and3, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %and3.lobit, %if.end ], [ 0, %if.then.cleanup_crit_edge ], [ %spec.select.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5461_read_link(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  tail call void %1(ptr noundef %3, i32 noundef %5, i32 noundef 28, i32 noundef 31744) #3
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 28) #3
  %12 = and i32 %call.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %autoneg.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %13 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %autoneg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_read.i, align 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mii_id.i, align 4
  %call.i.i = tail call i32 %16(ptr noundef %18, i32 noundef %20, i32 noundef 25) #3
  %and.i = lshr i32 %call.i.i, 8
  %21 = and i32 %and.i, 7
  %arrayidx.i = getelementptr [8 x [3 x i32]], ptr @phy_BCM5400_link_table, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp ne i32 %23, 0
  %cond.i = zext i1 %tobool3.not.i to i32
  %duplex.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %24 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i, ptr %duplex.i, align 4
  %25 = or i32 %and.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %25)
  %26 = icmp ult i32 %25, -2
  %27 = add nsw i32 %21, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %27)
  %tobool9.not.i = icmp ult i32 %27, -3
  %cond10.i = select i1 %tobool9.not.i, i32 10, i32 100
  %cond11.i = select i1 %26, i32 %cond10.i, i32 1000
  %speed.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %28 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond11.i, ptr %speed.i, align 4
  %29 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdio_read.i, align 4
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mii_id.i, align 4
  %call.i32.i = tail call i32 %30(ptr noundef %32, i32 noundef %34, i32 noundef 5) #3
  %35 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i = icmp eq i32 %36, 1
  %37 = lshr i32 %call.i32.i, 10
  %and17.lobit.i = and i32 %37, 1
  %38 = select i1 %cmp.i, i32 %and17.lobit.i, i32 0
  %pause.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %39 = ptrtoint ptr %pause.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %pause.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %40 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1000, ptr %speed, align 4
  %41 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdio_write.i, align 4
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  %45 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mii_id.i, align 4
  tail call void %42(ptr noundef %44, i32 noundef %46, i32 noundef 28, i32 noundef 28672) #3
  %47 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdio_read.i, align 4
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %51 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mii_id.i, align 4
  %call.i25 = tail call i32 %48(ptr noundef %50, i32 noundef %52, i32 noundef 28) #3
  %and3 = and i32 %call.i25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %duplex = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %53 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %duplex, align 4
  %or = or i32 %54, 1
  store i32 %or, ptr %duplex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5461_enable_fiber(ptr nocapture noundef %phy, i32 noundef %autoneg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  tail call void %1(ptr noundef %3, i32 noundef %5, i32 noundef 28, i32 noundef 64523) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %autoneg)
  %tobool.not = icmp eq i32 %autoneg, 0
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 4, i32 noundef 480) #3
  %12 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  tail call void %13(ptr noundef %15, i32 noundef %17, i32 noundef 0, i32 noundef 4416) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 0, i32 noundef 320) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %autoneg1 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %18 = ptrtoint ptr %autoneg1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %autoneg, ptr %autoneg1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_setup_aneg(ptr noundef %phy, i32 noundef %advertise) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %autoneg, align 4
  %speed = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pause, align 4
  %advertising = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 1
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %advertise, ptr %advertising, align 4
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %5 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %9 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %6(ptr noundef %8, i32 noundef %10, i32 noundef 4) #3
  %conv2 = and i32 %call.i, 64543
  %11 = shl i32 %advertise, 5
  %12 = lshr i32 %advertise, 3
  %13 = and i32 %12, 1024
  %14 = and i32 %12, 2048
  %15 = and i32 %11, 480
  %16 = or i32 %15, %13
  %.masked = or i32 %16, %14
  %conv41 = or i32 %.masked, %conv2
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %17 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdio_write.i, align 4
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mii_id.i, align 4
  tail call void %18(ptr noundef %20, i32 noundef %22, i32 noundef 4, i32 noundef %conv41) #3
  %23 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdio_read.i, align 4
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mii_id.i, align 4
  %call.i107 = tail call i32 %24(ptr noundef %26, i32 noundef %28, i32 noundef 16) #3
  %29 = and i32 %call.i107, 64703
  %and50 = and i32 %advertise, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %adv.6.v = select i1 %tobool51.not, i32 64, i32 320
  %30 = shl i32 %advertise, 4
  %31 = and i32 %30, 512
  %adv.6 = or i32 %adv.6.v, %31
  %32 = or i32 %adv.6, %29
  %33 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdio_write.i, align 4
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %37 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mii_id.i, align 4
  tail call void %34(ptr noundef %36, i32 noundef %38, i32 noundef 9, i32 noundef %32) #3
  %39 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdio_read.i, align 4
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %43 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mii_id.i, align 4
  %call.i114 = tail call i32 %40(ptr noundef %42, i32 noundef %44, i32 noundef 0) #3
  %conv69 = and i32 %call.i114, 60927
  %conv70 = or i32 %conv69, 4608
  %45 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mdio_write.i, align 4
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %49 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mii_id.i, align 4
  tail call void %46(ptr noundef %48, i32 noundef %50, i32 noundef 0, i32 noundef %conv70) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_setup_forced(ptr nocapture noundef %phy, i32 noundef %speed, i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoneg, align 4
  %speed1 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %1 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %speed, ptr %speed1, align 4
  %duplex = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %fd, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pause, align 4
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %4 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %8 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef %9, i32 noundef 0) #3
  %10 = trunc i32 %call.i to i16
  %11 = and i16 %10, 20159
  %conv5 = or i16 %11, -32768
  %12 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %speed, label %entry.sw.epilog_crit_edge [
    i32 1000, label %sw.bb9
    i32 100, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = or i16 %11, -24576
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %14 = or i16 %11, -32704
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %entry.sw.epilog_crit_edge
  %ctl.0 = phi i16 [ %conv5, %entry.sw.epilog_crit_edge ], [ %13, %sw.bb ], [ %14, %sw.bb9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fd)
  %cmp = icmp eq i32 %fd, 1
  %15 = or i16 %ctl.0, 256
  %spec.select = select i1 %cmp, i16 %15, i16 %ctl.0
  %16 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_read.i, align 4
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mii_id.i, align 4
  %call.i54 = tail call i32 %17(ptr noundef %19, i32 noundef %21, i32 noundef 16) #3
  %conv21 = and i32 %call.i54, 64671
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed)
  %cmp22 = icmp eq i32 %speed, 1000
  %cond = select i1 %cmp, i32 512, i32 256
  %or28 = select i1 %cmp22, i32 %cond, i32 0
  %ctl2.0 = or i32 %conv21, %or28
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %22 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdio_write.i, align 4
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %26 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mii_id.i, align 4
  tail call void %23(ptr noundef %25, i32 noundef %27, i32 noundef 9, i32 noundef %ctl2.0) #3
  %conv32 = zext i16 %spec.select to i32
  %28 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdio_write.i, align 4
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %32 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mii_id.i, align 4
  tail call void %29(ptr noundef %31, i32 noundef %33, i32 noundef 0, i32 noundef %conv32) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_read_link(ptr nocapture noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %2 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %6 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %3(ptr noundef %5, i32 noundef %7, i32 noundef 17) #3
  %and = and i32 %call.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and5 = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %speed = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000, ptr %speed, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  %and9 = and i32 %call.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %speed14 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 4
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %speed14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %speed14, align 4
  br label %if.end16

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %speed14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %speed14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11, %if.then7
  %and18 = lshr i32 %call.i, 13
  %and18.lobit = and i32 %and18, 1
  %11 = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and18.lobit, ptr %11, align 4
  %and26 = and i32 %call.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and26)
  %cmp28 = icmp eq i32 %and26, 12
  %conv29 = zext i1 %cmp28 to i32
  %pause = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 6
  %13 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv29, ptr %pause, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then.cleanup_crit_edge ], [ 0, %if.end16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell88e1111_init(ptr noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_read.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 7
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %mii_id.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_id.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 3) #3
  %conv = and i32 %call.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mdio_write.i = getelementptr inbounds %struct.mii_phy, ptr %phy, i32 0, i32 9
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii_id.i, align 4
  tail call void %7(ptr noundef %9, i32 noundef %11, i32 noundef 29, i32 noundef 10) #3
  %12 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii_id.i, align 4
  tail call void %13(ptr noundef %15, i32 noundef %17, i32 noundef 30, i32 noundef 2081) #3
  %18 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii_id.i, align 4
  tail call void %19(ptr noundef %21, i32 noundef %23, i32 noundef 29, i32 noundef 6) #3
  %24 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_write.i, align 4
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mii_id.i, align 4
  tail call void %25(ptr noundef %27, i32 noundef %29, i32 noundef 30, i32 noundef 34304) #3
  %30 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio_write.i, align 4
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mii_id.i, align 4
  tail call void %31(ptr noundef %33, i32 noundef %35, i32 noundef 29, i32 noundef 11) #3
  %36 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdio_write.i, align 4
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mii_id.i, align 4
  tail call void %37(ptr noundef %39, i32 noundef %41, i32 noundef 30, i32 noundef 256) #3
  %42 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdio_write.i, align 4
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %46 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mii_id.i, align 4
  tail call void %43(ptr noundef %45, i32 noundef %47, i32 noundef 29, i32 noundef 4) #3
  %48 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdio_write.i, align 4
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %52 = ptrtoint ptr %mii_id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mii_id.i, align 4
  tail call void %49(ptr noundef %51, i32 noundef %53, i32 noundef 30, i32 noundef 18512) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/sungem_phy.c", i32 1179, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sungem_phy_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sungem_phy_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_sungem_phy_probe, !7, !"__ksymtab_sungem_phy_probe", i1 false, i1 false}
!7 = !{!"../drivers/net/sungem_phy.c", i32 1199, i32 1}
!8 = !{ptr @__UNIQUE_ID_file339, !9, !"__UNIQUE_ID_file339", i1 false, i1 false}
!9 = !{!"../drivers/net/sungem_phy.c", i32 1200, i32 1}
!10 = !{ptr @__UNIQUE_ID_license340, !9, !"__UNIQUE_ID_license340", i1 false, i1 false}
!11 = distinct !{null, !12, !"mii_phy_table", i1 false, i1 false}
!12 = !{!"../drivers/net/sungem_phy.c", i32 1142, i32 28}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/sungem_phy.c", i32 902, i32 11}
!15 = !{ptr @bcm5201_phy_def, !16, !"bcm5201_phy_def", i1 false, i1 false}
!16 = !{!"../drivers/net/sungem_phy.c", i32 899, i32 27}
!17 = !{ptr @bcm5201_phy_ops, !18, !"bcm5201_phy_ops", i1 false, i1 false}
!18 = !{!"../drivers/net/sungem_phy.c", i32 890, i32 33}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/sungem_phy.c", i32 921, i32 11}
!21 = !{ptr @bcm5221_phy_def, !22, !"bcm5221_phy_def", i1 false, i1 false}
!22 = !{!"../drivers/net/sungem_phy.c", i32 918, i32 27}
!23 = !{ptr @bcm5221_phy_ops, !24, !"bcm5221_phy_ops", i1 false, i1 false}
!24 = !{!"../drivers/net/sungem_phy.c", i32 909, i32 33}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/sungem_phy.c", i32 939, i32 11}
!27 = !{ptr @bcm5241_phy_def, !28, !"bcm5241_phy_def", i1 false, i1 false}
!28 = !{!"../drivers/net/sungem_phy.c", i32 936, i32 27}
!29 = !{ptr @bcm5241_phy_ops, !30, !"bcm5241_phy_ops", i1 false, i1 false}
!30 = !{!"../drivers/net/sungem_phy.c", i32 928, i32 33}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/sungem_phy.c", i32 958, i32 11}
!33 = !{ptr @bcm5400_phy_def, !34, !"bcm5400_phy_def", i1 false, i1 false}
!34 = !{!"../drivers/net/sungem_phy.c", i32 955, i32 27}
!35 = !{ptr @bcm5400_phy_ops, !36, !"bcm5400_phy_ops", i1 false, i1 false}
!36 = !{!"../drivers/net/sungem_phy.c", i32 946, i32 33}
!37 = !{ptr @phy_BCM5400_link_table, !38, !"phy_BCM5400_link_table", i1 false, i1 false}
!38 = !{!"../drivers/net/sungem_phy.c", i32 40, i32 18}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/sungem_phy.c", i32 977, i32 11}
!41 = !{ptr @bcm5401_phy_def, !42, !"bcm5401_phy_def", i1 false, i1 false}
!42 = !{!"../drivers/net/sungem_phy.c", i32 974, i32 27}
!43 = !{ptr @bcm5401_phy_ops, !44, !"bcm5401_phy_ops", i1 false, i1 false}
!44 = !{!"../drivers/net/sungem_phy.c", i32 965, i32 33}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/sungem_phy.c", i32 996, i32 11}
!47 = !{ptr @bcm5411_phy_def, !48, !"bcm5411_phy_def", i1 false, i1 false}
!48 = !{!"../drivers/net/sungem_phy.c", i32 993, i32 27}
!49 = !{ptr @bcm5411_phy_ops, !50, !"bcm5411_phy_ops", i1 false, i1 false}
!50 = !{!"../drivers/net/sungem_phy.c", i32 984, i32 33}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/sungem_phy.c", i32 1016, i32 11}
!53 = !{ptr @bcm5421_phy_def, !54, !"bcm5421_phy_def", i1 false, i1 false}
!54 = !{!"../drivers/net/sungem_phy.c", i32 1013, i32 27}
!55 = !{ptr @bcm5421_phy_ops, !56, !"bcm5421_phy_ops", i1 false, i1 false}
!56 = !{!"../drivers/net/sungem_phy.c", i32 1003, i32 33}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/sungem_phy.c", i32 1035, i32 11}
!59 = !{ptr @bcm5421k2_phy_def, !60, !"bcm5421k2_phy_def", i1 false, i1 false}
!60 = !{!"../drivers/net/sungem_phy.c", i32 1032, i32 27}
!61 = !{ptr @bcm5421k2_phy_ops, !62, !"bcm5421k2_phy_ops", i1 false, i1 false}
!62 = !{!"../drivers/net/sungem_phy.c", i32 1023, i32 33}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/sungem_phy.c", i32 1054, i32 11}
!65 = !{ptr @bcm5461_phy_def, !66, !"bcm5461_phy_def", i1 false, i1 false}
!66 = !{!"../drivers/net/sungem_phy.c", i32 1051, i32 27}
!67 = !{ptr @bcm5461_phy_ops, !68, !"bcm5461_phy_ops", i1 false, i1 false}
!68 = !{!"../drivers/net/sungem_phy.c", i32 1041, i32 33}
!69 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/sungem_phy.c", i32 1073, i32 11}
!71 = !{ptr @bcm5462V_phy_def, !72, !"bcm5462V_phy_def", i1 false, i1 false}
!72 = !{!"../drivers/net/sungem_phy.c", i32 1070, i32 27}
!73 = !{ptr @bcm5462V_phy_ops, !74, !"bcm5462V_phy_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/sungem_phy.c", i32 1061, i32 33}
!75 = !{ptr @.str.13, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/sungem_phy.c", i32 1103, i32 11}
!77 = !{ptr @marvell88e1101v1_phy_def, !78, !"marvell88e1101v1_phy_def", i1 false, i1 false}
!78 = !{!"../drivers/net/sungem_phy.c", i32 1100, i32 27}
!79 = !{ptr @marvell88e1101_phy_ops, !80, !"marvell88e1101_phy_ops", i1 false, i1 false}
!80 = !{!"../drivers/net/sungem_phy.c", i32 1080, i32 33}
!81 = !{ptr @.str.14, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/sungem_phy.c", i32 1111, i32 11}
!83 = !{ptr @marvell88e1101v2_phy_def, !84, !"marvell88e1101v2_phy_def", i1 false, i1 false}
!84 = !{!"../drivers/net/sungem_phy.c", i32 1108, i32 27}
!85 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/sungem_phy.c", i32 1119, i32 11}
!87 = !{ptr @marvell88e1111_phy_def, !88, !"marvell88e1111_phy_def", i1 false, i1 false}
!88 = !{!"../drivers/net/sungem_phy.c", i32 1116, i32 27}
!89 = !{ptr @marvell88e1111_phy_ops, !90, !"marvell88e1111_phy_ops", i1 false, i1 false}
!90 = !{!"../drivers/net/sungem_phy.c", i32 1088, i32 33}
!91 = !{ptr @.str.16, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/sungem_phy.c", i32 1136, i32 11}
!93 = !{ptr @genmii_phy_def, !94, !"genmii_phy_def", i1 false, i1 false}
!94 = !{!"../drivers/net/sungem_phy.c", i32 1133, i32 27}
!95 = !{ptr @generic_phy_ops, !96, !"generic_phy_ops", i1 false, i1 false}
!96 = !{!"../drivers/net/sungem_phy.c", i32 1126, i32 33}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
