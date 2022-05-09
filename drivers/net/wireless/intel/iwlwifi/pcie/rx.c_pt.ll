; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/pcie/rx.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/pcie/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%struct.atomic_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
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
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_rxq = type { i32, ptr, i32, %union.anon.133, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i8, i8, ptr, i32, %struct.spinlock, %struct.napi_struct, [256 x ptr] }
%union.anon.133 = type { ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.page = type { i32, %union.anon.9, %union.anon.83, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.83 = type { %struct.atomic_t }
%struct.iwl_rx_mem_buffer = type { i32, ptr, %struct.list_head, i32, i16, i8 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.msix_entry = type { i32, i16 }
%struct.iwl_trans_pcie = type { ptr, ptr, ptr, %struct.iwl_rb_allocator, %union.anon.134, ptr, ptr, ptr, i32, i32, i32, i32, ptr, [92 x i8], %struct.net_device, ptr, i32, i32, i8, i8, i8, i8, %struct.isr_statistics, %struct.spinlock, %struct.mutex, i32, i32, %struct.iwl_dma_ptr, %struct.iwl_dram_data, %struct.iwl_dram_data, ptr, ptr, ptr, i8, i8, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, [6 x i8], i16, i32, i8, i8, i32, i32, i32, %struct.spinlock, ptr, i32, %struct.spinlock, i8, %struct.cont_rec, [16 x %struct.msix_entry], i8, i8, i32, i32, i32, i32, i32, i32, [16 x %struct.cpumask], i16, i8, ptr, i32, i8, i32, %struct.wait_queue_head, [32 x i8], [104 x i8] }
%struct.iwl_rb_allocator = type { %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.134 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.isr_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cont_rec = type { i32, i32, i8, %struct.mutex }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_op_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_txq = type { ptr, ptr, i32, ptr, %struct.spinlock, i32, %struct.timer_list, ptr, i8, i8, i8, i32, i32, %struct.sk_buff_head, %struct.iwl_dma_ptr, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.iwl_rx_transfer_desc = type { i16, [3 x i16], i64 }
%struct.iwl_prph_info = type { i32, i32, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_completion_desc = type { i32, i16, i8, [25 x i8] }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_pcie_txq_entry = type { ptr, ptr, ptr, %struct.iwl_cmd_meta }
%struct.iwl_cmd_meta = type { ptr, i32, i32 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/rx.c\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_rx_free = private unnamed_addr constant [17 x i8] c"iwl_pcie_rx_free\00", align 1
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Free NULL rx context\0A\00", [42 x i8] zeroinitializer }, align 32
@iwl_pcie_irq_rx_msix_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%d] Got MSI-X interrupt before we have Rx queues\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_irq_rx_msix_handler = private unnamed_addr constant [29 x i8] c"iwl_pcie_irq_rx_msix_handler\00", align 1
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%d] Got interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RF_KILL bit toggled to %s.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disable radio\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enable radio\00", [19 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_handle_rfkill_irq = private unnamed_addr constant [27 x i8] c"iwl_pcie_handle_rfkill_irq\00", align 1
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Rfkill while SYNC HCMD in flight\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_irq_handler = private unnamed_addr constant [21 x i8] c"iwl_pcie_irq_handler\00", align 1
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ISR inta 0x%08x, enabled 0x%08x(sw), enabled(hw) 0x%08x, fh 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"We got a masked interrupt (0x%08x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Ignore interrupt, inta == 0\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HARDWARE GONE?? INTA == 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"inta 0x%08x, enabled 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Hardware error detected.  Restarting.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Scheduler finished to transmit the frame/frames.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Alive interrupt\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Microcode CT kill error detected.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Microcode SW error detected.  Restarting 0x%X.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Wakeup interrupt\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Rx interrupt\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uCode load interrupt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled INTA bits 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Disabled INTA bits 0x%08x were pending\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_reset_ict = private unnamed_addr constant [19 x i8] c"iwl_pcie_reset_ict\00", align 1
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CSR_DRAM_INT_TBL_REG =0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_irq_msix_handler = private unnamed_addr constant [26 x i8] c"iwl_pcie_irq_msix_handler\00", align 1
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ISR[%d] inta_fh 0x%08x, enabled (sw) 0x%08x (hw) 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Microcode SW error detected. Restarting 0x%X.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ISR[%d] inta_hw 0x%08x, enabled (sw) 0x%08x (hw) 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"We got a masked interrupt 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Sx interrupt: sleep notification = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Hardware error detected. Restarting.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Reset flow completed\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_rx_alloc_page = private unnamed_addr constant [23 x i8] c"iwl_pcie_rx_alloc_page\00", align 1
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"alloc_pages failed, order: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to alloc_pages\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__func__.iwl_pcie_rx_allocator = private unnamed_addr constant [22 x i8] c"iwl_pcie_rx_allocator\00", align 1
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Pending allocation requests = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Got more pending allocation requests = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s, exit.\0A\00", [21 x i8] zeroinitializer }, align 32
@iwl_pcie_rx_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rba->lock\00", [21 x i8] zeroinitializer }, align 32
@iwl_pcie_alloc_rxq_dma.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rxq->lock\00", [21 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_napi_poll = private unnamed_addr constant [19 x i8] c"iwl_pcie_napi_poll\00", align 1
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%d] handled %d, budget %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iwl_pcie_rx_handle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_pcie_rx_handle = private unnamed_addr constant [19 x i8] c"iwl_pcie_rx_handle\00", align 1
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Q %d: HW = SW = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"RX path is in emergency. Pending allocations %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Q %d: HW = %d, SW = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RX path exited emergency. Pending allocations %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_get_rxb = private unnamed_addr constant [17 x i8] c"iwl_pcie_get_rxb\00", align 1
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Got virtual RB ID %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid rxb from HW %u\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_rx_handle_rb = private unnamed_addr constant [22 x i8] c"iwl_pcie_rx_handle_rb\00", align 1
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Q %d: RB end marker at offset %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"frame on invalid queue - is on %d and indicates %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Q %d: cmd at offset %d: %s (%.2x.%2x, seq 0x%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Claim null rxb?\0A\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_iwlwifi_dev_rx = external dso_local global %struct.tracepoint, align 4
@.str.52 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h\00", [38 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_iwlwifi_dev_rx_data = external dso_local global %struct.tracepoint, align 4
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-devtrace-data.h\00", [41 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_rx_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_pcie_napi_poll_msix = private unnamed_addr constant [24 x i8] c"iwl_pcie_napi_poll_msix\00", align 1
@__func__.iwl_pcie_rxq_inc_wr_ptr = private unnamed_addr constant [24 x i8] c"iwl_pcie_rxq_inc_wr_ptr\00", align 1
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Rx queue requesting wakeup, GP1 = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_iwlwifi_dev_irq_msix = external dso_local global %struct.tracepoint, align 4
@.str.57 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h\00", [43 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_irq_msix.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/internal.h\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_int_cause_ict = private unnamed_addr constant [23 x i8] c"iwl_pcie_int_cause_ict\00", align 1
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ICT index %d value 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_iwlwifi_dev_irq = external dso_local global %struct.tracepoint, align 4
@trace_iwlwifi_dev_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_iwlwifi_dev_ict_read = external dso_local global %struct.tracepoint, align 4
@trace_iwlwifi_dev_ict_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@__func__._iwl_enable_interrupts = private unnamed_addr constant [23 x i8] c"_iwl_enable_interrupts\00", align 1
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enabling interrupts\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", [47 x i8] zeroinitializer }, align 32
@iwl_trans_fw_error.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_pcie_restock_bd = private unnamed_addr constant [20 x i8] c"iwl_pcie_restock_bd\00", align 1
@.str.62 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Assigned virtual RB ID %u to queue %d index %d\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.iwl_enable_fw_load_int = private unnamed_addr constant [23 x i8] c"iwl_enable_fw_load_int\00", align 1
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabling FW load interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_enable_rfkill_int = private unnamed_addr constant [22 x i8] c"iwl_enable_rfkill_int\00", align 1
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enabling rfkill interrupt\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwl_enable_fw_load_int_ctx_info = private unnamed_addr constant [32 x i8] c"iwl_enable_fw_load_int_ctx_info\00", align 1
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enabling ALIVE interrupt only\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__._iwl_disable_interrupts = private unnamed_addr constant [24 x i8] c"_iwl_disable_interrupts\00", align 1
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disabled interrupts\0A\00", [43 x i8] zeroinitializer }, align 32
@switch.table.iwl_pcie_rx_alloc_page = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4096, i32 8192, i32 16384, i32 2048], [16 x i8] zeroinitializer }, align 32
@switch.table.iwl_pcie_rx_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -2020343808, i32 -2020081664, i32 -2020016128, i32 -2020474880], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 3489660928, i64 3539992576]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 976, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1180, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1611, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1617, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1763, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1775, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1807, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1813, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1826, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1843, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1862, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1869, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1884, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1891, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1915, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1922, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1931, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1945, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1995, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2004, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2009, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2101, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2181, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2232, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2247, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2252, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2279, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2305, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 2314, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 391, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 398, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 350, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1160, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 517, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 578, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 599, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 773, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 704, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 998, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1482, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1497, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1502, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1548, i32 6 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1443, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1450, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1293, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1299, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1306, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1374, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant [61 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 52, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 108, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [58 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-data.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 37, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 183, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant [56 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 149, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 728, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1716, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 587, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [52 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 202, i32 2 }
@___asan_gen_.258 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 234, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 634, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 700, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 650, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 537, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [36 x i8] c"switch.table.iwl_pcie_rx_alloc_page\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [30 x i8] c"switch.table.iwl_pcie_rx_init\00", align 1
@llvm.compiler.used = appending global [70 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @iwl_pcie_rx_alloc.__key, ptr @.str.39, ptr @iwl_pcie_alloc_rxq_dma.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @switch.table.iwl_pcie_rx_alloc_page, ptr @switch.table.iwl_pcie_rx_init], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_pcie_rx_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_pcie_alloc_rxq_dma.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_pcie_rx_alloc_page to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_pcie_rx_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_rx_stop(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %3)
  %cmp = icmp ugt i32 %3, 18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %umac_prph_offset.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %umac_prph_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %umac_prph_offset.i, align 4
  %add.i = add i32 %5, 10516608
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #9
  %6 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans_cfg, align 4
  %umac_prph_offset.i14 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %umac_prph_offset.i14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %umac_prph_offset.i14, align 4
  %add.i15 = add i32 %9, 10516516
  %call.i = tail call i32 @iwl_poll_prph_bit(ptr noundef %trans, i32 noundef %add.i15, i32 noundef -2147483648, i32 noundef -2147483648, i32 noundef 1000) #9
  br label %return

if.else:                                          ; preds = %entry
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %mq_rx_supported, align 4
  %11 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.else4, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10524704, i32 noundef 0, i32 noundef 0) #9
  %call3 = tail call i32 @iwl_poll_prph_bit(ptr noundef %trans, i32 noundef 10524680, i32 noundef -2147483648, i32 noundef -2147483648, i32 noundef 1000) #9
  br label %return

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 7168, i32 noundef 0) #9
  %call5 = tail call i32 @iwl_poll_direct_bit(ptr noundef %trans, i32 noundef 7236, i32 noundef 16777216, i32 noundef 1000) #9
  br label %return

return:                                           ; preds = %if.else4, %if.then2, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call3, %if.then2 ], [ %call5, %if.else4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_poll_prph_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_direct32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_poll_direct_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_rxq_alloc_rbs(ptr noundef %trans, i32 noundef %priority, ptr noundef %rxq) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4, !annotation !184
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %rx_used = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 12
  %1 = ptrtoint ptr %rx_used to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %rx_used, align 4
  %cmp.i.not108 = icmp eq ptr %2, %rx_used
  br i1 %cmp.i.not108, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %rx_buf_bytes = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 237
  %rx_free = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 11
  %prev.i89 = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 11, i32 1
  %free_count = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 7
  br label %if.end

if.then:                                          ; preds = %list_add_tail.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %list_add_tail.exit.if.end_crit_edge, %if.end.lr.ph
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %call4 = call fastcc ptr @iwl_pcie_rx_alloc_page(ptr noundef %trans, ptr noundef nonnull %offset, i32 noundef %priority)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %3 = ptrtoint ptr %rx_used to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %rx_used, align 4
  %cmp.i84.not = icmp eq ptr %4, %rx_used
  br i1 %cmp.i84.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %rx_page_order = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  %5 = ptrtoint ptr %rx_page_order to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_page_order, align 4
  tail call void @__free_pages(ptr noundef nonnull %call4, i32 noundef %6) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_del.exit_crit_edge

if.end14.list_del.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end14.list_del.exit_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %page17 = getelementptr i8, ptr %4, i32 -4
  %15 = ptrtoint ptr %page17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page17, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %do.end28, label %do.body22, !prof !185

do.body22:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intel/iwlwifi/pcie/rx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 459, 0\0A.popsection", ""() #9, !srcloc !186
  unreachable

do.end28:                                         ; preds = %list_del.exit
  %add.ptr = getelementptr i8, ptr %4, i32 -8
  %17 = ptrtoint ptr %page17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call4, ptr %page17, align 4
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %offset30 = getelementptr i8, ptr %4, i32 8
  %20 = ptrtoint ptr %offset30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %offset30, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %23 = ptrtoint ptr %rx_buf_bytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_buf_bytes, align 128
  %call32 = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef nonnull %call4, i32 noundef %19, i32 noundef %24, i32 noundef 2, i32 noundef 0) #9
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call32, ptr %add.ptr, align 4
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef %call32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call32)
  %cmp.i86.not = icmp eq i32 %call32, -1
  br i1 %cmp.i86.not, label %if.then37, label %if.end44

if.then37:                                        ; preds = %do.end28
  %28 = ptrtoint ptr %page17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %page17, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %29 = ptrtoint ptr %rx_used to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_used, align 4
  %call.i.i87 = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %rx_used, ptr noundef %30) #9
  br i1 %call.i.i87, label %if.end.i.i88, label %if.then37.list_add.exit_crit_edge

if.then37.list_add.exit_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i88:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %4, ptr %prev1.i.i, align 4
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %4, align 4
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rx_used, ptr %prev.i, align 4
  %34 = ptrtoint ptr %rx_used to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %4, ptr %rx_used, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i88, %if.then37.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %rx_page_order43 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  %35 = ptrtoint ptr %rx_page_order43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_page_order43, align 4
  tail call void @__free_pages(ptr noundef nonnull %call4, i32 noundef %36) #9
  br label %cleanup

if.end44:                                         ; preds = %do.end28
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %37 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i89, align 4
  %call.i.i90 = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %38, ptr noundef %rx_free) #9
  br i1 %call.i.i90, label %if.end.i.i92, label %if.end44.list_add_tail.exit_crit_edge

if.end44.list_add_tail.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i92:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %4, ptr %prev.i89, align 4
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %rx_free, ptr %4, align 4
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %4, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i92, %if.end44.list_add_tail.exit_crit_edge
  %43 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %free_count, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %free_count, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %45 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %offset, align 4, !annotation !184
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %46 = ptrtoint ptr %rx_used to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %rx_used, align 4
  %cmp.i.not = icmp eq ptr %47, %rx_used
  br i1 %cmp.i.not, label %list_add_tail.exit.if.then_crit_edge, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

list_add_tail.exit.if.then_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cleanup:                                          ; preds = %list_add.exit, %if.then12, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iwl_pcie_rx_alloc_page(ptr noundef %trans, ptr nocapture noundef writeonly %offset, i32 noundef %priority) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf_size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 234
  %0 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_buf_size, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 4
  br i1 %2, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 350, i32 noundef 9, ptr noundef null) #9
  br label %iwl_trans_get_rb_size.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.iwl_pcie_rx_alloc_page, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %iwl_trans_get_rb_size.exit

iwl_trans_get_rb_size.exit:                       ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %switch.load, %switch.lookup ]
  %rx_page_order = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  %4 = ptrtoint ptr %rx_page_order to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_page_order, align 4
  %shl = shl i32 4096, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %or = or i32 %priority, 262144
  %spec.select = select i1 %cmp.not, i32 %priority, i32 %or
  %alloc_page = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 250
  %6 = ptrtoint ptr %alloc_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alloc_page, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %iwl_trans_get_rb_size.exit.if.end17_crit_edge, label %if.then3

iwl_trans_get_rb_size.exit.if.end17_crit_edge:    ; preds = %iwl_trans_get_rb_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then3:                                         ; preds = %iwl_trans_get_rb_size.exit
  %alloc_page_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 239
  tail call void @_raw_spin_lock_bh(ptr noundef %alloc_page_lock) #9
  %8 = ptrtoint ptr %alloc_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alloc_page, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end15, label %if.then6

if.then6:                                         ; preds = %if.then3
  %alloc_page_used = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 251
  %10 = ptrtoint ptr %alloc_page_used to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_page_used, align 8
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %offset, align 4
  %13 = ptrtoint ptr %alloc_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alloc_page, align 4
  %15 = load i32, ptr %alloc_page_used, align 8
  %add = add i32 %15, %retval.0.i
  store i32 %add, ptr %alloc_page_used, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl)
  %cmp10.not = icmp ult i32 %add, %shl
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %alloc_page to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %alloc_page, align 4
  br label %if.end13

if.else:                                          ; preds = %if.then6
  %17 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !185

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %19, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %14 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %20, %if.end.i.i ]
  %21 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %22 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %23, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !187

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.34) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !188
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !189
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iwl_pcie_rx_alloc_page, %if.then.i.i.i.i)) #9
          to label %if.end13 [label %if.then.i.i.i.i], !srcloc !190

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %21, i32 noundef 1) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then.i.i.i.i, %do.end5.i.i, %if.then11
  tail call void @_raw_spin_unlock_bh(ptr noundef %alloc_page_lock) #9
  br label %cleanup

if.end15:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %alloc_page_lock) #9
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %iwl_trans_get_rb_size.exit.if.end17_crit_edge
  %25 = ptrtoint ptr %rx_page_order to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_page_order, align 4
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %spec.select, i32 noundef %26, i32 noundef 0, ptr noundef null) #9
  %tobool20.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool20.not, label %if.then21, label %if.end42

if.then21:                                        ; preds = %if.end17
  %call22 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.if.end29_crit_edge, label %do.end

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %29 = ptrtoint ptr %rx_page_order to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_page_order, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %28, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_alloc_page, ptr noundef nonnull @.str.31, i32 noundef %30) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.then21.if.end29_crit_edge
  %and = and i32 %spec.select, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %land.lhs.true, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end29
  %call31 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true.cleanup_crit_edge, label %do.end37

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev38 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %31 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev38, align 8
  tail call void (ptr, ptr, ...) @__iwl_crit(ptr noundef %32, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end17
  %mul = shl nuw nsw i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %shl)
  %cmp43.not = icmp ugt i32 %mul, %shl
  br i1 %cmp43.not, label %if.end42.if.end53_crit_edge, label %if.then44

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then44:                                        ; preds = %if.end42
  %alloc_page_lock45 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 239
  tail call void @_raw_spin_lock_bh(ptr noundef %alloc_page_lock45) #9
  %33 = ptrtoint ptr %alloc_page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %alloc_page, align 4
  %tobool47.not = icmp eq ptr %34, null
  br i1 %tobool47.not, label %if.then48, label %if.then44.if.end51_crit_edge

if.then44.if.end51_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then48:                                        ; preds = %if.then44
  %35 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i90 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i90)
  %tobool.not.i.i91 = icmp eq i32 %and.i.i90, 0
  br i1 %tobool.not.i.i91, label %if.end.i.i94, label %if.then.i.i93, !prof !185

if.then.i.i93:                                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i92 = add i32 %37, -1
  br label %_compound_head.exit.i100

if.end.i.i94:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i100

_compound_head.exit.i100:                         ; preds = %if.end.i.i94, %if.then.i.i93
  %retval.0.i.i95 = phi i32 [ %sub.i.i92, %if.then.i.i93 ], [ %38, %if.end.i.i94 ]
  %39 = inttoptr i32 %retval.0.i.i95 to ptr
  %_refcount.i.i.i.i96 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 3
  %call.i.i.i.i.i.i97 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i96, i32 noundef 4) #9
  %40 = ptrtoint ptr %_refcount.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %_refcount.i.i.i.i96, align 4
  %add.i.i98 = add i32 %41, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i98)
  %cmp.i.i99 = icmp ult i32 %add.i.i98, 128
  br i1 %cmp.i.i99, label %if.then.i1.i101, label %do.end5.i.i103, !prof !187

if.then.i1.i101:                                  ; preds = %_compound_head.exit.i100
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.34) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !188
  unreachable

do.end5.i.i103:                                   ; preds = %_compound_head.exit.i100
  %call.i.i.i.i9.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i96, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i96, i32 1, i32 3, i32 1) #9
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i96, ptr %_refcount.i.i.i.i96, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i96) #9, !srcloc !189
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iwl_pcie_rx_alloc_page, %if.then.i.i.i.i104)) #9
          to label %get_page.exit105 [label %if.then.i.i.i.i104], !srcloc !190

if.then.i.i.i.i104:                               ; preds = %do.end5.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %39, i32 noundef 1) #9
  br label %get_page.exit105

get_page.exit105:                                 ; preds = %if.then.i.i.i.i104, %do.end5.i.i103
  %43 = ptrtoint ptr %alloc_page to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call38.i.i.i, ptr %alloc_page, align 4
  %alloc_page_used50 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 251
  %44 = ptrtoint ptr %alloc_page_used50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i, ptr %alloc_page_used50, align 8
  br label %if.end51

if.end51:                                         ; preds = %get_page.exit105, %if.then44.if.end51_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %alloc_page_lock45) #9
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end42.if.end53_crit_edge
  %45 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end37, %land.lhs.true.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end13
  %retval.0 = phi ptr [ %14, %if.end13 ], [ %call38.i.i.i, %if.end53 ], [ null, %do.end37 ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %if.end29.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_free_rbs_pool(ptr nocapture noundef readonly %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pool = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1
  %0 = ptrtoint ptr %rx_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_rx_bufs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 233
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %rx_buf_bytes = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 237
  %rx_page_order = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.030 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %rx_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_pool, align 4
  %page = getelementptr %struct.iwl_rx_mem_buffer, ptr %3, i32 %i.030, i32 1
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.iwl_rx_mem_buffer, ptr %3, i32 %i.030
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %rx_buf_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_buf_bytes, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 2, i32 noundef 0) #9
  %12 = ptrtoint ptr %rx_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_pool, align 4
  %page10 = getelementptr %struct.iwl_rx_mem_buffer, ptr %13, i32 %i.030, i32 1
  %14 = ptrtoint ptr %page10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %page10, align 4
  %16 = ptrtoint ptr %rx_page_order to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_page_order, align 4
  tail call void @__free_pages(ptr noundef %15, i32 noundef %17) #9
  %18 = ptrtoint ptr %rx_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_pool, align 4
  %page13 = getelementptr %struct.iwl_rx_mem_buffer, ptr %19, i32 %i.030, i32 1
  %20 = ptrtoint ptr %page13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %page13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %21 = ptrtoint ptr %num_rx_bufs to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_rx_bufs, align 16
  %conv = zext i16 %22 to i32
  %add = add nuw nsw i32 %conv, 95
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_rx_allocator_work(ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %local_empty.i = alloca %struct.list_head, align 4
  %local_allocated.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr i8, ptr %data, i32 76
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 32
  %rba1.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_empty.i) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %local_empty.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rba1.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %rba1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %rba1.i, align 4
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %6, i32 noundef 262144, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_allocator, ptr noundef nonnull @.str.36, i32 noundef %4) #9
  %lock.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %rbd_empty.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 6
  %7 = ptrtoint ptr %rbd_empty.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rbd_empty.i, align 4
  %9 = ptrtoint ptr %local_empty.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %local_empty.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %local_empty.i, ptr %prev.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 7
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %2, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %local_empty.i, ptr %12, align 4
  store volatile ptr %rbd_empty.i, ptr %rbd_empty.i, align 4
  store ptr %rbd_empty.i, ptr %prev3.i.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not146.i = icmp eq i32 %4, 0
  br i1 %tobool.not146.i, label %entry.while.end.i_crit_edge, label %while.body.lr.ph.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %15 = getelementptr inbounds %struct.list_head, ptr %local_allocated.i, i32 0, i32 1
  %rx_buf_bytes.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 237
  %rx_page_order.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 236
  %rbd_allocated.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 4
  %prev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 5
  %req_ready.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %list_splice_tail_init.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pending.0147.i = phi i32 [ %4, %while.body.lr.ph.i ], [ %pending.1.i, %list_splice_tail_init.exit.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_allocated.i) #9
  %16 = ptrtoint ptr %local_allocated.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %local_allocated.i, ptr %local_allocated.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %local_allocated.i, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %pending.0147.i)
  %cmp.i = icmp slt i32 %pending.0147.i, 16
  %spec.select.i = select i1 %cmp.i, i32 11456, i32 3264
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %while.body.i
  %i.0145.i = phi i32 [ 0, %while.body.i ], [ %i.1.i, %cleanup.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %local_empty.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %local_empty.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %local_empty.i
  br i1 %cmp.i.not.i, label %do.body14.i, label %do.end22.i, !prof !187

do.body14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intel/iwlwifi/pcie/rx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 543, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end22.i:                                       ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %19, i32 -8
  %page25.i = getelementptr i8, ptr %19, i32 -4
  %20 = ptrtoint ptr %page25.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %page25.i, align 4
  %tobool26.not.i = icmp eq ptr %21, null
  br i1 %tobool26.not.i, label %do.end42.i, label %do.body34.i, !prof !185

do.body34.i:                                      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intel/iwlwifi/pcie/rx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #9, !srcloc !192
  unreachable

do.end42.i:                                       ; preds = %do.end22.i
  %offset.i = getelementptr i8, ptr %19, i32 8
  %call43.i = call fastcc ptr @iwl_pcie_rx_alloc_page(ptr noundef %1, ptr noundef %offset.i, i32 noundef %spec.select.i) #9
  %tobool44.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool44.not.i, label %do.end42.i.cleanup.i_crit_edge, label %if.end46.i

do.end42.i.cleanup.i_crit_edge:                   ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end46.i:                                       ; preds = %do.end42.i
  %22 = ptrtoint ptr %page25.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call43.i, ptr %page25.i, align 4
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i, align 4
  %27 = ptrtoint ptr %rx_buf_bytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_buf_bytes.i, align 128
  %call50.i = call i32 @dma_map_page_attrs(ptr noundef %24, ptr noundef nonnull %call43.i, i32 noundef %26, i32 noundef %28, i32 noundef 2, i32 noundef 0) #9
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call50.i, ptr %add.ptr.i, align 4
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %31, i32 noundef %call50.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call50.i)
  %cmp.i130.not.i = icmp eq i32 %call50.i, -1
  br i1 %cmp.i130.not.i, label %if.then55.i, label %if.end57.i

if.then55.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %page25.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %page25.i, align 4
  %33 = ptrtoint ptr %rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_page_order.i, align 4
  call void @__free_pages(ptr noundef nonnull %call43.i, i32 noundef %34) #9
  br label %cleanup.i

if.end57.i:                                       ; preds = %if.end46.i
  %call.i.i131.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #9
  br i1 %call.i.i131.i, label %if.end.i.i.i, label %if.end57.i.__list_del_entry.exit.i.i_crit_edge

if.end57.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i132.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i132.i, align 4
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end57.i.__list_del_entry.exit.i.i_crit_edge
  %41 = ptrtoint ptr %local_allocated.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %local_allocated.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef nonnull %local_allocated.i, ptr noundef %42) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %19, ptr %prev1.i.i2.i.i, align 4
  %44 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %19, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %local_allocated.i, ptr %prev3.i.i.i.i, align 4
  %46 = ptrtoint ptr %local_allocated.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %19, ptr %local_allocated.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %inc.i = add nsw i32 %i.0145.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %list_move.exit.i, %if.then55.i, %do.end42.i.cleanup.i_crit_edge
  %i.1.i = phi i32 [ %i.0145.i, %if.then55.i ], [ %inc.i, %list_move.exit.i ], [ %i.0145.i, %do.end42.i.cleanup.i_crit_edge ]
  %cmp7.i = icmp slt i32 %i.1.i, 8
  br i1 %cmp7.i, label %cleanup.i.for.body.i_crit_edge, label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  %call.i.i127.i = call zeroext i1 @__kasan_check_write(ptr noundef %rba1.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %rba1.i, i32 1, i32 3, i32 1) #9
  %47 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rba1.i, ptr %rba1.i, i32 1, ptr elementtype(i32) %rba1.i) #9, !srcloc !193
  %dec.i = add i32 %pending.0147.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool60.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool60.not.i, label %if.then61.i, label %for.end.i.if.end74.i_crit_edge

for.end.i.if.end74.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

if.then61.i:                                      ; preds = %for.end.i
  %call.i.i128.i = call zeroext i1 @__kasan_check_read(ptr noundef %rba1.i, i32 noundef 4) #9
  %48 = ptrtoint ptr %rba1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %rba1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool64.not.i = icmp eq i32 %49, 0
  br i1 %tobool64.not.i, label %if.then61.i.if.end74.i_crit_edge, label %do.end69.i

if.then61.i.if.end74.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

do.end69.i:                                       ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %51, i32 noundef 262144, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_allocator, ptr noundef nonnull @.str.37, i32 noundef %49) #9
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end69.i, %if.then61.i.if.end74.i_crit_edge, %for.end.i.if.end74.i_crit_edge
  %pending.1.i = phi i32 [ %dec.i, %for.end.i.if.end74.i_crit_edge ], [ %49, %do.end69.i ], [ 0, %if.then61.i.if.end74.i_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %52 = ptrtoint ptr %local_allocated.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %local_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %53, %local_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end74.i.list_splice_tail.exit.i_crit_edge, label %if.then.i.i

if.end74.i.list_splice_tail.exit.i_crit_edge:     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail.exit.i

if.then.i.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %15, align 4
  %prev3.i.i133.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i133.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %53, ptr %55, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %rbd_allocated.i, ptr %57, align 4
  store ptr %57, ptr %prev.i.i, align 4
  br label %list_splice_tail.exit.i

list_splice_tail.exit.i:                          ; preds = %if.then.i.i, %if.end74.i.list_splice_tail.exit.i_crit_edge
  %61 = ptrtoint ptr %rbd_empty.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %rbd_empty.i, align 4
  %cmp.i.not.i134.i = icmp eq ptr %62, %rbd_empty.i
  br i1 %cmp.i.not.i134.i, label %list_splice_tail.exit.i.list_splice_tail_init.exit.i_crit_edge, label %if.then.i138.i

list_splice_tail.exit.i.list_splice_tail_init.exit.i_crit_edge: ; preds = %list_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i138.i:                                   ; preds = %list_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %2, align 4
  %65 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev3.i.i.i, align 4
  %prev3.i.i137.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i137.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i137.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %62, ptr %64, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %local_empty.i, ptr %66, align 4
  store ptr %66, ptr %2, align 4
  %70 = ptrtoint ptr %rbd_empty.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %rbd_empty.i, ptr %rbd_empty.i, align 4
  store ptr %rbd_empty.i, ptr %prev3.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i138.i, %list_splice_tail.exit.i.list_splice_tail_init.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  %call.i.i129.i = call zeroext i1 @__kasan_check_write(ptr noundef %req_ready.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %req_ready.i, i32 1, i32 3, i32 1) #9
  %71 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req_ready.i, ptr %req_ready.i, i32 1, ptr elementtype(i32) %req_ready.i) #9, !srcloc !189
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_allocated.i) #9
  %tobool.not.i = icmp eq i32 %pending.1.i, 0
  br i1 %tobool.not.i, label %list_splice_tail_init.exit.i.while.end.i_crit_edge, label %list_splice_tail_init.exit.i.while.body.i_crit_edge

list_splice_tail_init.exit.i.while.body.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

list_splice_tail_init.exit.i.while.end.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %list_splice_tail_init.exit.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %72 = ptrtoint ptr %local_empty.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %local_empty.i, align 4
  %cmp.i.not.i139.i = icmp eq ptr %73, %local_empty.i
  br i1 %cmp.i.not.i139.i, label %while.end.i.iwl_pcie_rx_allocator.exit_crit_edge, label %if.then.i143.i

while.end.i.iwl_pcie_rx_allocator.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_rx_allocator.exit

if.then.i143.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev3.i.i.i, align 4
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %2, align 4
  %prev3.i.i142.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %prev3.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i142.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %73, ptr %75, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %rbd_empty.i, ptr %77, align 4
  store ptr %77, ptr %prev3.i.i.i, align 4
  br label %iwl_pcie_rx_allocator.exit

iwl_pcie_rx_allocator.exit:                       ; preds = %if.then.i143.i, %while.end.i.iwl_pcie_rx_allocator.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %82, i32 noundef 262144, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_allocator, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.iwl_pcie_rx_allocator) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_empty.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_rx_init_rxb_lists(ptr noundef %rxq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 17, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !187

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 976, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_free = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 11
  %1 = ptrtoint ptr %rx_free to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %rx_free, ptr %rx_free, align 4
  %prev.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rx_free, ptr %prev.i, align 4
  %rx_used = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 12
  %3 = ptrtoint ptr %rx_used to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %rx_used, ptr %rx_used, align 4
  %prev.i29 = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx_used, ptr %prev.i29, align 4
  %free_count = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 7
  %5 = ptrtoint ptr %free_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %free_count, align 4
  %used_count = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 8
  %6 = ptrtoint ptr %used_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %used_count, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_rx_init(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %call1 = tail call fastcc i32 @_iwl_pcie_rx_init(ptr noundef %trans)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %mq_rx_supported, align 4
  %3 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %rx_buf_size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 234
  %4 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_size.i, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 4
  br i1 %6, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 906, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.iwl_pcie_rx_init, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %do.end.i
  %rb_size.0.i = phi i32 [ -2020343808, %do.end.i ], [ %switch.load, %switch.lookup ]
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %grab_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %9, i32 0, i32 32
  %10 = ptrtoint ptr %grab_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %grab_nic_access.i, align 4
  %call18.i = tail call zeroext i1 %11(ptr noundef %trans) #9
  br i1 %call18.i, label %if.end26.i, label %sw.epilog.i.if.end4_crit_edge, !prof !185

sw.epilog.i.if.end4_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end26.i:                                       ; preds = %sw.epilog.i
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef 10524704, i32 noundef 0) #9
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef 10524684, i32 noundef 0) #9
  %num_rx_queues.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 25
  %12 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp153.not.i = icmp eq i8 %13, 0
  br i1 %cmp153.not.i, label %if.end26.i.for.end.i_crit_edge, label %if.end26.i.for.body.i_crit_edge

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  br label %for.body.i

if.end26.i.for.end.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end26.i.for.body.i_crit_edge
  %enabled.0155.i = phi i32 [ %or50.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end26.i.for.body.i_crit_edge ]
  %i.0154.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end26.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.0154.i, 3
  %add.i = add nuw nsw i32 %mul.i, 10518528
  %conv28.i = sext i32 %add.i to i64
  %14 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trans_specific.i, align 128
  %bd_dma.i = getelementptr %struct.iwl_rxq, ptr %15, i32 %i.0154.i, i32 2
  %16 = ptrtoint ptr %bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bd_dma.i, align 8
  %conv29.i = zext i32 %17 to i64
  tail call void @iwl_write_prph64_no_grab(ptr noundef %trans, i64 noundef %conv28.i, i64 noundef %conv29.i) #9
  %add31.i = add nuw nsw i32 %mul.i, 10518784
  %conv32.i = sext i32 %add31.i to i64
  %18 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans_specific.i, align 128
  %used_bd_dma.i = getelementptr %struct.iwl_rxq, ptr %19, i32 %i.0154.i, i32 4
  %20 = ptrtoint ptr %used_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used_bd_dma.i, align 8
  %conv35.i = zext i32 %21 to i64
  tail call void @iwl_write_prph64_no_grab(ptr noundef %trans, i64 noundef %conv32.i, i64 noundef %conv35.i) #9
  %add37.i = add nuw nsw i32 %mul.i, 10519040
  %conv38.i = sext i32 %add37.i to i64
  %22 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trans_specific.i, align 128
  %rb_stts_dma.i = getelementptr %struct.iwl_rxq, ptr %23, i32 %i.0154.i, i32 16
  %24 = ptrtoint ptr %rb_stts_dma.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rb_stts_dma.i, align 4
  %conv41.i = zext i32 %25 to i64
  tail call void @iwl_write_prph64_no_grab(ptr noundef %trans, i64 noundef %conv38.i, i64 noundef %conv41.i) #9
  %mul42.i = shl i32 %i.0154.i, 2
  %add43.i = add nuw nsw i32 %mul42.i, 10518656
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef %add43.i, i32 noundef 0) #9
  %add45.i = add nuw nsw i32 %mul42.i, 10518720
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef %add45.i, i32 noundef 0) #9
  %add47.i = add nuw nsw i32 %mul42.i, 10518912
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef %add47.i, i32 noundef 0) #9
  %or.i = shl i32 65537, %i.0154.i
  %or50.i = or i32 %or.i, %enabled.0155.i
  %inc.i = add nuw nsw i32 %i.0154.i, 1
  %26 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_rx_queues.i, align 8
  %conv.i = zext i8 %27 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end26.i.for.end.i_crit_edge
  %enabled.0.lcssa.i = phi i32 [ 0, %if.end26.i.for.end.i_crit_edge ], [ %or50.i, %for.body.i.for.end.i_crit_edge ]
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef 10524704, i32 noundef %rb_size.0.i) #9
  %28 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans_cfg, align 4
  %integrated.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %integrated.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i = load i16, ptr %integrated.i, align 4
  %31 = lshr i16 %bf.load.i, 7
  %32 = and i16 %31, 16
  %33 = xor i16 %32, 19
  %or111.i = zext i16 %33 to i32
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef 10524672, i32 noundef %or111.i) #9
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef 10524684, i32 noundef %enabled.0.lcssa.i) #9
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %release_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release_nic_access.i.i, align 4
  tail call void %37(ptr noundef %trans) #9
  tail call void @iwl_write8(ptr noundef %trans, i32 noundef 4, i8 noundef zeroext 64) #9
  br label %if.end4

if.else:                                          ; preds = %if.end
  %38 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trans_specific.i, align 128
  %rx_buf_size.i22 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 234
  %40 = ptrtoint ptr %rx_buf_size.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_buf_size.i22, align 4
  %switch.tableidx35 = add i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx35)
  %42 = icmp ult i32 %switch.tableidx35, 3
  br i1 %42, label %switch.lookup34, label %do.end.i25

do.end.i25:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 835, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog.i29

switch.lookup34:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %switch.idx.mult = shl i32 %switch.tableidx35, 16
  %switch.offset = add i32 %switch.idx.mult, -2139090668
  br label %sw.epilog.i29

sw.epilog.i29:                                    ; preds = %switch.lookup34, %do.end.i25
  %rb_size.0.i26 = phi i32 [ -2139090668, %do.end.i25 ], [ %switch.offset, %switch.lookup34 ]
  %ops.i27 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %43 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i27, align 4
  %grab_nic_access.i28 = getelementptr inbounds %struct.iwl_trans_ops, ptr %44, i32 0, i32 32
  %45 = ptrtoint ptr %grab_nic_access.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %grab_nic_access.i28, align 4
  %call17.i = tail call zeroext i1 %46(ptr noundef %trans) #9
  br i1 %call17.i, label %if.end25.i, label %sw.epilog.i29.if.end4_crit_edge, !prof !185

sw.epilog.i29.if.end4_crit_edge:                  ; preds = %sw.epilog.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end25.i:                                       ; preds = %sw.epilog.i29
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7168, i32 noundef 0) #9
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7176, i32 noundef 0) #9
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7184, i32 noundef 0) #9
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7116, i32 noundef 0) #9
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7112, i32 noundef 0) #9
  %bd_dma.i30 = getelementptr inbounds %struct.iwl_rxq, ptr %39, i32 0, i32 2
  %47 = ptrtoint ptr %bd_dma.i30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bd_dma.i30, align 8
  %shr.i = lshr i32 %48, 8
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7108, i32 noundef %shr.i) #9
  %rb_stts_dma.i31 = getelementptr inbounds %struct.iwl_rxq, ptr %39, i32 0, i32 16
  %49 = ptrtoint ptr %rb_stts_dma.i31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rb_stts_dma.i31, align 4
  %shr26.i = lshr i32 %50, 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7104, i32 noundef %shr26.i) #9
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7168, i32 noundef %rb_size.0.i26) #9
  %51 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i27, align 4
  %release_nic_access.i.i32 = getelementptr inbounds %struct.iwl_trans_ops, ptr %52, i32 0, i32 33
  %53 = ptrtoint ptr %release_nic_access.i.i32 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %release_nic_access.i.i32, align 4
  tail call void %54(ptr noundef %trans) #9
  tail call void @iwl_write8(ptr noundef %trans, i32 noundef 4, i8 noundef zeroext 64) #9
  %cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %55 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i, align 8
  %host_interrupt_operation_mode.i = getelementptr inbounds %struct.iwl_cfg, ptr %56, i32 0, i32 21
  %57 = ptrtoint ptr %host_interrupt_operation_mode.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 3)
  %bf.load.i33 = load i24, ptr %host_interrupt_operation_mode.i, align 4
  %58 = and i24 %bf.load.i33, 524288
  %tobool29.not.i = icmp eq i24 %58, 0
  br i1 %tobool29.not.i, label %if.end25.i.if.end4_crit_edge, label %if.then30.i

if.end25.i.if.end4_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i27, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %60, i32 0, i32 34
  %61 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %62(ptr noundef %trans, i32 noundef 4, i32 noundef -2147483648, i32 noundef -2147483648) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then30.i, %if.end25.i.if.end4_crit_edge, %sw.epilog.i29.if.end4_crit_edge, %for.end.i, %sw.epilog.i.if.end4_crit_edge
  %63 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %trans_specific.i, align 128
  tail call fastcc void @iwl_pcie_rxq_restock(ptr noundef %trans, ptr noundef %64)
  %65 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %trans_specific.i, align 128
  %lock = getelementptr inbounds %struct.iwl_rxq, ptr %66, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %67 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %trans_specific.i, align 128
  tail call fastcc void @iwl_pcie_rxq_inc_wr_ptr(ptr noundef %trans, ptr noundef %68)
  %69 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %trans_specific.i, align 128
  %lock9 = getelementptr inbounds %struct.iwl_rxq, ptr %70, i32 0, i32 17
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_iwl_pcie_rx_init(ptr noundef %trans) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %rba1 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 2
  %0 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_specific.i, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end23.i, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end23.i:                                       ; preds = %entry
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %5)
  %cmp.i = icmp ugt i32 %5, 18
  %cond.i = select i1 %cmp.i, i32 2, i32 12
  %num_rx_queues.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 25
  %6 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_rx_queues.i, align 8
  %conv.i = zext i8 %7 to i32
  %8 = mul nuw nsw i32 %conv.i, 1368
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #12
  %9 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i.i, ptr %trans_specific.i, align 128
  %num_rx_bufs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 233
  %10 = ptrtoint ptr %num_rx_bufs.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_rx_bufs.i, align 16
  %conv26.i = zext i16 %11 to i32
  %12 = mul nuw nsw i32 %conv26.i, 24
  %13 = add nuw nsw i32 %12, 2280
  %call8.i.i154.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #12
  %rx_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1
  %14 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i154.i, ptr %rx_pool.i, align 4
  %15 = ptrtoint ptr %num_rx_bufs.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_rx_bufs.i, align 16
  %conv29.i = zext i16 %16 to i32
  %add31.i = shl nuw nsw i32 %conv29.i, 2
  %17 = add nuw nsw i32 %add31.i, 380
  %call8.i.i187.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #12
  %global_table.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 1
  %18 = ptrtoint ptr %global_table.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i187.i, ptr %global_table.i, align 8
  %19 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trans_specific.i, align 128
  %tobool34.not.i = icmp eq ptr %20, null
  br i1 %tobool34.not.i, label %if.end23.i.err.i_crit_edge, label %lor.lhs.false.i

if.end23.i.err.i_crit_edge:                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

lor.lhs.false.i:                                  ; preds = %if.end23.i
  %21 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_pool.i, align 4
  %tobool36.not.i = icmp eq ptr %22, null
  %tobool39.not.i = icmp eq ptr %call8.i.i187.i, null
  %or.cond.i = select i1 %tobool36.not.i, i1 true, i1 %tobool39.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.err.i_crit_edge, label %do.body42.i

lor.lhs.false.i.err.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

do.body42.i:                                      ; preds = %lor.lhs.false.i
  %lock.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @iwl_pcie_rx_alloc.__key, i16 noundef signext 3) #9
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  %25 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_rx_queues.i, align 8
  %conv47.i = zext i8 %26 to i32
  %mul.i = mul nuw nsw i32 %cond.i, %conv47.i
  %base_rb_stts_dma.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 347
  %call.i.i113 = tail call ptr @dma_alloc_attrs(ptr noundef %24, i32 noundef %mul.i, ptr noundef %base_rb_stts_dma.i, i32 noundef 3264, i32 noundef 0) #9
  %base_rb_stts.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 346
  %27 = ptrtoint ptr %base_rb_stts.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i113, ptr %base_rb_stts.i, align 4
  %tobool50.not.i = icmp eq ptr %call.i.i113, null
  br i1 %tobool50.not.i, label %do.body42.i.err.i_crit_edge, label %for.cond.preheader.i

do.body42.i.err.i_crit_edge:                      ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

for.cond.preheader.i:                             ; preds = %do.body42.i
  %28 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp55196.not.i = icmp eq i8 %29, 0
  br i1 %cmp55196.not.i, label %for.cond.preheader.i.if.end5_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end5_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0197.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trans_specific.i, align 128
  %arrayidx.i = getelementptr %struct.iwl_rxq, ptr %31, i32 %i.0197.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %i.0197.i, ptr %arrayidx.i, align 8
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 8
  %35 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %device_family.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %device_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %38)
  %cmp.i.i = icmp ugt i32 %38, 18
  %cond.i.i = select i1 %cmp.i.i, i32 2, i32 12
  %lock.i.i = getelementptr %struct.iwl_rxq, ptr %31, i32 %i.0197.i, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @iwl_pcie_alloc_rxq_dma.__key, i16 noundef signext 3) #9
  %39 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trans_cfg.i, align 4
  %mq_rx_supported.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %mq_rx_supported.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load.i.i = load i16, ptr %mq_rx_supported.i.i, align 4
  %42 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool4.not.i.i = icmp eq i16 %42, 0
  br i1 %tobool4.not.i.i, label %for.body.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i.i, align 8
  %num_rbds.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %44, i32 0, i32 29
  %45 = ptrtoint ptr %num_rbds.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %num_rbds.i.i, align 2
  %conv.i.i = zext i16 %46 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.if.end.i.i_crit_edge
  %conv.sink.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ 256, %for.body.i.if.end.i.i_crit_edge ]
  %47 = getelementptr %struct.iwl_rxq, ptr %31, i32 %i.0197.i, i32 10
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv.sink.i.i, ptr %47, align 8
  br i1 %cmp.i.i, label %if.end.i.i.iwl_pcie_free_bd_size.exit.i.i_crit_edge, label %if.else.i.i.i

if.end.i.i.iwl_pcie_free_bd_size.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_free_bd_size.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trans_cfg.i, align 4
  %mq_rx_supported.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %mq_rx_supported.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i.i.i = load i16, ptr %mq_rx_supported.i.i.i, align 4
  %52 = and i16 %bf.load.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool1.not.i.i.i = icmp eq i16 %52, 0
  %cond.i.i.i = select i1 %tobool1.not.i.i.i, i32 4, i32 8
  br label %iwl_pcie_free_bd_size.exit.i.i

iwl_pcie_free_bd_size.exit.i.i:                   ; preds = %if.else.i.i.i, %if.end.i.i.iwl_pcie_free_bd_size.exit.i.i_crit_edge
  %retval.0.i.i191.i = phi i32 [ %cond.i.i.i, %if.else.i.i.i ], [ 16, %if.end.i.i.iwl_pcie_free_bd_size.exit.i.i_crit_edge ]
  %mul.i.i = mul nuw nsw i32 %retval.0.i.i191.i, %conv.sink.i.i
  %bd_dma.i.i = getelementptr %struct.iwl_rxq, ptr %31, i32 %i.0197.i, i32 2
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %34, i32 noundef %mul.i.i, ptr noundef %bd_dma.i.i, i32 noundef 3264, i32 noundef 0) #9
  %bd.i.i = getelementptr %struct.iwl_rxq, ptr %31, i32 %i.0197.i, i32 1
  %53 = ptrtoint ptr %bd.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i.i, ptr %bd.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool11.not.i.i, label %iwl_pcie_free_bd_size.exit.i.i.err.i.i_crit_edge, label %if.end13.i.i

iwl_pcie_free_bd_size.exit.i.i.err.i.i_crit_edge: ; preds = %iwl_pcie_free_bd_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i.i

if.end13.i.i:                                     ; preds = %iwl_pcie_free_bd_size.exit.i.i
  %54 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %trans_cfg.i, align 4
  %mq_rx_supported15.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %mq_rx_supported15.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load16.i.i = load i16, ptr %mq_rx_supported15.i.i, align 4
  %57 = and i16 %bf.load16.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool20.not.i.i = icmp eq i16 %57, 0
  br i1 %tobool20.not.i.i, label %if.end13.i.i.for.inc.i_crit_edge, label %if.then21.i.i

if.end13.i.i.for.inc.i_crit_edge:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then21.i.i:                                    ; preds = %if.end13.i.i
  %cond24.i.i = select i1 %cmp.i.i, i32 32, i32 4
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %47, align 8
  %mul26.i.i = mul i32 %59, %cond24.i.i
  %used_bd_dma.i.i = getelementptr %struct.iwl_rxq, ptr %31, i32 %i.0197.i, i32 4
  %call.i75.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %34, i32 noundef %mul26.i.i, ptr noundef %used_bd_dma.i.i, i32 noundef 3264, i32 noundef 0) #9
  %60 = getelementptr %struct.iwl_rxq, ptr %31, i32 %i.0197.i, i32 3
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i75.i.i, ptr %60, align 4
  %tobool28.not.i.i = icmp eq ptr %call.i75.i.i, null
  br i1 %tobool28.not.i.i, label %if.then21.i.i.err.i.i_crit_edge, label %if.then21.i.i.for.inc.i_crit_edge

if.then21.i.i.for.inc.i_crit_edge:                ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then21.i.i.err.i.i_crit_edge:                  ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i.i

err.i.i:                                          ; preds = %if.then21.i.i.err.i.i_crit_edge, %iwl_pcie_free_bd_size.exit.i.i.err.i.i_crit_edge
  %62 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp3680.not.i.i = icmp eq i8 %63, 0
  br i1 %cmp3680.not.i.i, label %err.i.i.err.i_crit_edge, label %err.i.i.for.body.i.i_crit_edge

err.i.i.for.body.i.i_crit_edge:                   ; preds = %err.i.i
  br label %for.body.i.i

err.i.i.err.i_crit_edge:                          ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

for.body.i.i:                                     ; preds = %iwl_pcie_free_rxq_dma.exit.i.i.for.body.i.i_crit_edge, %err.i.i.for.body.i.i_crit_edge
  %i.081.i.i = phi i32 [ %inc.i.i, %iwl_pcie_free_rxq_dma.exit.i.i.for.body.i.i_crit_edge ], [ 0, %err.i.i.for.body.i.i_crit_edge ]
  %64 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %trans_specific.i, align 128
  %66 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %device_family.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %device_family.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %69)
  %cmp.i.i.i = icmp ugt i32 %69, 18
  br i1 %cmp.i.i.i, label %for.body.i.i.iwl_pcie_free_bd_size.exit.i.i.i_crit_edge, label %if.else.i.i.i.i

for.body.i.i.iwl_pcie_free_bd_size.exit.i.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_free_bd_size.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mq_rx_supported.i.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %67, i32 0, i32 5
  %70 = ptrtoint ptr %mq_rx_supported.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load.i.i.i.i = load i16, ptr %mq_rx_supported.i.i.i.i, align 4
  %71 = and i16 %bf.load.i.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool1.not.i.i.i.i = icmp eq i16 %71, 0
  %cond.i.i.i.i = select i1 %tobool1.not.i.i.i.i, i32 4, i32 8
  br label %iwl_pcie_free_bd_size.exit.i.i.i

iwl_pcie_free_bd_size.exit.i.i.i:                 ; preds = %if.else.i.i.i.i, %for.body.i.i.iwl_pcie_free_bd_size.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %cond.i.i.i.i, %if.else.i.i.i.i ], [ 16, %for.body.i.i.iwl_pcie_free_bd_size.exit.i.i.i_crit_edge ]
  %bd.i.i.i = getelementptr %struct.iwl_rxq, ptr %65, i32 %i.081.i.i, i32 1
  %72 = ptrtoint ptr %bd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bd.i.i.i, align 4
  %tobool1.not.i77.i.i = icmp eq ptr %73, null
  br i1 %tobool1.not.i77.i.i, label %iwl_pcie_free_bd_size.exit.i.i.i.if.end.i.i192.i_crit_edge, label %if.then.i.i.i

iwl_pcie_free_bd_size.exit.i.i.i.if.end.i.i192.i_crit_edge: ; preds = %iwl_pcie_free_bd_size.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i192.i

if.then.i.i.i:                                    ; preds = %iwl_pcie_free_bd_size.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 8
  %queue_size.i.i.i = getelementptr %struct.iwl_rxq, ptr %65, i32 %i.081.i.i, i32 10
  %76 = ptrtoint ptr %queue_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %queue_size.i.i.i, align 8
  %mul.i.i.i = mul i32 %77, %retval.0.i.i.i.i
  %bd_dma.i.i.i = getelementptr %struct.iwl_rxq, ptr %65, i32 %i.081.i.i, i32 2
  %78 = ptrtoint ptr %bd_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bd_dma.i.i.i, align 8
  tail call void @dma_free_attrs(ptr noundef %75, i32 noundef %mul.i.i.i, ptr noundef nonnull %73, i32 noundef %79, i32 noundef 0) #9
  br label %if.end.i.i192.i

if.end.i.i192.i:                                  ; preds = %if.then.i.i.i, %iwl_pcie_free_bd_size.exit.i.i.i.if.end.i.i192.i_crit_edge
  %bd_dma3.i.i.i = getelementptr %struct.iwl_rxq, ptr %65, i32 %i.081.i.i, i32 2
  %80 = ptrtoint ptr %bd_dma3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %bd_dma3.i.i.i, align 8
  %81 = ptrtoint ptr %bd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %bd.i.i.i, align 4
  %rb_stts_dma.i.i.i = getelementptr %struct.iwl_rxq, ptr %65, i32 %i.081.i.i, i32 16
  %82 = ptrtoint ptr %rb_stts_dma.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %rb_stts_dma.i.i.i, align 4
  %rb_stts.i.i.i = getelementptr %struct.iwl_rxq, ptr %65, i32 %i.081.i.i, i32 15
  %83 = ptrtoint ptr %rb_stts.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %rb_stts.i.i.i, align 8
  %84 = getelementptr %struct.iwl_rxq, ptr %65, i32 %i.081.i.i, i32 3
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %tobool5.not.i.i.i = icmp eq ptr %86, null
  br i1 %tobool5.not.i.i.i, label %if.end.i.i192.i.iwl_pcie_free_rxq_dma.exit.i.i_crit_edge, label %if.then6.i.i.i

if.end.i.i192.i.iwl_pcie_free_rxq_dma.exit.i.i_crit_edge: ; preds = %if.end.i.i192.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_free_rxq_dma.exit.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i192.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i, align 8
  %cond.i78.i.i = select i1 %cmp.i.i.i, i32 32, i32 4
  %queue_size9.i.i.i = getelementptr %struct.iwl_rxq, ptr %65, i32 %i.081.i.i, i32 10
  %89 = ptrtoint ptr %queue_size9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %queue_size9.i.i.i, align 8
  %mul10.i.i.i = mul i32 %90, %cond.i78.i.i
  %used_bd_dma.i.i.i = getelementptr %struct.iwl_rxq, ptr %65, i32 %i.081.i.i, i32 4
  %91 = ptrtoint ptr %used_bd_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %used_bd_dma.i.i.i, align 8
  tail call void @dma_free_attrs(ptr noundef %88, i32 noundef %mul10.i.i.i, ptr noundef nonnull %86, i32 noundef %92, i32 noundef 0) #9
  br label %iwl_pcie_free_rxq_dma.exit.i.i

iwl_pcie_free_rxq_dma.exit.i.i:                   ; preds = %if.then6.i.i.i, %if.end.i.i192.i.iwl_pcie_free_rxq_dma.exit.i.i_crit_edge
  %used_bd_dma12.i.i.i = getelementptr %struct.iwl_rxq, ptr %65, i32 %i.081.i.i, i32 4
  %93 = ptrtoint ptr %used_bd_dma12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %used_bd_dma12.i.i.i, align 8
  %94 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %84, align 4
  %inc.i.i = add nuw nsw i32 %i.081.i.i, 1
  %95 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_rx_queues.i, align 8
  %conv35.i.i = zext i8 %96 to i32
  %cmp36.i.i = icmp ult i32 %inc.i.i, %conv35.i.i
  br i1 %cmp36.i.i, label %iwl_pcie_free_rxq_dma.exit.i.i.for.body.i.i_crit_edge, label %iwl_pcie_free_rxq_dma.exit.i.i.err.i_crit_edge

iwl_pcie_free_rxq_dma.exit.i.i.err.i_crit_edge:   ; preds = %iwl_pcie_free_rxq_dma.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

iwl_pcie_free_rxq_dma.exit.i.i.for.body.i.i_crit_edge: ; preds = %iwl_pcie_free_rxq_dma.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i:                                        ; preds = %if.then21.i.i.for.inc.i_crit_edge, %if.end13.i.i.for.inc.i_crit_edge
  %97 = ptrtoint ptr %base_rb_stts.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base_rb_stts.i, align 4
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i, align 8
  %mul32.i.i = mul i32 %100, %cond.i.i
  %add.ptr.i.i = getelementptr i8, ptr %98, i32 %mul32.i.i
  %rb_stts.i.i = getelementptr %struct.iwl_rxq, ptr %31, i32 %i.0197.i, i32 15
  %101 = ptrtoint ptr %rb_stts.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr.i.i, ptr %rb_stts.i.i, align 8
  %102 = ptrtoint ptr %base_rb_stts_dma.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %base_rb_stts_dma.i, align 8
  %add.i.i = add i32 %103, %mul32.i.i
  %rb_stts_dma.i.i = getelementptr %struct.iwl_rxq, ptr %31, i32 %i.0197.i, i32 16
  %104 = ptrtoint ptr %rb_stts_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add.i.i, ptr %rb_stts_dma.i.i, align 4
  %inc.i = add nuw nsw i32 %i.0197.i, 1
  %105 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_rx_queues.i, align 8
  %conv54.i = zext i8 %106 to i32
  %cmp55.i = icmp ult i32 %inc.i, %conv54.i
  br i1 %cmp55.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end5_crit_edge

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

err.i:                                            ; preds = %iwl_pcie_free_rxq_dma.exit.i.i.err.i_crit_edge, %err.i.i.err.i_crit_edge, %do.body42.i.err.i_crit_edge, %lor.lhs.false.i.err.i_crit_edge, %if.end23.i.err.i_crit_edge
  %base_rb_stts63.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 346
  %107 = ptrtoint ptr %base_rb_stts63.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base_rb_stts63.i, align 4
  %tobool64.not.i = icmp eq ptr %108, null
  br i1 %tobool64.not.i, label %err.i.iwl_pcie_rx_alloc.exit_crit_edge, label %if.then65.i

err.i.iwl_pcie_rx_alloc.exit_crit_edge:           ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_rx_alloc.exit

if.then65.i:                                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev66.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %109 = ptrtoint ptr %dev66.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev66.i, align 8
  %111 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %num_rx_queues.i, align 8
  %conv68.i = zext i8 %112 to i32
  %mul69.i = mul nuw nsw i32 %cond.i, %conv68.i
  %base_rb_stts_dma71.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 347
  %113 = ptrtoint ptr %base_rb_stts_dma71.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %base_rb_stts_dma71.i, align 8
  tail call void @dma_free_attrs(ptr noundef %110, i32 noundef %mul69.i, ptr noundef nonnull %108, i32 noundef %114, i32 noundef 0) #9
  %115 = ptrtoint ptr %base_rb_stts63.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %base_rb_stts63.i, align 4
  %116 = ptrtoint ptr %base_rb_stts_dma71.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %base_rb_stts_dma71.i, align 8
  br label %iwl_pcie_rx_alloc.exit

iwl_pcie_rx_alloc.exit:                           ; preds = %if.then65.i, %err.i.iwl_pcie_rx_alloc.exit_crit_edge
  %117 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rx_pool.i, align 4
  tail call void @kfree(ptr noundef %118) #9
  %119 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %rx_pool.i, align 4
  %120 = ptrtoint ptr %global_table.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %global_table.i, align 8
  tail call void @kfree(ptr noundef %121) #9
  %122 = ptrtoint ptr %global_table.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %global_table.i, align 8
  %123 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %trans_specific.i, align 128
  tail call void @kfree(ptr noundef %124) #9
  %125 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %trans_specific.i, align 128
  br label %cleanup

if.end5:                                          ; preds = %for.inc.i.if.end5_crit_edge, %for.cond.preheader.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %126 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %trans_specific.i, align 128
  %rx_alloc = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 14, i32 24
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rx_alloc) #9
  %lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rba1, i32 noundef 4) #9
  %128 = ptrtoint ptr %rba1 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 0, ptr %rba1, align 4
  %req_ready = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 3
  %call.i.i112 = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_ready, i32 noundef 4) #9
  %129 = ptrtoint ptr %req_ready to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 0, ptr %req_ready, align 4
  %rbd_allocated = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 4
  %130 = ptrtoint ptr %rbd_allocated to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %rbd_allocated, ptr %rbd_allocated, align 4
  %prev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 5
  %131 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %rbd_allocated, ptr %prev.i, align 4
  %rbd_empty = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 6
  %132 = ptrtoint ptr %rbd_empty to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %rbd_empty, ptr %rbd_empty, align 4
  %prev.i114 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 7
  %133 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %rbd_empty, ptr %prev.i114, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %rx_pool.i115 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1
  %134 = ptrtoint ptr %rx_pool.i115 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rx_pool.i115, align 4
  %tobool.not.i116 = icmp eq ptr %135, null
  br i1 %tobool.not.i116, label %if.end5.iwl_pcie_free_rbs_pool.exit_crit_edge, label %for.cond.preheader.i119

if.end5.iwl_pcie_free_rbs_pool.exit_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_free_rbs_pool.exit

for.cond.preheader.i119:                          ; preds = %if.end5
  %num_rx_bufs.i117 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 233
  %dev.i118 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %rx_buf_bytes.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 237
  %rx_page_order.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  br label %for.body.i120

for.body.i120:                                    ; preds = %for.inc.i126.for.body.i120_crit_edge, %for.cond.preheader.i119
  %i.030.i = phi i32 [ 0, %for.cond.preheader.i119 ], [ %inc.i122, %for.inc.i126.for.body.i120_crit_edge ]
  %136 = ptrtoint ptr %rx_pool.i115 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rx_pool.i115, align 4
  %page.i = getelementptr %struct.iwl_rx_mem_buffer, ptr %137, i32 %i.030.i, i32 1
  %138 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %page.i, align 4
  %tobool3.not.i = icmp eq ptr %139, null
  br i1 %tobool3.not.i, label %for.body.i120.for.inc.i126_crit_edge, label %if.end5.i

for.body.i120.for.inc.i126_crit_edge:             ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i126

if.end5.i:                                        ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i121 = getelementptr %struct.iwl_rx_mem_buffer, ptr %137, i32 %i.030.i
  %140 = ptrtoint ptr %dev.i118 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i118, align 8
  %142 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i121, align 4
  %144 = ptrtoint ptr %rx_buf_bytes.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rx_buf_bytes.i, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %141, i32 noundef %143, i32 noundef %145, i32 noundef 2, i32 noundef 0) #9
  %146 = ptrtoint ptr %rx_pool.i115 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rx_pool.i115, align 4
  %page10.i = getelementptr %struct.iwl_rx_mem_buffer, ptr %147, i32 %i.030.i, i32 1
  %148 = ptrtoint ptr %page10.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %page10.i, align 4
  %150 = ptrtoint ptr %rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_page_order.i, align 4
  tail call void @__free_pages(ptr noundef %149, i32 noundef %151) #9
  %152 = ptrtoint ptr %rx_pool.i115 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rx_pool.i115, align 4
  %page13.i = getelementptr %struct.iwl_rx_mem_buffer, ptr %153, i32 %i.030.i, i32 1
  %154 = ptrtoint ptr %page13.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %page13.i, align 4
  br label %for.inc.i126

for.inc.i126:                                     ; preds = %if.end5.i, %for.body.i120.for.inc.i126_crit_edge
  %inc.i122 = add nuw nsw i32 %i.030.i, 1
  %155 = ptrtoint ptr %num_rx_bufs.i117 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %num_rx_bufs.i117, align 16
  %conv.i123 = zext i16 %156 to i32
  %add.i124 = add nuw nsw i32 %conv.i123, 95
  %cmp.i125 = icmp ult i32 %inc.i122, %add.i124
  br i1 %cmp.i125, label %for.inc.i126.for.body.i120_crit_edge, label %for.inc.i126.iwl_pcie_free_rbs_pool.exit_crit_edge

for.inc.i126.iwl_pcie_free_rbs_pool.exit_crit_edge: ; preds = %for.inc.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_free_rbs_pool.exit

for.inc.i126.for.body.i120_crit_edge:             ; preds = %for.inc.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i120

iwl_pcie_free_rbs_pool.exit:                      ; preds = %for.inc.i126.iwl_pcie_free_rbs_pool.exit_crit_edge, %if.end5.iwl_pcie_free_rbs_pool.exit_crit_edge
  %uglygep = getelementptr i8, ptr %127, i32 344
  %157 = call ptr @memset(ptr %uglygep, i32 0, i32 1024)
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 25
  %158 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %num_rx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %cmp10141.not = icmp eq i8 %159, 0
  br i1 %cmp10141.not, label %iwl_pcie_free_rbs_pool.exit.for.end31_crit_edge, label %for.body12.lr.ph

iwl_pcie_free_rbs_pool.exit.for.end31_crit_edge:  ; preds = %iwl_pcie_free_rbs_pool.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end31

for.body12.lr.ph:                                 ; preds = %iwl_pcie_free_rbs_pool.exit
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %msix_enabled = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %napi_dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 29, i32 44
  br label %for.body12

for.body12:                                       ; preds = %if.end28.for.body12_crit_edge, %for.body12.lr.ph
  %i.1142 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc30, %if.end28.for.body12_crit_edge ]
  %160 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %trans_specific.i, align 128
  %lock16 = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock16) #9
  %read = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 5
  %162 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %read, align 4
  %write = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 6
  %163 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %write, align 8
  %write_actual = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 9
  %164 = ptrtoint ptr %write_actual to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %write_actual, align 4
  %rb_stts = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 15
  %165 = ptrtoint ptr %rb_stts to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rb_stts, align 8
  %167 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %170)
  %cmp17 = icmp ugt i32 %170, 18
  %cond = select i1 %cmp17, i32 2, i32 12
  %171 = call ptr @memset(ptr %166, i32 0, i32 %cond)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %172 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i127 = icmp eq i32 %172, 0
  br i1 %tobool.not.i127, label %for.body12.iwl_pcie_rx_init_rxb_lists.exit_crit_edge, label %land.rhs.i

for.body12.iwl_pcie_rx_init_rxb_lists.exit_crit_edge: ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_rx_init_rxb_lists.exit

land.rhs.i:                                       ; preds = %for.body12
  %dep_map.i = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 17, i32 0, i32 0, i32 4
  %call.i.i128 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %cmp.not.i = icmp eq i32 %call.i.i128, 0
  br i1 %cmp.not.i, label %do.end.i129, label %land.rhs.i.iwl_pcie_rx_init_rxb_lists.exit_crit_edge, !prof !187

land.rhs.i.iwl_pcie_rx_init_rxb_lists.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_rx_init_rxb_lists.exit

do.end.i129:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 976, i32 noundef 9, ptr noundef null) #9
  br label %iwl_pcie_rx_init_rxb_lists.exit

iwl_pcie_rx_init_rxb_lists.exit:                  ; preds = %do.end.i129, %land.rhs.i.iwl_pcie_rx_init_rxb_lists.exit_crit_edge, %for.body12.iwl_pcie_rx_init_rxb_lists.exit_crit_edge
  %rx_free.i = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 11
  %173 = ptrtoint ptr %rx_free.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %rx_free.i, ptr %rx_free.i, align 4
  %prev.i.i = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 11, i32 1
  %174 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %rx_free.i, ptr %prev.i.i, align 4
  %rx_used.i = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 12
  %175 = ptrtoint ptr %rx_used.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %rx_used.i, ptr %rx_used.i, align 4
  %prev.i29.i = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 12, i32 1
  %176 = ptrtoint ptr %prev.i29.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %rx_used.i, ptr %prev.i29.i, align 4
  %free_count.i = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 7
  %177 = ptrtoint ptr %free_count.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %free_count.i, align 4
  %used_count.i = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 8
  %178 = ptrtoint ptr %used_count.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %used_count.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock16) #9
  %poll = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 18, i32 5
  %179 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %poll, align 8
  %tobool20.not = icmp eq ptr %180, null
  br i1 %tobool20.not, label %if.then21, label %iwl_pcie_rx_init_rxb_lists.exit.if.end28_crit_edge

iwl_pcie_rx_init_rxb_lists.exit.if.end28_crit_edge: ; preds = %iwl_pcie_rx_init_rxb_lists.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then21:                                        ; preds = %iwl_pcie_rx_init_rxb_lists.exit
  call void @__sanitizer_cov_trace_pc() #11
  %napi = getelementptr %struct.iwl_rxq, ptr %161, i32 %i.1142, i32 18
  %181 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %msix_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool23.not = icmp eq i8 %182, 0
  %spec.store.select = select i1 %tobool23.not, ptr @iwl_pcie_napi_poll, ptr @iwl_pcie_napi_poll_msix
  tail call void @netif_napi_add(ptr noundef %napi_dev, ptr noundef %napi, ptr noundef nonnull %spec.store.select, i32 noundef 64) #9
  tail call void @napi_enable(ptr noundef %napi) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %iwl_pcie_rx_init_rxb_lists.exit.if.end28_crit_edge
  %inc30 = add nuw nsw i32 %i.1142, 1
  %183 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %num_rx_queues, align 8
  %conv = zext i8 %184 to i32
  %cmp10 = icmp ult i32 %inc30, %conv
  br i1 %cmp10, label %if.end28.for.body12_crit_edge, label %for.end31.loopexit

if.end28.for.body12_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.end31.loopexit:                               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = zext i8 %184 to i32
  %phi.bo = mul nuw nsw i32 %phi.cast, 6
  br label %for.end31

for.end31:                                        ; preds = %for.end31.loopexit, %iwl_pcie_free_rbs_pool.exit.for.end31_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end31.loopexit ], [ 0, %iwl_pcie_free_rbs_pool.exit.for.end31_crit_edge ]
  %trans_cfg32 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %185 = ptrtoint ptr %trans_cfg32 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %trans_cfg32, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %186, i32 0, i32 5
  %187 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %187)
  %bf.load = load i16, ptr %mq_rx_supported, align 4
  %188 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %tobool33.not = icmp eq i16 %188, 0
  br i1 %tobool33.not, label %for.end31.cond.end_crit_edge, label %cond.true

for.end31.cond.end_crit_edge:                     ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #11
  %num_rx_bufs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 233
  %189 = ptrtoint ptr %num_rx_bufs to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %num_rx_bufs, align 16
  %conv34 = zext i16 %190 to i32
  %sub = add nsw i32 %conv34, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.end31.cond.end_crit_edge
  %cond35 = phi i32 [ %sub, %cond.true ], [ 256, %for.end31.cond.end_crit_edge ]
  %add = add nsw i32 %cond35, %.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp39144 = icmp sgt i32 %add, 0
  br i1 %cmp39144, label %for.body41.lr.ph, label %cond.end.for.end54_crit_edge

cond.end.for.end54_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end54

for.body41.lr.ph:                                 ; preds = %cond.end
  %rx_used = getelementptr inbounds %struct.iwl_rxq, ptr %127, i32 0, i32 12
  %global_table = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 1
  br label %for.body41

for.body41:                                       ; preds = %if.end48.for.body41_crit_edge, %for.body41.lr.ph
  %i.2145 = phi i32 [ 0, %for.body41.lr.ph ], [ %add50, %if.end48.for.body41_crit_edge ]
  %191 = ptrtoint ptr %rx_pool.i115 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rx_pool.i115, align 4
  %arrayidx42 = getelementptr %struct.iwl_rx_mem_buffer, ptr %192, i32 %i.2145
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2145, i32 %.lcssa)
  %cmp43 = icmp ult i32 %i.2145, %.lcssa
  %list = getelementptr %struct.iwl_rx_mem_buffer, ptr %192, i32 %i.2145, i32 2
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.body41
  %193 = ptrtoint ptr %rbd_empty to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rbd_empty, align 4
  %call.i.i130 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %rbd_empty, ptr noundef %194) #9
  br i1 %call.i.i130, label %if.then45.if.end48.sink.split_crit_edge, label %if.then45.if.end48_crit_edge

if.then45.if.end48_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then45.if.end48.sink.split_crit_edge:          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.sink.split

if.else:                                          ; preds = %for.body41
  %195 = ptrtoint ptr %rx_used to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rx_used, align 4
  %call.i.i132 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %rx_used, ptr noundef %196) #9
  br i1 %call.i.i132, label %if.else.if.end48.sink.split_crit_edge, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.else.if.end48.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.else.if.end48.sink.split_crit_edge, %if.then45.if.end48.sink.split_crit_edge
  %.sink150 = phi ptr [ %194, %if.then45.if.end48.sink.split_crit_edge ], [ %196, %if.else.if.end48.sink.split_crit_edge ]
  %rx_used.sink149 = phi ptr [ %rbd_empty, %if.then45.if.end48.sink.split_crit_edge ], [ %rx_used, %if.else.if.end48.sink.split_crit_edge ]
  %prev1.i.i133 = getelementptr inbounds %struct.list_head, ptr %.sink150, i32 0, i32 1
  %197 = ptrtoint ptr %prev1.i.i133 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %list, ptr %prev1.i.i133, align 4
  %198 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %.sink150, ptr %list, align 4
  %prev3.i.i134 = getelementptr %struct.iwl_rx_mem_buffer, ptr %192, i32 %i.2145, i32 2, i32 1
  %199 = ptrtoint ptr %prev3.i.i134 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %rx_used.sink149, ptr %prev3.i.i134, align 4
  %200 = ptrtoint ptr %rx_used.sink149 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %list, ptr %rx_used.sink149, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.else.if.end48_crit_edge, %if.then45.if.end48_crit_edge
  %201 = ptrtoint ptr %global_table to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %global_table, align 8
  %arrayidx49 = getelementptr ptr, ptr %202, i32 %i.2145
  %203 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %arrayidx42, ptr %arrayidx49, align 4
  %add50 = add nuw nsw i32 %i.2145, 1
  %conv51 = trunc i32 %add50 to i16
  %vid = getelementptr %struct.iwl_rx_mem_buffer, ptr %192, i32 %i.2145, i32 4
  %204 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv51, ptr %vid, align 4
  %invalid = getelementptr %struct.iwl_rx_mem_buffer, ptr %192, i32 %i.2145, i32 5
  %205 = ptrtoint ptr %invalid to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %invalid, align 2
  %exitcond.not = icmp eq i32 %add50, %add
  br i1 %exitcond.not, label %if.end48.for.end54_crit_edge, label %if.end48.for.body41_crit_edge

if.end48.for.body41_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

if.end48.for.end54_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end54

for.end54:                                        ; preds = %if.end48.for.end54_crit_edge, %cond.end.for.end54_crit_edge
  tail call void @iwl_pcie_rxq_alloc_rbs(ptr noundef %trans, i32 noundef 3264, ptr noundef %127)
  br label %cleanup

cleanup:                                          ; preds = %for.end54, %iwl_pcie_rx_alloc.exit
  %retval.0 = phi i32 [ 0, %for.end54 ], [ -12, %iwl_pcie_rx_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_rxq_restock(ptr noundef %trans, ptr noundef %rxq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %mq_rx_supported, align 4
  %3 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @iwl_pcie_rxmq_restock(ptr noundef %trans, ptr noundef %rxq)
  br label %if.end

if.else:                                          ; preds = %entry
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %lock.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %queue_size.i.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 10
  %read.i.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 5
  %write.i.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 6
  %free_count.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 7
  %bd3.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 1
  %rx_free.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 11
  br label %while.cond.i

while.cond.i:                                     ; preds = %list_del.exit.i, %if.end.i
  %7 = ptrtoint ptr %queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %queue_size.i.i, align 8
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8) #9, !range !195
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %tobool.not.i.i = icmp ult i32 %9, 2
  br i1 %tobool.not.i.i, label %while.cond.i.iwl_rxq_space.exit.i_crit_edge, label %do.end.i.i, !prof !185

while.cond.i.iwl_rxq_space.exit.i_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_rxq_space.exit.i

do.end.i.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #9
  br label %iwl_rxq_space.exit.i

iwl_rxq_space.exit.i:                             ; preds = %do.end.i.i, %while.cond.i.iwl_rxq_space.exit.i_crit_edge
  %10 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read.i.i, align 4
  %12 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %write.i.i, align 8
  %14 = xor i32 %13, -1
  %sub22.i.i = add i32 %11, %14
  %15 = ptrtoint ptr %queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queue_size.i.i, align 8
  %sub24.i.i = add i32 %16, -1
  %and25.i.i = and i32 %sub24.i.i, %sub22.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %cmp.i = icmp sgt i32 %and25.i.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %iwl_rxq_space.exit.i.while.end.i_crit_edge

iwl_rxq_space.exit.i.while.end.i_crit_edge:       ; preds = %iwl_rxq_space.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

land.rhs.i:                                       ; preds = %iwl_rxq_space.exit.i
  %17 = ptrtoint ptr %free_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %19 = ptrtoint ptr %bd3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bd3.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_rxq, ptr %rxq, i32 0, i32 19, i32 %13
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %while.body.i.do.end17.i_crit_edge, label %land.rhs5.i

while.body.i.do.end17.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17.i

land.rhs5.i:                                      ; preds = %while.body.i
  %page.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %page.i, align 4
  %tobool6.not.i = icmp eq ptr %24, null
  br i1 %tobool6.not.i, label %land.rhs5.i.do.end17.i_crit_edge, label %do.body11.i, !prof !185

land.rhs5.i.do.end17.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17.i

do.body11.i:                                      ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intel/iwlwifi/pcie/rx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

do.end17.i:                                       ; preds = %land.rhs5.i.do.end17.i_crit_edge, %while.body.i.do.end17.i_crit_edge
  %25 = ptrtoint ptr %rx_free.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_free.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end17.i.list_del.exit.i_crit_edge

do.end17.i.list_del.exit.i_crit_edge:             ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end17.i.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %invalid.i = getelementptr i8, ptr %26, i32 14
  %35 = ptrtoint ptr %invalid.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %invalid.i, align 2
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = shl i32 %38, 8
  %40 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %write.i.i, align 8
  %arrayidx20.i = getelementptr i32, ptr %20, i32 %41
  %42 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %arrayidx20.i, align 4
  %43 = load i32, ptr %write.i.i, align 8
  %arrayidx23.i = getelementptr %struct.iwl_rxq, ptr %rxq, i32 0, i32 19, i32 %43
  %44 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %arrayidx23.i, align 4
  %45 = load i32, ptr %write.i.i, align 8
  %add.i = add i32 %45, 1
  %and.i = and i32 %add.i, 255
  store i32 %and.i, ptr %write.i.i, align 8
  %46 = ptrtoint ptr %free_count.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %free_count.i, align 4
  %dec.i = add i32 %47, -1
  store i32 %dec.i, ptr %free_count.i, align 4
  br label %while.cond.i

while.end.i:                                      ; preds = %land.rhs.i.while.end.i_crit_edge, %iwl_rxq_space.exit.i.while.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  %write_actual.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 9
  %48 = ptrtoint ptr %write_actual.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %write_actual.i, align 4
  %50 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %write.i.i, align 8
  %and29.i = and i32 %51, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %and29.i)
  %cmp30.not.i = icmp eq i32 %49, %and29.i
  br i1 %cmp30.not.i, label %while.end.i.if.end_crit_edge, label %if.then31.i

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then31.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  tail call fastcc void @iwl_pcie_rxq_inc_wr_ptr(ptr noundef %trans, ptr noundef %rxq) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then31.i, %while.end.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_rxq_inc_wr_ptr(ptr noundef %trans, ptr noundef %rxq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 17, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !187

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %1 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trans_cfg, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %shadow_reg_enable = getelementptr inbounds %struct.iwl_base_params, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %shadow_reg_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %shadow_reg_enable, align 4
  %6 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool24.not = icmp eq i8 %6, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool26.not = icmp eq i32 %9, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end38_crit_edge, label %if.then27

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then27:                                        ; preds = %land.lhs.true
  %call28 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 84) #9
  %and = and i32 %call28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then27.if.end38_crit_edge, label %do.end34

if.then27.if.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.end34:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rxq_inc_wr_ptr, ptr noundef nonnull @.str.56, i32 noundef %call28) #9
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %13, i32 0, i32 34
  %14 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %15(ptr noundef %trans, i32 noundef 36, i32 noundef 8, i32 noundef 8) #9
  %need_update = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 13
  %16 = ptrtoint ptr %need_update to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %need_update, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.then27.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %write = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 6
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %write, align 8
  %and39 = and i32 %18, -8
  %write_actual = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 9
  %19 = ptrtoint ptr %write_actual to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and39, ptr %write_actual, align 4
  %20 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans_cfg, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load41 = load i16, ptr %mq_rx_supported, align 4
  %23 = and i16 %bf.load41, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool44.not = icmp eq i16 %23, 0
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rxq, align 8
  %mul = shl i32 %25, 2
  %add = add i32 %mul, 7296
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef %add, i32 noundef %and39) #9
  br label %cleanup

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7112, i32 noundef %and39) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then45, %do.end34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_gen2_rx_init(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iwl_write8(ptr noundef %trans, i32 noundef 4, i8 noundef zeroext 64) #9
  %call = tail call fastcc i32 @_iwl_pcie_rx_init(ptr noundef %trans)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_rx_free(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %3)
  %cmp = icmp ugt i32 %3, 18
  %cond = select i1 %cmp, i32 2, i32 12
  %4 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans_specific.i, align 128
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_free, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_alloc = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 14, i32 24
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rx_alloc) #9
  %rx_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1
  %8 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_pool.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.iwl_pcie_free_rbs_pool.exit_crit_edge, label %for.cond.preheader.i

if.end.iwl_pcie_free_rbs_pool.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_free_rbs_pool.exit

for.cond.preheader.i:                             ; preds = %if.end
  %num_rx_bufs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 233
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %rx_buf_bytes.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 237
  %rx_page_order.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.030.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_pool.i, align 4
  %page.i = getelementptr %struct.iwl_rx_mem_buffer, ptr %11, i32 %i.030.i, i32 1
  %12 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.iwl_rx_mem_buffer, ptr %11, i32 %i.030.i
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %rx_buf_bytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_buf_bytes.i, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 2, i32 noundef 0) #9
  %20 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_pool.i, align 4
  %page10.i = getelementptr %struct.iwl_rx_mem_buffer, ptr %21, i32 %i.030.i, i32 1
  %22 = ptrtoint ptr %page10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %page10.i, align 4
  %24 = ptrtoint ptr %rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_page_order.i, align 4
  tail call void @__free_pages(ptr noundef %23, i32 noundef %25) #9
  %26 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_pool.i, align 4
  %page13.i = getelementptr %struct.iwl_rx_mem_buffer, ptr %27, i32 %i.030.i, i32 1
  %28 = ptrtoint ptr %page13.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %page13.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %29 = ptrtoint ptr %num_rx_bufs.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_rx_bufs.i, align 16
  %conv.i = zext i16 %30 to i32
  %add.i = add nuw nsw i32 %conv.i, 95
  %cmp.i = icmp ult i32 %inc.i, %add.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.iwl_pcie_free_rbs_pool.exit_crit_edge

for.inc.i.iwl_pcie_free_rbs_pool.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_free_rbs_pool.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

iwl_pcie_free_rbs_pool.exit:                      ; preds = %for.inc.i.iwl_pcie_free_rbs_pool.exit_crit_edge, %if.end.iwl_pcie_free_rbs_pool.exit_crit_edge
  %base_rb_stts = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 346
  %31 = ptrtoint ptr %base_rb_stts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_rb_stts, align 4
  %tobool6.not = icmp eq ptr %32, null
  br i1 %tobool6.not, label %iwl_pcie_free_rbs_pool.exit.if.end12_crit_edge, label %if.then7

iwl_pcie_free_rbs_pool.exit.if.end12_crit_edge:   ; preds = %iwl_pcie_free_rbs_pool.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %iwl_pcie_free_rbs_pool.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %33 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev8, align 8
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 25
  %35 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_rx_queues, align 8
  %conv = zext i8 %36 to i32
  %mul = mul nuw nsw i32 %cond, %conv
  %base_rb_stts_dma = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 347
  %37 = ptrtoint ptr %base_rb_stts_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base_rb_stts_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %34, i32 noundef %mul, ptr noundef nonnull %32, i32 noundef %38, i32 noundef 0) #9
  %39 = ptrtoint ptr %base_rb_stts to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %base_rb_stts, align 4
  %40 = ptrtoint ptr %base_rb_stts_dma to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %base_rb_stts_dma, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %iwl_pcie_free_rbs_pool.exit.if.end12_crit_edge
  %num_rx_queues13 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 25
  %41 = ptrtoint ptr %num_rx_queues13 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_rx_queues13, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp1561.not = icmp eq i8 %42, 0
  br i1 %cmp1561.not, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %dev.i59 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end23.for.body_crit_edge ]
  %43 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trans_specific.i, align 128
  %45 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trans_cfg, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %48)
  %cmp.i58 = icmp ugt i32 %48, 18
  br i1 %cmp.i58, label %for.body.iwl_pcie_free_bd_size.exit.i_crit_edge, label %if.else.i.i

for.body.iwl_pcie_free_bd_size.exit.i_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_free_bd_size.exit.i

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %mq_rx_supported.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %mq_rx_supported.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i.i = load i16, ptr %mq_rx_supported.i.i, align 4
  %50 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool1.not.i.i = icmp eq i16 %50, 0
  %cond.i.i = select i1 %tobool1.not.i.i, i32 4, i32 8
  br label %iwl_pcie_free_bd_size.exit.i

iwl_pcie_free_bd_size.exit.i:                     ; preds = %if.else.i.i, %for.body.iwl_pcie_free_bd_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i.i, %if.else.i.i ], [ 16, %for.body.iwl_pcie_free_bd_size.exit.i_crit_edge ]
  %bd.i = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 1
  %51 = ptrtoint ptr %bd.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bd.i, align 4
  %tobool1.not.i = icmp eq ptr %52, null
  br i1 %tobool1.not.i, label %iwl_pcie_free_bd_size.exit.i.if.end.i_crit_edge, label %if.then.i

iwl_pcie_free_bd_size.exit.i.if.end.i_crit_edge:  ; preds = %iwl_pcie_free_bd_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %iwl_pcie_free_bd_size.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i59, align 8
  %queue_size.i = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 10
  %55 = ptrtoint ptr %queue_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %queue_size.i, align 8
  %mul.i = mul i32 %56, %retval.0.i.i
  %bd_dma.i = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 2
  %57 = ptrtoint ptr %bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bd_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %54, i32 noundef %mul.i, ptr noundef nonnull %52, i32 noundef %58, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %iwl_pcie_free_bd_size.exit.i.if.end.i_crit_edge
  %bd_dma3.i = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 2
  %59 = ptrtoint ptr %bd_dma3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %bd_dma3.i, align 8
  %60 = ptrtoint ptr %bd.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %bd.i, align 4
  %rb_stts_dma.i = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 16
  %61 = ptrtoint ptr %rb_stts_dma.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %rb_stts_dma.i, align 4
  %rb_stts.i = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 15
  %62 = ptrtoint ptr %rb_stts.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %rb_stts.i, align 8
  %63 = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 3
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %tobool5.not.i = icmp eq ptr %65, null
  br i1 %tobool5.not.i, label %if.end.i.iwl_pcie_free_rxq_dma.exit_crit_edge, label %if.then6.i

if.end.i.iwl_pcie_free_rxq_dma.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_free_rxq_dma.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i59, align 8
  %cond.i = select i1 %cmp.i58, i32 32, i32 4
  %queue_size9.i = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 10
  %68 = ptrtoint ptr %queue_size9.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %queue_size9.i, align 8
  %mul10.i = mul i32 %69, %cond.i
  %used_bd_dma.i = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 4
  %70 = ptrtoint ptr %used_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %used_bd_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %67, i32 noundef %mul10.i, ptr noundef nonnull %65, i32 noundef %71, i32 noundef 0) #9
  br label %iwl_pcie_free_rxq_dma.exit

iwl_pcie_free_rxq_dma.exit:                       ; preds = %if.then6.i, %if.end.i.iwl_pcie_free_rxq_dma.exit_crit_edge
  %used_bd_dma12.i = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 4
  %72 = ptrtoint ptr %used_bd_dma12.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %used_bd_dma12.i, align 8
  %73 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %63, align 4
  %poll = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 18, i32 5
  %74 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %poll, align 8
  %tobool19.not = icmp eq ptr %75, null
  br i1 %tobool19.not, label %iwl_pcie_free_rxq_dma.exit.if.end23_crit_edge, label %if.then20

iwl_pcie_free_rxq_dma.exit.if.end23_crit_edge:    ; preds = %iwl_pcie_free_rxq_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %iwl_pcie_free_rxq_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  %napi = getelementptr %struct.iwl_rxq, ptr %44, i32 %i.062, i32 18
  tail call void @napi_disable(ptr noundef %napi) #9
  tail call void @__netif_napi_del(ptr noundef %napi) #9
  tail call void @synchronize_net() #9
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %iwl_pcie_free_rxq_dma.exit.if.end23_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %76 = ptrtoint ptr %num_rx_queues13 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %num_rx_queues13, align 8
  %conv14 = zext i8 %77 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %if.end23.for.body_crit_edge, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %if.end12.for.end_crit_edge
  %78 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_pool.i, align 4
  tail call void @kfree(ptr noundef %79) #9
  %global_table = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 1
  %80 = ptrtoint ptr %global_table to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %global_table, align 8
  tail call void @kfree(ptr noundef %81) #9
  %82 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans_specific.i, align 128
  tail call void @kfree(ptr noundef %83) #9
  %alloc_page = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 250
  %84 = ptrtoint ptr %alloc_page to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %alloc_page, align 4
  %tobool25.not = icmp eq ptr %85, null
  br i1 %tobool25.not, label %for.end.cleanup_crit_edge, label %if.then26

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_page_order = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  %86 = ptrtoint ptr %rx_page_order to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_page_order, align 4
  tail call void @__free_pages(ptr noundef nonnull %85, i32 noundef %87) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %for.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_irq_rx_msix_handler(i32 %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %entry2.i = getelementptr inbounds %struct.msix_entry, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %entry2.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %entry2.i, align 4
  %2 = and i16 %1, 255
  %conv3.i = zext i16 %2 to i32
  %idx.neg.i = sub nsw i32 0, %conv3.i
  %add.ptr.i = getelementptr %struct.msix_entry, ptr %dev_id, i32 %idx.neg.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 -3156
  %trans2 = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 12
  %3 = ptrtoint ptr %trans2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans2, align 32
  %5 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr4.i, align 128
  %idxprom = zext i16 %1 to i32
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_irq_msix(ptr noundef %8, ptr noundef %dev_id, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0)
  %9 = ptrtoint ptr %entry2.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %entry2.i, align 4
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 25
  %11 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_rx_queues, align 8
  %13 = zext i8 %12 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %13)
  %cmp.not = icmp ult i16 %10, %13
  br i1 %cmp.not, label %if.end28, label %do.end, !prof !185

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1608, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end28:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.iwl_rxq, ptr %6, i32 %idxprom
  %tobool29.not = icmp eq ptr %arrayidx, null
  br i1 %tobool29.not, label %land.rhs, label %if.end86

land.rhs:                                         ; preds = %if.end28
  %.b126 = load i1, ptr @iwl_pcie_irq_rx_msix_handler.__already_done, align 1
  br i1 %.b126, label %land.rhs.cleanup_crit_edge, label %if.then47, !prof !185

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_pcie_irq_rx_msix_handler.__already_done, align 1
  %conv62 = zext i16 %10 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1613, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %conv62) #9
  br label %cleanup

if.end86:                                         ; preds = %if.end28
  %sync_cmd_lockdep_map = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 31
  br label %__here

__here:                                           ; preds = %if.end86
  tail call void @lock_acquire(ptr noundef %sync_cmd_lockdep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@iwl_pcie_irq_rx_msix_handler, %__here) to i32)) #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %16 = ptrtoint ptr %entry2.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %entry2.i, align 4
  %conv94 = zext i16 %17 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_rx_msix_handler, ptr noundef nonnull @.str.3, i32 noundef %conv94) #9
  tail call fastcc void @local_bh_disable()
  %napi = getelementptr %struct.iwl_rxq, ptr %6, i32 %idxprom, i32 18
  %call97 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call97, label %if.then98, label %if.else

if.then98:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %if.end102

if.else:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %entry2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %entry2.i, align 4
  %conv101 = zext i16 %19 to i32
  %shl.i = shl nuw i32 1, %conv101
  tail call void @iwl_write32(ptr noundef %4, i32 noundef 10256, i32 noundef %shl.i) #9
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.then98
  tail call fastcc void @local_bh_enable()
  br label %__here104

__here104:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %sync_cmd_lockdep_map, i32 noundef ptrtoint (ptr blockaddress(@iwl_pcie_irq_rx_msix_handler, %__here104) to i32)) #9
  br label %cleanup

cleanup:                                          ; preds = %__here104, %if.then47, %land.rhs.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %__here104 ], [ 0, %if.then47 ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_irq_msix(ptr noundef %dev, ptr noundef %msix_entry, i1 noundef zeroext %defirq, i32 noundef %inta_fh, i32 noundef %inta_hw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_irq_msix, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_irq_msix, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !185

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !197
  %call43 = tail call i32 @__traceiter_iwlwifi_dev_irq_msix(ptr noundef null, ptr noundef %dev, ptr noundef %msix_entry, i1 noundef zeroext %defirq, i32 noundef %inta_fh, i32 noundef %inta_hw) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !198
  %13 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !185

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_irq_msix, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_irq_msix, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_iwlwifi_dev_irq_msix.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_iwlwifi_dev_irq_msix.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 170, ptr noundef nonnull @.str.53) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !200
  %31 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_handle_rfkill_irq(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 167
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp eq i32 %2, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 183
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !187

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 728, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %debug_rfkill.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 21
  %4 = ptrtoint ptr %debug_rfkill.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %debug_rfkill.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp25.i = icmp eq i8 %5, 1
  br i1 %cmp25.i, label %if.end.i.if.then_crit_edge, label %iwl_is_rfkill_set.exit

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

iwl_is_rfkill_set.exit:                           ; preds = %if.end.i
  %call29.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #9
  %and.i = and i32 %call29.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool30.not.i, label %iwl_is_rfkill_set.exit.if.then_crit_edge, label %iwl_is_rfkill_set.exit.if.end_crit_edge

iwl_is_rfkill_set.exit.if.end_crit_edge:          ; preds = %iwl_is_rfkill_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

iwl_is_rfkill_set.exit.if.then_crit_edge:         ; preds = %iwl_is_rfkill_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %iwl_is_rfkill_set.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %status) #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %iwl_is_rfkill_set.exit.if.end_crit_edge
  %retval.0.i74 = phi i1 [ true, %if.then ], [ false, %iwl_is_rfkill_set.exit.if.end_crit_edge ]
  %opmode_down = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 20
  %6 = ptrtoint ptr %opmode_down to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %opmode_down, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.else, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14 = icmp ne i32 %10, 0
  br label %do.end

do.end:                                           ; preds = %if.else, %if.end.do.end_crit_edge
  %report.0.in = phi i1 [ %tobool14, %if.else ], [ %retval.0.i74, %if.end.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %cond = select i1 %retval.0.i74, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond) #9
  %rfkill = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 150
  %13 = ptrtoint ptr %rfkill to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rfkill, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %rfkill, align 4
  %cmp.not = xor i1 %tobool, %report.0.in
  br i1 %cmp.not, label %do.end.if.end27_crit_edge, label %if.then25

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_trans_pcie_rf_kill(ptr noundef %trans, i1 noundef zeroext %report.0.in) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %do.end.if.end27_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br i1 %retval.0.i74, label %if.then30, label %if.else43

if.then30:                                        ; preds = %if.end27
  %call32 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then30.if.end42_crit_edge, label %do.end38

if.then30.if.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end38:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 131072, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_handle_rfkill_irq, ptr noundef nonnull @.str.7) #9
  br label %if.end42

if.end42:                                         ; preds = %do.end38, %if.then30.if.end42_crit_edge
  %wait_command_queue = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %wait_command_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end50

if.else43:                                        ; preds = %if.end27
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %status) #9
  %17 = ptrtoint ptr %opmode_down to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %opmode_down, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool46.not = icmp eq i8 %18, 0
  br i1 %tobool46.not, label %if.else43.if.end50_crit_edge, label %if.then47

if.else43.if.end50_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then47:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %status) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.else43.if.end50_crit_edge, %if.end42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_pcie_rf_kill(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_irq_handler(i32 %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 37
  %isr_stats1 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 145
  %sync_cmd_lockdep_map = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 31
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %sync_cmd_lockdep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@iwl_pcie_irq_handler, %__here) to i32)) #9
  %irq_lock = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #9
  %use_ict = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 144
  %0 = ptrtoint ptr %use_ict to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_ict, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !187

if.then:                                          ; preds = %__here
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_irq(ptr noundef %3) #9
  %ict_tbl.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 141
  %4 = ptrtoint ptr %ict_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ict_tbl.i, align 128
  %ict_index.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 143
  %6 = ptrtoint ptr %ict_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ict_index.i, align 8
  %arrayidx.i = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ict_read(ptr noundef %12, i32 noundef %7, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.do.body.i_crit_edge

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  br label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  %val.0.i = phi i32 [ %or.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.then.do.body.i_crit_edge ]
  %read.0.i = phi i32 [ %26, %do.body.i.do.body.i_crit_edge ], [ %10, %if.then.do.body.i_crit_edge ]
  %or.i = or i32 %read.0.i, %val.0.i
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %15 = ptrtoint ptr %ict_index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ict_index.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_int_cause_ict, ptr noundef nonnull @.str.59, i32 noundef %16, i32 noundef %read.0.i) #9
  %17 = ptrtoint ptr %ict_tbl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ict_tbl.i, align 128
  %19 = ptrtoint ptr %ict_index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ict_index.i, align 8
  %arrayidx11.i = getelementptr i32, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx11.i, align 4
  %22 = load i32, ptr %ict_index.i, align 8
  %add.i = add i32 %22, 1
  %and.i = and i32 %add.i, 1023
  store i32 %and.i, ptr %ict_index.i, align 8
  %23 = load ptr, ptr %ict_tbl.i, align 128
  %arrayidx16.i = getelementptr i32, ptr %23, i32 %and.i
  %24 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ict_read(ptr noundef %28, i32 noundef %and.i, i32 noundef %26) #9
  %tobool20.not.i = icmp eq i32 %25, 0
  br i1 %tobool20.not.i, label %do.end21.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end21.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, -1
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %or.i
  %and24.i = and i32 %spec.store.select.i, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %or27.i = or i32 %spec.store.select.i, 32768
  %spec.select.i = select i1 %tobool25.not.i, i32 %spec.store.select.i, i32 %or27.i
  %and29.i = and i32 %spec.select.i, 255
  %and30.i = shl i32 %spec.select.i, 16
  %shl.i = and i32 %and30.i, -16777216
  %or31.i = or i32 %shl.i, %and29.i
  br label %if.end

if.else:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @iwl_pcie_int_cause_non_ict(ptr noundef %dev_id)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end21.i, %if.then.if.end_crit_edge
  %inta.0 = phi i32 [ %call5, %if.else ], [ %or31.i, %do.end21.i ], [ 0, %if.then.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %29 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i396 = and i32 %29, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i396)
  %tobool.i.not = icmp eq i32 %and.i396, 0
  br i1 %tobool.i.not, label %if.end.if.end27_crit_edge, label %do.end

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %inta_mask = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 190
  %32 = ptrtoint ptr %inta_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %inta_mask, align 4
  %call9 = tail call i32 @iwl_read32(ptr noundef %dev_id, i32 noundef 12) #9
  %call10 = tail call i32 @iwl_read32(ptr noundef %dev_id, i32 noundef 16) #9
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_handler, ptr noundef nonnull @.str.8, i32 noundef %inta.0, i32 noundef %33, i32 noundef %call9, i32 noundef %call10) #9
  %34 = ptrtoint ptr %inta_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %inta_mask, align 4
  %neg = xor i32 %35, -1
  %and = and i32 %inta.0, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.end.if.end27_crit_edge, label %do.end19

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %37, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_handler, ptr noundef nonnull @.str.9, i32 noundef %and) #9
  br label %if.end27

if.end27:                                         ; preds = %do.end19, %do.end.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %inta_mask28 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 190
  %38 = ptrtoint ptr %inta_mask28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inta_mask28, align 4
  %and29 = and i32 %39, %inta.0
  %40 = zext i32 %and29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and29, label %lor.rhs [
    i32 0, label %do.end43
    i32 -1, label %if.end27.do.end68_crit_edge
  ], !prof !201

if.end27.do.end68_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

do.end43:                                         ; preds = %if.end27
  %dev44 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %41 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev44, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %42, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_handler, ptr noundef nonnull @.str.10) #9
  %status = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 7
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %status, align 4
  %45 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool48.not = icmp eq i32 %45, 0
  br i1 %tobool48.not, label %do.end43.if.end50_crit_edge, label %if.then49

do.end43.if.end50_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then49:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_iwl_enable_interrupts(ptr noundef %dev_id)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %do.end43.if.end50_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #9
  br label %cleanup

lor.rhs:                                          ; preds = %if.end27
  %and56 = and i32 %and29, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1515870816, i32 %and56)
  %cmp57 = icmp eq i32 %and56, -1515870816
  br i1 %cmp57, label %lor.rhs.do.end68_crit_edge, label %if.end73, !prof !187

lor.rhs.do.end68_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

do.end68:                                         ; preds = %lor.rhs.do.end68_crit_edge, %if.end27.do.end68_crit_edge
  %dev69 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %46 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev69, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %47, ptr noundef nonnull @.str.11, i32 noundef %and29) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #9
  br label %cleanup

if.end73:                                         ; preds = %lor.rhs
  %neg75 = xor i32 %39, -1
  %or = or i32 %inta.0, %neg75
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 8, i32 noundef %or) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %48 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i397 = and i32 %48, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i397)
  %tobool.i398.not = icmp eq i32 %and.i397, 0
  br i1 %tobool.i398.not, label %if.end73.if.end86_crit_edge, label %do.end81

if.end73.if.end86_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %dev82 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %49 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev82, align 8
  %call83 = tail call i32 @iwl_read32(ptr noundef %dev_id, i32 noundef 12) #9
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %50, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_handler, ptr noundef nonnull @.str.12, i32 noundef %and29, i32 noundef %call83) #9
  br label %if.end86

if.end86:                                         ; preds = %do.end81, %if.end73.if.end86_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #9
  %and88 = and i32 %and29, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end99, label %do.end94

do.end94:                                         ; preds = %if.end86
  %dev95 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %51 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev95, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @.str.13) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #9
  %status.i.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status.i.i) #9
  %msix_enabled.i.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 322
  %53 = ptrtoint ptr %msix_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %msix_enabled.i.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 12, i32 noundef 0) #9
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 8, i32 noundef -1) #9
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 16, i32 noundef -1) #9
  br label %iwl_disable_interrupts.exit

if.else.i.i:                                      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  %fh_init_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 325
  %55 = ptrtoint ptr %fh_init_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fh_init_mask.i.i, align 32
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 10244, i32 noundef %56) #9
  %hw_init_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 326
  %57 = ptrtoint ptr %hw_init_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hw_init_mask.i.i, align 4
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 10252, i32 noundef %58) #9
  br label %iwl_disable_interrupts.exit

iwl_disable_interrupts.exit:                      ; preds = %if.else.i.i, %if.then.i.i
  %59 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev95, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %60, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_disable_interrupts, ptr noundef nonnull @.str.66) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #9
  %61 = ptrtoint ptr %isr_stats1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %isr_stats1, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %isr_stats1, align 4
  tail call fastcc void @iwl_pcie_irq_handle_error(ptr noundef %dev_id)
  br label %cleanup

if.end99:                                         ; preds = %if.end86
  %and100 = and i32 %and29, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end111_crit_edge, label %do.end106

if.end99.if.end111_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %dev107 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %63 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev107, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %64, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_handler, ptr noundef nonnull @.str.14) #9
  %sch = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 148
  %65 = ptrtoint ptr %sch to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sch, align 4
  %inc110 = add i32 %66, 1
  store i32 %inc110, ptr %sch, align 4
  br label %if.end111

if.end111:                                        ; preds = %do.end106, %if.end99.if.end111_crit_edge
  %and112 = and i32 %and29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end127_crit_edge, label %do.end118

if.end111.if.end127_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

do.end118:                                        ; preds = %if.end111
  %dev119 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %67 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev119, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %68, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_handler, ptr noundef nonnull @.str.15) #9
  %alive = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 149
  %69 = ptrtoint ptr %alive to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %alive, align 4
  %inc122 = add i32 %70, 1
  store i32 %inc122, ptr %alive, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 3
  %71 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load = load i16, ptr %gen2, align 4
  %74 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool123.not = icmp eq i16 %74, 0
  br i1 %tobool123.not, label %do.end118.if.end127_crit_edge, label %if.then124

do.end118.if.end127_crit_edge:                    ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then124:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %trans_specific.i, align 128
  tail call fastcc void @iwl_pcie_rxmq_restock(ptr noundef %dev_id, ptr noundef %76)
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %do.end118.if.end127_crit_edge, %if.end111.if.end127_crit_edge
  %handled.0 = phi i32 [ 0, %if.end111.if.end127_crit_edge ], [ 1, %if.then124 ], [ 1, %do.end118.if.end127_crit_edge ]
  %and128 = and i32 %and29, -67108866
  %and129 = and i32 %and29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end127.if.end133_crit_edge, label %if.then131

if.end127.if.end133_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_pcie_handle_rfkill_irq(ptr noundef %dev_id)
  %or132 = or i32 %handled.0, 128
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end127.if.end133_crit_edge
  %handled.1 = phi i32 [ %or132, %if.then131 ], [ %handled.0, %if.end127.if.end133_crit_edge ]
  %and134 = and i32 %and29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end133.if.end146_crit_edge, label %do.end140

if.end133.if.end146_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

do.end140:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %dev141 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %77 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev141, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %78, i32 noundef 0, ptr noundef nonnull @.str.16) #9
  %ctkill = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 151
  %79 = ptrtoint ptr %ctkill to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ctkill, align 4
  %inc144 = add i32 %80, 1
  store i32 %inc144, ptr %ctkill, align 4
  %or145 = or i32 %handled.1, 64
  br label %if.end146

if.end146:                                        ; preds = %do.end140, %if.end133.if.end146_crit_edge
  %handled.2 = phi i32 [ %or145, %do.end140 ], [ %handled.1, %if.end133.if.end146_crit_edge ]
  %and147 = and i32 %and29, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end146.if.end159_crit_edge, label %do.end153

if.end146.if.end159_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

do.end153:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  %dev154 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %81 = ptrtoint ptr %dev154 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev154, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %and128) #9
  %sw = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 146
  %83 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sw, align 4
  %inc157 = add i32 %84, 1
  store i32 %inc157, ptr %sw, align 4
  tail call fastcc void @iwl_pcie_irq_handle_error(ptr noundef %dev_id)
  %or158 = or i32 %handled.2, 33554432
  br label %if.end159

if.end159:                                        ; preds = %do.end153, %if.end146.if.end159_crit_edge
  %handled.3 = phi i32 [ %or158, %do.end153 ], [ %handled.2, %if.end146.if.end159_crit_edge ]
  %and160 = and i32 %and29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end159.if.end172_crit_edge, label %do.end166

if.end159.if.end172_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

do.end166:                                        ; preds = %if.end159
  %dev167 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %85 = ptrtoint ptr %dev167 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev167, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %86, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_handler, ptr noundef nonnull @.str.18) #9
  %num_rx_queues.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 25
  %87 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp14.not.i = icmp eq i8 %88, 0
  br i1 %cmp14.not.i, label %do.end166.iwl_pcie_rxq_check_wrptr.exit_crit_edge, label %do.end166.for.body.i_crit_edge

do.end166.for.body.i_crit_edge:                   ; preds = %do.end166
  br label %for.body.i

do.end166.iwl_pcie_rxq_check_wrptr.exit_crit_edge: ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_rxq_check_wrptr.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %do.end166.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %do.end166.for.body.i_crit_edge ]
  %89 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %trans_specific.i, align 128
  %need_update.i = getelementptr %struct.iwl_rxq, ptr %90, i32 %i.015.i, i32 13
  %91 = ptrtoint ptr %need_update.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %need_update.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i399 = icmp eq i8 %92, 0
  br i1 %tobool.not.i399, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i400 = getelementptr %struct.iwl_rxq, ptr %90, i32 %i.015.i
  %lock.i = getelementptr %struct.iwl_rxq, ptr %90, i32 %i.015.i, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  tail call fastcc void @iwl_pcie_rxq_inc_wr_ptr(ptr noundef %dev_id, ptr noundef %arrayidx.i400) #9
  %93 = ptrtoint ptr %need_update.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %need_update.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %94 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %num_rx_queues.i, align 8
  %conv.i = zext i8 %95 to i32
  %cmp.i401 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i401, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.iwl_pcie_rxq_check_wrptr.exit_crit_edge

cleanup.i.iwl_pcie_rxq_check_wrptr.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_rxq_check_wrptr.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

iwl_pcie_rxq_check_wrptr.exit:                    ; preds = %cleanup.i.iwl_pcie_rxq_check_wrptr.exit_crit_edge, %do.end166.iwl_pcie_rxq_check_wrptr.exit_crit_edge
  tail call void @iwl_pcie_txq_check_wrptrs(ptr noundef %dev_id) #9
  %wakeup = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 152
  %96 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wakeup, align 4
  %inc170 = add i32 %97, 1
  store i32 %inc170, ptr %wakeup, align 4
  %or171 = or i32 %handled.3, 2
  br label %if.end172

if.end172:                                        ; preds = %iwl_pcie_rxq_check_wrptr.exit, %if.end159.if.end172_crit_edge
  %handled.4 = phi i32 [ %or171, %iwl_pcie_rxq_check_wrptr.exit ], [ %handled.3, %if.end159.if.end172_crit_edge ]
  %and173 = and i32 %and29, -1879048184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end172.if.end205_crit_edge, label %do.end179

if.end172.if.end205_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205

do.end179:                                        ; preds = %if.end172
  %dev180 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %98 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev180, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %99, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_handler, ptr noundef nonnull @.str.19) #9
  %and183 = and i32 %and29, -2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %do.end179.if.end187_crit_edge, label %if.then185

do.end179.if.end187_crit_edge:                    ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

if.then185:                                       ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #11
  %or186 = or i32 %handled.4, -2147483640
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 16, i32 noundef 1073938432) #9
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %do.end179.if.end187_crit_edge
  %handled.5 = phi i32 [ %or186, %if.then185 ], [ %handled.4, %do.end179.if.end187_crit_edge ]
  %and188 = and i32 %and29, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.end187.if.end192_crit_edge, label %if.then190

if.end187.if.end192_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then190:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  %or191 = or i32 %handled.5, 268435456
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 8, i32 noundef 268435456) #9
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %if.end187.if.end192_crit_edge
  %handled.6 = phi i32 [ %or191, %if.then190 ], [ %handled.5, %if.end187.if.end192_crit_edge ]
  tail call void @iwl_write8(ptr noundef %dev_id, i32 noundef 5, i8 noundef zeroext 0) #9
  br i1 %tobool184.not, label %if.end192.if.end196_crit_edge, label %if.then195

if.end192.if.end196_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.then195:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_write8(ptr noundef %dev_id, i32 noundef 5, i8 noundef zeroext -1) #9
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %if.end192.if.end196_crit_edge
  %rx = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 153
  %100 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx, align 4
  %inc197 = add i32 %101, 1
  store i32 %inc197, ptr %rx, align 4
  tail call fastcc void @local_bh_disable()
  %102 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %trans_specific.i, align 128
  %napi = getelementptr inbounds %struct.iwl_rxq, ptr %103, i32 0, i32 18
  %call199 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call199, label %if.then200, label %if.end196.if.end204_crit_edge

if.end196.if.end204_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

if.then200:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %trans_specific.i, align 128
  %napi203 = getelementptr inbounds %struct.iwl_rxq, ptr %105, i32 0, i32 18
  tail call void @__napi_schedule(ptr noundef %napi203) #9
  br label %if.end204

if.end204:                                        ; preds = %if.then200, %if.end196.if.end204_crit_edge
  tail call fastcc void @local_bh_enable()
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.end172.if.end205_crit_edge
  %handled.7 = phi i32 [ %handled.6, %if.end204 ], [ %handled.4, %if.end172.if.end205_crit_edge ]
  %polling.1.off0 = phi i1 [ %call199, %if.end204 ], [ false, %if.end172.if.end205_crit_edge ]
  %and206 = and i32 %and29, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %if.end205.if.end218_crit_edge, label %if.then208

if.end205.if.end218_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218

if.then208:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 16, i32 noundef 3) #9
  %dev213 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %106 = ptrtoint ptr %dev213 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev213, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %107, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_handler, ptr noundef nonnull @.str.20) #9
  %tx = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 154
  %108 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx, align 4
  %inc216 = add i32 %109, 1
  store i32 %inc216, ptr %tx, align 4
  %or217 = or i32 %handled.7, 134217728
  %ucode_write_complete = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 204
  %110 = ptrtoint ptr %ucode_write_complete to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %ucode_write_complete, align 4
  %ucode_write_waitq = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 205
  tail call void @__wake_up(ptr noundef %ucode_write_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end218

if.end218:                                        ; preds = %if.then208, %if.end205.if.end218_crit_edge
  %handled.8 = phi i32 [ %or217, %if.then208 ], [ %handled.7, %if.end205.if.end218_crit_edge ]
  %neg219 = xor i32 %handled.8, -1
  %and220 = and i32 %and128, %neg219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %if.end218.if.end233_crit_edge, label %do.end226

if.end218.if.end233_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end233

do.end226:                                        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  %dev227 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %111 = ptrtoint ptr %dev227 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev227, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %112, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %and220) #9
  %unhandled = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 155
  %113 = ptrtoint ptr %unhandled to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %unhandled, align 4
  %inc232 = add i32 %114, 1
  store i32 %inc232, ptr %unhandled, align 4
  br label %if.end233

if.end233:                                        ; preds = %do.end226, %if.end218.if.end233_crit_edge
  %115 = ptrtoint ptr %inta_mask28 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %inta_mask28, align 4
  %neg235 = xor i32 %116, -1
  %and236 = and i32 %and128, %neg235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.end233.if.end249_crit_edge, label %do.end242

if.end233.if.end249_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end249

do.end242:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #11
  %dev243 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %117 = ptrtoint ptr %dev243 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev243, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %118, ptr noundef nonnull @.str.22, i32 noundef %and236) #9
  br label %if.end249

if.end249:                                        ; preds = %do.end242, %if.end233.if.end249_crit_edge
  br i1 %polling.1.off0, label %if.end249.cleanup_crit_edge, label %if.then251

if.end249.cleanup_crit_edge:                      ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then251:                                       ; preds = %if.end249
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #9
  %status253 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 7
  %119 = ptrtoint ptr %status253 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %status253, align 4
  %121 = and i32 %120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool255.not = icmp eq i32 %121, 0
  br i1 %tobool255.not, label %if.else257, label %if.then256

if.then256:                                       ; preds = %if.then251
  %dev.i402 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %122 = ptrtoint ptr %dev.i402 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i402, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %123, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_enable_interrupts, ptr noundef nonnull @.str.60) #9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status253) #9
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 322
  %124 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %msix_enabled.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i403 = icmp eq i8 %125, 0
  br i1 %tobool.not.i403, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %inta_mask28 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1174404981, ptr %inta_mask28, align 4
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 12, i32 noundef -1174404981) #9
  br label %if.end272

if.else.i:                                        ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #11
  %hw_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 326
  %127 = ptrtoint ptr %hw_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %hw_init_mask.i, align 4
  %hw_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 328
  %129 = ptrtoint ptr %hw_mask.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %hw_mask.i, align 4
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 325
  %130 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %fh_init_mask.i, align 32
  %fh_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 327
  %132 = ptrtoint ptr %fh_mask.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %fh_mask.i, align 8
  %neg.i = xor i32 %131, -1
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 10244, i32 noundef %neg.i) #9
  %133 = ptrtoint ptr %hw_mask.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hw_mask.i, align 4
  %neg7.i = xor i32 %134, -1
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 10252, i32 noundef %neg7.i) #9
  br label %if.end272

if.else257:                                       ; preds = %if.then251
  %and258 = and i32 %handled.8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and258)
  %tobool259.not = icmp eq i32 %and258, 0
  br i1 %tobool259.not, label %if.else261, label %if.then260

if.then260:                                       ; preds = %if.else257
  %dev.i405 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %135 = ptrtoint ptr %dev.i405 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i405, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %136, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_fw_load_int, ptr noundef nonnull @.str.63) #9
  %msix_enabled.i406 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 322
  %137 = ptrtoint ptr %msix_enabled.i406 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %msix_enabled.i406, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i407 = icmp eq i8 %138, 0
  br i1 %tobool.not.i407, label %if.then.i409, label %if.else.i411

if.then.i409:                                     ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %inta_mask28 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 134217728, ptr %inta_mask28, align 4
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 12, i32 noundef 134217728) #9
  br label %if.end272

if.else.i411:                                     ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #11
  %hw_init_mask.i410 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 326
  %140 = ptrtoint ptr %hw_init_mask.i410 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %hw_init_mask.i410, align 4
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 10252, i32 noundef %141) #9
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 10244, i32 noundef -65537) #9
  %fh_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 327
  %142 = ptrtoint ptr %fh_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 65536, ptr %fh_mask.i.i, align 8
  br label %if.end272

if.else261:                                       ; preds = %if.else257
  %and262 = and i32 %handled.8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %if.else265, label %if.then264

if.then264:                                       ; preds = %if.else261
  %dev.i413 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 8
  %143 = ptrtoint ptr %dev.i413 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i413, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %144, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_rfkill_int, ptr noundef nonnull @.str.64) #9
  %msix_enabled.i414 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 322
  %145 = ptrtoint ptr %msix_enabled.i414 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %msix_enabled.i414, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i415 = icmp eq i8 %146, 0
  br i1 %tobool.not.i415, label %if.then.i417, label %if.else.i419

if.then.i417:                                     ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %inta_mask28 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 128, ptr %inta_mask28, align 4
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 12, i32 noundef 128) #9
  br label %if.end.i421

if.else.i419:                                     ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #11
  %fh_init_mask.i418 = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 325
  %148 = ptrtoint ptr %fh_init_mask.i418 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fh_init_mask.i418, align 32
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 10244, i32 noundef %149) #9
  tail call void @iwl_write32(ptr noundef %dev_id, i32 noundef 10252, i32 noundef -129) #9
  %hw_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 1, i32 36, i32 2, i32 328
  %150 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 128, ptr %hw_mask.i.i, align 4
  br label %if.end.i421

if.end.i421:                                      ; preds = %if.else.i419, %if.then.i417
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 3
  %151 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %154)
  %cmp.i420 = icmp ugt i32 %154, 16
  br i1 %cmp.i420, label %if.then5.i, label %if.end.i421.if.end272_crit_edge

if.end.i421.if.end272_crit_edge:                  ; preds = %if.end.i421
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end272

if.then5.i:                                       ; preds = %if.end.i421
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %dev_id, i32 0, i32 1
  %155 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %156, i32 0, i32 34
  %157 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %158(ptr noundef %dev_id, i32 noundef 36, i32 noundef 67108864, i32 noundef 67108864) #9
  br label %if.end272

if.else265:                                       ; preds = %if.else261
  %and266 = and i32 %handled.8, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %if.else265.if.end272_crit_edge, label %if.then268

if.else265.if.end272_crit_edge:                   ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end272

if.then268:                                       ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @iwl_enable_fw_load_int_ctx_info(ptr noundef %dev_id)
  br label %if.end272

if.end272:                                        ; preds = %if.then268, %if.else265.if.end272_crit_edge, %if.then5.i, %if.end.i421.if.end272_crit_edge, %if.else.i411, %if.then.i409, %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end272, %if.end249.cleanup_crit_edge, %iwl_disable_interrupts.exit, %do.end68, %if.end50
  %retval.0 = phi i32 [ 0, %if.end50 ], [ 1, %do.end68 ], [ 1, %iwl_disable_interrupts.exit ], [ 1, %if.end272 ], [ 1, %if.end249.cleanup_crit_edge ]
  tail call void @lock_release(ptr noundef %sync_cmd_lockdep_map, i32 noundef ptrtoint (ptr blockaddress(@iwl_pcie_irq_handler, %cleanup) to i32)) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_pcie_int_cause_non_ict(ptr noundef %trans) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 160
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !187

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1669, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_irq(ptr noundef %2)
  %call25 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 8) #9
  ret i32 %call25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_iwl_enable_interrupts(ptr noundef %trans) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_enable_interrupts, ptr noundef nonnull @.str.60) #9
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #9
  %msix_enabled = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %inta_mask = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %4 = ptrtoint ptr %inta_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1174404981, ptr %inta_mask, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef -1174404981) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw_init_mask = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 326
  %5 = ptrtoint ptr %hw_init_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_init_mask, align 4
  %hw_mask = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %7 = ptrtoint ptr %hw_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %hw_mask, align 4
  %fh_init_mask = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %8 = ptrtoint ptr %fh_init_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fh_init_mask, align 32
  %fh_mask = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 327
  %10 = ptrtoint ptr %fh_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fh_mask, align 8
  %neg = xor i32 %9, -1
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %neg) #9
  %11 = ptrtoint ptr %hw_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_mask, align 4
  %neg7 = xor i32 %12, -1
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef %neg7) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_irq_handle_error(ptr noundef %trans) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %internal_wimax_coex = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %internal_wimax_coex to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %internal_wimax_coex, align 4
  %3 = and i24 %bf.load, 1048608
  %4 = icmp eq i24 %3, 1048576
  br i1 %4, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %call = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef 12288) #9
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.then_crit_edge, label %lor.lhs.false

land.lhs.true7.if.then_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %call9 = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef 12300) #9
  %and10 = and i32 %call9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true7.if.then_crit_edge
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #9
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %5 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op_mode, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.61, i32 noundef 202) #9
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %wimax_active.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %wimax_active.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wimax_active.i, align 4
  tail call void %10(ptr noundef %6) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %11 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans_cfg, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %num_of_queues37 = getelementptr inbounds %struct.iwl_base_params, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %num_of_queues37 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_of_queues37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp39.not = icmp eq i16 %16, 0
  br i1 %cmp39.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %i.040
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %stuck_timer = getelementptr inbounds %struct.iwl_txq, ptr %18, i32 0, i32 6
  %call19 = tail call i32 @del_timer(ptr noundef %stuck_timer) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %19 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trans_cfg, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %24 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %25 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %op_mode.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.critedge.i

land.rhs.i:                                       ; preds = %for.end
  %.b1.i = load i1, ptr @iwl_trans_fw_error.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.iwl_trans_fw_error.exit_crit_edge, label %if.then.i, !prof !185

land.rhs.i.iwl_trans_fw_error.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_trans_fw_error.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_trans_fw_error.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 1426, i32 noundef 9, ptr noundef null) #9
  br label %iwl_trans_fw_error.exit

if.end40.critedge.i:                              ; preds = %for.end
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %status.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.end40.critedge.i.iwl_trans_fw_error.exit_crit_edge

if.end40.critedge.i.iwl_trans_fw_error.exit_crit_edge: ; preds = %if.end40.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_trans_fw_error.exit

if.then42.i:                                      ; preds = %if.end40.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %op_mode.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %nic_error.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %nic_error.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nic_error.i.i, align 4
  tail call void %32(ptr noundef %28, i1 noundef zeroext false) #9
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 6
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %state.i, align 8
  br label %iwl_trans_fw_error.exit

iwl_trans_fw_error.exit:                          ; preds = %if.then42.i, %if.end40.critedge.i.iwl_trans_fw_error.exit_crit_edge, %if.then.i, %land.rhs.i.iwl_trans_fw_error.exit_crit_edge
  %status20 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status20) #9
  br label %cleanup

cleanup:                                          ; preds = %iwl_trans_fw_error.exit, %if.then
  %wait_command_queue21 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %wait_command_queue21, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_rxmq_restock(ptr noundef %trans, ptr noundef %rxq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %free_count = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 7
  %3 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %free_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not57 = icmp eq i32 %4, 0
  br i1 %tobool2.not57, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %rx_free = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 11
  %supported_dma_mask = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 238
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %bd1.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 1
  %write10.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 6
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %queue_size = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %iwl_pcie_restock_bd.exit.while.body_crit_edge, %while.body.lr.ph
  %5 = ptrtoint ptr %rx_free to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_free, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %invalid = getelementptr i8, ptr %6, i32 14
  %15 = ptrtoint ptr %invalid to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %invalid, align 2
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %18 = ptrtoint ptr %supported_dma_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %supported_dma_mask, align 4
  %and = and i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %list_del.exit.if.end18_crit_edge, label %do.end, !prof !185

list_del.exit.if.end18_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %list_del.exit.if.end18_crit_edge
  %20 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %23)
  %cmp.i = icmp ugt i32 %23, 18
  %24 = ptrtoint ptr %bd1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bd1.i, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i32 %27 to i64
  %28 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #9
  %29 = ptrtoint ptr %write10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %write10.i, align 8
  %addr.i = getelementptr %struct.iwl_rx_transfer_desc, ptr %25, i32 %30, i32 2
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %28, ptr %addr.i, align 1
  %vid.i = getelementptr i8, ptr %6, i32 12
  %32 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vid.i, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #9
  %35 = ptrtoint ptr %write10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %write10.i, align 8
  %arrayidx3.i = getelementptr %struct.iwl_rx_transfer_desc, ptr %25, i32 %36
  %37 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %34, ptr %arrayidx3.i, align 1
  br label %iwl_pcie_restock_bd.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %vid7.i = getelementptr i8, ptr %6, i32 12
  %38 = ptrtoint ptr %vid7.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vid7.i, align 4
  %conv8.i = zext i16 %39 to i32
  %or.i = or i32 %27, %conv8.i
  %conv9.i = zext i32 %or.i to i64
  %40 = tail call i64 @llvm.bswap.i64(i64 %conv9.i) #9
  %41 = ptrtoint ptr %write10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %write10.i, align 8
  %arrayidx11.i = getelementptr i64, ptr %25, i32 %42
  %43 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %40, ptr %arrayidx11.i, align 8
  br label %iwl_pcie_restock_bd.exit

iwl_pcie_restock_bd.exit:                         ; preds = %if.else.i, %if.then.i
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 8
  %vid16.i = getelementptr i8, ptr %6, i32 12
  %46 = ptrtoint ptr %vid16.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vid16.i, align 4
  %conv17.i = zext i16 %47 to i32
  %48 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rxq, align 8
  %50 = ptrtoint ptr %write10.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %write10.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %45, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_restock_bd, ptr noundef nonnull @.str.62, i32 noundef %conv17.i, i32 noundef %49, i32 noundef %51) #9
  %52 = ptrtoint ptr %write10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %write10.i, align 8
  %add = add i32 %53, 1
  %54 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %queue_size, align 8
  %sub = add i32 %55, -1
  %and26 = and i32 %sub, %add
  store i32 %and26, ptr %write10.i, align 8
  %56 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %free_count, align 4
  %dec = add i32 %57, -1
  store i32 %dec, ptr %free_count, align 4
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %iwl_pcie_restock_bd.exit.while.end_crit_edge, label %iwl_pcie_restock_bd.exit.while.body_crit_edge

iwl_pcie_restock_bd.exit.while.body_crit_edge:    ; preds = %iwl_pcie_restock_bd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

iwl_pcie_restock_bd.exit.while.end_crit_edge:     ; preds = %iwl_pcie_restock_bd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %iwl_pcie_restock_bd.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %write_actual = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 9
  %58 = ptrtoint ptr %write_actual to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %write_actual, align 4
  %write30 = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 6
  %60 = ptrtoint ptr %write30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %write30, align 8
  %and31 = and i32 %61, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %and31)
  %cmp.not = icmp eq i32 %59, %and31
  br i1 %cmp.not, label %while.end.cleanup_crit_edge, label %if.then32

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  tail call fastcc void @iwl_pcie_rxq_inc_wr_ptr(ptr noundef %trans, ptr noundef %rxq)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_txq_check_wrptrs(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_enable_fw_load_int_ctx_info(ptr noundef %trans) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_fw_load_int_ctx_info, ptr noundef nonnull @.str.65) #9
  %msix_enabled = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %inta_mask = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %4 = ptrtoint ptr %inta_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2147483647, ptr %inta_mask, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef -2147483647) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef -2) #9
  %hw_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %5 = ptrtoint ptr %hw_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %hw_mask.i, align 4
  %fh_init_mask = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %6 = ptrtoint ptr %fh_init_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fh_init_mask, align 32
  %neg.i = xor i32 %7, -1
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %neg.i) #9
  %fh_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 327
  %8 = ptrtoint ptr %fh_mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fh_mask.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_free_ict(ptr nocapture noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ict_tbl = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 141
  %0 = ptrtoint ptr %ict_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ict_tbl, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %ict_tbl_dma = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 142
  %4 = ptrtoint ptr %ict_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ict_tbl_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #9
  %6 = ptrtoint ptr %ict_tbl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ict_tbl, align 128
  %7 = ptrtoint ptr %ict_tbl_dma to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ict_tbl_dma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_alloc_ict(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %ict_tbl_dma = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 142
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef 4096, ptr noundef %ict_tbl_dma, i32 noundef 3264, i32 noundef 0) #9
  %ict_tbl = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 141
  %2 = ptrtoint ptr %ict_tbl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %ict_tbl, align 128
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ict_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ict_tbl_dma, align 4
  %and = and i32 %4, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end, !prof !185

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2071, i32 noundef 9, ptr noundef null) #9
  tail call void @iwl_pcie_free_ict(ptr noundef %trans)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_reset_ict(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ict_tbl = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 141
  %0 = ptrtoint ptr %ict_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ict_tbl, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #9
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status.i) #9
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %2 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_enabled.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef 0) #9
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 8, i32 noundef -1) #9
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 16, i32 noundef -1) #9
  br label %_iwl_disable_interrupts.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %4 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fh_init_mask.i, align 32
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %5) #9
  %hw_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 326
  %6 = ptrtoint ptr %hw_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_init_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef %7) #9
  br label %_iwl_disable_interrupts.exit

_iwl_disable_interrupts.exit:                     ; preds = %if.else.i, %if.then.i
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_disable_interrupts, ptr noundef nonnull @.str.66) #9
  %10 = ptrtoint ptr %ict_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ict_tbl, align 128
  %12 = call ptr @memset(ptr %11, i32 0, i32 4096)
  %ict_tbl_dma = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 142
  %13 = ptrtoint ptr %ict_tbl_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ict_tbl_dma, align 4
  %shr = lshr i32 %14, 12
  %or = or i32 %shr, -1744830464
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_reset_ict, ptr noundef nonnull @.str.23, i32 noundef %or) #9
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 160, i32 noundef %or) #9
  %use_ict = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 144
  %17 = ptrtoint ptr %use_ict to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %use_ict, align 4
  %ict_index = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 143
  %18 = ptrtoint ptr %ict_index to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ict_index, align 8
  %inta_mask = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %19 = ptrtoint ptr %inta_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inta_mask, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 8, i32 noundef %20) #9
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_enable_interrupts, ptr noundef nonnull @.str.60) #9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #9
  %23 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %msix_enabled.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i24 = icmp eq i8 %24, 0
  br i1 %tobool.not.i24, label %if.then.i25, label %if.else.i28

if.then.i25:                                      ; preds = %_iwl_disable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %inta_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1174404981, ptr %inta_mask, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef -1174404981) #9
  br label %_iwl_enable_interrupts.exit

if.else.i28:                                      ; preds = %_iwl_disable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #11
  %hw_init_mask.i26 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 326
  %26 = ptrtoint ptr %hw_init_mask.i26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_init_mask.i26, align 4
  %hw_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %28 = ptrtoint ptr %hw_mask.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %hw_mask.i, align 4
  %fh_init_mask.i27 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %29 = ptrtoint ptr %fh_init_mask.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fh_init_mask.i27, align 32
  %fh_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 327
  %31 = ptrtoint ptr %fh_mask.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %fh_mask.i, align 8
  %neg.i = xor i32 %30, -1
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %neg.i) #9
  %32 = ptrtoint ptr %hw_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_mask.i, align 4
  %neg7.i = xor i32 %33, -1
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef %neg7.i) #9
  br label %_iwl_enable_interrupts.exit

_iwl_enable_interrupts.exit:                      ; preds = %if.else.i28, %if.then.i25
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %_iwl_enable_interrupts.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_disable_ict(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #9
  %use_ict = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 144
  %0 = ptrtoint ptr %use_ict to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %use_ict, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_isr(i32 noundef %irq, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_write32(ptr noundef nonnull %data, i32 noundef 12, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwl_pcie_msix_isr(i32 noundef %irq, ptr nocapture noundef readnone %data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_irq_msix_handler(i32 %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %entry2.i = getelementptr inbounds %struct.msix_entry, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %entry2.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %entry2.i, align 4
  %2 = and i16 %1, 255
  %conv3.i = zext i16 %2 to i32
  %idx.neg.i = sub nsw i32 0, %conv3.i
  %add.ptr.i = getelementptr %struct.msix_entry, ptr %dev_id, i32 %idx.neg.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 -3156
  %trans2 = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 12
  %3 = ptrtoint ptr %trans2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans2, align 32
  %isr_stats3 = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 22
  %shared_vec_mask = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 55
  %sync_cmd_lockdep_map = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 31
  br label %__here

__here:                                           ; preds = %entry
  %5 = ptrtoint ptr %shared_vec_mask to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shared_vec_mask, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool.not, i32 -65536, i32 -65535
  %8 = and i8 %6, 2
  %9 = zext i8 %8 to i32
  %10 = or i32 %spec.select, %9
  tail call void @lock_acquire(ptr noundef %sync_cmd_lockdep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@iwl_pcie_irq_msix_handler, %__here) to i32)) #9
  %irq_lock = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #9
  %call11 = tail call i32 @iwl_read32(ptr noundef %4, i32 noundef 10240) #9
  %call12 = tail call i32 @iwl_read32(ptr noundef %4, i32 noundef 10248) #9
  %and13 = and i32 %10, %call11
  tail call void @iwl_write32(ptr noundef %4, i32 noundef 10240, i32 noundef %and13) #9
  tail call void @iwl_write32(ptr noundef %4, i32 noundef 10248, i32 noundef %call12) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #9
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_irq_msix(ptr noundef %12, ptr noundef %dev_id, i1 noundef zeroext true, i32 noundef %call11, i32 noundef %call12)
  %or15 = or i32 %call12, %call11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or15)
  %tobool16.not = icmp eq i32 %or15, 0
  br i1 %tobool16.not, label %do.end, label %if.end28, !prof !187

do.end:                                           ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_msix_handler, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end28:                                         ; preds = %__here
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %15 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end28.if.end56_crit_edge, label %do.end34

if.end28.if.end56_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end34:                                         ; preds = %if.end28
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %entry2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %entry2.i, align 4
  %conv37 = zext i16 %19 to i32
  %fh_mask = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 60
  %20 = ptrtoint ptr %fh_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fh_mask, align 8
  %call38 = tail call i32 @iwl_read32(ptr noundef %4, i32 noundef 10244) #9
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_msix_handler, ptr noundef nonnull @.str.24, i32 noundef %conv37, i32 noundef %call11, i32 noundef %21, i32 noundef %call38) #9
  %22 = ptrtoint ptr %fh_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fh_mask, align 8
  %neg = xor i32 %23, -1
  %and42 = and i32 %call11, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.end34.if.end56_crit_edge, label %do.end48

do.end34.if.end56_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end48:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %25, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_msix_handler, ptr noundef nonnull @.str.9, i32 noundef %and42) #9
  br label %if.end56

if.end56:                                         ; preds = %do.end48, %do.end34.if.end56_crit_edge, %if.end28.if.end56_crit_edge
  %fh_mask57 = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 60
  %26 = ptrtoint ptr %fh_mask57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fh_mask57, align 8
  %and58 = and i32 %27, %call11
  %28 = ptrtoint ptr %shared_vec_mask to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %shared_vec_mask, align 1
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool62.not = icmp eq i8 %30, 0
  %and63 = and i32 %and58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or.cond = select i1 %tobool62.not, i1 true, i1 %tobool64.not
  br i1 %or.cond, label %if.end56.if.end72_crit_edge, label %if.then65

if.end56.if.end72_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then65:                                        ; preds = %if.end56
  tail call fastcc void @local_bh_disable()
  %31 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr4.i, align 128
  %napi = getelementptr inbounds %struct.iwl_rxq, ptr %32, i32 0, i32 18
  %call66 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call66, label %if.then67, label %if.then65.if.end71_crit_edge

if.then65.if.end71_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then67:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr4.i, align 128
  %napi70 = getelementptr inbounds %struct.iwl_rxq, ptr %34, i32 0, i32 18
  tail call void @__napi_schedule(ptr noundef %napi70) #9
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.then65.if.end71_crit_edge
  tail call fastcc void @local_bh_enable()
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end56.if.end72_crit_edge
  %polling.1.off0 = phi i1 [ %call66, %if.end71 ], [ false, %if.end56.if.end72_crit_edge ]
  %35 = ptrtoint ptr %shared_vec_mask to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %shared_vec_mask, align 1
  %37 = and i8 %36, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool76.not = icmp eq i8 %37, 0
  %and78 = and i32 %and58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %or.cond373 = select i1 %tobool76.not, i1 true, i1 %tobool79.not
  br i1 %or.cond373, label %if.end72.if.end90_crit_edge, label %if.then80

if.end72.if.end90_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then80:                                        ; preds = %if.end72
  tail call fastcc void @local_bh_disable()
  %38 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr4.i, align 128
  %napi83 = getelementptr %struct.iwl_rxq, ptr %39, i32 1, i32 18
  %call84 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi83) #9
  br i1 %call84, label %if.then85, label %if.then80.if.end89_crit_edge

if.then80.if.end89_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then85:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr4.i, align 128
  %napi88 = getelementptr %struct.iwl_rxq, ptr %41, i32 1, i32 18
  tail call void @__napi_schedule(ptr noundef %napi88) #9
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.then80.if.end89_crit_edge
  %polling.2.off0 = phi i1 [ true, %if.then85 ], [ %polling.1.off0, %if.then80.if.end89_crit_edge ]
  tail call fastcc void @local_bh_enable()
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end72.if.end90_crit_edge
  %polling.3.off0 = phi i1 [ %polling.2.off0, %if.end89 ], [ %polling.1.off0, %if.end72.if.end90_crit_edge ]
  %and91 = and i32 %and58, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.if.end101_crit_edge, label %do.end97

if.end90.if.end101_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

do.end97:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_msix_handler, ptr noundef nonnull @.str.20) #9
  %tx = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 22, i32 9
  %44 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %tx, align 4
  %ucode_write_complete = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 33
  %46 = ptrtoint ptr %ucode_write_complete to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %ucode_write_complete, align 4
  %ucode_write_waitq = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 35
  tail call void @__wake_up(ptr noundef %ucode_write_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end101

if.end101:                                        ; preds = %do.end97, %if.end90.if.end101_crit_edge
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 3
  %47 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %50)
  %cmp = icmp ugt i32 %50, 19
  %sw_err.0.off0.in.v = select i1 %cmp, i32 32, i32 33554432
  %sw_err.0.off0.in = and i32 %sw_err.0.off0.in.v, %call12
  %and110 = and i32 %and58, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sw_err.0.off0.in)
  %sw_err.0.off0.not = icmp eq i32 %sw_err.0.off0.in, 0
  %or.cond374 = select i1 %tobool111.not, i1 %sw_err.0.off0.not, i1 false
  br i1 %or.cond374, label %if.end101.if.end129_crit_edge, label %do.end118

if.end101.if.end129_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

do.end118:                                        ; preds = %if.end101
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @.str.25, i32 noundef %and58) #9
  %sw = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 22, i32 1
  %53 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sw, align 4
  %inc122 = add i32 %54, 1
  store i32 %inc122, ptr %sw, align 4
  %fw_reset_state = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 68
  %55 = ptrtoint ptr %fw_reset_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fw_reset_state, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp123 = icmp eq i32 %56, 1
  br i1 %cmp123, label %if.then125, label %if.else127

if.then125:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %fw_reset_state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %fw_reset_state, align 64
  %fw_reset_waitq = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 69
  tail call void @__wake_up(ptr noundef %fw_reset_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end129

if.else127:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @iwl_pcie_irq_handle_error(ptr noundef %4)
  br label %if.end129

if.end129:                                        ; preds = %if.else127, %if.then125, %if.end101.if.end129_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %58 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i375 = and i32 %58, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i375)
  %tobool.i376.not = icmp eq i32 %and.i375, 0
  br i1 %tobool.i376.not, label %if.end129.if.end158_crit_edge, label %do.end135

if.end129.if.end158_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

do.end135:                                        ; preds = %if.end129
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %61 = ptrtoint ptr %entry2.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %entry2.i, align 4
  %conv138 = zext i16 %62 to i32
  %hw_mask = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 61
  %63 = ptrtoint ptr %hw_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hw_mask, align 4
  %call139 = tail call i32 @iwl_read32(ptr noundef %4, i32 noundef 10252) #9
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %60, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_msix_handler, ptr noundef nonnull @.str.26, i32 noundef %conv138, i32 noundef %call12, i32 noundef %64, i32 noundef %call139) #9
  %65 = ptrtoint ptr %hw_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hw_mask, align 4
  %neg143 = xor i32 %66, -1
  %and144 = and i32 %call12, %neg143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.end135.if.end158_crit_edge, label %do.end150

do.end135.if.end158_crit_edge:                    ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

do.end150:                                        ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %68, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_msix_handler, ptr noundef nonnull @.str.27, i32 noundef %and144) #9
  br label %if.end158

if.end158:                                        ; preds = %do.end150, %do.end135.if.end158_crit_edge, %if.end129.if.end158_crit_edge
  %hw_mask159 = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 61
  %69 = ptrtoint ptr %hw_mask159 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hw_mask159, align 4
  %and160 = and i32 %70, %call12
  %and161 = and i32 %and160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end158.if.end177_crit_edge, label %do.end167

if.end158.if.end177_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177

do.end167:                                        ; preds = %if.end158
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %72, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_msix_handler, ptr noundef nonnull @.str.15) #9
  %alive = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 22, i32 4
  %73 = ptrtoint ptr %alive to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %alive, align 4
  %inc171 = add i32 %74, 1
  store i32 %inc171, ptr %alive, align 4
  %75 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load = load i16, ptr %gen2, align 4
  %78 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool173.not = icmp eq i16 %78, 0
  br i1 %tobool173.not, label %do.end167.if.end177_crit_edge, label %if.then174

do.end167.if.end177_crit_edge:                    ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177

if.then174:                                       ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr4.i, align 128
  tail call fastcc void @iwl_pcie_rxmq_restock(ptr noundef %4, ptr noundef %80)
  br label %if.end177

if.end177:                                        ; preds = %if.then174, %do.end167.if.end177_crit_edge, %if.end158.if.end177_crit_edge
  %and178 = and i32 %and160, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %if.end177.if.end208_crit_edge, label %land.lhs.true180

if.end177.if.end208_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

land.lhs.true180:                                 ; preds = %if.end177
  %prph_info = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 5
  %81 = ptrtoint ptr %prph_info to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prph_info, align 4
  %tobool181.not = icmp eq ptr %82, null
  br i1 %tobool181.not, label %land.lhs.true180.if.end208_crit_edge, label %if.then182

land.lhs.true180.if.end208_crit_edge:             ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then182:                                       ; preds = %land.lhs.true180
  %sleep_notif184 = getelementptr inbounds %struct.iwl_prph_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %sleep_notif184 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %sleep_notif184, align 1
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %84, label %do.end202 [
    i32 -754974720, label %if.then182.do.end194_crit_edge
    i32 -805306368, label %if.then182.do.end194_crit_edge377
  ]

if.then182.do.end194_crit_edge377:                ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end194

if.then182.do.end194_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end194

do.end194:                                        ; preds = %if.then182.do.end194_crit_edge, %if.then182.do.end194_crit_edge377
  %86 = tail call i32 @llvm.bswap.i32(i32 %84)
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %88, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_msix_handler, ptr noundef nonnull @.str.28, i32 noundef %86) #9
  %sx_complete = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 34
  %89 = ptrtoint ptr %sx_complete to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %sx_complete, align 1
  %sx_waitq = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 36
  tail call void @__wake_up(ptr noundef %sx_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end208

do.end202:                                        ; preds = %if.then182
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %91, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_msix_handler, ptr noundef nonnull @.str.18) #9
  %trans_specific.i.i = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 37
  %num_rx_queues.i = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 25
  %92 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp14.not.i = icmp eq i8 %93, 0
  br i1 %cmp14.not.i, label %do.end202.iwl_pcie_rxq_check_wrptr.exit_crit_edge, label %do.end202.for.body.i_crit_edge

do.end202.for.body.i_crit_edge:                   ; preds = %do.end202
  br label %for.body.i

do.end202.iwl_pcie_rxq_check_wrptr.exit_crit_edge: ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_rxq_check_wrptr.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %do.end202.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %do.end202.for.body.i_crit_edge ]
  %94 = ptrtoint ptr %trans_specific.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %trans_specific.i.i, align 128
  %need_update.i = getelementptr %struct.iwl_rxq, ptr %95, i32 %i.015.i, i32 13
  %96 = ptrtoint ptr %need_update.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %need_update.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.iwl_rxq, ptr %95, i32 %i.015.i
  %lock.i = getelementptr %struct.iwl_rxq, ptr %95, i32 %i.015.i, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  tail call fastcc void @iwl_pcie_rxq_inc_wr_ptr(ptr noundef %4, ptr noundef %arrayidx.i) #9
  %98 = ptrtoint ptr %need_update.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %need_update.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %99 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %num_rx_queues.i, align 8
  %conv.i = zext i8 %100 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.iwl_pcie_rxq_check_wrptr.exit_crit_edge

cleanup.i.iwl_pcie_rxq_check_wrptr.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_rxq_check_wrptr.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

iwl_pcie_rxq_check_wrptr.exit:                    ; preds = %cleanup.i.iwl_pcie_rxq_check_wrptr.exit_crit_edge, %do.end202.iwl_pcie_rxq_check_wrptr.exit_crit_edge
  tail call void @iwl_pcie_txq_check_wrptrs(ptr noundef %4) #9
  %wakeup = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 22, i32 7
  %101 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %wakeup, align 4
  %inc206 = add i32 %102, 1
  store i32 %inc206, ptr %wakeup, align 4
  br label %if.end208

if.end208:                                        ; preds = %iwl_pcie_rxq_check_wrptr.exit, %do.end194, %land.lhs.true180.if.end208_crit_edge, %if.end177.if.end208_crit_edge
  %and209 = and i32 %and160, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end208.if.end220_crit_edge, label %do.end215

if.end208.if.end220_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end220

do.end215:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %104, i32 noundef 0, ptr noundef nonnull @.str.16) #9
  %ctkill = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 22, i32 6
  %105 = ptrtoint ptr %ctkill to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ctkill, align 4
  %inc219 = add i32 %106, 1
  store i32 %inc219, ptr %ctkill, align 4
  br label %if.end220

if.end220:                                        ; preds = %do.end215, %if.end208.if.end220_crit_edge
  %and221 = and i32 %and160, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.end220.if.end224_crit_edge, label %if.then223

if.end220.if.end224_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end224

if.then223:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_pcie_handle_rfkill_irq(ptr noundef %4)
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.end220.if.end224_crit_edge
  %and225 = and i32 %and160, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end224.if.end236_crit_edge, label %do.end231

if.end224.if.end236_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

do.end231:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %108, i32 noundef 0, ptr noundef nonnull @.str.29) #9
  %109 = ptrtoint ptr %isr_stats3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %isr_stats3, align 4
  %inc235 = add i32 %110, 1
  store i32 %inc235, ptr %isr_stats3, align 4
  %hw_error = getelementptr inbounds %struct.iwl_trans, ptr %4, i32 0, i32 32, i32 15
  %111 = ptrtoint ptr %hw_error to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %hw_error, align 4
  tail call fastcc void @iwl_pcie_irq_handle_error(ptr noundef %4)
  br label %if.end236

if.end236:                                        ; preds = %do.end231, %if.end224.if.end236_crit_edge
  %and237 = and i32 %and160, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %if.end236.if.end249_crit_edge, label %do.end243

if.end236.if.end249_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end249

do.end243:                                        ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %113, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_irq_msix_handler, ptr noundef nonnull @.str.30) #9
  %fw_reset_state247 = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 68
  %114 = ptrtoint ptr %fw_reset_state247 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %fw_reset_state247, align 64
  %fw_reset_waitq248 = getelementptr inbounds %struct.iwl_trans_pcie, ptr %add.ptr4.i, i32 0, i32 69
  tail call void @__wake_up(ptr noundef %fw_reset_waitq248, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end249

if.end249:                                        ; preds = %do.end243, %if.end236.if.end249_crit_edge
  br i1 %polling.3.off0, label %if.end249.cleanup_crit_edge, label %if.then251

if.end249.cleanup_crit_edge:                      ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then251:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %entry2.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %entry2.i, align 4
  %conv253 = zext i16 %116 to i32
  %shl.i = shl nuw i32 1, %conv253
  tail call void @iwl_write32(ptr noundef %4, i32 noundef 10256, i32 noundef %shl.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then251, %if.end249.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end249.cleanup_crit_edge ], [ 1, %if.then251 ]
  tail call void @lock_release(ptr noundef %sync_cmd_lockdep_map, i32 noundef ptrtoint (ptr blockaddress(@iwl_pcie_irq_msix_handler, %cleanup) to i32)) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_delay(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_pcie_napi_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -120
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %trans4 = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %trans4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans4, align 32
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %call = tail call fastcc i32 @iwl_pcie_rx_handle(ptr noundef %3, i32 noundef %5, i32 noundef %budget)
  %dev6 = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_napi_poll, ptr noundef nonnull @.str.41, i32 noundef %9, i32 noundef %call, i32 noundef %budget) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %entry
  %irq_lock = getelementptr i8, ptr %1, i32 2364
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #9
  %status = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then11

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then11:                                        ; preds = %if.then
  %13 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev6, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_enable_interrupts, ptr noundef nonnull @.str.60) #9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #9
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 1, i32 36, i32 2, i32 322
  %15 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %msix_enabled.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %inta_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 1, i32 36, i32 2, i32 190
  %17 = ptrtoint ptr %inta_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1174404981, ptr %inta_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %3, i32 noundef 12, i32 noundef -1174404981) #9
  br label %if.end

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %hw_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 1, i32 36, i32 2, i32 326
  %18 = ptrtoint ptr %hw_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_init_mask.i, align 4
  %hw_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 1, i32 36, i32 2, i32 328
  %20 = ptrtoint ptr %hw_mask.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %hw_mask.i, align 4
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 1, i32 36, i32 2, i32 325
  %21 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fh_init_mask.i, align 32
  %fh_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 1, i32 36, i32 2, i32 327
  %23 = ptrtoint ptr %fh_mask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fh_mask.i, align 8
  %neg.i = xor i32 %22, -1
  tail call void @iwl_write32(ptr noundef %3, i32 noundef 10244, i32 noundef %neg.i) #9
  %24 = ptrtoint ptr %hw_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_mask.i, align 4
  %neg7.i = xor i32 %25, -1
  tail call void @iwl_write32(ptr noundef %3, i32 noundef 10252, i32 noundef %neg7.i) #9
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #9
  %call14 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #9
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry.if.end15_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_pcie_napi_poll_msix(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -120
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %trans4 = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %trans4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans4, align 32
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %call = tail call fastcc i32 @iwl_pcie_rx_handle(ptr noundef %3, i32 noundef %5, i32 noundef %budget)
  %dev6 = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_napi_poll_msix, ptr noundef nonnull @.str.41, i32 noundef %9, i32 noundef %call, i32 noundef %budget) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 8
  %shared_vec_mask = getelementptr i8, ptr %1, i32 3029
  %12 = ptrtoint ptr %shared_vec_mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shared_vec_mask, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp ne i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp12 = icmp eq i32 %11, 1
  %or.cond = select i1 %tobool.not, i1 %cmp12, i1 false
  %irq_lock = getelementptr i8, ptr %1, i32 2364
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #9
  %.op = shl nuw i32 1, %11
  %shl.i = select i1 %or.cond, i32 1, i32 %.op
  tail call void @iwl_write32(ptr noundef %3, i32 noundef 10256, i32 noundef %shl.i) #9
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #9
  %call17 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then, %entry.if.end18_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_pcie_rx_handle(ptr noundef %trans, i32 noundef %queue, i32 noundef %budget) unnamed_addr #0 align 64 {
entry:
  %rxcb.i = alloca %struct.iwl_rx_cmd_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %0 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_specific.i, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.rhs_crit_edge, label %lor.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

lor.rhs:                                          ; preds = %entry
  %bd = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 1
  %2 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.rhs.land.rhs_crit_edge, label %if.end42

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b263 = load i1, ptr @iwl_pcie_rx_handle.__already_done, align 1
  br i1 %.b263, label %land.rhs.cleanup174_crit_edge, label %if.then, !prof !185

land.rhs.cleanup174_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup174

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_pcie_rx_handle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1465, i32 noundef 9, ptr noundef null) #9
  br label %cleanup174

if.end42:                                         ; preds = %lor.rhs
  %arrayidx44 = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue
  %lock = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 17
  %retval.0.in.in.i = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 15
  %read = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 5
  %queue_size = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 10
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %rba62 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 2
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %4 = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 3
  %num_rx_bufs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 233
  %global_table.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 1
  %next_rb_is_fragment = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 14
  %rx_free = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 11
  %prev.i = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 11, i32 1
  %free_count = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 7
  %q_id.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %rx_buf_bytes.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 237
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxcb.i, i32 0, i32 1
  %_page_stolen.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxcb.i, i32 0, i32 2
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxcb.i, i32 0, i32 3
  %rx_page_order.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  %truesize.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxcb.i, i32 0, i32 4
  %n_no_reclaim_cmds.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 38
  %def_rx_queue.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 231
  %op_mode140.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %napi141.i = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 18
  %used_count = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 8
  %dep_map.i = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 17, i32 0, i32 0, i32 4
  %req_ready.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 3
  %lock30.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 8
  %rbd_allocated.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 4
  %rx_used.i = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 12
  %rbd_empty.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 6
  %prev.i.i289 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 7
  %prev2.i.i.i = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 12, i32 1
  br label %restart

restart.loopexit:                                 ; preds = %do.end146, %if.then137.restart.loopexit_crit_edge
  %5 = xor i1 %cmp140, true
  %6 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and121, ptr %read, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @iwl_pcie_rxq_alloc_rbs(ptr noundef %trans, i32 noundef 2592, ptr noundef %arrayidx44)
  call fastcc void @iwl_pcie_rxq_restock(ptr noundef %trans, ptr noundef %arrayidx44)
  br label %restart

restart:                                          ; preds = %restart.loopexit, %if.end42
  %handled.0 = phi i32 [ 0, %if.end42 ], [ %inc, %restart.loopexit ]
  %emergency.0.off0 = phi i1 [ false, %if.end42 ], [ %5, %restart.loopexit ]
  call void @_raw_spin_lock(ptr noundef %lock) #9
  %7 = ptrtoint ptr %retval.0.in.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %retval.0.in.i = load ptr, ptr %retval.0.in.in.i, align 8
  %8 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %retval.0.i = load volatile i16, ptr %retval.0.in.i, align 1
  %9 = and i16 %retval.0.i, -241
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %and = zext i16 %10 to i32
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read, align 4
  %13 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %queue_size, align 8
  %sub = add i32 %14, 4095
  %and46 = and i32 %sub, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and46)
  %cmp = icmp eq i32 %12, %and46
  br i1 %cmp, label %do.end52, label %restart.if.end55_crit_edge

restart.if.end55_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end52:                                         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %17 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx44, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_handle, ptr noundef nonnull @.str.42, i32 noundef %18, i32 noundef %12) #9
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %restart.if.end55_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and46)
  %cmp56.not395 = icmp eq i32 %12, %and46
  br i1 %cmp56.not395, label %if.end55.out_crit_edge, label %if.end55.land.rhs58_crit_edge

if.end55.land.rhs58_crit_edge:                    ; preds = %if.end55
  br label %land.rhs58

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.rhs58:                                       ; preds = %cleanup.land.rhs58_crit_edge, %if.end55.land.rhs58_crit_edge
  %emergency.1.off0405 = phi i1 [ %emergency.4.off0, %cleanup.land.rhs58_crit_edge ], [ %emergency.0.off0, %if.end55.land.rhs58_crit_edge ]
  %handled.1404 = phi i32 [ %inc, %cleanup.land.rhs58_crit_edge ], [ %handled.0, %if.end55.land.rhs58_crit_edge ]
  %count.1400 = phi i32 [ %count.3, %cleanup.land.rhs58_crit_edge ], [ 0, %if.end55.land.rhs58_crit_edge ]
  %i.0396 = phi i32 [ %and121, %cleanup.land.rhs58_crit_edge ], [ %12, %if.end55.land.rhs58_crit_edge ]
  %inc = add i32 %handled.1404, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %budget)
  %cmp59 = icmp ult i32 %inc, %budget
  br i1 %cmp59, label %while.body, label %out.loopexit.split.loop.exit358

while.body:                                       ; preds = %land.rhs58
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rba62, i32 noundef 4) #9
  %19 = ptrtoint ptr %rba62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %rba62, align 4
  %mul = shl i32 %20, 3
  %21 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %queue_size, align 8
  %div262 = lshr i32 %22, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %div262)
  %cmp66.not = icmp uge i32 %mul, %div262
  %lnot70 = xor i1 %emergency.1.off0405, true
  %spec.select = select i1 %cmp66.not, i1 %lnot70, i1 false
  br i1 %spec.select, label %if.then79, label %while.body.do.end91_crit_edge, !prof !187

while.body.do.end91_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91

if.then79:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @iwl_pcie_rx_move_to_allocator(ptr noundef %arrayidx44, ptr noundef %rba62)
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 262144, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_handle, ptr noundef nonnull @.str.43, i32 noundef %mul) #9
  br label %do.end91

do.end91:                                         ; preds = %if.then79, %while.body.do.end91_crit_edge
  %emergency.2.off0 = phi i1 [ true, %if.then79 ], [ %emergency.1.off0405, %while.body.do.end91_crit_edge ]
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %27 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx44, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %26, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_handle, ptr noundef nonnull @.str.44, i32 noundef %28, i32 noundef %and46, i32 noundef %i.0396) #9
  %29 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trans_cfg.i, align 4
  %mq_rx_supported.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %mq_rx_supported.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %mq_rx_supported.i, align 4
  %32 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i = icmp eq i16 %32, 0
  br i1 %tobool.not.i, label %iwl_pcie_get_rxb.exit.thread295, label %if.end.i

if.end.i:                                         ; preds = %do.end91
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %34)
  %cmp.i = icmp ugt i32 %34, 18
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %4, align 4
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rbid.i = getelementptr %struct.iwl_rx_completion_desc, ptr %36, i32 %i.0396, i32 1
  %37 = ptrtoint ptr %rbid.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %rbid.i, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38) #9
  %flags.i = getelementptr %struct.iwl_rx_completion_desc, ptr %36, i32 %i.0396, i32 2
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags.i, align 1
  %42 = and i8 %41, 1
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8.i = getelementptr i32, ptr %36, i32 %i.0396
  %43 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx8.i, align 4
  %45 = and i32 %44, -15794176
  %46 = call i32 @llvm.bswap.i32(i32 %45) #9
  %conv10.i = trunc i32 %46 to i16
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then4.i
  %join.0 = phi i8 [ %42, %if.then4.i ], [ 0, %if.else.i ]
  %vid.0.i = phi i16 [ %39, %if.then4.i ], [ %conv10.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid.0.i)
  %tobool12.not.i = icmp eq i16 %vid.0.i, 0
  br i1 %tobool12.not.i, label %if.end11.i.iwl_pcie_get_rxb.exit.thread_crit_edge, label %lor.lhs.false.i

if.end11.i.iwl_pcie_get_rxb.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_get_rxb.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end11.i
  %conv13.i = zext i16 %vid.0.i to i32
  %47 = ptrtoint ptr %num_rx_bufs.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_rx_bufs.i, align 16
  %conv14.i = zext i16 %48 to i32
  %add.i = add nuw nsw i32 %conv14.i, 95
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv13.i)
  %cmp15.i = icmp ult i32 %add.i, %conv13.i
  br i1 %cmp15.i, label %lor.lhs.false.i.iwl_pcie_get_rxb.exit.thread_crit_edge, label %if.end18.i

lor.lhs.false.i.iwl_pcie_get_rxb.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_get_rxb.exit.thread

if.end18.i:                                       ; preds = %lor.lhs.false.i
  %49 = ptrtoint ptr %global_table.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %global_table.i, align 8
  %sub20.i = add nsw i32 %conv13.i, -1
  %arrayidx21.i = getelementptr ptr, ptr %50, i32 %sub20.i
  %51 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx21.i, align 4
  %invalid.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %invalid.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %invalid.i, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool22.not.i = icmp eq i8 %54, 0
  br i1 %tobool22.not.i, label %iwl_pcie_get_rxb.exit, label %if.end18.i.iwl_pcie_get_rxb.exit.thread_crit_edge

if.end18.i.iwl_pcie_get_rxb.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_get_rxb.exit.thread

iwl_pcie_get_rxb.exit.thread:                     ; preds = %if.end18.i.iwl_pcie_get_rxb.exit.thread_crit_edge, %lor.lhs.false.i.iwl_pcie_get_rxb.exit.thread_crit_edge, %if.end11.i.iwl_pcie_get_rxb.exit.thread_crit_edge
  %conv42.pre-phi.i = phi i32 [ %conv13.i, %lor.lhs.false.i.iwl_pcie_get_rxb.exit.thread_crit_edge ], [ %conv13.i, %if.end18.i.iwl_pcie_get_rxb.exit.thread_crit_edge ], [ 0, %if.end11.i.iwl_pcie_get_rxb.exit.thread_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1450, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef %conv42.pre-phi.i) #9
  call void @iwl_force_nmi(ptr noundef %trans) #9
  br label %out

iwl_pcie_get_rxb.exit:                            ; preds = %if.end18.i
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %vid29.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %52, i32 0, i32 4
  %57 = ptrtoint ptr %vid29.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vid29.i, align 4
  %conv30.i = zext i16 %58 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_get_rxb, ptr noundef nonnull @.str.46, i32 noundef %conv30.i) #9
  %59 = ptrtoint ptr %invalid.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %invalid.i, align 2
  %tobool97.not = icmp eq ptr %52, null
  br i1 %tobool97.not, label %iwl_pcie_get_rxb.exit.out_crit_edge, label %if.end99

iwl_pcie_get_rxb.exit.out_crit_edge:              ; preds = %iwl_pcie_get_rxb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

iwl_pcie_get_rxb.exit.thread295:                  ; preds = %do.end91
  %arrayidx.i = getelementptr %struct.iwl_rxq, ptr %1, i32 %queue, i32 19, i32 %i.0396
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  store ptr null, ptr %arrayidx.i, align 4
  %tobool97.not298 = icmp eq ptr %61, null
  br i1 %tobool97.not298, label %iwl_pcie_get_rxb.exit.thread295.out_crit_edge, label %iwl_pcie_get_rxb.exit.thread295.lor.rhs102_crit_edge

iwl_pcie_get_rxb.exit.thread295.lor.rhs102_crit_edge: ; preds = %iwl_pcie_get_rxb.exit.thread295
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs102

iwl_pcie_get_rxb.exit.thread295.out_crit_edge:    ; preds = %iwl_pcie_get_rxb.exit.thread295
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end99:                                         ; preds = %iwl_pcie_get_rxb.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %join.0)
  %tobool100.not = icmp eq i8 %join.0, 0
  br i1 %tobool100.not, label %if.end99.lor.rhs102_crit_edge, label %if.end99.if.then112_crit_edge, !prof !185

if.end99.if.then112_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then112

if.end99.lor.rhs102_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs102

lor.rhs102:                                       ; preds = %if.end99.lor.rhs102_crit_edge, %iwl_pcie_get_rxb.exit.thread295.lor.rhs102_crit_edge
  %retval.0.i265300305 = phi ptr [ %52, %if.end99.lor.rhs102_crit_edge ], [ %61, %iwl_pcie_get_rxb.exit.thread295.lor.rhs102_crit_edge ]
  %62 = ptrtoint ptr %next_rb_is_fragment to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %next_rb_is_fragment, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool103.not = icmp eq i8 %63, 0
  br i1 %tobool103.not, label %if.end25.i, label %lor.rhs102.if.then112_crit_edge, !prof !185

lor.rhs102.if.then112_crit_edge:                  ; preds = %lor.rhs102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then112

if.then112:                                       ; preds = %lor.rhs102.if.then112_crit_edge, %if.end99.if.then112_crit_edge
  %join.1299306 = phi i8 [ 1, %if.end99.if.then112_crit_edge ], [ 0, %lor.rhs102.if.then112_crit_edge ]
  %retval.0.i265300304 = phi ptr [ %52, %if.end99.if.then112_crit_edge ], [ %retval.0.i265300305, %lor.rhs102.if.then112_crit_edge ]
  %64 = ptrtoint ptr %next_rb_is_fragment to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %join.1299306, ptr %next_rb_is_fragment, align 1
  %list = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %retval.0.i265300304, i32 0, i32 2
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i, align 4
  %call.i.i266 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %66, ptr noundef %rx_free) #9
  br i1 %call.i.i266, label %if.end.i.i, label %if.then112.list_add_tail.exit_crit_edge

if.then112.list_add_tail.exit_crit_edge:          ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %list, ptr %prev.i, align 4
  %68 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %rx_free, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %retval.0.i265300304, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %list, ptr %66, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then112.list_add_tail.exit_crit_edge
  %71 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %free_count, align 4
  %inc116 = add i32 %72, 1
  store i32 %inc116, ptr %free_count, align 4
  br label %if.end118

if.end25.i:                                       ; preds = %lor.rhs102
  %73 = ptrtoint ptr %q_id.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %q_id.i, align 1
  %idxprom.i = zext i8 %74 to i32
  %arrayidx.i267 = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %idxprom.i
  %75 = ptrtoint ptr %arrayidx.i267 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i267, align 4
  %77 = ptrtoint ptr %rx_buf_bytes.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_buf_bytes.i, align 128
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 8
  %81 = ptrtoint ptr %retval.0.i265300305 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %retval.0.i265300305, align 4
  call void @dma_unmap_page_attrs(ptr noundef %80, i32 noundef %82, i32 noundef %78, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %78)
  %cmp22.i = icmp ugt i32 %78, 8
  br i1 %cmp22.i, label %while.body.lr.ph.i, label %if.end25.i.if.end189.i_crit_edge

if.end25.i.if.end189.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189.i

while.body.lr.ph.i:                               ; preds = %if.end25.i
  %page.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %retval.0.i265300305, i32 0, i32 1
  %offset27.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %retval.0.i265300305, i32 0, i32 3
  %n_window.i.i = getelementptr inbounds %struct.iwl_txq, ptr %76, i32 0, i32 18
  %entries.i = getelementptr inbounds %struct.iwl_txq, ptr %76, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %page_stolen.0.off024.i = phi i1 [ false, %while.body.lr.ph.i ], [ %tobool175.i, %cleanup.i.while.body.i_crit_edge ]
  %offset.023.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add100.i, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rxcb.i) #9
  %83 = ptrtoint ptr %_page_stolen.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %_page_stolen.i, align 4
  %84 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %page.i, align 4
  %86 = ptrtoint ptr %rxcb.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %rxcb.i, align 4
  %87 = ptrtoint ptr %offset27.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %offset27.i, align 4
  %add28.i = add i32 %88, %offset.023.i
  %89 = ptrtoint ptr %_offset.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add28.i, ptr %_offset.i, align 4
  store i8 0, ptr %_page_stolen.i, align 4
  %90 = ptrtoint ptr %rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_page_order.i, align 4
  %92 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %_rx_page_order.i, align 4
  %93 = ptrtoint ptr %truesize.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %78, ptr %truesize.i, align 4
  %call.i.i271 = call ptr @page_address(ptr noundef %85) #9
  %94 = ptrtoint ptr %call.i.i271 to i32
  %95 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %_offset.i, align 4
  %add.i.i = add i32 %96, %94
  %97 = inttoptr i32 %add.i.i to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %97, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21845, i32 %99)
  %cmp30.i = icmp eq i32 %99, 21845
  br i1 %cmp30.i, label %do.end35.i, label %if.end39.i

do.end35.i:                                       ; preds = %while.body.i
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 8
  %102 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx44, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %101, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_handle_rb, ptr noundef nonnull @.str.48, i32 noundef %103, i32 noundef %offset.023.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rxcb.i) #9
  br i1 %page_stolen.0.off024.i, label %do.end35.i.if.then185.i_crit_edge, label %do.end35.i.if.end189.i_crit_edge

do.end35.i.if.end189.i_crit_edge:                 ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189.i

do.end35.i.if.then185.i_crit_edge:                ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then185.i

if.end39.i:                                       ; preds = %while.body.i
  %104 = lshr i32 %99, 8
  %shr.i = and i32 %104, 63
  %105 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx44, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %106)
  %cmp43.not.i = icmp eq i32 %shr.i, %106
  br i1 %cmp43.not.i, label %if.end39.i.if.end69.i_crit_edge, label %do.end59.i, !prof !185

if.end39.i.if.end69.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

do.end59.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1304, i32 noundef 9, ptr noundef nonnull @.str.49, i32 noundef %106, i32 noundef %shr.i) #9
  br label %if.end69.i

if.end69.i:                                       ; preds = %do.end59.i, %if.end39.i.if.end69.i_crit_edge
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 8
  %109 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx44, align 8
  %hdr.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %97, i32 0, i32 1
  %111 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %hdr.i, align 1
  %group_id.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %97, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %group_id.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %group_id.i, align 1
  %conv.i.i = zext i8 %112 to i32
  %conv1.i.i = zext i8 %114 to i32
  %shl.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %add.i9.i = or i32 %shl.i.i, %conv.i.i
  %call86.i = call ptr @iwl_get_cmd_string(ptr noundef %trans, i32 noundef %add.i9.i) #9
  %115 = ptrtoint ptr %group_id.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %group_id.i, align 1
  %conv.i = zext i8 %116 to i32
  %117 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %hdr.i, align 1
  %conv91.i = zext i8 %118 to i32
  %sequence.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %97, i32 0, i32 1, i32 2
  %119 = ptrtoint ptr %sequence.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %sequence.i, align 1
  %121 = call i16 @llvm.bswap.i16(i16 %120) #9
  %conv93.i = zext i16 %121 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %108, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_handle_rb, ptr noundef nonnull @.str.50, i32 noundef %110, i32 noundef %offset.023.i, ptr noundef %call86.i, i32 noundef %conv.i, i32 noundef %conv91.i, i32 noundef %conv93.i) #9
  %122 = ptrtoint ptr %97 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %97, align 1
  %124 = and i32 %123, -12648448
  %125 = call i32 @llvm.bswap.i32(i32 %124) #9
  %add98.i = add nuw nsw i32 %125, 67
  %and99.i = and i32 %add98.i, 32704
  %add100.i = add i32 %and99.i, %offset.023.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add100.i, i32 %78)
  %cmp101.i = icmp ugt i32 %add100.i, %78
  br i1 %cmp101.i, label %if.end69.i.cleanup.thread.i_crit_edge, label %if.end104.i

if.end69.i.cleanup.thread.i_crit_edge:            ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.end104.i:                                      ; preds = %if.end69.i
  %add97.i = add nuw nsw i32 %125, 4
  %126 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev, align 8
  call fastcc void @trace_iwlwifi_dev_rx(ptr noundef %127, ptr noundef %trans, ptr noundef %97, i32 noundef %add97.i) #9
  %128 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev, align 8
  call fastcc void @trace_iwlwifi_dev_rx_data(ptr noundef %129, ptr noundef %trans, ptr noundef %97, i32 noundef %add97.i) #9
  %130 = ptrtoint ptr %sequence.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %sequence.i, align 1
  %132 = and i16 %131, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool111.not.i = icmp eq i16 %132, 0
  %.lobit.i = lshr exact i16 %132, 7
  %133 = trunc i16 %.lobit.i to i8
  %134 = xor i8 %133, 1
  br i1 %tobool111.not.i, label %land.lhs.true.i, label %if.end104.i.if.end134.i_crit_edge

if.end104.i.if.end134.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134.i

land.lhs.true.i:                                  ; preds = %if.end104.i
  %135 = ptrtoint ptr %group_id.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %group_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool119.not.i = icmp eq i8 %136, 0
  br i1 %tobool119.not.i, label %for.cond.preheader.i, label %land.lhs.true.i.if.end134.i_crit_edge

land.lhs.true.i.if.end134.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134.i

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %137 = ptrtoint ptr %n_no_reclaim_cmds.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %n_no_reclaim_cmds.i, align 1
  %conv122.i = zext i8 %138 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp12319.not.i = icmp eq i8 %138, 0
  br i1 %cmp12319.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %139 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %hdr.i, align 1
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i121.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv122.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i121.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx125.i = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 39, i32 %i121.020.i
  %141 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx125.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %140)
  %cmp130.i = icmp eq i8 %142, %140
  br i1 %cmp130.i, label %for.body.i.for.end.i_crit_edge, label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %reclaim.0.i = phi i8 [ %134, %for.cond.preheader.i.for.end.i_crit_edge ], [ %134, %for.cond.i.for.end.i_crit_edge ], [ 0, %for.body.i.for.end.i_crit_edge ]
  %143 = and i8 %reclaim.0.i, 1
  br label %if.end134.i

if.end134.i:                                      ; preds = %for.end.i, %land.lhs.true.i.if.end134.i_crit_edge, %if.end104.i.if.end134.i_crit_edge
  %reclaim.1.off0.in.i = phi i8 [ %134, %land.lhs.true.i.if.end134.i_crit_edge ], [ %143, %for.end.i ], [ %134, %if.end104.i.if.end134.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reclaim.1.off0.in.i)
  %reclaim.1.off0.not.i = icmp eq i8 %reclaim.1.off0.in.i, 0
  %144 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx44, align 8
  %146 = ptrtoint ptr %def_rx_queue.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %def_rx_queue.i, align 8
  %conv136.i = zext i8 %147 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %conv136.i)
  %cmp137.i = icmp eq i32 %145, %conv136.i
  %148 = ptrtoint ptr %op_mode140.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %op_mode140.i, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  br i1 %cmp137.i, label %if.then139.i, label %if.else.i272

if.then139.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rx.i.i, align 4
  call void %153(ptr noundef %149, ptr noundef %napi141.i, ptr noundef nonnull %rxcb.i) #9
  br label %if.end143.i

if.else.i272:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_rss.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %151, i32 0, i32 3
  %154 = ptrtoint ptr %rx_rss.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rx_rss.i.i, align 4
  call void %155(ptr noundef %149, ptr noundef %napi141.i, ptr noundef nonnull %rxcb.i, i32 noundef %145) #9
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.else.i272, %if.then139.i
  br i1 %reclaim.1.off0.not.i, label %if.end143.i.if.end169.i_crit_edge, label %if.then145.i

if.end143.i.if.end169.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169.i

if.then145.i:                                     ; preds = %if.end143.i
  %156 = ptrtoint ptr %sequence.i to i32
  call void @__asan_loadN_noabort(i32 %156, i32 2)
  %157 = load i16, ptr %sequence.i, align 1
  %158 = lshr i16 %157, 8
  %159 = ptrtoint ptr %n_window.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %n_window.i.i, align 4
  %161 = trunc i32 %160 to i16
  %162 = add i16 %161, 255
  %conv.i10.i = and i16 %162, %158
  %conv152.i = zext i16 %conv.i10.i to i32
  %163 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %entries.i, align 4
  %free_buf.i = getelementptr %struct.iwl_pcie_txq_entry, ptr %164, i32 %conv152.i, i32 2
  %165 = ptrtoint ptr %free_buf.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %free_buf.i, align 4
  call void @kfree_sensitive(ptr noundef %166) #9
  %167 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %entries.i, align 4
  %free_buf156.i = getelementptr %struct.iwl_pcie_txq_entry, ptr %168, i32 %conv152.i, i32 2
  %169 = ptrtoint ptr %free_buf156.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %free_buf156.i, align 4
  %170 = ptrtoint ptr %_page_stolen.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %_page_stolen.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool158.not.i = icmp eq i8 %171, 0
  br i1 %tobool158.not.i, label %if.then159.i, label %do.end164.i

if.then159.i:                                     ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @iwl_pcie_hcmd_complete(ptr noundef %trans, ptr noundef nonnull %rxcb.i) #9
  br label %if.end169.i

do.end164.i:                                      ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %173, ptr noundef nonnull @.str.51) #9
  br label %if.end169.i

if.end169.i:                                      ; preds = %do.end164.i, %if.then159.i, %if.end143.i.if.end169.i_crit_edge
  %174 = ptrtoint ptr %_page_stolen.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %_page_stolen.i, align 4, !range !194
  %176 = zext i8 %175 to i32
  %conv174.i = zext i1 %page_stolen.0.off024.i to i32
  %or.i = or i32 %176, %conv174.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool175.i = icmp ne i32 %or.i, 0
  %177 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i273 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %device_family.i273 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %device_family.i273, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %180)
  %cmp177.i = icmp ugt i32 %180, 18
  br i1 %cmp177.i, label %if.end169.i.cleanup.thread.i_crit_edge, label %cleanup.i

if.end169.i.cleanup.thread.i_crit_edge:           ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end169.i.cleanup.thread.i_crit_edge, %if.end69.i.cleanup.thread.i_crit_edge
  %page_stolen.1.off0.ph.i = phi i1 [ %page_stolen.0.off024.i, %if.end69.i.cleanup.thread.i_crit_edge ], [ %tobool175.i, %if.end169.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rxcb.i) #9
  br i1 %page_stolen.1.off0.ph.i, label %cleanup.thread.i.if.then185.i_crit_edge, label %cleanup.thread.i.if.end189.i_crit_edge

cleanup.thread.i.if.end189.i_crit_edge:           ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189.i

cleanup.thread.i.if.then185.i_crit_edge:          ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then185.i

cleanup.i:                                        ; preds = %if.end169.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rxcb.i) #9
  %add26.i = or i32 %add100.i, 8
  %cmp.i274 = icmp ult i32 %add26.i, %78
  br i1 %cmp.i274, label %cleanup.i.while.body.i_crit_edge, label %while.end.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i
  br i1 %tobool175.i, label %while.end.i.if.then185.i_crit_edge, label %while.end.i.if.end189.i_crit_edge

while.end.i.if.end189.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189.i

while.end.i.if.then185.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then185.i

if.then185.i:                                     ; preds = %while.end.i.if.then185.i_crit_edge, %cleanup.thread.i.if.then185.i_crit_edge, %do.end35.i.if.then185.i_crit_edge
  %181 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %page.i, align 4
  %183 = ptrtoint ptr %rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %rx_page_order.i, align 4
  call void @__free_pages(ptr noundef %182, i32 noundef %184) #9
  %185 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %page.i, align 4
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.then185.i, %while.end.i.if.end189.i_crit_edge, %cleanup.thread.i.if.end189.i_crit_edge, %do.end35.i.if.end189.i_crit_edge, %if.end25.i.if.end189.i_crit_edge
  %page190.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %retval.0.i265300305, i32 0, i32 1
  %186 = ptrtoint ptr %page190.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %page190.i, align 4
  %cmp191.not.i = icmp eq ptr %187, null
  br i1 %cmp191.not.i, label %if.else212.i, label %if.then193.i

if.then193.i:                                     ; preds = %if.end189.i
  %188 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev, align 8
  %offset196.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %retval.0.i265300305, i32 0, i32 3
  %190 = ptrtoint ptr %offset196.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %offset196.i, align 4
  %192 = ptrtoint ptr %rx_buf_bytes.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rx_buf_bytes.i, align 128
  %call198.i = call i32 @dma_map_page_attrs(ptr noundef %189, ptr noundef nonnull %187, i32 noundef %191, i32 noundef %193, i32 noundef 2, i32 noundef 0) #9
  %194 = ptrtoint ptr %retval.0.i265300305 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %call198.i, ptr %retval.0.i265300305, align 4
  %195 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev, align 8
  call void @debug_dma_mapping_error(ptr noundef %196, i32 noundef %call198.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call198.i)
  %cmp.i.not.i = icmp eq i32 %call198.i, -1
  br i1 %cmp.i.not.i, label %if.then204.i, label %if.else209.i

if.then204.i:                                     ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #11
  %197 = ptrtoint ptr %page190.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %page190.i, align 4
  %199 = ptrtoint ptr %rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %rx_page_order.i, align 4
  call void @__free_pages(ptr noundef %198, i32 noundef %200) #9
  %201 = ptrtoint ptr %page190.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr null, ptr %page190.i, align 4
  call fastcc void @iwl_pcie_rx_reuse_rbd(ptr noundef %trans, ptr noundef nonnull %retval.0.i265300305, ptr noundef %arrayidx44, i1 noundef zeroext %emergency.2.off0) #9
  br label %if.end118

if.else209.i:                                     ; preds = %if.then193.i
  %list.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %retval.0.i265300305, i32 0, i32 2
  %202 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %203, ptr noundef %rx_free) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else209.i.list_add_tail.exit.i_crit_edge

if.else209.i.list_add_tail.exit.i_crit_edge:      ; preds = %if.else209.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.else209.i
  call void @__sanitizer_cov_trace_pc() #11
  %204 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %list.i, ptr %prev.i, align 4
  %205 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %rx_free, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %retval.0.i265300305, i32 0, i32 2, i32 1
  %206 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %203, ptr %prev3.i.i.i, align 4
  %207 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile ptr %list.i, ptr %203, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.else209.i.list_add_tail.exit.i_crit_edge
  %208 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %free_count, align 4
  %inc210.i = add i32 %209, 1
  store i32 %inc210.i, ptr %free_count, align 4
  br label %if.end118

if.else212.i:                                     ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @iwl_pcie_rx_reuse_rbd(ptr noundef %trans, ptr noundef nonnull %retval.0.i265300305, ptr noundef %arrayidx44, i1 noundef zeroext %emergency.2.off0) #9
  br label %if.end118

if.end118:                                        ; preds = %if.else212.i, %list_add_tail.exit.i, %if.then204.i, %list_add_tail.exit
  %add = add i32 %i.0396, 1
  %210 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %queue_size, align 8
  %sub120 = add i32 %211, -1
  %and121 = and i32 %sub120, %add
  %212 = ptrtoint ptr %used_count to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %used_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %213)
  %cmp122 = icmp ugt i32 %213, 7
  br i1 %cmp122, label %if.then124, label %if.end118.if.end125_crit_edge

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then124:                                       ; preds = %if.end118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %214 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool.not.i275 = icmp eq i32 %214, 0
  br i1 %tobool.not.i275, label %if.then124.if.end.i279_crit_edge, label %land.rhs.i

if.then124.if.end.i279_crit_edge:                 ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i279

land.rhs.i:                                       ; preds = %if.then124
  %call.i.i276 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i276)
  %cmp.not.i = icmp eq i32 %call.i.i276, 0
  br i1 %cmp.not.i, label %do.end.i277, label %land.rhs.i.if.end.i279_crit_edge, !prof !187

land.rhs.i.if.end.i279_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i279

do.end.i277:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 617, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i279

if.end.i279:                                      ; preds = %do.end.i277, %land.rhs.i.if.end.i279_crit_edge, %if.then124.if.end.i279_crit_edge
  %call.i.i.i278 = call zeroext i1 @__kasan_check_write(ptr noundef %req_ready.i, i32 noundef 4) #9
  %215 = ptrtoint ptr %req_ready.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %req_ready.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end.i279
  %c.0.i.i.i = phi i32 [ %216, %if.end.i279 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.if.end125_crit_edge, label %do.cond3.i.i.i, !prof !187

do.body1.i.i.i.if.end125_crit_edge:               ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !202
  call void @llvm.prefetch.p0(ptr %req_ready.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %217 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %req_ready.i, ptr %req_ready.i, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %req_ready.i) #9, !srcloc !203
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %217, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %217, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !204
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end29.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !185

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i.i

if.end29.i:                                       ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @_raw_spin_lock(ptr noundef %lock30.i) #9
  br label %for.body.i281

for.body.i281:                                    ; preds = %list_move.exit.i.for.body.i281_crit_edge, %if.end29.i
  %i.046.i = phi i32 [ 0, %if.end29.i ], [ %inc.i283, %list_move.exit.i.for.body.i281_crit_edge ]
  %218 = ptrtoint ptr %rbd_allocated.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %rbd_allocated.i, align 4
  %call.i.i44.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %219) #9
  br i1 %call.i.i44.i, label %if.end.i.i.i282, label %for.body.i281.__list_del_entry.exit.i.i_crit_edge

for.body.i281.__list_del_entry.exit.i.i_crit_edge: ; preds = %for.body.i281
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i282:                                  ; preds = %for.body.i281
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %prev.i.i.i, align 4
  %222 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %219, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %221, ptr %prev1.i.i.i.i, align 4
  %225 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile ptr %223, ptr %221, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i282, %for.body.i281.__list_del_entry.exit.i.i_crit_edge
  %226 = ptrtoint ptr %rx_free to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rx_free, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %219, ptr noundef %rx_free, ptr noundef %227) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %219, ptr %prev1.i.i2.i.i, align 4
  %229 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %227, ptr %219, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  %230 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %rx_free, ptr %prev3.i.i.i.i, align 4
  %231 = ptrtoint ptr %rx_free to i32
  call void @__asan_store4_noabort(i32 %231)
  store volatile ptr %219, ptr %rx_free, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %inc.i283 = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i284 = icmp eq i32 %inc.i283, 8
  br i1 %exitcond.not.i284, label %for.end.i287, label %list_move.exit.i.for.body.i281_crit_edge

list_move.exit.i.for.body.i281_crit_edge:         ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i281

for.end.i287:                                     ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %lock30.i) #9
  %232 = ptrtoint ptr %used_count to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %used_count, align 8
  %sub.i = add i32 %233, -8
  store i32 %sub.i, ptr %used_count, align 8
  %234 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %free_count, align 4
  %add.i286 = add i32 %235, 8
  store i32 %add.i286, ptr %free_count, align 4
  br label %if.end125

if.end125:                                        ; preds = %for.end.i287, %do.body1.i.i.i.if.end125_crit_edge, %if.end118.if.end125_crit_edge
  %236 = ptrtoint ptr %used_count to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %used_count, align 8
  %rem = and i32 %237, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp127 = icmp ne i32 %rem, 0
  %brmerge = select i1 %cmp127, i1 true, i1 %emergency.2.off0
  br i1 %brmerge, label %if.else131, label %if.then130

if.then130:                                       ; preds = %if.end125
  call void @_raw_spin_lock(ptr noundef %lock30.i) #9
  %238 = ptrtoint ptr %rx_used.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile ptr, ptr %rx_used.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %239, %rx_used.i
  br i1 %cmp.i.not.i.i, label %if.then130.iwl_pcie_rx_move_to_allocator.exit_crit_edge, label %if.then.i.i

if.then130.iwl_pcie_rx_move_to_allocator.exit_crit_edge: ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_rx_move_to_allocator.exit

if.then.i.i:                                      ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #11
  %240 = ptrtoint ptr %prev.i.i289 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %prev.i.i289, align 4
  %242 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i290 = getelementptr inbounds %struct.list_head, ptr %239, i32 0, i32 1
  %244 = ptrtoint ptr %prev3.i.i.i290 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %241, ptr %prev3.i.i.i290, align 4
  %245 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %239, ptr %241, align 4
  %246 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %rbd_empty.i, ptr %243, align 4
  store ptr %243, ptr %prev.i.i289, align 4
  %247 = ptrtoint ptr %rx_used.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store volatile ptr %rx_used.i, ptr %rx_used.i, align 4
  store ptr %rx_used.i, ptr %prev2.i.i.i, align 4
  br label %iwl_pcie_rx_move_to_allocator.exit

iwl_pcie_rx_move_to_allocator.exit:               ; preds = %if.then.i.i, %if.then130.iwl_pcie_rx_move_to_allocator.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock30.i) #9
  br label %cleanup

if.else131:                                       ; preds = %if.end125
  br i1 %emergency.2.off0, label %if.then133, label %if.else131.cleanup_crit_edge

if.else131.cleanup_crit_edge:                     ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then133:                                       ; preds = %if.else131
  %inc134 = add i32 %count.1400, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc134)
  %cmp135 = icmp eq i32 %inc134, 8
  br i1 %cmp135, label %if.then137, label %if.then133.cleanup_crit_edge

if.then133.cleanup_crit_edge:                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then137:                                       ; preds = %if.then133
  %248 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %queue_size, align 8
  %div139 = udiv i32 %249, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %div139)
  %cmp140 = icmp ult i32 %mul, %div139
  br i1 %cmp140, label %do.end146, label %if.then137.restart.loopexit_crit_edge

if.then137.restart.loopexit_crit_edge:            ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.loopexit

do.end146:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  %250 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %251, i32 noundef 262144, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_rx_handle, ptr noundef nonnull @.str.45, i32 noundef %mul) #9
  br label %restart.loopexit

cleanup:                                          ; preds = %if.then133.cleanup_crit_edge, %if.else131.cleanup_crit_edge, %iwl_pcie_rx_move_to_allocator.exit
  %count.3 = phi i32 [ %inc134, %if.then133.cleanup_crit_edge ], [ %count.1400, %if.else131.cleanup_crit_edge ], [ %count.1400, %iwl_pcie_rx_move_to_allocator.exit ]
  %emergency.4.off0 = phi i1 [ true, %if.then133.cleanup_crit_edge ], [ false, %if.else131.cleanup_crit_edge ], [ false, %iwl_pcie_rx_move_to_allocator.exit ]
  %cmp56.not = icmp eq i32 %and121, %and46
  br i1 %cmp56.not, label %cleanup.out_crit_edge, label %cleanup.land.rhs58_crit_edge

cleanup.land.rhs58_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs58

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out.loopexit.split.loop.exit358:                  ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #11
  %252 = add i32 %handled.0, 1
  %umax.le = call i32 @llvm.umax.i32(i32 %budget, i32 %252)
  br label %out

out:                                              ; preds = %out.loopexit.split.loop.exit358, %cleanup.out_crit_edge, %iwl_pcie_get_rxb.exit.thread295.out_crit_edge, %iwl_pcie_get_rxb.exit.out_crit_edge, %iwl_pcie_get_rxb.exit.thread, %if.end55.out_crit_edge
  %count.1385 = phi i32 [ %count.1400, %iwl_pcie_get_rxb.exit.thread ], [ %count.1400, %out.loopexit.split.loop.exit358 ], [ %count.3, %cleanup.out_crit_edge ], [ %count.1400, %iwl_pcie_get_rxb.exit.out_crit_edge ], [ %count.1400, %iwl_pcie_get_rxb.exit.thread295.out_crit_edge ], [ 0, %if.end55.out_crit_edge ]
  %i.0338 = phi i32 [ %i.0396, %iwl_pcie_get_rxb.exit.thread ], [ %i.0396, %out.loopexit.split.loop.exit358 ], [ %and46, %cleanup.out_crit_edge ], [ %i.0396, %iwl_pcie_get_rxb.exit.out_crit_edge ], [ %i.0396, %iwl_pcie_get_rxb.exit.thread295.out_crit_edge ], [ %and46, %if.end55.out_crit_edge ]
  %handled.2 = phi i32 [ %inc, %iwl_pcie_get_rxb.exit.thread ], [ %umax.le, %out.loopexit.split.loop.exit358 ], [ %inc, %cleanup.out_crit_edge ], [ %inc, %iwl_pcie_get_rxb.exit.out_crit_edge ], [ %inc, %iwl_pcie_get_rxb.exit.thread295.out_crit_edge ], [ %handled.0, %if.end55.out_crit_edge ]
  %emergency.5.off0 = phi i1 [ %emergency.2.off0, %iwl_pcie_get_rxb.exit.thread ], [ %emergency.1.off0405, %out.loopexit.split.loop.exit358 ], [ %emergency.4.off0, %cleanup.out_crit_edge ], [ %emergency.2.off0, %iwl_pcie_get_rxb.exit.out_crit_edge ], [ %emergency.2.off0, %iwl_pcie_get_rxb.exit.thread295.out_crit_edge ], [ %emergency.0.off0, %if.end55.out_crit_edge ]
  %253 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %i.0338, ptr %read, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1385)
  %tobool164 = icmp ne i32 %count.1385, 0
  %254 = select i1 %emergency.5.off0, i1 %tobool164, i1 false
  br i1 %254, label %if.then172, label %out.if.end173_crit_edge, !prof !187

out.if.end173_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

if.then172:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @iwl_pcie_rxq_alloc_rbs(ptr noundef %trans, i32 noundef 2592, ptr noundef %arrayidx44)
  br label %if.end173

if.end173:                                        ; preds = %if.then172, %out.if.end173_crit_edge
  call fastcc void @iwl_pcie_rxq_restock(ptr noundef %trans, ptr noundef %arrayidx44)
  br label %cleanup174

cleanup174:                                       ; preds = %if.end173, %if.then, %land.rhs.cleanup174_crit_edge
  %retval.0 = phi i32 [ %handled.2, %if.end173 ], [ %budget, %if.then ], [ %budget, %land.rhs.cleanup174_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_rx_move_to_allocator(ptr noundef %rxq, ptr noundef %rba) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.iwl_rb_allocator, ptr %rba, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %rx_used = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 12
  %0 = ptrtoint ptr %rx_used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_used, align 4
  %cmp.i.not.i = icmp eq ptr %1, %rx_used
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rbd_empty = getelementptr inbounds %struct.iwl_rb_allocator, ptr %rba, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.iwl_rb_allocator, ptr %rba, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %3, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rbd_empty, ptr %5, align 4
  store ptr %5, ptr %prev.i, align 4
  %9 = ptrtoint ptr %rx_used to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rx_used, ptr %rx_used, align 4
  store ptr %rx_used, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_force_nmi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_cmd_string(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_rx(ptr noundef %dev, ptr noundef %trans, ptr noundef %pkt, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_rx, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_rx, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !185

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_rx(ptr noundef null, ptr noundef %dev, ptr noundef %trans, ptr noundef %pkt, i32 noundef %len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %13 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !185

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_rx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_rx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_iwlwifi_dev_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 74, ptr noundef nonnull @.str.53) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !200
  %31 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_rx_data(ptr noundef %dev, ptr noundef %trans, ptr noundef %rxbuf, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_rx_data, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_rx_data, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !185

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !207
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_rx_data(ptr noundef null, ptr noundef %dev, ptr noundef %trans, ptr noundef %rxbuf, i32 noundef %len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !208
  %13 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !185

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_rx_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_rx_data, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_rx_data.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_iwlwifi_dev_rx_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 55, ptr noundef nonnull @.str.53) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !200
  %31 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_hcmd_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_rx_reuse_rbd(ptr noundef %trans, ptr noundef %rxb, ptr noundef %rxq, i1 noundef zeroext %emergency) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rba1 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 2
  %list = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %rxb, i32 0, i32 2
  %rx_used = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i15 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %1, ptr noundef %rx_used) #9
  br i1 %call.i.i15, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rx_used, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %rxb, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  br i1 %emergency, label %list_add_tail.exit.cleanup_crit_edge, label %if.end, !prof !187

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %list_add_tail.exit
  %used_count = getelementptr inbounds %struct.iwl_rxq, ptr %rxq, i32 0, i32 8
  %6 = ptrtoint ptr %used_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used_count, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %used_count, align 8
  %rem = and i32 %inc, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem)
  %cmp = icmp eq i32 %rem, 2
  br i1 %cmp, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %8 = ptrtoint ptr %rx_used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %rx_used, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %rx_used
  br i1 %cmp.i.not.i.i, label %if.then5.iwl_pcie_rx_move_to_allocator.exit_crit_edge, label %if.then.i.i

if.then5.iwl_pcie_rx_move_to_allocator.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_pcie_rx_move_to_allocator.exit

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %rbd_empty.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 6
  %prev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 7
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %11, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rbd_empty.i, ptr %13, align 4
  store ptr %13, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %rx_used to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %rx_used, ptr %rx_used, align 4
  store ptr %rx_used, ptr %prev.i, align 4
  br label %iwl_pcie_rx_move_to_allocator.exit

iwl_pcie_rx_move_to_allocator.exit:               ; preds = %if.then.i.i, %if.then5.iwl_pcie_rx_move_to_allocator.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rba1, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rba1, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rba1, ptr %rba1, i32 1, ptr elementtype(i32) %rba1) #9, !srcloc !189
  %alloc_wq = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 14, i32 20
  %19 = ptrtoint ptr %alloc_wq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %alloc_wq, align 4
  %rx_alloc = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 14, i32 24
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %rx_alloc) #9
  br label %cleanup

cleanup:                                          ; preds = %iwl_pcie_rx_move_to_allocator.exit, %if.end.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_rx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_rx_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_no_grab(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph64_no_grab(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_irq_msix(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_irq(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_irq, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_irq, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !185

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !209
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_irq(ptr noundef null, ptr noundef %dev) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !210
  %13 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !185

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_iwlwifi_dev_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 147, ptr noundef nonnull @.str.53) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !200
  %31 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_ict_read(ptr noundef %dev, i32 noundef %index, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ict_read, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_ict_read, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !185

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !211
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_ict_read(ptr noundef null, ptr noundef %dev, i32 noundef %index, i32 noundef %value) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !185

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ict_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ict_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_ict_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_iwlwifi_dev_ict_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 187, ptr noundef nonnull @.str.53) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !200
  %31 = tail call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_ict_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !75, !77, !79, !81, !82, !84, !86, !88, !89, !91, !92, !94, !95, !97, !99, !100, !102, !104, !106, !108, !109, !111, !113, !114, !116, !118, !120, !122, !123, !124, !125, !127, !128, !130, !131, !132, !134, !136, !137, !139, !140, !141, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173}
!llvm.named.register.sp = !{!174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 976, i32 2}
!2 = !{ptr @__func__.iwl_pcie_rx_free, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1180, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1611, i32 6}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.iwl_pcie_irq_rx_msix_handler, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1617, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1763, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__func__.iwl_pcie_handle_rfkill_irq, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1775, i32 4}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__func__.iwl_pcie_irq_handler, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1807, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1813, i32 4}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1826, i32 3}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1843, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1862, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1869, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1884, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1891, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1915, i32 3}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1922, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1931, i32 3}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1945, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1995, i32 3}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2004, i32 3}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2009, i32 3}
!49 = !{ptr @__func__.iwl_pcie_reset_ict, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2101, i32 2}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__func__.iwl_pcie_irq_msix_handler, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2175, i32 3}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2181, i32 3}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2232, i32 3}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2247, i32 3}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2252, i32 4}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2279, i32 4}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2305, i32 3}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 2314, i32 3}
!68 = !{ptr @__func__.iwl_pcie_rx_alloc_page, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 391, i32 4}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 398, i32 4}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 350, i32 3}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!79 = !{ptr @__func__.iwl_pcie_rx_allocator, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 517, i32 2}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 578, i32 5}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 599, i32 2}
!86 = !{ptr @iwl_pcie_rx_alloc.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 773, i32 2}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @iwl_pcie_alloc_rxq_dma.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 704, i32 2}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__func__.iwl_pcie_napi_poll, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 998, i32 2}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1465, i32 6}
!97 = !{ptr @__func__.iwl_pcie_rx_handle, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1482, i32 3}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1497, i32 4}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1502, i32 3}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1548, i32 6}
!106 = !{ptr @__func__.iwl_pcie_get_rxb, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1443, i32 2}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1450, i32 2}
!111 = !{ptr @__func__.iwl_pcie_rx_handle_rb, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1293, i32 4}
!113 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1299, i32 3}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1306, i32 3}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1374, i32 5}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h", i32 52, i32 1}
!122 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!124 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!127 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-data.h", i32 37, i32 1}
!130 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!132 = !{ptr @__func__.iwl_pcie_napi_poll_msix, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1024, i32 2}
!134 = !{ptr @__func__.iwl_pcie_rxq_inc_wr_ptr, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 183, i32 4}
!136 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h", i32 149, i32 1}
!139 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!140 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 728, i32 2}
!143 = !{ptr @__func__.iwl_pcie_int_cause_ict, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 1716, i32 3}
!145 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h", i32 136, i32 1}
!148 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h", i32 172, i32 1}
!151 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!152 = !{ptr @__func__._iwl_enable_interrupts, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 587, i32 2}
!154 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h", i32 202, i32 2}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 1426, i32 6}
!159 = !{ptr @__func__.iwl_pcie_restock_bd, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/rx.c", i32 234, i32 2}
!161 = !{ptr @.str.62, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @__func__.iwl_enable_fw_load_int, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 634, i32 2}
!164 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @__func__.iwl_enable_rfkill_int, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 700, i32 2}
!167 = !{ptr @.str.64, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @__func__.iwl_enable_fw_load_int_ctx_info, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 650, i32 2}
!170 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @__func__._iwl_disable_interrupts, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 537, i32 2}
!173 = !{ptr @.str.66, !172, !"<string literal>", i1 false, i1 false}
!174 = !{!"sp"}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{!"auto-init"}
!185 = !{!"branch_weights", i32 2000, i32 1}
!186 = !{i64 2158518785, i64 2158519294, i64 2158518822, i64 2158518878, i64 2158518912, i64 2158518936, i64 2158518977, i64 2158518998, i64 2158519026, i64 2158519060}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{i64 2153426682, i64 2153427166, i64 2153426719, i64 2153426775, i64 2153426809, i64 2153426833, i64 2153426874, i64 2153426895, i64 2153426923, i64 2153426957}
!189 = !{i64 2148486654, i64 2148486680, i64 2148486709, i64 2148486743, i64 2148486774, i64 2148486797}
!190 = !{i64 2148300047, i64 2148300052, i64 2148300065, i64 2148300109, i64 2148300143, i64 2148300164}
!191 = !{i64 2158523771, i64 2158524280, i64 2158523808, i64 2158523864, i64 2158523898, i64 2158523922, i64 2158523963, i64 2158523984, i64 2158524012, i64 2158524046}
!192 = !{i64 2158527000, i64 2158527509, i64 2158527037, i64 2158527093, i64 2158527127, i64 2158527151, i64 2158527192, i64 2158527213, i64 2158527241, i64 2158527275}
!193 = !{i64 2148489119, i64 2148489145, i64 2148489174, i64 2148489208, i64 2148489239, i64 2148489262}
!194 = !{i8 0, i8 2}
!195 = !{i32 0, i32 33}
!196 = !{i64 2158509210, i64 2158509719, i64 2158509247, i64 2158509303, i64 2158509337, i64 2158509361, i64 2158509402, i64 2158509423, i64 2158509451, i64 2158509485}
!197 = !{i64 2157966762}
!198 = !{i64 2157967047}
!199 = !{i64 2149322727}
!200 = !{i64 2149323763}
!201 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!202 = !{i64 2148588477}
!203 = !{i64 972167, i64 972191, i64 972212, i64 972229, i64 972246}
!204 = !{i64 2148588703}
!205 = !{i64 2158283447}
!206 = !{i64 2158283678}
!207 = !{i64 2158221236}
!208 = !{i64 2158221481}
!209 = !{i64 2157949069}
!210 = !{i64 2157949268}
!211 = !{i64 2157984245}
!212 = !{i64 2157984482}
