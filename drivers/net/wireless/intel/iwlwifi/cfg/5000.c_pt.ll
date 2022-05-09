; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/cfg/5000.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/cfg/5000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_ht_params = type { i8, i8 }
%struct.iwl_eeprom_params = type { [7 x i8], i8 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }

@iwl5000_base_params = internal constant { %struct.iwl_base_params, [44 x i8] } { %struct.iwl_base_params { i32 0, i16 2048, i16 512, i8 -124, i16 20, i32 256, i8 0, i8 51 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Intel(R) Ultimate N WiFi Link 5300 AGN\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-5000-\00", [18 x i8] zeroinitializer }, align 32
@iwl5000_ht_params = internal constant { %struct.iwl_ht_params, [30 x i8] } { %struct.iwl_ht_params { i8 -128, i8 3 }, [30 x i8] zeroinitializer }, align 32
@iwl5000_eeprom_params = internal constant { %struct.iwl_eeprom_params, [24 x i8] } { %struct.iwl_eeprom_params { [7 x i8] c"\08&B\\t\82\92", i8 0 }, [24 x i8] zeroinitializer }, align 32
@iwl5300_agn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl5000_base_params, i32 7, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str, ptr @.str.1, ptr @iwl5000_ht_params, ptr @iwl5000_eeprom_params, ptr null, ptr null, ptr null, i32 2, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 282, i16 4, i8 0, i8 0, i8 0, i8 7, i8 7, i8 0, i8 0, i8 0, i8 5, i8 1, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Intel(R) WiFi Link 5100 BGN\00", [36 x i8] zeroinitializer }, align 32
@iwl5100_bgn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl5000_base_params, i32 7, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.2, ptr @.str.1, ptr @iwl5000_ht_params, ptr @iwl5000_eeprom_params, ptr null, ptr null, ptr null, i32 2, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 282, i16 4, i8 0, i8 0, i8 0, i8 2, i8 3, i8 0, i8 0, i8 0, i8 5, i8 1, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Intel(R) WiFi Link 5100 ABG\00", [36 x i8] zeroinitializer }, align 32
@iwl5100_abg_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl5000_base_params, i32 7, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.3, ptr @.str.1, ptr null, ptr @iwl5000_eeprom_params, ptr null, ptr null, ptr null, i32 2, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 282, i16 4, i8 0, i8 0, i8 0, i8 2, i8 3, i8 0, i8 0, i8 0, i8 5, i8 1, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Intel(R) WiFi Link 5100 AGN\00", [36 x i8] zeroinitializer }, align 32
@iwl5100_agn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl5000_base_params, i32 7, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.4, ptr @.str.1, ptr @iwl5000_ht_params, ptr @iwl5000_eeprom_params, ptr null, ptr null, ptr null, i32 2, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 282, i16 4, i8 0, i8 0, i8 0, i8 2, i8 3, i8 0, i8 0, i8 0, i8 5, i8 1, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Intel(R) WiMAX/WiFi Link 5350 AGN\00", [62 x i8] zeroinitializer }, align 32
@iwl5350_agn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl5000_base_params, i32 7, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.5, ptr @.str.1, ptr @iwl5000_ht_params, ptr @iwl5000_eeprom_params, ptr null, ptr null, ptr null, i32 2, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 542, i16 4, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i8 1, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Intel(R) WiMAX/WiFi Link 5150 AGN\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-5150-\00", [18 x i8] zeroinitializer }, align 32
@iwl5150_agn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl5000_base_params, i32 8, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.6, ptr @.str.7, ptr @iwl5000_ht_params, ptr @iwl5000_eeprom_params, ptr null, ptr null, ptr null, i32 2, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 542, i16 4, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 1, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Intel(R) WiMAX/WiFi Link 5150 ABG\00", [62 x i8] zeroinitializer }, align 32
@iwl5150_abg_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl5000_base_params, i32 8, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.8, ptr @.str.7, ptr null, ptr @iwl5000_eeprom_params, ptr null, ptr null, ptr null, i32 2, i32 0, i32 49152, i32 131072, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 542, i16 4, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 1, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware339 = internal constant [38 x i8] c"iwlwifi.firmware=iwlwifi-5000-5.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware340 = internal constant [38 x i8] c"iwlwifi.firmware=iwlwifi-5150-2.ucode\00", section ".modinfo", align 1
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"iwl5000_base_params\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 33, i32 37 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 75, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 76, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"iwl5000_ht_params\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 44, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"iwl5000_eeprom_params\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 49, i32 39 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"iwl5300_agn_cfg\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 74, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 84, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"iwl5100_bgn_cfg\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 83, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 92, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"iwl5100_abg_cfg\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 91, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 99, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"iwl5100_agn_cfg\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 98, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 107, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"iwl5350_agn_cfg\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 106, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 138, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 139, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"iwl5150_agn_cfg\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 137, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 145, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"iwl5150_abg_cfg\00", align 1
@___asan_gen_.64 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 144, i32 22 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_firmware339, ptr @__UNIQUE_ID_firmware340, ptr @iwl5000_base_params, ptr @.str, ptr @.str.1, ptr @iwl5000_ht_params, ptr @iwl5000_eeprom_params, ptr @iwl5300_agn_cfg, ptr @.str.2, ptr @iwl5100_bgn_cfg, ptr @.str.3, ptr @iwl5100_abg_cfg, ptr @.str.4, ptr @iwl5100_agn_cfg, ptr @.str.5, ptr @iwl5350_agn_cfg, ptr @.str.6, ptr @.str.7, ptr @iwl5150_agn_cfg, ptr @.str.8, ptr @iwl5150_abg_cfg], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5000_base_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5000_ht_params to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5000_eeprom_params to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5100_bgn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5100_abg_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5350_agn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5150_agn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5150_abg_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 75, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 76, i32 2}
!4 = !{ptr @iwl5300_agn_cfg, !5, !"iwl5300_agn_cfg", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 74, i32 22}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 84, i32 10}
!8 = !{ptr @iwl5100_bgn_cfg, !9, !"iwl5100_bgn_cfg", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 83, i32 22}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 92, i32 10}
!12 = !{ptr @iwl5100_abg_cfg, !13, !"iwl5100_abg_cfg", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 91, i32 22}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 99, i32 10}
!16 = !{ptr @iwl5100_agn_cfg, !17, !"iwl5100_agn_cfg", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 98, i32 22}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 107, i32 10}
!20 = !{ptr @iwl5350_agn_cfg, !21, !"iwl5350_agn_cfg", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 106, i32 22}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 138, i32 10}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 139, i32 2}
!26 = !{ptr @iwl5150_agn_cfg, !27, !"iwl5150_agn_cfg", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 137, i32 22}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 145, i32 10}
!30 = !{ptr @iwl5150_abg_cfg, !31, !"iwl5150_abg_cfg", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 144, i32 22}
!32 = !{ptr @__UNIQUE_ID_firmware339, !33, !"__UNIQUE_ID_firmware339", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 149, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware340, !35, !"__UNIQUE_ID_firmware340", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 150, i32 1}
!36 = !{ptr @iwl5000_base_params, !37, !"iwl5000_base_params", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 33, i32 37}
!38 = !{ptr @iwl5000_ht_params, !39, !"iwl5000_ht_params", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 44, i32 35}
!40 = !{ptr @iwl5000_eeprom_params, !41, !"iwl5000_eeprom_params", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/5000.c", i32 49, i32 39}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
