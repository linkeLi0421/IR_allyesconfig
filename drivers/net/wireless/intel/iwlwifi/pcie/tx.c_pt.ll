; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/pcie/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/pcie/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.153, %struct.anon.154, %struct.iwl_dma_ptr }
%struct.anon.153 = type { i8, i8, i32 }
%struct.anon.154 = type { i8, i16, i8 }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_txq = type { ptr, ptr, i32, ptr, %struct.spinlock, i32, %struct.timer_list, ptr, i8, i8, i8, i32, i32, %struct.sk_buff_head, %struct.iwl_dma_ptr, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_trans_txq_scd_cfg = type { i8, i8, i8, i8, i32 }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_pcie_txq_entry = type { ptr, ptr, ptr, %struct.iwl_cmd_meta }
%struct.iwl_cmd_meta = type { ptr, i32, i32 }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.iwl_op_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_cmd_header_wide = type { i8, i8, i16, i16, i8, i8 }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_pcie_first_tb_buf = type { [64 x i8] }
%struct.iwl_tfd = type { [3 x i8], i8, [20 x %struct.iwl_tfd_tb], i32 }
%struct.iwl_tfd_tb = type <{ i32, i16 }>
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.page = type { i32, %union.anon.30, %union.anon.91, %struct.atomic_t, i32 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.91 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.tso_t = type { i32, i32, ptr, i16, i8, i8, i32 }
%struct.iwl_device_tx_cmd = type { %struct.iwl_cmd_header, [0 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.133, %union.anon.134, [48 x i8], %union.anon.135, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.137, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.133 = type { ptr }
%union.anon.134 = type { i64 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { i32, ptr }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.139, i32, i32, i32, i16, i16, %union.anon.141, i32, %union.anon.142, %union.anon.143, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.139 = type { i32 }
%union.anon.141 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iwl_tso_hdr_page = type { ptr, ptr }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/tx.c\00", [51 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_tx_reset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Tx %d queue init failed\0A\00", [39 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_txq_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"queue %d already used - expect issues\00", [58 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_pcie_txq_enable = private unnamed_addr constant [26 x i8] c"iwl_trans_pcie_txq_enable\00", align 1
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Activate queue %d on FIFO %d WrPtr: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Activate queue %d WrPtr: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_txq_disable.zero_val = internal constant { [4 x i32], [16 x i8] } zeroinitializer, align 32
@iwl_trans_pcie_txq_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"queue %d not used\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_pcie_txq_disable = private unnamed_addr constant [27 x i8] c"iwl_trans_pcie_txq_disable\00", align 1
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Deactivate queue %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported wide command %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Command %s (%#x) is too large (%d bytes)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No space in command queue\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_enqueue_hcmd = private unnamed_addr constant [22 x i8] c"iwl_pcie_enqueue_hcmd\00", align 1
@.str.10 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Sending command %s (%.2x.%.2x), seq: 0x%04X, %d bytes at %d[%d]:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@iwl_pcie_enqueue_hcmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.11 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"wrong command queue %d (should be %d), sequence 0x%X readp=%d writep=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iwl data: \00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HCMD_ACTIVE already clear for command %s\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_hcmd_complete = private unnamed_addr constant [23 x i8] c"iwl_pcie_hcmd_complete\00", align 1
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Clearing HCMD_ACTIVE for command %s\0A\00", [59 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX on unused queue %d\0A\00", [41 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_tx.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Q: %d WiFi Seq %d tfdNum %d\00", [36 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__func__.iwl_pcie_txq_inc_wr_ptr = private unnamed_addr constant [24 x i8] c"iwl_pcie_txq_inc_wr_ptr\00", align 1
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Tx queue %d requesting wakeup, GP1 = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Q:%d WR: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", [49 x i8] zeroinitializer }, align 32
@iwl_trans_txq_enable_cfg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_txq_enable_cfg = private unnamed_addr constant [25 x i8] c"iwl_trans_txq_enable_cfg\00", align 1
@FH_MEM_CBBC_QUEUE.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-fh.h\00", [52 x i8] zeroinitializer }, align 32
@FH_MEM_CBBC_QUEUE.__already_done.24 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Trying to free a queue that wasn't allocated?\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_txq_unmap = private unnamed_addr constant [19 x i8] c"iwl_pcie_txq_unmap\00", align 1
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Q %d Free %d\0A\00", [18 x i8] zeroinitializer }, align 32
@iwl_pcie_txq_unmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_op_mode_free_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", [47 x i8] zeroinitializer }, align 32
@__func__.iwl_wake_queue = private unnamed_addr constant [15 x i8] c"iwl_wake_queue\00", align 1
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Wake hwq %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failing on timeout while stopping DMA channel %d [0x%08x]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Scheduler BC Table allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Keep Warm allocation failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not enough memory for txq\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Tx %d queue alloc failed\0A\00", [38 x i8] zeroinitializer }, align 32
@SCD_QUEUE_RDPTR.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-scd.h\00", [51 x i8] zeroinitializer }, align 32
@SCD_QUEUE_STATUS_BITS.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error can not send more than %d chunks\0A\00", [56 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_iwlwifi_dev_hcmd = external dso_local global %struct.tracepoint, align 4
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h\00", [38 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_hcmd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@iwl_pcie_cmdq_reclaim.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s: Read index for DMA queue txq id (%d), index %d is out of range [0-%d] %d %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_cmdq_reclaim = private unnamed_addr constant [22 x i8] c"iwl_pcie_cmdq_reclaim\00", align 1
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HCMD skipped: index (%d) %d %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwl_txq_stop = private unnamed_addr constant [13 x i8] c"iwl_txq_stop\00", align 1
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Stop hwq %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hwq %d already stopped\0A\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_iwlwifi_dev_tx = external dso_local global %struct.tracepoint, align 4
@trace_iwlwifi_dev_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_iwlwifi_dev_tx_tb = external dso_local global %struct.tracepoint, align 4
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-devtrace-data.h\00", [41 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_tx_tb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 49, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 601, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 744, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 834, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 838, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"zero_val\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 860, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 872, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 887, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 919, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 993, i32 6 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1006, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1084, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1190, i32 6 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1194, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1224, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1229, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1454, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1496, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 97, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 110, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1191, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1194, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-fh.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 75, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 208, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 214, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [52 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 179, i32 6 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 33, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 412, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 513, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 520, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 528, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 548, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-scd.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 64, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 166, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 326, i32 6 }
@___asan_gen_.164 = private unnamed_addr constant [61 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 18, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 108, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1160, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 680, i32 3 }
@___asan_gen_.176 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 693, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 65, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/queue/tx.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 67, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [58 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-data.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 17, i32 1 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @iwl_trans_pcie_txq_disable.zero_val, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_txq_disable.zero_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_alloc_dma_ptr(ptr nocapture noundef readonly %trans, ptr noundef %ptr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.iwl_dma_ptr, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !143

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end22:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %size, ptr noundef %ptr, i32 noundef 3264, i32 noundef 0) #10
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %addr, align 4
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.end22.return_crit_edge, label %if.end27

if.end22.return_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %size28 = getelementptr inbounds %struct.iwl_dma_ptr, ptr %ptr, i32 0, i32 2
  %5 = ptrtoint ptr %size28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %size28, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.end22.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end27 ], [ -12, %if.end22.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_free_dma_ptr(ptr nocapture noundef readonly %trans, ptr nocapture noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.iwl_dma_ptr, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !144

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.iwl_dma_ptr, ptr %ptr, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ptr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #10
  %8 = call ptr @memset(ptr %ptr, i32 0, i32 12)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_txq_check_wrptrs(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %num_of_queues19 = getelementptr inbounds %struct.iwl_base_params, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_of_queues19 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_of_queues19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp21.not = icmp eq i16 %5, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %i.022
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %div3.i = lshr i32 %i.022, 5
  %arrayidx.i = getelementptr i32, ptr %txqs, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.022, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %need_update = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %need_update to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %need_update, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @iwl_pcie_txq_inc_wr_ptr(ptr noundef %trans, ptr noundef %7)
  %14 = ptrtoint ptr %need_update to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %need_update, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %15 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans_cfg, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %20 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_txq_inc_wr_ptr(ptr noundef %trans, ptr noundef %txq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 19
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !144

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %3 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans_cfg, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %shadow_reg_enable = getelementptr inbounds %struct.iwl_base_params, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %shadow_reg_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %shadow_reg_enable, align 4
  %8 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool24.not = icmp eq i8 %8, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.end.do.end45_crit_edge

if.end.do.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

land.lhs.true:                                    ; preds = %if.end
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %9 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %q_id, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp25.not = icmp eq i32 %1, %conv
  br i1 %cmp25.not, label %land.lhs.true.do.end45_crit_edge, label %land.lhs.true27

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

land.lhs.true27:                                  ; preds = %land.lhs.true
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool29.not = icmp eq i32 %13, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end45_crit_edge, label %if.then30

land.lhs.true27.do.end45_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

if.then30:                                        ; preds = %land.lhs.true27
  %call31 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 84) #10
  %and = and i32 %call31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.then30.do.end45_crit_edge, label %do.end37

if.then30.do.end45_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end37:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_txq_inc_wr_ptr, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %call31) #10
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %17, i32 0, i32 34
  %18 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %19(ptr noundef %trans, i32 noundef 36, i32 noundef 8, i32 noundef 8) #10
  %need_update = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 8
  %20 = ptrtoint ptr %need_update to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %need_update, align 4
  br label %cleanup

do.end45:                                         ; preds = %if.then30.do.end45_crit_edge, %land.lhs.true27.do.end45_crit_edge, %land.lhs.true.do.end45_crit_edge, %if.end.do.end45_crit_edge
  %dev46 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %21 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev46, align 8
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 15
  %23 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %write_ptr, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_txq_inc_wr_ptr, ptr noundef nonnull @.str.20, i32 noundef %1, i32 noundef %24) #10
  %block = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 11
  %25 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool49.not = icmp eq i32 %26, 0
  br i1 %tobool49.not, label %if.then50, label %do.end45.cleanup_crit_edge

do.end45.cleanup_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then50:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %write_ptr, align 4
  %shl = shl i32 %1, 8
  %or = or i32 %28, %shl
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 1120, i32 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.end45.cleanup_crit_edge, %do.end37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_tx_start(ptr noundef %trans, i32 noundef %scd_base_addr) local_unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add = add nuw nsw i32 %mul, 2016
  %and = and i32 %add, 65532
  %sub = add nsw i32 %and, -1536
  %div78 = lshr exact i32 %sub, 2
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %6 = call ptr @memset(ptr %txqs, i32 0, i32 128)
  %call3 = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef 10497024) #10
  %scd_base_addr4 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 191
  %7 = ptrtoint ptr %scd_base_addr4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %scd_base_addr4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scd_base_addr)
  %cmp.not = icmp ne i32 %scd_base_addr, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %scd_base_addr)
  %cmp7 = icmp ne i32 %call3, %scd_base_addr
  %spec.select = select i1 %cmp.not, i1 %cmp7, i1 false
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !144

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 312, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %scd_base_addr4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scd_base_addr4, align 8
  %add28 = add i32 %9, 1536
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %write_mem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_mem.i, align 4
  %call.i = tail call i32 %13(ptr noundef %trans, i32 noundef %add28, ptr noundef null, i32 noundef %div78) #10
  %scd_bc_tbls = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 11
  %14 = ptrtoint ptr %scd_bc_tbls to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scd_bc_tbls, align 8
  %shr = lshr i32 %15, 10
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10497032, i32 noundef %shr, i32 noundef 0) #10
  %16 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans_cfg, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %scd_chain_ext_wa = getelementptr inbounds %struct.iwl_base_params, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %scd_chain_ext_wa to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %scd_chain_ext_wa, align 4
  %21 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool33.not = icmp eq i8 %21, 0
  br i1 %tobool33.not, label %if.end.if.end35_crit_edge, label %if.then34

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10497604, i32 noundef 0, i32 noundef 0) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end.if.end35_crit_edge
  %cmd = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %22 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %q_id, align 1
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cmd, align 8
  %wdg_timeout = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 2
  %26 = ptrtoint ptr %wdg_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wdg_timeout, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg.i) #10
  %28 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 1
  %29 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 2
  %30 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 3
  %31 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 4
  %32 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %25, ptr %cfg.i, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %28, align 1
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %29, align 2
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %30, align 1
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 64, ptr %31, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 1191) #10
  %state.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 6
  %37 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp.not.i.i = icmp eq i32 %38, 2
  br i1 %cmp.not.i.i, label %if.end48.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end35
  %.b1.i.i = load i1, ptr @iwl_trans_txq_enable_cfg.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.do.end44.i.i_crit_edge, label %if.then.i.i, !prof !143

land.rhs.i.i.do.end44.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_txq_enable_cfg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1193, i32 noundef 9, ptr noundef null) #10
  br label %do.end44.i.i

do.end44.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.do.end44.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 8
  %41 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %40, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.iwl_trans_txq_enable_cfg, i32 noundef %42) #10
  br label %iwl_trans_ac_txq_enable.exit

if.end48.i.i:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %conv37 = zext i8 %23 to i32
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %txq_enable.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %txq_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %txq_enable.i.i, align 4
  %call.i.i = call zeroext i1 %46(ptr noundef %trans, i32 noundef %conv37, i16 noundef zeroext 0, ptr noundef nonnull %cfg.i, i32 noundef %27) #10
  br label %iwl_trans_ac_txq_enable.exit

iwl_trans_ac_txq_enable.exit:                     ; preds = %if.end48.i.i, %do.end44.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg.i) #10
  call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10497040, i32 noundef 255, i32 noundef 0) #10
  call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 7424, i32 noundef -2147483640) #10
  call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 7456, i32 noundef -2147483640) #10
  call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 7488, i32 noundef -2147483640) #10
  call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 7520, i32 noundef -2147483640) #10
  call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 7552, i32 noundef -2147483640) #10
  call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 7584, i32 noundef -2147483640) #10
  call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 7616, i32 noundef -2147483640) #10
  call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 7648, i32 noundef -2147483640) #10
  %call47 = call i32 @iwl_read_direct32(ptr noundef %trans, i32 noundef 7832) #10
  %or = or i32 %call47, 2
  call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 7832, i32 noundef %or) #10
  %47 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %50)
  %cmp49 = icmp ult i32 %50, 16
  br i1 %cmp49, label %if.then51, label %iwl_trans_ac_txq_enable.exit.if.end52_crit_edge

iwl_trans_ac_txq_enable.exit.if.end52_crit_edge:  ; preds = %iwl_trans_ac_txq_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then51:                                        ; preds = %iwl_trans_ac_txq_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @iwl_clear_bits_prph(ptr noundef %trans, i32 noundef 12304, i32 noundef 2048) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %iwl_trans_ac_txq_enable.exit.if.end52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_direct32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_direct32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_clear_bits_prph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_pcie_tx_reset(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %gen2, align 4
  %3 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %land.rhs

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans_cfg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %num_of_queues106 = getelementptr inbounds %struct.iwl_base_params, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %num_of_queues106 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_of_queues106, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp108.not = icmp eq i16 %9, 0
  br i1 %cmp108.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %entry
  %.b78 = load i1, ptr @iwl_trans_pcie_tx_reset.__already_done, align 1
  br i1 %.b78, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !143

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_pcie_tx_reset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

for.body:                                         ; preds = %if.end54.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %10 = phi ptr [ %22, %if.end54.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %txq_id.0109 = phi i32 [ %inc, %if.end54.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id.0109
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %use_tfh = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %use_tfh to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load43 = load i16, ptr %use_tfh, align 4
  %14 = and i16 %bf.load43, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool47.not = icmp eq i16 %14, 0
  br i1 %tobool47.not, label %if.end37.i89, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %txq_id.0109)
  %cmp.i = icmp ugt i32 %txq_id.0109, 63
  br i1 %cmp.i, label %land.rhs.i, label %if.then.i.FH_MEM_CBBC_QUEUE.exit_crit_edge

if.then.i.FH_MEM_CBBC_QUEUE.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %FH_MEM_CBBC_QUEUE.exit

land.rhs.i:                                       ; preds = %if.then.i
  %.b118.i = load i1, ptr @FH_MEM_CBBC_QUEUE.__already_done, align 1
  br i1 %.b118.i, label %land.rhs.i.FH_MEM_CBBC_QUEUE.exit_crit_edge, label %return.sink.split.i, !prof !143

land.rhs.i.FH_MEM_CBBC_QUEUE.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %FH_MEM_CBBC_QUEUE.exit

return.sink.split.i:                              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @FH_MEM_CBBC_QUEUE.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 75, i32 noundef 9, ptr noundef null) #10
  br label %FH_MEM_CBBC_QUEUE.exit

FH_MEM_CBBC_QUEUE.exit:                           ; preds = %return.sink.split.i, %land.rhs.i.FH_MEM_CBBC_QUEUE.exit_crit_edge, %if.then.i.FH_MEM_CBBC_QUEUE.exit_crit_edge
  %sub102.i = shl i32 %txq_id.0109, 3
  %add104.i = add nuw nsw i32 %sub102.i, 7168
  %conv50 = zext i32 %add104.i to i64
  %dma_addr = getelementptr inbounds %struct.iwl_txq, ptr %12, i32 0, i32 17
  %15 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr, align 4
  %conv51 = zext i32 %16 to i64
  tail call void @iwl_write_direct64(ptr noundef %trans, i64 noundef %conv50, i64 noundef %conv51) #10
  br label %if.end54

if.end37.i89:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %txq_id.0109)
  %cmp38.i88 = icmp ult i32 %txq_id.0109, 16
  br i1 %cmp38.i88, label %if.end37.i89.FH_MEM_CBBC_QUEUE.exit105_crit_edge, label %if.end42.i91

if.end37.i89.FH_MEM_CBBC_QUEUE.exit105_crit_edge: ; preds = %if.end37.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %FH_MEM_CBBC_QUEUE.exit105

if.end42.i91:                                     ; preds = %if.end37.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %txq_id.0109)
  %cmp43.i90 = icmp ult i32 %txq_id.0109, 20
  br i1 %cmp43.i90, label %if.end42.i91.FH_MEM_CBBC_QUEUE.exit105_crit_edge, label %if.end47.i93

if.end42.i91.FH_MEM_CBBC_QUEUE.exit105_crit_edge: ; preds = %if.end42.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %FH_MEM_CBBC_QUEUE.exit105

if.end47.i93:                                     ; preds = %if.end42.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %txq_id.0109)
  %cmp49.i92 = icmp ugt i32 %txq_id.0109, 31
  br i1 %cmp49.i92, label %land.rhs56.i95, label %if.end47.i93.FH_MEM_CBBC_QUEUE.exit105_crit_edge

if.end47.i93.FH_MEM_CBBC_QUEUE.exit105_crit_edge: ; preds = %if.end47.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %FH_MEM_CBBC_QUEUE.exit105

land.rhs56.i95:                                   ; preds = %if.end47.i93
  %.b116117.i94 = load i1, ptr @FH_MEM_CBBC_QUEUE.__already_done.24, align 1
  br i1 %.b116117.i94, label %land.rhs56.i95.FH_MEM_CBBC_QUEUE.exit105_crit_edge, label %return.sink.split.i100, !prof !143

land.rhs56.i95.FH_MEM_CBBC_QUEUE.exit105_crit_edge: ; preds = %land.rhs56.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %FH_MEM_CBBC_QUEUE.exit105

return.sink.split.i100:                           ; preds = %land.rhs56.i95
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @FH_MEM_CBBC_QUEUE.__already_done.24, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 82, i32 noundef 9, ptr noundef null) #10
  br label %FH_MEM_CBBC_QUEUE.exit105

FH_MEM_CBBC_QUEUE.exit105:                        ; preds = %return.sink.split.i100, %land.rhs56.i95.FH_MEM_CBBC_QUEUE.exit105_crit_edge, %if.end47.i93.FH_MEM_CBBC_QUEUE.exit105_crit_edge, %if.end42.i91.FH_MEM_CBBC_QUEUE.exit105_crit_edge, %if.end37.i89.FH_MEM_CBBC_QUEUE.exit105_crit_edge
  %.sink.i102 = phi i32 [ 6608, %if.end37.i89.FH_MEM_CBBC_QUEUE.exit105_crit_edge ], [ 7088, %if.end42.i91.FH_MEM_CBBC_QUEUE.exit105_crit_edge ], [ 6864, %if.end47.i93.FH_MEM_CBBC_QUEUE.exit105_crit_edge ], [ 6864, %land.rhs56.i95.FH_MEM_CBBC_QUEUE.exit105_crit_edge ], [ 6864, %return.sink.split.i100 ]
  %sub102.i103 = shl i32 %txq_id.0109, 2
  %add104.i104 = add i32 %.sink.i102, %sub102.i103
  %dma_addr53 = getelementptr inbounds %struct.iwl_txq, ptr %12, i32 0, i32 17
  %17 = ptrtoint ptr %dma_addr53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_addr53, align 4
  %shr = lshr i32 %18, 8
  tail call void @iwl_write_direct32(ptr noundef %trans, i32 noundef %add104.i104, i32 noundef %shr) #10
  br label %if.end54

if.end54:                                         ; preds = %FH_MEM_CBBC_QUEUE.exit105, %FH_MEM_CBBC_QUEUE.exit
  tail call fastcc void @iwl_pcie_txq_unmap(ptr noundef %trans, i32 noundef %txq_id.0109)
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %12, i32 0, i32 16
  %19 = ptrtoint ptr %read_ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %read_ptr, align 4
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %12, i32 0, i32 15
  %20 = ptrtoint ptr %write_ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %write_ptr, align 4
  %inc = add nuw nsw i32 %txq_id.0109, 1
  %21 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trans_cfg, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %26 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end54.for.body_crit_edge, label %if.end54.for.end_crit_edge

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end54.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %kw = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 192
  %27 = ptrtoint ptr %kw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %kw, align 4
  %shr55 = lshr i32 %28, 4
  tail call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 6524, i32 noundef %shr55) #10
  tail call void @iwl_pcie_tx_start(ptr noundef %trans, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_direct64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_txq_unmap(ptr noundef %trans, i32 noundef %txq_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.25) #10
  br label %cleanup92

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 15
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_ptr, align 4
  %6 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not134 = icmp eq i32 %5, %7
  br i1 %cmp.not134, label %if.end.while.cond81.preheader_crit_edge, label %do.end8.lr.ph

if.end.while.cond81.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond81.preheader

do.end8.lr.ph:                                    ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 3
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  br label %do.end8

while.cond81.preheader:                           ; preds = %while.cond.backedge.while.cond81.preheader_crit_edge, %if.end.while.cond81.preheader_crit_edge
  %overflow_q = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %overflow_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %overflow_q, align 4
  %cmp.i135 = icmp eq ptr %9, %overflow_q
  br i1 %cmp.i135, label %while.cond81.preheader.while.end90_crit_edge, label %while.body86.lr.ph

while.cond81.preheader.while.end90_crit_edge:     ; preds = %while.cond81.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end90

while.body86.lr.ph:                               ; preds = %while.cond81.preheader
  %qlen.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13, i32 1
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  br label %while.body86

do.end8:                                          ; preds = %while.cond.backedge.do.end8_crit_edge, %do.end8.lr.ph
  %10 = phi i32 [ %7, %do.end8.lr.ph ], [ %36, %while.cond.backedge.do.end8_crit_edge ]
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_txq_unmap, ptr noundef nonnull @.str.26, i32 noundef %txq_id, i32 noundef %10) #10
  %13 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %q_id, align 1
  %conv = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %txq_id)
  %cmp14.not = icmp eq i32 %conv, %txq_id
  br i1 %cmp14.not, label %do.end8.if.end66_crit_edge, label %if.then16

do.end8.if.end66_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then16:                                        ; preds = %do.end8
  %15 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entries, align 4
  %17 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_ptr, align 4
  %skb19 = getelementptr %struct.iwl_pcie_txq_entry, ptr %16, i32 %18, i32 1
  %19 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb19, align 4
  %tobool20.not = icmp eq ptr %20, null
  br i1 %tobool20.not, label %land.rhs, label %cleanup.thread

land.rhs:                                         ; preds = %if.then16
  %.b127 = load i1, ptr @iwl_pcie_txq_unmap.__already_done, align 1
  br i1 %.b127, label %land.rhs.while.cond.backedge_crit_edge, label %if.then30, !prof !143

land.rhs.while.cond.backedge_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then30:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_pcie_txq_unmap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef null) #10
  br label %while.cond.backedge

cleanup.thread:                                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwl_txq_free_tso_page(ptr noundef %trans, ptr noundef nonnull %20) #10
  br label %if.end66

if.end66:                                         ; preds = %cleanup.thread, %do.end8.if.end66_crit_edge
  tail call void @iwl_txq_free_tfd(ptr noundef %trans, ptr noundef nonnull %1) #10
  %21 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read_ptr, align 4
  %inc.i = add i32 %22, 1
  %23 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trans_cfg.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_tfd_queue_size.i, align 4
  %sub.i = add i32 %28, -1
  %and.i = and i32 %sub.i, %inc.i
  store i32 %and.i, ptr %read_ptr, align 4
  %29 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %write_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %30)
  %cmp71 = icmp eq i32 %and.i, %30
  br i1 %cmp71, label %land.lhs.true, label %if.end66.while.cond.backedge_crit_edge

if.end66.while.cond.backedge_crit_edge:           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end66
  %31 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %q_id, align 1
  %conv76 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv76, i32 %txq_id)
  %cmp77 = icmp eq i32 %conv76, %txq_id
  br i1 %cmp77, label %if.then79, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @iwl_pcie_clear_cmd_in_flight(ptr noundef %trans)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then79, %land.lhs.true.while.cond.backedge_crit_edge, %if.end66.while.cond.backedge_crit_edge, %if.then30, %land.rhs.while.cond.backedge_crit_edge
  %33 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %write_ptr, align 4
  %35 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %read_ptr, align 4
  %cmp.not = icmp eq i32 %34, %36
  br i1 %cmp.not, label %while.cond.backedge.while.cond81.preheader_crit_edge, label %while.cond.backedge.do.end8_crit_edge

while.cond.backedge.do.end8_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

while.cond.backedge.while.cond81.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond81.preheader

while.body86:                                     ; preds = %iwl_op_mode_free_skb.exit.while.body86_crit_edge, %while.body86.lr.ph
  %37 = phi ptr [ %9, %while.body86.lr.ph ], [ %53, %iwl_op_mode_free_skb.exit.while.body86_crit_edge ]
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %while.body86.__skb_dequeue.exit_crit_edge, label %if.then.i

while.body86.__skb_dequeue.exit_crit_edge:        ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %37, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %43, ptr %prev17.i.i, align 4
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %41, ptr %43, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %while.body86.__skb_dequeue.exit_crit_edge
  %46 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %op_mode, align 8
  %tobool.not.i129 = icmp eq ptr %47, null
  br i1 %tobool.not.i129, label %land.rhs.i, label %if.end39.critedge.i

land.rhs.i:                                       ; preds = %__skb_dequeue.exit
  %.b44.i = load i1, ptr @iwl_op_mode_free_skb.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge, label %if.then.i130, !prof !143

land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_op_mode_free_skb.exit

if.then.i130:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_op_mode_free_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 179, i32 noundef 9, ptr noundef null) #10
  br label %iwl_op_mode_free_skb.exit

if.end39.critedge.i:                              ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %free_skb.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %free_skb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %free_skb.i, align 4
  tail call void %51(ptr noundef nonnull %47, ptr noundef %37) #10
  br label %iwl_op_mode_free_skb.exit

iwl_op_mode_free_skb.exit:                        ; preds = %if.end39.critedge.i, %if.then.i130, %land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge
  %52 = ptrtoint ptr %overflow_q to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %overflow_q, align 4
  %cmp.i = icmp eq ptr %53, %overflow_q
  br i1 %cmp.i, label %iwl_op_mode_free_skb.exit.while.end90_crit_edge, label %iwl_op_mode_free_skb.exit.while.body86_crit_edge

iwl_op_mode_free_skb.exit.while.body86_crit_edge: ; preds = %iwl_op_mode_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body86

iwl_op_mode_free_skb.exit.while.end90_crit_edge:  ; preds = %iwl_op_mode_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end90

while.end90:                                      ; preds = %iwl_op_mode_free_skb.exit.while.end90_crit_edge, %while.cond81.preheader.while.end90_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %id.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 19
  %54 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id.i, align 4
  %queue_stopped.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 1
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %55, ptr noundef %queue_stopped.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i131 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i131, label %while.end90.cleanup92_crit_edge, label %do.end.i

while.end90.cleanup92_crit_edge:                  ; preds = %while.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup92

do.end.i:                                         ; preds = %while.end90
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  %58 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %57, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_wake_queue, ptr noundef nonnull @.str.29, i32 noundef %59) #10
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %60 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %op_mode.i, align 8
  %62 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id.i, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  %queue_not_full.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %queue_not_full.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %queue_not_full.i.i, align 4
  tail call void %67(ptr noundef %61, i32 noundef %63) #10
  br label %cleanup92

cleanup92:                                        ; preds = %do.end.i, %while.end90.cleanup92_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_tx_stop(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10497040, i32 noundef 0, i32 noundef 0) #10
  %irq_lock.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock.i) #10
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %grab_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access.i, align 4
  %call1.i = tail call zeroext i1 %3(ptr noundef %trans) #10
  br i1 %call1.i, label %for.body.preheader.i, label %entry.iwl_pcie_tx_stop_fh.exit_crit_edge, !prof !143

entry.iwl_pcie_tx_stop_fh.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_pcie_tx_stop_fh.exit

for.body.preheader.i:                             ; preds = %entry
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7424, i32 noundef 0) #10
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7456, i32 noundef 0) #10
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7488, i32 noundef 0) #10
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7520, i32 noundef 0) #10
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7552, i32 noundef 0) #10
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7584, i32 noundef 0) #10
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7616, i32 noundef 0) #10
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 7648, i32 noundef 0) #10
  %call4.i = tail call i32 @iwl_poll_bit(ptr noundef %trans, i32 noundef 7856, i32 noundef 16711680, i32 noundef 16711680, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end.i, label %for.body.preheader.i.if.end11.i_crit_edge

for.body.preheader.i.if.end11.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

do.end.i:                                         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %call8.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 7856) #10
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef %call8.i) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %for.body.preheader.i.if.end11.i_crit_edge
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %release_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release_nic_access.i.i, align 4
  tail call void %9(ptr noundef %trans) #10
  br label %iwl_pcie_tx_stop_fh.exit

iwl_pcie_tx_stop_fh.exit:                         ; preds = %if.end11.i, %entry.iwl_pcie_tx_stop_fh.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock.i) #10
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %txq_memory = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 201
  %10 = call ptr @memset(ptr %txqs, i32 0, i32 128)
  %11 = ptrtoint ptr %txq_memory to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txq_memory, align 16
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %iwl_pcie_tx_stop_fh.exit.cleanup_crit_edge, label %for.cond.preheader

iwl_pcie_tx_stop_fh.exit.cleanup_crit_edge:       ; preds = %iwl_pcie_tx_stop_fh.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %iwl_pcie_tx_stop_fh.exit
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %13 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans_cfg, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %num_of_queues13 = getelementptr inbounds %struct.iwl_base_params, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %num_of_queues13 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_of_queues13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp15.not = icmp eq i16 %18, 0
  br i1 %cmp15.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %txq_id.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  tail call fastcc void @iwl_pcie_txq_unmap(ptr noundef %trans, i32 noundef %txq_id.016)
  %inc = add nuw nsw i32 %txq_id.016, 1
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
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %iwl_pcie_tx_stop_fh.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_tx_free(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %0 = call ptr @memset(ptr %txqs, i32 0, i32 64)
  %txq_memory = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 201
  %1 = ptrtoint ptr %txq_memory to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %txq_memory, align 16
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %3 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans_cfg, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %num_of_queues27 = getelementptr inbounds %struct.iwl_base_params, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %num_of_queues27 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_of_queues27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp29.not = icmp eq i16 %8, 0
  br i1 %cmp29.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev2.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %q_id.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  br label %for.body

for.body:                                         ; preds = %iwl_pcie_txq_free.exit.for.body_crit_edge, %for.body.lr.ph
  %txq_id.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %iwl_pcie_txq_free.exit.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id.030
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end25.i, !prof !144

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef null) #10
  br label %iwl_pcie_txq_free.exit

if.end25.i:                                       ; preds = %for.body
  tail call fastcc void @iwl_pcie_txq_unmap(ptr noundef %trans, i32 noundef %txq_id.030) #10
  %13 = ptrtoint ptr %q_id.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %q_id.i, align 1
  %conv.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %txq_id.030, i32 %conv.i)
  %cmp.i = icmp eq i32 %txq_id.030, %conv.i
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.end25.i.if.end35.i_crit_edge

if.end25.i.if.end35.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

for.cond.preheader.i:                             ; preds = %if.end25.i
  %n_window.i = getelementptr inbounds %struct.iwl_txq, ptr %10, i32 0, i32 18
  %15 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_window.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2977.i = icmp sgt i32 %16, 0
  br i1 %cmp2977.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end35.i_crit_edge

for.cond.preheader.i.if.end35.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %entries.i = getelementptr inbounds %struct.iwl_txq, ptr %10, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.078.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entries.i, align 4
  %arrayidx31.i = getelementptr %struct.iwl_pcie_txq_entry, ptr %18, i32 %i.078.i
  %19 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx31.i, align 4
  tail call void @kfree_sensitive(ptr noundef %20) #10
  %21 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %entries.i, align 4
  %free_buf.i = getelementptr %struct.iwl_pcie_txq_entry, ptr %22, i32 %i.078.i, i32 2
  %23 = ptrtoint ptr %free_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free_buf.i, align 4
  tail call void @kfree_sensitive(ptr noundef %24) #10
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %25 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_window.i, align 4
  %cmp29.i = icmp slt i32 %inc.i, %26
  br i1 %cmp29.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end35.i_crit_edge

for.body.i.if.end35.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end35.i:                                       ; preds = %for.body.i.if.end35.i_crit_edge, %for.cond.preheader.i.if.end35.i_crit_edge, %if.end25.i.if.end35.i_crit_edge
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %10, align 4
  %tobool36.not.i = icmp eq ptr %28, null
  br i1 %tobool36.not.i, label %if.end35.i.if.end45.i_crit_edge, label %if.then37.i

if.end35.i.if.end45.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %size.i, align 2
  %conv39.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trans_cfg, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_tfd_queue_size.i, align 4
  %mul.i = mul i32 %36, %conv39.i
  %dma_addr.i = getelementptr inbounds %struct.iwl_txq, ptr %10, i32 0, i32 17
  %37 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef %mul.i, ptr noundef nonnull %28, i32 noundef %38, i32 noundef 0) #10
  %39 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %dma_addr.i, align 4
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %10, align 4
  %n_window43.i = getelementptr inbounds %struct.iwl_txq, ptr %10, i32 0, i32 18
  %41 = ptrtoint ptr %n_window43.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_window43.i, align 4
  %mul44.i = shl i32 %42, 6
  %first_tb_bufs.i = getelementptr inbounds %struct.iwl_txq, ptr %10, i32 0, i32 1
  %43 = ptrtoint ptr %first_tb_bufs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %first_tb_bufs.i, align 4
  %first_tb_dma.i = getelementptr inbounds %struct.iwl_txq, ptr %10, i32 0, i32 2
  %45 = ptrtoint ptr %first_tb_dma.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %first_tb_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef %mul44.i, ptr noundef %44, i32 noundef %46, i32 noundef 0) #10
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then37.i, %if.end35.i.if.end45.i_crit_edge
  %entries46.i = getelementptr inbounds %struct.iwl_txq, ptr %10, i32 0, i32 3
  %47 = ptrtoint ptr %entries46.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %entries46.i, align 4
  tail call void @kfree(ptr noundef %48) #10
  %49 = ptrtoint ptr %entries46.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %entries46.i, align 4
  %stuck_timer.i = getelementptr inbounds %struct.iwl_txq, ptr %10, i32 0, i32 6
  %call.i = tail call i32 @del_timer_sync(ptr noundef %stuck_timer.i) #10
  %50 = call ptr @memset(ptr %10, i32 0, i32 228)
  br label %iwl_pcie_txq_free.exit

iwl_pcie_txq_free.exit:                           ; preds = %if.end45.i, %do.end.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx.i, align 4
  %inc = add nuw nsw i32 %txq_id.030, 1
  %52 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %trans_cfg, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %57 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %iwl_pcie_txq_free.exit.for.body_crit_edge, label %iwl_pcie_txq_free.exit.if.end_crit_edge

iwl_pcie_txq_free.exit.if.end_crit_edge:          ; preds = %iwl_pcie_txq_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

iwl_pcie_txq_free.exit.for.body_crit_edge:        ; preds = %iwl_pcie_txq_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %iwl_pcie_txq_free.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %58 = ptrtoint ptr %txq_memory to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %txq_memory, align 16
  tail call void @kfree(ptr noundef %59) #10
  %60 = ptrtoint ptr %txq_memory to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %txq_memory, align 16
  %addr.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 193
  %61 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %addr.i, align 4
  %tobool.not.i19 = icmp eq ptr %62, null
  br i1 %tobool.not.i19, label %if.end.iwl_pcie_free_dma_ptr.exit_crit_edge, label %if.end.i, !prof !144

if.end.iwl_pcie_free_dma_ptr.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_pcie_free_dma_ptr.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %kw = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 192
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 8
  %size.i20 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 194
  %65 = ptrtoint ptr %size.i20 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i20, align 4
  %67 = ptrtoint ptr %kw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %kw, align 4
  tail call void @dma_free_attrs(ptr noundef %64, i32 noundef %66, ptr noundef nonnull %62, i32 noundef %68, i32 noundef 0) #10
  %69 = call ptr @memset(ptr %kw, i32 0, i32 12)
  br label %iwl_pcie_free_dma_ptr.exit

iwl_pcie_free_dma_ptr.exit:                       ; preds = %if.end.i, %if.end.iwl_pcie_free_dma_ptr.exit_crit_edge
  %addr.i21 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 11, i32 1
  %70 = ptrtoint ptr %addr.i21 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %addr.i21, align 4
  %tobool.not.i22 = icmp eq ptr %71, null
  br i1 %tobool.not.i22, label %iwl_pcie_free_dma_ptr.exit.iwl_pcie_free_dma_ptr.exit26_crit_edge, label %if.end.i25, !prof !144

iwl_pcie_free_dma_ptr.exit.iwl_pcie_free_dma_ptr.exit26_crit_edge: ; preds = %iwl_pcie_free_dma_ptr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_pcie_free_dma_ptr.exit26

if.end.i25:                                       ; preds = %iwl_pcie_free_dma_ptr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %scd_bc_tbls = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 11
  %dev.i23 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %72 = ptrtoint ptr %dev.i23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i23, align 8
  %size.i24 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 11, i32 2
  %74 = ptrtoint ptr %size.i24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.i24, align 4
  %76 = ptrtoint ptr %scd_bc_tbls to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %scd_bc_tbls, align 4
  tail call void @dma_free_attrs(ptr noundef %73, i32 noundef %75, ptr noundef nonnull %71, i32 noundef %77, i32 noundef 0) #10
  %78 = call ptr @memset(ptr %scd_bc_tbls, i32 0, i32 12)
  br label %iwl_pcie_free_dma_ptr.exit26

iwl_pcie_free_dma_ptr.exit26:                     ; preds = %if.end.i25, %iwl_pcie_free_dma_ptr.exit.iwl_pcie_free_dma_ptr.exit26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_tx_init(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txq_memory = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 201
  %0 = ptrtoint ptr %txq_memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txq_memory, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
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
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !144

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 498, i32 noundef 9, ptr noundef null) #10
  br label %cleanup48

if.end22.i:                                       ; preds = %if.then
  %6 = ptrtoint ptr %txq_memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txq_memory, align 16
  %tobool25.not.i = icmp eq ptr %7, null
  br i1 %tobool25.not.i, label %if.end57.i, label %do.end41.i, !prof !143

do.end41.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 505, i32 noundef 9, ptr noundef null) #10
  br label %error.i

if.end57.i:                                       ; preds = %if.end22.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %num_of_queues.i = getelementptr inbounds %struct.iwl_base_params, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_of_queues.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_of_queues.i, align 2
  %mul.i = mul i16 %11, 640
  %conv58.i = zext i16 %mul.i to i32
  %addr.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 11, i32 1
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end22.i.i, label %do.end.i.i, !prof !143

do.end.i.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef null) #10
  br label %do.end65.i

if.end22.i.i:                                     ; preds = %if.end57.i
  %scd_bc_tbls.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 11
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 8
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %15, i32 noundef %conv58.i, ptr noundef %scd_bc_tbls.i, i32 noundef 3264, i32 noundef 0) #10
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i.i, ptr %addr.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool25.not.i.i, label %if.end22.i.i.do.end65.i_crit_edge, label %if.end68.i

if.end22.i.i.do.end65.i_crit_edge:                ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i

do.end65.i:                                       ; preds = %if.end22.i.i.do.end65.i_crit_edge, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -12, %if.end22.i.i.do.end65.i_crit_edge ], [ -22, %do.end.i.i ]
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.31) #10
  br label %error.i

if.end68.i:                                       ; preds = %if.end22.i.i
  %size28.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 11, i32 2
  %19 = ptrtoint ptr %size28.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv58.i, ptr %size28.i.i, align 4
  %addr.i191.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 193
  %20 = ptrtoint ptr %addr.i191.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i191.i, align 4
  %tobool.not.i192.i = icmp eq ptr %21, null
  br i1 %tobool.not.i192.i, label %if.end22.i197.i, label %do.end.i193.i, !prof !143

do.end.i193.i:                                    ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef null) #10
  br label %do.end75.i

if.end22.i197.i:                                  ; preds = %if.end68.i
  %kw.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 192
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 8
  %call.i.i195.i = tail call ptr @dma_alloc_attrs(ptr noundef %23, i32 noundef 4096, ptr noundef %kw.i, i32 noundef 3264, i32 noundef 0) #10
  %24 = ptrtoint ptr %addr.i191.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i195.i, ptr %addr.i191.i, align 4
  %tobool25.not.i196.i = icmp eq ptr %call.i.i195.i, null
  br i1 %tobool25.not.i196.i, label %if.end22.i197.i.do.end75.i_crit_edge, label %if.end79.i

if.end22.i197.i.do.end75.i_crit_edge:             ; preds = %if.end22.i197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75.i

do.end75.i:                                       ; preds = %if.end22.i197.i.do.end75.i_crit_edge, %do.end.i193.i
  %retval.0.i200.ph.i = phi i32 [ -12, %if.end22.i197.i.do.end75.i_crit_edge ], [ -22, %do.end.i193.i ]
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @.str.32) #10
  br label %error.i

if.end79.i:                                       ; preds = %if.end22.i197.i
  %size28.i198.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 194
  %27 = ptrtoint ptr %size28.i198.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4096, ptr %size28.i198.i, align 4
  %28 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans_cfg.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %num_of_queues82.i = getelementptr inbounds %struct.iwl_base_params, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %num_of_queues82.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_of_queues82.i, align 2
  %conv83.i = zext i16 %33 to i32
  %34 = mul nuw nsw i32 %conv83.i, 228
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #13
  %35 = ptrtoint ptr %txq_memory to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call8.i.i.i, ptr %txq_memory, align 16
  %tobool87.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool87.not.i, label %do.end92.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end79.i
  %36 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trans_cfg.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %num_of_queues99212.i = getelementptr inbounds %struct.iwl_base_params, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %num_of_queues99212.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_of_queues99212.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp101214.not.i = icmp eq i16 %41, 0
  br i1 %cmp101214.not.i, label %for.cond.preheader.i.if.end4_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end4_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %q_id.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %cfg112.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  br label %for.body.i

do.end92.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %43, i32 noundef 0, ptr noundef nonnull @.str.33) #10
  br label %error.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %txq_id.0215.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %q_id.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %q_id.i, align 1
  %conv104.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %txq_id.0215.i, i32 %conv104.i)
  %cmp105.i = icmp eq i32 %txq_id.0215.i, %conv104.i
  %46 = ptrtoint ptr %cfg112.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg112.i, align 8
  br i1 %cmp105.i, label %if.then108.i, label %if.else.i

if.then108.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %min_txq_size.i = getelementptr inbounds %struct.iwl_cfg, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %min_txq_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %min_txq_size.i, align 4
  %50 = tail call i32 @llvm.umax.i32(i32 %49, i32 32) #10
  br label %if.end120.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %min_256_ba_txq_size.i = getelementptr inbounds %struct.iwl_cfg, ptr %47, i32 0, i32 35
  %51 = ptrtoint ptr %min_256_ba_txq_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %min_256_ba_txq_size.i, align 4
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 256) #10
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else.i, %if.then108.i
  %slots_num.0.i = phi i32 [ %50, %if.then108.i ], [ %53, %if.else.i ]
  %54 = ptrtoint ptr %txq_memory to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %txq_memory, align 16
  %arrayidx.i = getelementptr %struct.iwl_txq, ptr %55, i32 %txq_id.0215.i
  %arrayidx123.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id.0215.i
  %56 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx.i, ptr %arrayidx123.i, align 4
  %call128.i = tail call i32 @iwl_txq_alloc(ptr noundef %trans, ptr noundef %arrayidx.i, i32 noundef %slots_num.0.i, i1 noundef zeroext %cmp105.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool129.not.i = icmp eq i32 %call128.i, 0
  br i1 %tobool129.not.i, label %for.inc.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %58, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %txq_id.0215.i) #10
  br label %error.i

for.inc.i:                                        ; preds = %if.end120.i
  %59 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx123.i, align 4
  %id.i = getelementptr inbounds %struct.iwl_txq, ptr %60, i32 0, i32 19
  %61 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %txq_id.0215.i, ptr %id.i, align 4
  %inc.i = add nuw nsw i32 %txq_id.0215.i, 1
  %62 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %trans_cfg.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %num_of_queues99.i = getelementptr inbounds %struct.iwl_base_params, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %num_of_queues99.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_of_queues99.i, align 2
  %conv100.i = zext i16 %67 to i32
  %cmp101.i = icmp ult i32 %inc.i, %conv100.i
  br i1 %cmp101.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end4_crit_edge

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

error.i:                                          ; preds = %cleanup.i, %do.end92.i, %do.end75.i, %do.end65.i, %do.end41.i
  %ret.0.i = phi i32 [ -22, %do.end41.i ], [ %retval.0.i.ph.i, %do.end65.i ], [ %retval.0.i200.ph.i, %do.end75.i ], [ %call128.i, %cleanup.i ], [ -12, %do.end92.i ]
  tail call void @iwl_pcie_tx_free(ptr noundef %trans) #10
  br label %cleanup48

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %for.cond.preheader.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %irq_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #10
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10497040, i32 noundef 0, i32 noundef 0) #10
  %kw = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 192
  %68 = ptrtoint ptr %kw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %kw, align 4
  %shr = lshr i32 %69, 4
  tail call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 6524, i32 noundef %shr) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #10
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %70 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trans_cfg, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %num_of_queues101 = getelementptr inbounds %struct.iwl_base_params, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %num_of_queues101 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %num_of_queues101, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp103.not = icmp eq i16 %75, 0
  br i1 %cmp103.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %cfg14 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %txq_id.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %76 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %q_id, align 1
  %conv7 = zext i8 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %txq_id.0104, i32 %conv7)
  %cmp8 = icmp eq i32 %txq_id.0104, %conv7
  %78 = ptrtoint ptr %cfg14 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg14, align 8
  br i1 %cmp8, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %min_txq_size = getelementptr inbounds %struct.iwl_cfg, ptr %79, i32 0, i32 33
  %80 = ptrtoint ptr %min_txq_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %min_txq_size, align 4
  %82 = tail call i32 @llvm.umax.i32(i32 %81, i32 32)
  br label %if.end22

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %min_256_ba_txq_size = getelementptr inbounds %struct.iwl_cfg, ptr %79, i32 0, i32 35
  %83 = ptrtoint ptr %min_256_ba_txq_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %min_256_ba_txq_size, align 4
  %85 = tail call i32 @llvm.umax.i32(i32 %84, i32 256)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then11
  %slots_num.0 = phi i32 [ %82, %if.then11 ], [ %85, %if.else ]
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id.0104
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx, align 4
  %call25 = tail call i32 @iwl_txq_init(ptr noundef %trans, ptr noundef %87, i32 noundef %slots_num.0, i1 noundef zeroext %cmp8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %error

if.end31:                                         ; preds = %if.end22
  %88 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %trans_cfg, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %91 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool.not.i = icmp eq i16 %91, 0
  br i1 %tobool.not.i, label %if.end37.i, label %if.then.i

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %txq_id.0104)
  %cmp.i90 = icmp ugt i32 %txq_id.0104, 63
  br i1 %cmp.i90, label %land.rhs.i, label %if.then.i.for.inc_crit_edge

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs.i:                                       ; preds = %if.then.i
  %.b118.i = load i1, ptr @FH_MEM_CBBC_QUEUE.__already_done, align 1
  br i1 %.b118.i, label %land.rhs.i.for.inc_crit_edge, label %land.rhs.i.return.sink.split.i_crit_edge, !prof !143

land.rhs.i.return.sink.split.i_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end37.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %txq_id.0104)
  %cmp38.i = icmp ult i32 %txq_id.0104, 16
  br i1 %cmp38.i, label %if.end37.i.for.inc_crit_edge, label %if.end42.i

if.end37.i.for.inc_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end42.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %txq_id.0104)
  %cmp43.i = icmp ult i32 %txq_id.0104, 20
  br i1 %cmp43.i, label %if.end42.i.for.inc_crit_edge, label %if.end47.i

if.end42.i.for.inc_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end47.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %txq_id.0104)
  %cmp49.i = icmp ugt i32 %txq_id.0104, 31
  br i1 %cmp49.i, label %land.rhs56.i, label %if.end47.i.for.inc_crit_edge

if.end47.i.for.inc_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs56.i:                                     ; preds = %if.end47.i
  %.b116117.i = load i1, ptr @FH_MEM_CBBC_QUEUE.__already_done.24, align 1
  br i1 %.b116117.i, label %land.rhs56.i.for.inc_crit_edge, label %land.rhs56.i.return.sink.split.i_crit_edge, !prof !143

land.rhs56.i.return.sink.split.i_crit_edge:       ; preds = %land.rhs56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

land.rhs56.i.for.inc_crit_edge:                   ; preds = %land.rhs56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

return.sink.split.i:                              ; preds = %land.rhs56.i.return.sink.split.i_crit_edge, %land.rhs.i.return.sink.split.i_crit_edge
  %FH_MEM_CBBC_QUEUE.__already_done.24.sink.i = phi ptr [ @FH_MEM_CBBC_QUEUE.__already_done, %land.rhs.i.return.sink.split.i_crit_edge ], [ @FH_MEM_CBBC_QUEUE.__already_done.24, %land.rhs56.i.return.sink.split.i_crit_edge ]
  %.sink120.i = phi i32 [ 75, %land.rhs.i.return.sink.split.i_crit_edge ], [ 82, %land.rhs56.i.return.sink.split.i_crit_edge ]
  %.sink119.ph.i = phi i32 [ 3, %land.rhs.i.return.sink.split.i_crit_edge ], [ 2, %land.rhs56.i.return.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 7168, %land.rhs.i.return.sink.split.i_crit_edge ], [ 6864, %land.rhs56.i.return.sink.split.i_crit_edge ]
  %92 = ptrtoint ptr %FH_MEM_CBBC_QUEUE.__already_done.24.sink.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i1 true, ptr %FH_MEM_CBBC_QUEUE.__already_done.24.sink.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef %.sink120.i, i32 noundef 9, ptr noundef null) #10
  br label %for.inc

for.inc:                                          ; preds = %return.sink.split.i, %land.rhs56.i.for.inc_crit_edge, %if.end47.i.for.inc_crit_edge, %if.end42.i.for.inc_crit_edge, %if.end37.i.for.inc_crit_edge, %land.rhs.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge
  %.sink119.i = phi i32 [ 3, %if.then.i.for.inc_crit_edge ], [ 3, %land.rhs.i.for.inc_crit_edge ], [ 2, %if.end37.i.for.inc_crit_edge ], [ 2, %if.end42.i.for.inc_crit_edge ], [ 2, %if.end47.i.for.inc_crit_edge ], [ 2, %land.rhs56.i.for.inc_crit_edge ], [ %.sink119.ph.i, %return.sink.split.i ]
  %.sink.i = phi i32 [ 7168, %if.then.i.for.inc_crit_edge ], [ 7168, %land.rhs.i.for.inc_crit_edge ], [ 6608, %if.end37.i.for.inc_crit_edge ], [ 7088, %if.end42.i.for.inc_crit_edge ], [ 6864, %if.end47.i.for.inc_crit_edge ], [ 6864, %land.rhs56.i.for.inc_crit_edge ], [ %.sink.ph.i, %return.sink.split.i ]
  %sub102.i = shl i32 %txq_id.0104, %.sink119.i
  %add104.i = add i32 %sub102.i, %.sink.i
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx, align 4
  %dma_addr = getelementptr inbounds %struct.iwl_txq, ptr %94, i32 0, i32 17
  %95 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_addr, align 4
  %shr36 = lshr i32 %96, 8
  tail call void @iwl_write_direct32(ptr noundef %trans, i32 noundef %add104.i, i32 noundef %shr36) #10
  %inc = add nuw nsw i32 %txq_id.0104, 1
  %97 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %trans_cfg, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %102 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  tail call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 10497448, i32 noundef 262144) #10
  %103 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %trans_cfg, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %num_of_queues39 = getelementptr inbounds %struct.iwl_base_params, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %num_of_queues39 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %num_of_queues39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %108)
  %cmp41 = icmp ugt i16 %108, 20
  br i1 %cmp41, label %if.then43, label %for.end.cleanup48_crit_edge

for.end.cleanup48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 10497448, i32 noundef 1) #10
  br label %cleanup48

error:                                            ; preds = %if.end22
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %110, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %txq_id.0104) #10
  br i1 %tobool.not, label %if.then46, label %error.cleanup48_crit_edge

error.cleanup48_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.then46:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwl_pcie_tx_free(ptr noundef %trans)
  br label %cleanup48

cleanup48:                                        ; preds = %if.then46, %error.cleanup48_crit_edge, %if.then43, %for.end.cleanup48_crit_edge, %error.i, %do.end.i
  %retval.0 = phi i32 [ 0, %if.then43 ], [ 0, %for.end.cleanup48_crit_edge ], [ %call25, %if.then46 ], [ %call25, %error.cleanup48_crit_edge ], [ %ret.0.i, %error.i ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_txq_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_bits_prph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iwl_trans_pcie_txq_enable(ptr noundef %trans, i32 noundef %txq_id, i16 noundef zeroext %ssn, ptr noundef readonly %cfg, i32 noundef %wdg_timeout) local_unnamed_addr #0 align 64 {
entry:
  %val.addr.i284 = alloca i32, align 4
  %val.addr.i = alloca i32, align 4
  %val.addr.i.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef %txq_id, ptr noundef %txqs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.else.i_crit_edge, label %land.end

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.end:                                         ; preds = %entry
  %.b271 = load i1, ptr @iwl_trans_pcie_txq_enable.__already_done, align 1
  br i1 %.b271, label %land.end.if.else.i_crit_edge, label %if.then9, !prof !143

land.end.if.else.i_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_pcie_txq_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 744, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %txq_id) #10
  br label %if.else.i

if.else.i:                                        ; preds = %if.then9, %land.end.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %wdg_timeout) #10
  %wd_timeout = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %wd_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2.i, ptr %wd_timeout, align 4
  %tobool40.not = icmp eq ptr %cfg, null
  br i1 %tobool40.not, label %if.else71, label %if.then41

if.then41:                                        ; preds = %if.else.i
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cfg, align 4
  %conv = zext i8 %4 to i32
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %5 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %q_id, align 1
  %conv44 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv44, i32 %txq_id)
  %cmp = icmp eq i32 %conv44, %txq_id
  br i1 %cmp, label %land.lhs.true, label %if.then41.if.end49_crit_edge

if.then41.if.end49_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true:                                    ; preds = %if.then41
  %scd_set_active = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 235
  %7 = ptrtoint ptr %scd_set_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scd_set_active, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool46.not = icmp eq i8 %8, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end49_crit_edge, label %if.then48

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10497620, i32 noundef 0, i32 noundef 0) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.lhs.true.if.end49_crit_edge, %if.then41.if.end49_crit_edge
  %conv50 = trunc i32 %txq_id to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %conv50)
  %cmp.i.i = icmp ult i16 %conv50, 20
  br i1 %cmp.i.i, label %if.end49.iwl_scd_txq_set_inactive.exit_crit_edge, label %if.end.i.i

if.end49.iwl_scd_txq_set_inactive.exit_crit_edge: ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_scd_txq_set_inactive.exit

if.end.i.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %conv50)
  %cmp1.i.i = icmp ugt i16 %conv50, 31
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.end.i.i.iwl_scd_txq_set_inactive.exit_crit_edge

if.end.i.i.iwl_scd_txq_set_inactive.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_scd_txq_set_inactive.exit

land.rhs.i.i:                                     ; preds = %if.end.i.i
  %.b45.i.i = load i1, ptr @SCD_QUEUE_STATUS_BITS.__already_done, align 1
  br i1 %.b45.i.i, label %land.rhs.i.i.iwl_scd_txq_set_inactive.exit_crit_edge, label %if.then8.i.i, !prof !143

land.rhs.i.i.iwl_scd_txq_set_inactive.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_scd_txq_set_inactive.exit

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @SCD_QUEUE_STATUS_BITS.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 72, i32 noundef 9, ptr noundef null) #10
  br label %iwl_scd_txq_set_inactive.exit

iwl_scd_txq_set_inactive.exit:                    ; preds = %if.then8.i.i, %land.rhs.i.i.iwl_scd_txq_set_inactive.exit_crit_edge, %if.end.i.i.iwl_scd_txq_set_inactive.exit_crit_edge, %if.end49.iwl_scd_txq_set_inactive.exit_crit_edge
  %.sink.i.i = phi i32 [ 10497292, %if.end49.iwl_scd_txq_set_inactive.exit_crit_edge ], [ 10497844, %if.end.i.i.iwl_scd_txq_set_inactive.exit_crit_edge ], [ 10497844, %if.then8.i.i ], [ 10497844, %land.rhs.i.i.iwl_scd_txq_set_inactive.exit_crit_edge ]
  %conv.i = and i32 %txq_id, 65535
  %mul38.i.i = shl nuw nsw i32 %conv.i, 2
  %add39.i.i = add nuw nsw i32 %.sink.i.i, %mul38.i.i
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add39.i.i, i32 noundef 524288, i32 noundef 0) #10
  %9 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %q_id, align 1
  %conv54 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv54, i32 %txq_id)
  %cmp55.not = icmp eq i32 %conv54, %txq_id
  br i1 %cmp55.not, label %iwl_scd_txq_set_inactive.exit.if.end59_crit_edge, label %if.then57

iwl_scd_txq_set_inactive.exit.if.end59_crit_edge: ; preds = %iwl_scd_txq_set_inactive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %iwl_scd_txq_set_inactive.exit
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw i32 1, %conv.i
  tail call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 10497256, i32 noundef %shl.i) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %iwl_scd_txq_set_inactive.exit.if.end59_crit_edge
  %aggregate = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 3
  %11 = ptrtoint ptr %aggregate to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aggregate, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool60.not = icmp eq i8 %12, 0
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end59
  %sta_id = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 1
  %13 = ptrtoint ptr %sta_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sta_id, align 1
  %conv62 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv62, 4
  %tid = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 2
  %15 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tid, align 2
  %conv63 = zext i8 %16 to i32
  %add = add nuw nsw i32 %shl, %conv63
  %scd_base_addr.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 191
  %17 = ptrtoint ptr %scd_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scd_base_addr.i, align 8
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add.i = add nuw nsw i32 %mul.i, 2016
  %and3.i = and i32 %add.i, 65532
  %add4.i = add i32 %18, %and3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #10
  %19 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %value.i.i, align 4, !annotation !146
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %20 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i.i, align 4
  %read_mem.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %read_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_mem.i.i.i, align 4
  %call.i.i.i = call i32 %23(ptr noundef %trans, i32 noundef %add4.i, ptr noundef nonnull %value.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end22.i.i, label %do.end.i.i, !prof !143

do.end.i.i:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1375, i32 noundef 9, ptr noundef null) #10
  br label %iwl_pcie_txq_set_ratid_map.exit

if.end22.i.i:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value.i.i, align 4
  br label %iwl_pcie_txq_set_ratid_map.exit

iwl_pcie_txq_set_ratid_map.exit:                  ; preds = %if.end22.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ -1515870811, %do.end.i.i ], [ %25, %if.end22.i.i ]
  %26 = and i32 %add, 511
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #10
  %and7.i = and i32 %txq_id, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  %shl.i276 = shl nuw nsw i32 %26, 16
  %.sink.i = select i1 %tobool.not.i, i32 -65536, i32 65535
  %conv10.sink.i = select i1 %tobool.not.i, i32 %26, i32 %shl.i276
  %and11.i = and i32 %retval.0.i.i, %.sink.i
  %or12.i = or i32 %and11.i, %conv10.sink.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i.i) #10
  %27 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or12.i, ptr %val.addr.i.i, align 4
  %28 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i.i, align 4
  %write_mem.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %write_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_mem.i.i.i, align 4
  %call.i.i2.i = call i32 %31(ptr noundef %trans, i32 noundef %add4.i, ptr noundef nonnull %val.addr.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i.i) #10
  %shl.i278 = shl nuw i32 1, %conv.i
  call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 10497608, i32 noundef %shl.i278) #10
  %ampdu = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %ampdu to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %ampdu, align 2
  br label %if.end85

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i280 = shl nuw i32 1, %conv.i
  tail call void @iwl_clear_bits_prph(ptr noundef %trans, i32 noundef 10497608, i32 noundef %shl.i280) #10
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 16
  %33 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %read_ptr, align 4
  %conv69 = trunc i32 %34 to i16
  br label %if.end85

if.else71:                                        ; preds = %if.else.i
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %35 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans_cfg, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load = load i16, ptr %mq_rx_supported, align 4
  %38 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool72.not = icmp eq i16 %38, 0
  br i1 %tobool72.not, label %land.end81, label %if.else71.if.end85_crit_edge

if.else71.if.end85_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.end81:                                       ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  %conv74 = zext i16 %ssn to i32
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 15
  %39 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %write_ptr, align 4
  %sub = sub i32 %conv74, %40
  %and = and i32 %sub, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv74)
  %cmp79 = icmp ne i32 %40, %conv74
  %spec.select = select i1 %tobool75.not, i1 %cmp79, i1 false
  %inc = zext i1 %spec.select to i16
  %spec.select299 = add i16 %inc, %ssn
  br label %if.end85

if.end85:                                         ; preds = %land.end81, %if.else71.if.end85_crit_edge, %if.else, %iwl_pcie_txq_set_ratid_map.exit
  %scd_bug.0.shrunk = phi i1 [ false, %iwl_pcie_txq_set_ratid_map.exit ], [ false, %if.else ], [ false, %if.else71.if.end85_crit_edge ], [ %spec.select, %land.end81 ]
  %fifo.0 = phi i32 [ %conv, %iwl_pcie_txq_set_ratid_map.exit ], [ %conv, %if.else ], [ -1, %if.else71.if.end85_crit_edge ], [ -1, %land.end81 ]
  %ssn.addr.0 = phi i16 [ %ssn, %iwl_pcie_txq_set_ratid_map.exit ], [ %conv69, %if.else ], [ %ssn, %if.else71.if.end85_crit_edge ], [ %spec.select299, %land.end81 ]
  %conv86 = zext i16 %ssn.addr.0 to i32
  %and87 = and i32 %conv86, 255
  %read_ptr88 = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 16
  %41 = ptrtoint ptr %read_ptr88 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and87, ptr %read_ptr88, align 4
  %write_ptr91 = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 15
  %42 = ptrtoint ptr %write_ptr91 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and87, ptr %write_ptr91, align 4
  %shl94 = shl i32 %txq_id, 8
  %or = or i32 %and87, %shl94
  call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 1120, i32 noundef %or) #10
  br i1 %tobool40.not, label %do.end193, label %if.then96

if.then96:                                        ; preds = %if.end85
  %frame_limit97 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg, i32 0, i32 4
  %43 = ptrtoint ptr %frame_limit97 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frame_limit97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %txq_id)
  %cmp.i281 = icmp ult i32 %txq_id, 20
  br i1 %cmp.i281, label %if.then96.SCD_QUEUE_RDPTR.exit_crit_edge, label %if.end.i282

if.then96.SCD_QUEUE_RDPTR.exit_crit_edge:         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %SCD_QUEUE_RDPTR.exit

if.end.i282:                                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %txq_id)
  %cmp1.i = icmp ugt i32 %txq_id, 31
  br i1 %cmp1.i, label %land.rhs.i, label %if.end.i282.SCD_QUEUE_RDPTR.exit_crit_edge

if.end.i282.SCD_QUEUE_RDPTR.exit_crit_edge:       ; preds = %if.end.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %SCD_QUEUE_RDPTR.exit

land.rhs.i:                                       ; preds = %if.end.i282
  %.b45.i = load i1, ptr @SCD_QUEUE_RDPTR.__already_done, align 1
  br i1 %.b45.i, label %land.rhs.i.SCD_QUEUE_RDPTR.exit_crit_edge, label %if.then8.i, !prof !143

land.rhs.i.SCD_QUEUE_RDPTR.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %SCD_QUEUE_RDPTR.exit

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @SCD_QUEUE_RDPTR.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 64, i32 noundef 9, ptr noundef null) #10
  br label %SCD_QUEUE_RDPTR.exit

SCD_QUEUE_RDPTR.exit:                             ; preds = %if.then8.i, %land.rhs.i.SCD_QUEUE_RDPTR.exit_crit_edge, %if.end.i282.SCD_QUEUE_RDPTR.exit_crit_edge, %if.then96.SCD_QUEUE_RDPTR.exit_crit_edge
  %.sink.i283 = phi i32 [ 10497128, %if.then96.SCD_QUEUE_RDPTR.exit_crit_edge ], [ 10497716, %if.end.i282.SCD_QUEUE_RDPTR.exit_crit_edge ], [ 10497716, %if.then8.i ], [ 10497716, %land.rhs.i.SCD_QUEUE_RDPTR.exit_crit_edge ]
  %mul38.i = shl i32 %txq_id, 2
  %add39.i = add i32 %.sink.i283, %mul38.i
  call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add39.i, i32 noundef %conv86, i32 noundef 0) #10
  %scd_base_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 191
  %45 = ptrtoint ptr %scd_base_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %scd_base_addr, align 8
  %mul = shl i32 %txq_id, 3
  %add101 = add i32 %mul, 1536
  %add102 = add i32 %46, %add101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i)
  %47 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %val.addr.i, align 4
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %48 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i, align 4
  %write_mem.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %write_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_mem.i.i, align 4
  %call.i.i = call i32 %51(ptr noundef %trans, i32 noundef %add102, ptr noundef nonnull %val.addr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i)
  %52 = ptrtoint ptr %scd_base_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scd_base_addr, align 8
  %add107 = add i32 %mul, 1540
  %add108 = add i32 %add107, %53
  %and132 = and i32 %44, 127
  %conv130 = shl i32 %44, 16
  %and158 = and i32 %conv130, 8323072
  %or159 = or i32 %and158, %and132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i284)
  %54 = ptrtoint ptr %val.addr.i284 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or159, ptr %val.addr.i284, align 4
  %55 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i.i, align 4
  %write_mem.i.i286 = getelementptr inbounds %struct.iwl_trans_ops, ptr %56, i32 0, i32 27
  %57 = ptrtoint ptr %write_mem.i.i286 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_mem.i.i286, align 4
  %call.i.i287 = call i32 %58(ptr noundef %trans, i32 noundef %add108, ptr noundef nonnull %val.addr.i284, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i284)
  br i1 %cmp.i281, label %SCD_QUEUE_RDPTR.exit.SCD_QUEUE_STATUS_BITS.exit_crit_edge, label %if.end.i290

SCD_QUEUE_RDPTR.exit.SCD_QUEUE_STATUS_BITS.exit_crit_edge: ; preds = %SCD_QUEUE_RDPTR.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %SCD_QUEUE_STATUS_BITS.exit

if.end.i290:                                      ; preds = %SCD_QUEUE_RDPTR.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %txq_id)
  %cmp1.i289 = icmp ugt i32 %txq_id, 31
  br i1 %cmp1.i289, label %land.rhs.i292, label %if.end.i290.SCD_QUEUE_STATUS_BITS.exit_crit_edge

if.end.i290.SCD_QUEUE_STATUS_BITS.exit_crit_edge: ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #12
  br label %SCD_QUEUE_STATUS_BITS.exit

land.rhs.i292:                                    ; preds = %if.end.i290
  %.b45.i291 = load i1, ptr @SCD_QUEUE_STATUS_BITS.__already_done, align 1
  br i1 %.b45.i291, label %land.rhs.i292.SCD_QUEUE_STATUS_BITS.exit_crit_edge, label %if.then8.i293, !prof !143

land.rhs.i292.SCD_QUEUE_STATUS_BITS.exit_crit_edge: ; preds = %land.rhs.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %SCD_QUEUE_STATUS_BITS.exit

if.then8.i293:                                    ; preds = %land.rhs.i292
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @SCD_QUEUE_STATUS_BITS.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 72, i32 noundef 9, ptr noundef null) #10
  br label %SCD_QUEUE_STATUS_BITS.exit

SCD_QUEUE_STATUS_BITS.exit:                       ; preds = %if.then8.i293, %land.rhs.i292.SCD_QUEUE_STATUS_BITS.exit_crit_edge, %if.end.i290.SCD_QUEUE_STATUS_BITS.exit_crit_edge, %SCD_QUEUE_RDPTR.exit.SCD_QUEUE_STATUS_BITS.exit_crit_edge
  %.sink.i294 = phi i32 [ 10497292, %SCD_QUEUE_RDPTR.exit.SCD_QUEUE_STATUS_BITS.exit_crit_edge ], [ 10497844, %if.end.i290.SCD_QUEUE_STATUS_BITS.exit_crit_edge ], [ 10497844, %if.then8.i293 ], [ 10497844, %land.rhs.i292.SCD_QUEUE_STATUS_BITS.exit_crit_edge ]
  %add39.i296 = add i32 %.sink.i294, %mul38.i
  %59 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %cfg, align 4
  %or166 = zext i8 %60 to i32
  %or167 = or i32 %or166, 25100312
  call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add39.i296, i32 noundef %or167, i32 noundef 0) #10
  %q_id170 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %61 = ptrtoint ptr %q_id170 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %q_id170, align 1
  %conv171 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv171, i32 %txq_id)
  %cmp172 = icmp eq i32 %conv171, %txq_id
  br i1 %cmp172, label %land.lhs.true174, label %SCD_QUEUE_STATUS_BITS.exit.do.end184_crit_edge

SCD_QUEUE_STATUS_BITS.exit.do.end184_crit_edge:   ; preds = %SCD_QUEUE_STATUS_BITS.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end184

land.lhs.true174:                                 ; preds = %SCD_QUEUE_STATUS_BITS.exit
  %scd_set_active175 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 235
  %63 = ptrtoint ptr %scd_set_active175 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %scd_set_active175, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool176.not = icmp eq i8 %64, 0
  br i1 %tobool176.not, label %land.lhs.true174.do.end184_crit_edge, label %if.then178

land.lhs.true174.do.end184_crit_edge:             ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end184

if.then178:                                       ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #12
  %shl179 = shl nuw i32 1, %txq_id
  call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10497620, i32 noundef %shl179, i32 noundef 0) #10
  br label %do.end184

do.end184:                                        ; preds = %if.then178, %land.lhs.true174.do.end184_crit_edge, %SCD_QUEUE_STATUS_BITS.exit.do.end184_crit_edge
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %66, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_pcie_txq_enable, ptr noundef nonnull @.str.3, i32 noundef %txq_id, i32 noundef %fifo.0, i32 noundef %and87) #10
  br label %if.end199

do.end193:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %dev194 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %67 = ptrtoint ptr %dev194 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev194, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %68, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_pcie_txq_enable, ptr noundef nonnull @.str.4, i32 noundef %txq_id, i32 noundef %and87) #10
  br label %if.end199

if.end199:                                        ; preds = %do.end193, %do.end184
  ret i1 %scd_bug.0.shrunk
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iwl_trans_pcie_txq_set_shared_mode(ptr nocapture noundef readonly %trans, i32 noundef %txq_id, i1 noundef zeroext %shared_mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %lnot = xor i1 %shared_mode, true
  %ampdu = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 10
  %frombool2 = zext i1 %lnot to i8
  %2 = ptrtoint ptr %ampdu to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool2, ptr %ampdu, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_pcie_txq_disable(ptr noundef %trans, i32 noundef %txq_id, i1 noundef zeroext %configure_scd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %scd_base_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 191
  %0 = ptrtoint ptr %scd_base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scd_base_addr, align 8
  %mul = shl i32 %txq_id, 4
  %add = add i32 %mul, 1696
  %add1 = add i32 %add, %1
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %frozen_expiry_remainder = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %frozen_expiry_remainder to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %frozen_expiry_remainder, align 4
  %5 = load ptr, ptr %arrayidx, align 4
  %frozen = getelementptr inbounds %struct.iwl_txq, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %frozen to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %frozen, align 1
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef %txq_id, ptr noundef %txqs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %if.end46

if.then:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.then.cleanup_crit_edge, label %land.rhs

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %if.then
  %.b80 = load i1, ptr @iwl_trans_pcie_txq_disable.__already_done, align 1
  br i1 %.b80, label %land.rhs.cleanup_crit_edge, label %if.then17, !prof !143

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_pcie_txq_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 873, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %txq_id) #10
  br label %cleanup

if.end46:                                         ; preds = %entry
  br i1 %configure_scd, label %if.then48, label %if.end46.if.end50_crit_edge

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then48:                                        ; preds = %if.end46
  %conv = trunc i32 %txq_id to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %conv)
  %cmp.i.i = icmp ult i16 %conv, 20
  br i1 %cmp.i.i, label %if.then48.iwl_scd_txq_set_inactive.exit_crit_edge, label %if.end.i.i

if.then48.iwl_scd_txq_set_inactive.exit_crit_edge: ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_scd_txq_set_inactive.exit

if.end.i.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %conv)
  %cmp1.i.i = icmp ugt i16 %conv, 31
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.end.i.i.iwl_scd_txq_set_inactive.exit_crit_edge

if.end.i.i.iwl_scd_txq_set_inactive.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_scd_txq_set_inactive.exit

land.rhs.i.i:                                     ; preds = %if.end.i.i
  %.b45.i.i = load i1, ptr @SCD_QUEUE_STATUS_BITS.__already_done, align 1
  br i1 %.b45.i.i, label %land.rhs.i.i.iwl_scd_txq_set_inactive.exit_crit_edge, label %if.then8.i.i, !prof !143

land.rhs.i.i.iwl_scd_txq_set_inactive.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_scd_txq_set_inactive.exit

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @SCD_QUEUE_STATUS_BITS.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 72, i32 noundef 9, ptr noundef null) #10
  br label %iwl_scd_txq_set_inactive.exit

iwl_scd_txq_set_inactive.exit:                    ; preds = %if.then8.i.i, %land.rhs.i.i.iwl_scd_txq_set_inactive.exit_crit_edge, %if.end.i.i.iwl_scd_txq_set_inactive.exit_crit_edge, %if.then48.iwl_scd_txq_set_inactive.exit_crit_edge
  %.sink.i.i = phi i32 [ 10497292, %if.then48.iwl_scd_txq_set_inactive.exit_crit_edge ], [ 10497844, %if.end.i.i.iwl_scd_txq_set_inactive.exit_crit_edge ], [ 10497844, %if.then8.i.i ], [ 10497844, %land.rhs.i.i.iwl_scd_txq_set_inactive.exit_crit_edge ]
  %conv.i = shl i32 %txq_id, 2
  %mul38.i.i = and i32 %conv.i, 262140
  %add39.i.i = add nuw nsw i32 %.sink.i.i, %mul38.i.i
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add39.i.i, i32 noundef 524288, i32 noundef 0) #10
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %write_mem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_mem.i, align 4
  %call.i = tail call i32 %13(ptr noundef %trans, i32 noundef %add1, ptr noundef nonnull @iwl_trans_pcie_txq_disable.zero_val, i32 noundef 4) #10
  br label %if.end50

if.end50:                                         ; preds = %iwl_scd_txq_set_inactive.exit, %if.end46.if.end50_crit_edge
  tail call fastcc void @iwl_pcie_txq_unmap(ptr noundef %trans, i32 noundef %txq_id)
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %ampdu = getelementptr inbounds %struct.iwl_txq, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %ampdu to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ampdu, align 2
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_pcie_txq_disable, ptr noundef nonnull @.str.6, i32 noundef %txq_id) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then17, %land.rhs.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_enqueue_hcmd(ptr noundef %trans, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %cmddata = alloca [2 x ptr], align 4
  %cmdlen = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %0 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %q_id, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %and.i = lshr i32 %5, 8
  %conv.i = trunc i32 %and.i to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmddata) #10
  %6 = getelementptr inbounds [2 x ptr], ptr %cmddata, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmdlen) #10
  %7 = getelementptr inbounds [2 x i16], ptr %cmdlen, i32 0, i32 1
  %wide_cmd_header = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 23
  %8 = ptrtoint ptr %wide_cmd_header to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wide_cmd_header, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i)
  %cmp = icmp ugt i8 %conv.i, 1
  %spec.select = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %spec.select, label %do.end, label %if.end27, !prof !144

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 921, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %5) #10
  br label %cleanup586

if.end27:                                         ; preds = %entry
  %conv28 = and i32 %and.i, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp29.not = icmp eq i8 %conv.i, 0
  %. = select i1 %cmp29.not, i16 4, i16 8
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 4
  %12 = ptrtoint ptr %cmddata to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %cmddata, align 4
  %arrayidx40 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 0
  %13 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx40, align 2
  %15 = ptrtoint ptr %cmdlen to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %cmdlen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool44.not = icmp eq i16 %14, 0
  br i1 %tobool44.not, label %if.end27.for.inc_crit_edge, label %if.end67

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end67:                                         ; preds = %if.end27
  %narrow = sub nuw nsw i16 20, %.
  %sub = zext i16 %narrow to i32
  %conv53 = zext i16 %14 to i32
  %16 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %conv53)
  %17 = trunc i32 %16 to i16
  %conv63 = sub i16 %14, %17
  %18 = ptrtoint ptr %cmdlen to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv63, ptr %cmdlen, align 2
  %add.ptr = getelementptr i8, ptr %11, i32 %16
  %19 = ptrtoint ptr %cmddata to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %cmddata, align 4
  %conv66 = add nuw nsw i16 %., %17
  %arrayidx68 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 0
  %20 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %21 to i32
  %and = and i32 %conv69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  %and114 = and i32 %conv69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool70.not, label %if.else110, label %if.then71

if.then71:                                        ; preds = %if.end67
  br i1 %tobool115.not, label %if.then71.if.end199_crit_edge, label %if.then71.do.end93_crit_edge, !prof !143

if.then71.do.end93_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

if.then71.if.end199_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

do.end93:                                         ; preds = %if.then71.1.do.end93_crit_edge, %if.then71.do.end93_crit_edge
  %dup_buf.0963.lcssa = phi ptr [ null, %if.then71.do.end93_crit_edge ], [ %dup_buf.2, %if.then71.1.do.end93_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 955, i32 noundef 9, ptr noundef null) #10
  br label %if.then584

if.else110:                                       ; preds = %if.end67
  br i1 %tobool115.not, label %if.end192, label %if.end150

do.end134:                                        ; preds = %if.then116.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 967, i32 noundef 9, ptr noundef null) #10
  br label %if.then584

if.end150:                                        ; preds = %if.else110
  %22 = ptrtoint ptr %cmddata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmddata, align 4
  %24 = ptrtoint ptr %cmdlen to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cmdlen, align 2
  %conv153 = zext i16 %25 to i32
  %call154 = tail call ptr @kmemdup(ptr noundef %23, i32 noundef %conv153, i32 noundef 2592) #10
  %tobool155.not = icmp eq ptr %call154, null
  br i1 %tobool155.not, label %if.end150.cleanup586_crit_edge, label %if.end150.if.end199_crit_edge

if.end150.if.end199_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.end150.cleanup586_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup586

do.end176:                                        ; preds = %if.else158.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 978, i32 noundef 9, ptr noundef null) #10
  br label %if.then584

if.end192:                                        ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %cmdlen to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cmdlen, align 2
  %add196 = add i16 %27, %conv66
  br label %if.end199

if.end199:                                        ; preds = %if.end192, %if.end150.if.end199_crit_edge, %if.then71.if.end199_crit_edge
  %had_nocopy.1.off0 = phi i1 [ true, %if.end150.if.end199_crit_edge ], [ false, %if.end192 ], [ true, %if.then71.if.end199_crit_edge ]
  %copy_size.3 = phi i16 [ %conv66, %if.end150.if.end199_crit_edge ], [ %add196, %if.end192 ], [ %conv66, %if.then71.if.end199_crit_edge ]
  %dup_buf.1 = phi ptr [ %call154, %if.end150.if.end199_crit_edge ], [ null, %if.end192 ], [ null, %if.then71.if.end199_crit_edge ]
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx40, align 2
  %add204 = add i16 %29, %.
  br label %for.inc

for.inc:                                          ; preds = %if.end199, %if.end27.for.inc_crit_edge
  %had_nocopy.2.off0 = phi i1 [ %had_nocopy.1.off0, %if.end199 ], [ false, %if.end27.for.inc_crit_edge ]
  %cmd_size.2 = phi i16 [ %add204, %if.end199 ], [ %., %if.end27.for.inc_crit_edge ]
  %copy_size.4 = phi i16 [ %copy_size.3, %if.end199 ], [ %., %if.end27.for.inc_crit_edge ]
  %dup_buf.2 = phi ptr [ %dup_buf.1, %if.end199 ], [ null, %if.end27.for.inc_crit_edge ]
  %arrayidx38.1 = getelementptr [2 x ptr], ptr %cmd, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx38.1, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %6, align 4
  %arrayidx40.1 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx40.1, align 2
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool44.not.1 = icmp eq i16 %34, 0
  br i1 %tobool44.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end46.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end46.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %copy_size.4)
  %cmp48.1 = icmp ult i16 %copy_size.4, 20
  br i1 %cmp48.1, label %if.then50.1, label %if.end46.1.if.end67.1_crit_edge

if.end46.1.if.end67.1_crit_edge:                  ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.1

if.then50.1:                                      ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #12
  %conv47.1 = zext i16 %copy_size.4 to i32
  %sub.1 = sub nsw i32 20, %conv47.1
  %conv53.1 = zext i16 %34 to i32
  %36 = tail call i32 @llvm.smin.i32(i32 %sub.1, i32 %conv53.1)
  %37 = trunc i32 %36 to i16
  %conv63.1 = sub i16 %34, %37
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv63.1, ptr %7, align 2
  %add.ptr.1 = getelementptr i8, ptr %31, i32 %36
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.1, ptr %6, align 4
  %conv66.1 = add i16 %copy_size.4, %37
  br label %if.end67.1

if.end67.1:                                       ; preds = %if.then50.1, %if.end46.1.if.end67.1_crit_edge
  %copy_size.2.1 = phi i16 [ %conv66.1, %if.then50.1 ], [ %copy_size.4, %if.end46.1.if.end67.1_crit_edge ]
  %arrayidx68.1 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx68.1, align 1
  %conv69.1 = zext i8 %41 to i32
  %and.1 = and i32 %conv69.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool70.not.1 = icmp eq i32 %and.1, 0
  %and114.1 = and i32 %conv69.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.1)
  %tobool115.not.1 = icmp eq i32 %and114.1, 0
  br i1 %tobool70.not.1, label %if.else110.1, label %if.then71.1

if.then71.1:                                      ; preds = %if.end67.1
  br i1 %tobool115.not.1, label %if.then71.1.if.end199.1_crit_edge, label %if.then71.1.do.end93_crit_edge, !prof !143

if.then71.1.do.end93_crit_edge:                   ; preds = %if.then71.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

if.then71.1.if.end199.1_crit_edge:                ; preds = %if.then71.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199.1

if.else110.1:                                     ; preds = %if.end67.1
  br i1 %tobool115.not.1, label %if.else158.1, label %if.then116.1

if.then116.1:                                     ; preds = %if.else110.1
  %tobool118.not.1 = icmp eq ptr %dup_buf.2, null
  br i1 %tobool118.not.1, label %if.end150.1, label %do.end134, !prof !143

if.end150.1:                                      ; preds = %if.then116.1
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %6, align 4
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %7, align 2
  %conv153.1 = zext i16 %45 to i32
  %call154.1 = tail call ptr @kmemdup(ptr noundef %43, i32 noundef %conv153.1, i32 noundef 2592) #10
  %tobool155.not.1 = icmp eq ptr %call154.1, null
  br i1 %tobool155.not.1, label %if.end150.1.cleanup586_crit_edge, label %if.end150.1.if.end199.1_crit_edge

if.end150.1.if.end199.1_crit_edge:                ; preds = %if.end150.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199.1

if.end150.1.cleanup586_crit_edge:                 ; preds = %if.end150.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup586

if.else158.1:                                     ; preds = %if.else110.1
  br i1 %had_nocopy.2.off0, label %do.end176, label %if.end192.1, !prof !144

if.end192.1:                                      ; preds = %if.else158.1
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %7, align 2
  %add196.1 = add i16 %47, %copy_size.2.1
  br label %if.end199.1

if.end199.1:                                      ; preds = %if.end192.1, %if.end150.1.if.end199.1_crit_edge, %if.then71.1.if.end199.1_crit_edge
  %copy_size.3.1 = phi i16 [ %copy_size.2.1, %if.end150.1.if.end199.1_crit_edge ], [ %add196.1, %if.end192.1 ], [ %copy_size.2.1, %if.then71.1.if.end199.1_crit_edge ]
  %dup_buf.1.1 = phi ptr [ %call154.1, %if.end150.1.if.end199.1_crit_edge ], [ %dup_buf.2, %if.end192.1 ], [ %dup_buf.2, %if.then71.1.if.end199.1_crit_edge ]
  %48 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx40.1, align 2
  %add204.1 = add i16 %49, %cmd_size.2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end199.1, %for.inc.for.inc.1_crit_edge
  %cmd_size.2.1 = phi i16 [ %add204.1, %if.end199.1 ], [ %cmd_size.2, %for.inc.for.inc.1_crit_edge ]
  %copy_size.4.1 = phi i16 [ %copy_size.3.1, %if.end199.1 ], [ %copy_size.4, %for.inc.for.inc.1_crit_edge ]
  %dup_buf.2.1 = phi ptr [ %dup_buf.1.1, %if.end199.1 ], [ %dup_buf.2, %for.inc.for.inc.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 324, i16 %copy_size.4.1)
  %cmp208 = icmp ugt i16 %copy_size.4.1, 324
  br i1 %cmp208, label %do.end225, label %do.body247, !prof !144

do.end225:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %conv207 = zext i16 %copy_size.4.1 to i32
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  %call227 = tail call ptr @iwl_get_cmd_string(ptr noundef %trans, i32 noundef %51) #10
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 996, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %call227, i32 noundef %53, i32 noundef %conv207) #10
  br label %if.then584

do.body247:                                       ; preds = %for.inc.1
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 4
  %call252 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call257 = tail call i32 @iwl_txq_space(ptr noundef %trans, ptr noundef %3) #10
  %flags258 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %54 = ptrtoint ptr %flags258 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags258, align 4
  %and259 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  %cond = select i1 %tobool260.not, i32 1, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call257, i32 %cond)
  %cmp261 = icmp slt i32 %call257, %cond
  br i1 %cmp261, label %if.then263, label %if.end271

if.then263:                                       ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call252) #10
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %57, i32 noundef 0, ptr noundef nonnull @.str.9) #10
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %58 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %op_mode, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %cmd_queue_full.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %cmd_queue_full.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmd_queue_full.i, align 4
  tail call void %63(ptr noundef %59) #10
  br label %if.then584

if.end271:                                        ; preds = %do.body247
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 15
  %64 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %write_ptr, align 4
  %n_window.i = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 18
  %66 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_window.i, align 4
  %sub.i = add i32 %67, 65535
  %and.i816 = and i32 %65, 65535
  %conv273 = and i32 %and.i816, %sub.i
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 3
  %68 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %entries, align 4
  %arrayidx274 = getelementptr %struct.iwl_pcie_txq_entry, ptr %69, i32 %conv273
  %70 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx274, align 4
  %meta = getelementptr %struct.iwl_pcie_txq_entry, ptr %69, i32 %conv273, i32 3
  %72 = call ptr @memset(ptr %meta, i32 0, i32 12)
  %73 = ptrtoint ptr %flags258 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags258, align 4
  %and279 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %if.end271.if.end282_crit_edge, label %if.then281

if.end271.if.end282_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

if.then281:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %cmd, ptr %meta, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %if.end271.if.end282_crit_edge
  %76 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id, align 4
  %conv.i821 = trunc i32 %77 to i8
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv.i821, ptr %71, align 1
  br i1 %cmp29.not, label %if.else309, label %if.then286

if.then286:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #12
  %group_id291 = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %71, i32 0, i32 1
  %79 = ptrtoint ptr %group_id291 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv.i, ptr %group_id291, align 1
  %80 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id, align 4
  %and.i819 = lshr i32 %81, 16
  %conv.i820 = trunc i32 %and.i819 to i8
  %version = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %71, i32 0, i32 5
  %82 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i820, ptr %version, align 1
  %sub296 = add i16 %cmd_size.2.1, -8
  %83 = tail call i16 @llvm.bswap.i16(i16 %sub296)
  %length = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %71, i32 0, i32 3
  %84 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %83, ptr %length, align 1
  %reserved = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %71, i32 0, i32 4
  %85 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %reserved, align 1
  %86 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %q_id, align 1
  %88 = and i8 %87, 31
  %and304 = zext i8 %88 to i32
  %shl = shl nuw nsw i32 %and304, 8
  %89 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %write_ptr, align 4
  %and306 = and i32 %90, 255
  %or = or i32 %shl, %and306
  %conv307 = trunc i32 %or to i16
  %91 = tail call i16 @llvm.bswap.i16(i16 %conv307)
  %sequence = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %71, i32 0, i32 2
  %92 = ptrtoint ptr %sequence to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %91, ptr %sequence, align 1
  br label %if.end327

if.else309:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %q_id, align 1
  %95 = and i8 %94, 31
  %and317 = zext i8 %95 to i32
  %shl318 = shl nuw nsw i32 %and317, 8
  %96 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %write_ptr, align 4
  %and320 = and i32 %97, 255
  %or321 = or i32 %shl318, %and320
  %conv322 = trunc i32 %or321 to i16
  %98 = tail call i16 @llvm.bswap.i16(i16 %conv322)
  %sequence324 = getelementptr inbounds %struct.iwl_cmd_header, ptr %71, i32 0, i32 2
  %99 = ptrtoint ptr %sequence324 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 %98, ptr %sequence324, align 1
  %group_id326 = getelementptr inbounds %struct.iwl_cmd_header, ptr %71, i32 0, i32 1
  %100 = ptrtoint ptr %group_id326 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %group_id326, align 1
  br label %if.end327

if.end327:                                        ; preds = %if.else309, %if.then286
  %cmd_pos.0 = phi i32 [ 8, %if.then286 ], [ 4, %if.else309 ]
  %copy_size.5 = phi i16 [ 8, %if.then286 ], [ 4, %if.else309 ]
  %101 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx40, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool335.not = icmp eq i16 %102, 0
  br i1 %tobool335.not, label %if.end327.cleanup_crit_edge, label %if.end337

if.end327.cleanup_crit_edge:                      ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end337:                                        ; preds = %if.end327
  %arrayidx339 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 0
  %103 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx339, align 1
  %105 = and i8 %104, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool342.not = icmp eq i8 %105, 0
  br i1 %tobool342.not, label %if.then343, label %if.then370

if.then343:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #12
  %conv346 = zext i16 %102 to i32
  %add.ptr347 = getelementptr i8, ptr %71, i32 %cmd_pos.0
  %106 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cmd, align 4
  %108 = call ptr @memcpy(ptr %add.ptr347, ptr %107, i32 %conv346)
  %add350 = add nuw nsw i32 %cmd_pos.0, %conv346
  %add352 = add i16 %102, %copy_size.5
  br label %cleanup

if.then370:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #12
  %sub355 = sub nuw nsw i32 324, %cmd_pos.0
  %conv358 = zext i16 %102 to i32
  %109 = tail call i32 @llvm.smin.i32(i32 %sub355, i32 %conv358)
  %add.ptr363 = getelementptr i8, ptr %71, i32 %cmd_pos.0
  %110 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cmd, align 4
  %112 = call ptr @memcpy(ptr %add.ptr363, ptr %111, i32 %109)
  %add366 = add nuw nsw i32 %109, %cmd_pos.0
  %narrow975 = sub nuw nsw i16 20, %copy_size.5
  %sub372 = zext i16 %narrow975 to i32
  %113 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx40, align 2
  %conv375 = zext i16 %114 to i32
  %115 = tail call i32 @llvm.smin.i32(i32 %sub372, i32 %conv375)
  %116 = trunc i32 %115 to i16
  %conv385 = add nuw nsw i16 %copy_size.5, %116
  br label %cleanup

cleanup:                                          ; preds = %if.then370, %if.then343, %if.end327.cleanup_crit_edge
  %cmd_pos.2 = phi i32 [ %add350, %if.then343 ], [ %cmd_pos.0, %if.end327.cleanup_crit_edge ], [ %add366, %if.then370 ]
  %copy_size.8 = phi i16 [ %add352, %if.then343 ], [ %copy_size.5, %if.end327.cleanup_crit_edge ], [ %conv385, %if.then370 ]
  %117 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx40.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool335.not.1 = icmp eq i16 %118, 0
  br i1 %tobool335.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end337.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.1

if.end337.1:                                      ; preds = %cleanup
  %arrayidx339.1 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 1
  %119 = ptrtoint ptr %arrayidx339.1 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx339.1, align 1
  %121 = and i8 %120, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool342.not.1 = icmp eq i8 %121, 0
  br i1 %tobool342.not.1, label %if.then343.1, label %if.end354.1

if.end354.1:                                      ; preds = %if.end337.1
  %sub355.1 = sub nsw i32 324, %cmd_pos.2
  %conv358.1 = zext i16 %118 to i32
  %122 = tail call i32 @llvm.smin.i32(i32 %sub355.1, i32 %conv358.1)
  %add.ptr363.1 = getelementptr i8, ptr %71, i32 %cmd_pos.2
  %123 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx38.1, align 4
  %125 = call ptr @memcpy(ptr %add.ptr363.1, ptr %124, i32 %122)
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %copy_size.8)
  %cmp368.1 = icmp ult i16 %copy_size.8, 20
  br i1 %cmp368.1, label %if.then370.1, label %if.end354.1.cleanup.1_crit_edge

if.end354.1.cleanup.1_crit_edge:                  ; preds = %if.end354.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.1

if.then370.1:                                     ; preds = %if.end354.1
  call void @__sanitizer_cov_trace_pc() #12
  %conv367.1 = zext i16 %copy_size.8 to i32
  %sub372.1 = sub nsw i32 20, %conv367.1
  %126 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx40.1, align 2
  %conv375.1 = zext i16 %127 to i32
  %128 = tail call i32 @llvm.smin.i32(i32 %sub372.1, i32 %conv375.1)
  %129 = trunc i32 %128 to i16
  %conv385.1 = add i16 %copy_size.8, %129
  br label %cleanup.1

if.then343.1:                                     ; preds = %if.end337.1
  call void @__sanitizer_cov_trace_pc() #12
  %conv346.1 = zext i16 %118 to i32
  %add.ptr347.1 = getelementptr i8, ptr %71, i32 %cmd_pos.2
  %130 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx38.1, align 4
  %132 = call ptr @memcpy(ptr %add.ptr347.1, ptr %131, i32 %conv346.1)
  %add352.1 = add i16 %118, %copy_size.8
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then343.1, %if.then370.1, %if.end354.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %copy_size.8.1 = phi i16 [ %add352.1, %if.then343.1 ], [ %copy_size.8, %cleanup.cleanup.1_crit_edge ], [ %conv385.1, %if.then370.1 ], [ %copy_size.8, %if.end354.1.cleanup.1_crit_edge ]
  %dev394 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %133 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev394, align 8
  %135 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %id, align 4
  %call396 = tail call ptr @iwl_get_cmd_string(ptr noundef %trans, i32 noundef %136) #10
  %137 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %71, align 1
  %conv400 = zext i8 %138 to i32
  %sequence402 = getelementptr inbounds %struct.iwl_cmd_header, ptr %71, i32 0, i32 2
  %139 = ptrtoint ptr %sequence402 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %sequence402, align 1
  %141 = tail call i16 @llvm.bswap.i16(i16 %140)
  %conv403 = zext i16 %141 to i32
  %conv404 = zext i16 %cmd_size.2.1 to i32
  %142 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %write_ptr, align 4
  %144 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %q_id, align 1
  %conv409 = zext i8 %145 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %134, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_enqueue_hcmd, ptr noundef nonnull @.str.10, ptr noundef %call396, i32 noundef %conv28, i32 noundef %conv400, i32 noundef %conv403, i32 noundef %conv404, i32 noundef %143, i32 noundef %conv273, i32 noundef %conv409) #10
  %conv412 = zext i16 %copy_size.8.1 to i32
  %146 = tail call i16 @llvm.umin.i16(i16 %copy_size.8.1, i16 20)
  %first_tb_bufs = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 1
  %147 = ptrtoint ptr %first_tb_bufs to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %first_tb_bufs, align 4
  %arrayidx421 = getelementptr %struct.iwl_pcie_first_tb_buf, ptr %148, i32 %conv273
  %conv423 = zext i16 %146 to i32
  %149 = call ptr @memcpy(ptr %arrayidx421, ptr %71, i32 %conv423)
  %first_tb_dma.i = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 2
  %150 = ptrtoint ptr %first_tb_dma.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %first_tb_dma.i, align 4
  %mul.i = shl nuw nsw i32 %conv273, 6
  %add.i = add i32 %151, %mul.i
  %152 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %3, align 4
  %tfd1.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %154 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %size.i, align 2
  %conv.i822 = zext i16 %155 to i32
  %156 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %write_ptr, align 4
  %mul.i823 = mul i32 %157, %conv.i822
  %add.ptr.i = getelementptr i8, ptr %153, i32 %mul.i823
  %158 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %conv.i822)
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %159 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %162 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %tobool.not.i.i = icmp eq i16 %162, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %164 = load i16, ptr %add.ptr.i, align 1
  %165 = lshr i16 %164, 8
  %166 = trunc i16 %165 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i

if.end.i.i:                                       ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #12
  %num_tbs3.i.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i, i32 0, i32 1
  %167 = ptrtoint ptr %num_tbs3.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %num_tbs3.i.i, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i

iwl_txq_gen1_tfd_get_num_tbs.exit.i:              ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi i8 [ %166, %if.then.i.i ], [ %168, %if.end.i.i ]
  %retval.0.i.i = and i8 %retval.0.in.i.i, 31
  %169 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %tfd1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i, i8 %170)
  %cmp.not.i = icmp ult i8 %retval.0.i.i, %170
  br i1 %cmp.not.i, label %if.end49.i, label %do.end.i

do.end.i:                                         ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i = zext i8 %170 to i32
  %171 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev394, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %172, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv9.i) #10
  br label %iwl_pcie_txq_build_tfd.exit

if.end49.i:                                       ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = zext i8 %retval.0.i.i to i32
  %arrayidx.i.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i, i32 0, i32 2, i32 %conv6.i
  %shl.i.i = shl nuw nsw i16 %146, 4
  %173 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %174 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 4)
  store i32 %173, ptr %arrayidx.i.i, align 1
  %175 = tail call i16 @llvm.bswap.i16(i16 %shl.i.i) #10
  %hi_n_len5.i.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i, i32 0, i32 2, i32 %conv6.i, i32 1
  %176 = ptrtoint ptr %hi_n_len5.i.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 %175, ptr %hi_n_len5.i.i, align 1
  %add.i.i = add nuw nsw i8 %retval.0.i.i, 1
  %num_tbs.i.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i, i32 0, i32 1
  %177 = ptrtoint ptr %num_tbs.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %add.i.i, ptr %num_tbs.i.i, align 1
  br label %iwl_pcie_txq_build_tfd.exit

iwl_pcie_txq_build_tfd.exit:                      ; preds = %if.end49.i, %do.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %copy_size.8.1)
  %cmp428 = icmp ugt i16 %copy_size.8.1, 20
  br i1 %cmp428, label %if.then430, label %iwl_pcie_txq_build_tfd.exit.for.body454_crit_edge

iwl_pcie_txq_build_tfd.exit.for.body454_crit_edge: ; preds = %iwl_pcie_txq_build_tfd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body454

if.then430:                                       ; preds = %iwl_pcie_txq_build_tfd.exit
  %178 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev394, align 8
  %add.ptr434 = getelementptr i8, ptr %71, i32 %conv423
  %sub437 = sub nsw i32 %conv412, %conv423
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr434) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then430
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.free_dup_buf.thread937.sink.split.sink.split_crit_edge, label %if.then.i, !prof !143

land.rhs.i.free_dup_buf.thread937.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dup_buf.thread937.sink.split.sink.split

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %179) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i824 = icmp eq ptr %181, null
  br i1 %tobool.not.i.i824, label %if.end.i.i825, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i825:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %179, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i825, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i826 = phi ptr [ %183, %if.end.i.i825 ], [ %181, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i826) #10
  br label %free_dup_buf.thread937.sink.split.sink.split

dma_map_single_attrs.exit:                        ; preds = %if.then430
  tail call void @debug_dma_map_single(ptr noundef %179, ptr noundef %add.ptr434, i32 noundef %sub437) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %184 = load ptr, ptr @mem_map, align 4
  %185 = ptrtoint ptr %add.ptr434 to i32
  %sub.i827 = add i32 %185, 1073741824
  %shr.i = lshr i32 %sub.i827, 12
  %add.ptr.i828 = getelementptr %struct.page, ptr %184, i32 %shr.i
  %and.i829 = and i32 %185, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %179, ptr noundef %add.ptr.i828, i32 noundef %and.i829, i32 noundef %sub437, i32 noundef 1, i32 noundef 0) #10
  %186 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev394, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %187, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.free_dup_buf.thread937.sink.split_crit_edge, label %if.end444

dma_map_single_attrs.exit.free_dup_buf.thread937.sink.split_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dup_buf.thread937.sink.split

if.end444:                                        ; preds = %dma_map_single_attrs.exit
  %conv448 = trunc i32 %sub437 to i16
  %188 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %3, align 4
  %190 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %size.i, align 2
  %conv.i833 = zext i16 %191 to i32
  %192 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %write_ptr, align 4
  %mul.i835 = mul i32 %193, %conv.i833
  %add.ptr.i836 = getelementptr i8, ptr %189, i32 %mul.i835
  %194 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i838 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %195, i32 0, i32 5
  %196 = ptrtoint ptr %use_tfh.i.i838 to i32
  call void @__asan_load2_noabort(i32 %196)
  %bf.load.i.i839 = load i16, ptr %use_tfh.i.i838, align 4
  %197 = and i16 %bf.load.i.i839, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %197)
  %tobool.not.i.i840 = icmp eq i16 %197, 0
  br i1 %tobool.not.i.i840, label %if.end.i.i843, label %if.then.i.i841

if.then.i.i841:                                   ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #12
  %198 = ptrtoint ptr %add.ptr.i836 to i32
  call void @__asan_loadN_noabort(i32 %198, i32 2)
  %199 = load i16, ptr %add.ptr.i836, align 1
  %200 = lshr i16 %199, 8
  %201 = trunc i16 %200 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i847

if.end.i.i843:                                    ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #12
  %num_tbs3.i.i842 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i836, i32 0, i32 1
  %202 = ptrtoint ptr %num_tbs3.i.i842 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %num_tbs3.i.i842, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i847

iwl_txq_gen1_tfd_get_num_tbs.exit.i847:           ; preds = %if.end.i.i843, %if.then.i.i841
  %retval.0.in.i.i844 = phi i8 [ %201, %if.then.i.i841 ], [ %203, %if.end.i.i843 ]
  %retval.0.i.i845 = and i8 %retval.0.in.i.i844, 31
  %204 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %tfd1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i845, i8 %205)
  %cmp.not.i846 = icmp ult i8 %retval.0.i.i845, %205
  br i1 %cmp.not.i846, label %if.end49.i857, label %do.end.i850

do.end.i850:                                      ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i847
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i848 = zext i8 %205 to i32
  %206 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev394, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %207, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv9.i848) #10
  br label %for.body454

if.end49.i857:                                    ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i847
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i851 = zext i8 %retval.0.i.i845 to i32
  %arrayidx.i.i852 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i836, i32 0, i32 2, i32 %conv6.i851
  %shl.i.i853 = shl i16 %conv448, 4
  %208 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #10
  %209 = ptrtoint ptr %arrayidx.i.i852 to i32
  call void @__asan_storeN_noabort(i32 %209, i32 4)
  store i32 %208, ptr %arrayidx.i.i852, align 1
  %210 = tail call i16 @llvm.bswap.i16(i16 %shl.i.i853) #10
  %hi_n_len5.i.i854 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i836, i32 0, i32 2, i32 %conv6.i851, i32 1
  %211 = ptrtoint ptr %hi_n_len5.i.i854 to i32
  call void @__asan_storeN_noabort(i32 %211, i32 2)
  store i16 %210, ptr %hi_n_len5.i.i854, align 1
  %add.i.i855 = add nuw nsw i8 %retval.0.i.i845, 1
  %num_tbs.i.i856 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i836, i32 0, i32 1
  %212 = ptrtoint ptr %num_tbs.i.i856 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %add.i.i855, ptr %num_tbs.i.i856, align 1
  br label %for.body454

for.body454:                                      ; preds = %if.end49.i857, %do.end.i850, %iwl_pcie_txq_build_tfd.exit.for.body454_crit_edge
  %213 = ptrtoint ptr %cmddata to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %cmddata, align 4
  %215 = ptrtoint ptr %cmdlen to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %cmdlen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %tobool458.not = icmp eq i16 %216, 0
  br i1 %tobool458.not, label %for.body454.for.inc490_crit_edge, label %if.end460

for.body454.for.inc490_crit_edge:                 ; preds = %for.body454
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc490

if.end460:                                        ; preds = %for.body454
  %arrayidx462 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 0
  %217 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx462, align 1
  %conv463 = zext i8 %218 to i32
  %and464 = and i32 %conv463, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and464)
  %tobool465.not = icmp eq i32 %and464, 0
  br i1 %tobool465.not, label %if.end460.for.inc490_crit_edge, label %if.end467

if.end460.for.inc490_crit_edge:                   ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc490

if.end467:                                        ; preds = %if.end460
  %and471 = and i32 %conv463, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and471)
  %tobool472.not = icmp eq i32 %and471, 0
  %spec.select814 = select i1 %tobool472.not, ptr %214, ptr %dup_buf.2.1
  %219 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev394, align 8
  %call.i860 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %spec.select814) #10
  br i1 %call.i860, label %if.end467.land.rhs.i862_crit_edge, label %dma_map_single_attrs.exit877

if.end467.land.rhs.i862_crit_edge:                ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i862

land.rhs.i862:                                    ; preds = %if.end467.1.land.rhs.i862_crit_edge, %if.end467.land.rhs.i862_crit_edge
  %.lcssa = phi ptr [ %220, %if.end467.land.rhs.i862_crit_edge ], [ %261, %if.end467.1.land.rhs.i862_crit_edge ]
  %.b1.i861 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i861, label %land.rhs.i862.free_dup_buf.thread937.sink.split.sink.split_crit_edge, label %if.then.i866, !prof !143

land.rhs.i862.free_dup_buf.thread937.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i862
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dup_buf.thread937.sink.split.sink.split

if.then.i866:                                     ; preds = %land.rhs.i862
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i863 = tail call ptr @dev_driver_string(ptr noundef %.lcssa) #10
  %init_name.i.i864 = getelementptr inbounds %struct.device, ptr %.lcssa, i32 0, i32 3
  %221 = ptrtoint ptr %init_name.i.i864 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %init_name.i.i864, align 8
  %tobool.not.i.i865 = icmp eq ptr %222, null
  br i1 %tobool.not.i.i865, label %if.end.i.i867, label %if.then.i866.dev_name.exit.i869_crit_edge

if.then.i866.dev_name.exit.i869_crit_edge:        ; preds = %if.then.i866
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i869

if.end.i.i867:                                    ; preds = %if.then.i866
  call void @__sanitizer_cov_trace_pc() #12
  %223 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %.lcssa, align 4
  br label %dev_name.exit.i869

dev_name.exit.i869:                               ; preds = %if.end.i.i867, %if.then.i866.dev_name.exit.i869_crit_edge
  %retval.0.i.i868 = phi ptr [ %224, %if.end.i.i867 ], [ %222, %if.then.i866.dev_name.exit.i869_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i863, ptr noundef %retval.0.i.i868) #10
  br label %free_dup_buf.thread937.sink.split.sink.split

dma_map_single_attrs.exit877:                     ; preds = %if.end467
  %conv477 = zext i16 %216 to i32
  tail call void @debug_dma_map_single(ptr noundef %220, ptr noundef %spec.select814, i32 noundef %conv477) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %225 = load ptr, ptr @mem_map, align 4
  %226 = ptrtoint ptr %spec.select814 to i32
  %sub.i870 = add i32 %226, 1073741824
  %shr.i871 = lshr i32 %sub.i870, 12
  %add.ptr.i872 = getelementptr %struct.page, ptr %225, i32 %shr.i871
  %and.i873 = and i32 %226, 4095
  %call41.i874 = tail call i32 @dma_map_page_attrs(ptr noundef %220, ptr noundef %add.ptr.i872, i32 noundef %and.i873, i32 noundef %conv477, i32 noundef 1, i32 noundef 0) #10
  %227 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev394, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %228, i32 noundef %call41.i874) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i874)
  %cmp.i878 = icmp eq i32 %call41.i874, -1
  br i1 %cmp.i878, label %dma_map_single_attrs.exit877.free_dup_buf.thread937.sink.split_crit_edge, label %if.end484

dma_map_single_attrs.exit877.free_dup_buf.thread937.sink.split_crit_edge: ; preds = %dma_map_single_attrs.exit877
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dup_buf.thread937.sink.split

if.end484:                                        ; preds = %dma_map_single_attrs.exit877
  %229 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %3, align 4
  %231 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %size.i, align 2
  %conv.i882 = zext i16 %232 to i32
  %233 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %write_ptr, align 4
  %mul.i884 = mul i32 %234, %conv.i882
  %add.ptr.i885 = getelementptr i8, ptr %230, i32 %mul.i884
  %235 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i887 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %236, i32 0, i32 5
  %237 = ptrtoint ptr %use_tfh.i.i887 to i32
  call void @__asan_load2_noabort(i32 %237)
  %bf.load.i.i888 = load i16, ptr %use_tfh.i.i887, align 4
  %238 = and i16 %bf.load.i.i888, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool.not.i.i889 = icmp eq i16 %238, 0
  br i1 %tobool.not.i.i889, label %if.end.i.i892, label %if.then.i.i890

if.then.i.i890:                                   ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #12
  %239 = ptrtoint ptr %add.ptr.i885 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 2)
  %240 = load i16, ptr %add.ptr.i885, align 1
  %241 = lshr i16 %240, 8
  %242 = trunc i16 %241 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i896

if.end.i.i892:                                    ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #12
  %num_tbs3.i.i891 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i885, i32 0, i32 1
  %243 = ptrtoint ptr %num_tbs3.i.i891 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %num_tbs3.i.i891, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i896

iwl_txq_gen1_tfd_get_num_tbs.exit.i896:           ; preds = %if.end.i.i892, %if.then.i.i890
  %retval.0.in.i.i893 = phi i8 [ %242, %if.then.i.i890 ], [ %244, %if.end.i.i892 ]
  %retval.0.i.i894 = and i8 %retval.0.in.i.i893, 31
  %245 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %tfd1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i894, i8 %246)
  %cmp.not.i895 = icmp ult i8 %retval.0.i.i894, %246
  br i1 %cmp.not.i895, label %if.end49.i906, label %do.end.i899

do.end.i899:                                      ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i896
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i897 = zext i8 %246 to i32
  %247 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev394, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %248, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv9.i897) #10
  br label %for.inc490

if.end49.i906:                                    ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i896
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i900 = zext i8 %retval.0.i.i894 to i32
  %arrayidx.i.i901 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i885, i32 0, i32 2, i32 %conv6.i900
  %shl.i.i902 = shl i16 %216, 4
  %249 = tail call i32 @llvm.bswap.i32(i32 %call41.i874) #10
  %250 = ptrtoint ptr %arrayidx.i.i901 to i32
  call void @__asan_storeN_noabort(i32 %250, i32 4)
  store i32 %249, ptr %arrayidx.i.i901, align 1
  %251 = tail call i16 @llvm.bswap.i16(i16 %shl.i.i902) #10
  %hi_n_len5.i.i903 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i885, i32 0, i32 2, i32 %conv6.i900, i32 1
  %252 = ptrtoint ptr %hi_n_len5.i.i903 to i32
  call void @__asan_storeN_noabort(i32 %252, i32 2)
  store i16 %251, ptr %hi_n_len5.i.i903, align 1
  %add.i.i904 = add nuw nsw i8 %retval.0.i.i894, 1
  %num_tbs.i.i905 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i885, i32 0, i32 1
  %253 = ptrtoint ptr %num_tbs.i.i905 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %add.i.i904, ptr %num_tbs.i.i905, align 1
  br label %for.inc490

for.inc490:                                       ; preds = %if.end49.i906, %do.end.i899, %if.end460.for.inc490_crit_edge, %for.body454.for.inc490_crit_edge
  %arrayidx456.1 = getelementptr inbounds [2 x ptr], ptr %cmddata, i32 0, i32 1
  %254 = ptrtoint ptr %arrayidx456.1 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx456.1, align 4
  %arrayidx457.1 = getelementptr inbounds [2 x i16], ptr %cmdlen, i32 0, i32 1
  %256 = ptrtoint ptr %arrayidx457.1 to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %arrayidx457.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %257)
  %tobool458.not.1 = icmp eq i16 %257, 0
  br i1 %tobool458.not.1, label %for.inc490.for.inc490.1_crit_edge, label %if.end460.1

for.inc490.for.inc490.1_crit_edge:                ; preds = %for.inc490
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc490.1

if.end460.1:                                      ; preds = %for.inc490
  %arrayidx462.1 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 1
  %258 = ptrtoint ptr %arrayidx462.1 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx462.1, align 1
  %conv463.1 = zext i8 %259 to i32
  %and464.1 = and i32 %conv463.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and464.1)
  %tobool465.not.1 = icmp eq i32 %and464.1, 0
  br i1 %tobool465.not.1, label %if.end460.1.for.inc490.1_crit_edge, label %if.end467.1

if.end460.1.for.inc490.1_crit_edge:               ; preds = %if.end460.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc490.1

if.end467.1:                                      ; preds = %if.end460.1
  %and471.1 = and i32 %conv463.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and471.1)
  %tobool472.not.1 = icmp eq i32 %and471.1, 0
  %spec.select814.1 = select i1 %tobool472.not.1, ptr %255, ptr %dup_buf.2.1
  %260 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev394, align 8
  %call.i860.1 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %spec.select814.1) #10
  br i1 %call.i860.1, label %if.end467.1.land.rhs.i862_crit_edge, label %dma_map_single_attrs.exit877.1

if.end467.1.land.rhs.i862_crit_edge:              ; preds = %if.end467.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i862

dma_map_single_attrs.exit877.1:                   ; preds = %if.end467.1
  %conv477.1 = zext i16 %257 to i32
  tail call void @debug_dma_map_single(ptr noundef %261, ptr noundef %spec.select814.1, i32 noundef %conv477.1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %262 = load ptr, ptr @mem_map, align 4
  %263 = ptrtoint ptr %spec.select814.1 to i32
  %sub.i870.1 = add i32 %263, 1073741824
  %shr.i871.1 = lshr i32 %sub.i870.1, 12
  %add.ptr.i872.1 = getelementptr %struct.page, ptr %262, i32 %shr.i871.1
  %and.i873.1 = and i32 %263, 4095
  %call41.i874.1 = tail call i32 @dma_map_page_attrs(ptr noundef %261, ptr noundef %add.ptr.i872.1, i32 noundef %and.i873.1, i32 noundef %conv477.1, i32 noundef 1, i32 noundef 0) #10
  %264 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev394, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %265, i32 noundef %call41.i874.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i874.1)
  %cmp.i878.1 = icmp eq i32 %call41.i874.1, -1
  br i1 %cmp.i878.1, label %dma_map_single_attrs.exit877.1.free_dup_buf.thread937.sink.split_crit_edge, label %if.end484.1

dma_map_single_attrs.exit877.1.free_dup_buf.thread937.sink.split_crit_edge: ; preds = %dma_map_single_attrs.exit877.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dup_buf.thread937.sink.split

if.end484.1:                                      ; preds = %dma_map_single_attrs.exit877.1
  %266 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %3, align 4
  %268 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %size.i, align 2
  %conv.i882.1 = zext i16 %269 to i32
  %270 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %write_ptr, align 4
  %mul.i884.1 = mul i32 %271, %conv.i882.1
  %add.ptr.i885.1 = getelementptr i8, ptr %267, i32 %mul.i884.1
  %272 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i887.1 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %273, i32 0, i32 5
  %274 = ptrtoint ptr %use_tfh.i.i887.1 to i32
  call void @__asan_load2_noabort(i32 %274)
  %bf.load.i.i888.1 = load i16, ptr %use_tfh.i.i887.1, align 4
  %275 = and i16 %bf.load.i.i888.1, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %275)
  %tobool.not.i.i889.1 = icmp eq i16 %275, 0
  br i1 %tobool.not.i.i889.1, label %if.end.i.i892.1, label %if.then.i.i890.1

if.then.i.i890.1:                                 ; preds = %if.end484.1
  call void @__sanitizer_cov_trace_pc() #12
  %276 = ptrtoint ptr %add.ptr.i885.1 to i32
  call void @__asan_loadN_noabort(i32 %276, i32 2)
  %277 = load i16, ptr %add.ptr.i885.1, align 1
  %278 = lshr i16 %277, 8
  %279 = trunc i16 %278 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i896.1

if.end.i.i892.1:                                  ; preds = %if.end484.1
  call void @__sanitizer_cov_trace_pc() #12
  %num_tbs3.i.i891.1 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i885.1, i32 0, i32 1
  %280 = ptrtoint ptr %num_tbs3.i.i891.1 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %num_tbs3.i.i891.1, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i896.1

iwl_txq_gen1_tfd_get_num_tbs.exit.i896.1:         ; preds = %if.end.i.i892.1, %if.then.i.i890.1
  %retval.0.in.i.i893.1 = phi i8 [ %279, %if.then.i.i890.1 ], [ %281, %if.end.i.i892.1 ]
  %retval.0.i.i894.1 = and i8 %retval.0.in.i.i893.1, 31
  %282 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %tfd1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i894.1, i8 %283)
  %cmp.not.i895.1 = icmp ult i8 %retval.0.i.i894.1, %283
  br i1 %cmp.not.i895.1, label %if.end49.i906.1, label %do.end.i899.1

do.end.i899.1:                                    ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i896.1
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i897.1 = zext i8 %283 to i32
  %284 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev394, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %285, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv9.i897.1) #10
  br label %for.inc490.1

if.end49.i906.1:                                  ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i896.1
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i900.1 = zext i8 %retval.0.i.i894.1 to i32
  %arrayidx.i.i901.1 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i885.1, i32 0, i32 2, i32 %conv6.i900.1
  %shl.i.i902.1 = shl i16 %257, 4
  %286 = tail call i32 @llvm.bswap.i32(i32 %call41.i874.1) #10
  %287 = ptrtoint ptr %arrayidx.i.i901.1 to i32
  call void @__asan_storeN_noabort(i32 %287, i32 4)
  store i32 %286, ptr %arrayidx.i.i901.1, align 1
  %288 = tail call i16 @llvm.bswap.i16(i16 %shl.i.i902.1) #10
  %hi_n_len5.i.i903.1 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i885.1, i32 0, i32 2, i32 %conv6.i900.1, i32 1
  %289 = ptrtoint ptr %hi_n_len5.i.i903.1 to i32
  call void @__asan_storeN_noabort(i32 %289, i32 2)
  store i16 %288, ptr %hi_n_len5.i.i903.1, align 1
  %add.i.i904.1 = add nuw nsw i8 %retval.0.i.i894.1, 1
  %num_tbs.i.i905.1 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i885.1, i32 0, i32 1
  %290 = ptrtoint ptr %num_tbs.i.i905.1 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %add.i.i904.1, ptr %num_tbs.i.i905.1, align 1
  br label %for.inc490.1

for.inc490.1:                                     ; preds = %if.end49.i906.1, %do.end.i899.1, %if.end460.1.for.inc490.1_crit_edge, %for.inc490.for.inc490.1_crit_edge
  %291 = ptrtoint ptr %flags258 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %flags258, align 4
  %flags497 = getelementptr %struct.iwl_pcie_txq_entry, ptr %69, i32 %conv273, i32 3, i32 1
  %293 = ptrtoint ptr %flags497 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %292, ptr %flags497, align 4
  %294 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %entries, align 4
  %free_buf = getelementptr %struct.iwl_pcie_txq_entry, ptr %295, i32 %conv273, i32 2
  %296 = ptrtoint ptr %free_buf to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %free_buf, align 4
  %tobool500.not = icmp eq ptr %297, null
  br i1 %tobool500.not, label %for.inc490.1.if.end558_crit_edge, label %land.rhs507

for.inc490.1.if.end558_crit_edge:                 ; preds = %for.inc490.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end558

land.rhs507:                                      ; preds = %for.inc490.1
  %.b811 = load i1, ptr @iwl_pcie_enqueue_hcmd.__already_done, align 1
  br i1 %.b811, label %land.rhs507.if.then554_crit_edge, label %if.then518, !prof !143

land.rhs507.if.then554_crit_edge:                 ; preds = %land.rhs507
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then554

if.then518:                                       ; preds = %land.rhs507
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_pcie_enqueue_hcmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1140, i32 noundef 9, ptr noundef null) #10
  br label %if.then554

if.then554:                                       ; preds = %if.then518, %land.rhs507.if.then554_crit_edge
  %298 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %entries, align 4
  %free_buf557 = getelementptr %struct.iwl_pcie_txq_entry, ptr %299, i32 %conv273, i32 2
  %300 = ptrtoint ptr %free_buf557 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %free_buf557, align 4
  tail call void @kfree_sensitive(ptr noundef %301) #10
  br label %if.end558

if.end558:                                        ; preds = %if.then554, %for.inc490.1.if.end558_crit_edge
  %302 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %entries, align 4
  %free_buf561 = getelementptr %struct.iwl_pcie_txq_entry, ptr %303, i32 %conv273, i32 2
  %304 = ptrtoint ptr %free_buf561 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %dup_buf.2.1, ptr %free_buf561, align 4
  %305 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %dev394, align 8
  tail call fastcc void @trace_iwlwifi_dev_hcmd(ptr noundef %306, ptr noundef %cmd, i16 noundef zeroext %cmd_size.2.1, ptr noundef %71)
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 16
  %307 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %read_ptr, align 4
  %309 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %write_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %308, i32 %310)
  %cmp565 = icmp eq i32 %308, %310
  br i1 %cmp565, label %land.lhs.true, label %if.end558.if.end572_crit_edge

if.end558.if.end572_crit_edge:                    ; preds = %if.end558
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end572

land.lhs.true:                                    ; preds = %if.end558
  %wd_timeout = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 12
  %311 = ptrtoint ptr %wd_timeout to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %wd_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool567.not = icmp eq i32 %312, 0
  br i1 %tobool567.not, label %land.lhs.true.if.end572_crit_edge, label %if.then568

land.lhs.true.if.end572_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end572

if.then568:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %stuck_timer = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %313 = load volatile i32, ptr @jiffies, align 128
  %add570 = add i32 %313, %312
  %call571 = tail call i32 @mod_timer(ptr noundef %stuck_timer, i32 noundef %add570) #10
  br label %if.end572

if.end572:                                        ; preds = %if.then568, %land.lhs.true.if.end572_crit_edge, %if.end558.if.end572_crit_edge
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %314 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load volatile i32, ptr %status.i, align 4
  %316 = and i32 %315, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool.not.i = icmp eq i32 %316, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end572.free_dup_buf.thread937_crit_edge

if.end572.free_dup_buf.thread937_crit_edge:       ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dup_buf.thread937

if.end.i:                                         ; preds = %if.end572
  %317 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %trans_cfg.i.i, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %318, align 4
  %apmg_wake_up_wa.i = getelementptr inbounds %struct.iwl_base_params, ptr %320, i32 0, i32 3
  %321 = ptrtoint ptr %apmg_wake_up_wa.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %bf.load.i = load i8, ptr %apmg_wake_up_wa.i, align 4
  %322 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool2.not.i = icmp eq i8 %322, 0
  br i1 %tobool2.not.i, label %if.end.i.free_dup_buf_crit_edge, label %if.end4.i

if.end.i.free_dup_buf_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dup_buf

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call zeroext i1 @__iwl_trans_pcie_grab_nic_access(ptr noundef %trans) #10
  br i1 %call5.i, label %if.end9.i, label %if.end4.i.free_dup_buf.thread937_crit_edge, !prof !143

if.end4.i.free_dup_buf.thread937_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dup_buf.thread937

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmd_hold_nic_awake.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 263
  %323 = ptrtoint ptr %cmd_hold_nic_awake.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 1, ptr %cmd_hold_nic_awake.i, align 8
  %reg_lock.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 252
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i) #10
  br label %free_dup_buf

free_dup_buf.thread937.sink.split.sink.split:     ; preds = %dev_name.exit.i869, %land.rhs.i862.free_dup_buf.thread937.sink.split.sink.split_crit_edge, %dev_name.exit.i, %land.rhs.i.free_dup_buf.thread937.sink.split.sink.split_crit_edge
  %324 = ptrtoint ptr %dev394 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dev394, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %325, i32 noundef -1) #10
  br label %free_dup_buf.thread937.sink.split

free_dup_buf.thread937.sink.split:                ; preds = %free_dup_buf.thread937.sink.split.sink.split, %dma_map_single_attrs.exit877.1.free_dup_buf.thread937.sink.split_crit_edge, %dma_map_single_attrs.exit877.free_dup_buf.thread937.sink.split_crit_edge, %dma_map_single_attrs.exit.free_dup_buf.thread937.sink.split_crit_edge
  %326 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %write_ptr, align 4
  tail call void @iwl_txq_gen1_tfd_unmap(ptr noundef %trans, ptr noundef %meta, ptr noundef %3, i32 noundef %327) #10
  br label %free_dup_buf.thread937

free_dup_buf.thread937:                           ; preds = %free_dup_buf.thread937.sink.split, %if.end4.i.free_dup_buf.thread937_crit_edge, %if.end572.free_dup_buf.thread937_crit_edge
  %idx.2.ph = phi i32 [ -5, %if.end4.i.free_dup_buf.thread937_crit_edge ], [ -19, %if.end572.free_dup_buf.thread937_crit_edge ], [ -12, %free_dup_buf.thread937.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call252) #10
  br label %if.then584

free_dup_buf:                                     ; preds = %if.end9.i, %if.end.i.free_dup_buf_crit_edge
  %328 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %write_ptr, align 4
  %inc.i = add i32 %329, 1
  %330 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %trans_cfg.i.i, align 4
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %331, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %333, i32 0, i32 5
  %334 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %max_tfd_queue_size.i, align 4
  %sub.i911 = add i32 %335, -1
  %and.i912 = and i32 %sub.i911, %inc.i
  store i32 %and.i912, ptr %write_ptr, align 4
  tail call fastcc void @iwl_pcie_txq_inc_wr_ptr(ptr noundef %trans, ptr noundef %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call252) #10
  br label %cleanup586

if.then584:                                       ; preds = %free_dup_buf.thread937, %if.then263, %do.end225, %do.end176, %do.end134, %do.end93
  %dup_buf.0945 = phi ptr [ %dup_buf.2.1, %free_dup_buf.thread937 ], [ %dup_buf.2.1, %if.then263 ], [ %dup_buf.2.1, %do.end225 ], [ %dup_buf.2, %do.end176 ], [ %dup_buf.2, %do.end134 ], [ %dup_buf.0963.lcssa, %do.end93 ]
  %idx.3935 = phi i32 [ %idx.2.ph, %free_dup_buf.thread937 ], [ -28, %if.then263 ], [ -22, %do.end225 ], [ -22, %do.end176 ], [ -22, %do.end134 ], [ -22, %do.end93 ]
  tail call void @kfree(ptr noundef %dup_buf.0945) #10
  br label %cleanup586

cleanup586:                                       ; preds = %if.then584, %free_dup_buf, %if.end150.1.cleanup586_crit_edge, %if.end150.cleanup586_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %idx.3935, %if.then584 ], [ %conv273, %free_dup_buf ], [ -12, %if.end150.1.cleanup586_crit_edge ], [ -12, %if.end150.cleanup586_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmdlen) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmddata) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_cmd_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_txq_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_gen1_tfd_unmap(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_hcmd(ptr noundef %dev, ptr noundef %cmd, i16 noundef zeroext %total_size, ptr noundef %hdr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_hcmd, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_hcmd, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !147

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !143

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !148
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_hcmd(ptr noundef null, ptr noundef %dev, ptr noundef %cmd, i16 noundef zeroext %total_size, ptr noundef %hdr) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !149
  %13 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !143

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_hcmd, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_hcmd, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_hcmd.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_iwlwifi_dev_hcmd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 50, ptr noundef nonnull @.str.41) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !151
  %31 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_hcmd_complete(ptr noundef %trans, ptr nocapture noundef %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #10
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %sequence1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %sequence1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %sequence1, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %9 = lshr i32 %conv, 8
  %and = and i32 %9, 31
  %and3 = and i32 %conv, 255
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %10 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %q_id, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %idxprom)
  %cmp.not = icmp eq i32 %and, %idxprom
  br i1 %cmp.not, label %if.end41, label %do.end, !prof !143

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %read_ptr, align 4
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %13, i32 0, i32 15
  %16 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %write_ptr, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1193, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %and, i32 noundef %idxprom, i32 noundef %conv, i32 noundef %15, i32 noundef %17) #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %5, i32 noundef 32, i1 noundef zeroext true) #10
  br label %cleanup

if.end41:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %n_window.i = getelementptr inbounds %struct.iwl_txq, ptr %13, i32 0, i32 18
  %18 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_window.i, align 4
  %sub.i = add i32 %19, 255
  %and.i = and i32 %sub.i, %and3
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %13, i32 0, i32 3
  %20 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entries, align 4
  %arrayidx44 = getelementptr %struct.iwl_pcie_txq_entry, ptr %21, i32 %and.i
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx44, align 4
  %meta48 = getelementptr %struct.iwl_pcie_txq_entry, ptr %21, i32 %and.i, i32 3
  %group_id50 = getelementptr inbounds %struct.iwl_cmd_header, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %group_id50 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %group_id50, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %23, align 1
  %conv.i146 = zext i8 %27 to i32
  %conv1.i = zext i8 %25 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %add.i147 = or i32 %shl.i, %conv.i146
  tail call void @iwl_txq_gen1_tfd_unmap(ptr noundef %trans, ptr noundef %meta48, ptr noundef %13, i32 noundef %and3) #10
  %flags = getelementptr %struct.iwl_pcie_txq_entry, ptr %21, i32 %and.i, i32 3, i32 1
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and54 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end41.if.end61_crit_edge, label %if.then56

if.end41.if.end61_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then56:                                        ; preds = %if.end41
  %_page_stolen.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 2
  %30 = ptrtoint ptr %_page_stolen.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %_page_stolen.i, align 4
  %31 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rxb, align 4
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !143

if.then.i.i.i:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %35, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %32 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %36, %if.end.i.i.i ]
  %37 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %38 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  %add.i.i.i = add i32 %39, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, 128
  br i1 %cmp.i.i.i, label %if.then.i1.i.i, label %do.end5.i.i.i, !prof !144

if.then.i1.i.i:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.43) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !152
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i9.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iwl_pcie_hcmd_complete, %if.then.i.i.i.i.i)) #10
          to label %rxb_steal_page.exit [label %if.then.i.i.i.i.i], !srcloc !147

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %37, i32 noundef 1) #10
  br label %rxb_steal_page.exit

rxb_steal_page.exit:                              ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i
  %41 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rxb, align 4
  %43 = ptrtoint ptr %meta48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %meta48, align 4
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %5, ptr %resp_pkt, align 4
  %call58 = tail call ptr @page_address(ptr noundef %42) #10
  %46 = ptrtoint ptr %call58 to i32
  %47 = ptrtoint ptr %meta48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %meta48, align 4
  %_rx_page_addr = getelementptr inbounds %struct.iwl_host_cmd, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %_rx_page_addr, align 4
  %rx_page_order = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  %50 = ptrtoint ptr %rx_page_order to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_page_order, align 4
  %52 = load ptr, ptr %meta48, align 4
  %_rx_page_order = getelementptr inbounds %struct.iwl_host_cmd, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %51, ptr %_rx_page_order, align 4
  br label %if.end61

if.end61:                                         ; preds = %rxb_steal_page.exit, %if.end41.if.end61_crit_edge
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %and63 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end61.if.end66_crit_edge, label %if.then65

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then65:                                        ; preds = %if.end61
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %56 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %op_mode, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %async_cb.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %async_cb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %async_cb.i, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %if.then65.if.end66_crit_edge, label %if.then.i

if.then65.if.end66_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %61(ptr noundef %57, ptr noundef %23) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then.i, %if.then65.if.end66_crit_edge, %if.end61.if.end66_crit_edge
  %txqs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %arrayidx.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %and
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %64 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i148 = icmp eq i32 %64, 0
  br i1 %tobool.not.i148, label %if.end66.if.end.i_crit_edge, label %land.rhs.i

if.end66.if.end.i_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end66
  %dep_map.i = getelementptr inbounds %struct.iwl_txq, ptr %63, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !144

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 673, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end66.if.end.i_crit_edge
  %n_window.i.i = getelementptr inbounds %struct.iwl_txq, ptr %63, i32 0, i32 18
  %65 = ptrtoint ptr %n_window.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_window.i.i, align 4
  %sub.i.i = add i32 %66, 65535
  %and.i156.i = and i32 %sub.i.i, %and3
  %read_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %63, i32 0, i32 16
  %67 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %read_ptr.i, align 4
  %and.i159.i = and i32 %sub.i.i, %68
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %69 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %trans_cfg.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_tfd_queue_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %and.i156.i)
  %cmp27.not.i = icmp ugt i32 %74, %and.i156.i
  br i1 %cmp27.not.i, label %lor.lhs.false.i, label %if.end.i.if.then30.i_crit_edge

if.end.i.if.then30.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %conv.i160.i = trunc i32 %and.i159.i to i16
  %conv.i.i.i = trunc i32 %and.i156.i to i16
  %write_ptr.i.i = getelementptr inbounds %struct.iwl_txq, ptr %63, i32 0, i32 15
  %75 = ptrtoint ptr %write_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %write_ptr.i.i, align 4
  %and.i35.i.i = and i32 %76, %sub.i.i
  %conv.i36.i.i = trunc i32 %and.i35.i.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i36.i.i, i16 %conv.i160.i)
  %cmp.not.i.i = icmp ult i16 %conv.i36.i.i, %conv.i160.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i.i.i, i16 %conv.i160.i)
  %cmp10.i.i = icmp uge i16 %conv.i.i.i, %conv.i160.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i.i.i, i16 %conv.i36.i.i)
  %cmp13.i.i = icmp ult i16 %conv.i.i.i, %conv.i36.i.i
  br i1 %cmp.not.i.i, label %iwl_txq_used.exit.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %lor.lhs.false.i
  %narrow.i.i = select i1 %cmp10.i.i, i1 %cmp13.i.i, i1 false
  br i1 %narrow.i.i, label %cond.true.i.i.if.end90.i_crit_edge, label %cond.true.i.i.if.then30.i_crit_edge

cond.true.i.i.if.then30.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

cond.true.i.i.if.end90.i_crit_edge:               ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i

iwl_txq_used.exit.i:                              ; preds = %lor.lhs.false.i
  %narrow37.i.i = select i1 %cmp10.i.i, i1 true, i1 %cmp13.i.i
  br i1 %narrow37.i.i, label %iwl_txq_used.exit.i.if.end90.i_crit_edge, label %iwl_txq_used.exit.i.if.then30.i_crit_edge

iwl_txq_used.exit.i.if.then30.i_crit_edge:        ; preds = %iwl_txq_used.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

iwl_txq_used.exit.i.if.end90.i_crit_edge:         ; preds = %iwl_txq_used.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i

if.then30.i:                                      ; preds = %iwl_txq_used.exit.i.if.then30.i_crit_edge, %cond.true.i.i.if.then30.i_crit_edge, %if.end.i.if.then30.i_crit_edge
  %77 = ptrtoint ptr %txqs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %txqs.i, align 4
  %79 = shl nuw i32 1, %and
  %80 = and i32 %78, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool33.not.i = icmp eq i32 %80, 0
  br i1 %tobool33.not.i, label %if.then30.i.iwl_pcie_cmdq_reclaim.exit_crit_edge, label %land.rhs40.i

if.then30.i.iwl_pcie_cmdq_reclaim.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_pcie_cmdq_reclaim.exit

land.rhs40.i:                                     ; preds = %if.then30.i
  %.b155.i = load i1, ptr @iwl_pcie_cmdq_reclaim.__already_done, align 1
  br i1 %.b155.i, label %land.rhs40.i.iwl_pcie_cmdq_reclaim.exit_crit_edge, label %if.then51.i, !prof !143

land.rhs40.i.iwl_pcie_cmdq_reclaim.exit_crit_edge: ; preds = %land.rhs40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_pcie_cmdq_reclaim.exit

if.then51.i:                                      ; preds = %land.rhs40.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_pcie_cmdq_reclaim.__already_done, align 1
  %write_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %63, i32 0, i32 15
  %81 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %write_ptr.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 684, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.iwl_pcie_cmdq_reclaim, i32 noundef %and, i32 noundef %and.i156.i, i32 noundef %74, i32 noundef %82, i32 noundef %68) #10
  br label %iwl_pcie_cmdq_reclaim.exit

if.end90.i:                                       ; preds = %iwl_txq_used.exit.i.if.end90.i_crit_edge, %cond.true.i.i.if.end90.i_crit_edge
  %inc.i.i = add nuw nsw i32 %and.i156.i, 1
  %sub.i161.i = add i32 %74, 511
  %and.i162.i = and i32 %sub.i161.i, %inc.i.i
  %conv92173.i = and i32 %and.i159.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i162.i, i32 %conv92173.i)
  %cmp93.not174.i = icmp eq i32 %and.i162.i, %conv92173.i
  br i1 %cmp93.not174.i, label %if.end90.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end90.i.for.end.i_crit_edge:                   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end90.i
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv92176.i = phi i32 [ %conv92173.i, %for.body.lr.ph.i ], [ %conv92.i, %for.inc.i.for.body.i_crit_edge ]
  %nfreed.0175.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %83 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %read_ptr.i, align 4
  %inc.i163.i = add i32 %84, 1
  %85 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %trans_cfg.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %max_tfd_queue_size.i165.i = getelementptr inbounds %struct.iwl_base_params, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %max_tfd_queue_size.i165.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_tfd_queue_size.i165.i, align 4
  %sub.i166.i = add i32 %90, -1
  %and.i167.i = and i32 %sub.i166.i, %inc.i163.i
  store i32 %and.i167.i, ptr %read_ptr.i, align 4
  %inc.i = add i32 %nfreed.0175.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfreed.0175.i)
  %cmp98.i = icmp sgt i32 %nfreed.0175.i, 0
  br i1 %cmp98.i, label %do.end104.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end104.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 8
  %93 = ptrtoint ptr %write_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %write_ptr.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %92, i32 noundef 0, ptr noundef nonnull @.str.45, i32 noundef %and.i162.i, i32 noundef %94, i32 noundef %conv92176.i) #10
  tail call void @iwl_force_nmi(ptr noundef %trans) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end104.i, %for.body.i.for.inc.i_crit_edge
  %inc.i168.i = add nuw nsw i32 %conv92176.i, 1
  %95 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %trans_cfg.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %max_tfd_queue_size.i170.i = getelementptr inbounds %struct.iwl_base_params, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %max_tfd_queue_size.i170.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_tfd_queue_size.i170.i, align 4
  %sub.i171.i = add i32 %100, 65535
  %and.i172.i = and i32 %inc.i168.i, 65535
  %conv92.i = and i32 %and.i172.i, %sub.i171.i
  %cmp93.not.i = icmp eq i32 %and.i162.i, %conv92.i
  br i1 %cmp93.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end90.i.for.end.i_crit_edge
  %101 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %read_ptr.i, align 4
  %103 = ptrtoint ptr %write_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %write_ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp115.i = icmp eq i32 %102, %104
  br i1 %cmp115.i, label %if.then117.i, label %for.end.i.if.end118.i_crit_edge

for.end.i.if.end118.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118.i

if.then117.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @iwl_pcie_clear_cmd_in_flight(ptr noundef %trans) #10
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then117.i, %for.end.i.if.end118.i_crit_edge
  tail call void @iwl_txq_progress(ptr noundef %63) #10
  br label %iwl_pcie_cmdq_reclaim.exit

iwl_pcie_cmdq_reclaim.exit:                       ; preds = %if.end118.i, %if.then51.i, %land.rhs40.i.iwl_pcie_cmdq_reclaim.exit_crit_edge, %if.then30.i.iwl_pcie_cmdq_reclaim.exit_crit_edge
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags, align 4
  %and68 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.then70, label %iwl_pcie_cmdq_reclaim.exit.if.end91_crit_edge

iwl_pcie_cmdq_reclaim.exit.if.end91_crit_edge:    ; preds = %iwl_pcie_cmdq_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then70:                                        ; preds = %iwl_pcie_cmdq_reclaim.exit
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %107 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool72.not = icmp eq i32 %and1.i, 0
  br i1 %tobool72.not, label %do.end77, label %if.then70.if.end81_crit_edge

if.then70.if.end81_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

do.end77:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 8
  %call78 = tail call ptr @iwl_get_cmd_string(ptr noundef %trans, i32 noundef %add.i147) #10
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %110, ptr noundef nonnull @.str.14, ptr noundef %call78) #10
  br label %if.end81

if.end81:                                         ; preds = %do.end77, %if.then70.if.end81_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #10
  %dev87 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %111 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev87, align 8
  %call88 = tail call ptr @iwl_get_cmd_string(ptr noundef %trans, i32 noundef %add.i147) #10
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %112, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_hcmd_complete, ptr noundef nonnull @.str.15, ptr noundef %call88) #10
  %wait_command_queue = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %wait_command_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end91

if.end91:                                         ; preds = %if.end81, %iwl_pcie_cmdq_reclaim.exit.if.end91_crit_edge
  %113 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_trans_pcie_tx(ptr noundef %trans, ptr noundef %skb, ptr noundef %dev_cmd, i32 noundef %txq_id) local_unnamed_addr #0 align 64 {
entry:
  %tso.i = alloca %struct.tso_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %dev_cmd, i32 0, i32 1
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %div3.i = lshr i32 %txq_id, 5
  %arrayidx.i = getelementptr i32, ptr %txqs, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %txq_id, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.rhs, label %if.end42

land.rhs:                                         ; preds = %entry
  %.b429 = load i1, ptr @iwl_trans_pcie_tx.__already_done, align 1
  br i1 %.b429, label %land.rhs.cleanup291_crit_edge, label %if.then, !prof !143

land.rhs.cleanup291_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup291

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_pcie_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1455, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %txq_id) #10
  br label %cleanup291

if.end42:                                         ; preds = %entry
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end42.if.end53_crit_edge, label %land.lhs.true

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end42
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %11 to i32
  %tfd46 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %12 = ptrtoint ptr %tfd46 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tfd46, align 8
  %conv47 = zext i8 %13 to i32
  %sub = add nsw i32 %conv47, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp = icmp slt i32 %sub, %conv
  br i1 %cmp, label %land.lhs.true49, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true49:                                  ; preds = %land.lhs.true
  %call.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %7) #10
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %land.lhs.true49.cleanup291_crit_edge, label %land.lhs.true49.if.end53_crit_edge

land.lhs.true49.if.end53_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true49.cleanup291_crit_edge:             ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup291

if.end53:                                         ; preds = %land.lhs.true49.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %if.end42.if.end53_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %call54 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %17) #14
  %conv55 = trunc i32 %call54 to i8
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %call56 = tail call i32 @iwl_txq_space(ptr noundef %trans, ptr noundef %1) #10
  %high_mark = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call56, i32 %19)
  %cmp57 = icmp slt i32 %call56, %19
  br i1 %cmp57, label %if.then59, label %if.end53.if.end75_crit_edge

if.end53.if.end75_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then59:                                        ; preds = %if.end53
  %id.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  %queue_stopped.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 1
  %call.i434 = tail call i32 @_test_and_set_bit(i32 noundef %21, ptr noundef %queue_stopped.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i434)
  %tobool.not.i435 = icmp eq i32 %call.i434, 0
  br i1 %tobool.not.i435, label %if.then.i, label %if.then59.iwl_txq_stop.exit_crit_edge

if.then59.iwl_txq_stop.exit_crit_edge:            ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_txq_stop.exit

if.then.i:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %22 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %op_mode.i, align 8
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %queue_full.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %queue_full.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue_full.i.i, align 4
  tail call void %29(ptr noundef %23, i32 noundef %25) #10
  br label %iwl_txq_stop.exit

iwl_txq_stop.exit:                                ; preds = %if.then.i, %if.then59.iwl_txq_stop.exit_crit_edge
  %.str.47.sink.i = phi ptr [ @.str.46, %if.then.i ], [ @.str.47, %if.then59.iwl_txq_stop.exit_crit_edge ]
  %dev8.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %30 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev8.i, align 8
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_txq_stop, ptr noundef nonnull %.str.47.sink.i, i32 noundef %33) #10
  %call60 = tail call i32 @iwl_txq_space(ptr noundef %trans, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 3
  br i1 %cmp61, label %if.then69, label %iwl_txq_stop.exit.if.end75_crit_edge, !prof !144

iwl_txq_stop.exit.if.end75_crit_edge:             ; preds = %iwl_txq_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then69:                                        ; preds = %iwl_txq_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %dev_cmd_offs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %dev_cmd_offs to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dev_cmd_offs, align 2
  %conv72 = zext i8 %35 to i32
  %add.ptr = getelementptr i8, ptr %cb, i32 %conv72
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev_cmd, ptr %add.ptr, align 4
  %overflow_q = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %overflow_q, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %40 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %skb, ptr %38, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13, i32 1
  %42 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup291

if.end75:                                         ; preds = %iwl_txq_stop.exit.if.end75_crit_edge, %if.end53.if.end75_crit_edge
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %15, i32 0, i32 5
  %44 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %seq_ctrl, align 2
  %46 = and i16 %45, -3841
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %48 = lshr exact i16 %47, 4
  %ampdu = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 10
  %49 = ptrtoint ptr %ampdu to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ampdu, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool79.not = icmp eq i8 %50, 0
  br i1 %tobool79.not, label %if.end75.if.end134_crit_edge, label %land.rhs81

if.end75.if.end134_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

land.rhs81:                                       ; preds = %if.end75
  %51 = and i16 %48, 255
  %and83 = zext i16 %51 to i32
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %write_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %and83)
  %cmp84.not = icmp eq i32 %53, %and83
  br i1 %cmp84.not, label %land.rhs81.if.end134_crit_edge, label %land.rhs94

land.rhs81.if.end134_crit_edge:                   ; preds = %land.rhs81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

land.rhs94:                                       ; preds = %land.rhs81
  %.b427428 = load i1, ptr @iwl_trans_pcie_tx.__already_done.17, align 1
  br i1 %.b427428, label %land.rhs94.if.end134_crit_edge, label %if.then105, !prof !143

land.rhs94.if.end134_crit_edge:                   ; preds = %land.rhs94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then105:                                       ; preds = %land.rhs94
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_pcie_tx.__already_done.17, align 1
  %conv119 = zext i16 %48 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1499, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %txq_id, i32 noundef %conv119, i32 noundef %53) #10
  br label %if.end134

if.end134:                                        ; preds = %if.then105, %land.rhs94.if.end134_crit_edge, %land.rhs81.if.end134_crit_edge, %if.end75.if.end134_crit_edge
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %entries, align 4
  %write_ptr142 = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 15
  %56 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %write_ptr142, align 4
  %skb144 = getelementptr %struct.iwl_pcie_txq_entry, ptr %55, i32 %57, i32 1
  %58 = ptrtoint ptr %skb144 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %skb, ptr %skb144, align 4
  %59 = load ptr, ptr %entries, align 4
  %60 = load i32, ptr %write_ptr142, align 4
  %arrayidx147 = getelementptr %struct.iwl_pcie_txq_entry, ptr %59, i32 %60
  %61 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %dev_cmd, ptr %arrayidx147, align 4
  %and148 = shl i32 %txq_id, 8
  %shl = and i32 %and148, 7936
  %62 = load i32, ptr %write_ptr142, align 4
  %and150 = and i32 %62, 255
  %or = or i32 %and150, %shl
  %conv151 = trunc i32 %or to i16
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv151)
  %sequence = getelementptr inbounds %struct.iwl_cmd_header, ptr %dev_cmd, i32 0, i32 2
  %64 = ptrtoint ptr %sequence to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %63, ptr %sequence, align 1
  %65 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %write_ptr142, align 4
  %first_tb_dma.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %first_tb_dma.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %first_tb_dma.i, align 4
  %mul.i = shl i32 %66, 6
  %add.i = add i32 %68, %mul.i
  %add155 = add i32 %add.i, 12
  %69 = tail call i32 @llvm.bswap.i32(i32 %add155)
  %dram_lsb_ptr = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %dev_cmd, i32 12
  %70 = ptrtoint ptr %dram_lsb_ptr to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %dram_lsb_ptr, align 1
  %dram_msb_ptr = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %dev_cmd, i32 13
  %71 = ptrtoint ptr %dram_msb_ptr to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %dram_msb_ptr, align 1
  %72 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %entries, align 4
  %74 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %write_ptr142, align 4
  %meta = getelementptr %struct.iwl_pcie_txq_entry, ptr %73, i32 %75, i32 3
  %flags = getelementptr %struct.iwl_pcie_txq_entry, ptr %73, i32 %75, i32 3, i32 1
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %flags, align 4
  %conv160 = and i32 %call54, 255
  %77 = trunc i32 %conv160 to i16
  %conv163 = add nuw nsw i16 %77, 40
  %78 = and i16 %17, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %78)
  %cmp.i = icmp eq i16 %78, -30720
  br i1 %cmp.i, label %land.end171, label %if.end134.if.then174_crit_edge

if.end134.if.then174_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then174

land.end171:                                      ; preds = %if.end134
  %79 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %15, align 2
  %81 = and i16 %80, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %81)
  %cmp.i.i = icmp eq i16 %81, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %15, i32 %retval.0.v.i
  %82 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %retval.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool170 = icmp slt i8 %83, 0
  br i1 %tobool170, label %land.end171.if.end186_crit_edge, label %land.end171.if.then174_crit_edge

land.end171.if.then174_crit_edge:                 ; preds = %land.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then174

land.end171.if.end186_crit_edge:                  ; preds = %land.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then174:                                       ; preds = %land.end171.if.then174_crit_edge, %if.end134.if.then174_crit_edge
  %add176 = add nuw nsw i16 %77, 43
  %and177 = and i16 %add176, 508
  call void @__sanitizer_cov_trace_cmp2(i16 %and177, i16 %conv163)
  %cmp181.not = icmp eq i16 %and177, %conv163
  br i1 %cmp181.not, label %if.then174.if.end186_crit_edge, label %if.then183

if.then174.if.end186_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then183:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  %tx_flags = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %dev_cmd, i32 2
  %84 = ptrtoint ptr %tx_flags to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %tx_flags, align 1
  %or184 = or i32 %85, 4096
  store i32 %or184, ptr %tx_flags, align 1
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %if.then174.if.end186_crit_edge, %land.end171.if.end186_crit_edge
  %86 = phi i1 [ false, %if.then183 ], [ false, %if.then174.if.end186_crit_edge ], [ true, %land.end171.if.end186_crit_edge ]
  %tb1_len.0 = phi i16 [ %and177, %if.then183 ], [ %conv163, %if.then174.if.end186_crit_edge ], [ %conv163, %land.end171.if.end186_crit_edge ]
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %tfd1.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %89 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %90 to i32
  %91 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %write_ptr142, align 4
  %mul.i436 = mul i32 %92, %conv.i
  %add.ptr.i = getelementptr i8, ptr %88, i32 %mul.i436
  %93 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %conv.i)
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %94 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %97 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool.not.i.i = icmp eq i16 %97, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %add.ptr.i, align 1
  %100 = lshr i16 %99, 8
  %101 = trunc i16 %100 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i

if.end.i.i:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  %num_tbs3.i.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i, i32 0, i32 1
  %102 = ptrtoint ptr %num_tbs3.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %num_tbs3.i.i, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i

iwl_txq_gen1_tfd_get_num_tbs.exit.i:              ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi i8 [ %101, %if.then.i.i ], [ %103, %if.end.i.i ]
  %retval.0.i.i = and i8 %retval.0.in.i.i, 31
  %104 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %tfd1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i, i8 %105)
  %cmp.not.i = icmp ult i8 %retval.0.i.i, %105
  br i1 %cmp.not.i, label %if.end49.i, label %do.end.i

do.end.i:                                         ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i = zext i8 %105 to i32
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %106 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %107, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv9.i) #10
  br label %iwl_pcie_txq_build_tfd.exit

if.end49.i:                                       ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = zext i8 %retval.0.i.i to i32
  %arrayidx.i.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i, i32 0, i32 2, i32 %conv6.i
  %108 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %109 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %arrayidx.i.i, align 1
  %hi_n_len5.i.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i, i32 0, i32 2, i32 %conv6.i, i32 1
  %110 = ptrtoint ptr %hi_n_len5.i.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 16385, ptr %hi_n_len5.i.i, align 1
  %add.i.i = add nuw nsw i8 %retval.0.i.i, 1
  %num_tbs.i.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i, i32 0, i32 1
  %111 = ptrtoint ptr %num_tbs.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %add.i.i, ptr %num_tbs.i.i, align 1
  br label %iwl_pcie_txq_build_tfd.exit

iwl_pcie_txq_build_tfd.exit:                      ; preds = %if.end49.i, %do.end.i
  %add.ptr192 = getelementptr i8, ptr %dev_cmd, i32 20
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %112 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev, align 8
  %conv193 = zext i16 %tb1_len.0 to i32
  %call.i439 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr192) #10
  br i1 %call.i439, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %iwl_pcie_txq_build_tfd.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i441, !prof !143

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i441:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %113) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i440 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i440, label %if.end.i.i442, label %if.then.i441.dev_name.exit.i_crit_edge

if.then.i441.dev_name.exit.i_crit_edge:           ; preds = %if.then.i441
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i442:                                    ; preds = %if.then.i441
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %113, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i442, %if.then.i441.dev_name.exit.i_crit_edge
  %retval.0.i.i443 = phi ptr [ %117, %if.end.i.i442 ], [ %115, %if.then.i441.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i443) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %119, i32 noundef -1) #10
  br label %out_err

dma_map_single_attrs.exit:                        ; preds = %iwl_pcie_txq_build_tfd.exit
  tail call void @debug_dma_map_single(ptr noundef %113, ptr noundef %add.ptr192, i32 noundef %conv193) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %120 = load ptr, ptr @mem_map, align 4
  %121 = ptrtoint ptr %add.ptr192 to i32
  %sub.i = add i32 %121, 1073741824
  %shr.i444 = lshr i32 %sub.i, 12
  %add.ptr.i445 = getelementptr %struct.page, ptr %120, i32 %shr.i444
  %and.i446 = and i32 %121, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %113, ptr noundef %add.ptr.i445, i32 noundef %and.i446, i32 noundef %conv193, i32 noundef 1, i32 noundef 0) #10
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %123, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i448 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i448, label %dma_map_single_attrs.exit.out_err_crit_edge, label %if.end205

dma_map_single_attrs.exit.out_err_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end205:                                        ; preds = %dma_map_single_attrs.exit
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  %126 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %size.i, align 2
  %conv.i451 = zext i16 %127 to i32
  %128 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %write_ptr142, align 4
  %mul.i453 = mul i32 %129, %conv.i451
  %add.ptr.i454 = getelementptr i8, ptr %125, i32 %mul.i453
  %130 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i456 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %use_tfh.i.i456 to i32
  call void @__asan_load2_noabort(i32 %132)
  %bf.load.i.i457 = load i16, ptr %use_tfh.i.i456, align 4
  %133 = and i16 %bf.load.i.i457, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool.not.i.i458 = icmp eq i16 %133, 0
  br i1 %tobool.not.i.i458, label %if.end.i.i461, label %if.then.i.i459

if.then.i.i459:                                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %add.ptr.i454 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %add.ptr.i454, align 1
  %136 = lshr i16 %135, 8
  %137 = trunc i16 %136 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i465

if.end.i.i461:                                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  %num_tbs3.i.i460 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i454, i32 0, i32 1
  %138 = ptrtoint ptr %num_tbs3.i.i460 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %num_tbs3.i.i460, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i465

iwl_txq_gen1_tfd_get_num_tbs.exit.i465:           ; preds = %if.end.i.i461, %if.then.i.i459
  %retval.0.in.i.i462 = phi i8 [ %137, %if.then.i.i459 ], [ %139, %if.end.i.i461 ]
  %retval.0.i.i463 = and i8 %retval.0.in.i.i462, 31
  %140 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %tfd1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i463, i8 %141)
  %cmp.not.i464 = icmp ult i8 %retval.0.i.i463, %141
  br i1 %cmp.not.i464, label %if.end49.i474, label %do.end.i468

do.end.i468:                                      ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i465
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i466 = zext i8 %141 to i32
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %143, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv9.i466) #10
  br label %iwl_pcie_txq_build_tfd.exit476

if.end49.i474:                                    ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i465
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i469 = zext i8 %retval.0.i.i463 to i32
  %arrayidx.i.i470 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i454, i32 0, i32 2, i32 %conv6.i469
  %shl.i.i = shl nuw nsw i16 %tb1_len.0, 4
  %144 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #10
  %145 = ptrtoint ptr %arrayidx.i.i470 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 %144, ptr %arrayidx.i.i470, align 1
  %146 = tail call i16 @llvm.bswap.i16(i16 %shl.i.i) #10
  %hi_n_len5.i.i471 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i454, i32 0, i32 2, i32 %conv6.i469, i32 1
  %147 = ptrtoint ptr %hi_n_len5.i.i471 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 %146, ptr %hi_n_len5.i.i471, align 1
  %add.i.i472 = add nuw nsw i8 %retval.0.i.i463, 1
  %num_tbs.i.i473 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i454, i32 0, i32 1
  %148 = ptrtoint ptr %num_tbs.i.i473 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %add.i.i472, ptr %num_tbs.i.i473, align 1
  br label %iwl_pcie_txq_build_tfd.exit476

iwl_pcie_txq_build_tfd.exit476:                   ; preds = %if.end49.i474, %do.end.i468
  %149 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev, align 8
  %151 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %write_ptr142, align 4
  %153 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %154, i32 0, i32 5
  %155 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %156 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool.not.i477 = icmp eq i16 %156, 0
  br i1 %tobool.not.i477, label %iwl_pcie_txq_build_tfd.exit476.iwl_txq_get_tfd.exit_crit_edge, label %if.then.i479

iwl_pcie_txq_build_tfd.exit476.iwl_txq_get_tfd.exit_crit_edge: ; preds = %iwl_pcie_txq_build_tfd.exit476
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_txq_get_tfd.exit

if.then.i479:                                     ; preds = %iwl_pcie_txq_build_tfd.exit476
  call void @__sanitizer_cov_trace_pc() #12
  %n_window.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 18
  %157 = ptrtoint ptr %n_window.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %n_window.i.i, align 4
  %sub.i.i = add i32 %158, 65535
  %and.i.i = and i32 %152, 65535
  %conv.i478 = and i32 %and.i.i, %sub.i.i
  br label %iwl_txq_get_tfd.exit

iwl_txq_get_tfd.exit:                             ; preds = %if.then.i479, %iwl_pcie_txq_build_tfd.exit476.iwl_txq_get_tfd.exit_crit_edge
  %idx.addr.0.i = phi i32 [ %conv.i478, %if.then.i479 ], [ %152, %iwl_pcie_txq_build_tfd.exit476.iwl_txq_get_tfd.exit_crit_edge ]
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 4
  %161 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %size.i, align 2
  %conv1.i = zext i16 %162 to i32
  %mul.i481 = mul i32 %idx.addr.0.i, %conv1.i
  %add.ptr.i482 = getelementptr i8, ptr %160, i32 %mul.i481
  %add215 = add nuw nsw i32 %conv193, 20
  tail call fastcc void @trace_iwlwifi_dev_tx(ptr noundef %150, ptr noundef %skb, ptr noundef %add.ptr.i482, i32 noundef %conv1.i, ptr noundef %dev_cmd, i32 noundef %add215, i32 noundef %conv160)
  br i1 %86, label %land.lhs.true219, label %iwl_txq_get_tfd.exit.if.else234_crit_edge

iwl_txq_get_tfd.exit.if.else234_crit_edge:        ; preds = %iwl_txq_get_tfd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else234

land.lhs.true219:                                 ; preds = %iwl_txq_get_tfd.exit
  %end.i483 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %163 = ptrtoint ptr %end.i483 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %end.i483, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool222.not = icmp eq i16 %166, 0
  br i1 %tobool222.not, label %land.lhs.true219.if.else234_crit_edge, label %if.then223

land.lhs.true219.if.else234_crit_edge:            ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else234

if.then223:                                       ; preds = %land.lhs.true219
  %167 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data, align 4
  %conv.i484 = zext i16 %166 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tso.i) #10
  %169 = getelementptr inbounds %struct.tso_t, ptr %tso.i, i32 0, i32 1
  %170 = getelementptr inbounds %struct.tso_t, ptr %tso.i, i32 0, i32 2
  %171 = call ptr @memset(ptr %tso.i, i32 255, i32 20)
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %168, align 2
  %174 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev, align 8
  %176 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %write_ptr142, align 4
  %178 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i488 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %use_tfh.i.i488 to i32
  call void @__asan_load2_noabort(i32 %180)
  %bf.load.i.i489 = load i16, ptr %use_tfh.i.i488, align 4
  %181 = and i16 %bf.load.i.i489, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %tobool.not.i.i490 = icmp eq i16 %181, 0
  br i1 %tobool.not.i.i490, label %if.then223.iwl_txq_get_tfd.exit.i_crit_edge, label %if.then.i.i491

if.then223.iwl_txq_get_tfd.exit.i_crit_edge:      ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_txq_get_tfd.exit.i

if.then.i.i491:                                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #12
  %n_window.i.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 18
  %182 = ptrtoint ptr %n_window.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %n_window.i.i.i, align 4
  %sub.i.i.i = add i32 %183, 65535
  %and.i.i.i = and i32 %177, 65535
  %conv.i.i = and i32 %and.i.i.i, %sub.i.i.i
  br label %iwl_txq_get_tfd.exit.i

iwl_txq_get_tfd.exit.i:                           ; preds = %if.then.i.i491, %if.then223.iwl_txq_get_tfd.exit.i_crit_edge
  %idx.addr.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i491 ], [ %177, %if.then223.iwl_txq_get_tfd.exit.i_crit_edge ]
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 4
  %186 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %size.i, align 2
  %conv1.i.i = zext i16 %187 to i32
  %mul.i.i = mul i32 %idx.addr.0.i.i, %conv1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %185, i32 %mul.i.i
  tail call fastcc void @trace_iwlwifi_dev_tx(ptr noundef %175, ptr noundef %skb, ptr noundef %add.ptr.i.i, i32 noundef %conv1.i.i, ptr noundef %dev_cmd, i32 noundef %add215, i32 noundef 0) #10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %188 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %190 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %transport_header.i.i, align 2
  %conv.i1.i = zext i16 %191 to i32
  %add.ptr.i2.i = getelementptr i8, ptr %189, i32 %conv.i1.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %192 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %network_header.i.i, align 4
  %conv.i4.i = zext i16 %193 to i32
  %add.ptr.i5.i = getelementptr i8, ptr %189, i32 %conv.i4.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i2.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i5.i to i32
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i2.i, i32 0, i32 4
  %194 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %195 = lshr i16 %bf.load.i.i.i, 10
  %196 = and i16 %195, 60
  %mul.i.i.i = zext i16 %196 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 8
  %add10.i = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %add12.i = add i32 %add10.i, %mul.i.i.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %197 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %len.i, align 4
  %199 = lshr i16 %173, 3
  %200 = and i16 %199, 8
  %201 = zext i16 %200 to i32
  %202 = add nuw nsw i32 %conv160, %201
  %203 = add i32 %202, %add12.i
  %sub16.i = sub i32 %198, %203
  %add17.i = add nsw i32 %conv.i484, -1
  %sub18.i = add i32 %add17.i, %sub16.i
  %div.i = udiv i32 %sub18.i, %conv.i484
  %add20.i = add i32 %add12.i, 17
  %mul.i493 = mul i32 %add20.i, %div.i
  %add22.i = add i32 %mul.i493, %201
  %call23.i = tail call ptr @get_page_hdr(ptr noundef %trans, i32 noundef %add22.i, ptr noundef %skb) #10
  %tobool.not.i494 = icmp eq ptr %call23.i, null
  br i1 %tobool.not.i494, label %iwl_txq_get_tfd.exit.i.iwl_fill_data_tbs_amsdu.exit.thread_crit_edge, label %if.end.i

iwl_txq_get_tfd.exit.i.iwl_fill_data_tbs_amsdu.exit.thread_crit_edge: ; preds = %iwl_txq_get_tfd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_fill_data_tbs_amsdu.exit.thread

if.end.i:                                         ; preds = %iwl_txq_get_tfd.exit.i
  %pos.i = getelementptr inbounds %struct.iwl_tso_hdr_page, ptr %call23.i, i32 0, i32 1
  %204 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pos.i, align 4
  %206 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %data, align 4
  %add.ptr.i495 = getelementptr i8, ptr %207, i32 %conv160
  %208 = call ptr @memcpy(ptr %205, ptr %add.ptr.i495, i32 %201)
  %209 = load ptr, ptr %pos.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %209, i32 %201
  store ptr %add.ptr30.i, ptr %pos.i, align 4
  %call34.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %202) #10
  %210 = trunc i32 %add12.i to i16
  %211 = ptrtoint ptr %payload to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %payload, align 2
  %213 = tail call i16 @llvm.bswap.i16(i16 %212) #10
  %add.i.i496 = sub i16 %213, %210
  %214 = tail call i16 @llvm.bswap.i16(i16 %add.i.i496) #10
  %215 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %214, ptr %payload, align 2
  %call38.i = call i32 @tso_start(ptr noundef %skb, ptr noundef nonnull %tso.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16.i)
  %tobool39.not108.i = icmp eq i32 %sub16.i, 0
  br i1 %tobool39.not108.i, label %if.end.i.iwl_fill_data_tbs_amsdu.exit_crit_edge, label %while.body.lr.ph.i

if.end.i.iwl_fill_data_tbs_amsdu.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_fill_data_tbs_amsdu.exit

while.body.lr.ph.i:                               ; preds = %if.end.i
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %168, i32 0, i32 4
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %168, i32 0, i32 2
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %168, i32 0, i32 3
  %addr4.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %168, i32 0, i32 6
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %cleanup.i.while.cond.loopexit.i_crit_edge, %iwl_pcie_txq_build_tfd.exit.i.while.cond.loopexit.i_crit_edge
  br i1 %tobool67.not.i, label %while.cond.loopexit.i.iwl_fill_data_tbs_amsdu.exit_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.loopexit.i.iwl_fill_data_tbs_amsdu.exit_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_fill_data_tbs_amsdu.exit

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %start_hdr.0111.i = phi ptr [ %205, %while.body.lr.ph.i ], [ %293, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %amsdu_pad.0110.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %and.i497, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %total_len.0109.i = phi i32 [ %sub16.i, %while.body.lr.ph.i ], [ %sub43.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %216 = call i32 @llvm.umin.i32(i32 %total_len.0109.i, i32 %conv.i484) #10
  %217 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pos.i, align 4
  %sub43.i = sub i32 %total_len.0109.i, %216
  %219 = call ptr @memset(ptr %218, i32 0, i32 %amsdu_pad.0110.i)
  %220 = load ptr, ptr %pos.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %220, i32 %amsdu_pad.0110.i
  store ptr %add.ptr48.i, ptr %pos.i, align 4
  %221 = add i32 %216, %add12.i
  %add50.neg.i = sub i32 2, %221
  %and.i497 = and i32 %add50.neg.i, 3
  %222 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %168, align 2
  %224 = and i16 %223, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %224)
  %cmp.i.not.i.i = icmp eq i16 %224, 0
  %retval.0.i.i498 = select i1 %cmp.i.not.i.i, ptr %addr1.i.i, ptr %addr3.i.i
  %225 = ptrtoint ptr %retval.0.i.i498 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %retval.0.i.i498, align 4
  %227 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %add.ptr48.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %retval.0.i.i498, i32 4
  %228 = ptrtoint ptr %add.ptr.i6.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %add.ptr.i6.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr48.i, i32 4
  %230 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %229, ptr %add.ptr1.i.i, align 2
  %231 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pos.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %232, i32 6
  store ptr %add.ptr56.i, ptr %pos.i, align 4
  %233 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %168, align 2
  %235 = and i16 %234, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %235)
  %cmp.i.i.i = icmp eq i16 %235, 3
  %236 = and i16 %234, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %236)
  %cmp.i11.not.i.i = icmp eq i16 %236, 0
  %spec.select.i = select i1 %cmp.i11.not.i.i, ptr %addr2.i.i, ptr %addr3.i.i
  %retval.0.i9.i = select i1 %cmp.i.i.i, ptr %addr4.i.i, ptr %spec.select.i
  %237 = ptrtoint ptr %retval.0.i9.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %retval.0.i9.i, align 4
  %239 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %add.ptr56.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %retval.0.i9.i, i32 4
  %240 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %add.ptr.i10.i, align 2
  %add.ptr1.i11.i = getelementptr i8, ptr %232, i32 10
  %242 = ptrtoint ptr %add.ptr1.i11.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %241, ptr %add.ptr1.i11.i, align 2
  %243 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %pos.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %244, i32 6
  store ptr %add.ptr60.i, ptr %pos.i, align 4
  %conv62.i = trunc i32 %221 to i16
  %245 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv62.i, ptr %add.ptr60.i, align 2
  %246 = load ptr, ptr %pos.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %246, i32 2
  store ptr %add.ptr65.i, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub43.i)
  %tobool67.not.i = icmp eq i32 %sub43.i, 0
  call void @tso_build_hdr(ptr noundef %skb, ptr noundef %add.ptr65.i, ptr noundef nonnull %tso.i, i32 noundef %216, i1 noundef zeroext %tobool67.not.i) #10
  %247 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pos.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %248, i32 %add12.i
  store ptr %add.ptr69.i, ptr %pos.i, align 4
  %sub.ptr.lhs.cast71.i = ptrtoint ptr %add.ptr69.i to i32
  %sub.ptr.rhs.cast72.i = ptrtoint ptr %start_hdr.0111.i to i32
  %sub.ptr.sub73.i = sub i32 %sub.ptr.lhs.cast71.i, %sub.ptr.rhs.cast72.i
  %249 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev, align 8
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %start_hdr.0111.i) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.iwl_fill_data_tbs_amsdu.exit.thread.sink.split_crit_edge, label %if.then.i12.i, !prof !143

land.rhs.i.i.iwl_fill_data_tbs_amsdu.exit.thread.sink.split_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_fill_data_tbs_amsdu.exit.thread.sink.split

if.then.i12.i:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %250) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %250, i32 0, i32 3
  %251 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %252, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i12.i.dev_name.exit.i.i_crit_edge

if.then.i12.i.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  %253 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %250, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i12.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %254, %if.end.i.i.i ], [ %252, %if.then.i12.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %iwl_fill_data_tbs_amsdu.exit.thread.sink.split

dma_map_single_attrs.exit.i:                      ; preds = %while.body.i
  call void @debug_dma_map_single(ptr noundef %250, ptr noundef %start_hdr.0111.i, i32 noundef %sub.ptr.sub73.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %255 = load ptr, ptr @mem_map, align 4
  %sub.i.i499 = add i32 %sub.ptr.rhs.cast72.i, 1073741824
  %shr.i.i = lshr i32 %sub.i.i499, 12
  %add.ptr.i13.i = getelementptr %struct.page, ptr %255, i32 %shr.i.i
  %and.i.i500 = and i32 %sub.ptr.rhs.cast72.i, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %250, ptr noundef %add.ptr.i13.i, i32 noundef %and.i.i500, i32 noundef %sub.ptr.sub73.i, i32 noundef 1, i32 noundef 0) #10
  %256 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev, align 8
  call void @debug_dma_mapping_error(ptr noundef %257, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i15.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i15.i, label %dma_map_single_attrs.exit.i.iwl_fill_data_tbs_amsdu.exit.thread_crit_edge, label %if.end83.i

dma_map_single_attrs.exit.i.iwl_fill_data_tbs_amsdu.exit.thread_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_fill_data_tbs_amsdu.exit.thread

if.end83.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %conv84.i = trunc i32 %sub.ptr.sub73.i to i16
  %258 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %1, align 4
  %260 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %size.i, align 2
  %conv.i17.i = zext i16 %261 to i32
  %262 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %write_ptr142, align 4
  %mul.i18.i = mul i32 %263, %conv.i17.i
  %add.ptr.i19.i = getelementptr i8, ptr %259, i32 %mul.i18.i
  %264 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %265, i32 0, i32 5
  %266 = ptrtoint ptr %use_tfh.i.i.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %bf.load.i.i20.i = load i16, ptr %use_tfh.i.i.i, align 4
  %267 = and i16 %bf.load.i.i20.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %267)
  %tobool.not.i.i21.i = icmp eq i16 %267, 0
  br i1 %tobool.not.i.i21.i, label %if.end.i.i23.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  %268 = ptrtoint ptr %add.ptr.i19.i to i32
  call void @__asan_loadN_noabort(i32 %268, i32 2)
  %269 = load i16, ptr %add.ptr.i19.i, align 1
  %270 = lshr i16 %269, 8
  %271 = trunc i16 %270 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i.i

if.end.i.i23.i:                                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_tbs3.i.i.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i19.i, i32 0, i32 1
  %272 = ptrtoint ptr %num_tbs3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %num_tbs3.i.i.i, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i.i

iwl_txq_gen1_tfd_get_num_tbs.exit.i.i:            ; preds = %if.end.i.i23.i, %if.then.i.i.i
  %retval.0.in.i.i.i = phi i8 [ %271, %if.then.i.i.i ], [ %273, %if.end.i.i23.i ]
  %retval.0.i.i24.i = and i8 %retval.0.in.i.i.i, 31
  %274 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %tfd1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i24.i, i8 %275)
  %cmp.not.i.i = icmp ult i8 %retval.0.i.i24.i, %275
  br i1 %cmp.not.i.i, label %if.end49.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i.i = zext i8 %275 to i32
  %276 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %277, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv9.i.i) #10
  br label %iwl_pcie_txq_build_tfd.exit.i

if.end49.i.i:                                     ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i.i = zext i8 %retval.0.i.i24.i to i32
  %arrayidx.i.i.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i19.i, i32 0, i32 2, i32 %conv6.i.i
  %shl.i.i.i = shl i16 %conv84.i, 4
  %278 = call i32 @llvm.bswap.i32(i32 %call41.i.i) #10
  %279 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %279, i32 4)
  store i32 %278, ptr %arrayidx.i.i.i, align 1
  %280 = call i16 @llvm.bswap.i16(i16 %shl.i.i.i) #10
  %hi_n_len5.i.i.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i19.i, i32 0, i32 2, i32 %conv6.i.i, i32 1
  %281 = ptrtoint ptr %hi_n_len5.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %281, i32 2)
  store i16 %280, ptr %hi_n_len5.i.i.i, align 1
  %add.i.i.i501 = add nuw nsw i8 %retval.0.i.i24.i, 1
  %num_tbs.i.i.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i19.i, i32 0, i32 1
  %282 = ptrtoint ptr %num_tbs.i.i.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %add.i.i.i501, ptr %num_tbs.i.i.i, align 1
  br label %iwl_pcie_txq_build_tfd.exit.i

iwl_pcie_txq_build_tfd.exit.i:                    ; preds = %if.end49.i.i, %do.end.i.i
  %283 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev, align 8
  call fastcc void @trace_iwlwifi_dev_tx_tb(ptr noundef %284, ptr noundef %skb, ptr noundef %start_hdr.0111.i, i32 noundef %call41.i.i, i32 noundef %sub.ptr.sub73.i) #10
  %285 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pos.i, align 4
  %sub.ptr.lhs.cast89.i = ptrtoint ptr %286 to i32
  %sub.ptr.rhs.cast90.i = ptrtoint ptr %218 to i32
  %sub.ptr.sub91.i = sub i32 %sub.ptr.lhs.cast89.i, %sub.ptr.rhs.cast90.i
  %conv92.i = trunc i32 %sub.ptr.sub91.i to i16
  %287 = ptrtoint ptr %payload to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %payload, align 2
  %289 = call i16 @llvm.bswap.i16(i16 %288) #10
  %add.i26.i = add i16 %289, %conv92.i
  %290 = call i16 @llvm.bswap.i16(i16 %add.i26.i) #10
  %291 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %290, ptr %payload, align 2
  %292 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool95.not106.i = icmp eq i32 %216, 0
  br i1 %tobool95.not106.i, label %iwl_pcie_txq_build_tfd.exit.i.while.cond.loopexit.i_crit_edge, label %iwl_pcie_txq_build_tfd.exit.i.while.body96.i_crit_edge

iwl_pcie_txq_build_tfd.exit.i.while.body96.i_crit_edge: ; preds = %iwl_pcie_txq_build_tfd.exit.i
  br label %while.body96.i

iwl_pcie_txq_build_tfd.exit.i.while.cond.loopexit.i_crit_edge: ; preds = %iwl_pcie_txq_build_tfd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.loopexit.i

while.body96.i:                                   ; preds = %cleanup.i.while.body96.i_crit_edge, %iwl_pcie_txq_build_tfd.exit.i.while.body96.i_crit_edge
  %data_left.0107.i = phi i32 [ %sub124.i, %cleanup.i.while.body96.i_crit_edge ], [ %216, %iwl_pcie_txq_build_tfd.exit.i.while.body96.i_crit_edge ]
  %294 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %169, align 4
  %296 = call i32 @llvm.umin.i32(i32 %295, i32 %data_left.0107.i) #10
  %297 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev, align 8
  %299 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %170, align 4
  %call.i27.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %300) #10
  br i1 %call.i27.i, label %land.rhs.i29.i, label %dma_map_single_attrs.exit44.i

land.rhs.i29.i:                                   ; preds = %while.body96.i
  %.b1.i28.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i28.i, label %land.rhs.i29.i.iwl_fill_data_tbs_amsdu.exit.thread.sink.split_crit_edge, label %if.then.i33.i, !prof !143

land.rhs.i29.i.iwl_fill_data_tbs_amsdu.exit.thread.sink.split_crit_edge: ; preds = %land.rhs.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_fill_data_tbs_amsdu.exit.thread.sink.split

if.then.i33.i:                                    ; preds = %land.rhs.i29.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i30.i = call ptr @dev_driver_string(ptr noundef %298) #10
  %init_name.i.i31.i = getelementptr inbounds %struct.device, ptr %298, i32 0, i32 3
  %301 = ptrtoint ptr %init_name.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %init_name.i.i31.i, align 8
  %tobool.not.i.i32.i = icmp eq ptr %302, null
  br i1 %tobool.not.i.i32.i, label %if.end.i.i34.i, label %if.then.i33.i.dev_name.exit.i36.i_crit_edge

if.then.i33.i.dev_name.exit.i36.i_crit_edge:      ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i36.i

if.end.i.i34.i:                                   ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  %303 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %298, align 4
  br label %dev_name.exit.i36.i

dev_name.exit.i36.i:                              ; preds = %if.end.i.i34.i, %if.then.i33.i.dev_name.exit.i36.i_crit_edge
  %retval.0.i.i35.i = phi ptr [ %304, %if.end.i.i34.i ], [ %302, %if.then.i33.i.dev_name.exit.i36.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i30.i, ptr noundef %retval.0.i.i35.i) #10
  br label %iwl_fill_data_tbs_amsdu.exit.thread.sink.split

dma_map_single_attrs.exit44.i:                    ; preds = %while.body96.i
  call void @debug_dma_map_single(ptr noundef %298, ptr noundef %300, i32 noundef %296) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %305 = load ptr, ptr @mem_map, align 4
  %306 = ptrtoint ptr %300 to i32
  %sub.i37.i = add i32 %306, 1073741824
  %shr.i38.i = lshr i32 %sub.i37.i, 12
  %add.ptr.i39.i = getelementptr %struct.page, ptr %305, i32 %shr.i38.i
  %and.i40.i = and i32 %306, 4095
  %call41.i41.i = call i32 @dma_map_page_attrs(ptr noundef %298, ptr noundef %add.ptr.i39.i, i32 noundef %and.i40.i, i32 noundef %296, i32 noundef 1, i32 noundef 0) #10
  %307 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dev, align 8
  call void @debug_dma_mapping_error(ptr noundef %308, i32 noundef %call41.i41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i41.i)
  %cmp.i45.i = icmp eq i32 %call41.i41.i, -1
  br i1 %cmp.i45.i, label %dma_map_single_attrs.exit44.i.iwl_fill_data_tbs_amsdu.exit.thread_crit_edge, label %if.end119.i

dma_map_single_attrs.exit44.i.iwl_fill_data_tbs_amsdu.exit.thread_crit_edge: ; preds = %dma_map_single_attrs.exit44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_fill_data_tbs_amsdu.exit.thread

if.end119.i:                                      ; preds = %dma_map_single_attrs.exit44.i
  %conv120.i = trunc i32 %296 to i16
  %309 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %1, align 4
  %311 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %size.i, align 2
  %conv.i49.i = zext i16 %312 to i32
  %313 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %write_ptr142, align 4
  %mul.i51.i = mul i32 %314, %conv.i49.i
  %add.ptr.i52.i = getelementptr i8, ptr %310, i32 %mul.i51.i
  %315 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i54.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %316, i32 0, i32 5
  %317 = ptrtoint ptr %use_tfh.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %317)
  %bf.load.i.i55.i = load i16, ptr %use_tfh.i.i54.i, align 4
  %318 = and i16 %bf.load.i.i55.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %318)
  %tobool.not.i.i56.i = icmp eq i16 %318, 0
  br i1 %tobool.not.i.i56.i, label %if.end.i.i60.i, label %if.then.i.i58.i

if.then.i.i58.i:                                  ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #12
  %319 = ptrtoint ptr %add.ptr.i52.i to i32
  call void @__asan_loadN_noabort(i32 %319, i32 2)
  %320 = load i16, ptr %add.ptr.i52.i, align 1
  %321 = lshr i16 %320, 8
  %322 = trunc i16 %321 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i64.i

if.end.i.i60.i:                                   ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_tbs3.i.i59.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i52.i, i32 0, i32 1
  %323 = ptrtoint ptr %num_tbs3.i.i59.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %num_tbs3.i.i59.i, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i64.i

iwl_txq_gen1_tfd_get_num_tbs.exit.i64.i:          ; preds = %if.end.i.i60.i, %if.then.i.i58.i
  %retval.0.in.i.i61.i = phi i8 [ %322, %if.then.i.i58.i ], [ %324, %if.end.i.i60.i ]
  %retval.0.i.i62.i = and i8 %retval.0.in.i.i61.i, 31
  %325 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %tfd1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i62.i, i8 %326)
  %cmp.not.i63.i = icmp ult i8 %retval.0.i.i62.i, %326
  br i1 %cmp.not.i63.i, label %if.end49.i74.i, label %do.end.i67.i

do.end.i67.i:                                     ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i65.i = zext i8 %326 to i32
  %327 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %328, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv9.i65.i) #10
  br label %cleanup.i

if.end49.i74.i:                                   ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i68.i = zext i8 %retval.0.i.i62.i to i32
  %arrayidx.i.i69.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i52.i, i32 0, i32 2, i32 %conv6.i68.i
  %shl.i.i70.i = shl i16 %conv120.i, 4
  %329 = call i32 @llvm.bswap.i32(i32 %call41.i41.i) #10
  %330 = ptrtoint ptr %arrayidx.i.i69.i to i32
  call void @__asan_storeN_noabort(i32 %330, i32 4)
  store i32 %329, ptr %arrayidx.i.i69.i, align 1
  %331 = call i16 @llvm.bswap.i16(i16 %shl.i.i70.i) #10
  %hi_n_len5.i.i71.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i52.i, i32 0, i32 2, i32 %conv6.i68.i, i32 1
  %332 = ptrtoint ptr %hi_n_len5.i.i71.i to i32
  call void @__asan_storeN_noabort(i32 %332, i32 2)
  store i16 %331, ptr %hi_n_len5.i.i71.i, align 1
  %add.i.i72.i = add nuw nsw i8 %retval.0.i.i62.i, 1
  %num_tbs.i.i73.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i52.i, i32 0, i32 1
  %333 = ptrtoint ptr %num_tbs.i.i73.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %add.i.i72.i, ptr %num_tbs.i.i73.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end49.i74.i, %do.end.i67.i
  %334 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %dev, align 8
  %336 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %170, align 4
  call fastcc void @trace_iwlwifi_dev_tx_tb(ptr noundef %335, ptr noundef %skb, ptr noundef %337, i32 noundef %call41.i41.i, i32 noundef %296) #10
  %sub124.i = sub i32 %data_left.0107.i, %296
  call void @tso_build_data(ptr noundef %skb, ptr noundef nonnull %tso.i, i32 noundef %296) #10
  %tobool95.not.i = icmp eq i32 %sub124.i, 0
  br i1 %tobool95.not.i, label %cleanup.i.while.cond.loopexit.i_crit_edge, label %cleanup.i.while.body96.i_crit_edge

cleanup.i.while.body96.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body96.i

cleanup.i.while.cond.loopexit.i_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.loopexit.i

iwl_fill_data_tbs_amsdu.exit.thread.sink.split:   ; preds = %dev_name.exit.i36.i, %land.rhs.i29.i.iwl_fill_data_tbs_amsdu.exit.thread.sink.split_crit_edge, %dev_name.exit.i.i, %land.rhs.i.i.iwl_fill_data_tbs_amsdu.exit.thread.sink.split_crit_edge
  %338 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dev, align 8
  call void @debug_dma_mapping_error(ptr noundef %339, i32 noundef -1) #10
  br label %iwl_fill_data_tbs_amsdu.exit.thread

iwl_fill_data_tbs_amsdu.exit.thread:              ; preds = %iwl_fill_data_tbs_amsdu.exit.thread.sink.split, %dma_map_single_attrs.exit44.i.iwl_fill_data_tbs_amsdu.exit.thread_crit_edge, %dma_map_single_attrs.exit.i.iwl_fill_data_tbs_amsdu.exit.thread_crit_edge, %iwl_txq_get_tfd.exit.i.iwl_fill_data_tbs_amsdu.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tso.i) #10
  br label %out_err

iwl_fill_data_tbs_amsdu.exit:                     ; preds = %while.cond.loopexit.i.iwl_fill_data_tbs_amsdu.exit_crit_edge, %if.end.i.iwl_fill_data_tbs_amsdu.exit_crit_edge
  %call136.i = call ptr @skb_push(ptr noundef %skb, i32 noundef %202) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tso.i) #10
  br label %if.end257

if.else234:                                       ; preds = %land.lhs.true219.if.else234_crit_edge, %iwl_txq_get_tfd.exit.if.else234_crit_edge
  %call235 = tail call fastcc i32 @iwl_fill_data_tbs(ptr noundef %trans, ptr noundef %skb, ptr noundef %1, i8 noundef zeroext %conv55, ptr noundef %meta)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end244, label %if.else234.out_err_crit_edge, !prof !143

if.else234.out_err_crit_edge:                     ; preds = %if.else234
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end244:                                        ; preds = %if.else234
  %end.i502 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %340 = ptrtoint ptr %end.i502 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %end.i502, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %341, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end244
  %frag.0.in = phi ptr [ %frag_list, %if.end244 ], [ %frag.0, %for.body.for.cond_crit_edge ]
  %342 = ptrtoint ptr %frag.0.in to i32
  call void @__asan_load4_noabort(i32 %342)
  %frag.0 = load ptr, ptr %frag.0.in, align 8
  %tobool246.not = icmp eq ptr %frag.0, null
  br i1 %tobool246.not, label %for.cond.if.end257_crit_edge, label %for.body

for.cond.if.end257_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end257

for.body:                                         ; preds = %for.cond
  %call247 = tail call fastcc i32 @iwl_fill_data_tbs(ptr noundef %trans, ptr noundef nonnull %frag.0, ptr noundef %1, i8 noundef zeroext 0, ptr noundef %meta)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %for.body.for.cond_crit_edge, label %for.body.out_err_crit_edge, !prof !143

for.body.out_err_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end257:                                        ; preds = %for.cond.if.end257_crit_edge, %iwl_fill_data_tbs_amsdu.exit
  %first_tb_bufs = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 1
  %343 = ptrtoint ptr %first_tb_bufs to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %first_tb_bufs, align 4
  %345 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %write_ptr142, align 4
  %arrayidx259 = getelementptr %struct.iwl_pcie_first_tb_buf, ptr %344, i32 %346
  %347 = call ptr @memcpy(ptr %arrayidx259, ptr %dev_cmd, i32 20)
  %348 = load i32, ptr %write_ptr142, align 4
  %349 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i504 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %350, i32 0, i32 5
  %351 = ptrtoint ptr %use_tfh.i504 to i32
  call void @__asan_load2_noabort(i32 %351)
  %bf.load.i505 = load i16, ptr %use_tfh.i504, align 4
  %352 = and i16 %bf.load.i505, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %352)
  %tobool.not.i506 = icmp eq i16 %352, 0
  br i1 %tobool.not.i506, label %if.end.i524, label %if.then.i523

if.then.i523:                                     ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #12
  %n_window.i.i507 = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 18
  %353 = ptrtoint ptr %n_window.i.i507 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %n_window.i.i507, align 4
  %sub.i.i508 = add i32 %354, 65535
  %and.i.i509 = and i32 %348, 65535
  %conv.i510 = and i32 %and.i.i509, %sub.i.i508
  %355 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %1, align 4
  %357 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %size.i, align 2
  %conv1.i514 = zext i16 %358 to i32
  %mul.i515 = mul nuw i32 %conv.i510, %conv1.i514
  %add.ptr.i516 = getelementptr i8, ptr %356, i32 %mul.i515
  %359 = ptrtoint ptr %payload to i32
  call void @__asan_loadN_noabort(i32 %359, i32 2)
  %360 = load i16, ptr %payload, align 1
  %361 = call i16 @llvm.bswap.i16(i16 %360)
  %362 = ptrtoint ptr %add.ptr.i516 to i32
  call void @__asan_loadN_noabort(i32 %362, i32 2)
  %363 = load i16, ptr %add.ptr.i516, align 1
  %364 = lshr i16 %363, 8
  %365 = trunc i16 %364 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit

if.end.i524:                                      ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #12
  %366 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %1, align 4
  %368 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %size.i, align 2
  %conv1.i514543 = zext i16 %369 to i32
  %mul.i515544 = mul i32 %348, %conv1.i514543
  %add.ptr.i516545 = getelementptr i8, ptr %367, i32 %mul.i515544
  %370 = ptrtoint ptr %payload to i32
  call void @__asan_loadN_noabort(i32 %370, i32 2)
  %371 = load i16, ptr %payload, align 1
  %372 = call i16 @llvm.bswap.i16(i16 %371)
  %num_tbs3.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i516545, i32 0, i32 1
  %373 = ptrtoint ptr %num_tbs3.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %num_tbs3.i, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit

iwl_txq_gen1_tfd_get_num_tbs.exit:                ; preds = %if.end.i524, %if.then.i523
  %375 = phi i16 [ %361, %if.then.i523 ], [ %372, %if.end.i524 ]
  %retval.0.in.i = phi i8 [ %365, %if.then.i523 ], [ %374, %if.end.i524 ]
  %retval.0.i525 = and i8 %retval.0.in.i, 31
  %conv264 = zext i8 %retval.0.i525 to i32
  call void @iwl_txq_gen1_update_byte_cnt_tbl(ptr noundef %trans, ptr noundef %1, i16 noundef zeroext %375, i32 noundef %conv264) #10
  %376 = and i16 %17, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %376)
  %cmp.i527.not = icmp eq i16 %376, 0
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 16
  %377 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %read_ptr, align 4
  %379 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %write_ptr142, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %378, i32 %380)
  %cmp268 = icmp eq i32 %378, %380
  br i1 %cmp268, label %land.lhs.true270, label %iwl_txq_gen1_tfd_get_num_tbs.exit.if.end281_crit_edge

iwl_txq_gen1_tfd_get_num_tbs.exit.if.end281_crit_edge: ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

land.lhs.true270:                                 ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit
  %wd_timeout = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 12
  %381 = ptrtoint ptr %wd_timeout to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %wd_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %382)
  %tobool271.not = icmp eq i32 %382, 0
  br i1 %tobool271.not, label %land.lhs.true270.if.end281_crit_edge, label %if.then272

land.lhs.true270.if.end281_crit_edge:             ; preds = %land.lhs.true270
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

if.then272:                                       ; preds = %land.lhs.true270
  %frozen = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 9
  %383 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %frozen, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %384)
  %tobool273.not = icmp eq i8 %384, 0
  br i1 %tobool273.not, label %if.then274, label %if.else278

if.then274:                                       ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #12
  %stuck_timer = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %385 = load volatile i32, ptr @jiffies, align 128
  %add276 = add i32 %385, %382
  %call277 = call i32 @mod_timer(ptr noundef %stuck_timer, i32 noundef %add276) #10
  br label %if.end281

if.else278:                                       ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #12
  %frozen_expiry_remainder = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 5
  %386 = ptrtoint ptr %frozen_expiry_remainder to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %382, ptr %frozen_expiry_remainder, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.else278, %if.then274, %land.lhs.true270.if.end281_crit_edge, %iwl_txq_gen1_tfd_get_num_tbs.exit.if.end281_crit_edge
  %387 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %write_ptr142, align 4
  %inc.i = add i32 %388, 1
  %389 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %trans_cfg.i.i, align 4
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %390, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %392, i32 0, i32 5
  %393 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %max_tfd_queue_size.i, align 4
  %sub.i529 = add i32 %394, -1
  %and.i530 = and i32 %sub.i529, %inc.i
  store i32 %and.i530, ptr %write_ptr142, align 4
  br i1 %cmp.i527.not, label %if.then286, label %if.end281.if.end287_crit_edge

if.end281.if.end287_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end287

if.then286:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @iwl_pcie_txq_inc_wr_ptr(ptr noundef %trans, ptr noundef %1)
  br label %if.end287

if.end287:                                        ; preds = %if.then286, %if.end281.if.end287_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup291

out_err:                                          ; preds = %for.body.out_err_crit_edge, %if.else234.out_err_crit_edge, %iwl_fill_data_tbs_amsdu.exit.thread, %dma_map_single_attrs.exit.out_err_crit_edge, %dma_map_single_attrs.exit.thread
  %395 = ptrtoint ptr %write_ptr142 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %write_ptr142, align 4
  call void @iwl_txq_gen1_tfd_unmap(ptr noundef %trans, ptr noundef %meta, ptr noundef %1, i32 noundef %396) #10
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup291

cleanup291:                                       ; preds = %out_err, %if.end287, %if.then69, %land.lhs.true49.cleanup291_crit_edge, %if.then, %land.rhs.cleanup291_crit_edge
  %retval.0 = phi i32 [ 0, %if.then69 ], [ -1, %out_err ], [ 0, %if.end287 ], [ -22, %if.then ], [ -12, %land.lhs.true49.cleanup291_crit_edge ], [ -22, %land.rhs.cleanup291_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_tx(ptr noundef %dev, ptr noundef %skb, ptr noundef %tfd, i32 noundef %tfdlen, ptr noundef %buf0, i32 noundef %buf0_len, i32 noundef %hdr_len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_tx, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !147

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !143

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_tx(ptr noundef null, ptr noundef %dev, ptr noundef %skb, ptr noundef %tfd, i32 noundef %tfdlen, ptr noundef %buf0, i32 noundef %buf0_len, i32 noundef %hdr_len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !155
  %13 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !143

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_tx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_iwlwifi_dev_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 113, ptr noundef nonnull @.str.41) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !151
  %31 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_fill_data_tbs(ptr nocapture noundef readonly %trans, ptr noundef %skb, ptr nocapture noundef readonly %txq, i8 noundef zeroext %hdr_len, ptr nocapture noundef %out_meta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %conv = zext i8 %hdr_len to i32
  %4 = add i32 %3, %conv
  %sub = sub i32 %1, %4
  %conv1 = trunc i32 %sub to i16
  %conv2 = and i32 %sub, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp.not = icmp eq i32 %conv2, 0
  br i1 %cmp.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !143

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %6) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef -1) #10
  br label %cleanup58

dma_map_single_attrs.exit:                        ; preds = %if.then
  tail call void @debug_dma_map_single(ptr noundef %6, ptr noundef %add.ptr, i32 noundef %conv2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  %sub.i93 = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i93, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %conv2, i32 noundef 1, i32 noundef 0) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup58_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup58_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup58

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %add.ptr15 = getelementptr i8, ptr %22, i32 %conv
  tail call fastcc void @trace_iwlwifi_dev_tx_tb(ptr noundef %20, ptr noundef %skb, ptr noundef %add.ptr15, i32 noundef %call41.i, i32 noundef %conv2)
  %23 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %txq, align 4
  %tfd1.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %26 to i32
  %write_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 15
  %27 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %write_ptr.i, align 4
  %mul.i = mul i32 %28, %conv.i
  %add.ptr.i94 = getelementptr i8, ptr %24, i32 %mul.i
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %29 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %32 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i.i95 = icmp eq i16 %32, 0
  br i1 %tobool.not.i.i95, label %if.end.i.i96, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %add.ptr.i94, align 1
  %35 = lshr i16 %34, 8
  %36 = trunc i16 %35 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i

if.end.i.i96:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %num_tbs3.i.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i94, i32 0, i32 1
  %37 = ptrtoint ptr %num_tbs3.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_tbs3.i.i, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i

iwl_txq_gen1_tfd_get_num_tbs.exit.i:              ; preds = %if.end.i.i96, %if.then.i.i
  %retval.0.in.i.i = phi i8 [ %36, %if.then.i.i ], [ %38, %if.end.i.i96 ]
  %retval.0.i.i97 = and i8 %retval.0.in.i.i, 31
  %39 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tfd1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i97, i8 %40)
  %cmp.not.i = icmp ult i8 %retval.0.i.i97, %40
  br i1 %cmp.not.i, label %if.end49.i, label %do.end.i

do.end.i:                                         ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i = zext i8 %40 to i32
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv9.i) #10
  br label %if.end18

if.end49.i:                                       ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = zext i8 %retval.0.i.i97 to i32
  %arrayidx.i.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i94, i32 0, i32 2, i32 %conv6.i
  %shl.i.i = shl i16 %conv1, 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #10
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %arrayidx.i.i, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %shl.i.i) #10
  %hi_n_len5.i.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i94, i32 0, i32 2, i32 %conv6.i, i32 1
  %46 = ptrtoint ptr %hi_n_len5.i.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %hi_n_len5.i.i, align 1
  %add.i.i = add nuw nsw i8 %retval.0.i.i97, 1
  %num_tbs.i.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i94, i32 0, i32 1
  %47 = ptrtoint ptr %num_tbs.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %add.i.i, ptr %num_tbs.i.i, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.end49.i, %do.end.i, %entry.if.end18_crit_edge
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %48 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i, align 4
  %nr_frags148 = getelementptr inbounds %struct.skb_shared_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %nr_frags148 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nr_frags148, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp21150.not = icmp eq i8 %51, 0
  br i1 %cmp21150.not, label %if.end18.cleanup58_crit_edge, label %for.body.lr.ph

if.end18.cleanup58_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup58

for.body.lr.ph:                                   ; preds = %if.end18
  %dev29 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %tfd1.i107 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %size.i108 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %write_ptr.i110 = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 15
  %trans_cfg.i.i113 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %tbs = getelementptr inbounds %struct.iwl_cmd_meta, ptr %out_meta, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %52 = phi ptr [ %49, %for.body.lr.ph ], [ %101, %for.inc.for.body_crit_edge ]
  %i.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %52, i32 0, i32 12, i32 %i.0151
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %52, i32 0, i32 12, i32 %i.0151, i32 1
  %53 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool26.not = icmp eq i32 %54, 0
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %if.end28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %55 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev29, align 8
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %52, i32 0, i32 12, i32 %i.0151, i32 2
  %59 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %56, ptr noundef %58, i32 noundef %60, i32 noundef %54, i32 noundef 1, i32 noundef 0) #10
  %61 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev29, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %62, i32 noundef %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i101.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i101.not, label %if.end28.cleanup58_crit_edge, label %if.end42, !prof !144

if.end28.cleanup58_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup58

if.end42:                                         ; preds = %if.end28
  %63 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev29, align 8
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %66) #10
  %67 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %call1.i, i32 %68
  %69 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bv_len.i, align 4
  tail call fastcc void @trace_iwlwifi_dev_tx_tb(ptr noundef %64, ptr noundef %skb, ptr noundef %add.ptr.i104, i32 noundef %call2.i, i32 noundef %70)
  %71 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bv_len.i, align 4
  %conv47 = trunc i32 %72 to i16
  %73 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %txq, align 4
  %75 = ptrtoint ptr %size.i108 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %size.i108, align 2
  %conv.i109 = zext i16 %76 to i32
  %77 = ptrtoint ptr %write_ptr.i110 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %write_ptr.i110, align 4
  %mul.i111 = mul i32 %78, %conv.i109
  %add.ptr.i112 = getelementptr i8, ptr %74, i32 %mul.i111
  %79 = ptrtoint ptr %trans_cfg.i.i113 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %trans_cfg.i.i113, align 4
  %use_tfh.i.i114 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %use_tfh.i.i114 to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load.i.i115 = load i16, ptr %use_tfh.i.i114, align 4
  %82 = and i16 %bf.load.i.i115, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool.not.i.i116 = icmp eq i16 %82, 0
  br i1 %tobool.not.i.i116, label %if.end.i.i119, label %if.then.i.i117

if.then.i.i117:                                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %add.ptr.i112 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %add.ptr.i112, align 1
  %85 = lshr i16 %84, 8
  %86 = trunc i16 %85 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i123

if.end.i.i119:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %num_tbs3.i.i118 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i112, i32 0, i32 1
  %87 = ptrtoint ptr %num_tbs3.i.i118 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_tbs3.i.i118, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit.i123

iwl_txq_gen1_tfd_get_num_tbs.exit.i123:           ; preds = %if.end.i.i119, %if.then.i.i117
  %retval.0.in.i.i120 = phi i8 [ %86, %if.then.i.i117 ], [ %88, %if.end.i.i119 ]
  %retval.0.i.i121 = and i8 %retval.0.in.i.i120, 31
  %89 = ptrtoint ptr %tfd1.i107 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tfd1.i107, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i121, i8 %90)
  %cmp.not.i122 = icmp ult i8 %retval.0.i.i121, %90
  br i1 %cmp.not.i122, label %iwl_pcie_txq_build_tfd.exit135, label %iwl_pcie_txq_build_tfd.exit135.thread

iwl_pcie_txq_build_tfd.exit135.thread:            ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i123
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i124 = zext i8 %90 to i32
  %91 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev29, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %92, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv9.i124) #10
  br label %cleanup58

iwl_pcie_txq_build_tfd.exit135:                   ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit.i123
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i127 = zext i8 %retval.0.i.i121 to i32
  %arrayidx.i.i128 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i112, i32 0, i32 2, i32 %conv6.i127
  %shl.i.i129 = shl i16 %conv47, 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %call2.i) #10
  %94 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %93, ptr %arrayidx.i.i128, align 1
  %95 = tail call i16 @llvm.bswap.i16(i16 %shl.i.i129) #10
  %hi_n_len5.i.i130 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i112, i32 0, i32 2, i32 %conv6.i127, i32 1
  %96 = ptrtoint ptr %hi_n_len5.i.i130 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 2)
  store i16 %95, ptr %hi_n_len5.i.i130, align 1
  %add.i.i131 = add nuw nsw i8 %retval.0.i.i121, 1
  %num_tbs.i.i132 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i112, i32 0, i32 1
  %97 = ptrtoint ptr %num_tbs.i.i132 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %add.i.i131, ptr %num_tbs.i.i132, align 1
  %shl = shl nuw i32 1, %conv6.i127
  %98 = ptrtoint ptr %tbs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tbs, align 4
  %or = or i32 %99, %shl
  store i32 %or, ptr %tbs, align 4
  br label %for.inc

for.inc:                                          ; preds = %iwl_pcie_txq_build_tfd.exit135, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0151, 1
  %100 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %nr_frags, align 2
  %conv20 = zext i8 %103 to i32
  %cmp21 = icmp ult i32 %inc, %conv20
  br i1 %cmp21, label %for.inc.for.body_crit_edge, label %for.inc.cleanup58_crit_edge

for.inc.cleanup58_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup58

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup58:                                        ; preds = %for.inc.cleanup58_crit_edge, %iwl_pcie_txq_build_tfd.exit135.thread, %if.end28.cleanup58_crit_edge, %if.end18.cleanup58_crit_edge, %dma_map_single_attrs.exit.cleanup58_crit_edge, %dma_map_single_attrs.exit.thread
  %retval.4 = phi i32 [ -22, %dma_map_single_attrs.exit.cleanup58_crit_edge ], [ -22, %dma_map_single_attrs.exit.thread ], [ -22, %iwl_pcie_txq_build_tfd.exit135.thread ], [ 0, %if.end18.cleanup58_crit_edge ], [ 0, %for.inc.cleanup58_crit_edge ], [ -22, %if.end28.cleanup58_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_gen1_update_byte_cnt_tbl(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_delay(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_free_tso_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_free_tfd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_clear_cmd_in_flight(ptr noundef %trans) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %apmg_wake_up_wa = getelementptr inbounds %struct.iwl_base_params, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %apmg_wake_up_wa to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %apmg_wake_up_wa, align 4
  %5 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 252
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %cmd_hold_nic_awake = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 263
  %6 = ptrtoint ptr %cmd_hold_nic_awake to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_hold_nic_awake, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %do.end, label %if.end27, !prof !144

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %cmd_hold_nic_awake to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cmd_hold_nic_awake, align 8
  %call.i.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #10
  %and37.i.i = and i32 %call.i.i, -9
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 36, i32 noundef %and37.i.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end27, %do.end
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_poll_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_txq_alloc(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_hcmd(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__iwl_trans_pcie_grab_nic_access(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_force_nmi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_progress(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_page_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_tx_tb(ptr noundef %dev, ptr noundef %skb, ptr noundef %data_src, i32 noundef %phys, i32 noundef %data_len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx_tb, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_tx_tb, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !147

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !143

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_tx_tb(ptr noundef null, ptr noundef %dev, ptr noundef %skb, ptr noundef %data_src, i32 noundef %phys, i32 noundef %data_len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !157
  %13 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !143

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !133) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx_tb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx_tb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_tx_tb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_iwlwifi_dev_tx_tb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 35, ptr noundef nonnull @.str.41) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !151
  %31 = tail call i32 @llvm.read_register.i32(metadata !133) #10
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
declare dso_local void @tso_build_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_tx_tb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !26, !28, !30, !31, !33, !35, !37, !38, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !58, !60, !61, !63, !64, !66, !68, !70, !71, !73, !75, !76, !78, !79, !81, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !115, !117, !118, !119, !121, !123, !124, !126, !128, !129, !131, !132}
!llvm.named.register.sp = !{!133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 49, i32 6}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 361, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 601, i32 4}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 744, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.iwl_trans_pcie_txq_enable, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 834, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 838, i32 3}
!14 = !{ptr @iwl_trans_pcie_txq_disable.zero_val, !15, !"zero_val", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 860, i32 19}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 872, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__func__.iwl_trans_pcie_txq_disable, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 887, i32 2}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 919, i32 6}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 993, i32 6}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 1006, i32 3}
!28 = !{ptr @__func__.iwl_pcie_enqueue_hcmd, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 1084, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 1140, i32 6}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 1190, i32 6}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 1194, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 1224, i32 4}
!40 = !{ptr @__func__.iwl_pcie_hcmd_complete, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 1229, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 1454, i32 6}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 1496, i32 2}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__func__.iwl_pcie_txq_inc_wr_ptr, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 97, i32 4}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 110, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 1191, i32 2}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 1193, i32 6}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 1194, i32 3}
!60 = !{ptr @__func__.iwl_trans_txq_enable_cfg, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-fh.h", i32 75, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-fh.h", i32 82, i32 2}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 208, i32 3}
!68 = !{ptr @__func__.iwl_pcie_txq_unmap, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 214, i32 3}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 220, i32 8}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 743, i32 2}
!75 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h", i32 179, i32 6}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @__func__.iwl_wake_queue, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.h", i32 33, i32 3}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 412, i32 3}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 513, i32 3}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 520, i32 3}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 528, i32 3}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 548, i32 4}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-scd.h", i32 64, i32 2}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-scd.h", i32 72, i32 2}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 166, i32 3}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 171, i32 6}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!103 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h", i32 18, i32 1}
!107 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!109 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!112 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 680, i32 3}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @__func__.iwl_pcie_cmdq_reclaim, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx.c", i32 693, i32 4}
!121 = !{ptr @__func__.iwl_txq_stop, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.h", i32 65, i32 3}
!123 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.h", i32 67, i32 3}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h", i32 76, i32 1}
!128 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-data.h", i32 17, i32 1}
!131 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!133 = !{!"sp"}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"branch_weights", i32 2000, i32 1}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{i8 0, i8 2}
!146 = !{!"auto-init"}
!147 = !{i64 2148894554, i64 2148894559, i64 2148894572, i64 2148894616, i64 2148894650, i64 2148894671}
!148 = !{i64 2159580852}
!149 = !{i64 2159581097}
!150 = !{i64 2149717935}
!151 = !{i64 2149718971}
!152 = !{i64 2153372538, i64 2153373022, i64 2153372575, i64 2153372631, i64 2153372665, i64 2153372689, i64 2153372730, i64 2153372751, i64 2153372779, i64 2153372813}
!153 = !{i64 2148412739, i64 2148412765, i64 2148412794, i64 2148412828, i64 2148412859, i64 2148412882}
!154 = !{i64 2159620694}
!155 = !{i64 2159620977}
!156 = !{i64 2159518488}
!157 = !{i64 2159518753}
