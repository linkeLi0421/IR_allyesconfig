; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/fw/pnvm.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.iwl_ucode_tlv = type { i32, i32, [0 x i8] }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }

@iwl_pnvm_load.ntf_cmds = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 3326], [30 x i8] zeroinitializer }, align 32
@__func__.iwl_pnvm_load = private unnamed_addr constant [14 x i8] c"iwl_pnvm_load\00", align 1
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set reduce power table %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_pnvm_get_from_fs = private unnamed_addr constant [21 x i8] c"iwl_pnvm_get_from_fs\00", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PNVM file %s not found %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%spnvm\00", [25 x i8] zeroinitializer }, align 32
@__func__.iwl_pnvm_parse = private unnamed_addr constant [15 x i8] c"iwl_pnvm_parse\00", align 1
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Parsing PNVM file\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid TLV len: %zd/%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Got IWL_UCODE_TLV_PNVM_SKU len %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sku_id 0x%0x 0x%0x 0x%0x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SKU ID didn't match!\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.iwl_pnvm_handle_section = private unnamed_addr constant [24 x i8] c"iwl_pnvm_handle_section\00", align 1
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Handling PNVM section\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Invalid size for IWL_UCODE_TLV_PNVM_VERSION (expected %zd, got %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Got IWL_UCODE_TLV_PNVM_VERSION %0x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Invalid size for IWL_UCODE_TLV_HW_TYPE (expected %zd, got %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Got IWL_UCODE_TLV_HW_TYPE mac_type 0x%0x rf_id 0x%0x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Got IWL_UCODE_TLV_SEC_RT len %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ignoring separator.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Adding data (size %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't allocate (more) pnvm_data\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"New PNVM section started, stop parsing.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Found TLV 0x%0x, len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"HW mismatch, skipping PNVM section (need mac_type 0x%x rf_id 0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Empty PNVM, skipping.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"loaded PNVM version %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.iwl_pnvm_complete_fn = private unnamed_addr constant [21 x i8] c"iwl_pnvm_complete_fn\00", align 1
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"PNVM complete notification received with status 0x%0x\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 19, i64 58, i64 62, i64 64]
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"ntf_cmds\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 265, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 339, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 241, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 30, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 178, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 190, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 199, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 202, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 219, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 44, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 67, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 75, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 81, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 93, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 105, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 111, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 115, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 120, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 136, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 140, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 151, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 160, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 165, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 26, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @iwl_pnvm_load.ntf_cmds, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_pnvm_load.ntf_cmds to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pnvm_load(ptr noundef %trans, ptr noundef %notif_wait) local_unnamed_addr #0 align 64 {
entry:
  %pnvm.i = alloca ptr, align 4
  %pnvm_name.i = alloca [64 x i8], align 1
  %pnvm_wait = alloca %struct.iwl_notification_wait, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pnvm_wait) #7
  %0 = call ptr @memset(ptr %pnvm_wait, i32 255, i32 32)
  %sku_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 15
  %1 = ptrtoint ptr %sku_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sku_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 15, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %arrayidx6 = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 15, i32 2
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pnvm_loaded = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 20
  %7 = ptrtoint ptr %pnvm_loaded to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %pnvm_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %set_pnvm.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %9, i32 0, i32 38
  %10 = ptrtoint ptr %set_pnvm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_pnvm.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then9.iwl_trans_set_pnvm.exit.thread_crit_edge, label %if.then.i

if.then9.iwl_trans_set_pnvm.exit.thread_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_trans_set_pnvm.exit.thread

if.then.i:                                        ; preds = %if.then9
  %call.i = tail call i32 %11(ptr noundef %trans, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.i.iwl_trans_set_pnvm.exit.thread_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.iwl_trans_set_pnvm.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_trans_set_pnvm.exit.thread

iwl_trans_set_pnvm.exit.thread:                   ; preds = %if.then.i.iwl_trans_set_pnvm.exit.thread_crit_edge, %if.then9.iwl_trans_set_pnvm.exit.thread_crit_edge
  %12 = ptrtoint ptr %pnvm_loaded to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %pnvm_loaded, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %pnvm_loaded, align 4
  br label %skip_parse

if.end13:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pnvm.i) #7
  %13 = ptrtoint ptr %pnvm.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %pnvm.i, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pnvm_name.i) #7
  %14 = call ptr @memset(ptr %pnvm_name.i, i32 255, i32 64)
  %cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %15 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i.i, align 8
  %fw_name_pre.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %fw_name_pre.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw_name_pre.i.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pnvm_name.i, i32 noundef 64, ptr noundef nonnull @.str.2, ptr noundef %18) #7
  %19 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i.i, align 8
  %fw_name_pre2.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %fw_name_pre2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw_name_pre2.i.i, align 4
  %call3.i.i = tail call i32 @strlen(ptr noundef %22) #10
  %23 = add i32 %call3.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %23)
  %24 = icmp ult i32 %23, -63
  br i1 %24, label %if.end13.iwl_pnvm_get_fs_name.exit.i_crit_edge, label %if.then.i.i

if.end13.iwl_pnvm_get_fs_name.exit.i_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_pnvm_get_fs_name.exit.i

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add nsw i32 %call3.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %pnvm_name.i, i32 %sub.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 46, ptr %arrayidx.i.i, align 1
  br label %iwl_pnvm_get_fs_name.exit.i

iwl_pnvm_get_fs_name.exit.i:                      ; preds = %if.then.i.i, %if.end13.iwl_pnvm_get_fs_name.exit.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  %call.i80 = call i32 @firmware_request_nowarn(ptr noundef nonnull %pnvm.i, ptr noundef nonnull %pnvm_name.i, ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i81, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %iwl_pnvm_get_fs_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %29, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_get_from_fs, ptr noundef nonnull @.str.1, ptr noundef nonnull %pnvm_name.i, i32 noundef %call.i80) #7
  br label %if.then27

if.end.i:                                         ; preds = %iwl_pnvm_get_fs_name.exit.i
  %30 = ptrtoint ptr %pnvm.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pnvm.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %data7.i = getelementptr inbounds %struct.firmware, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data7.i, align 4
  %call9.i = call ptr @kmemdup(ptr noundef %35, i32 noundef %33, i32 noundef 3264) #7
  %36 = ptrtoint ptr %pnvm.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pnvm.i, align 4
  call void @release_firmware(ptr noundef %37) #7
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end.i.if.then27_crit_edge, label %parse

if.end.i.if.then27_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.then27:                                        ; preds = %if.end.i.if.then27_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pnvm_name.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pnvm.i) #7
  %38 = ptrtoint ptr %pnvm_loaded to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load29 = load i8, ptr %pnvm_loaded, align 4
  %bf.set = or i8 %bf.load29, -128
  store i8 %bf.set, ptr %pnvm_loaded, align 4
  br label %skip_parse

parse:                                            ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pnvm_name.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pnvm.i) #7
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_parse, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %cmp93.i = icmp ugt i32 %33, 7
  br i1 %cmp93.i, label %while.body.lr.ph.i, label %parse.iwl_pnvm_parse.exit_crit_edge

parse.iwl_pnvm_parse.exit_crit_edge:              ; preds = %parse
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_pnvm_parse.exit

while.body.lr.ph.i:                               ; preds = %parse
  %arrayidx44.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 15, i32 1
  %arrayidx50.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 15, i32 2
  %hw_rev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 10
  %hw_rf_id.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 12
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup77.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %len.addr.095.i = phi i32 [ %33, %while.body.lr.ph.i ], [ %len.addr.2.i, %cleanup77.i.while.body.i_crit_edge ]
  %data.addr.094.i = phi ptr [ %call9.i, %while.body.lr.ph.i ], [ %data.addr.2.i, %cleanup77.i.while.body.i_crit_edge ]
  %sub.i = add i32 %len.addr.095.i, -8
  %length.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data.addr.094.i, i32 0, i32 1
  %41 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %43)
  %cmp4.i = icmp ult i32 %sub.i, %43
  br i1 %cmp4.i, label %do.end8.i, label %if.end.i83

do.end8.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %sub.i, i32 noundef %43) #7
  br label %iwl_pnvm_parse.exit

if.end.i83:                                       ; preds = %while.body.i
  %46 = ptrtoint ptr %data.addr.094.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data.addr.094.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %47)
  %cmp12.i = icmp eq i32 %47, 1073741824
  br i1 %cmp12.i, label %if.then13.i, label %if.else68.i

if.then13.i:                                      ; preds = %if.end.i83
  %add.ptr.i = getelementptr i8, ptr %data.addr.094.i, i32 8
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %49, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_parse, ptr noundef nonnull @.str.5, i32 noundef %43) #7
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %add.ptr.i, align 1
  %54 = call i32 @llvm.bswap.i32(i32 %53) #7
  %arrayidx28.i = getelementptr i8, ptr %data.addr.094.i, i32 12
  %55 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %arrayidx28.i, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56) #7
  %arrayidx30.i = getelementptr i8, ptr %data.addr.094.i, i32 16
  %58 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %arrayidx30.i, align 1
  %60 = call i32 @llvm.bswap.i32(i32 %59) #7
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %51, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_parse, ptr noundef nonnull @.str.6, i32 noundef %54, i32 noundef %57, i32 noundef %60) #7
  %add.i = add i32 %43, 3
  %and.i = and i32 %add.i, -4
  %add33.i = add i32 %and.i, 8
  %add.ptr34.i = getelementptr i8, ptr %data.addr.094.i, i32 %add33.i
  %sub37.i = sub i32 %sub.i, %and.i
  %61 = ptrtoint ptr %sku_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sku_id, align 4
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %add.ptr.i, align 1
  %65 = call i32 @llvm.bswap.i32(i32 %64) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %65)
  %cmp42.i = icmp eq i32 %62, %65
  br i1 %cmp42.i, label %land.lhs.true.i, label %if.then13.i.do.end60.i_crit_edge

if.then13.i.do.end60.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60.i

land.lhs.true.i:                                  ; preds = %if.then13.i
  %66 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx44.i, align 4
  %68 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %arrayidx28.i, align 1
  %70 = call i32 @llvm.bswap.i32(i32 %69) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %70)
  %cmp47.i = icmp eq i32 %67, %70
  br i1 %cmp47.i, label %land.lhs.true48.i, label %land.lhs.true.i.do.end60.i_crit_edge

land.lhs.true.i.do.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60.i

land.lhs.true48.i:                                ; preds = %land.lhs.true.i
  %71 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx50.i, align 4
  %73 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %arrayidx30.i, align 1
  %75 = call i32 @llvm.bswap.i32(i32 %74) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %75)
  %cmp53.i = icmp eq i32 %72, %75
  br i1 %cmp53.i, label %if.then54.i, label %land.lhs.true48.i.do.end60.i_crit_edge

land.lhs.true48.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60.i

if.then54.i:                                      ; preds = %land.lhs.true48.i
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %77, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub37.i)
  %cmp287.i.i = icmp ugt i32 %sub37.i, 7
  br i1 %cmp287.i.i, label %if.then54.i.while.body.i.outer.outer.i_crit_edge, label %if.then54.i.do.end135.i.i_crit_edge

if.then54.i.do.end135.i.i_crit_edge:              ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end135.i.i

if.then54.i.while.body.i.outer.outer.i_crit_edge: ; preds = %if.then54.i
  br label %while.body.i.outer.outer.i

while.body.i.outer.outer.i:                       ; preds = %cleanup127.i.i.while.body.i.outer.outer.i_crit_edge, %if.then54.i.while.body.i.outer.outer.i_crit_edge
  %size.0293.i.ph.ph.i = phi i32 [ %size.2.i.i, %cleanup127.i.i.while.body.i.outer.outer.i_crit_edge ], [ 0, %if.then54.i.while.body.i.outer.outer.i_crit_edge ]
  %hw_match.0.off0292.i.ph.ph.i = phi i1 [ %hw_match.1.off0.i.i, %cleanup127.i.i.while.body.i.outer.outer.i_crit_edge ], [ false, %if.then54.i.while.body.i.outer.outer.i_crit_edge ]
  %pnvm_data.0291.i.ph.ph.i = phi ptr [ %pnvm_data.2.i.i, %cleanup127.i.i.while.body.i.outer.outer.i_crit_edge ], [ null, %if.then54.i.while.body.i.outer.outer.i_crit_edge ]
  %sha1.0290.i.ph.ph.i = phi i32 [ %sha1.1.i.i, %cleanup127.i.i.while.body.i.outer.outer.i_crit_edge ], [ 0, %if.then54.i.while.body.i.outer.outer.i_crit_edge ]
  %len.addr.0289.i.ph.ph.i = phi i32 [ %sub123.i.i, %cleanup127.i.i.while.body.i.outer.outer.i_crit_edge ], [ %sub37.i, %if.then54.i.while.body.i.outer.outer.i_crit_edge ]
  %data.addr.0288.i.ph.ph.i = phi ptr [ %add.ptr126.i.i, %cleanup127.i.i.while.body.i.outer.outer.i_crit_edge ], [ %add.ptr34.i, %if.then54.i.while.body.i.outer.outer.i_crit_edge ]
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.backedge, %while.body.i.outer.outer.i
  %len.addr.0289.i.i = phi i32 [ %len.addr.0289.i.ph.ph.i, %while.body.i.outer.outer.i ], [ %len.addr.0289.i.i.be, %while.body.i.i.backedge ]
  %data.addr.0288.i.i = phi ptr [ %data.addr.0288.i.ph.ph.i, %while.body.i.outer.outer.i ], [ %data.addr.0288.i.i.be, %while.body.i.i.backedge ]
  %sub.i.i84 = add i32 %len.addr.0289.i.i, -8
  %length.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data.addr.0288.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %length.i.i, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i84, i32 %80)
  %cmp4.i.i = icmp ult i32 %sub.i.i84, %80
  br i1 %cmp4.i.i, label %do.end8.i.i, label %if.end.i.i

do.end8.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %sub.i.i84, i32 noundef %80) #7
  br label %133

if.end.i.i:                                       ; preds = %while.body.i.i
  %83 = ptrtoint ptr %data.addr.0288.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data.addr.0288.i.i, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #7
  %add.ptr.i.i = getelementptr i8, ptr %data.addr.0288.i.i, i32 8
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values)
  switch i32 %85, label %do.end117.i.i [
    i32 62, label %sw.bb.i.i
    i32 58, label %sw.bb29.i.i
    i32 19, label %sw.bb63.i.i
    i32 64, label %cleanup127.thread257.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp12.i.i = icmp ult i32 %80, 4
  br i1 %cmp12.i.i, label %do.end17.i.i, label %if.end21.i.i

do.end17.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %88, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.9, i32 noundef 4, i32 noundef %80) #7
  br label %cleanup127.i.i

if.end21.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i.i, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90) #7
  %92 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %93, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.10, i32 noundef %91) #7
  br label %cleanup127.i.i

sw.bb29.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp30.i.i = icmp ult i32 %80, 4
  br i1 %cmp30.i.i, label %do.end35.i.i, label %if.end39.i.i

do.end35.i.i:                                     ; preds = %sw.bb29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %95, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef %80) #7
  br label %cleanup127.i.i

if.end39.i.i:                                     ; preds = %sw.bb29.i.i
  br i1 %hw_match.0.off0292.i.ph.ph.i, label %cleanup127.i.thread163.i, label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.end39.i.i
  %96 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %add.ptr.i.i, align 2
  %98 = call i16 @llvm.bswap.i16(i16 %97) #7
  %add.ptr43.i.i = getelementptr i8, ptr %data.addr.0288.i.i, i32 10
  %99 = ptrtoint ptr %add.ptr43.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %add.ptr43.i.i, align 2
  %101 = call i16 @llvm.bswap.i16(i16 %100) #7
  %102 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i, align 8
  %conv.i.i = zext i16 %98 to i32
  %conv50.i.i = zext i16 %101 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %103, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.12, i32 noundef %conv.i.i, i32 noundef %conv50.i.i) #7
  %104 = ptrtoint ptr %hw_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hw_rev.i.i, align 8
  %and.i.i = lshr i32 %105, 4
  %shr.i.i = and i32 %and.i.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %conv.i.i)
  %cmp54.i.i = icmp eq i32 %shr.i.i, %conv.i.i
  br i1 %cmp54.i.i, label %land.lhs.true.i.i, label %cleanup127.i.thread.i

land.lhs.true.i.i:                                ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %hw_rf_id.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hw_rf_id.i.i, align 8
  %and57.i.i = lshr i32 %107, 12
  %shr58.i.i = and i32 %and57.i.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %shr58.i.i, i32 %conv50.i.i)
  %cmp59.i.i = icmp eq i32 %shr58.i.i, %conv50.i.i
  br label %cleanup127.i.i

sw.bb63.i.i:                                      ; preds = %if.end.i.i
  %sub64.i.i = add i32 %80, -4
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %109, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.13, i32 noundef %80) #7
  %110 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -286335523, i32 %111)
  %cmp73.i.i = icmp eq i32 %111, -286335523
  %112 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i, align 8
  br i1 %cmp73.i.i, label %do.end79.i.i, label %do.end87.i.i

do.end79.i.i:                                     ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %113, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.14) #7
  br label %cleanup127.i.i

do.end87.i.i:                                     ; preds = %sw.bb63.i.i
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %113, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.15, i32 noundef %sub64.i.i) #7
  %add.i.i = add i32 %sub64.i.i, %size.0293.i.ph.ph.i
  %call91.i.i = call noalias ptr @krealloc(ptr noundef %pnvm_data.0291.i.ph.ph.i, i32 noundef %add.i.i, i32 noundef 3264) #11
  %tobool92.not.i.i = icmp eq ptr %call91.i.i, null
  br i1 %tobool92.not.i.i, label %cleanup.i.i, label %if.end101.i.i

if.end101.i.i:                                    ; preds = %do.end87.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr102.i.i = getelementptr i8, ptr %call91.i.i, i32 %size.0293.i.ph.ph.i
  %data103.i.i = getelementptr i8, ptr %data.addr.0288.i.i, i32 12
  %114 = call ptr @memcpy(ptr %add.ptr102.i.i, ptr %data103.i.i, i32 %sub64.i.i)
  br label %cleanup127.i.i

cleanup.i.i:                                      ; preds = %do.end87.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %116, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.16) #7
  br label %133

cleanup127.thread257.i.i:                         ; preds = %if.end.i.i
  %117 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %118, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.17) #7
  br i1 %hw_match.0.off0292.i.ph.ph.i, label %cleanup127.thread257.i.i.if.end145.i.i_crit_edge, label %cleanup127.thread257.i.i.do.end135.i.i_crit_edge

cleanup127.thread257.i.i.do.end135.i.i_crit_edge: ; preds = %cleanup127.thread257.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end135.i.i

cleanup127.thread257.i.i.if.end145.i.i_crit_edge: ; preds = %cleanup127.thread257.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i.i

do.end117.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %120, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.18, i32 noundef %85, i32 noundef %80) #7
  br label %cleanup127.i.i

cleanup127.i.i:                                   ; preds = %do.end117.i.i, %if.end101.i.i, %do.end79.i.i, %land.lhs.true.i.i, %do.end35.i.i, %if.end21.i.i, %do.end17.i.i
  %sha1.1.i.i = phi i32 [ %sha1.0290.i.ph.ph.i, %do.end117.i.i ], [ %sha1.0290.i.ph.ph.i, %do.end35.i.i ], [ %sha1.0290.i.ph.ph.i, %do.end17.i.i ], [ %91, %if.end21.i.i ], [ %sha1.0290.i.ph.ph.i, %land.lhs.true.i.i ], [ %sha1.0290.i.ph.ph.i, %do.end79.i.i ], [ %sha1.0290.i.ph.ph.i, %if.end101.i.i ]
  %pnvm_data.2.i.i = phi ptr [ %pnvm_data.0291.i.ph.ph.i, %do.end117.i.i ], [ %pnvm_data.0291.i.ph.ph.i, %do.end35.i.i ], [ %pnvm_data.0291.i.ph.ph.i, %do.end17.i.i ], [ %pnvm_data.0291.i.ph.ph.i, %if.end21.i.i ], [ %pnvm_data.0291.i.ph.ph.i, %land.lhs.true.i.i ], [ %pnvm_data.0291.i.ph.ph.i, %do.end79.i.i ], [ %call91.i.i, %if.end101.i.i ]
  %hw_match.1.off0.i.i = phi i1 [ %hw_match.0.off0292.i.ph.ph.i, %do.end117.i.i ], [ %hw_match.0.off0292.i.ph.ph.i, %do.end35.i.i ], [ %hw_match.0.off0292.i.ph.ph.i, %do.end17.i.i ], [ %hw_match.0.off0292.i.ph.ph.i, %if.end21.i.i ], [ %cmp59.i.i, %land.lhs.true.i.i ], [ %hw_match.0.off0292.i.ph.ph.i, %do.end79.i.i ], [ %hw_match.0.off0292.i.ph.ph.i, %if.end101.i.i ]
  %size.2.i.i = phi i32 [ %size.0293.i.ph.ph.i, %do.end117.i.i ], [ %size.0293.i.ph.ph.i, %do.end35.i.i ], [ %size.0293.i.ph.ph.i, %do.end17.i.i ], [ %size.0293.i.ph.ph.i, %if.end21.i.i ], [ %size.0293.i.ph.ph.i, %land.lhs.true.i.i ], [ %size.0293.i.ph.ph.i, %do.end79.i.i ], [ %add.i.i, %if.end101.i.i ]
  %add121.i.i = add i32 %80, 3
  %and122.i.i = and i32 %add121.i.i, -4
  %sub123.i.i = sub i32 %sub.i.i84, %and122.i.i
  %add.ptr126.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %and122.i.i
  %cmp.i.i = icmp ugt i32 %sub123.i.i, 7
  br i1 %cmp.i.i, label %cleanup127.i.i.while.body.i.outer.outer.i_crit_edge, label %done.i.i

cleanup127.i.i.while.body.i.outer.outer.i_crit_edge: ; preds = %cleanup127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.outer.outer.i

cleanup127.i.thread163.i:                         ; preds = %if.end39.i.i
  %add121.i168.i = add i32 %80, 3
  %and122.i169.i = and i32 %add121.i168.i, -4
  %sub123.i170.i = sub i32 %sub.i.i84, %and122.i169.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub123.i170.i)
  %cmp.i172.i = icmp ugt i32 %sub123.i170.i, 7
  br i1 %cmp.i172.i, label %cleanup127.i.thread163.i.while.body.i.i.backedge_crit_edge, label %cleanup127.i.thread163.i.if.end145.i.i_crit_edge

cleanup127.i.thread163.i.if.end145.i.i_crit_edge: ; preds = %cleanup127.i.thread163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i.i

cleanup127.i.thread163.i.while.body.i.i.backedge_crit_edge: ; preds = %cleanup127.i.thread163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.backedge

cleanup127.i.thread.i:                            ; preds = %if.end41.i.i
  %add121.i5.i = add i32 %80, 3
  %and122.i6.i = and i32 %add121.i5.i, -4
  %sub123.i7.i = sub i32 %sub.i.i84, %and122.i6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub123.i7.i)
  %cmp.i9.i = icmp ugt i32 %sub123.i7.i, 7
  br i1 %cmp.i9.i, label %cleanup127.i.thread.i.while.body.i.i.backedge_crit_edge, label %cleanup127.i.thread.i.do.end135.i.i_crit_edge

cleanup127.i.thread.i.do.end135.i.i_crit_edge:    ; preds = %cleanup127.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end135.i.i

cleanup127.i.thread.i.while.body.i.i.backedge_crit_edge: ; preds = %cleanup127.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.backedge

while.body.i.i.backedge:                          ; preds = %cleanup127.i.thread.i.while.body.i.i.backedge_crit_edge, %cleanup127.i.thread163.i.while.body.i.i.backedge_crit_edge
  %len.addr.0289.i.i.be = phi i32 [ %sub123.i7.i, %cleanup127.i.thread.i.while.body.i.i.backedge_crit_edge ], [ %sub123.i170.i, %cleanup127.i.thread163.i.while.body.i.i.backedge_crit_edge ]
  %and122.i6.i.pn = phi i32 [ %and122.i6.i, %cleanup127.i.thread.i.while.body.i.i.backedge_crit_edge ], [ %and122.i169.i, %cleanup127.i.thread163.i.while.body.i.i.backedge_crit_edge ]
  %data.addr.0288.i.i.be = getelementptr i8, ptr %add.ptr.i.i, i32 %and122.i6.i.pn
  br label %while.body.i.i

done.i.i:                                         ; preds = %cleanup127.i.i
  br i1 %hw_match.1.off0.i.i, label %done.i.i.if.end145.i.i_crit_edge, label %done.i.i.do.end135.i.i_crit_edge

done.i.i.do.end135.i.i_crit_edge:                 ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end135.i.i

done.i.i.if.end145.i.i_crit_edge:                 ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i.i

do.end135.i.i:                                    ; preds = %done.i.i.do.end135.i.i_crit_edge, %cleanup127.i.thread.i.do.end135.i.i_crit_edge, %cleanup127.thread257.i.i.do.end135.i.i_crit_edge, %if.then54.i.do.end135.i.i_crit_edge
  %pnvm_data.0278319.i.i = phi ptr [ %pnvm_data.2.i.i, %done.i.i.do.end135.i.i_crit_edge ], [ %pnvm_data.0291.i.ph.ph.i, %cleanup127.thread257.i.i.do.end135.i.i_crit_edge ], [ null, %if.then54.i.do.end135.i.i_crit_edge ], [ %pnvm_data.0291.i.ph.ph.i, %cleanup127.i.thread.i.do.end135.i.i_crit_edge ]
  %121 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i, align 8
  %123 = ptrtoint ptr %hw_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hw_rev.i.i, align 8
  %and138.i.i = lshr i32 %124, 4
  %shr139.i.i = and i32 %and138.i.i, 4095
  %125 = ptrtoint ptr %hw_rf_id.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hw_rf_id.i.i, align 8
  %and141.i.i = lshr i32 %126, 12
  %shr142.i.i = and i32 %and141.i.i, 4095
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %122, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.19, i32 noundef %shr139.i.i, i32 noundef %shr142.i.i) #7
  br label %133

if.end145.i.i:                                    ; preds = %done.i.i.if.end145.i.i_crit_edge, %cleanup127.i.thread163.i.if.end145.i.i_crit_edge, %cleanup127.thread257.i.i.if.end145.i.i_crit_edge
  %size.0269323.i.i = phi i32 [ %size.0293.i.ph.ph.i, %cleanup127.thread257.i.i.if.end145.i.i_crit_edge ], [ %size.2.i.i, %done.i.i.if.end145.i.i_crit_edge ], [ %size.0293.i.ph.ph.i, %cleanup127.i.thread163.i.if.end145.i.i_crit_edge ]
  %pnvm_data.0278322.i.i = phi ptr [ %pnvm_data.0291.i.ph.ph.i, %cleanup127.thread257.i.i.if.end145.i.i_crit_edge ], [ %pnvm_data.2.i.i, %done.i.i.if.end145.i.i_crit_edge ], [ %pnvm_data.0291.i.ph.ph.i, %cleanup127.i.thread163.i.if.end145.i.i_crit_edge ]
  %sha1.0282321.i.i = phi i32 [ %sha1.0290.i.ph.ph.i, %cleanup127.thread257.i.i.if.end145.i.i_crit_edge ], [ %sha1.1.i.i, %done.i.i.if.end145.i.i_crit_edge ], [ %sha1.0290.i.ph.ph.i, %cleanup127.i.thread163.i.if.end145.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0269323.i.i)
  %tobool146.not.i.i = icmp eq i32 %size.0269323.i.i, 0
  %127 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i, align 8
  br i1 %tobool146.not.i.i, label %do.end151.i.i, label %do.end159.i.i

do.end151.i.i:                                    ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %128, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_handle_section, ptr noundef nonnull @.str.20) #7
  br label %133

do.end159.i.i:                                    ; preds = %if.end145.i.i
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %128, ptr noundef nonnull @.str.21, i32 noundef %sha1.0282321.i.i) #7
  %129 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ops.i.i.i, align 4
  %set_pnvm.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %130, i32 0, i32 38
  %131 = ptrtoint ptr %set_pnvm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %set_pnvm.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %132, null
  br i1 %tobool.not.i.i.i, label %do.end159.i.i.cleanup65.i_crit_edge, label %if.then.i.i.i

do.end159.i.i.cleanup65.i_crit_edge:              ; preds = %do.end159.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65.i

if.then.i.i.i:                                    ; preds = %do.end159.i.i
  %call.i.i.i = call i32 %132(ptr noundef %trans, ptr noundef %pnvm_data.0278322.i.i, i32 noundef %size.0269323.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.then.i.i.i.cleanup65.i_crit_edge, label %if.then.i.i.i._crit_edge

if.then.i.i.i._crit_edge:                         ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %133

if.then.i.i.i.cleanup65.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65.i

133:                                              ; preds = %if.then.i.i.i._crit_edge, %do.end151.i.i, %do.end135.i.i, %cleanup.i.i, %do.end8.i.i
  %pnvm_data.0277.i.ph.i = phi ptr [ %pnvm_data.0291.i.ph.ph.i, %do.end8.i.i ], [ %pnvm_data.0291.i.ph.ph.i, %cleanup.i.i ], [ %pnvm_data.0278322.i.i, %if.then.i.i.i._crit_edge ], [ %pnvm_data.0278319.i.i, %do.end135.i.i ], [ %pnvm_data.0278322.i.i, %do.end151.i.i ]
  call void @kfree(ptr noundef %pnvm_data.0277.i.ph.i) #7
  br label %cleanup77.i

do.end60.i:                                       ; preds = %land.lhs.true48.i.do.end60.i_crit_edge, %land.lhs.true.i.do.end60.i_crit_edge, %if.then13.i.do.end60.i_crit_edge
  %134 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %135, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_parse, ptr noundef nonnull @.str.7) #7
  br label %cleanup77.i

cleanup65.i:                                      ; preds = %if.then.i.i.i.cleanup65.i_crit_edge, %do.end159.i.i.cleanup65.i_crit_edge
  %136 = ptrtoint ptr %pnvm_loaded to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load.i.i.i = load i8, ptr %pnvm_loaded, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %pnvm_loaded, align 4
  call void @kfree(ptr noundef %pnvm_data.0278322.i.i) #7
  br label %iwl_pnvm_parse.exit

if.else68.i:                                      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  %add69.i = add i32 %43, 3
  %and70.i = and i32 %add69.i, -4
  %add71.i = add i32 %and70.i, 8
  %add.ptr72.i = getelementptr i8, ptr %data.addr.094.i, i32 %add71.i
  %sub75.i = sub i32 %sub.i, %and70.i
  br label %cleanup77.i

cleanup77.i:                                      ; preds = %if.else68.i, %do.end60.i, %133
  %data.addr.2.i = phi ptr [ %add.ptr72.i, %if.else68.i ], [ %add.ptr34.i, %133 ], [ %add.ptr34.i, %do.end60.i ]
  %len.addr.2.i = phi i32 [ %sub75.i, %if.else68.i ], [ %sub37.i, %133 ], [ %sub37.i, %do.end60.i ]
  %cmp.i = icmp ugt i32 %len.addr.2.i, 7
  br i1 %cmp.i, label %cleanup77.i.while.body.i_crit_edge, label %cleanup77.i.iwl_pnvm_parse.exit_crit_edge

cleanup77.i.iwl_pnvm_parse.exit_crit_edge:        ; preds = %cleanup77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_pnvm_parse.exit

cleanup77.i.while.body.i_crit_edge:               ; preds = %cleanup77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

iwl_pnvm_parse.exit:                              ; preds = %cleanup77.i.iwl_pnvm_parse.exit_crit_edge, %cleanup65.i, %do.end8.i, %parse.iwl_pnvm_parse.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %skip_parse

skip_parse:                                       ; preds = %iwl_pnvm_parse.exit, %if.then27, %iwl_trans_set_pnvm.exit.thread
  %len.1 = phi i32 [ %33, %iwl_pnvm_parse.exit ], [ -1, %if.then27 ], [ -1, %iwl_trans_set_pnvm.exit.thread ]
  %137 = ptrtoint ptr %pnvm_loaded to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load32 = load i8, ptr %pnvm_loaded, align 4
  %138 = and i8 %bf.load32, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool35.not = icmp eq i8 %138, 0
  br i1 %tobool35.not, label %if.then36, label %if.end45

if.then36:                                        ; preds = %skip_parse
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set43 = or i8 %bf.load32, 64
  %139 = ptrtoint ptr %pnvm_loaded to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %bf.set43, ptr %pnvm_loaded, align 4
  br label %skip_reduce_power

if.end45:                                         ; preds = %skip_parse
  %ops.i85 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %140 = ptrtoint ptr %ops.i85 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ops.i85, align 4
  %set_reduce_power.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %141, i32 0, i32 39
  %142 = ptrtoint ptr %set_reduce_power.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %set_reduce_power.i, align 4
  %tobool.not.i86 = icmp eq ptr %143, null
  br i1 %tobool.not.i86, label %if.end45.iwl_trans_set_reduce_power.exit.thread_crit_edge, label %if.then.i89

if.end45.iwl_trans_set_reduce_power.exit.thread_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_trans_set_reduce_power.exit.thread

if.then.i89:                                      ; preds = %if.end45
  %call.i87 = call i32 %143(ptr noundef %trans, ptr noundef null, i32 noundef %len.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool3.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool3.not.i88, label %if.then.i89.iwl_trans_set_reduce_power.exit.thread_crit_edge, label %do.end

if.then.i89.iwl_trans_set_reduce_power.exit.thread_crit_edge: ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_trans_set_reduce_power.exit.thread

iwl_trans_set_reduce_power.exit.thread:           ; preds = %if.then.i89.iwl_trans_set_reduce_power.exit.thread_crit_edge, %if.end45.iwl_trans_set_reduce_power.exit.thread_crit_edge
  %144 = ptrtoint ptr %pnvm_loaded to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load.i90 = load i8, ptr %pnvm_loaded, align 4
  %bf.set.i91 = or i8 %bf.load.i90, 64
  store i8 %bf.set.i91, ptr %pnvm_loaded, align 4
  br label %if.end52

do.end:                                           ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %146, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_load, ptr noundef nonnull @.str, i32 noundef %call.i87) #7
  br label %if.end52

if.end52:                                         ; preds = %do.end, %iwl_trans_set_reduce_power.exit.thread
  call void @kfree(ptr noundef null) #7
  br label %skip_reduce_power

skip_reduce_power:                                ; preds = %if.end52, %if.then36
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %pnvm_wait, ptr noundef nonnull @iwl_pnvm_load.ntf_cmds, i32 noundef 1, ptr noundef nonnull @iwl_pnvm_complete_fn, ptr noundef %trans) #7
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %147 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %trans_cfg.i, align 4
  %umac_prph_offset.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %umac_prph_offset.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %umac_prph_offset.i, align 4
  %add.i94 = add i32 %150, 10509316
  call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add.i94, i32 noundef 1048576, i32 noundef 0) #7
  %call53 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %pnvm_wait, i32 noundef 25) #7
  br label %cleanup

cleanup:                                          ; preds = %skip_reduce_power, %if.then.i.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %skip_reduce_power ], [ 0, %land.lhs.true4.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pnvm_wait) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_notification_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_pnvm_complete_fn(ptr nocapture noundef readnone %notif_wait, ptr nocapture noundef readonly %pkt, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %data1, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pnvm_complete_fn, ptr noundef nonnull @.str.22, i32 noundef %4) #7
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_wait_notification(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_delay(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @iwl_pnvm_load.ntf_cmds, !1, !"ntf_cmds", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 265, i32 19}
!2 = !{ptr @__func__.iwl_pnvm_load, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 339, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.iwl_pnvm_get_from_fs, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 241, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.h", i32 30, i32 31}
!10 = !{ptr @__func__.iwl_pnvm_parse, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 178, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 190, i32 4}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 199, i32 4}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 202, i32 4}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 219, i32 5}
!21 = !{ptr @__func__.iwl_pnvm_handle_section, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 44, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 67, i32 5}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 75, i32 4}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 81, i32 5}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 93, i32 4}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 105, i32 4}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 111, i32 5}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 115, i32 4}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 120, i32 5}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 136, i32 4}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 140, i32 4}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 151, i32 3}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 160, i32 3}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 165, i32 2}
!50 = !{ptr @__func__.iwl_pnvm_complete_fn, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.c", i32 26, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
