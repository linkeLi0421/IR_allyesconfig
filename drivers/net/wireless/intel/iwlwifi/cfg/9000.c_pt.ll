; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/cfg/9000.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/cfg/9000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_ht_params = type { i8, i8 }
%struct.iwl_tt_params = type { i32, i32, i32, i32, i32, i32, i32, [6 x %struct.iwl_tt_tx_backoff], i8 }
%struct.iwl_tt_tx_backoff = type { i32, i32 }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }

@iwl9000_base_params = internal constant { %struct.iwl_base_params, [44 x i8] } { %struct.iwl_base_params { i32 10000, i16 -32768, i16 512, i8 112, i16 31, i32 256, i8 0, i8 57 }, [44 x i8] zeroinitializer }, align 32
@iwl9000_trans_cfg = dso_local constant { { ptr, i32, i32, i32, i32, i8, i8 }, [40 x i8] } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl9000_base_params, i32 17, i32 0, i32 0, i32 0, i8 -112, i8 0 }, [40 x i8] zeroinitializer }, align 32
@iwl9560_trans_cfg = dso_local constant { { ptr, i32, i32, i32, i32, i8, i8 }, [40 x i8] } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl9000_base_params, i32 17, i32 0, i32 650, i32 0, i8 -104, i8 0 }, [40 x i8] zeroinitializer }, align 32
@iwl9560_long_latency_trans_cfg = dso_local constant { { ptr, i32, i32, i32, i32, i8, i8 }, [40 x i8] } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl9000_base_params, i32 17, i32 0, i32 2820, i32 0, i8 -104, i8 0 }, [40 x i8] zeroinitializer }, align 32
@iwl9560_shared_clk_trans_cfg = dso_local constant { { ptr, i32, i32, i32, i32, i8, i8 }, [40 x i8] } { { ptr, i32, i32, i32, i32, i8, i8 } { ptr @iwl9000_base_params, i32 17, i32 0, i32 670, i32 -2147483648, i8 -104, i8 0 }, [40 x i8] zeroinitializer }, align 32
@iwl9162_name = dso_local constant { [26 x i8], [38 x i8] } { [26 x i8] c"Intel(R) Wireless-AC 9162\00", [38 x i8] zeroinitializer }, align 32
@iwl9260_name = dso_local constant { [26 x i8], [38 x i8] } { [26 x i8] c"Intel(R) Wireless-AC 9260\00", [38 x i8] zeroinitializer }, align 32
@iwl9260_1_name = dso_local constant { [28 x i8], [36 x i8] } { [28 x i8] c"Intel(R) Wireless-AC 9260-1\00", [36 x i8] zeroinitializer }, align 32
@iwl9270_name = dso_local constant { [26 x i8], [38 x i8] } { [26 x i8] c"Intel(R) Wireless-AC 9270\00", [38 x i8] zeroinitializer }, align 32
@iwl9461_name = dso_local constant { [26 x i8], [38 x i8] } { [26 x i8] c"Intel(R) Wireless-AC 9461\00", [38 x i8] zeroinitializer }, align 32
@iwl9462_name = dso_local constant { [26 x i8], [38 x i8] } { [26 x i8] c"Intel(R) Wireless-AC 9462\00", [38 x i8] zeroinitializer }, align 32
@iwl9560_name = dso_local constant { [26 x i8], [38 x i8] } { [26 x i8] c"Intel(R) Wireless-AC 9560\00", [38 x i8] zeroinitializer }, align 32
@iwl9162_160_name = dso_local constant { [33 x i8], [63 x i8] } { [33 x i8] c"Intel(R) Wireless-AC 9162 160MHz\00", [63 x i8] zeroinitializer }, align 32
@iwl9260_160_name = dso_local constant { [33 x i8], [63 x i8] } { [33 x i8] c"Intel(R) Wireless-AC 9260 160MHz\00", [63 x i8] zeroinitializer }, align 32
@iwl9270_160_name = dso_local constant { [33 x i8], [63 x i8] } { [33 x i8] c"Intel(R) Wireless-AC 9270 160MHz\00", [63 x i8] zeroinitializer }, align 32
@iwl9461_160_name = dso_local constant { [33 x i8], [63 x i8] } { [33 x i8] c"Intel(R) Wireless-AC 9461 160MHz\00", [63 x i8] zeroinitializer }, align 32
@iwl9462_160_name = dso_local constant { [33 x i8], [63 x i8] } { [33 x i8] c"Intel(R) Wireless-AC 9462 160MHz\00", [63 x i8] zeroinitializer }, align 32
@iwl9560_160_name = dso_local constant { [33 x i8], [63 x i8] } { [33 x i8] c"Intel(R) Wireless-AC 9560 160MHz\00", [63 x i8] zeroinitializer }, align 32
@iwl9260_killer_1550_name = dso_local constant { [70 x i8], [58 x i8] } { [70 x i8] c"Killer (R) Wireless-AC 1550 Wireless Network Adapter (9260NGW) 160MHz\00", [58 x i8] zeroinitializer }, align 32
@iwl9560_killer_1550i_name = dso_local constant { [64 x i8], [32 x i8] } { [64 x i8] c"Killer (R) Wireless-AC 1550i Wireless Network Adapter (9560NGW)\00", [32 x i8] zeroinitializer }, align 32
@iwl9560_killer_1550i_160_name = dso_local constant { [70 x i8], [58 x i8] } { [70 x i8] c"Killer(R) Wireless-AC 1550i Wireless Network Adapter (9560NGW) 160MHz\00", [58 x i8] zeroinitializer }, align 32
@iwl9560_killer_1550s_name = dso_local constant { [64 x i8], [32 x i8] } { [64 x i8] c"Killer (R) Wireless-AC 1550s Wireless Network Adapter (9560NGW)\00", [32 x i8] zeroinitializer }, align 32
@iwl9560_killer_1550s_160_name = dso_local constant { [70 x i8], [58 x i8] } { [70 x i8] c"Killer(R) Wireless-AC 1550s Wireless Network Adapter (9560D2W) 160MHz\00", [58 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iwlwifi-9260-th-b0-jf-b0-\00", [38 x i8] zeroinitializer }, align 32
@iwl9000_ht_params = internal constant { %struct.iwl_ht_params, [30 x i8] } { %struct.iwl_ht_params { i8 96, i8 3 }, [30 x i8] zeroinitializer }, align 32
@iwl9000_tt_params = internal constant { %struct.iwl_tt_params, [48 x i8] } { %struct.iwl_tt_params { i32 115, i32 93, i32 5, i32 111, i32 107, i32 112, i32 105, [6 x %struct.iwl_tt_tx_backoff] [%struct.iwl_tt_tx_backoff { i32 110, i32 200 }, %struct.iwl_tt_tx_backoff { i32 111, i32 600 }, %struct.iwl_tt_tx_backoff { i32 112, i32 1200 }, %struct.iwl_tt_tx_backoff { i32 113, i32 2000 }, %struct.iwl_tt_tx_backoff { i32 114, i32 4000 }, %struct.iwl_tt_tx_backoff zeroinitializer], i8 -16 }, [48 x i8] zeroinitializer }, align 32
@iwl9260_2ac_cfg = dso_local constant { { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { %struct.iwl_cfg_trans_params zeroinitializer, ptr null, ptr @.str, ptr @iwl9000_ht_params, ptr null, ptr null, ptr null, ptr @iwl9000_tt_params, i32 1, i32 1, i32 0, i32 0, i64 1099512741906, i32 8388608, i32 98304, i32 8912896, i32 32768, i32 4194304, i32 425984, i16 2589, i16 0, i8 3, i8 -128, i8 52, i8 0, i8 0, i8 2, i8 10, i8 0, i8 46, i8 30, i16 512, i32 8388608, i32 4198400, i32 94208, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs { %struct.iwl_fw_mon_reg { i32 10501156, i32 -1 }, %struct.iwl_fw_mon_reg { i32 10501160, i32 -1 }, %struct.iwl_fw_mon_reg zeroinitializer }, %struct.iwl_fw_mon_regs { %struct.iwl_fw_mon_reg { i32 10504044, i32 1048575 }, %struct.iwl_fw_mon_reg { i32 10504052, i32 1048575 }, %struct.iwl_fw_mon_reg zeroinitializer } }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iwlwifi-9000-pu-b0-jf-b0-\00", [38 x i8] zeroinitializer }, align 32
@iwl9560_2ac_cfg_soc = dso_local constant { { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }, [32 x i8] } { { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs } { %struct.iwl_cfg_trans_params zeroinitializer, ptr null, ptr @.str.1, ptr @iwl9000_ht_params, ptr null, ptr null, ptr null, ptr @iwl9000_tt_params, i32 1, i32 1, i32 0, i32 0, i64 1099512741906, i32 8388608, i32 98304, i32 8912896, i32 32768, i32 4194304, i32 425984, i16 2589, i16 0, i8 3, i8 -128, i8 52, i8 0, i8 0, i8 2, i8 10, i8 0, i8 46, i8 30, i16 512, i32 8388608, i32 4198400, i32 94208, i32 0, i32 0, i32 0, %struct.iwl_fw_mon_regs { %struct.iwl_fw_mon_reg { i32 10501156, i32 -1 }, %struct.iwl_fw_mon_reg { i32 10501160, i32 -1 }, %struct.iwl_fw_mon_reg zeroinitializer }, %struct.iwl_fw_mon_regs { %struct.iwl_fw_mon_reg { i32 10504044, i32 1048575 }, %struct.iwl_fw_mon_reg { i32 10504052, i32 1048575 }, %struct.iwl_fw_mon_reg zeroinitializer } }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware339 = internal constant [51 x i8] c"iwlwifi.firmware=iwlwifi-9000-pu-b0-jf-b0-46.ucode\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware340 = internal constant [51 x i8] c"iwlwifi.firmware=iwlwifi-9260-th-b0-jf-b0-46.ucode\00", section ".modinfo", align 1
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"iwl9000_base_params\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 36, i32 37 }
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"iwl9000_trans_cfg\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 121, i32 35 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"iwl9560_trans_cfg\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 128, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant [31 x i8] c"iwl9560_long_latency_trans_cfg\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 137, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [29 x i8] c"iwl9560_shared_clk_trans_cfg\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 146, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"iwl9162_name\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 156, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"iwl9260_name\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 157, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"iwl9260_1_name\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 158, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"iwl9270_name\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 159, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"iwl9461_name\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 160, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"iwl9462_name\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 161, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"iwl9560_name\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 162, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"iwl9162_160_name\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 163, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"iwl9260_160_name\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 164, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"iwl9270_160_name\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 165, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"iwl9461_160_name\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 166, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"iwl9462_160_name\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 167, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"iwl9560_160_name\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 168, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"iwl9260_killer_1550_name\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 170, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [26 x i8] c"iwl9560_killer_1550i_name\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 172, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [30 x i8] c"iwl9560_killer_1550i_160_name\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 174, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [26 x i8] c"iwl9560_killer_1550s_name\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 176, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [30 x i8] c"iwl9560_killer_1550s_160_name\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 178, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 182, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"iwl9000_ht_params\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 48, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"iwl9000_tt_params\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 54, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"iwl9260_2ac_cfg\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 181, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 187, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"iwl9560_2ac_cfg_soc\00", align 1
@___asan_gen_.87 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 186, i32 22 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_firmware339, ptr @__UNIQUE_ID_firmware340, ptr @iwl9000_base_params, ptr @iwl9000_trans_cfg, ptr @iwl9560_trans_cfg, ptr @iwl9560_long_latency_trans_cfg, ptr @iwl9560_shared_clk_trans_cfg, ptr @iwl9162_name, ptr @iwl9260_name, ptr @iwl9260_1_name, ptr @iwl9270_name, ptr @iwl9461_name, ptr @iwl9462_name, ptr @iwl9560_name, ptr @iwl9162_160_name, ptr @iwl9260_160_name, ptr @iwl9270_160_name, ptr @iwl9461_160_name, ptr @iwl9462_160_name, ptr @iwl9560_160_name, ptr @iwl9260_killer_1550_name, ptr @iwl9560_killer_1550i_name, ptr @iwl9560_killer_1550i_160_name, ptr @iwl9560_killer_1550s_name, ptr @iwl9560_killer_1550s_160_name, ptr @.str, ptr @iwl9000_ht_params, ptr @iwl9000_tt_params, ptr @iwl9260_2ac_cfg, ptr @.str.1, ptr @iwl9560_2ac_cfg_soc], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9000_base_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9000_trans_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9560_trans_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9560_long_latency_trans_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9560_shared_clk_trans_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9162_name to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9260_name to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9260_1_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9270_name to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9461_name to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9462_name to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9560_name to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9162_160_name to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9260_160_name to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9270_160_name to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9461_160_name to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9462_160_name to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9560_160_name to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9260_killer_1550_name to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9560_killer_1550i_name to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9560_killer_1550i_160_name to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9560_killer_1550s_name to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9560_killer_1550s_160_name to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9000_ht_params to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9000_tt_params to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9260_2ac_cfg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl9560_2ac_cfg_soc to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @iwl9000_trans_cfg, !1, !"iwl9000_trans_cfg", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 121, i32 35}
!2 = !{ptr @iwl9560_trans_cfg, !3, !"iwl9560_trans_cfg", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 128, i32 35}
!4 = !{ptr @iwl9560_long_latency_trans_cfg, !5, !"iwl9560_long_latency_trans_cfg", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 137, i32 35}
!6 = !{ptr @iwl9560_shared_clk_trans_cfg, !7, !"iwl9560_shared_clk_trans_cfg", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 146, i32 35}
!8 = !{ptr @iwl9162_name, !9, !"iwl9162_name", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 156, i32 12}
!10 = !{ptr @iwl9260_name, !11, !"iwl9260_name", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 157, i32 12}
!12 = !{ptr @iwl9260_1_name, !13, !"iwl9260_1_name", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 158, i32 12}
!14 = !{ptr @iwl9270_name, !15, !"iwl9270_name", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 159, i32 12}
!16 = !{ptr @iwl9461_name, !17, !"iwl9461_name", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 160, i32 12}
!18 = !{ptr @iwl9462_name, !19, !"iwl9462_name", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 161, i32 12}
!20 = !{ptr @iwl9560_name, !21, !"iwl9560_name", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 162, i32 12}
!22 = !{ptr @iwl9162_160_name, !23, !"iwl9162_160_name", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 163, i32 12}
!24 = !{ptr @iwl9260_160_name, !25, !"iwl9260_160_name", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 164, i32 12}
!26 = !{ptr @iwl9270_160_name, !27, !"iwl9270_160_name", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 165, i32 12}
!28 = !{ptr @iwl9461_160_name, !29, !"iwl9461_160_name", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 166, i32 12}
!30 = !{ptr @iwl9462_160_name, !31, !"iwl9462_160_name", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 167, i32 12}
!32 = !{ptr @iwl9560_160_name, !33, !"iwl9560_160_name", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 168, i32 12}
!34 = !{ptr @iwl9260_killer_1550_name, !35, !"iwl9260_killer_1550_name", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 170, i32 12}
!36 = !{ptr @iwl9560_killer_1550i_name, !37, !"iwl9560_killer_1550i_name", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 172, i32 12}
!38 = !{ptr @iwl9560_killer_1550i_160_name, !39, !"iwl9560_killer_1550i_160_name", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 174, i32 12}
!40 = !{ptr @iwl9560_killer_1550s_name, !41, !"iwl9560_killer_1550s_name", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 176, i32 12}
!42 = !{ptr @iwl9560_killer_1550s_160_name, !43, !"iwl9560_killer_1550s_160_name", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 178, i32 12}
!44 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 182, i32 17}
!46 = !{ptr @iwl9260_2ac_cfg, !47, !"iwl9260_2ac_cfg", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 181, i32 22}
!48 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 187, i32 17}
!50 = !{ptr @iwl9560_2ac_cfg_soc, !51, !"iwl9560_2ac_cfg_soc", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 186, i32 22}
!52 = !{ptr @__UNIQUE_ID_firmware339, !53, !"__UNIQUE_ID_firmware339", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 191, i32 1}
!54 = !{ptr @__UNIQUE_ID_firmware340, !55, !"__UNIQUE_ID_firmware340", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 192, i32 1}
!56 = !{ptr @iwl9000_base_params, !57, !"iwl9000_base_params", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 36, i32 37}
!58 = !{ptr @iwl9000_ht_params, !59, !"iwl9000_ht_params", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 48, i32 35}
!60 = !{ptr @iwl9000_tt_params, !61, !"iwl9000_tt_params", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/cfg/9000.c", i32 54, i32 35}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
