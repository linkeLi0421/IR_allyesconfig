; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/cfg/1000.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/cfg/1000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_ht_params = type { i8, i8 }
%struct.iwl_eeprom_params = type { [7 x i8], i8 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }

@iwl1000_base_params = internal constant { %struct.iwl_base_params, [44 x i8] } { %struct.iwl_base_params { i32 0, i16 2048, i16 128, i8 -124, i16 20, i32 256, i8 3, i8 51 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Intel(R) Centrino(R) Wireless-N 1000 BGN\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-1000-\00", [18 x i8] zeroinitializer }, align 32
@iwl1000_ht_params = internal constant { %struct.iwl_ht_params, [30 x i8] } { %struct.iwl_ht_params { i8 -112, i8 1 }, [30 x i8] zeroinitializer }, align 32
@iwl1000_eeprom_params = internal constant { %struct.iwl_eeprom_params, [24 x i8] } { %struct.iwl_eeprom_params { [7 x i8] c"\08&B\\t\82\00", i8 0 }, [24 x i8] zeroinitializer }, align 32
@iwl1000_bgn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl1000_base_params, i32 1, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str, ptr @.str.1, ptr @iwl1000_ht_params, ptr @iwl1000_eeprom_params, ptr null, ptr null, ptr null, i32 2, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 348, i16 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i8 1, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Intel(R) Centrino(R) Wireless-N 1000 BG\00", [56 x i8] zeroinitializer }, align 32
@iwl1000_bg_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl1000_base_params, i32 1, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.2, ptr @.str.1, ptr null, ptr @iwl1000_eeprom_params, ptr null, ptr null, ptr null, i32 2, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 348, i16 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i8 1, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Intel(R) Centrino(R) Wireless-N 100 BGN\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iwlwifi-100-\00", [19 x i8] zeroinitializer }, align 32
@iwl100_bgn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl1000_base_params, i32 2, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.3, ptr @.str.4, ptr @iwl1000_ht_params, ptr @iwl1000_eeprom_params, ptr null, ptr null, ptr null, i32 1, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 348, i16 4, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i8 5, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Intel(R) Centrino(R) Wireless-N 100 BG\00", [57 x i8] zeroinitializer }, align 32
@iwl100_bg_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl1000_base_params, i32 2, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.5, ptr @.str.4, ptr null, ptr @iwl1000_eeprom_params, ptr null, ptr null, ptr null, i32 1, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 348, i16 4, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i8 5, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware339 = internal constant [38 x i8] c"iwlwifi.firmware=iwlwifi-1000-5.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware340 = internal constant [37 x i8] c"iwlwifi.firmware=iwlwifi-100-5.ucode\00", section ".modinfo", align 1
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"iwl1000_base_params\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 32, i32 37 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 77, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 78, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"iwl1000_ht_params\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 45, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"iwl1000_eeprom_params\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 51, i32 39 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"iwl1000_bgn_cfg\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 76, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 83, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"iwl1000_bg_cfg\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 82, i32 22 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 102, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 103, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"iwl100_bgn_cfg\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 101, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 108, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"iwl100_bg_cfg\00", align 1
@___asan_gen_.43 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 107, i32 22 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_firmware339, ptr @__UNIQUE_ID_firmware340, ptr @iwl1000_base_params, ptr @.str, ptr @.str.1, ptr @iwl1000_ht_params, ptr @iwl1000_eeprom_params, ptr @iwl1000_bgn_cfg, ptr @.str.2, ptr @iwl1000_bg_cfg, ptr @.str.3, ptr @.str.4, ptr @iwl100_bgn_cfg, ptr @.str.5, ptr @iwl100_bg_cfg], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl1000_base_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl1000_ht_params to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl1000_eeprom_params to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl1000_bgn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl1000_bg_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl100_bgn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl100_bg_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 77, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 78, i32 2}
!4 = !{ptr @iwl1000_bgn_cfg, !5, !"iwl1000_bgn_cfg", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 76, i32 22}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 83, i32 10}
!8 = !{ptr @iwl1000_bg_cfg, !9, !"iwl1000_bg_cfg", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 82, i32 22}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 102, i32 10}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 103, i32 2}
!14 = !{ptr @iwl100_bgn_cfg, !15, !"iwl100_bgn_cfg", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 101, i32 22}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 108, i32 10}
!18 = !{ptr @iwl100_bg_cfg, !19, !"iwl100_bg_cfg", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 107, i32 22}
!20 = !{ptr @__UNIQUE_ID_firmware339, !21, !"__UNIQUE_ID_firmware339", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 112, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware340, !23, !"__UNIQUE_ID_firmware340", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 113, i32 1}
!24 = !{ptr @iwl1000_base_params, !25, !"iwl1000_base_params", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 32, i32 37}
!26 = !{ptr @iwl1000_ht_params, !27, !"iwl1000_ht_params", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 45, i32 35}
!28 = !{ptr @iwl1000_eeprom_params, !29, !"iwl1000_eeprom_params", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/1000.c", i32 51, i32 39}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
