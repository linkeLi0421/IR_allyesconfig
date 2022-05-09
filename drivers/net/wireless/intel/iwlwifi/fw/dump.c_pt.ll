; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/fw/dump.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/fw/dump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.140 = type { i32, ptr }
%struct.iwl_umac_error_event_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.130, %struct.anon.135, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.129], i32, i32, i32, [6 x i32] }
%struct.anon.129 = type { [15 x i32], i32 }
%struct.anon.130 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.134 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_fwrt_dump_data = type { %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.134 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.135 = type { %struct.delayed_work, i32, i64 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_error_event_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_tcm_error_event_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [1 x i32], [4 x i32] }
%struct.iwl_rcm_error_event_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32] }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DEVICE_ENABLED bit is not set. Aborting dump.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Function Scratch status:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x%08X | Func Scratch\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Not valid error log pointer 0x%08X for %s uCode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Init\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RT\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HW error, resetting before reading\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Start IWL Error Log Dump:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Transport status: 0x%08lX, valid: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Loaded firmware version: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%08X | %-28s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | trm_hw_status0\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | trm_hw_status1\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08X | branchlink2\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | interruptlink1\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | interruptlink2\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%08X | data1\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%08X | data2\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%08X | data3\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08X | beacon time\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0x%08X | tsf low\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x%08X | tsf hi\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x%08X | time gp1\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x%08X | time gp2\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0x%08X | uCode revision type\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0x%08X | uCode version major\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0x%08X | uCode version minor\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | hw version\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0x%08X | board version\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | hcmd\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | isr0\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | isr1\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | isr2\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | isr3\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | isr4\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08X | last cmd Id\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | wait_event\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08X | l2p_control\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x%08X | l2p_duration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08X | l2p_mhvalid\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | l2p_addr_match\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x%08X | lmpm_pmg_sel\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%08X | timestamp\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x%08X | flow_handler\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", [49 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PNVM data is missing, please install %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0x%08X | %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0x%08X | umac branchlink1\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0x%08X | umac branchlink2\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0x%08X | umac interruptlink1\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0x%08X | umac interruptlink2\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | umac data1\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | umac data2\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | umac data3\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | umac major\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | umac minor\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0x%08X | frame pointer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0x%08X | stack pointer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0x%08X | last host cmd\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | isr status reg\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%spnvm\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TCM%d status:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x%08X | error ID\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"0x%08X | tcm branchlink2\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x%08X | tcm interruptlink1\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x%08X | tcm interruptlink2\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%08X | tcm data1\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%08X | tcm data2\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%08X | tcm data3\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | tcm log PC\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0x%08X | tcm frame pointer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0x%08X | tcm stack pointer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | tcm msg ID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | tcm ISR status\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0x%08X | tcm HW status[%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0x%08X | tcm SW status[%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RCM%d status:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"0x%08X | rcm branchlink2\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x%08X | rcm interruptlink1\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x%08X | rcm interruptlink2\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%08X | rcm data1\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%08X | rcm data2\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%08X | rcm data3\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | rcm log PC\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0x%08X | rcm frame pointer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0x%08X | rcm stack pointer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | rcm msg ID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | rcm ISR status\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"0x%08X | frame HW status\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"0x%08X | LMAC-to-RCM request mbox\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"0x%08X | RCM-to-LMAC request mbox\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x%08X | MAC header control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"0x%08X | MAC header addr1 low\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"0x%08X | MAC header info\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0x%08X | MAC header error\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IML/ROM dump:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0x%04X | IML/ROM SYSASSERT\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0x%08X | IML/ROM error/state\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0x%08X | IML/ROM data1\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"0x%08X | IML/ROM WFPM_AUTH_KEY_0\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FSEQ_ERROR_CODE\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FSEQ_TOP_INIT_VERSION\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FSEQ_CNVIO_INIT_VERSION\00", [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FSEQ_OTP_VERSION\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FSEQ_TOP_CONTENT_VERSION\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FSEQ_ALIVE_TOKEN\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FSEQ_CNVI_ID\00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FSEQ_CNVR_ID\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CNVI_AUX_MISC_CHIP\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CNVR_AUX_MISC_CHIP\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CNVR_SCU_SD_REGS_SD_REG_DIG_DCDC_VTRIM\00", [57 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CNVR_SCU_SD_REGS_SD_REG_ACTIVE_VDIG_MIRROR\00", [53 x i8] zeroinitializer }, align 32
@__const.iwl_fwrt_dump_fseq_regs.fseq_regs = private unnamed_addr constant [12 x %struct.anon.140] [%struct.anon.140 { i32 10698952, ptr @.str.100 }, %struct.anon.140 { i32 10698808, ptr @.str.101 }, %struct.anon.140 { i32 10698812, ptr @.str.102 }, %struct.anon.140 { i32 10699004, ptr @.str.103 }, %struct.anon.140 { i32 10698996, ptr @.str.104 }, %struct.anon.140 { i32 10698992, ptr @.str.105 }, %struct.anon.140 { i32 10698892, ptr @.str.106 }, %struct.anon.140 { i32 10698896, ptr @.str.107 }, %struct.anon.140 { i32 10617008, ptr @.str.108 }, %struct.anon.140 { i32 10663936, ptr @.str.109 }, %struct.anon.140 { i32 10655888, ptr @.str.110 }, %struct.anon.140 { i32 10656056, ptr @.str.111 }], align 4
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Fseq Registers:\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1515870800, i64 2779096480]
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 435, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 454, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 455, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 161, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 174, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 192, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 193, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 199, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 201, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 203, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 204, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 205, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 206, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 207, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 208, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 209, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 210, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 211, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 212, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 213, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 214, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 215, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 216, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 217, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 218, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 219, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 220, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 221, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 222, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 223, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 224, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 225, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 226, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 227, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 228, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 229, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 230, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 231, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 232, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 233, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 234, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 235, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1375, i32 6 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 125, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 129, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 131, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 132, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 133, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 134, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 135, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 136, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 137, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 138, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 139, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 140, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 141, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 142, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 143, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.h\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 30, i32 31 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 276, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 277, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 278, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 279, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 280, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 281, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 282, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 283, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 284, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 285, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 286, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 287, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 288, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 290, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 293, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 339, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 341, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 342, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 343, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 344, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 345, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 346, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 347, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 348, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 349, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 350, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 351, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 352, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 353, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 355, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 357, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 358, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 359, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 360, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 381, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 384, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 386, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 387, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 391, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 405, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 406, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 407, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 408, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 409, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 410, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 411, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 412, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 413, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 414, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 415, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 416, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.450 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/dump.c\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 422, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_fwrt_dump_error_logs(ptr noundef %fwrt) local_unnamed_addr #0 align 64 {
entry:
  %table.i = alloca %struct.iwl_umac_error_event_table, align 4
  %pnvm_name.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %status = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str) #5
  br label %if.end24

if.end:                                           ; preds = %entry
  tail call fastcc void @iwl_fwrt_dump_lmac_error_log(ptr noundef %fwrt, i8 noundef zeroext 0)
  %7 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fwrt, align 8
  %arrayidx = getelementptr %struct.iwl_trans, ptr %8, i32 0, i32 32, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @iwl_fwrt_dump_lmac_error_log(ptr noundef %fwrt, i8 noundef zeroext 1)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %11 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwrt, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %table.i) #5
  %13 = call ptr @memset(ptr %table.i, i32 0, i32 60)
  %umac_error_event_table.i = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 32, i32 6
  %14 = ptrtoint ptr %umac_error_event_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %umac_error_event_table.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pnvm_name.i) #5
  %16 = call ptr @memset(ptr %pnvm_name.i, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end6.do.end.i_crit_edge

if.end6.do.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end6
  %error_event_table_tlv_status.i = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 32, i32 9
  %17 = ptrtoint ptr %error_event_table_tlv_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error_event_table_tlv_status.i, align 8
  %and.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.iwl_fwrt_dump_umac_error_log.exit_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true.i.iwl_fwrt_dump_umac_error_log.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_fwrt_dump_umac_error_log.exit

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %if.end6.do.end.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %read_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_mem.i.i, align 4
  %call.i.i = call i32 %22(ptr noundef %12, i32 noundef %15, ptr noundef nonnull %table.i, i32 noundef 15) #5
  %23 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool9.not.i = icmp eq i32 %24, 0
  br i1 %tobool9.not.i, label %do.end.i.if.end29.i_crit_edge, label %if.end11.i

do.end.i.if.end29.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.end11.i:                                       ; preds = %do.end.i
  %error_id.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 1
  %25 = ptrtoint ptr %error_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error_id.i, align 4
  %umac_err_id.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 6
  %27 = ptrtoint ptr %umac_err_id.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %umac_err_id.i, align 8
  %mul.i = mul i32 %24, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.not.i = icmp eq i32 %mul.i, 0
  br i1 %cmp.not.i, label %if.end11.i.if.end29.i_crit_edge, label %do.end17.i

if.end11.i.if.end29.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 8
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %29, i32 noundef 0, ptr noundef nonnull @.str.7) #5
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  %32 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fwrt, align 8
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status.i, align 4
  %36 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %table.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %35, i32 noundef %37) #5
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end17.i, %if.end11.i.if.end29.i_crit_edge, %do.end.i.if.end29.i_crit_edge
  %error_id30.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 1
  %38 = ptrtoint ptr %error_id30.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error_id30.i, align 4
  %and31.i = and i32 %39, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050381, i32 %and31.i)
  %cmp32.i = icmp eq i32 %and31.i, 1050381
  br i1 %cmp32.i, label %if.then33.i, label %if.end29.i.do.end46.i_crit_edge

if.end29.i.do.end46.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46.i

if.then33.i:                                      ; preds = %if.end29.i
  %cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 4
  %40 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i.i, align 8
  %fw_name_pre.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %fw_name_pre.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw_name_pre.i.i, align 4
  %call.i170.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pnvm_name.i, i32 noundef 64, ptr noundef nonnull @.str.60, ptr noundef %43) #5
  %44 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i.i, align 8
  %fw_name_pre2.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %fw_name_pre2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw_name_pre2.i.i, align 4
  %call3.i.i = call i32 @strlen(ptr noundef %47) #8
  %48 = add i32 %call3.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %48)
  %49 = icmp ult i32 %48, -63
  br i1 %49, label %if.then33.i.iwl_pnvm_get_fs_name.exit.i_crit_edge, label %if.then.i.i

if.then33.i.iwl_pnvm_get_fs_name.exit.i_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pnvm_get_fs_name.exit.i

if.then.i.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add nsw i32 %call3.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %pnvm_name.i, i32 %sub.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 46, ptr %arrayidx.i.i, align 1
  br label %iwl_pnvm_get_fs_name.exit.i

iwl_pnvm_get_fs_name.exit.i:                      ; preds = %if.then.i.i, %if.then33.i.iwl_pnvm_get_fs_name.exit.i_crit_edge
  %dev38.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %51 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev38.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull %pnvm_name.i) #5
  br label %do.end46.i

do.end46.i:                                       ; preds = %iwl_pnvm_get_fs_name.exit.i, %if.end29.i.do.end46.i_crit_edge
  %dev47.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %53 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev47.i, align 8
  %55 = ptrtoint ptr %error_id30.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error_id30.i, align 4
  %call50.i = call ptr @iwl_fw_lookup_assert_desc(i32 noundef %56) #5
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %54, i32 noundef 0, ptr noundef nonnull @.str.46, i32 noundef %56, ptr noundef %call50.i) #5
  %57 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev47.i, align 8
  %blink1.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 2
  %59 = ptrtoint ptr %blink1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blink1.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %58, i32 noundef 0, ptr noundef nonnull @.str.47, i32 noundef %60) #5
  %61 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev47.i, align 8
  %blink2.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 3
  %63 = ptrtoint ptr %blink2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %blink2.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %62, i32 noundef 0, ptr noundef nonnull @.str.48, i32 noundef %64) #5
  %65 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev47.i, align 8
  %ilink1.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 4
  %67 = ptrtoint ptr %ilink1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ilink1.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %66, i32 noundef 0, ptr noundef nonnull @.str.49, i32 noundef %68) #5
  %69 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev47.i, align 8
  %ilink2.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 5
  %71 = ptrtoint ptr %ilink2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ilink2.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %70, i32 noundef 0, ptr noundef nonnull @.str.50, i32 noundef %72) #5
  %73 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev47.i, align 8
  %data1.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 6
  %75 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %data1.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %74, i32 noundef 0, ptr noundef nonnull @.str.51, i32 noundef %76) #5
  %77 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev47.i, align 8
  %data2.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 7
  %79 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data2.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %78, i32 noundef 0, ptr noundef nonnull @.str.52, i32 noundef %80) #5
  %81 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev47.i, align 8
  %data3.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 8
  %83 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data3.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef %84) #5
  %85 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev47.i, align 8
  %umac_major.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 9
  %87 = ptrtoint ptr %umac_major.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %umac_major.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %86, i32 noundef 0, ptr noundef nonnull @.str.54, i32 noundef %88) #5
  %89 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev47.i, align 8
  %umac_minor.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 10
  %91 = ptrtoint ptr %umac_minor.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %umac_minor.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %90, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %92) #5
  %93 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev47.i, align 8
  %frame_pointer.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 11
  %95 = ptrtoint ptr %frame_pointer.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %frame_pointer.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %94, i32 noundef 0, ptr noundef nonnull @.str.56, i32 noundef %96) #5
  %97 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev47.i, align 8
  %stack_pointer.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 12
  %99 = ptrtoint ptr %stack_pointer.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %stack_pointer.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %98, i32 noundef 0, ptr noundef nonnull @.str.57, i32 noundef %100) #5
  %101 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev47.i, align 8
  %cmd_header.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 13
  %103 = ptrtoint ptr %cmd_header.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cmd_header.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %102, i32 noundef 0, ptr noundef nonnull @.str.58, i32 noundef %104) #5
  %105 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev47.i, align 8
  %nic_isr_pref.i = getelementptr inbounds %struct.iwl_umac_error_event_table, ptr %table.i, i32 0, i32 14
  %107 = ptrtoint ptr %nic_isr_pref.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nic_isr_pref.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %106, i32 noundef 0, ptr noundef nonnull @.str.59, i32 noundef %108) #5
  br label %iwl_fwrt_dump_umac_error_log.exit

iwl_fwrt_dump_umac_error_log.exit:                ; preds = %do.end46.i, %land.lhs.true.i.iwl_fwrt_dump_umac_error_log.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pnvm_name.i) #5
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %table.i) #5
  call fastcc void @iwl_fwrt_dump_tcm_error_log(ptr noundef %fwrt, i32 noundef 0)
  call fastcc void @iwl_fwrt_dump_rcm_error_log(ptr noundef %fwrt, i32 noundef 0)
  call fastcc void @iwl_fwrt_dump_tcm_error_log(ptr noundef %fwrt, i32 noundef 1)
  call fastcc void @iwl_fwrt_dump_rcm_error_log(ptr noundef %fwrt, i32 noundef 1)
  %109 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fwrt, align 8
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %114)
  %cmp.i = icmp ugt i32 %114, 17
  br i1 %cmp.i, label %iwl_fwrt_dump_umac_error_log.exit.if.end9.i_crit_edge, label %if.else.i

iwl_fwrt_dump_umac_error_log.exit.if.end9.i_crit_edge: ; preds = %iwl_fwrt_dump_umac_error_log.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.else.i:                                        ; preds = %iwl_fwrt_dump_umac_error_log.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %114)
  %cmp6.i = icmp ugt i32 %114, 15
  br i1 %cmp6.i, label %if.else.i.if.end9.i_crit_edge, label %if.else.i.iwl_fwrt_dump_iml_error_log.exit_crit_edge

if.else.i.iwl_fwrt_dump_iml_error_log.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_fwrt_dump_iml_error_log.exit

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i.if.end9.i_crit_edge, %iwl_fwrt_dump_umac_error_log.exit.if.end9.i_crit_edge
  %data1.0.i = phi i32 [ 10500288, %iwl_fwrt_dump_umac_error_log.exit.if.end9.i_crit_edge ], [ 10493488, %if.else.i.if.end9.i_crit_edge ]
  %umac_prph_offset.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %112, i32 0, i32 2
  %115 = ptrtoint ptr %umac_prph_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %umac_prph_offset.i.i, align 4
  %add.i.i = add i32 %116, 10500292
  %call.i.i40 = call i32 @iwl_read_prph(ptr noundef %110, i32 noundef %add.i.i) #5
  %dev.i41 = getelementptr inbounds %struct.iwl_trans, ptr %110, i32 0, i32 8
  %117 = ptrtoint ptr %dev.i41 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i41, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %118, i32 noundef 0, ptr noundef nonnull @.str.95) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call.i.i40)
  %tobool.not.i42 = icmp ult i32 %call.i.i40, 65536
  br i1 %tobool.not.i42, label %if.end9.i.do.end25.i_crit_edge, label %do.end17.i44

if.end9.i.do.end25.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25.i

do.end17.i44:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %dev.i41 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i41, align 8
  %shr.i43 = lshr i32 %call.i.i40, 16
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %120, i32 noundef 0, ptr noundef nonnull @.str.96, i32 noundef %shr.i43) #5
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end17.i44, %if.end9.i.do.end25.i_crit_edge
  %dev26.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %121 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev26.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %122, i32 noundef 0, ptr noundef nonnull @.str.97, i32 noundef %call.i.i40) #5
  %123 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev26.i, align 8
  %125 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %trans_cfg.i, align 4
  %umac_prph_offset.i66.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %umac_prph_offset.i66.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %umac_prph_offset.i66.i, align 4
  %add.i67.i = add i32 %128, %data1.0.i
  %call.i68.i = call i32 @iwl_read_prph(ptr noundef %110, i32 noundef %add.i67.i) #5
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %124, i32 noundef 0, ptr noundef nonnull @.str.98, i32 noundef %call.i68.i) #5
  %129 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fwrt, align 8
  %trans_cfg38.i = getelementptr inbounds %struct.iwl_trans, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %trans_cfg38.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %trans_cfg38.i, align 4
  %device_family39.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %device_family39.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %device_family39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %134)
  %cmp40.i = icmp ugt i32 %134, 17
  br i1 %cmp40.i, label %do.end45.i, label %do.end25.i.iwl_fwrt_dump_iml_error_log.exit_crit_edge

do.end25.i.iwl_fwrt_dump_iml_error_log.exit_crit_edge: ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_fwrt_dump_iml_error_log.exit

do.end45.i:                                       ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %135 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev26.i, align 8
  %137 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %trans_cfg.i, align 4
  %umac_prph_offset.i70.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %umac_prph_offset.i70.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %umac_prph_offset.i70.i, align 4
  %add.i71.i = add i32 %140, 10498184
  %call.i72.i = call i32 @iwl_read_prph(ptr noundef %110, i32 noundef %add.i71.i) #5
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %136, i32 noundef 0, ptr noundef nonnull @.str.99, i32 noundef %call.i72.i) #5
  br label %iwl_fwrt_dump_iml_error_log.exit

iwl_fwrt_dump_iml_error_log.exit:                 ; preds = %do.end45.i, %do.end25.i.iwl_fwrt_dump_iml_error_log.exit_crit_edge, %if.else.i.iwl_fwrt_dump_iml_error_log.exit_crit_edge
  %141 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fwrt, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ops.i, align 4
  %grab_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %144, i32 0, i32 32
  %145 = ptrtoint ptr %grab_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %grab_nic_access.i, align 4
  %call.i = call zeroext i1 %146(ptr noundef %142) #5
  br i1 %call.i, label %do.end.i46, label %iwl_fwrt_dump_iml_error_log.exit.iwl_fwrt_dump_fseq_regs.exit_crit_edge, !prof !233

iwl_fwrt_dump_iml_error_log.exit.iwl_fwrt_dump_fseq_regs.exit_crit_edge: ; preds = %iwl_fwrt_dump_iml_error_log.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_fwrt_dump_fseq_regs.exit

do.end.i46:                                       ; preds = %iwl_fwrt_dump_iml_error_log.exit
  %dev.i45 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %147 = ptrtoint ptr %dev.i45 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev.i45, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %148, i32 noundef 0, ptr noundef nonnull @.str.112) #5
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end9.i.do.end9.i_crit_edge, %do.end.i46
  %i.025.i = phi i32 [ 0, %do.end.i46 ], [ %inc.i, %do.end9.i.do.end9.i_crit_edge ]
  %149 = ptrtoint ptr %dev.i45 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i45, align 8
  %arrayidx.i = getelementptr [12 x %struct.anon.140], ptr @__const.iwl_fwrt_dump_fseq_regs.fseq_regs, i32 0, i32 %i.025.i
  %151 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i, align 4
  %call11.i = call i32 @iwl_read_prph_no_grab(ptr noundef %142, i32 noundef %152) #5
  %str.i = getelementptr [12 x %struct.anon.140], ptr @__const.iwl_fwrt_dump_fseq_regs.fseq_regs, i32 0, i32 %i.025.i, i32 1
  %153 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %str.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %150, i32 noundef 0, ptr noundef nonnull @.str.46, i32 noundef %call11.i, ptr noundef %154) #5
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.end.i, label %do.end9.i.do.end9.i_crit_edge

do.end9.i.do.end9.i_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

for.end.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %155 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %156, i32 0, i32 33
  %157 = ptrtoint ptr %release_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %release_nic_access.i.i, align 4
  call void %158(ptr noundef %142) #5
  br label %iwl_fwrt_dump_fseq_regs.exit

iwl_fwrt_dump_fseq_regs.exit:                     ; preds = %for.end.i, %iwl_fwrt_dump_iml_error_log.exit.iwl_fwrt_dump_fseq_regs.exit_crit_edge
  %159 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %fwrt, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %164)
  %cmp = icmp ugt i32 %164, 19
  br i1 %cmp, label %if.then8, label %iwl_fwrt_dump_fseq_regs.exit.if.end24_crit_edge

iwl_fwrt_dump_fseq_regs.exit.if.end24_crit_edge:  ; preds = %iwl_fwrt_dump_fseq_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then8:                                         ; preds = %iwl_fwrt_dump_fseq_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = call i32 @iwl_read32(ptr noundef %160, i32 noundef 44) #5
  %dev14 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %165 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev14, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %166, i32 noundef 0, ptr noundef nonnull @.str.1) #5
  %167 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev14, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %168, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %call10) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then8, %iwl_fwrt_dump_fseq_regs.exit.if.end24_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_fwrt_dump_lmac_error_log(ptr noundef %fwrt, i8 noundef zeroext %lmac_num) unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  %table = alloca %struct.iwl_error_event_table, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %table) #5
  %2 = call ptr @memset(ptr %table, i32 0, i32 152)
  %idxprom = zext i8 %lmac_num to i32
  %arrayidx = getelementptr %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 5, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %cur_fw_img = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 10
  %5 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_fw_img, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then3, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %fw = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  %init_errlog_ptr = getelementptr inbounds %struct.iwl_fw, ptr %8, i32 0, i32 9
  br label %if.end8.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then5, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %fw6 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %9 = ptrtoint ptr %fw6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw6, align 4
  %inst_errlog_ptr = getelementptr inbounds %struct.iwl_fw, ptr %10, i32 0, i32 12
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %if.then5, %if.then3
  %inst_errlog_ptr.sink = phi ptr [ %inst_errlog_ptr, %if.then5 ], [ %init_errlog_ptr, %if.then3 ]
  %11 = ptrtoint ptr %inst_errlog_ptr.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inst_errlog_ptr.sink, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.else.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %base.0 = phi i32 [ %4, %if.then.if.end8_crit_edge ], [ %4, %if.else.if.end8_crit_edge ], [ %12, %if.end8.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %base.0)
  %cmp9 = icmp ult i32 %base.0, 4194304
  br i1 %cmp9, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %cond = select i1 %cmp, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %base.0, ptr noundef nonnull %cond) #5
  br label %cleanup318

if.end16:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #5
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %value.i, align 4, !annotation !234
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %read_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_mem.i.i, align 4
  %call.i.i = call i32 %19(ptr noundef %1, i32 noundef %base.0, ptr noundef nonnull %value.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %iwl_trans_read_mem32.exit, label %iwl_trans_read_mem32.exit.thread, !prof !233

iwl_trans_read_mem32.exit.thread:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1375, i32 noundef 9, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  br label %if.then20

iwl_trans_read_mem32.exit:                        ; preds = %if.end16
  %20 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  %and = and i32 %21, -16
  %22 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %iwl_trans_read_mem32.exit.do.end40_crit_edge [
    i32 -1515870816, label %iwl_trans_read_mem32.exit.if.then20_crit_edge
    i32 1515870800, label %iwl_trans_read_mem32.exit.if.then20_crit_edge393
  ]

iwl_trans_read_mem32.exit.if.then20_crit_edge393: ; preds = %iwl_trans_read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

iwl_trans_read_mem32.exit.if.then20_crit_edge:    ; preds = %iwl_trans_read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

iwl_trans_read_mem32.exit.do.end40_crit_edge:     ; preds = %iwl_trans_read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

if.then20:                                        ; preds = %iwl_trans_read_mem32.exit.if.then20_crit_edge, %iwl_trans_read_mem32.exit.if.then20_crit_edge393, %iwl_trans_read_mem32.exit.thread
  %dev25 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev25, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %24, i32 noundef 0, ptr noundef nonnull @.str.6) #5
  %25 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i, align 4
  %sw_reset.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %26, i32 0, i32 31
  %27 = ptrtoint ptr %sw_reset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sw_reset.i, align 4
  %tobool.not.i383 = icmp eq ptr %28, null
  br i1 %tobool.not.i383, label %if.then20.if.end31_crit_edge, label %iwl_trans_sw_reset.exit

if.then20.if.end31_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

iwl_trans_sw_reset.exit:                          ; preds = %if.then20
  %call.i = call i32 %28(ptr noundef %1, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %iwl_trans_sw_reset.exit.if.end31_crit_edge, label %iwl_trans_sw_reset.exit.cleanup318_crit_edge

iwl_trans_sw_reset.exit.cleanup318_crit_edge:     ; preds = %iwl_trans_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup318

iwl_trans_sw_reset.exit.if.end31_crit_edge:       ; preds = %iwl_trans_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.end31:                                         ; preds = %iwl_trans_sw_reset.exit.if.end31_crit_edge, %if.then20.if.end31_crit_edge
  %call32 = call i32 @iwl_finish_nic_init(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.do.end40_crit_edge, label %if.end31.cleanup318_crit_edge

if.end31.cleanup318_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup318

if.end31.do.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

do.end40:                                         ; preds = %if.end31.do.end40_crit_edge, %iwl_trans_read_mem32.exit.do.end40_crit_edge
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %30, i32 0, i32 26
  %31 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_mem.i, align 4
  %call.i386 = call i32 %32(ptr noundef %1, i32 noundef %base.0, ptr noundef nonnull %table, i32 noundef 38) #5
  %33 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool44.not = icmp eq i32 %34, 0
  br i1 %tobool44.not, label %do.end40.do.end72_crit_edge, label %if.end48

do.end40.do.end72_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72

if.end48:                                         ; preds = %do.end40
  %error_id = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 1
  %35 = ptrtoint ptr %error_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error_id, align 4
  %arrayidx47 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 12, i32 5, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx47, align 4
  %mul = mul i32 %34, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp50.not = icmp eq i32 %mul, 0
  br i1 %cmp50.not, label %if.end48.do.end72_crit_edge, label %do.end55

if.end48.do.end72_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %dev56 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev56, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %39, i32 noundef 0, ptr noundef nonnull @.str.7) #5
  %40 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev56, align 8
  %42 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fwrt, align 8
  %status = getelementptr inbounds %struct.iwl_trans, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  %46 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %table, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %41, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %45, i32 noundef %47) #5
  br label %do.end72

do.end72:                                         ; preds = %do.end55, %if.end48.do.end72_crit_edge, %do.end40.do.end72_crit_edge
  %dev73 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %48 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev73, align 8
  %fw74 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %50 = ptrtoint ptr %fw74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw74, align 4
  %fw_version = getelementptr inbounds %struct.iwl_fw, ptr %51, i32 0, i32 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %49, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef %fw_version) #5
  %52 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev73, align 8
  %error_id82 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 1
  %54 = ptrtoint ptr %error_id82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %error_id82, align 4
  %call84 = call ptr @iwl_fw_lookup_assert_desc(i32 noundef %55) #5
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %53, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %55, ptr noundef %call84) #5
  %56 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev73, align 8
  %trm_hw_status0 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 2
  %58 = ptrtoint ptr %trm_hw_status0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %trm_hw_status0, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %57, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %59) #5
  %60 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev73, align 8
  %trm_hw_status1 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 3
  %62 = ptrtoint ptr %trm_hw_status1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %trm_hw_status1, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %61, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %63) #5
  %64 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev73, align 8
  %blink2 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 4
  %66 = ptrtoint ptr %blink2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %blink2, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %65, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %67) #5
  %68 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev73, align 8
  %ilink1 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 5
  %70 = ptrtoint ptr %ilink1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ilink1, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %69, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %71) #5
  %72 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev73, align 8
  %ilink2 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 6
  %74 = ptrtoint ptr %ilink2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ilink2, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %73, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %75) #5
  %76 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev73, align 8
  %data1 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 7
  %78 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %data1, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %77, i32 noundef 0, ptr noundef nonnull @.str.16, i32 noundef %79) #5
  %80 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev73, align 8
  %data2 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 8
  %82 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data2, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %81, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %83) #5
  %84 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev73, align 8
  %data3 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 9
  %86 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data3, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %85, i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %87) #5
  %88 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev73, align 8
  %bcon_time = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 10
  %90 = ptrtoint ptr %bcon_time to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bcon_time, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %89, i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %91) #5
  %92 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev73, align 8
  %tsf_low = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 11
  %94 = ptrtoint ptr %tsf_low to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tsf_low, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %93, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %95) #5
  %96 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev73, align 8
  %tsf_hi = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 12
  %98 = ptrtoint ptr %tsf_hi to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tsf_hi, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %97, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %99) #5
  %100 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev73, align 8
  %gp1 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 13
  %102 = ptrtoint ptr %gp1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %gp1, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %101, i32 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %103) #5
  %104 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev73, align 8
  %gp2 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 14
  %106 = ptrtoint ptr %gp2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %gp2, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %105, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %107) #5
  %108 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev73, align 8
  %fw_rev_type = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 15
  %110 = ptrtoint ptr %fw_rev_type to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %fw_rev_type, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %109, i32 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %111) #5
  %112 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev73, align 8
  %major = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 16
  %114 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %major, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %113, i32 noundef 0, ptr noundef nonnull @.str.25, i32 noundef %115) #5
  %116 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev73, align 8
  %minor = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 17
  %118 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %minor, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %117, i32 noundef 0, ptr noundef nonnull @.str.26, i32 noundef %119) #5
  %120 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev73, align 8
  %hw_ver = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 18
  %122 = ptrtoint ptr %hw_ver to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %hw_ver, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %121, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %123) #5
  %124 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev73, align 8
  %brd_ver = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 19
  %126 = ptrtoint ptr %brd_ver to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %brd_ver, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %125, i32 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %127) #5
  %128 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev73, align 8
  %hcmd = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 23
  %130 = ptrtoint ptr %hcmd to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hcmd, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %129, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %131) #5
  %132 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev73, align 8
  %isr0 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 24
  %134 = ptrtoint ptr %isr0 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %isr0, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %133, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef %135) #5
  %136 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev73, align 8
  %isr1 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 25
  %138 = ptrtoint ptr %isr1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %isr1, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %137, i32 noundef 0, ptr noundef nonnull @.str.31, i32 noundef %139) #5
  %140 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev73, align 8
  %isr2 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 26
  %142 = ptrtoint ptr %isr2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %isr2, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %141, i32 noundef 0, ptr noundef nonnull @.str.32, i32 noundef %143) #5
  %144 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev73, align 8
  %isr3 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 27
  %146 = ptrtoint ptr %isr3 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %isr3, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %145, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef %147) #5
  %148 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev73, align 8
  %isr4 = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 28
  %150 = ptrtoint ptr %isr4 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %isr4, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %149, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %151) #5
  %152 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev73, align 8
  %last_cmd_id = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 29
  %154 = ptrtoint ptr %last_cmd_id to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %last_cmd_id, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %153, i32 noundef 0, ptr noundef nonnull @.str.35, i32 noundef %155) #5
  %156 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev73, align 8
  %wait_event = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 30
  %158 = ptrtoint ptr %wait_event to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %wait_event, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %157, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %159) #5
  %160 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev73, align 8
  %l2p_control = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 31
  %162 = ptrtoint ptr %l2p_control to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %l2p_control, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %161, i32 noundef 0, ptr noundef nonnull @.str.37, i32 noundef %163) #5
  %164 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev73, align 8
  %l2p_duration = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 32
  %166 = ptrtoint ptr %l2p_duration to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %l2p_duration, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %165, i32 noundef 0, ptr noundef nonnull @.str.38, i32 noundef %167) #5
  %168 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev73, align 8
  %l2p_mhvalid = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 33
  %170 = ptrtoint ptr %l2p_mhvalid to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %l2p_mhvalid, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %169, i32 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %171) #5
  %172 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev73, align 8
  %l2p_addr_match = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 34
  %174 = ptrtoint ptr %l2p_addr_match to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %l2p_addr_match, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %173, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef %175) #5
  %176 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev73, align 8
  %lmpm_pmg_sel = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 35
  %178 = ptrtoint ptr %lmpm_pmg_sel to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %lmpm_pmg_sel, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %177, i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef %179) #5
  %180 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev73, align 8
  %u_timestamp = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 36
  %182 = ptrtoint ptr %u_timestamp to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %u_timestamp, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %181, i32 noundef 0, ptr noundef nonnull @.str.42, i32 noundef %183) #5
  %184 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev73, align 8
  %flow_handler = getelementptr inbounds %struct.iwl_error_event_table, ptr %table, i32 0, i32 37
  %186 = ptrtoint ptr %flow_handler to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flow_handler, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %185, i32 noundef 0, ptr noundef nonnull @.str.43, i32 noundef %187) #5
  br label %cleanup318

cleanup318:                                       ; preds = %do.end72, %if.end31.cleanup318_crit_edge, %iwl_trans_sw_reset.exit.cleanup318_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %table) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_fwrt_dump_tcm_error_log(ptr nocapture noundef readonly %fwrt, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %table = alloca %struct.iwl_tcm_error_event_table, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %table) #5
  %2 = call ptr @memset(ptr %table, i32 0, i32 92)
  %arrayidx = getelementptr %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 7, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not = icmp eq i32 %idx, 0
  %cond = select i1 %tobool.not, i32 8, i32 16
  %error_event_table_tlv_status = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 9
  %5 = ptrtoint ptr %error_event_table_tlv_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error_event_table_tlv_status, align 8
  %and = and i32 %6, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_mem.i, align 4
  %call.i = call i32 %10(ptr noundef %1, i32 noundef %4, ptr noundef nonnull %table, i32 noundef 23) #5
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %add = add i32 %idx, 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.61, i32 noundef %add) #5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %error_id = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 1
  %15 = ptrtoint ptr %error_id to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %error_id, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.62, i32 noundef %16) #5
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %blink2 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 2
  %19 = ptrtoint ptr %blink2 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %blink2, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.63, i32 noundef %20) #5
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %ilink1 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 3
  %23 = ptrtoint ptr %ilink1 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %ilink1, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.64, i32 noundef %24) #5
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %ilink2 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 4
  %27 = ptrtoint ptr %ilink2 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %ilink2, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @.str.65, i32 noundef %28) #5
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %data1 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 5
  %31 = ptrtoint ptr %data1 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %data1, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %30, i32 noundef 0, ptr noundef nonnull @.str.66, i32 noundef %32) #5
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %data2 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 6
  %35 = ptrtoint ptr %data2 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %data2, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %34, i32 noundef 0, ptr noundef nonnull @.str.67, i32 noundef %36) #5
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %data3 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 7
  %39 = ptrtoint ptr %data3 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %data3, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %38, i32 noundef 0, ptr noundef nonnull @.str.68, i32 noundef %40) #5
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %logpc = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 8
  %43 = ptrtoint ptr %logpc to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %logpc, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @.str.69, i32 noundef %44) #5
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  %frame_pointer = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 9
  %47 = ptrtoint ptr %frame_pointer to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %frame_pointer, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %46, i32 noundef 0, ptr noundef nonnull @.str.70, i32 noundef %48) #5
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  %stack_pointer = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 10
  %51 = ptrtoint ptr %stack_pointer to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %stack_pointer, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %50, i32 noundef 0, ptr noundef nonnull @.str.71, i32 noundef %52) #5
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  %msgid = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 11
  %55 = ptrtoint ptr %msgid to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %msgid, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %54, i32 noundef 0, ptr noundef nonnull @.str.72, i32 noundef %56) #5
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 8
  %isr = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 12
  %59 = ptrtoint ptr %isr to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %isr, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %58, i32 noundef 0, ptr noundef nonnull @.str.73, i32 noundef %60) #5
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  %arrayidx105 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 13, i32 0
  %63 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %arrayidx105, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %62, i32 noundef 0, ptr noundef nonnull @.str.74, i32 noundef %64, i32 noundef 0) #5
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 8
  %arrayidx105.1 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 13, i32 1
  %67 = ptrtoint ptr %arrayidx105.1 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %arrayidx105.1, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %66, i32 noundef 0, ptr noundef nonnull @.str.74, i32 noundef %68, i32 noundef 1) #5
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  %arrayidx105.2 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 13, i32 2
  %71 = ptrtoint ptr %arrayidx105.2 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %arrayidx105.2, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %70, i32 noundef 0, ptr noundef nonnull @.str.74, i32 noundef %72, i32 noundef 2) #5
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 8
  %arrayidx105.3 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 13, i32 3
  %75 = ptrtoint ptr %arrayidx105.3 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %arrayidx105.3, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %74, i32 noundef 0, ptr noundef nonnull @.str.74, i32 noundef %76, i32 noundef 3) #5
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 8
  %arrayidx105.4 = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 13, i32 4
  %79 = ptrtoint ptr %arrayidx105.4 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %arrayidx105.4, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %78, i32 noundef 0, ptr noundef nonnull @.str.74, i32 noundef %80, i32 noundef 4) #5
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 8
  %sw_status = getelementptr inbounds %struct.iwl_tcm_error_event_table, ptr %table, i32 0, i32 14
  %83 = ptrtoint ptr %sw_status to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %sw_status, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @.str.75, i32 noundef %84, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %table) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_fwrt_dump_rcm_error_log(ptr nocapture noundef readonly %fwrt, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %table = alloca %struct.iwl_rcm_error_event_table, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %table) #5
  %2 = call ptr @memset(ptr %table, i32 0, i32 92)
  %arrayidx = getelementptr %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 8, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not = icmp eq i32 %idx, 0
  %cond = select i1 %tobool.not, i32 32, i32 64
  %error_event_table_tlv_status = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 9
  %5 = ptrtoint ptr %error_event_table_tlv_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error_event_table_tlv_status, align 8
  %and = and i32 %6, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_mem.i, align 4
  %call.i = call i32 %10(ptr noundef %1, i32 noundef %4, ptr noundef nonnull %table, i32 noundef 23) #5
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %add = add i32 %idx, 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.76, i32 noundef %add) #5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %error_id = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 1
  %15 = ptrtoint ptr %error_id to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %error_id, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.62, i32 noundef %16) #5
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %blink2 = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 2
  %19 = ptrtoint ptr %blink2 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %blink2, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.77, i32 noundef %20) #5
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %ilink1 = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 3
  %23 = ptrtoint ptr %ilink1 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %ilink1, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.78, i32 noundef %24) #5
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %ilink2 = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 4
  %27 = ptrtoint ptr %ilink2 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %ilink2, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @.str.79, i32 noundef %28) #5
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %data1 = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 5
  %31 = ptrtoint ptr %data1 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %data1, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %30, i32 noundef 0, ptr noundef nonnull @.str.80, i32 noundef %32) #5
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %data2 = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 6
  %35 = ptrtoint ptr %data2 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %data2, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %34, i32 noundef 0, ptr noundef nonnull @.str.81, i32 noundef %36) #5
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %data3 = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 7
  %39 = ptrtoint ptr %data3 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %data3, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %38, i32 noundef 0, ptr noundef nonnull @.str.82, i32 noundef %40) #5
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %logpc = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 8
  %43 = ptrtoint ptr %logpc to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %logpc, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @.str.83, i32 noundef %44) #5
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  %frame_pointer = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 9
  %47 = ptrtoint ptr %frame_pointer to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %frame_pointer, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %46, i32 noundef 0, ptr noundef nonnull @.str.84, i32 noundef %48) #5
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  %stack_pointer = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 10
  %51 = ptrtoint ptr %stack_pointer to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %stack_pointer, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %50, i32 noundef 0, ptr noundef nonnull @.str.85, i32 noundef %52) #5
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  %msgid = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 11
  %55 = ptrtoint ptr %msgid to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %msgid, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %54, i32 noundef 0, ptr noundef nonnull @.str.86, i32 noundef %56) #5
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 8
  %isr = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 12
  %59 = ptrtoint ptr %isr to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %isr, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %58, i32 noundef 0, ptr noundef nonnull @.str.87, i32 noundef %60) #5
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  %frame_hw_status = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 13
  %63 = ptrtoint ptr %frame_hw_status to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %frame_hw_status, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %62, i32 noundef 0, ptr noundef nonnull @.str.88, i32 noundef %64) #5
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 8
  %mbx_lmac_to_rcm_req = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 14
  %67 = ptrtoint ptr %mbx_lmac_to_rcm_req to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %mbx_lmac_to_rcm_req, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %66, i32 noundef 0, ptr noundef nonnull @.str.89, i32 noundef %68) #5
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  %mbx_rcm_to_lmac_req = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 15
  %71 = ptrtoint ptr %mbx_rcm_to_lmac_req to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %mbx_rcm_to_lmac_req, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %70, i32 noundef 0, ptr noundef nonnull @.str.90, i32 noundef %72) #5
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 8
  %mh_ctl = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 16
  %75 = ptrtoint ptr %mh_ctl to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %mh_ctl, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %74, i32 noundef 0, ptr noundef nonnull @.str.91, i32 noundef %76) #5
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 8
  %mh_addr1_lo = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 17
  %79 = ptrtoint ptr %mh_addr1_lo to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %mh_addr1_lo, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %78, i32 noundef 0, ptr noundef nonnull @.str.92, i32 noundef %80) #5
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 8
  %mh_info = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 18
  %83 = ptrtoint ptr %mh_info to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %mh_info, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @.str.93, i32 noundef %84) #5
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 8
  %mh_err = getelementptr inbounds %struct.iwl_rcm_error_event_table, ptr %table, i32 0, i32 19
  %87 = ptrtoint ptr %mh_err to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %mh_err, align 1
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %86, i32 noundef 0, ptr noundef nonnull @.str.94, i32 noundef %88) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %table) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_finish_nic_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_fw_lookup_assert_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph_no_grab(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 435, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 454, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 455, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 161, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 174, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 192, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 193, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 199, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 201, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 203, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 204, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 205, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 206, i32 2}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 207, i32 2}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 208, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 209, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 210, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 211, i32 2}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 212, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 213, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 214, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 215, i32 2}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 216, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 217, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 218, i32 2}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 219, i32 2}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 220, i32 2}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 221, i32 2}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 222, i32 2}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 223, i32 2}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 224, i32 2}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 225, i32 2}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 226, i32 2}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 227, i32 2}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 228, i32 2}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 229, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 230, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 231, i32 2}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 232, i32 2}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 233, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 234, i32 2}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 235, i32 2}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 1375, i32 6}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 125, i32 3}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 129, i32 2}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 131, i32 2}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 132, i32 2}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 133, i32 2}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 134, i32 2}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 135, i32 2}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 136, i32 2}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 137, i32 2}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 138, i32 2}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 139, i32 2}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 140, i32 2}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 141, i32 2}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 142, i32 2}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 143, i32 2}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/pnvm.h", i32 30, i32 31}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 276, i32 2}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 277, i32 2}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 278, i32 2}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 279, i32 2}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 280, i32 2}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 281, i32 2}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 282, i32 2}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 283, i32 2}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 284, i32 2}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 285, i32 2}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 286, i32 2}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 287, i32 2}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 288, i32 2}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 290, i32 3}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 293, i32 3}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 339, i32 2}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 341, i32 2}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 342, i32 2}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 343, i32 2}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 344, i32 2}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 345, i32 2}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 346, i32 2}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 347, i32 2}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 348, i32 2}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 349, i32 2}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 350, i32 2}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 351, i32 2}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 352, i32 2}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 353, i32 2}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 355, i32 2}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 357, i32 2}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 358, i32 2}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 359, i32 2}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 360, i32 2}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 381, i32 2}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 384, i32 3}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 386, i32 2}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 387, i32 2}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 391, i32 3}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 405, i32 3}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 406, i32 3}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 407, i32 3}
!204 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 408, i32 3}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 409, i32 3}
!208 = !{ptr @.str.105, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 410, i32 3}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 411, i32 3}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 412, i32 3}
!214 = !{ptr @.str.108, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 413, i32 3}
!216 = !{ptr @.str.109, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 414, i32 3}
!218 = !{ptr @.str.110, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 415, i32 3}
!220 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 416, i32 3}
!222 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/dump.c", i32 422, i32 2}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!233 = !{!"branch_weights", i32 2000, i32 1}
!234 = !{!"auto-init"}
