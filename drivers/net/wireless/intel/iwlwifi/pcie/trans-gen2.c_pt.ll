; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iwl_trans_pcie = type { ptr, ptr, ptr, %struct.iwl_rb_allocator, %union.anon.134, ptr, ptr, ptr, i32, i32, i32, i32, ptr, [92 x i8], %struct.net_device, ptr, i32, i32, i8, i8, i8, i8, %struct.isr_statistics, %struct.spinlock, %struct.mutex, i32, i32, %struct.iwl_dma_ptr, %struct.iwl_dram_data, %struct.iwl_dram_data, ptr, ptr, ptr, i8, i8, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, [6 x i8], i16, i32, i8, i8, i32, i32, i32, %struct.spinlock, ptr, i32, %struct.spinlock, i8, %struct.cont_rec, [16 x %struct.msix_entry], i8, i8, i32, i32, i32, i32, i32, i32, [16 x %struct.cpumask], i16, i8, ptr, i32, i8, i32, %struct.wait_queue_head, [32 x i8], [104 x i8] }
%struct.iwl_rb_allocator = type { %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.work_struct }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.134 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.106 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.isr_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cont_rec = type { i32, i32, i8, %struct.mutex }
%struct.msix_entry = type { i32, i16 }
%struct.cpumask = type { [1 x i32] }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_op_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }

@__func__.iwl_pcie_gen2_apm_init = private unnamed_addr constant [23 x i8] c"iwl_pcie_gen2_apm_init\00", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Init card's basic functions\0A\00", [35 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c\00", [43 x i8] zeroinitializer }, align 32
@__func__._iwl_trans_pcie_gen2_stop_device = private unnamed_addr constant [33 x i8] c"_iwl_trans_pcie_gen2_stop_device\00", align 1
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DEVICE_ENABLED bit was set and is now cleared\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Exit HW not ready\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Can't start_fw since the HW hasn't been started\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to init nic\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"firmware didn't ACK the reset - continue anyway\0A\00", [47 x i8] zeroinitializer }, align 32
@iwl_trans_fw_error.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", [49 x i8] zeroinitializer }, align 32
@__func__._iwl_disable_interrupts = private unnamed_addr constant [24 x i8] c"_iwl_disable_interrupts\00", align 1
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disabled interrupts\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_gen2_apm_stop = private unnamed_addr constant [23 x i8] c"iwl_pcie_gen2_apm_stop\00", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Stop card, put in low power state\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_enable_rfkill_int = private unnamed_addr constant [22 x i8] c"iwl_enable_rfkill_int\00", align 1
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enabling rfkill interrupt\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__._iwl_enable_interrupts = private unnamed_addr constant [23 x i8] c"_iwl_enable_interrupts\00", align 1
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enabling interrupts\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"JF\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GF\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GF4\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HR\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HR1\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HRCDB\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" B3\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" B5\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (0x%x)\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", rfid=0x%x\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Detected RF %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_gen2_nic_init = private unnamed_addr constant [23 x i8] c"iwl_pcie_gen2_nic_init\00", align 1
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Enabling shadow registers in device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", [47 x i8] zeroinitializer }, align 32
@switch.table.iwl_trans_pcie_gen2_fw_alive = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.12, ptr @.str.12, ptr @.str.12, ptr @.str.12, ptr @.str.17, ptr @.str.15, ptr @.str.12, ptr @.str.16, ptr @.str.13, ptr @.str.14], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 265, i64 266, i64 268]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 131072, i64 1179648]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 24, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 132, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 157, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 387, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 416, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 432, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 120, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1426, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 537, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 61, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 700, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 587, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 263, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 266, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 269, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 272, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 275, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 278, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 291, i32 46 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 294, i32 46 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 298, i32 7 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 306, i32 44 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 309, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 316, i32 44 }
@___asan_gen_.100 = private constant [56 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 245, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [52 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 196, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [42 x i8] c"switch.table.iwl_trans_pcie_gen2_fw_alive\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.iwl_trans_pcie_gen2_fw_alive], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_trans_pcie_gen2_fw_alive to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_gen2_apm_init(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_gen2_apm_init, ptr noundef nonnull @.str) #5
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %5(ptr noundef %trans, i32 noundef 256, i32 noundef 8388608, i32 noundef 8388608) #5
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i12 = getelementptr inbounds %struct.iwl_trans_ops, ptr %7, i32 0, i32 34
  %8 = ptrtoint ptr %set_bits_mask.i.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_bits_mask.i.i12, align 4
  tail call void %9(ptr noundef %trans, i32 noundef 576, i32 noundef -65536, i32 noundef -65536) #5
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i14 = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 34
  %12 = ptrtoint ptr %set_bits_mask.i.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_bits_mask.i.i14, align 4
  tail call void %13(ptr noundef %trans, i32 noundef 0, i32 noundef 524288, i32 noundef 524288) #5
  tail call void @iwl_pcie_apm_config(ptr noundef %trans) #5
  %call = tail call i32 @iwl_finish_nic_init(ptr noundef %trans) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_apm_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_finish_nic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_iwl_trans_pcie_gen2_stop_device(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 183
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !69

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %is_down = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 19
  %1 = ptrtoint ptr %is_down to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_down, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool25.not = icmp eq i8 %2, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 6
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp28.not = icmp eq i32 %4, 0
  br i1 %cmp28.not, label %if.end27.if.end33_crit_edge, label %if.then29

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then29:                                        ; preds = %if.end27
  %fw_reset_handshake = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 348
  %5 = ptrtoint ptr %fw_reset_handshake to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_reset_handshake, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool30.not = icmp eq i8 %6, 0
  br i1 %tobool30.not, label %if.then29.if.end33_crit_edge, label %if.then31

if.then29.if.end33_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then31:                                        ; preds = %if.then29
  %fw_reset_state.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 349
  %7 = ptrtoint ptr %fw_reset_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %fw_reset_state.i, align 64
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %8 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %11)
  %cmp.i = icmp ult i32 %11, 19
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %umac_prph_offset.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %umac_prph_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %umac_prph_offset.i.i, align 4
  %add.i.i = add i32 %13, 10509328
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add.i.i, i32 noundef 50331648, i32 noundef 0) #5
  br label %if.end6.i

if.else.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %11)
  %cmp3.i = icmp eq i32 %11, 19
  br i1 %cmp3.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %umac_prph_offset.i79.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %umac_prph_offset.i79.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %umac_prph_offset.i79.i, align 4
  %add.i80.i = add i32 %15, 10509316
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add.i80.i, i32 noundef 3, i32 noundef 0) #5
  br label %if.end6.i

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 304, i32 noundef 3) #5
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else5.i, %if.then4.i, %if.then.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 118) #5
  %16 = ptrtoint ptr %fw_reset_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_reset_state.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp11.not.i = icmp eq i32 %17, 1
  br i1 %cmp11.not.i, label %if.then18.i, label %if.end6.i.lor.lhs.false.i_crit_edge

if.end6.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

if.then18.i:                                      ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #5
  %18 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #5
  %fw_reset_waitq.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 350
  %call2087.i = call i32 @prepare_to_wait_event(ptr noundef %fw_reset_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #5
  %19 = ptrtoint ptr %fw_reset_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_reset_state.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp23.not88.not.i = icmp eq i32 %20, 1
  br i1 %cmp23.not88.not.i, label %if.then18.i.cleanup.i_crit_edge, label %if.end43.thread.i

if.then18.i.cleanup.i_crit_edge:                  ; preds = %if.then18.i
  br label %cleanup.i

if.end43.thread.i:                                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %fw_reset_waitq.i, ptr noundef nonnull %__wq_entry.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #5
  br label %lor.lhs.falsethread-pre-split.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then18.i.cleanup.i_crit_edge
  %__ret19.190.i = phi i32 [ %__ret19.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 20, %if.then18.i.cleanup.i_crit_edge ]
  %call40.i = call i32 @schedule_timeout(i32 noundef %__ret19.190.i) #5
  %call20.i = call i32 @prepare_to_wait_event(ptr noundef %fw_reset_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #5
  %21 = ptrtoint ptr %fw_reset_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_reset_state.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp23.not.i = icmp eq i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool27.not.i = icmp eq i32 %call40.i, 0
  %spec.store.select57.i = select i1 %tobool27.not.i, i32 1, i32 %call40.i
  %__ret19.1.i = select i1 %cmp23.not.i, i32 %call40.i, i32 %spec.store.select57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret19.1.i)
  %tobool33.not.i = icmp eq i32 %__ret19.1.i, 0
  %not.cmp23.not.i = xor i1 %cmp23.not.i, true
  %23 = select i1 %not.cmp23.not.i, i1 true, i1 %tobool33.not.i
  br i1 %23, label %if.end43.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end43.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %fw_reset_waitq.i, ptr noundef nonnull %__wq_entry.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #5
  br i1 %tobool33.not.i, label %if.end43.i.do.end52.i_crit_edge, label %if.end43.i.lor.lhs.falsethread-pre-split.i_crit_edge

if.end43.i.lor.lhs.falsethread-pre-split.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.falsethread-pre-split.i

if.end43.i.do.end52.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52.i

lor.lhs.falsethread-pre-split.i:                  ; preds = %if.end43.i.lor.lhs.falsethread-pre-split.i_crit_edge, %if.end43.thread.i
  %24 = ptrtoint ptr %fw_reset_state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.i = load i32, ptr %fw_reset_state.i, align 64
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.falsethread-pre-split.i, %if.end6.i.lor.lhs.false.i_crit_edge
  %25 = phi i32 [ %.pr.i, %lor.lhs.falsethread-pre-split.i ], [ %17, %if.end6.i.lor.lhs.false.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp47.i = icmp eq i32 %25, 3
  br i1 %cmp47.i, label %lor.lhs.false.i.do.end52.i_crit_edge, label %lor.lhs.false.i.iwl_trans_pcie_fw_reset_handshake.exit_crit_edge

lor.lhs.false.i.iwl_trans_pcie_fw_reset_handshake.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_trans_pcie_fw_reset_handshake.exit

lor.lhs.false.i.do.end52.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52.i

do.end52.i:                                       ; preds = %lor.lhs.false.i.do.end52.i_crit_edge, %if.end43.i.do.end52.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %27, ptr noundef nonnull @.str.6) #5
  %op_mode.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %28 = ptrtoint ptr %op_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %op_mode.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end40.critedge.i.i

land.rhs.i.i:                                     ; preds = %do.end52.i
  %.b1.i.i = load i1, ptr @iwl_trans_fw_error.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.iwl_trans_pcie_fw_reset_handshake.exit_crit_edge, label %if.then.i.i, !prof !71

land.rhs.i.i.iwl_trans_pcie_fw_reset_handshake.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_trans_pcie_fw_reset_handshake.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @iwl_trans_fw_error.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1426, i32 noundef 9, ptr noundef null) #5
  br label %iwl_trans_pcie_fw_reset_handshake.exit

if.end40.critedge.i.i:                            ; preds = %do.end52.i
  %status.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %status.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool41.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool41.not.i.i, label %if.then42.i.i, label %if.end40.critedge.i.i.iwl_trans_pcie_fw_reset_handshake.exit_crit_edge

if.end40.critedge.i.i.iwl_trans_pcie_fw_reset_handshake.exit_crit_edge: ; preds = %if.end40.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_trans_pcie_fw_reset_handshake.exit

if.then42.i.i:                                    ; preds = %if.end40.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %op_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %op_mode.i.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %nic_error.i.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %nic_error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nic_error.i.i.i, align 4
  call void %35(ptr noundef %31, i1 noundef zeroext true) #5
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %state, align 8
  br label %iwl_trans_pcie_fw_reset_handshake.exit

iwl_trans_pcie_fw_reset_handshake.exit:           ; preds = %if.then42.i.i, %if.end40.critedge.i.i.iwl_trans_pcie_fw_reset_handshake.exit_crit_edge, %if.then.i.i, %land.rhs.i.i.iwl_trans_pcie_fw_reset_handshake.exit_crit_edge, %lor.lhs.false.i.iwl_trans_pcie_fw_reset_handshake.exit_crit_edge
  %37 = ptrtoint ptr %fw_reset_state.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %fw_reset_state.i, align 64
  br label %if.end33

if.end33:                                         ; preds = %iwl_trans_pcie_fw_reset_handshake.exit, %if.then29.if.end33_crit_edge, %if.end27.if.end33_crit_edge
  %38 = ptrtoint ptr %is_down to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %is_down, align 1
  call fastcc void @iwl_disable_interrupts(ptr noundef %trans)
  call void @iwl_pcie_disable_ict(ptr noundef %trans) #5
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %call35 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end33.if.end45_crit_edge, label %do.end41

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_trans_pcie_gen2_stop_device, ptr noundef nonnull @.str.2) #5
  call void @iwl_txq_gen2_tx_free(ptr noundef %trans) #5
  %call44 = call i32 @iwl_pcie_rx_stop(ptr noundef %trans) #5
  br label %if.end45

if.end45:                                         ; preds = %do.end41, %if.end33.if.end45_crit_edge
  call void @iwl_pcie_ctxt_info_free_paging(ptr noundef %trans) #5
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %41 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %44)
  %cmp46 = icmp ugt i32 %44, 18
  br i1 %cmp46, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  call void @iwl_pcie_ctxt_info_gen3_free(ptr noundef %trans, i1 noundef zeroext false) #5
  br label %if.end48

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  call void @iwl_pcie_ctxt_info_free(ptr noundef %trans) #5
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then47
  %dev.i77 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %45 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i77, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %46, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_gen2_apm_stop, ptr noundef nonnull @.str.9) #5
  call void @_clear_bit(i32 noundef 1, ptr noundef %status) #5
  call void @iwl_pcie_apm_stop_master(ptr noundef %trans) #5
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 4
  %sw_reset.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %48, i32 0, i32 31
  %49 = ptrtoint ptr %sw_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sw_reset.i.i, align 4
  %tobool.not.i.i78 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i78, label %if.end48.iwl_pcie_gen2_apm_stop.exit_crit_edge, label %if.then.i.i80

if.end48.iwl_pcie_gen2_apm_stop.exit_crit_edge:   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_gen2_apm_stop.exit

if.then.i.i80:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i79 = call i32 %50(ptr noundef %trans, i1 noundef zeroext false) #5
  br label %iwl_pcie_gen2_apm_stop.exit

iwl_pcie_gen2_apm_stop.exit:                      ; preds = %if.then.i.i80, %if.end48.iwl_pcie_gen2_apm_stop.exit_crit_edge
  %51 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %trans_cfg, align 4
  %device_family.i82 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %device_family.i82 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %device_family.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %54)
  %cmp.i83 = icmp ugt i32 %54, 19
  %55 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %56, i32 0, i32 34
  %57 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  %..i = select i1 %cmp.i83, i32 64, i32 4
  call void %58(ptr noundef %trans, i32 noundef 36, i32 noundef %..i, i32 noundef 0) #5
  %59 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i.i, align 4
  %sw_reset.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %60, i32 0, i32 31
  %61 = ptrtoint ptr %sw_reset.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sw_reset.i, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %iwl_pcie_gen2_apm_stop.exit.iwl_trans_sw_reset.exit_crit_edge, label %if.then.i85

iwl_pcie_gen2_apm_stop.exit.iwl_trans_sw_reset.exit_crit_edge: ; preds = %iwl_pcie_gen2_apm_stop.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_trans_sw_reset.exit

if.then.i85:                                      ; preds = %iwl_pcie_gen2_apm_stop.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i84 = call i32 %62(ptr noundef %trans, i1 noundef zeroext true) #5
  br label %iwl_trans_sw_reset.exit

iwl_trans_sw_reset.exit:                          ; preds = %if.then.i85, %iwl_pcie_gen2_apm_stop.exit.iwl_trans_sw_reset.exit_crit_edge
  call void @iwl_pcie_conf_msix_hw(ptr noundef %trans_specific.i) #5
  call fastcc void @iwl_disable_interrupts(ptr noundef %trans)
  call void @_clear_bit(i32 noundef 0, ptr noundef %status) #5
  call void @_clear_bit(i32 noundef 3, ptr noundef %status) #5
  call void @_clear_bit(i32 noundef 2, ptr noundef %status) #5
  %63 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i77, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %64, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_rfkill_int, ptr noundef nonnull @.str.10) #5
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %65 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %msix_enabled.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i87 = icmp eq i8 %66, 0
  br i1 %tobool.not.i87, label %if.then.i88, label %if.else.i89

if.then.i88:                                      ; preds = %iwl_trans_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %inta_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %67 = ptrtoint ptr %inta_mask.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 128, ptr %inta_mask.i, align 4
  call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef 128) #5
  br label %if.end.i

if.else.i89:                                      ; preds = %iwl_trans_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %68 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fh_init_mask.i, align 32
  call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %69) #5
  call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef -129) #5
  %hw_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %70 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 128, ptr %hw_mask.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i89, %if.then.i88
  %71 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trans_cfg, align 4
  %device_family.i91 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %device_family.i91 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %device_family.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %74)
  %cmp.i92 = icmp ugt i32 %74, 16
  br i1 %cmp.i92, label %if.then5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i.i93 = getelementptr inbounds %struct.iwl_trans_ops, ptr %76, i32 0, i32 34
  %77 = ptrtoint ptr %set_bits_mask.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_bits_mask.i.i.i93, align 4
  call void %78(ptr noundef %trans, i32 noundef 36, i32 noundef 67108864, i32 noundef 67108864) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_disable_interrupts(ptr noundef %trans) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %irq_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #5
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status.i) #5
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %0 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msix_enabled.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef 0) #5
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 8, i32 noundef -1) #5
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 16, i32 noundef -1) #5
  br label %_iwl_disable_interrupts.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %2 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fh_init_mask.i, align 32
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %3) #5
  %hw_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 326
  %4 = ptrtoint ptr %hw_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_init_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef %5) #5
  br label %_iwl_disable_interrupts.exit

_iwl_disable_interrupts.exit:                     ; preds = %if.else.i, %if.then.i
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_disable_interrupts, ptr noundef nonnull @.str.8) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_disable_ict(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_gen2_tx_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_rx_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_ctxt_info_free_paging(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_ctxt_info_gen3_free(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_ctxt_info_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_conf_msix_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_pcie_gen2_stop_device(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %0 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_mode, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.iwl_op_mode_time_point.exit_crit_edge, label %lor.lhs.false.i

entry.iwl_op_mode_time_point.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_op_mode_time_point.exit

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.iwl_op_mode_time_point.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.iwl_op_mode_time_point.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_op_mode_time_point.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %time_point.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %time_point.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %time_point.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.iwl_op_mode_time_point.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.iwl_op_mode_time_point.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_op_mode_time_point.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef nonnull %1, i32 noundef 15, ptr noundef null) #5
  br label %iwl_op_mode_time_point.exit

iwl_op_mode_time_point.exit:                      ; preds = %if.end.i, %lor.lhs.false2.i.iwl_op_mode_time_point.exit_crit_edge, %lor.lhs.false.i.iwl_op_mode_time_point.exit_crit_edge, %entry.iwl_op_mode_time_point.exit_crit_edge
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 167
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %opmode_down = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 20
  %6 = ptrtoint ptr %opmode_down to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %opmode_down, align 2
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool = icmp ne i32 %9, 0
  tail call void @_iwl_trans_pcie_gen2_stop_device(ptr noundef %trans)
  tail call void @iwl_trans_pcie_handle_stop_rfkill(ptr noundef %trans, i1 noundef zeroext %tobool) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_pcie_handle_stop_rfkill(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_pcie_gen2_fw_alive(ptr noundef %trans, i32 noundef %scd_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iwl_pcie_reset_ict(ptr noundef %trans) #5
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = call ptr @memset(ptr %txqs, i32 0, i32 128)
  %1 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %4)
  %cmp = icmp ugt i32 %4, 18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iwl_pcie_ctxt_info_gen3_free(ptr noundef %trans, i1 noundef zeroext true) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iwl_pcie_ctxt_info_free(ptr noundef %trans) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %irq_lock.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock.i) #5
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %6, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_enable_interrupts, ptr noundef nonnull @.str.11) #5
  %status.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i.i) #5
  %msix_enabled.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %7 = ptrtoint ptr %msix_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %msix_enabled.i.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %inta_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %9 = ptrtoint ptr %inta_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1174404981, ptr %inta_mask.i.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef -1174404981) #5
  br label %iwl_enable_interrupts.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hw_init_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 326
  %10 = ptrtoint ptr %hw_init_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_init_mask.i.i, align 4
  %hw_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %12 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %hw_mask.i.i, align 4
  %fh_init_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %13 = ptrtoint ptr %fh_init_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fh_init_mask.i.i, align 32
  %fh_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 327
  %15 = ptrtoint ptr %fh_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fh_mask.i.i, align 8
  %neg.i.i = xor i32 %14, -1
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %neg.i.i) #5
  %16 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_mask.i.i, align 4
  %neg7.i.i = xor i32 %17, -1
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef %neg7.i.i) #5
  br label %iwl_enable_interrupts.exit

iwl_enable_interrupts.exit:                       ; preds = %if.else.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock.i) #5
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 167
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call3 = tail call zeroext i1 @iwl_pcie_check_hw_rf_kill(ptr noundef %trans) #5
  %rf_name.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 363
  %18 = ptrtoint ptr %rf_name.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rf_name.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end.i, label %iwl_enable_interrupts.exit.iwl_pcie_get_rf_name.exit_crit_edge

iwl_enable_interrupts.exit.iwl_pcie_get_rf_name.exit_crit_edge: ; preds = %iwl_enable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_rf_name.exit

if.end.i:                                         ; preds = %iwl_enable_interrupts.exit
  %hw_rf_id.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 12
  %20 = ptrtoint ptr %hw_rf_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_rf_id.i, align 8
  %and.i = lshr i32 %21, 12
  %shr.i = and i32 %and.i, 4095
  %switch.tableidx = add nsw i32 %shr.i, -261
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 10
  br i1 %22, label %switch.hole_check, label %if.end.i.iwl_pcie_get_rf_name.exit_crit_edge

if.end.i.iwl_pcie_get_rf_name.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_rf_name.exit

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 945, %switch.maskindex
  %23 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %switch.lobit.not = icmp eq i16 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.iwl_pcie_get_rf_name.exit_crit_edge, label %switch.lookup

switch.hole_check.iwl_pcie_get_rf_name.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_rf_name.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.iwl_trans_pcie_gen2_fw_alive, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %rf_name.i, i32 noundef 32, ptr noundef nonnull %switch.load) #5
  %25 = ptrtoint ptr %hw_rf_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_rf_id.i, align 8
  %and13.i = lshr i32 %26, 12
  %shr14.i = and i32 %and13.i, 4095
  %27 = zext i32 %shr14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr14.i, label %switch.lookup.sw.epilog31.i_crit_edge [
    i32 266, label %switch.lookup.sw.bb15.i_crit_edge
    i32 268, label %switch.lookup.sw.bb15.i_crit_edge15
    i32 265, label %switch.lookup.sw.bb15.i_crit_edge16
  ]

switch.lookup.sw.bb15.i_crit_edge16:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15.i

switch.lookup.sw.bb15.i_crit_edge15:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15.i

switch.lookup.sw.bb15.i_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15.i

switch.lookup.sw.epilog31.i_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog31.i

sw.bb15.i:                                        ; preds = %switch.lookup.sw.bb15.i_crit_edge, %switch.lookup.sw.bb15.i_crit_edge15, %switch.lookup.sw.bb15.i_crit_edge16
  %call16.i = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef 10698764) #5
  %28 = zext i32 %call16.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call16.i, label %sw.default24.i [
    i32 131072, label %sw.bb17.i
    i32 1179648, label %sw.bb19.i
  ]

sw.bb17.i:                                        ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %rf_name.i, i32 %call11.i
  %sub.i = sub i32 32, %call11.i
  %call18.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.18) #5
  %add.i = add i32 %call18.i, %call11.i
  br label %sw.epilog31.i

sw.bb19.i:                                        ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr20.i = getelementptr i8, ptr %rf_name.i, i32 %call11.i
  %sub21.i = sub i32 32, %call11.i
  %call22.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20.i, i32 noundef %sub21.i, ptr noundef nonnull @.str.19) #5
  %add23.i = add i32 %call22.i, %call11.i
  br label %sw.epilog31.i

sw.default24.i:                                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr25.i = getelementptr i8, ptr %rf_name.i, i32 %call11.i
  %sub26.i = sub i32 32, %call11.i
  %call27.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25.i, i32 noundef %sub26.i, ptr noundef nonnull @.str.20, i32 noundef %call16.i) #5
  %add28.i = add i32 %call27.i, %call11.i
  br label %sw.epilog31.i

sw.epilog31.i:                                    ; preds = %sw.default24.i, %sw.bb19.i, %sw.bb17.i, %switch.lookup.sw.epilog31.i_crit_edge
  %pos.1.i = phi i32 [ %call11.i, %switch.lookup.sw.epilog31.i_crit_edge ], [ %add28.i, %sw.default24.i ], [ %add23.i, %sw.bb19.i ], [ %add.i, %sw.bb17.i ]
  %add.ptr32.i = getelementptr i8, ptr %rf_name.i, i32 %pos.1.i
  %sub33.i = sub i32 32, %pos.1.i
  %29 = ptrtoint ptr %hw_rf_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_rf_id.i, align 8
  %call35.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32.i, i32 noundef %sub33.i, ptr noundef nonnull @.str.21, i32 noundef %30) #5
  %add36.i = add i32 %call35.i, %pos.1.i
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @__iwl_info(ptr noundef %32, ptr noundef nonnull @.str.22, ptr noundef %rf_name.i) #5
  %add.ptr40.i = getelementptr i8, ptr %rf_name.i, i32 %add36.i
  %sub41.i = sub i32 32, %add36.i
  %call42.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.i, i32 noundef %sub41.i, ptr noundef nonnull @.str.23) #5
  br label %iwl_pcie_get_rf_name.exit

iwl_pcie_get_rf_name.exit:                        ; preds = %sw.epilog31.i, %switch.hole_check.iwl_pcie_get_rf_name.exit_crit_edge, %if.end.i.iwl_pcie_get_rf_name.exit_crit_edge, %iwl_enable_interrupts.exit.iwl_pcie_get_rf_name.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_reset_ict(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_pcie_check_hw_rf_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_trans_pcie_gen2_start_fw(ptr noundef %trans, ptr noundef %fw, i1 noundef zeroext %run_in_rfkill) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %call1 = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %trans) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_rfkill_int, ptr noundef nonnull @.str.10) #5
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %2 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_enabled.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %inta_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %4 = ptrtoint ptr %inta_mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %inta_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef 128) #5
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %5 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fh_init_mask.i, align 32
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %6) #5
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef -129) #5
  %hw_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %7 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %hw_mask.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %8 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp.i = icmp ugt i32 %11, 16
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.iwl_enable_rfkill_int.exit_crit_edge

if.end.i.iwl_enable_rfkill_int.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_enable_rfkill_int.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %13, i32 0, i32 34
  %14 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %15(ptr noundef %trans, i32 noundef 36, i32 noundef 67108864, i32 noundef 67108864) #5
  br label %iwl_enable_rfkill_int.exit

iwl_enable_rfkill_int.exit:                       ; preds = %if.then5.i, %if.end.i.iwl_enable_rfkill_int.exit_crit_edge
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 8, i32 noundef -1) #5
  tail call fastcc void @iwl_disable_interrupts(ptr noundef %trans)
  tail call void @iwl_pcie_synchronize_irqs(ptr noundef %trans) #5
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 167
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call5 = tail call zeroext i1 @iwl_pcie_check_hw_rf_kill(ptr noundef %trans) #5
  %call5.not = xor i1 %call5, true
  %brmerge = or i1 %call5.not, %run_in_rfkill
  br i1 %brmerge, label %if.end10, label %iwl_enable_rfkill_int.exit.out_crit_edge

iwl_enable_rfkill_int.exit.out_crit_edge:         ; preds = %iwl_enable_rfkill_int.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end10:                                         ; preds = %iwl_enable_rfkill_int.exit
  %is_down = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 19
  %16 = ptrtoint ptr %is_down to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_down, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  br i1 %tobool11.not, label %if.end20, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %19, ptr noundef nonnull @.str.4) #5
  br label %out

if.end20:                                         ; preds = %if.end10
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 92, i32 noundef 2) #5
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 92, i32 noundef 4) #5
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 8, i32 noundef -1) #5
  %cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %min_txq_size.i = getelementptr inbounds %struct.iwl_cfg, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %min_txq_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %min_txq_size.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock.i) #5
  %call1.i = tail call i32 @iwl_pcie_gen2_apm_init(ptr noundef %trans) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock.i) #5
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %24 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %op_mode.i, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 196) #5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %nic_config.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %nic_config.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nic_config.i.i, align 4
  tail call void %29(ptr noundef %25) #5
  %call3.i = tail call i32 @iwl_pcie_gen2_rx_init(ptr noundef %trans) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i93 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i93, label %if.end.i94, label %if.end20.do.end27_crit_edge

if.end20.do.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

if.end.i94:                                       ; preds = %if.end20
  %30 = tail call i32 @llvm.umax.i32(i32 %23, i32 32) #5
  %q_id.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %31 = ptrtoint ptr %q_id.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %q_id.i, align 1
  %conv.i = zext i8 %32 to i32
  %call4.i = tail call i32 @iwl_txq_gen2_init(ptr noundef %trans, i32 noundef %conv.i, i32 noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end31, label %if.end.i94.do.end27_crit_edge

if.end.i94.do.end27_crit_edge:                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

do.end27:                                         ; preds = %if.end.i94.do.end27_crit_edge, %if.end20.do.end27_crit_edge
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %34, i32 noundef 0, ptr noundef nonnull @.str.5) #5
  br label %out

if.end31:                                         ; preds = %if.end.i94
  %ops.i.i.i95 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %35 = ptrtoint ptr %ops.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i.i95, align 4
  %set_bits_mask.i.i.i96 = getelementptr inbounds %struct.iwl_trans_ops, ptr %36, i32 0, i32 34
  %37 = ptrtoint ptr %set_bits_mask.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_bits_mask.i.i.i96, align 4
  tail call void %38(ptr noundef %trans, i32 noundef 168, i32 noundef -2146435073, i32 noundef -2146435073) #5
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_gen2_nic_init, ptr noundef nonnull @.str.24) #5
  %41 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trans_cfg.i, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %44)
  %cmp = icmp ugt i32 %44, 18
  br i1 %cmp, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 @iwl_pcie_ctxt_info_gen3_init(ptr noundef %trans, ptr noundef %fw) #5
  br label %if.end35

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call i32 @iwl_pcie_ctxt_info_init(ptr noundef %trans, ptr noundef %fw) #5
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then32
  %ret.0 = phi i32 [ %call33, %if.then32 ], [ %call34, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool36.not = icmp eq i32 %ret.0, 0
  br i1 %tobool36.not, label %if.end38, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end38:                                         ; preds = %if.end35
  tail call fastcc void @iwl_pcie_set_ltr(ptr noundef %trans)
  %45 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trans_cfg.i, align 4
  %device_family40 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %device_family40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %device_family40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %48)
  %cmp41 = icmp ugt i32 %48, 19
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 44, i32 noundef 16843009) #5
  %49 = ptrtoint ptr %ops.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i.i95, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %50, i32 0, i32 34
  %51 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %52(ptr noundef %trans, i32 noundef 36, i32 noundef 128, i32 noundef 128) #5
  br label %if.end50

if.else43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %48)
  %cmp46 = icmp eq i32 %48, 19
  br i1 %cmp46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #7
  %umac_prph_offset.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %46, i32 0, i32 2
  %53 = ptrtoint ptr %umac_prph_offset.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %umac_prph_offset.i, align 4
  %add.i = add i32 %54, 10509380
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add.i, i32 noundef 1, i32 noundef 0) #5
  br label %if.end50

if.else48:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10509380, i32 noundef 1, i32 noundef 0) #5
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then47, %if.then42
  %call51 = tail call zeroext i1 @iwl_pcie_check_hw_rf_kill(ptr noundef %trans) #5
  %spec.select = select i1 %run_in_rfkill, i32 0, i32 -132
  %spec.select92 = select i1 %call51, i32 %spec.select, i32 0
  br label %out

out:                                              ; preds = %if.end50, %if.end35.out_crit_edge, %do.end27, %do.end16, %iwl_enable_rfkill_int.exit.out_crit_edge
  %ret.1 = phi i32 [ -5, %do.end16 ], [ -12, %do.end27 ], [ %ret.0, %if.end35.out_crit_edge ], [ -132, %iwl_enable_rfkill_int.exit.out_crit_edge ], [ %spec.select92, %if.end50 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_prepare_card_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_synchronize_irqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_ctxt_info_gen3_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_ctxt_info_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_set_ltr(ptr noundef %trans) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_family, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %4)
  %switch = icmp eq i32 %4, 18
  br i1 %switch, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %integrated = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %integrated to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %integrated, align 4
  %6 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 212, i32 noundef -1996846854) #5
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %integrated13 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %integrated13 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load14 = load i16, ptr %integrated13, align 4
  %8 = and i16 %bf.load14, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool18.not = icmp ne i16 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %3)
  %cmp22 = icmp eq i32 %3, 18
  %or.cond = select i1 %tobool18.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then23, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10499212, i32 noundef 15, i32 noundef 0) #5
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10499200, i32 noundef -1996846854, i32 noundef 0) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.else.if.end24_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_apm_stop_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_gen2_rx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_txq_gen2_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_delay(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__func__.iwl_pcie_gen2_apm_init, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 24, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 132, i32 2}
!5 = !{ptr @__func__._iwl_trans_pcie_gen2_stop_device, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 157, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 387, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 416, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 432, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 120, i32 3}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 1426, i32 6}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__func__._iwl_disable_interrupts, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 537, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__func__.iwl_pcie_gen2_apm_stop, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 61, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__func__.iwl_enable_rfkill_int, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 700, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__func__._iwl_enable_interrupts, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 587, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 263, i32 32}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 266, i32 32}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 269, i32 32}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 272, i32 32}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 275, i32 32}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 278, i32 32}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 291, i32 46}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 294, i32 46}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 298, i32 7}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 306, i32 44}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 309, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 316, i32 44}
!55 = !{ptr @__func__.iwl_pcie_gen2_nic_init, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans-gen2.c", i32 245, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h", i32 196, i32 2}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i8 0, i8 2}
!71 = !{!"branch_weights", i32 2000, i32 1}
