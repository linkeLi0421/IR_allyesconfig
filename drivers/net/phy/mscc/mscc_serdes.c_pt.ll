; ModuleID = '/llk/IR_all_yes/drivers/net/phy/mscc/mscc_serdes.c_pt.bc'
source_filename = "../drivers/net/phy/mscc/mscc_serdes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vsc85xx_sd6g_config_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 553, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: QSGMII error: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vsc85xx_sd6g_config_v2\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/phy/mscc/mscc_serdes.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_config_v2._entry_ptr = internal global ptr @vsc85xx_sd6g_config_v2._entry, section ".printk_index", align 4
@vsc85xx_sd6g_config_v2._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 571, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: SGMII error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_config_v2._entry_ptr.7 = internal global ptr @vsc85xx_sd6g_config_v2._entry.5, section ".printk_index", align 4
@vsc85xx_sd6g_config_v2._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 578, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: invalid mac_if: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_config_v2._entry_ptr.10 = internal global ptr @vsc85xx_sd6g_config_v2._entry.8, section ".printk_index", align 4
@pll5g_detune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 25, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: write error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll5g_detune\00", [19 x i8] zeroinitializer }, align 32
@pll5g_detune._entry_ptr = internal global ptr @pll5g_detune._entry, section ".printk_index", align 4
@vsc85xx_sd6g_pll_cfg_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.13, ptr @.str.2, i32 56, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc85xx_sd6g_pll_cfg_wr\00", [40 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_pll_cfg_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_pll_cfg_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_common_cfg_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vsc85xx_sd6g_common_cfg_wr\00", [37 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_common_cfg_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_common_cfg_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_des_cfg_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.15, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc85xx_sd6g_des_cfg_wr\00", [40 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_des_cfg_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_des_cfg_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_ib_cfg0_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.16, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc85xx_sd6g_ib_cfg0_wr\00", [40 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_ib_cfg0_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_ib_cfg0_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_ib_cfg1_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.17, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc85xx_sd6g_ib_cfg1_wr\00", [40 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_ib_cfg1_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_ib_cfg1_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_ib_cfg2_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.18, ptr @.str.2, i32 180, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc85xx_sd6g_ib_cfg2_wr\00", [40 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_ib_cfg2_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_ib_cfg2_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_ib_cfg3_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.19, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc85xx_sd6g_ib_cfg3_wr\00", [40 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_ib_cfg3_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_ib_cfg3_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_ib_cfg4_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.20, ptr @.str.2, i32 218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc85xx_sd6g_ib_cfg4_wr\00", [40 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_ib_cfg4_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_ib_cfg4_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_misc_cfg_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.21, ptr @.str.2, i32 231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vsc85xx_sd6g_misc_cfg_wr\00", [39 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_misc_cfg_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_misc_cfg_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_gp_cfg_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.22, ptr @.str.2, i32 243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vsc85xx_sd6g_gp_cfg_wr\00", [41 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_gp_cfg_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_gp_cfg_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_dft_cfg2_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.23, ptr @.str.2, i32 266, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vsc85xx_sd6g_dft_cfg2_wr\00", [39 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_dft_cfg2_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_dft_cfg2_wr._entry, section ".printk_index", align 4
@vsc85xx_sd6g_dft_cfg0_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.24, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vsc85xx_sd6g_dft_cfg0_wr\00", [39 x i8] zeroinitializer }, align 32
@vsc85xx_sd6g_dft_cfg0_wr._entry_ptr = internal global ptr @vsc85xx_sd6g_dft_cfg0_wr._entry, section ".printk_index", align 4
@pll5g_tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.25, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll5g_tune\00", [21 x i8] zeroinitializer }, align 32
@pll5g_tune._entry_ptr = internal global ptr @pll5g_tune._entry, section ".printk_index", align 4
@vsc85xx_pll5g_cfg0_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vsc85xx_pll5g_cfg0_wr\00", [42 x i8] zeroinitializer }, align 32
@vsc85xx_pll5g_cfg0_wr._entry_ptr = internal global ptr @vsc85xx_pll5g_cfg0_wr._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 16384]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 552, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 570, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 577, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 25, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 56, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 85, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 109, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 134, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 158, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 180, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 199, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 218, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 231, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 243, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 266, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 284, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 39, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [38 x i8] c"../drivers/net/phy/mscc/mscc_serdes.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 303, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @pll5g_detune._entry, ptr @pll5g_detune._entry_ptr, ptr @pll5g_tune._entry, ptr @pll5g_tune._entry_ptr, ptr @vsc85xx_pll5g_cfg0_wr._entry, ptr @vsc85xx_pll5g_cfg0_wr._entry_ptr, ptr @vsc85xx_sd6g_common_cfg_wr._entry, ptr @vsc85xx_sd6g_common_cfg_wr._entry_ptr, ptr @vsc85xx_sd6g_config_v2._entry, ptr @vsc85xx_sd6g_config_v2._entry.5, ptr @vsc85xx_sd6g_config_v2._entry.8, ptr @vsc85xx_sd6g_config_v2._entry_ptr, ptr @vsc85xx_sd6g_config_v2._entry_ptr.10, ptr @vsc85xx_sd6g_config_v2._entry_ptr.7, ptr @vsc85xx_sd6g_des_cfg_wr._entry, ptr @vsc85xx_sd6g_des_cfg_wr._entry_ptr, ptr @vsc85xx_sd6g_dft_cfg0_wr._entry, ptr @vsc85xx_sd6g_dft_cfg0_wr._entry_ptr, ptr @vsc85xx_sd6g_dft_cfg2_wr._entry, ptr @vsc85xx_sd6g_dft_cfg2_wr._entry_ptr, ptr @vsc85xx_sd6g_gp_cfg_wr._entry, ptr @vsc85xx_sd6g_gp_cfg_wr._entry_ptr, ptr @vsc85xx_sd6g_ib_cfg0_wr._entry, ptr @vsc85xx_sd6g_ib_cfg0_wr._entry_ptr, ptr @vsc85xx_sd6g_ib_cfg1_wr._entry, ptr @vsc85xx_sd6g_ib_cfg1_wr._entry_ptr, ptr @vsc85xx_sd6g_ib_cfg2_wr._entry, ptr @vsc85xx_sd6g_ib_cfg2_wr._entry_ptr, ptr @vsc85xx_sd6g_ib_cfg3_wr._entry, ptr @vsc85xx_sd6g_ib_cfg3_wr._entry_ptr, ptr @vsc85xx_sd6g_ib_cfg4_wr._entry, ptr @vsc85xx_sd6g_ib_cfg4_wr._entry_ptr, ptr @vsc85xx_sd6g_misc_cfg_wr._entry, ptr @vsc85xx_sd6g_misc_cfg_wr._entry_ptr, ptr @vsc85xx_sd6g_pll_cfg_wr._entry, ptr @vsc85xx_sd6g_pll_cfg_wr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_config_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_config_v2._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_config_v2._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll5g_detune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_pll_cfg_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_common_cfg_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_des_cfg_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_ib_cfg0_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_ib_cfg1_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_ib_cfg2_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_ib_cfg3_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_ib_cfg4_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_misc_cfg_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_gp_cfg_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_dft_cfg2_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_sd6g_dft_cfg0_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll5g_tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_pll5g_cfg0_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsc85xx_sd6g_config_v2(ptr noundef %phydev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_base_write(ptr noundef %phydev, i32 noundef 31, i16 noundef zeroext 0) #3
  %call.i = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 8) #3
  %and.i = and i32 %call.i, -994
  %or.i = or i32 %and.i, 1
  %call1.i = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 8, i32 noundef %or.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %pll5g_detune.exit

pll5g_detune.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i626 = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 43, i32 noundef 15744) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i626)
  %tobool.not.i627 = icmp eq i32 %call.i626, 0
  br i1 %tobool.not.i627, label %if.end5, label %vsc85xx_sd6g_pll_cfg_wr.exit

vsc85xx_sd6g_pll_cfg_wr.exit:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i629 = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 44, i32 noundef 80) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i629)
  %tobool.not.i630 = icmp eq i32 %call.i629, 0
  br i1 %tobool.not.i630, label %if.end9, label %vsc85xx_sd6g_common_cfg_wr.exit

vsc85xx_sd6g_common_cfg_wr.exit:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @vsc85xx_sd6g_des_cfg_wr(ptr noundef %phydev, i32 noundef 3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg0_wr(ptr noundef %phydev, i32 noundef 7, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg1_wr(ptr noundef %phydev, i32 noundef 5, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg2_wr(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg3_wr(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %call34 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg4_wr(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %call38 = tail call fastcc i32 @vsc85xx_sd6g_common_cfg_wr(ptr noundef %phydev, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = tail call fastcc i32 @vsc85xx_sd6g_misc_cfg_wr(ptr noundef %phydev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %call46 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %call50 = tail call fastcc i32 @vsc85xx_sd6g_pll_cfg_wr(ptr noundef %phydev, i32 noundef 60, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %call54 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %0
  br label %do.body

do.body:                                          ; preds = %if.end62.do.body_crit_edge, %if.end57
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #3
  %call59 = tail call i32 @phy_update_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end62:                                         ; preds = %do.body
  %call63 = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 49) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  %and = and i32 %call63, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool64.not
  br i1 %or.cond, label %do.end, label %if.end62.do.body_crit_edge

if.end62.do.body_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %if.end62
  br i1 %tobool64.not, label %if.end68, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end68:                                         ; preds = %do.end
  %call69 = tail call fastcc i32 @vsc85xx_sd6g_misc_cfg_wr(ptr noundef %phydev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end72:                                         ; preds = %if.end68
  %call73 = tail call fastcc i32 @vsc85xx_sd6g_common_cfg_wr(ptr noundef %phydev, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  %call77 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  %call81 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  %call85 = tail call fastcc i32 @vsc85xx_sd6g_dft_cfg2_wr(ptr noundef %phydev, i32 noundef 2, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end88:                                         ; preds = %if.end84
  %call89 = tail call fastcc i32 @vsc85xx_sd6g_dft_cfg0_wr(ptr noundef %phydev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end92:                                         ; preds = %if.end88
  %call93 = tail call fastcc i32 @vsc85xx_sd6g_des_cfg_wr(ptr noundef %phydev, i32 noundef 3, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end96:                                         ; preds = %if.end92
  %call97 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end100:                                        ; preds = %if.end96
  %call101 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg1_wr(ptr noundef %phydev, i32 noundef 16, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end104:                                        ; preds = %if.end100
  %call105 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg0_wr(ptr noundef %phydev, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end108:                                        ; preds = %if.end104
  %call109 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end112:                                        ; preds = %if.end108
  %call113 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg0_wr(ptr noundef %phydev, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end116:                                        ; preds = %if.end112
  %call117 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %for.body.preheader, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %if.end116
  %call122 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 769)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond:                                         ; preds = %if.end133
  %call122.1 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 769)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.1)
  %tobool123.not.1 = icmp eq i32 %call122.1, 0
  br i1 %tobool123.not.1, label %if.end125.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end125.1:                                      ; preds = %for.cond
  %call126.1 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.1)
  %tobool127.not.1 = icmp eq i32 %call126.1, 0
  br i1 %tobool127.not.1, label %if.end129.1, label %if.end125.1.cleanup_crit_edge

if.end125.1.cleanup_crit_edge:                    ; preds = %if.end125.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end129.1:                                      ; preds = %if.end125.1
  %call130.1 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.1)
  %tobool131.not.1 = icmp eq i32 %call130.1, 0
  br i1 %tobool131.not.1, label %if.end133.1, label %if.end129.1.cleanup_crit_edge

if.end129.1.cleanup_crit_edge:                    ; preds = %if.end129.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end133.1:                                      ; preds = %if.end129.1
  %call134.1 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.1)
  %tobool135.not.1 = icmp eq i32 %call134.1, 0
  br i1 %tobool135.not.1, label %for.cond.1, label %if.end133.1.cleanup_crit_edge

if.end133.1.cleanup_crit_edge:                    ; preds = %if.end133.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.1:                                       ; preds = %if.end133.1
  %call122.2 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 769)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.2)
  %tobool123.not.2 = icmp eq i32 %call122.2, 0
  br i1 %tobool123.not.2, label %if.end125.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end125.2:                                      ; preds = %for.cond.1
  %call126.2 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.2)
  %tobool127.not.2 = icmp eq i32 %call126.2, 0
  br i1 %tobool127.not.2, label %if.end129.2, label %if.end125.2.cleanup_crit_edge

if.end125.2.cleanup_crit_edge:                    ; preds = %if.end125.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end129.2:                                      ; preds = %if.end125.2
  %call130.2 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.2)
  %tobool131.not.2 = icmp eq i32 %call130.2, 0
  br i1 %tobool131.not.2, label %if.end133.2, label %if.end129.2.cleanup_crit_edge

if.end129.2.cleanup_crit_edge:                    ; preds = %if.end129.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end133.2:                                      ; preds = %if.end129.2
  %call134.2 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.2)
  %tobool135.not.2 = icmp eq i32 %call134.2, 0
  br i1 %tobool135.not.2, label %for.cond.2, label %if.end133.2.cleanup_crit_edge

if.end133.2.cleanup_crit_edge:                    ; preds = %if.end133.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.2:                                       ; preds = %if.end133.2
  %call122.3 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 769)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.3)
  %tobool123.not.3 = icmp eq i32 %call122.3, 0
  br i1 %tobool123.not.3, label %if.end125.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end125.3:                                      ; preds = %for.cond.2
  %call126.3 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.3)
  %tobool127.not.3 = icmp eq i32 %call126.3, 0
  br i1 %tobool127.not.3, label %if.end129.3, label %if.end125.3.cleanup_crit_edge

if.end125.3.cleanup_crit_edge:                    ; preds = %if.end125.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end129.3:                                      ; preds = %if.end125.3
  %call130.3 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.3)
  %tobool131.not.3 = icmp eq i32 %call130.3, 0
  br i1 %tobool131.not.3, label %if.end133.3, label %if.end129.3.cleanup_crit_edge

if.end129.3.cleanup_crit_edge:                    ; preds = %if.end129.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end133.3:                                      ; preds = %if.end129.3
  %call134.3 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.3)
  %tobool135.not.3 = icmp eq i32 %call134.3, 0
  br i1 %tobool135.not.3, label %for.cond.3, label %if.end133.3.cleanup_crit_edge

if.end133.3.cleanup_crit_edge:                    ; preds = %if.end133.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.3:                                       ; preds = %if.end133.3
  %call122.4 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 769)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.4)
  %tobool123.not.4 = icmp eq i32 %call122.4, 0
  br i1 %tobool123.not.4, label %if.end125.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end125.4:                                      ; preds = %for.cond.3
  %call126.4 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.4)
  %tobool127.not.4 = icmp eq i32 %call126.4, 0
  br i1 %tobool127.not.4, label %if.end129.4, label %if.end125.4.cleanup_crit_edge

if.end125.4.cleanup_crit_edge:                    ; preds = %if.end125.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end129.4:                                      ; preds = %if.end125.4
  %call130.4 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.4)
  %tobool131.not.4 = icmp eq i32 %call130.4, 0
  br i1 %tobool131.not.4, label %if.end133.4, label %if.end129.4.cleanup_crit_edge

if.end129.4.cleanup_crit_edge:                    ; preds = %if.end129.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end133.4:                                      ; preds = %if.end129.4
  %call134.4 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.4)
  %tobool135.not.4 = icmp eq i32 %call134.4, 0
  br i1 %tobool135.not.4, label %for.cond.4, label %if.end133.4.cleanup_crit_edge

if.end133.4.cleanup_crit_edge:                    ; preds = %if.end133.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.4:                                       ; preds = %if.end133.4
  %call138 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg1_wr(ptr noundef %phydev, i32 noundef 16, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end125:                                        ; preds = %for.body.preheader
  %call126 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end129:                                        ; preds = %if.end125
  %call130 = tail call fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef 768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end129.cleanup_crit_edge

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end133:                                        ; preds = %if.end129
  %call134 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %for.cond, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end141:                                        ; preds = %for.cond.4
  %call142 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %if.end141.cleanup_crit_edge

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end145:                                        ; preds = %if.end141
  %call146 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg1_wr(ptr noundef %phydev, i32 noundef 16, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.end145.cleanup_crit_edge

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end149:                                        ; preds = %if.end145
  %call150 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end153, label %if.end149.cleanup_crit_edge

if.end149.cleanup_crit_edge:                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end153:                                        ; preds = %if.end149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add155.neg = sub i32 -50, %2
  br label %do.body156

do.body156:                                       ; preds = %if.end160.do.body156_crit_edge, %if.end153
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #3
  %call157 = tail call i32 @phy_update_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %do.body156.cleanup_crit_edge

do.body156.cleanup_crit_edge:                     ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end160:                                        ; preds = %do.body156
  %call161 = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 47) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub163 = add i32 %add155.neg, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub163)
  %cmp164 = icmp slt i32 %sub163, 0
  %neg = and i32 %call161, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool167.not.not = icmp eq i32 %neg, 0
  %or.cond624 = select i1 %cmp164, i1 %tobool167.not.not, i1 false
  br i1 %or.cond624, label %if.end160.do.body156_crit_edge, label %do.end169

if.end160.do.body156_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body156

do.end169:                                        ; preds = %if.end160
  br i1 %tobool167.not.not, label %do.end169.cleanup_crit_edge, label %if.end174

do.end169.cleanup_crit_edge:                      ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end174:                                        ; preds = %do.end169
  %call175 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg0_wr(ptr noundef %phydev, i32 noundef 7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %if.end174.cleanup_crit_edge

if.end174.cleanup_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end178:                                        ; preds = %if.end174
  %call179 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg1_wr(ptr noundef %phydev, i32 noundef 5, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end182, label %if.end178.cleanup_crit_edge

if.end178.cleanup_crit_edge:                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end182:                                        ; preds = %if.end178
  %call183 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %if.end182.cleanup_crit_edge

if.end182.cleanup_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end186:                                        ; preds = %if.end182
  %call187 = tail call fastcc i32 @vsc85xx_sd6g_common_cfg_wr(ptr noundef %phydev, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %if.end186.cleanup_crit_edge

if.end186.cleanup_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end190:                                        ; preds = %if.end186
  %call191 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end194, label %if.end190.cleanup_crit_edge

if.end190.cleanup_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end194:                                        ; preds = %if.end190
  %call195 = tail call fastcc i32 @vsc85xx_sd6g_dft_cfg2_wr(ptr noundef %phydev, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end198, label %if.end194.cleanup_crit_edge

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end198:                                        ; preds = %if.end194
  %call199 = tail call fastcc i32 @vsc85xx_sd6g_dft_cfg0_wr(ptr noundef %phydev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end198.cleanup_crit_edge

if.end198.cleanup_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end202:                                        ; preds = %if.end198
  %call203 = tail call fastcc i32 @vsc85xx_sd6g_des_cfg_wr(ptr noundef %phydev, i32 noundef 3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end206, label %if.end202.cleanup_crit_edge

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end206:                                        ; preds = %if.end202
  %call207 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end210, label %if.end206.cleanup_crit_edge

if.end206.cleanup_crit_edge:                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end210:                                        ; preds = %if.end206
  %call211 = tail call fastcc i32 @pll5g_tune(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end214, label %if.end210.cleanup_crit_edge

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end214:                                        ; preds = %if.end210
  %call215 = tail call fastcc i32 @vsc85xx_sd6g_pll_cfg_wr(ptr noundef %phydev, i32 noundef 60, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end218, label %if.end214.cleanup_crit_edge

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end218:                                        ; preds = %if.end214
  %call219 = tail call fastcc i32 @vsc85xx_sd6g_common_cfg_wr(ptr noundef %phydev, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %if.end218.cleanup_crit_edge

if.end218.cleanup_crit_edge:                      ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end222:                                        ; preds = %if.end218
  %call223 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.end226, label %if.end222.cleanup_crit_edge

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end226:                                        ; preds = %if.end222
  %call227 = tail call i32 @phy_base_write(ptr noundef %phydev, i32 noundef 31, i16 noundef zeroext 16) #3
  %call228 = tail call i32 @phy_base_read(ptr noundef %phydev, i32 noundef 19) #3
  %4 = trunc i32 %call228 to i16
  %trunc = and i16 %4, -16384
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end258 [
    i16 16384, label %if.then231
    i16 0, label %if.then243
  ]

if.then231:                                       ; preds = %if.end226
  %call232 = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext 224) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end238, label %do.end237

do.end237:                                        ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call232) #6
  br label %cleanup

if.end238:                                        ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #5
  %call239 = tail call i32 @phy_base_write(ptr noundef %phydev, i32 noundef 31, i16 noundef zeroext 0) #3
  br label %if.end262

if.then243:                                       ; preds = %if.end226
  %call245 = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext 240) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.end253, label %do.end250

do.end250:                                        ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %call245) #6
  br label %cleanup

if.end253:                                        ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #5
  %call254 = tail call i32 @phy_base_write(ptr noundef %phydev, i32 noundef 31, i16 noundef zeroext 0) #3
  br label %if.end262

do.end258:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %call228) #6
  br label %if.end262

if.end262:                                        ; preds = %do.end258, %if.end253, %if.end238
  %pll_fsm_ctrl_data.0 = phi i32 [ 120, %if.end238 ], [ 60, %if.end253 ], [ 60, %do.end258 ]
  %des_bw_ana_val.0 = phi i32 [ 5, %if.end238 ], [ 3, %if.end253 ], [ 3, %do.end258 ]
  %if_mode.0 = phi i32 [ 3, %if.end238 ], [ 1, %if.end253 ], [ 1, %do.end258 ]
  %qrate.0 = phi i32 [ 0, %if.end238 ], [ 1, %if.end253 ], [ 1, %do.end258 ]
  %call263 = tail call i32 @phy_update_mcb_s6g(ptr noundef %phydev, i32 noundef 17, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %if.end266, label %if.end262.cleanup_crit_edge

if.end262.cleanup_crit_edge:                      ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end266:                                        ; preds = %if.end262
  %call267 = tail call i32 @phy_update_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.end270, label %if.end266.cleanup_crit_edge

if.end266.cleanup_crit_edge:                      ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end270:                                        ; preds = %if.end266
  %call271 = tail call fastcc i32 @vsc85xx_pll5g_cfg0_wr(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %if.end274, label %if.end270.cleanup_crit_edge

if.end270.cleanup_crit_edge:                      ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end274:                                        ; preds = %if.end270
  %call275 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 17, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %if.end278, label %if.end274.cleanup_crit_edge

if.end274.cleanup_crit_edge:                      ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end278:                                        ; preds = %if.end274
  %call279 = tail call fastcc i32 @vsc85xx_sd6g_des_cfg_wr(ptr noundef %phydev, i32 noundef %des_bw_ana_val.0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.end282, label %if.end278.cleanup_crit_edge

if.end278.cleanup_crit_edge:                      ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end282:                                        ; preds = %if.end278
  %call283 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg0_wr(ptr noundef %phydev, i32 noundef 7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call283)
  %tobool284.not = icmp eq i32 %call283, 0
  br i1 %tobool284.not, label %if.end286, label %if.end282.cleanup_crit_edge

if.end282.cleanup_crit_edge:                      ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end286:                                        ; preds = %if.end282
  %call287 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg1_wr(ptr noundef %phydev, i32 noundef 5, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %if.end290, label %if.end286.cleanup_crit_edge

if.end286.cleanup_crit_edge:                      ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end290:                                        ; preds = %if.end286
  %call291 = tail call fastcc i32 @vsc85xx_sd6g_common_cfg_wr(ptr noundef %phydev, i32 noundef 1, i32 noundef 1, i32 noundef %qrate.0, i32 noundef %if_mode.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %if.end294, label %if.end290.cleanup_crit_edge

if.end290.cleanup_crit_edge:                      ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end294:                                        ; preds = %if.end290
  %call295 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg2_wr(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %if.end298, label %if.end294.cleanup_crit_edge

if.end294.cleanup_crit_edge:                      ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end298:                                        ; preds = %if.end294
  %call299 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg3_wr(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %if.end302, label %if.end298.cleanup_crit_edge

if.end298.cleanup_crit_edge:                      ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end302:                                        ; preds = %if.end298
  %call303 = tail call fastcc i32 @vsc85xx_sd6g_ib_cfg4_wr(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.end306, label %if.end302.cleanup_crit_edge

if.end302.cleanup_crit_edge:                      ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end306:                                        ; preds = %if.end302
  %call307 = tail call fastcc i32 @vsc85xx_sd6g_misc_cfg_wr(ptr noundef %phydev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %if.end310, label %if.end306.cleanup_crit_edge

if.end306.cleanup_crit_edge:                      ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end310:                                        ; preds = %if.end306
  %call311 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %if.end314, label %if.end310.cleanup_crit_edge

if.end310.cleanup_crit_edge:                      ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end314:                                        ; preds = %if.end310
  %call315 = tail call fastcc i32 @vsc85xx_sd6g_pll_cfg_wr(ptr noundef %phydev, i32 noundef %pll_fsm_ctrl_data.0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %if.end318, label %if.end314.cleanup_crit_edge

if.end314.cleanup_crit_edge:                      ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end318:                                        ; preds = %if.end314
  %call319 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.end322, label %if.end318.cleanup_crit_edge

if.end318.cleanup_crit_edge:                      ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end322:                                        ; preds = %if.end318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add324.neg = sub i32 -50, %6
  br label %do.body325

do.body325:                                       ; preds = %if.end329.do.body325_crit_edge, %if.end322
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #3
  %call326 = tail call i32 @phy_update_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %if.end329, label %do.body325.cleanup_crit_edge

do.body325.cleanup_crit_edge:                     ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end329:                                        ; preds = %do.body325
  %call330 = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 49) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub332 = add i32 %add324.neg, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub332)
  %cmp333 = icmp sgt i32 %sub332, -1
  %and336 = and i32 %call330, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool337.not = icmp eq i32 %and336, 0
  %or.cond625 = select i1 %cmp333, i1 true, i1 %tobool337.not
  br i1 %or.cond625, label %do.end339, label %if.end329.do.body325_crit_edge

if.end329.do.body325_crit_edge:                   ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body325

do.end339:                                        ; preds = %if.end329
  br i1 %tobool337.not, label %if.end343, label %do.end339.cleanup_crit_edge

do.end339.cleanup_crit_edge:                      ; preds = %do.end339
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end343:                                        ; preds = %do.end339
  %call344 = tail call fastcc i32 @vsc85xx_sd6g_misc_cfg_wr(ptr noundef %phydev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call344)
  %tobool345.not = icmp eq i32 %call344, 0
  br i1 %tobool345.not, label %if.end347, label %if.end343.cleanup_crit_edge

if.end343.cleanup_crit_edge:                      ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end347:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #5
  %call348 = tail call i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef 63, i8 noundef zeroext 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end347, %if.end343.cleanup_crit_edge, %do.end339.cleanup_crit_edge, %do.body325.cleanup_crit_edge, %if.end318.cleanup_crit_edge, %if.end314.cleanup_crit_edge, %if.end310.cleanup_crit_edge, %if.end306.cleanup_crit_edge, %if.end302.cleanup_crit_edge, %if.end298.cleanup_crit_edge, %if.end294.cleanup_crit_edge, %if.end290.cleanup_crit_edge, %if.end286.cleanup_crit_edge, %if.end282.cleanup_crit_edge, %if.end278.cleanup_crit_edge, %if.end274.cleanup_crit_edge, %if.end270.cleanup_crit_edge, %if.end266.cleanup_crit_edge, %if.end262.cleanup_crit_edge, %do.end250, %do.end237, %if.end222.cleanup_crit_edge, %if.end218.cleanup_crit_edge, %if.end214.cleanup_crit_edge, %if.end210.cleanup_crit_edge, %if.end206.cleanup_crit_edge, %if.end202.cleanup_crit_edge, %if.end198.cleanup_crit_edge, %if.end194.cleanup_crit_edge, %if.end190.cleanup_crit_edge, %if.end186.cleanup_crit_edge, %if.end182.cleanup_crit_edge, %if.end178.cleanup_crit_edge, %if.end174.cleanup_crit_edge, %do.end169.cleanup_crit_edge, %do.body156.cleanup_crit_edge, %if.end149.cleanup_crit_edge, %if.end145.cleanup_crit_edge, %if.end141.cleanup_crit_edge, %if.end133.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %if.end133.4.cleanup_crit_edge, %if.end129.4.cleanup_crit_edge, %if.end125.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %if.end133.3.cleanup_crit_edge, %if.end129.3.cleanup_crit_edge, %if.end125.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %if.end133.2.cleanup_crit_edge, %if.end129.2.cleanup_crit_edge, %if.end125.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end133.1.cleanup_crit_edge, %if.end129.1.cleanup_crit_edge, %if.end125.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %if.end112.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %vsc85xx_sd6g_common_cfg_wr.exit, %vsc85xx_sd6g_pll_cfg_wr.exit, %pll5g_detune.exit
  %retval.0 = phi i32 [ %call232, %do.end237 ], [ %call348, %if.end347 ], [ %call245, %do.end250 ], [ %call1.i, %pll5g_detune.exit ], [ %call.i626, %vsc85xx_sd6g_pll_cfg_wr.exit ], [ %call.i629, %vsc85xx_sd6g_common_cfg_wr.exit ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ %call54, %if.end53.cleanup_crit_edge ], [ -110, %do.end.cleanup_crit_edge ], [ %call69, %if.end68.cleanup_crit_edge ], [ %call73, %if.end72.cleanup_crit_edge ], [ %call77, %if.end76.cleanup_crit_edge ], [ %call81, %if.end80.cleanup_crit_edge ], [ %call85, %if.end84.cleanup_crit_edge ], [ %call89, %if.end88.cleanup_crit_edge ], [ %call93, %if.end92.cleanup_crit_edge ], [ %call97, %if.end96.cleanup_crit_edge ], [ %call101, %if.end100.cleanup_crit_edge ], [ %call105, %if.end104.cleanup_crit_edge ], [ %call109, %if.end108.cleanup_crit_edge ], [ %call113, %if.end112.cleanup_crit_edge ], [ %call117, %if.end116.cleanup_crit_edge ], [ %call138, %for.cond.4.cleanup_crit_edge ], [ %call142, %if.end141.cleanup_crit_edge ], [ %call146, %if.end145.cleanup_crit_edge ], [ %call150, %if.end149.cleanup_crit_edge ], [ -110, %do.end169.cleanup_crit_edge ], [ %call175, %if.end174.cleanup_crit_edge ], [ %call179, %if.end178.cleanup_crit_edge ], [ %call183, %if.end182.cleanup_crit_edge ], [ %call187, %if.end186.cleanup_crit_edge ], [ %call191, %if.end190.cleanup_crit_edge ], [ %call195, %if.end194.cleanup_crit_edge ], [ %call199, %if.end198.cleanup_crit_edge ], [ %call203, %if.end202.cleanup_crit_edge ], [ %call207, %if.end206.cleanup_crit_edge ], [ %call211, %if.end210.cleanup_crit_edge ], [ %call215, %if.end214.cleanup_crit_edge ], [ %call219, %if.end218.cleanup_crit_edge ], [ %call223, %if.end222.cleanup_crit_edge ], [ %call263, %if.end262.cleanup_crit_edge ], [ %call267, %if.end266.cleanup_crit_edge ], [ %call271, %if.end270.cleanup_crit_edge ], [ %call275, %if.end274.cleanup_crit_edge ], [ %call279, %if.end278.cleanup_crit_edge ], [ %call283, %if.end282.cleanup_crit_edge ], [ %call287, %if.end286.cleanup_crit_edge ], [ %call291, %if.end290.cleanup_crit_edge ], [ %call295, %if.end294.cleanup_crit_edge ], [ %call299, %if.end298.cleanup_crit_edge ], [ %call303, %if.end302.cleanup_crit_edge ], [ %call307, %if.end306.cleanup_crit_edge ], [ %call311, %if.end310.cleanup_crit_edge ], [ %call315, %if.end314.cleanup_crit_edge ], [ %call319, %if.end318.cleanup_crit_edge ], [ -110, %do.end339.cleanup_crit_edge ], [ %call344, %if.end343.cleanup_crit_edge ], [ %call122, %for.body.preheader.cleanup_crit_edge ], [ %call126, %if.end125.cleanup_crit_edge ], [ %call130, %if.end129.cleanup_crit_edge ], [ %call134, %if.end133.cleanup_crit_edge ], [ %call122.1, %for.cond.cleanup_crit_edge ], [ %call126.1, %if.end125.1.cleanup_crit_edge ], [ %call130.1, %if.end129.1.cleanup_crit_edge ], [ %call134.1, %if.end133.1.cleanup_crit_edge ], [ %call122.2, %for.cond.1.cleanup_crit_edge ], [ %call126.2, %if.end125.2.cleanup_crit_edge ], [ %call130.2, %if.end129.2.cleanup_crit_edge ], [ %call134.2, %if.end133.2.cleanup_crit_edge ], [ %call122.3, %for.cond.2.cleanup_crit_edge ], [ %call126.3, %if.end125.3.cleanup_crit_edge ], [ %call130.3, %if.end129.3.cleanup_crit_edge ], [ %call134.3, %if.end133.3.cleanup_crit_edge ], [ %call122.4, %for.cond.3.cleanup_crit_edge ], [ %call126.4, %if.end125.4.cleanup_crit_edge ], [ %call130.4, %if.end129.4.cleanup_crit_edge ], [ %call134.4, %if.end133.4.cleanup_crit_edge ], [ %call326, %do.body325.cleanup_crit_edge ], [ %call157, %do.body156.cleanup_crit_edge ], [ %call59, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_base_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_pll_cfg_wr(ptr noundef %phydev, i32 noundef %pll_fsm_ctrl_data, i32 noundef %pll_fsm_ena) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %pll_fsm_ena, 21
  %shl1 = shl i32 %pll_fsm_ctrl_data, 8
  %or = or i32 %shl1, %shl
  %or3 = or i32 %or, 384
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 43, i32 noundef %or3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_common_cfg_wr(ptr noundef %phydev, i32 noundef %sys_rst, i32 noundef %ena_lane, i32 noundef %qrate, i32 noundef %if_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %sys_rst, 31
  %shl1 = shl i32 %ena_lane, 18
  %or = or i32 %shl1, %shl
  %shl4 = shl i32 %qrate, 6
  %or5 = or i32 %or, %shl4
  %shl6 = shl i32 %if_mode, 4
  %or7 = or i32 %or5, %shl6
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 44, i32 noundef %or7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_commit_mcb_s6g(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_des_cfg_wr(ptr noundef %phydev, i32 noundef %des_bw_ana, i32 noundef %des_cpmd_sel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shl2 = shl i32 %des_cpmd_sel, 8
  %shl6 = shl i32 %des_bw_ana, 1
  %or5 = or i32 %shl6, %shl2
  %or7 = or i32 %or5, 51360
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 33, i32 noundef %or7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_ib_cfg0_wr(ptr noundef %phydev, i32 noundef %ib_sig_det_clk_sel, i32 noundef %ib_cal_ena) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shl1 = shl i32 %ib_sig_det_clk_sel, 16
  %shl5 = shl i32 %ib_cal_ena, 3
  %or2 = or i32 %shl1, %shl5
  %or6 = or i32 %or2, 2057852983
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 34, i32 noundef %or6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_ib_cfg1_wr(ptr noundef %phydev, i32 noundef %ib_tsdet, i32 noundef %ib_frc_offset, i32 noundef %ib_filt_offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shl1 = shl i32 %ib_tsdet, 12
  %add4 = add i32 %shl1, 1052640
  %shl5 = shl i32 %ib_filt_offset, 4
  %add6 = add i32 %add4, %ib_frc_offset
  %add8 = add i32 %add6, %shl5
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 35, i32 noundef %add8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.17) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_ib_cfg2_wr(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 36, i32 noundef 1065845173) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.18) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_ib_cfg3_wr(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 37, i32 noundef 2031903) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.19) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_ib_cfg4_wr(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 38, i32 noundef 1061093951) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.20) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_misc_cfg_wr(ptr noundef %phydev, i32 noundef %lane_rst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 59, i32 noundef %lane_rst) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_update_mcb_s6g(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc85xx_csr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_gp_cfg_wr(ptr noundef %phydev, i32 noundef %gp_cfg_val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 46, i32 noundef %gp_cfg_val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.22) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_dft_cfg2_wr(ptr noundef %phydev, i32 noundef %rx_step_freq, i32 noundef %rx_freqoff_ena) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shl1 = shl i32 %rx_step_freq, 4
  %or8 = or i32 %shl1, %rx_freqoff_ena
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 55, i32 noundef %or8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.23) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_sd6g_dft_cfg0_wr(ptr noundef %phydev, i32 noundef %rx_dft_ena) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shl2 = shl i32 %rx_dft_ena, 2
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 53, i32 noundef %shl2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.24) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pll5g_tune(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 8) #3
  %and = and i32 %call, -2
  %call1 = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 8, i32 noundef %and) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_base_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc8584_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_pll5g_cfg0_wr(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 6, i32 noundef 1916203333) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.26) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc85xx_csr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 552, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vsc85xx_sd6g_config_v2._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vsc85xx_sd6g_config_v2._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 570, i32 4}
!10 = !{ptr @vsc85xx_sd6g_config_v2._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @vsc85xx_sd6g_config_v2._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 577, i32 3}
!14 = !{ptr @vsc85xx_sd6g_config_v2._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @vsc85xx_sd6g_config_v2._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 25, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pll5g_detune._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @pll5g_detune._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 56, i32 3}
!23 = !{ptr @vsc85xx_sd6g_pll_cfg_wr._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @vsc85xx_sd6g_pll_cfg_wr._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 85, i32 3}
!27 = !{ptr @vsc85xx_sd6g_common_cfg_wr._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @vsc85xx_sd6g_common_cfg_wr._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 109, i32 3}
!31 = !{ptr @vsc85xx_sd6g_des_cfg_wr._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vsc85xx_sd6g_des_cfg_wr._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 134, i32 3}
!35 = !{ptr @vsc85xx_sd6g_ib_cfg0_wr._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @vsc85xx_sd6g_ib_cfg0_wr._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 158, i32 3}
!39 = !{ptr @vsc85xx_sd6g_ib_cfg1_wr._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vsc85xx_sd6g_ib_cfg1_wr._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 180, i32 3}
!43 = !{ptr @vsc85xx_sd6g_ib_cfg2_wr._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vsc85xx_sd6g_ib_cfg2_wr._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 199, i32 3}
!47 = !{ptr @vsc85xx_sd6g_ib_cfg3_wr._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @vsc85xx_sd6g_ib_cfg3_wr._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 218, i32 3}
!51 = !{ptr @vsc85xx_sd6g_ib_cfg4_wr._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @vsc85xx_sd6g_ib_cfg4_wr._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 231, i32 3}
!55 = !{ptr @vsc85xx_sd6g_misc_cfg_wr._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vsc85xx_sd6g_misc_cfg_wr._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 243, i32 3}
!59 = !{ptr @vsc85xx_sd6g_gp_cfg_wr._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @vsc85xx_sd6g_gp_cfg_wr._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 266, i32 3}
!63 = !{ptr @vsc85xx_sd6g_dft_cfg2_wr._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @vsc85xx_sd6g_dft_cfg2_wr._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 284, i32 3}
!67 = !{ptr @vsc85xx_sd6g_dft_cfg0_wr._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @vsc85xx_sd6g_dft_cfg0_wr._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 39, i32 3}
!71 = !{ptr @pll5g_tune._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @pll5g_tune._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/phy/mscc/mscc_serdes.c", i32 303, i32 3}
!75 = !{ptr @vsc85xx_pll5g_cfg0_wr._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @vsc85xx_pll5g_cfg0_wr._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
