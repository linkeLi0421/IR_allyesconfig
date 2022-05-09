; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/cfg/7000.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/cfg/7000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_ht_params = type { i8, i8 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_tt_params = type { i32, i32, i32, i32, i32, i32, i32, [6 x %struct.iwl_tt_tx_backoff], i8 }
%struct.iwl_tt_tx_backoff = type { i32, i32 }
%struct.iwl_pwr_tx_backoff = type { i32, i32 }

@iwl7000_base_params = internal constant { %struct.iwl_base_params, [44 x i8] } { %struct.iwl_base_params { i32 10000, i16 16384, i16 512, i8 120, i16 31, i32 256, i8 0, i8 57 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Intel(R) Dual Band Wireless AC 7260\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-7260-\00", [18 x i8] zeroinitializer }, align 32
@iwl7000_ht_params = internal constant { %struct.iwl_ht_params, [30 x i8] } { %struct.iwl_ht_params { i8 64, i8 3 }, [30 x i8] zeroinitializer }, align 32
@iwl7260_2ac_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str, ptr @.str.1, ptr @iwl7000_ht_params, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 81920, i32 0, i32 0, i32 0, i32 0, i16 2589, i16 0, i8 8, i8 0, i8 -128, i8 0, i8 0, i8 1, i8 0, i8 0, i8 17, i8 17, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@iwl7000_high_temp_tt_params = internal constant { %struct.iwl_tt_params, [48 x i8] } { %struct.iwl_tt_params { i32 118, i32 96, i32 5, i32 114, i32 110, i32 114, i32 108, [6 x %struct.iwl_tt_tx_backoff] [%struct.iwl_tt_tx_backoff { i32 112, i32 300 }, %struct.iwl_tt_tx_backoff { i32 113, i32 800 }, %struct.iwl_tt_tx_backoff { i32 114, i32 1500 }, %struct.iwl_tt_tx_backoff { i32 115, i32 3000 }, %struct.iwl_tt_tx_backoff { i32 116, i32 5000 }, %struct.iwl_tt_tx_backoff { i32 117, i32 10000 }], i8 -16 }, [48 x i8] zeroinitializer }, align 32
@iwl7260_2ac_cfg_high_temp = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str, ptr @.str.1, ptr @iwl7000_ht_params, ptr null, ptr null, ptr null, ptr @iwl7000_high_temp_tt_params, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 81920, i32 0, i32 0, i32 0, i32 0, i16 2589, i16 0, i8 12, i8 0, i8 -128, i8 0, i8 0, i8 1, i8 0, i8 0, i8 17, i8 17, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Intel(R) Dual Band Wireless N 7260\00", [61 x i8] zeroinitializer }, align 32
@iwl7260_2n_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.2, ptr @.str.1, ptr @iwl7000_ht_params, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 81920, i32 0, i32 0, i32 0, i32 0, i16 2589, i16 0, i8 8, i8 0, i8 -128, i8 0, i8 0, i8 1, i8 0, i8 0, i8 17, i8 17, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Intel(R) Wireless N 7260\00", [39 x i8] zeroinitializer }, align 32
@iwl7260_n_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.3, ptr @.str.1, ptr @iwl7000_ht_params, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 81920, i32 0, i32 0, i32 0, i32 0, i16 2589, i16 0, i8 8, i8 0, i8 -128, i8 0, i8 0, i8 1, i8 0, i8 0, i8 17, i8 17, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Intel(R) Dual Band Wireless AC 3160\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-3160-\00", [18 x i8] zeroinitializer }, align 32
@iwl3160_2ac_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.4, ptr @.str.5, ptr @iwl7000_ht_params, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 65536, i32 0, i32 0, i32 0, i32 0, i16 1801, i16 0, i8 8, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 17, i8 17, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Intel(R) Dual Band Wireless N 3160\00", [61 x i8] zeroinitializer }, align 32
@iwl3160_2n_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.6, ptr @.str.5, ptr @iwl7000_ht_params, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 65536, i32 0, i32 0, i32 0, i32 0, i16 1801, i16 0, i8 8, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 17, i8 17, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Intel(R) Wireless N 3160\00", [39 x i8] zeroinitializer }, align 32
@iwl3160_n_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.7, ptr @.str.5, ptr @iwl7000_ht_params, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 65536, i32 0, i32 0, i32 0, i32 0, i16 1801, i16 0, i8 8, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 17, i8 17, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Intel(R) Dual Band Wireless AC 3165\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iwlwifi-7265D-\00", [17 x i8] zeroinitializer }, align 32
@iwl7265_pwr_tx_backoffs = internal constant { [8 x %struct.iwl_pwr_tx_backoff], [32 x i8] } { [8 x %struct.iwl_pwr_tx_backoff] [%struct.iwl_pwr_tx_backoff { i32 1600, i32 0 }, %struct.iwl_pwr_tx_backoff { i32 1300, i32 467 }, %struct.iwl_pwr_tx_backoff { i32 900, i32 1900 }, %struct.iwl_pwr_tx_backoff { i32 800, i32 2630 }, %struct.iwl_pwr_tx_backoff { i32 700, i32 3720 }, %struct.iwl_pwr_tx_backoff { i32 600, i32 5550 }, %struct.iwl_pwr_tx_backoff { i32 500, i32 9350 }, %struct.iwl_pwr_tx_backoff zeroinitializer], [32 x i8] zeroinitializer }, align 32
@iwl3165_2ac_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.8, ptr @.str.9, ptr @iwl7000_ht_params, ptr null, ptr @iwl7265_pwr_tx_backoffs, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 96768, i32 0, i32 0, i32 0, i32 0, i16 1801, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 29, i8 22, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Intel(R) Dual Band Wireless AC 3168\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-3168-\00", [18 x i8] zeroinitializer }, align 32
@iwl3168_2ac_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.10, ptr @.str.11, ptr @iwl7000_ht_params, ptr null, ptr @iwl7265_pwr_tx_backoffs, ptr null, ptr null, i32 1, i32 2, i32 0, i32 0, i64 0, i32 8388608, i32 96768, i32 0, i32 0, i32 0, i32 0, i16 3329, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 29, i8 22, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Intel(R) Dual Band Wireless AC 7265\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-7265-\00", [18 x i8] zeroinitializer }, align 32
@iwl7265_ht_params = internal constant { %struct.iwl_ht_params, [30 x i8] } { %struct.iwl_ht_params { i8 96, i8 3 }, [30 x i8] zeroinitializer }, align 32
@iwl7265_2ac_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.12, ptr @.str.13, ptr @iwl7265_ht_params, ptr null, ptr @iwl7265_pwr_tx_backoffs, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 96768, i32 0, i32 0, i32 0, i32 0, i16 2589, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 17, i8 17, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Intel(R) Dual Band Wireless N 7265\00", [61 x i8] zeroinitializer }, align 32
@iwl7265_2n_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.14, ptr @.str.13, ptr @iwl7265_ht_params, ptr null, ptr @iwl7265_pwr_tx_backoffs, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 96768, i32 0, i32 0, i32 0, i32 0, i16 2589, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 17, i8 17, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Intel(R) Wireless N 7265\00", [39 x i8] zeroinitializer }, align 32
@iwl7265_n_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.15, ptr @.str.13, ptr @iwl7265_ht_params, ptr null, ptr @iwl7265_pwr_tx_backoffs, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 96768, i32 0, i32 0, i32 0, i32 0, i16 2589, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 17, i8 17, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@iwl7265d_2ac_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.12, ptr @.str.9, ptr @iwl7265_ht_params, ptr null, ptr @iwl7265_pwr_tx_backoffs, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 96768, i32 0, i32 0, i32 0, i32 0, i16 3089, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 29, i8 22, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@iwl7265d_2n_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.14, ptr @.str.9, ptr @iwl7265_ht_params, ptr null, ptr @iwl7265_pwr_tx_backoffs, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 96768, i32 0, i32 0, i32 0, i32 0, i16 3089, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 29, i8 22, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@iwl7265d_n_cfg = dso_local constant { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { { ptr, i32, i32, i32, i32, i8, i8 }, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl7000_base_params, i32 15, i32 0, i32 0, i32 0, i8 0, i8 0 }, ptr @.str.15, ptr @.str.9, ptr @iwl7265_ht_params, ptr null, ptr @iwl7265_pwr_tx_backoffs, ptr null, ptr null, i32 1, i32 0, i32 0, i32 0, i64 0, i32 8388608, i32 96768, i32 0, i32 0, i32 0, i32 0, i16 3089, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 29, i8 22, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs zeroinitializer, %struct.iwl_fw_mon_regs zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware339 = internal constant [39 x i8] c"iwlwifi.firmware=iwlwifi-7260-17.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware340 = internal constant [39 x i8] c"iwlwifi.firmware=iwlwifi-3160-17.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware341 = internal constant [39 x i8] c"iwlwifi.firmware=iwlwifi-3168-29.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware342 = internal constant [39 x i8] c"iwlwifi.firmware=iwlwifi-7265-17.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware343 = internal constant [40 x i8] c"iwlwifi.firmware=iwlwifi-7265D-29.ucode\00", section ".modinfo", align 1
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"iwl7000_base_params\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 52, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 121, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 122, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"iwl7000_ht_params\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 87, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"iwl7260_2ac_cfg\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 120, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"iwl7000_high_temp_tt_params\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 65, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [26 x i8] c"iwl7260_2ac_cfg_high_temp\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 131, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 145, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"iwl7260_2n_cfg\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 144, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 156, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"iwl7260_n_cfg\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 155, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 167, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 168, i32 17 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"iwl3160_2ac_cfg\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 166, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 177, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"iwl3160_2n_cfg\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 176, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 187, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"iwl3160_n_cfg\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 186, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 214, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 215, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"iwl7265_pwr_tx_backoffs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 196, i32 40 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"iwl3165_2ac_cfg\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 213, i32 22 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 224, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 225, i32 17 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"iwl3168_2ac_cfg\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 223, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 235, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 236, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"iwl7265_ht_params\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 207, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"iwl7265_2ac_cfg\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 234, i32 22 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 245, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"iwl7265_2n_cfg\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 244, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 255, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"iwl7265_n_cfg\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 254, i32 22 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"iwl7265d_2ac_cfg\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 264, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"iwl7265d_2n_cfg\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 274, i32 22 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"iwl7265d_n_cfg\00", align 1
@___asan_gen_.122 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 284, i32 22 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_firmware339, ptr @__UNIQUE_ID_firmware340, ptr @__UNIQUE_ID_firmware341, ptr @__UNIQUE_ID_firmware342, ptr @__UNIQUE_ID_firmware343, ptr @iwl7000_base_params, ptr @.str, ptr @.str.1, ptr @iwl7000_ht_params, ptr @iwl7260_2ac_cfg, ptr @iwl7000_high_temp_tt_params, ptr @iwl7260_2ac_cfg_high_temp, ptr @.str.2, ptr @iwl7260_2n_cfg, ptr @.str.3, ptr @iwl7260_n_cfg, ptr @.str.4, ptr @.str.5, ptr @iwl3160_2ac_cfg, ptr @.str.6, ptr @iwl3160_2n_cfg, ptr @.str.7, ptr @iwl3160_n_cfg, ptr @.str.8, ptr @.str.9, ptr @iwl7265_pwr_tx_backoffs, ptr @iwl3165_2ac_cfg, ptr @.str.10, ptr @.str.11, ptr @iwl3168_2ac_cfg, ptr @.str.12, ptr @.str.13, ptr @iwl7265_ht_params, ptr @iwl7265_2ac_cfg, ptr @.str.14, ptr @iwl7265_2n_cfg, ptr @.str.15, ptr @iwl7265_n_cfg, ptr @iwl7265d_2ac_cfg, ptr @iwl7265d_2n_cfg, ptr @iwl7265d_n_cfg], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7000_base_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7000_ht_params to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7000_high_temp_tt_params to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7260_2ac_cfg_high_temp to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7260_n_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl3160_2n_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl3160_n_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7265_pwr_tx_backoffs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl3168_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7265_ht_params to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7265_2n_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7265_n_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7265d_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7265d_2n_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl7265d_n_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 121, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 122, i32 17}
!4 = !{ptr @iwl7260_2ac_cfg, !5, !"iwl7260_2ac_cfg", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 120, i32 22}
!6 = !{ptr @iwl7260_2ac_cfg_high_temp, !7, !"iwl7260_2ac_cfg_high_temp", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 131, i32 22}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 145, i32 10}
!10 = !{ptr @iwl7260_2n_cfg, !11, !"iwl7260_2n_cfg", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 144, i32 22}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 156, i32 10}
!14 = !{ptr @iwl7260_n_cfg, !15, !"iwl7260_n_cfg", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 155, i32 22}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 167, i32 10}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 168, i32 17}
!20 = !{ptr @iwl3160_2ac_cfg, !21, !"iwl3160_2ac_cfg", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 166, i32 22}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 177, i32 10}
!24 = !{ptr @iwl3160_2n_cfg, !25, !"iwl3160_2n_cfg", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 176, i32 22}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 187, i32 10}
!28 = !{ptr @iwl3160_n_cfg, !29, !"iwl3160_n_cfg", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 186, i32 22}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 214, i32 10}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 215, i32 17}
!34 = !{ptr @iwl3165_2ac_cfg, !35, !"iwl3165_2ac_cfg", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 213, i32 22}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 224, i32 10}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 225, i32 17}
!40 = !{ptr @iwl3168_2ac_cfg, !41, !"iwl3168_2ac_cfg", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 223, i32 22}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 235, i32 10}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 236, i32 17}
!46 = !{ptr @iwl7265_2ac_cfg, !47, !"iwl7265_2ac_cfg", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 234, i32 22}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 245, i32 10}
!50 = !{ptr @iwl7265_2n_cfg, !51, !"iwl7265_2n_cfg", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 244, i32 22}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 255, i32 10}
!54 = !{ptr @iwl7265_n_cfg, !55, !"iwl7265_n_cfg", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 254, i32 22}
!56 = !{ptr @iwl7265d_2ac_cfg, !57, !"iwl7265d_2ac_cfg", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 264, i32 22}
!58 = !{ptr @iwl7265d_2n_cfg, !59, !"iwl7265d_2n_cfg", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 274, i32 22}
!60 = !{ptr @iwl7265d_n_cfg, !61, !"iwl7265d_n_cfg", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 284, i32 22}
!62 = !{ptr @__UNIQUE_ID_firmware339, !63, !"__UNIQUE_ID_firmware339", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 294, i32 1}
!64 = !{ptr @__UNIQUE_ID_firmware340, !65, !"__UNIQUE_ID_firmware340", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 295, i32 1}
!66 = !{ptr @__UNIQUE_ID_firmware341, !67, !"__UNIQUE_ID_firmware341", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 296, i32 1}
!68 = !{ptr @__UNIQUE_ID_firmware342, !69, !"__UNIQUE_ID_firmware342", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 297, i32 1}
!70 = !{ptr @__UNIQUE_ID_firmware343, !71, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 298, i32 1}
!72 = !{ptr @iwl7000_base_params, !73, !"iwl7000_base_params", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 52, i32 37}
!74 = !{ptr @iwl7000_ht_params, !75, !"iwl7000_ht_params", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 87, i32 35}
!76 = !{ptr @iwl7000_high_temp_tt_params, !77, !"iwl7000_high_temp_tt_params", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 65, i32 35}
!78 = !{ptr @iwl7265_pwr_tx_backoffs, !79, !"iwl7265_pwr_tx_backoffs", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 196, i32 40}
!80 = !{ptr @iwl7265_ht_params, !81, !"iwl7265_ht_params", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/7000.c", i32 207, i32 35}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
