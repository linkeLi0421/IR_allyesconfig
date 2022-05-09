; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/cfg/2000.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/cfg/2000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_ht_params = type { i8, i8 }
%struct.iwl_eeprom_params = type { [7 x i8], i8 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }

@iwl2000_base_params = internal constant { %struct.iwl_base_params, [44 x i8] } { %struct.iwl_base_params { i32 2500, i16 2048, i16 512, i8 68, i16 20, i32 256, i8 4, i8 51 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Intel(R) Centrino(R) Wireless-N 2200 BGN\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-2000-\00", [18 x i8] zeroinitializer }, align 32
@iwl2000_ht_params = internal constant { %struct.iwl_ht_params, [30 x i8] } { %struct.iwl_ht_params { i8 -112, i8 1 }, [30 x i8] zeroinitializer }, align 32
@iwl20x0_eeprom_params = internal constant { %struct.iwl_eeprom_params, [24 x i8] } { %struct.iwl_eeprom_params { [7 x i8] c"\08&B\\t\80\00", i8 1 }, [24 x i8] zeroinitializer }, align 32
@iwl2000_2bgn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl2000_base_params, i32 3, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str, ptr @.str.1, ptr @iwl2000_ht_params, ptr @iwl20x0_eeprom_params, ptr null, ptr null, ptr null, i32 1, i32 0, i32 81920, i32 262144, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 2053, i16 6, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 5, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Intel(R) Centrino(R) Wireless-N 2200D BGN\00", [54 x i8] zeroinitializer }, align 32
@iwl2000_2bgn_d_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl2000_base_params, i32 3, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.2, ptr @.str.1, ptr @iwl2000_ht_params, ptr @iwl20x0_eeprom_params, ptr null, ptr null, ptr null, i32 1, i32 0, i32 81920, i32 262144, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 2053, i16 6, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 5, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@iwl2030_base_params = internal constant { %struct.iwl_base_params, [44 x i8] } { %struct.iwl_base_params { i32 10000, i16 2048, i16 512, i8 68, i16 20, i32 256, i8 4, i8 57 }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Intel(R) Centrino(R) Wireless-N 2230 BGN\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-2030-\00", [18 x i8] zeroinitializer }, align 32
@iwl2030_2bgn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl2030_base_params, i32 4, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.3, ptr @.str.4, ptr @iwl2000_ht_params, ptr @iwl20x0_eeprom_params, ptr null, ptr null, ptr null, i32 1, i32 0, i32 81920, i32 262144, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 2053, i16 6, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 5, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Intel(R) Centrino(R) Wireless-N 105 BGN\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iwlwifi-105-\00", [19 x i8] zeroinitializer }, align 32
@iwl105_bgn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl2000_base_params, i32 5, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.5, ptr @.str.6, ptr @iwl2000_ht_params, ptr @iwl20x0_eeprom_params, ptr null, ptr null, ptr null, i32 1, i32 0, i32 81920, i32 262144, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 2053, i16 6, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 5, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Intel(R) Centrino(R) Wireless-N 105D BGN\00", [55 x i8] zeroinitializer }, align 32
@iwl105_bgn_d_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl2000_base_params, i32 5, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.7, ptr @.str.6, ptr @iwl2000_ht_params, ptr @iwl20x0_eeprom_params, ptr null, ptr null, ptr null, i32 1, i32 0, i32 81920, i32 262144, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 2053, i16 6, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 5, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Intel(R) Centrino(R) Wireless-N 135 BGN\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iwlwifi-135-\00", [19 x i8] zeroinitializer }, align 32
@iwl135_bgn_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl2030_base_params, i32 6, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.8, ptr @.str.9, ptr @iwl2000_ht_params, ptr @iwl20x0_eeprom_params, ptr null, ptr null, ptr null, i32 1, i32 0, i32 81920, i32 262144, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 2053, i16 6, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 5, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware339 = internal constant [38 x i8] c"iwlwifi.firmware=iwlwifi-2000-6.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware340 = internal constant [38 x i8] c"iwlwifi.firmware=iwlwifi-2030-6.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware341 = internal constant [37 x i8] c"iwlwifi.firmware=iwlwifi-105-6.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware342 = internal constant [37 x i8] c"iwlwifi.firmware=iwlwifi-135-6.ucode\00", section ".modinfo", align 1
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"iwl2000_base_params\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 43, i32 37 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 104, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 105, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"iwl2000_ht_params\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 70, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"iwl20x0_eeprom_params\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 76, i32 39 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"iwl2000_2bgn_cfg\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 103, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 110, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"iwl2000_2bgn_d_cfg\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 109, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"iwl2030_base_params\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 57, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 129, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 130, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"iwl2030_2bgn_cfg\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 128, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 149, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 150, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"iwl105_bgn_cfg\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 148, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 155, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"iwl105_bgn_d_cfg\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 154, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 175, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 176, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"iwl135_bgn_cfg\00", align 1
@___asan_gen_.68 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 174, i32 22 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_firmware339, ptr @__UNIQUE_ID_firmware340, ptr @__UNIQUE_ID_firmware341, ptr @__UNIQUE_ID_firmware342, ptr @iwl2000_base_params, ptr @.str, ptr @.str.1, ptr @iwl2000_ht_params, ptr @iwl20x0_eeprom_params, ptr @iwl2000_2bgn_cfg, ptr @.str.2, ptr @iwl2000_2bgn_d_cfg, ptr @iwl2030_base_params, ptr @.str.3, ptr @.str.4, ptr @iwl2030_2bgn_cfg, ptr @.str.5, ptr @.str.6, ptr @iwl105_bgn_cfg, ptr @.str.7, ptr @iwl105_bgn_d_cfg, ptr @.str.8, ptr @.str.9, ptr @iwl135_bgn_cfg], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl2000_base_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl2000_ht_params to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl20x0_eeprom_params to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl2000_2bgn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl2000_2bgn_d_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl2030_base_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl2030_2bgn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl105_bgn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl105_bgn_d_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl135_bgn_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 104, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 105, i32 2}
!4 = !{ptr @iwl2000_2bgn_cfg, !5, !"iwl2000_2bgn_cfg", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 103, i32 22}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 110, i32 10}
!8 = !{ptr @iwl2000_2bgn_d_cfg, !9, !"iwl2000_2bgn_d_cfg", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 109, i32 22}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 129, i32 10}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 130, i32 2}
!14 = !{ptr @iwl2030_2bgn_cfg, !15, !"iwl2030_2bgn_cfg", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 128, i32 22}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 149, i32 10}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 150, i32 2}
!20 = !{ptr @iwl105_bgn_cfg, !21, !"iwl105_bgn_cfg", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 148, i32 22}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 155, i32 10}
!24 = !{ptr @iwl105_bgn_d_cfg, !25, !"iwl105_bgn_d_cfg", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 154, i32 22}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 175, i32 10}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 176, i32 2}
!30 = !{ptr @iwl135_bgn_cfg, !31, !"iwl135_bgn_cfg", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 174, i32 22}
!32 = !{ptr @__UNIQUE_ID_firmware339, !33, !"__UNIQUE_ID_firmware339", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 180, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware340, !35, !"__UNIQUE_ID_firmware340", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 181, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware341, !37, !"__UNIQUE_ID_firmware341", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 182, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware342, !39, !"__UNIQUE_ID_firmware342", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 183, i32 1}
!40 = !{ptr @iwl2000_base_params, !41, !"iwl2000_base_params", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 43, i32 37}
!42 = !{ptr @iwl2000_ht_params, !43, !"iwl2000_ht_params", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 70, i32 35}
!44 = !{ptr @iwl20x0_eeprom_params, !45, !"iwl20x0_eeprom_params", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 76, i32 39}
!46 = !{ptr @iwl2030_base_params, !47, !"iwl2030_base_params", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/2000.c", i32 57, i32 37}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
