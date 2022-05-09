; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/cfg/8000.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/cfg/8000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_ht_params = type { i8, i8 }
%struct.iwl_tt_params = type { i32, i32, i32, i32, i32, i32, i32, [6 x %struct.iwl_tt_tx_backoff], i8 }
%struct.iwl_tt_tx_backoff = type { i32, i32 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }

@iwl8000_base_params = internal constant { %struct.iwl_base_params, [44 x i8] } { %struct.iwl_base_params { i32 10000, i16 -32768, i16 512, i8 112, i16 31, i32 256, i8 0, i8 57 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Intel(R) Dual Band Wireless N 8260\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iwlwifi-8000C-\00", [17 x i8] zeroinitializer }, align 32
@iwl8000_ht_params = internal constant { %struct.iwl_ht_params, [30 x i8] } { %struct.iwl_ht_params { i8 96, i8 3 }, [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvmData-8000C\00", [18 x i8] zeroinitializer }, align 32
@iwl8000_tt_params = internal constant { %struct.iwl_tt_params, [48 x i8] } { %struct.iwl_tt_params { i32 115, i32 93, i32 5, i32 111, i32 107, i32 112, i32 105, [6 x %struct.iwl_tt_tx_backoff] [%struct.iwl_tt_tx_backoff { i32 110, i32 200 }, %struct.iwl_tt_tx_backoff { i32 111, i32 600 }, %struct.iwl_tt_tx_backoff { i32 112, i32 1200 }, %struct.iwl_tt_tx_backoff { i32 113, i32 2000 }, %struct.iwl_tt_tx_backoff { i32 114, i32 4000 }, %struct.iwl_tt_tx_backoff zeroinitializer], i8 -16 }, [48 x i8] zeroinitializer }, align 32
@iwl8260_2n_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl8000_base_params, i32 16, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str, ptr @.str.1, ptr @iwl8000_ht_params, ptr null, ptr null, ptr @.str.2, ptr @iwl8000_tt_params, i32 1, i32 1, i32 0, i32 0, i64 1099511627776, i32 8388608, i32 98304, i32 8912896, i32 32768, i32 4194304, i32 425984, i16 2589, i16 0, i8 0, i8 0, i8 36, i8 0, i8 0, i8 1, i8 10, i8 0, i8 36, i8 22, i16 0, i32 8388608, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Intel(R) Dual Band Wireless AC 8260\00", [60 x i8] zeroinitializer }, align 32
@iwl8260_2ac_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl8000_base_params, i32 16, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.3, ptr @.str.1, ptr @iwl8000_ht_params, ptr null, ptr null, ptr @.str.2, ptr @iwl8000_tt_params, i32 1, i32 1, i32 0, i32 0, i64 1099511627776, i32 8388608, i32 98304, i32 8912896, i32 32768, i32 4194304, i32 425984, i16 2589, i16 0, i8 0, i8 0, i8 36, i8 0, i8 0, i8 1, i8 10, i8 0, i8 36, i8 22, i16 0, i32 8388608, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Intel(R) Dual Band Wireless AC 8265\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-8265-\00", [18 x i8] zeroinitializer }, align 32
@iwl8265_2ac_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl8000_base_params, i32 16, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.4, ptr @.str.5, ptr @iwl8000_ht_params, ptr null, ptr null, ptr @.str.2, ptr @iwl8000_tt_params, i32 1, i32 1, i32 0, i32 0, i64 1099511627776, i32 8388608, i32 98304, i32 8912896, i32 32768, i32 4194304, i32 425984, i16 2589, i16 0, i8 0, i8 0, i8 52, i8 0, i8 0, i8 1, i8 10, i8 0, i8 36, i8 22, i16 0, i32 8388608, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Intel(R) Dual Band Wireless AC 8275\00", [60 x i8] zeroinitializer }, align 32
@iwl8275_2ac_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl8000_base_params, i32 16, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.6, ptr @.str.5, ptr @iwl8000_ht_params, ptr null, ptr null, ptr @.str.2, ptr @iwl8000_tt_params, i32 1, i32 1, i32 0, i32 0, i64 1099511627776, i32 8388608, i32 98304, i32 8912896, i32 32768, i32 4194304, i32 425984, i16 2589, i16 0, i8 0, i8 0, i8 52, i8 0, i8 0, i8 1, i8 10, i8 0, i8 36, i8 22, i16 0, i32 8388608, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Intel(R) Dual Band Wireless AC 4165\00", [60 x i8] zeroinitializer }, align 32
@iwl4165_2ac_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl8000_base_params, i32 16, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.7, ptr @.str.1, ptr @iwl8000_ht_params, ptr null, ptr null, ptr @.str.2, ptr @iwl8000_tt_params, i32 1, i32 1, i32 0, i32 0, i64 1099511627776, i32 8388608, i32 98304, i32 8912896, i32 32768, i32 4194304, i32 425984, i16 2589, i16 0, i8 0, i8 0, i8 36, i8 0, i8 0, i8 1, i8 10, i8 0, i8 36, i8 22, i16 0, i32 8388608, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware339 = internal constant [40 x i8] c"iwlwifi.firmware=iwlwifi-8000C-36.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware340 = internal constant [39 x i8] c"iwlwifi.firmware=iwlwifi-8265-36.ucode\00", section ".modinfo", align 1
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"iwl8000_base_params\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 40, i32 37 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 115, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 116, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"iwl8000_ht_params\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 52, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 117, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"iwl8000_tt_params\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 58, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"iwl8260_2n_cfg\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 114, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 123, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"iwl8260_2ac_cfg\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 122, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 131, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 132, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"iwl8265_2ac_cfg\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 130, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 140, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"iwl8275_2ac_cfg\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 139, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 149, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"iwl4165_2ac_cfg\00", align 1
@___asan_gen_.54 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 148, i32 22 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_firmware339, ptr @__UNIQUE_ID_firmware340, ptr @iwl8000_base_params, ptr @.str, ptr @.str.1, ptr @iwl8000_ht_params, ptr @.str.2, ptr @iwl8000_tt_params, ptr @iwl8260_2n_cfg, ptr @.str.3, ptr @iwl8260_2ac_cfg, ptr @.str.4, ptr @.str.5, ptr @iwl8265_2ac_cfg, ptr @.str.6, ptr @iwl8275_2ac_cfg, ptr @.str.7, ptr @iwl4165_2ac_cfg], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl8000_base_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl8000_ht_params to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl8000_tt_params to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl8260_2n_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl8275_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl4165_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 115, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 116, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 117, i32 2}
!6 = !{ptr @iwl8260_2n_cfg, !7, !"iwl8260_2n_cfg", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 114, i32 22}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 123, i32 10}
!10 = !{ptr @iwl8260_2ac_cfg, !11, !"iwl8260_2ac_cfg", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 122, i32 22}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 131, i32 10}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 132, i32 17}
!16 = !{ptr @iwl8265_2ac_cfg, !17, !"iwl8265_2ac_cfg", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 130, i32 22}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 140, i32 10}
!20 = !{ptr @iwl8275_2ac_cfg, !21, !"iwl8275_2ac_cfg", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 139, i32 22}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 149, i32 10}
!24 = !{ptr @iwl4165_2ac_cfg, !25, !"iwl4165_2ac_cfg", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 148, i32 22}
!26 = !{ptr @__UNIQUE_ID_firmware339, !27, !"__UNIQUE_ID_firmware339", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 156, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware340, !29, !"__UNIQUE_ID_firmware340", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 157, i32 1}
!30 = !{ptr @iwl8000_base_params, !31, !"iwl8000_base_params", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 40, i32 37}
!32 = !{ptr @iwl8000_ht_params, !33, !"iwl8000_ht_params", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 52, i32 35}
!34 = !{ptr @iwl8000_tt_params, !35, !"iwl8000_tt_params", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/8000.c", i32 58, i32 35}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
