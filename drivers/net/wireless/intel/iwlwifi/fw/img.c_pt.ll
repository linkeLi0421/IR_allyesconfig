; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/fw/img.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/fw/img.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iwl_fw_lookup_cmd_ver\22, \22a\22\09"
module asm "\09.weak\09__crc_iwl_fw_lookup_cmd_ver\09\09\09\09"
module asm "\09.long\09__crc_iwl_fw_lookup_cmd_ver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iwl_fw_lookup_cmd_ver:\09\09\09\09\09"
module asm "\09.asciz \09\22iwl_fw_lookup_cmd_ver\22\09\09\09\09\09"
module asm "__kstrtabns_iwl_fw_lookup_cmd_ver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iwl_fw_lookup_notif_ver\22, \22a\22\09"
module asm "\09.weak\09__crc_iwl_fw_lookup_notif_ver\09\09\09\09"
module asm "\09.long\09__crc_iwl_fw_lookup_notif_ver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iwl_fw_lookup_notif_ver:\09\09\09\09\09"
module asm "\09.asciz \09\22iwl_fw_lookup_notif_ver\22\09\09\09\09\09"
module asm "__kstrtabns_iwl_fw_lookup_notif_ver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iwl_fw_lookup_assert_desc\22, \22a\22\09"
module asm "\09.weak\09__crc_iwl_fw_lookup_assert_desc\09\09\09\09"
module asm "\09.long\09__crc_iwl_fw_lookup_assert_desc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iwl_fw_lookup_assert_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22iwl_fw_lookup_assert_desc\22\09\09\09\09\09"
module asm "__kstrtabns_iwl_fw_lookup_assert_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon = type { ptr, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_fw_cmd_version = type { i8, i8, i8, i8 }

@__kstrtab_iwl_fw_lookup_cmd_ver = external dso_local constant [0 x i8], align 1
@__kstrtabns_iwl_fw_lookup_cmd_ver = external dso_local constant [0 x i8], align 1
@__ksymtab_iwl_fw_lookup_cmd_ver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iwl_fw_lookup_cmd_ver to i32), ptr @__kstrtab_iwl_fw_lookup_cmd_ver, ptr @__kstrtabns_iwl_fw_lookup_cmd_ver }, section "___ksymtab_gpl+iwl_fw_lookup_cmd_ver", align 4
@__kstrtab_iwl_fw_lookup_notif_ver = external dso_local constant [0 x i8], align 1
@__kstrtabns_iwl_fw_lookup_notif_ver = external dso_local constant [0 x i8], align 1
@__ksymtab_iwl_fw_lookup_notif_ver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iwl_fw_lookup_notif_ver to i32), ptr @__kstrtab_iwl_fw_lookup_notif_ver, ptr @__kstrtabns_iwl_fw_lookup_notif_ver }, section "___ksymtab_gpl+iwl_fw_lookup_notif_ver", align 4
@advanced_lookup = internal constant { [21 x %struct.anon], [56 x i8] } { [21 x %struct.anon] [%struct.anon { ptr @.str, i32 52 }, %struct.anon { ptr @.str.1, i32 53 }, %struct.anon { ptr @.str.2, i32 55 }, %struct.anon { ptr @.str.3, i32 56 }, %struct.anon { ptr @.str.3, i32 57 }, %struct.anon { ptr @.str.4, i32 60 }, %struct.anon { ptr @.str.5, i32 61 }, %struct.anon { ptr @.str.6, i32 70 }, %struct.anon { ptr @.str.7, i32 76 }, %struct.anon { ptr @.str.8, i32 84 }, %struct.anon { ptr @.str.9, i32 92 }, %struct.anon { ptr @.str.10, i32 100 }, %struct.anon { ptr @.str.11, i32 102 }, %struct.anon { ptr @.str.12, i32 112 }, %struct.anon { ptr @.str.13, i32 113 }, %struct.anon { ptr @.str.14, i32 115 }, %struct.anon { ptr @.str.15, i32 124 }, %struct.anon { ptr @.str.16, i32 132 }, %struct.anon { ptr @.str.17, i32 134 }, %struct.anon { ptr @.str.18, i32 1050381 }, %struct.anon { ptr @.str.19, i32 0 }], [56 x i8] zeroinitializer }, align 32
@__kstrtab_iwl_fw_lookup_assert_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_iwl_fw_lookup_assert_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_iwl_fw_lookup_assert_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iwl_fw_lookup_assert_desc to i32), ptr @__kstrtab_iwl_fw_lookup_assert_desc, ptr @__kstrtabns_iwl_fw_lookup_assert_desc }, section "___ksymtab_gpl+iwl_fw_lookup_assert_desc", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NMI_INTERRUPT_WDG\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYSASSERT\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UCODE_VERSION_MISMATCH\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BAD_COMMAND\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NMI_INTERRUPT_DATA_ACTION_PT\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FATAL_ERROR\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NMI_TRM_HW_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NMI_INTERRUPT_TRM\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NMI_INTERRUPT_BREAK_POINT\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NMI_INTERRUPT_WDG_RXF_FULL\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NMI_INTERRUPT_WDG_NO_RBD_RXF_FULL\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NMI_INTERRUPT_HOST\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NMI_INTERRUPT_LMAC_FATAL\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NMI_INTERRUPT_UMAC_FATAL\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NMI_INTERRUPT_OTHER_LMAC_FATAL\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NMI_INTERRUPT_ACTION_PT\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NMI_INTERRUPT_UNKNOWN\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NMI_INTERRUPT_INST_ACTION_PT\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PNVM_MISSING\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADVANCED_SYSASSERT\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 32, i64 52, i64 53, i64 55, i64 56, i64 57, i64 60, i64 61, i64 70, i64 76, i64 84, i64 92, i64 100, i64 102, i64 112, i64 113, i64 115, i64 124, i64 132, i64 134, i64 1050381]
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"advanced_lookup\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 55, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 56, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 57, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 58, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 59, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 61, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 62, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 63, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 64, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 65, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 66, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 67, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 68, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 69, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 70, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 71, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 72, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 73, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 74, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 75, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/img.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 76, i32 4 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_iwl_fw_lookup_assert_desc, ptr @__ksymtab_iwl_fw_lookup_cmd_ver, ptr @__ksymtab_iwl_fw_lookup_notif_ver, ptr @advanced_lookup, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advanced_lookup to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr nocapture noundef readonly %fw, i8 noundef zeroext %grp, i8 noundef zeroext %cmd, i8 noundef zeroext %def) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_versions = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %cmd_versions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_versions, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %n_cmd_versions = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 10
  %2 = ptrtoint ptr %n_cmd_versions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_cmd_versions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not.not = icmp eq i32 %3, 0
  br i1 %tobool3.not.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %entry1.037 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %lor.lhs.false.for.body_crit_edge ]
  %group = getelementptr inbounds %struct.iwl_fw_cmd_version, ptr %entry1.037, i32 0, i32 1
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %group, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %grp)
  %cmp9 = icmp eq i8 %5, %grp
  br i1 %cmp9, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %entry1.037 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %entry1.037, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %cmd)
  %cmp14 = icmp eq i8 %7, %cmd
  br i1 %cmp14, label %if.then16, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %cmd_ver = getelementptr inbounds %struct.iwl_fw_cmd_version, ptr %entry1.037, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_ver to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %9)
  %cmp18 = icmp eq i8 %9, 99
  %def. = select i1 %cmp18, i8 %def, i8 %9
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.039, 1
  %incdec.ptr = getelementptr %struct.iwl_fw_cmd_version, ptr %entry1.037, i32 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then16, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %def, %lor.lhs.false.cleanup_crit_edge ], [ %def, %entry.cleanup_crit_edge ], [ %def., %if.then16 ], [ %def, %for.inc.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr nocapture noundef readonly %fw, i8 noundef zeroext %grp, i8 noundef zeroext %cmd, i8 noundef zeroext %def) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_versions = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %cmd_versions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_versions, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %n_cmd_versions = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 10
  %2 = ptrtoint ptr %n_cmd_versions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_cmd_versions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not.not = icmp eq i32 %3, 0
  br i1 %tobool3.not.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %entry1.037 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %lor.lhs.false.for.body_crit_edge ]
  %group = getelementptr inbounds %struct.iwl_fw_cmd_version, ptr %entry1.037, i32 0, i32 1
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %group, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %grp)
  %cmp9 = icmp eq i8 %5, %grp
  br i1 %cmp9, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %entry1.037 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %entry1.037, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %cmd)
  %cmp14 = icmp eq i8 %7, %cmd
  br i1 %cmp14, label %if.then16, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %notif_ver = getelementptr inbounds %struct.iwl_fw_cmd_version, ptr %entry1.037, i32 0, i32 3
  %8 = ptrtoint ptr %notif_ver to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %notif_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %9)
  %cmp18 = icmp eq i8 %9, 99
  %def. = select i1 %cmp18, i8 %def, i8 %9
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.039, 1
  %incdec.ptr = getelementptr %struct.iwl_fw_cmd_version, ptr %entry1.037, i32 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then16, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %def, %lor.lhs.false.cleanup_crit_edge ], [ %def, %entry.cleanup_crit_edge ], [ %def., %if.then16 ], [ %def, %for.inc.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_fw_lookup_assert_desc(i32 noundef %num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %num, 268435455
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %for.inc.19 [
    i32 52, label %entry.cleanup_crit_edge
    i32 53, label %cleanup.fold.split
    i32 55, label %cleanup.fold.split11
    i32 56, label %cleanup.fold.split12
    i32 57, label %cleanup.fold.split13
    i32 60, label %cleanup.fold.split14
    i32 61, label %cleanup.fold.split15
    i32 70, label %cleanup.fold.split16
    i32 76, label %cleanup.fold.split17
    i32 84, label %cleanup.fold.split18
    i32 92, label %cleanup.fold.split19
    i32 100, label %cleanup.fold.split20
    i32 102, label %cleanup.fold.split21
    i32 112, label %cleanup.fold.split22
    i32 113, label %cleanup.fold.split23
    i32 115, label %cleanup.fold.split24
    i32 124, label %cleanup.fold.split25
    i32 132, label %cleanup.fold.split26
    i32 134, label %cleanup.fold.split27
    i32 1050381, label %cleanup.fold.split28
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.19:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split28, %cleanup.fold.split27, %cleanup.fold.split26, %cleanup.fold.split25, %cleanup.fold.split24, %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split, %for.inc.19, %entry.cleanup_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 20, %for.inc.19 ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split11 ], [ 3, %cleanup.fold.split12 ], [ 4, %cleanup.fold.split13 ], [ 5, %cleanup.fold.split14 ], [ 6, %cleanup.fold.split15 ], [ 7, %cleanup.fold.split16 ], [ 8, %cleanup.fold.split17 ], [ 9, %cleanup.fold.split18 ], [ 10, %cleanup.fold.split19 ], [ 11, %cleanup.fold.split20 ], [ 12, %cleanup.fold.split21 ], [ 13, %cleanup.fold.split22 ], [ 14, %cleanup.fold.split23 ], [ 15, %cleanup.fold.split24 ], [ 16, %cleanup.fold.split25 ], [ 17, %cleanup.fold.split26 ], [ 18, %cleanup.fold.split27 ], [ 19, %cleanup.fold.split28 ]
  %retval.0.in = getelementptr [21 x %struct.anon], ptr @advanced_lookup, i32 0, i32 %i.0.lcssa
  %1 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %retval.0 = load ptr, ptr %retval.0.in, align 4
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__ksymtab_iwl_fw_lookup_cmd_ver, !1, !"__ksymtab_iwl_fw_lookup_cmd_ver", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 28, i32 1}
!2 = !{ptr @__ksymtab_iwl_fw_lookup_notif_ver, !3, !"__ksymtab_iwl_fw_lookup_notif_ver", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 50, i32 1}
!4 = !{ptr @__ksymtab_iwl_fw_lookup_assert_desc, !5, !"__ksymtab_iwl_fw_lookup_assert_desc", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 90, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 56, i32 4}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 57, i32 4}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 58, i32 4}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 59, i32 4}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 61, i32 4}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 62, i32 4}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 63, i32 4}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 64, i32 4}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 65, i32 4}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 66, i32 4}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 67, i32 4}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 68, i32 4}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 69, i32 4}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 70, i32 4}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 71, i32 4}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 72, i32 4}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 73, i32 4}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 74, i32 4}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 75, i32 4}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 76, i32 4}
!46 = !{ptr @advanced_lookup, !47, !"advanced_lookup", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.c", i32 55, i32 3}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
