; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/control.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.omap3_control_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.control_init_data = type { i32, ptr, i16 }
%struct.omap3_scratchpad = type { i32, i32, i32, i32, i32, i32 }
%struct.omap3_scratchpad_prcm_block = type { [2 x i32], [11 x i32], i32 }
%struct.omap3_scratchpad_sdrc_block = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32 }
%struct.omap_prcm_init_data = type { i32, ptr, i32, i16, i16, i32, ptr, ptr }

@omap2_ctrl_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_ctrl_write_dsp_boot_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: unsupported omap type\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_ctrl_write_dsp_boot_addr\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-omap2/control.c\00", [34 x i8] zeroinitializer }, align 32
@omap_ctrl_write_dsp_boot_addr._entry_ptr = internal global ptr @omap_ctrl_write_dsp_boot_addr._entry, section ".printk_index", align 4
@omap_ctrl_write_dsp_boot_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_ctrl_write_dsp_boot_mode\00", [34 x i8] zeroinitializer }, align 32
@omap_ctrl_write_dsp_boot_mode._entry_ptr = internal global ptr @omap_ctrl_write_dsp_boot_mode._entry, section ".printk_index", align 4
@omap3_secure_ram_storage = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@omap3_arm_context = dso_local global { [128 x i32], [128 x i8] } zeroinitializer, align 32
@control_context = internal global { %struct.omap3_control_regs, [44 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap_scrm_dt_match_table = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4-scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-scrm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-scm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-scm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-scm-wkup-pad-conf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_aux_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-scm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ctrl_data }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@omap_control_init.nb = internal global { %struct.notifier_block, [20 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scm_conf\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@omap2_sdrc_base = external dso_local local_unnamed_addr global ptr, align 4
@ctrl_data = internal global { %struct.control_init_data, [20 x i8] } { %struct.control_init_data { i32 4, ptr null, i16 0 }, [20 x i8] zeroinitializer }, align 32
@omap2_ctrl_data = internal constant { %struct.control_init_data, [20 x i8] } { %struct.control_init_data { i32 4, ptr null, i16 -624 }, [20 x i8] zeroinitializer }, align 32
@ctrl_aux_data = internal constant { %struct.control_init_data, [20 x i8] } { %struct.control_init_data { i32 5, ptr null, i16 0 }, [20 x i8] zeroinitializer }, align 32
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@am43xx_control_reg_offsets = internal constant { [55 x i32], [36 x i8] } { [55 x i32] [i32 16, i32 64, i32 480, i32 1064, i32 1068, i32 1092, i32 1096, i32 1100, i32 1112, i32 1128, i32 1136, i32 1332, i32 1544, i32 1548, i32 1556, i32 1568, i32 1576, i32 1612, i32 1616, i32 1620, i32 1624, i32 1636, i32 1648, i32 1652, i32 1680, i32 1684, i32 1688, i32 1692, i32 1696, i32 1700, i32 3584, i32 3592, i32 3596, i32 3604, i32 3984, i32 3988, i32 3992, i32 3996, i32 4000, i32 4004, i32 4008, i32 4012, i32 4016, i32 4020, i32 4024, i32 4028, i32 4032, i32 4036, i32 4040, i32 4044, i32 4048, i32 4052, i32 4056, i32 4060, i32 4096], [36 x i8] zeroinitializer }, align 32
@am33xx_control_vals = internal global { [55 x i32], [36 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"omap2_ctrl_base\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 35, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 245, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 266, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"omap3_secure_ram_storage\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 86, i32 7 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"omap3_arm_context\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 94, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"control_context\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 136, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"omap_scrm_dt_match_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 740, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 799, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 808, i32 39 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 816, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"ctrl_data\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 727, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"omap2_ctrl_data\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 731, i32 39 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"ctrl_aux_data\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 736, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"am43xx_control_reg_offsets\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 617, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"am33xx_control_vals\00", align 1
@___asan_gen_.61 = private constant [33 x i8] c"../arch/arm/mach-omap2/control.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 675, i32 12 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @omap_ctrl_write_dsp_boot_addr._entry, ptr @omap_ctrl_write_dsp_boot_addr._entry_ptr, ptr @omap_ctrl_write_dsp_boot_mode._entry, ptr @omap_ctrl_write_dsp_boot_mode._entry_ptr, ptr @omap2_ctrl_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @omap3_secure_ram_storage, ptr @omap3_arm_context, ptr @control_context, ptr @omap_scrm_dt_match_table, ptr @omap_control_init.nb, ptr @.str.4, ptr @.str.5, ptr @ctrl_data, ptr @omap2_ctrl_data, ptr @ctrl_aux_data, ptr @am43xx_control_reg_offsets, ptr @am33xx_control_vals], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_ctrl_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_ctrl_write_dsp_boot_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_ctrl_write_dsp_boot_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_secure_ram_storage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_arm_context to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_context to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_scrm_dt_match_table to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_control_init.nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_ctrl_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_aux_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am43xx_control_reg_offsets to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_control_vals to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @omap_ctrl_readb(i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %offset, -4
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %conv2.i = zext i16 %0 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv2.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %4 = shl i16 %offset, 3
  %5 = and i16 %4, 24
  %mul = zext i16 %5 to i32
  %shr = lshr i32 %3, %mul
  %conv4 = trunc i32 %shr to i8
  ret i8 %conv4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_ctrl_readl(i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %offset, -4
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %conv2 = zext i16 %0 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !47
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @omap_ctrl_readw(i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %offset, -4
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %conv2.i = zext i16 %0 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv2.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %4 = shl i16 %offset, 3
  %5 = and i16 %4, 16
  %mul = zext i16 %5 to i32
  %shr = lshr i32 %3, %mul
  %conv4 = trunc i32 %shr to i16
  ret i16 %conv4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_ctrl_writeb(i8 noundef zeroext %val, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %offset, -4
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %conv2.i = zext i16 %0 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv2.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %4 = shl i16 %offset, 3
  %5 = and i16 %4, 24
  %mul = zext i16 %5 to i32
  %shl = shl nuw i32 255, %mul
  %xor = xor i32 %shl, -1
  %and3 = and i32 %3, %xor
  %conv4 = zext i8 %val to i32
  %shl7 = shl nuw i32 %conv4, %mul
  %or = or i32 %and3, %shl7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %7 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 %conv2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %6) #6, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_ctrl_writel(i32 noundef %val, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %offset, -4
  %1 = tail call i32 @llvm.bswap.i32(i32 %val)
  %2 = load ptr, ptr @omap2_ctrl_base, align 4
  %conv2 = zext i16 %0 to i32
  %add.ptr = getelementptr i8, ptr %2, i32 %conv2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #6, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_ctrl_writew(i16 noundef zeroext %val, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %offset, -4
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %conv2.i = zext i16 %0 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv2.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %4 = shl i16 %offset, 3
  %5 = and i16 %4, 16
  %mul = zext i16 %5 to i32
  %shl = shl nuw i32 65535, %mul
  %xor = xor i32 %shl, -1
  %and3 = and i32 %3, %xor
  %conv4 = zext i16 %val to i32
  %shl7 = shl nuw i32 %conv4, %mul
  %or = or i32 %and3, %shl7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %7 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 %conv2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %6) #6, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_ctrl_write_boot_mode(i8 noundef zeroext %bootmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %bootmode to i32
  %or = or i32 %conv, 1112342528
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -100652780 to ptr), i32 %0) #6, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_ctrl_write_dsp_boot_addr(i32 noundef %bootaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #6
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 607125504, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 607125504
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %cond.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.false:                                       ; preds = %entry
  %call.i19 = tail call i32 @omap_rev() #6
  %and.i = and i32 %call.i19, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i20.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i20.not, label %cond.false.if.end_crit_edge, label %cond.false4

cond.false.if.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.false4:                                      ; preds = %cond.false
  %call.i22 = tail call i32 @omap_rev() #6
  %and.i23 = and i32 %call.i22, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i23)
  %cmp.i24.not = icmp eq i32 %and.i23, 68
  br i1 %cmp.i24.not, label %cond.false4.if.end_crit_edge, label %cond.false8

cond.false4.if.end_crit_edge:                     ; preds = %cond.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.false8:                                      ; preds = %cond.false4
  %call.i26 = tail call i32 @omap_rev() #6
  %and.i27 = and i32 %call.i26, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i27)
  %cmp.i28.not = icmp eq i32 %and.i27, 84
  br i1 %cmp.i28.not, label %cond.false8.if.end_crit_edge, label %do.end

cond.false8.if.end_crit_edge:                     ; preds = %cond.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %cond.false8
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %cond.false8.if.end_crit_edge, %cond.false4.if.end_crit_edge, %cond.false.if.end_crit_edge, %entry.if.end_crit_edge
  %cond15.ph = phi i32 [ 772, %cond.false4.if.end_crit_edge ], [ 772, %cond.false8.if.end_crit_edge ], [ 1024, %cond.false.if.end_crit_edge ], [ 1024, %entry.if.end_crit_edge ]
  %0 = tail call i32 @llvm.bswap.i32(i32 %bootaddr) #6
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %cond15.ph
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #6, !srcloc !48
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_ctrl_write_dsp_boot_mode(i8 noundef zeroext %bootmode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #6
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 607125504, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 607125504
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %cond.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.false:                                       ; preds = %entry
  %call.i8 = tail call i32 @omap_rev() #6
  %and.i = and i32 %call.i8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i9.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i9.not, label %cond.false.if.end_crit_edge, label %do.end

cond.false.if.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end:                                           ; preds = %cond.false.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = zext i8 %bootmode to i32
  %0 = shl nuw i32 %conv, 24
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #6, !srcloc !48
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_clear_scratchpad_contents() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap3xxx_prm_clear_global_cold_reset() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %offset.03 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr inttoptr (i32 -100652960 to ptr), i32 %offset.03
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !48
  %add = add nuw nsw i32 %offset.03, 4
  %cmp = icmp ult i32 %offset.03, 409
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3xxx_prm_clear_global_cold_reset() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_save_scratchpad_contents() local_unnamed_addr #0 align 64 {
entry:
  %arm_context_addr = alloca i32, align 4
  %scratchpad_contents = alloca %struct.omap3_scratchpad, align 4
  %prcm_block_contents = alloca %struct.omap3_scratchpad_prcm_block, align 4
  %sdrc_block_contents = alloca %struct.omap3_scratchpad_sdrc_block, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arm_context_addr) #6
  %0 = ptrtoint ptr %arm_context_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %arm_context_addr, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scratchpad_contents) #6
  %1 = getelementptr inbounds %struct.omap3_scratchpad, ptr %scratchpad_contents, i32 0, i32 1
  %2 = getelementptr inbounds %struct.omap3_scratchpad, ptr %scratchpad_contents, i32 0, i32 2
  %3 = getelementptr inbounds %struct.omap3_scratchpad, ptr %scratchpad_contents, i32 0, i32 3
  %4 = getelementptr inbounds %struct.omap3_scratchpad, ptr %scratchpad_contents, i32 0, i32 4
  %5 = getelementptr inbounds %struct.omap3_scratchpad, ptr %scratchpad_contents, i32 0, i32 5
  %6 = getelementptr inbounds i8, ptr %scratchpad_contents, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %prcm_block_contents) #6
  %8 = call ptr @memset(ptr %prcm_block_contents, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sdrc_block_contents) #6
  %9 = call ptr @memset(ptr %sdrc_block_contents, i32 255, i32 88)
  %10 = ptrtoint ptr %scratchpad_contents to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %scratchpad_contents, align 4
  %call.i = tail call i32 @omap_rev() #6
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 909115392, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 909115392
  br i1 %cmp.i.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @omap_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 875561780, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 875561780
  br i1 %cmp.not, label %if.else.if.else14_crit_edge, label %land.lhs.true

if.else.if.else14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else14

land.lhs.true:                                    ; preds = %if.else
  %call3 = tail call i32 @omap_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 875562036, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 875562036
  br i1 %cmp4.not, label %land.lhs.true.if.else14_crit_edge, label %land.lhs.true5

land.lhs.true.if.else14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else14

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @omap_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 875562292, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 875562292
  br i1 %cmp7.not, label %land.lhs.true5.if.else14_crit_edge, label %land.lhs.true5.if.end20_crit_edge

land.lhs.true5.if.end20_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true5.if.else14_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true5.if.else14_crit_edge, %land.lhs.true.if.else14_crit_edge, %if.else.if.else14_crit_edge
  br label %if.end20

if.end20:                                         ; preds = %if.else14, %land.lhs.true5.if.end20_crit_edge, %entry.if.end20_crit_edge
  %.sink = phi i32 [ ptrtoint (ptr @omap3_restore_es3 to i32), %if.else14 ], [ ptrtoint (ptr @omap3_restore_3630 to i32), %entry.if.end20_crit_edge ], [ ptrtoint (ptr @omap3_restore to i32), %land.lhs.true5.if.end20_crit_edge ]
  %call12 = tail call i32 @__phys_addr_symbol(i32 noundef %.sink) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call12, ptr %1, align 4
  %call21 = tail call i32 @omap_type() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 3
  br i1 %cmp22, label %if.end20.if.end27_crit_edge, label %if.else24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.else24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %12 = load ptr, ptr @omap3_secure_ram_storage, align 4
  %13 = ptrtoint ptr %12 to i32
  %call25 = tail call i32 @__virt_to_phys(i32 noundef %13) #6
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.end20.if.end27_crit_edge
  %storemerge = phi i32 [ %call25, %if.else24 ], [ 0, %if.end20.if.end27_crit_edge ]
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %3, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 44, ptr %4, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100, ptr %5, align 4
  call void @omap3_prm_save_scratchpad_contents(ptr noundef nonnull %prcm_block_contents) #6
  %cm_contents = getelementptr inbounds %struct.omap3_scratchpad_prcm_block, ptr %prcm_block_contents, i32 0, i32 1
  call void @omap3_cm_save_scratchpad_contents(ptr noundef %cm_contents) #6
  %prcm_block_size = getelementptr inbounds %struct.omap3_scratchpad_prcm_block, ptr %prcm_block_contents, i32 0, i32 2
  %18 = ptrtoint ptr %prcm_block_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %prcm_block_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %19 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 16
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %21 = call i32 @llvm.bswap.i32(i32 %20) #6
  %conv = trunc i32 %21 to i16
  %22 = ptrtoint ptr %sdrc_block_contents to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %sdrc_block_contents, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %23 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i82 = getelementptr i8, ptr %23, i32 64
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #6, !srcloc !47
  %25 = call i32 @llvm.bswap.i32(i32 %24) #6
  %conv32 = trunc i32 %25 to i16
  %cs_cfg = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 1
  %26 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv32, ptr %cs_cfg, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %27 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i83 = getelementptr i8, ptr %27, i32 68
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #6, !srcloc !47
  %29 = call i32 @llvm.bswap.i32(i32 %28) #6
  %conv35 = trunc i32 %29 to i16
  %sharing = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 2
  %30 = ptrtoint ptr %sharing to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv35, ptr %sharing, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %31 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i84 = getelementptr i8, ptr %31, i32 76
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #6, !srcloc !47
  %33 = call i32 @llvm.bswap.i32(i32 %32) #6
  %conv38 = trunc i32 %33 to i16
  %err_type = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 3
  %34 = ptrtoint ptr %err_type to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv38, ptr %err_type, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %35 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i85 = getelementptr i8, ptr %35, i32 96
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #6, !srcloc !47
  %37 = call i32 @llvm.bswap.i32(i32 %36) #6
  %dll_a_ctrl = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 4
  %38 = ptrtoint ptr %dll_a_ctrl to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dll_a_ctrl, align 4
  %dll_b_ctrl = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 5
  %39 = ptrtoint ptr %dll_b_ctrl to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %dll_b_ctrl, align 4
  %call40 = call i32 @omap_type() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 3
  br i1 %cmp41.not, label %if.end27.if.else51_crit_edge, label %land.lhs.true43

if.end27.if.else51_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else51

land.lhs.true43:                                  ; preds = %if.end27
  %call44 = call i32 @omap_rev() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 875561779, i32 %call44)
  %cmp45 = icmp ugt i32 %call44, 875561779
  br i1 %cmp45, label %if.then47, label %land.lhs.true43.if.else51_crit_edge

land.lhs.true43.if.else51_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else51

if.then47:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %40 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i86 = getelementptr i8, ptr %40, i32 112
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #6, !srcloc !47
  %42 = and i32 %41, -822083329
  %43 = or i32 %42, 536936448
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  br label %if.end54

if.else51:                                        ; preds = %land.lhs.true43.if.else51_crit_edge, %if.end27.if.else51_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %45 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i87 = getelementptr i8, ptr %45, i32 112
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #6, !srcloc !47
  %47 = call i32 @llvm.bswap.i32(i32 %46) #6
  br label %if.end54

if.end54:                                         ; preds = %if.else51, %if.then47
  %.sink98 = phi i32 [ %47, %if.else51 ], [ %44, %if.then47 ]
  %power53 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 6
  %48 = ptrtoint ptr %power53 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink98, ptr %power53, align 4
  %cs_0 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 7
  %49 = ptrtoint ptr %cs_0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %cs_0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %50 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i88 = getelementptr i8, ptr %50, i32 128
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #6, !srcloc !47
  %52 = call i32 @llvm.bswap.i32(i32 %51) #6
  %mcfg_0 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 8
  %53 = ptrtoint ptr %mcfg_0 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %mcfg_0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %54 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i89 = getelementptr i8, ptr %54, i32 132
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #6, !srcloc !47
  %56 = call i32 @llvm.bswap.i32(i32 %55) #6
  %conv58 = trunc i32 %56 to i16
  %mr_0 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 9
  %57 = ptrtoint ptr %mr_0 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv58, ptr %mr_0, align 4
  %emr_1_0 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 10
  %58 = ptrtoint ptr %emr_1_0 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %emr_1_0, align 2
  %emr_2_0 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 11
  %59 = ptrtoint ptr %emr_2_0 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %emr_2_0, align 4
  %emr_3_0 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 12
  %60 = ptrtoint ptr %emr_3_0 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %emr_3_0, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %61 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i90 = getelementptr i8, ptr %61, i32 156
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #6, !srcloc !47
  %63 = call i32 @llvm.bswap.i32(i32 %62) #6
  %actim_ctrla_0 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 13
  %64 = ptrtoint ptr %actim_ctrla_0 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %actim_ctrla_0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %65 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i91 = getelementptr i8, ptr %65, i32 160
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #6, !srcloc !47
  %67 = call i32 @llvm.bswap.i32(i32 %66) #6
  %actim_ctrlb_0 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 14
  %68 = ptrtoint ptr %actim_ctrlb_0 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %actim_ctrlb_0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %69 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i92 = getelementptr i8, ptr %69, i32 164
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #6, !srcloc !47
  %71 = call i32 @llvm.bswap.i32(i32 %70) #6
  %rfr_ctrl_0 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 15
  %72 = ptrtoint ptr %rfr_ctrl_0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %rfr_ctrl_0, align 4
  %cs_1 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 16
  %73 = ptrtoint ptr %cs_1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %cs_1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %74 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i93 = getelementptr i8, ptr %74, i32 176
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #6, !srcloc !47
  %76 = call i32 @llvm.bswap.i32(i32 %75) #6
  %mcfg_1 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 17
  %77 = ptrtoint ptr %mcfg_1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %mcfg_1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %78 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i94 = getelementptr i8, ptr %78, i32 180
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #6, !srcloc !47
  %80 = call i32 @llvm.bswap.i32(i32 %79) #6
  %conv65 = trunc i32 %80 to i16
  %mr_1 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 18
  %81 = ptrtoint ptr %mr_1 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv65, ptr %mr_1, align 4
  %emr_1_1 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 19
  %82 = ptrtoint ptr %emr_1_1 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %emr_1_1, align 2
  %emr_2_1 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 20
  %83 = ptrtoint ptr %emr_2_1 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %emr_2_1, align 4
  %emr_3_1 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 21
  %84 = ptrtoint ptr %emr_3_1 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %emr_3_1, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %85 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i95 = getelementptr i8, ptr %85, i32 196
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #6, !srcloc !47
  %87 = call i32 @llvm.bswap.i32(i32 %86) #6
  %actim_ctrla_1 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 22
  %88 = ptrtoint ptr %actim_ctrla_1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %actim_ctrla_1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %89 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i96 = getelementptr i8, ptr %89, i32 200
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #6, !srcloc !47
  %91 = call i32 @llvm.bswap.i32(i32 %90) #6
  %actim_ctrlb_1 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 23
  %92 = ptrtoint ptr %actim_ctrlb_1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %actim_ctrlb_1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %93 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i97 = getelementptr i8, ptr %93, i32 212
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #6, !srcloc !47
  %95 = call i32 @llvm.bswap.i32(i32 %94) #6
  %rfr_ctrl_1 = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 24
  %96 = ptrtoint ptr %rfr_ctrl_1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %rfr_ctrl_1, align 4
  %dcdl_1_ctrl = getelementptr inbounds %struct.omap3_scratchpad_sdrc_block, ptr %sdrc_block_contents, i32 0, i32 25
  %97 = call ptr @memset(ptr %dcdl_1_ctrl, i32 0, i32 12)
  %call72 = call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @omap3_arm_context to i32)) #6
  %98 = ptrtoint ptr %arm_context_addr to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call72, ptr %arm_context_addr, align 4
  call void @mmiocpy(ptr noundef nonnull inttoptr (i32 -100652784 to ptr), ptr noundef nonnull %scratchpad_contents, i32 noundef 24) #6
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %4, align 4
  %add.ptr = getelementptr i8, ptr inttoptr (i32 -100652784 to ptr), i32 %100
  call void @mmiocpy(ptr noundef %add.ptr, ptr noundef nonnull %prcm_block_contents, i32 noundef 56) #6
  %101 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %5, align 4
  %add.ptr75 = getelementptr i8, ptr inttoptr (i32 -100652784 to ptr), i32 %102
  call void @mmiocpy(ptr noundef %add.ptr75, ptr noundef nonnull %sdrc_block_contents, i32 noundef 88) #6
  %103 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %5, align 4
  %add.ptr77 = getelementptr i8, ptr inttoptr (i32 -100652784 to ptr), i32 %104
  %add.ptr78 = getelementptr i8, ptr %add.ptr77, i32 88
  call void @mmiocpy(ptr noundef %add.ptr78, ptr noundef nonnull %arm_context_addr, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sdrc_block_contents) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %prcm_block_contents) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scratchpad_contents) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arm_context_addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_restore_3630() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_restore() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_restore_es3() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_prm_save_scratchpad_contents(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_cm_save_scratchpad_contents(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_control_save_context() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  store i32 %2, ptr @control_context, align 4
  %3 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i37 = getelementptr i8, ptr %3, i32 628
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #6, !srcloc !47
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  store i32 %5, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 1), align 4
  %6 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i38 = getelementptr i8, ptr %6, i32 632
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #6, !srcloc !47
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  store i32 %8, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 2), align 4
  %9 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i39 = getelementptr i8, ptr %9, i32 636
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #6, !srcloc !47
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  store i32 %11, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 3), align 4
  %12 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i40 = getelementptr i8, ptr %12, i32 656
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #6, !srcloc !47
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  store i32 %14, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 4), align 4
  %15 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i41 = getelementptr i8, ptr %15, i32 660
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #6, !srcloc !47
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  store i32 %17, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 5), align 4
  %18 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i42 = getelementptr i8, ptr %18, i32 664
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #6, !srcloc !47
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  store i32 %20, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 6), align 4
  %21 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i43 = getelementptr i8, ptr %21, i32 668
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #6, !srcloc !47
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  store i32 %23, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 7), align 4
  %24 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i44 = getelementptr i8, ptr %24, i32 672
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #6, !srcloc !47
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  store i32 %26, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 8), align 4
  %27 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i45 = getelementptr i8, ptr %27, i32 676
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #6, !srcloc !47
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  store i32 %29, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 9), align 4
  %30 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i46 = getelementptr i8, ptr %30, i32 688
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #6, !srcloc !47
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  store i32 %32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 10), align 4
  %33 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i47 = getelementptr i8, ptr %33, i32 728
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #6, !srcloc !47
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  store i32 %35, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 11), align 4
  %36 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i48 = getelementptr i8, ptr %36, i32 732
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #6, !srcloc !47
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  store i32 %38, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 12), align 4
  %39 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i49 = getelementptr i8, ptr %39, i32 1024
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #6, !srcloc !47
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  store i32 %41, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 13), align 4
  %42 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i50 = getelementptr i8, ptr %42, i32 1028
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #6, !srcloc !47
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  store i32 %44, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 14), align 4
  %45 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i51 = getelementptr i8, ptr %45, i32 2652
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #6, !srcloc !47
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  store i32 %47, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 15), align 4
  %48 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i52 = getelementptr i8, ptr %48, i32 1056
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #6, !srcloc !47
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  store i32 %50, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 16), align 4
  %51 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i53 = getelementptr i8, ptr %51, i32 1056
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #6, !srcloc !47
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  store i32 %53, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 17), align 4
  %54 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i54 = getelementptr i8, ptr %54, i32 1060
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #6, !srcloc !47
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  store i32 %56, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 18), align 4
  %57 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i55 = getelementptr i8, ptr %57, i32 1060
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #6, !srcloc !47
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #6
  store i32 %59, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 19), align 4
  %60 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i56 = getelementptr i8, ptr %60, i32 1064
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #6, !srcloc !47
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #6
  store i32 %62, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 20), align 4
  %63 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i57 = getelementptr i8, ptr %63, i32 1064
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #6, !srcloc !47
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  store i32 %65, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 21), align 4
  %66 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i58 = getelementptr i8, ptr %66, i32 1068
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #6, !srcloc !47
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  store i32 %68, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 22), align 4
  %69 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i59 = getelementptr i8, ptr %69, i32 1068
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #6, !srcloc !47
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  store i32 %71, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 23), align 4
  %72 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i60 = getelementptr i8, ptr %72, i32 1072
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #6, !srcloc !47
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  store i32 %74, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 24), align 4
  %75 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i61 = getelementptr i8, ptr %75, i32 1092
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #6, !srcloc !47
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #6
  store i32 %77, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 25), align 4
  %78 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i62 = getelementptr i8, ptr %78, i32 1096
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #6, !srcloc !47
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #6
  store i32 %80, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 26), align 4
  %81 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i63 = getelementptr i8, ptr %81, i32 1104
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #6, !srcloc !47
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #6
  store i32 %83, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 27), align 4
  %84 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i64 = getelementptr i8, ptr %84, i32 1108
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #6, !srcloc !47
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #6
  store i32 %86, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 28), align 4
  %87 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i65 = getelementptr i8, ptr %87, i32 1112
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #6, !srcloc !47
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #6
  store i32 %89, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 29), align 4
  %90 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i66 = getelementptr i8, ptr %90, i32 1116
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #6, !srcloc !47
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #6
  store i32 %92, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 30), align 4
  %93 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i67 = getelementptr i8, ptr %93, i32 1312
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #6, !srcloc !47
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #6
  store i32 %95, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 31), align 4
  %96 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i68 = getelementptr i8, ptr %96, i32 1316
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #6, !srcloc !47
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #6
  store i32 %98, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 32), align 4
  %99 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i69 = getelementptr i8, ptr %99, i32 1320
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #6, !srcloc !47
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #6
  store i32 %101, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 33), align 4
  %102 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i70 = getelementptr i8, ptr %102, i32 1328
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #6, !srcloc !47
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #6
  store i32 %104, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 34), align 4
  %105 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i71 = getelementptr i8, ptr %105, i32 1332
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #6, !srcloc !47
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #6
  store i32 %107, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 35), align 4
  %108 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i72 = getelementptr i8, ptr %108, i32 432
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #6, !srcloc !47
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #6
  store i32 %110, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 36), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_control_restore_context() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @control_context, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #6
  %2 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #6, !srcloc !48
  %3 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 1), align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %5 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i1 = getelementptr i8, ptr %5, i32 628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %4) #6, !srcloc !48
  %6 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 2), align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %8 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i2 = getelementptr i8, ptr %8, i32 632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %7) #6, !srcloc !48
  %9 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 3), align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %11 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i3 = getelementptr i8, ptr %11, i32 636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %10) #6, !srcloc !48
  %12 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 4), align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %14 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i4 = getelementptr i8, ptr %14, i32 656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %13) #6, !srcloc !48
  %15 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 5), align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %17 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i5 = getelementptr i8, ptr %17, i32 660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %16) #6, !srcloc !48
  %18 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 6), align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %20 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i6 = getelementptr i8, ptr %20, i32 664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %19) #6, !srcloc !48
  %21 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 7), align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %23 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i7 = getelementptr i8, ptr %23, i32 668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %22) #6, !srcloc !48
  %24 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 8), align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %26 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i8 = getelementptr i8, ptr %26, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %25) #6, !srcloc !48
  %27 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 9), align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %29 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i9 = getelementptr i8, ptr %29, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %28) #6, !srcloc !48
  %30 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 10), align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %32 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i10 = getelementptr i8, ptr %32, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %31) #6, !srcloc !48
  %33 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 11), align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  %35 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i11 = getelementptr i8, ptr %35, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %34) #6, !srcloc !48
  %36 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 12), align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %38 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i12 = getelementptr i8, ptr %38, i32 732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %37) #6, !srcloc !48
  %39 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 13), align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  %41 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i13 = getelementptr i8, ptr %41, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %40) #6, !srcloc !48
  %42 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 14), align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %44 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i14 = getelementptr i8, ptr %44, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %43) #6, !srcloc !48
  %45 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 15), align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  %47 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i15 = getelementptr i8, ptr %47, i32 2652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %46) #6, !srcloc !48
  %48 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 16), align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  %50 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i16 = getelementptr i8, ptr %50, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %49) #6, !srcloc !48
  %51 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 17), align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  %53 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i17 = getelementptr i8, ptr %53, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %52) #6, !srcloc !48
  %54 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 18), align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  %56 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i18 = getelementptr i8, ptr %56, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %55) #6, !srcloc !48
  %57 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 19), align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  %59 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i19 = getelementptr i8, ptr %59, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %58) #6, !srcloc !48
  %60 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 20), align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  %62 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i20 = getelementptr i8, ptr %62, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %61) #6, !srcloc !48
  %63 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 21), align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  %65 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i21 = getelementptr i8, ptr %65, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %64) #6, !srcloc !48
  %66 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 22), align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  %68 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i22 = getelementptr i8, ptr %68, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %67) #6, !srcloc !48
  %69 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 23), align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  %71 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i23 = getelementptr i8, ptr %71, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %70) #6, !srcloc !48
  %72 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 24), align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  %74 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i24 = getelementptr i8, ptr %74, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %73) #6, !srcloc !48
  %75 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 25), align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #6
  %77 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i25 = getelementptr i8, ptr %77, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %76) #6, !srcloc !48
  %78 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 26), align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #6
  %80 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i26 = getelementptr i8, ptr %80, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %79) #6, !srcloc !48
  %81 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 27), align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #6
  %83 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i27 = getelementptr i8, ptr %83, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %82) #6, !srcloc !48
  %84 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 28), align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  %86 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i28 = getelementptr i8, ptr %86, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %85) #6, !srcloc !48
  %87 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 29), align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  %89 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i29 = getelementptr i8, ptr %89, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %88) #6, !srcloc !48
  %90 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 30), align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #6
  %92 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i30 = getelementptr i8, ptr %92, i32 1116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %91) #6, !srcloc !48
  %93 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 31), align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #6
  %95 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i31 = getelementptr i8, ptr %95, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %94) #6, !srcloc !48
  %96 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 32), align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #6
  %98 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i32 = getelementptr i8, ptr %98, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %97) #6, !srcloc !48
  %99 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 33), align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #6
  %101 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i33 = getelementptr i8, ptr %101, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %100) #6, !srcloc !48
  %102 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 34), align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #6
  %104 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i34 = getelementptr i8, ptr %104, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %103) #6, !srcloc !48
  %105 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 35), align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #6
  %107 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i35 = getelementptr i8, ptr %107, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %106) #6, !srcloc !48
  %108 = load i32, ptr getelementptr inbounds (%struct.omap3_control_regs, ptr @control_context, i32 0, i32 36), align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #6
  %110 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i36 = getelementptr i8, ptr %110, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %109) #6, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3630_ctrl_disable_rta() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #6
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 909115392, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 909115392
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !48
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_ctrl_save_padconf() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 624
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %2 = or i32 %1, 33554432
  %3 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %2) #6, !srcloc !48
  %4 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i45 = getelementptr i8, ptr %4, i32 756
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #6, !srcloc !47
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not6 = icmp eq i32 %6, 0
  br i1 %tobool.not6, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #6
  %8 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i4 = getelementptr i8, ptr %8, i32 756
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #6, !srcloc !47
  %10 = and i32 %9, 16777216
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_ctrl_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !48
  %1 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #6, !srcloc !48
  tail call fastcc void @omap3_ctrl_setup_d2d_padconf() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap3_ctrl_setup_d2d_padconf() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 592
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !47
  %2 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %2, i32 592
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12) #6, !srcloc !47
  %4 = and i32 %3, 65535
  %5 = and i32 %1, -402718720
  %6 = or i32 %5, %4
  %7 = or i32 %6, 402653184
  %8 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %8, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %7) #6, !srcloc !48
  %9 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %9, i32 596
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #6, !srcloc !47
  %11 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %11, i32 596
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16) #6, !srcloc !47
  %13 = and i32 %12, 65535
  %14 = and i32 %10, -402718720
  %15 = or i32 %14, %13
  %16 = or i32 %15, 402653184
  %17 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i14.i20 = getelementptr i8, ptr %17, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i20, i32 %16) #6, !srcloc !48
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_control_base_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #6
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !49
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_scrm_dt_match_table, ptr noundef nonnull %match) #6
  %tobool.not17 = icmp eq ptr %call, null
  br i1 %tobool.not17, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %entry.for.body_crit_edge
  %np.018 = phi ptr [ %call7, %if.end5.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %data1 = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1, align 4
  %call2 = call ptr @of_iomap(ptr noundef nonnull %np.018, i32 noundef 0) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call2, ptr @omap2_ctrl_base, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %mem6 = getelementptr inbounds %struct.control_init_data, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %mem6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %mem6, align 4
  %call7 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.018, ptr noundef nonnull @omap_scrm_dt_match_table, ptr noundef nonnull %match) #6
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_control_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #6
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !49
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_scrm_dt_match_table, ptr noundef nonnull %match) #6
  %tobool.not47 = icmp eq ptr %call, null
  br i1 %tobool.not47, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.048 = phi ptr [ %call22, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %data1 = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1, align 4
  %call2 = call ptr @of_get_child_by_name(ptr noundef nonnull %np.048, ptr noundef nonnull @.str.4) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call4 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %call2) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call8 = call ptr @of_get_child_by_name(ptr noundef nonnull %call2, ptr noundef nonnull @.str.5) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.for.inc_crit_edge, label %if.then10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %if.end
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %4, align 4
  %call11 = call i32 @omap2_clk_provider_init(ptr noundef nonnull %call2, i32 noundef %7, ptr noundef %call4, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.for.inc_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  %mem = getelementptr inbounds %struct.omap_prcm_init_data, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  %call17 = call i32 @omap2_clk_provider_init(ptr noundef nonnull %np.048, i32 noundef %9, ptr noundef null, ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else.for.inc_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then10.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %call22 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.048, ptr noundef nonnull @omap_scrm_dt_match_table, ptr noundef nonnull %match) #6
  %tobool.not = icmp eq ptr %call22, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i = call i32 @omap_rev() #6
  %shr.mask.i = and i32 %call.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i)
  %cmp.i46.not = icmp eq i32 %shr.mask.i, 1124073472
  br i1 %cmp.i46.not, label %if.then25, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @cpu_notifier, ptr @omap_control_init.nb, align 4
  %call26 = call i32 @cpu_pm_register_notifier(ptr noundef nonnull @omap_control_init.nb) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %for.end.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %5, %if.then6 ], [ 0, %if.then25 ], [ 0, %for.end.cleanup_crit_edge ], [ %call17, %if.else.cleanup_crit_edge ], [ %call11, %if.then10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_provider_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_notifier(ptr nocapture noundef readnone %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %1 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [55 x i32], ptr @am43xx_control_reg_offsets, i32 0, i32 %i.05.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %4 = and i32 %3, 65532
  %5 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !47
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %arrayidx1.i = getelementptr [55 x i32], ptr @am33xx_control_vals, i32 0, i32 %i.05.i
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx1.i, align 4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 55
  br i1 %exitcond.not.i, label %for.body.i.sw.epilog_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %9 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.for.body.i11_crit_edge

sw.bb1.for.body.i11_crit_edge:                    ; preds = %sw.bb1
  br label %for.body.i11

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %sw.bb1.for.body.i11_crit_edge
  %i.05.i5 = phi i32 [ %inc.i9, %for.body.i11.for.body.i11_crit_edge ], [ 0, %sw.bb1.for.body.i11_crit_edge ]
  %arrayidx.i6 = getelementptr [55 x i32], ptr @am33xx_control_vals, i32 0, i32 %i.05.i5
  %10 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i6, align 4
  %arrayidx1.i7 = getelementptr [55 x i32], ptr @am43xx_control_reg_offsets, i32 0, i32 %i.05.i5
  %12 = ptrtoint ptr %arrayidx1.i7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.i7, align 4
  %14 = and i32 %13, 65532
  %15 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %16 = load ptr, ptr @omap2_ctrl_base, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %16, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8, i32 %15) #6, !srcloc !48
  %inc.i9 = add nuw nsw i32 %i.05.i5, 1
  %exitcond.not.i10 = icmp eq i32 %inc.i9, 55
  br i1 %exitcond.not.i10, label %for.body.i11.sw.epilog_crit_edge, label %for.body.i11.for.body.i11_crit_edge

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i11

for.body.i11.sw.epilog_crit_edge:                 ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.i11.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_control_legacy_iomap_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap2_ctrl_base, align 4
  tail call void @omap2_clk_legacy_provider_init(i32 noundef 3, ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_legacy_provider_init(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/control.c", i32 245, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap_ctrl_write_dsp_boot_addr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap_ctrl_write_dsp_boot_addr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/control.c", i32 266, i32 3}
!8 = !{ptr @omap_ctrl_write_dsp_boot_mode._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @omap_ctrl_write_dsp_boot_mode._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @omap_control_init.nb, !11, !"nb", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/control.c", i32 799, i32 31}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/control.c", i32 808, i32 39}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/control.c", i32 816, i32 39}
!16 = !{ptr @omap2_ctrl_base, !17, !"omap2_ctrl_base", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/control.c", i32 35, i32 22}
!18 = distinct !{null, !19, !"omap2_ctrl_offset", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/control.c", i32 36, i32 12}
!20 = !{ptr @omap3_secure_ram_storage, !21, !"omap3_secure_ram_storage", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/control.c", i32 86, i32 7}
!22 = !{ptr @omap3_arm_context, !23, !"omap3_arm_context", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/control.c", i32 94, i32 5}
!24 = !{ptr @control_context, !25, !"control_context", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/control.c", i32 136, i32 34}
!26 = !{ptr @omap_scrm_dt_match_table, !27, !"omap_scrm_dt_match_table", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/control.c", i32 740, i32 34}
!28 = !{ptr @ctrl_data, !29, !"ctrl_data", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/control.c", i32 727, i32 33}
!30 = !{ptr @omap2_ctrl_data, !31, !"omap2_ctrl_data", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/control.c", i32 731, i32 39}
!32 = !{ptr @ctrl_aux_data, !33, !"ctrl_aux_data", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/control.c", i32 736, i32 39}
!34 = !{ptr @am43xx_control_reg_offsets, !35, !"am43xx_control_reg_offsets", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/control.c", i32 617, i32 22}
!36 = !{ptr @am33xx_control_vals, !37, !"am33xx_control_vals", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/control.c", i32 675, i32 12}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 1270253}
!48 = !{i64 1269835}
!49 = !{!"auto-init"}
