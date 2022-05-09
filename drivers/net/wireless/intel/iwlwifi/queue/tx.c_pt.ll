; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/queue/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/queue/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iwl_txq = type { ptr, ptr, i32, ptr, %struct.spinlock, i32, %struct.timer_list, ptr, i8, i8, i8, i32, i32, %struct.sk_buff_head, %struct.iwl_dma_ptr, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
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
%struct.iwl_tfh_tfd = type { i16, [25 x %struct.iwl_tfh_tb], i32 }
%struct.iwl_tfh_tb = type <{ i16, i64 }>
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_pcie_txq_entry = type { ptr, ptr, ptr, %struct.iwl_cmd_meta }
%struct.iwl_cmd_meta = type { ptr, i32, i32 }
%struct.iwl_op_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.133, %union.anon.134, [48 x i8], %union.anon.135, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.137, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iwl_tso_hdr_page = type { ptr, ptr }
%struct.page = type { i32, %union.anon.30, %union.anon.91, %struct.atomic_t, i32 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.91 = type { %struct.atomic_t }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.tso_t = type { i32, i32, ptr, i16, i8, i8, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.iwl_device_tx_cmd = type { %struct.iwl_cmd_header, [0 x i8] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.iwl_pcie_first_tb_buf = type { [64 x i8] }
%struct.iwl_tx_queue_cfg_cmd = type { i8, i8, i16, i32, i64, i64 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_tfd = type { [3 x i8], i8, [20 x %struct.iwl_tfd_tb], i32 }
%struct.iwl_tfd_tb = type <{ i32, i16 }>
%struct.iwlagn_scd_bc_tbl = type { [320 x i16] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlwifi/queue/tx.c\00", [50 x i8] zeroinitializer }, align 32
@__func__.iwl_txq_inc_wr_ptr = private unnamed_addr constant [19 x i8] c"iwl_txq_inc_wr_ptr\00", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Q:%d WR: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Too many chunks: %i\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"possible DMA problem with iova:0x%llx, len:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error can not send more than %d chunks\0A\00", [56 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@iwl_txq_gen2_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"queue %d out of range\00", [42 x i8] zeroinitializer }, align 32
@iwl_txq_gen2_tx.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX on unused queue %d\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.iwl_txq_gen2_unmap = private unnamed_addr constant [19 x i8] c"iwl_txq_gen2_unmap\00", align 1
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Q %d Free %d\0A\00", [18 x i8] zeroinitializer }, align 32
@iwl_txq_gen2_unmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_txq_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Max tfd queue size must be a power of two, but is %d\00", [43 x i8] zeroinitializer }, align 32
@iwl_txq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&txq->lock\00", [21 x i8] zeroinitializer }, align 32
@iwl_txq_init.iwl_txq_cmd_queue_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&iwl_txq_cmd_queue_lock_class\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Queue %d is stuck %d %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Queue %d is %sactive on fifo %d and stuck for %u ms. SW [%d, %d] HW [%d, %d] FH TRB=0x0%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@iwl_txq_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&txq->stuck_timer)\00", [44 x i8] zeroinitializer }, align 32
@iwl_txq_dyn_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"queue %d not used\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwl_txq_dyn_free = private unnamed_addr constant [17 x i8] c"iwl_txq_dyn_free\00", align 1
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Deactivate queue %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Not enough memory for tx queue\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Tx %d queue init failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Tx %d queue alloc failed\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.iwl_txq_reclaim = private unnamed_addr constant [16 x i8] c"iwl_txq_reclaim\00", align 1
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Q %d inactive - ignoring idx %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[Q %d] %d -> %d (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: Read index for txq id (%d), last_to_free %d is out of range [0-%d] %d %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@iwl_txq_reclaim.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_trans_txq_freeze_timer = private unnamed_addr constant [27 x i8] c"iwl_trans_txq_freeze_timer\00", align 1
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s TXQ %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Freezing\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Waking\00", [25 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_txq_send_hcmd = private unnamed_addr constant [24 x i8] c"iwl_trans_txq_send_hcmd\00", align 1
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Dropping CMD 0x%x: RF KILL\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Dropping CMD 0x%x: D3\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error sending %s: enqueue_hcmd failed: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@iwl_op_mode_free_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__func__.iwl_txq_stop = private unnamed_addr constant [13 x i8] c"iwl_txq_stop\00", align 1
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Stop hwq %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hwq %d already stopped\0A\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_iwlwifi_dev_tx = external dso_local global %struct.tracepoint, align 4
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h\00", [38 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_iwlwifi_dev_tx_tb = external dso_local global %struct.tracepoint, align 4
@.str.41 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-devtrace-data.h\00", [41 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_tx_tb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"TB bug workaround: copied %d bytes from 0x%llx to 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d >= %d\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.iwl_wake_queue = private unnamed_addr constant [15 x i8] c"iwl_wake_queue\00", align 1
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Wake hwq %d\0A\00", [19 x i8] zeroinitializer }, align 32
@SCD_QUEUE_STATUS_BITS.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-scd.h\00", [51 x i8] zeroinitializer }, align 32
@SCD_QUEUE_RDPTR.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@SCD_QUEUE_WRPTR.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Scheduler BC Table allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tx queue alloc failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tx queue init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@iwl_txq_alloc_response.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"queue index %d unsupported\00", [37 x i8] zeroinitializer }, align 32
@iwl_txq_alloc_response.__already_done.50 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"queue %d already used\00", [42 x i8] zeroinitializer }, align 32
@iwl_txq_alloc_response.__already_done.52 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"queue %d already allocated\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_txq_alloc_response = private unnamed_addr constant [23 x i8] c"iwl_txq_alloc_response\00", align 1
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Activate queue %d\0A\00", [45 x i8] zeroinitializer }, align 32
@iwl_trans_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", [49 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_tx = private unnamed_addr constant [13 x i8] c"iwl_trans_tx\00", align 1
@__func__.iwl_trans_txq_send_hcmd_sync = private unnamed_addr constant [29 x i8] c"iwl_trans_txq_send_hcmd_sync\00", align 1
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Attempting to send sync command %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Command %s: a command is already active!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting HCMD_ACTIVE for command %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error sending %s: time out after %dms.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Current CMD queue read_ptr %d write_ptr %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Clearing HCMD_ACTIVE for command %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FW error in SYNC CMD %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RFKILL in SYNC CMD... no rsp\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: Response NULL in '%s'\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 68, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 70, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 94, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 156, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 166, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 713, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 717, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 807, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 931, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 941, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [29 x i8] c"iwl_txq_cmd_queue_lock_class\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 944, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 946, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 980, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 990, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1034, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1238, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1245, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1272, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1278, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1288, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1537, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1545, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1553, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1671, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1808, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1815, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1828, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [52 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 179, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1160, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 65, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 67, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 326, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant [61 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 76, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 108, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [58 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-data.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 17, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 263, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 28, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/queue/tx.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 33, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-scd.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 72, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1109, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1116, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1121, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1153, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1159, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1164, i32 6 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1178, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1150, i32 6 }
@___asan_gen_.232 = private unnamed_addr constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1151, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1717, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1719, i32 6 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1724, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1740, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1743, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1747, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1758, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1767, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/queue/tx.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1773, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @iwl_txq_init.__key, ptr @.str.10, ptr @iwl_txq_init.iwl_txq_cmd_queue_lock_class, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @iwl_txq_alloc.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_txq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_txq_init.iwl_txq_cmd_queue_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_txq_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_inc_wr_ptr(ptr noundef %trans, ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !171

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %id = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 19
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 15
  %5 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_ptr, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %2, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_txq_inc_wr_ptr, ptr noundef nonnull @.str.1, i32 noundef %4, i32 noundef %6) #11
  %7 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %write_ptr, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %shl = shl i32 %10, 16
  %or = or i32 %shl, %8
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 1120, i32 noundef %or) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_gen2_tfd_unmap(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %meta, ptr nocapture noundef %tfd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tfd to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %tfd, align 1
  %2 = lshr i16 %1, 8
  %3 = trunc i16 %2 to i8
  %conv1.i = and i8 %3, 31
  %conv = zext i8 %conv1.i to i32
  %tfd1 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %4 = ptrtoint ptr %tfd1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tfd1, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i, i8 %5)
  %cmp = icmp ugt i8 %conv1.i, %5
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv1.i)
  %cmp745 = icmp ugt i8 %conv1.i, 1
  br i1 %cmp745, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev10 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %conv) #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 8
  %arrayidx18 = getelementptr %struct.iwl_tfh_tfd, ptr %tfd, i32 0, i32 1, i32 %i.046
  %addr19 = getelementptr %struct.iwl_tfh_tfd, ptr %tfd, i32 0, i32 1, i32 %i.046, i32 1
  %10 = ptrtoint ptr %addr19 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %addr19, align 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %conv20 = trunc i64 %12 to i32
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %arrayidx18, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv24 = zext i16 %15 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %conv20, i32 noundef %conv24, i32 noundef 1, i32 noundef 0) #11
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %tfd to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 0, ptr %tfd, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_gen2_free_tfd(ptr nocapture noundef readonly %trans, ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 16
  %0 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %read_ptr, align 4
  %n_window.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 18
  %2 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_window.i, align 4
  %sub.i = add i32 %3, 65535
  %and.i = and i32 %1, 65535
  %conv = and i32 %and.i, %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !171

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 3
  %5 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entries, align 4
  %tobool26.not = icmp eq ptr %6, null
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %7 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %10 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.end28.iwl_txq_get_tfd.exit_crit_edge, label %if.then.i

if.end28.iwl_txq_get_tfd.exit_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_get_tfd.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_window.i, align 4
  %sub.i.i = add i32 %12, 65535
  %conv.i56 = and i32 %sub.i.i, %conv
  br label %iwl_txq_get_tfd.exit

iwl_txq_get_tfd.exit:                             ; preds = %if.then.i, %if.end28.iwl_txq_get_tfd.exit_crit_edge
  %idx.addr.0.i = phi i32 [ %conv.i56, %if.then.i ], [ %conv, %if.end28.iwl_txq_get_tfd.exit_crit_edge ]
  %13 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %txq, align 4
  %size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %size.i, align 2
  %conv1.i = zext i16 %16 to i32
  %mul.i = mul nuw i32 %idx.addr.0.i, %conv1.i
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %add.ptr.i, align 1
  %19 = lshr i16 %18, 8
  %20 = trunc i16 %19 to i8
  %conv1.i.i = and i8 %20, 31
  %conv.i57 = zext i8 %conv1.i.i to i32
  %tfd1.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %21 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tfd1.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i.i, i8 %22)
  %cmp.i = icmp ugt i8 %conv1.i.i, %22
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %iwl_txq_get_tfd.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv1.i.i)
  %cmp745.i = icmp ugt i8 %conv1.i.i, 1
  br i1 %cmp745.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dev10.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %for.body.i

do.end.i:                                         ; preds = %iwl_txq_get_tfd.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %24, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %conv.i57) #11
  br label %iwl_txq_gen2_tfd_unmap.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.046.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev10.i, align 8
  %arrayidx18.i = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr.i, i32 0, i32 1, i32 %i.046.i
  %addr19.i = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr.i, i32 0, i32 1, i32 %i.046.i, i32 1
  %27 = ptrtoint ptr %addr19.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %addr19.i, align 1
  %29 = tail call i64 @llvm.bswap.i64(i64 %28) #11
  %conv20.i = trunc i64 %29 to i32
  %30 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %arrayidx18.i, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #11
  %conv24.i = zext i16 %32 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %conv20.i, i32 noundef %conv24.i, i32 noundef 1, i32 noundef 0) #11
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i57
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 0, ptr %add.ptr.i, align 1
  br label %iwl_txq_gen2_tfd_unmap.exit

iwl_txq_gen2_tfd_unmap.exit:                      ; preds = %for.end.i, %do.end.i
  %34 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %entries, align 4
  %skb33 = getelementptr %struct.iwl_pcie_txq_entry, ptr %35, i32 %conv, i32 1
  %36 = ptrtoint ptr %skb33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb33, align 4
  %tobool34.not = icmp eq ptr %37, null
  br i1 %tobool34.not, label %iwl_txq_gen2_tfd_unmap.exit.cleanup_crit_edge, label %if.then35

iwl_txq_gen2_tfd_unmap.exit.cleanup_crit_edge:    ; preds = %iwl_txq_gen2_tfd_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then35:                                        ; preds = %iwl_txq_gen2_tfd_unmap.exit
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %38 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %op_mode, align 8
  %tobool.not.i58 = icmp eq ptr %39, null
  br i1 %tobool.not.i58, label %land.rhs.i, label %if.end39.critedge.i

land.rhs.i:                                       ; preds = %if.then35
  %.b44.i = load i1, ptr @iwl_op_mode_free_skb.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge, label %if.then.i59, !prof !172

land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_op_mode_free_skb.exit

if.then.i59:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_op_mode_free_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 179, i32 noundef 9, ptr noundef null) #11
  br label %iwl_op_mode_free_skb.exit

if.end39.critedge.i:                              ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %free_skb.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %free_skb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %free_skb.i, align 4
  tail call void %43(ptr noundef nonnull %39, ptr noundef nonnull %37) #11
  br label %iwl_op_mode_free_skb.exit

iwl_op_mode_free_skb.exit:                        ; preds = %if.end39.critedge.i, %if.then.i59, %land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge
  %44 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %entries, align 4
  %skb38 = getelementptr %struct.iwl_pcie_txq_entry, ptr %45, i32 %conv, i32 1
  %46 = ptrtoint ptr %skb38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %skb38, align 4
  br label %cleanup

cleanup:                                          ; preds = %iwl_op_mode_free_skb.exit, %iwl_txq_gen2_tfd_unmap.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_txq_gen2_set_tb(ptr nocapture noundef readonly %trans, ptr nocapture noundef %tfd, i32 noundef %addr, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tfd to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %tfd, align 1
  %2 = lshr i16 %1, 8
  %3 = trunc i16 %2 to i8
  %conv1.i = and i8 %3, 31
  %conv = zext i8 %conv1.i to i32
  %conv1 = zext i32 %addr to i64
  %conv2.i = zext i16 %len to i64
  %add.i = add nuw nsw i64 %conv2.i, %conv1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i)
  %cmp.i = icmp ugt i64 %add.i, 4294967295
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = zext i16 %len to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef nonnull @.str.3, i64 noundef %conv1, i32 noundef %conv11) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %conv1.i)
  %cmp = icmp ugt i8 %conv1.i, 24
  br i1 %cmp, label %do.end40, label %if.end56, !prof !171

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 160, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end56:                                         ; preds = %if.end
  %4 = ptrtoint ptr %tfd to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %tfd, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %tfd58 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %7 = ptrtoint ptr %tfd58 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tfd58, align 8
  %9 = zext i8 %8 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %9)
  %cmp60.not = icmp ult i16 %6, %9
  br i1 %cmp60.not, label %if.end73, label %do.end66

do.end66:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %conv59 = zext i8 %8 to i32
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %conv59) #11
  br label %cleanup

if.end73:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.iwl_tfh_tfd, ptr %tfd, i32 0, i32 1, i32 %conv
  %addr75 = getelementptr %struct.iwl_tfh_tfd, ptr %tfd, i32 0, i32 1, i32 %conv, i32 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %conv1) #11
  %13 = ptrtoint ptr %addr75 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %addr75, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %len)
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %arrayidx, align 1
  %narrow = add nuw nsw i8 %conv1.i, 1
  %conv76 = zext i8 %narrow to i16
  %16 = shl nuw nsw i16 %conv76, 8
  %17 = ptrtoint ptr %tfd to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %tfd, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end66, %do.end40
  %retval.0 = phi i32 [ -22, %do.end40 ], [ -22, %do.end66 ], [ %conv, %if.end73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_page_hdr(ptr nocapture noundef readonly %trans, i32 noundef %len, ptr nocapture noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tso_hdr_page = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 8
  %0 = ptrtoint ptr %tso_hdr_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tso_hdr_page, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !161) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %page_offs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 6
  %10 = ptrtoint ptr %page_offs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %page_offs, align 1
  %conv = zext i8 %11 to i32
  %add.ptr = getelementptr i8, ptr %cb, i32 %conv
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end28, label %do.end13, !prof !172

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 288, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end28:                                         ; preds = %entry
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %tobool29.not = icmp eq ptr %15, null
  br i1 %tobool29.not, label %if.end28.alloc_crit_edge, label %if.end31

if.end28.alloc_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %alloc

if.end31:                                         ; preds = %if.end28
  %pos = getelementptr inbounds %struct.iwl_tso_hdr_page, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pos, align 4
  %add.ptr32 = getelementptr i8, ptr %17, i32 %len
  %call34 = tail call ptr @page_address(ptr noundef nonnull %15) #11
  %add.ptr36 = getelementptr i8, ptr %call34, i32 4092
  %cmp = icmp ult ptr %add.ptr32, %add.ptr36
  br i1 %cmp, label %if.end31.out_crit_edge, label %if.end39

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 4
  tail call void @__free_pages(ptr noundef %19, i32 noundef 0) #11
  br label %alloc

alloc:                                            ; preds = %if.end39, %if.end28.alloc_crit_edge
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38.i.i.i, ptr %9, align 4
  %tobool44.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool44.not, label %alloc.cleanup_crit_edge, label %if.end46

alloc.cleanup_crit_edge:                          ; preds = %alloc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end46:                                         ; preds = %alloc
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #11
  %pos49 = getelementptr inbounds %struct.iwl_tso_hdr_page, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %pos49 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call48, ptr %pos49, align 4
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  %call51 = tail call ptr @page_address(ptr noundef %23) #11
  %add.ptr53 = getelementptr i8, ptr %call51, i32 4092
  %24 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %add.ptr53, align 4
  br label %out

out:                                              ; preds = %if.end46, %if.end31.out_crit_edge
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %9, align 4
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %add.ptr, align 4
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !172

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %31, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %28 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %32, %if.end.i.i ]
  %33 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %34 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %35, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !171

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.33) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !173
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@get_page_hdr, %if.then.i.i.i.i)) #11
          to label %cleanup [label %if.then.i.i.i.i], !srcloc !175

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %33, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i.i, %do.end5.i.i, %alloc.cleanup_crit_edge, %do.end13
  %retval.0 = phi ptr [ null, %do.end13 ], [ null, %alloc.cleanup_crit_edge ], [ %9, %do.end5.i.i ], [ %9, %if.then.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_txq_space(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %n_window = getelementptr inbounds %struct.iwl_txq, ptr %q, i32 0, i32 18
  %0 = ptrtoint ptr %n_window to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_window, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %max_tfd_queue_size = getelementptr inbounds %struct.iwl_base_params, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %max_tfd_queue_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_tfd_queue_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp = icmp ult i32 %1, %7
  %sub = add i32 %7, -1
  %max.0 = select i1 %cmp, i32 %1, i32 %sub
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %q, i32 0, i32 15
  %8 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_ptr, align 4
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %q, i32 0, i32 16
  %10 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_ptr, align 4
  %sub5 = sub i32 %9, %11
  %and = and i32 %sub5, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %max.0, i32 %and)
  %cmp10 = icmp ult i32 %max.0, %and
  br i1 %cmp10, label %do.end, label %if.end33, !prof !171

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub34 = sub i32 %max.0, %and
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %sub34, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_txq_gen2_tx(ptr noundef %trans, ptr noundef %skb, ptr noundef %dev_cmd, i32 noundef %txq_id) local_unnamed_addr #0 align 64 {
entry:
  %tso.i.i.i = alloca %struct.tso_t, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %txq_id)
  %cmp = icmp sgt i32 %txq_id, 511
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %entry
  %.b235 = load i1, ptr @iwl_txq_gen2_tx.__already_done, align 1
  br i1 %.b235, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !172

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_txq_gen2_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 714, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %txq_id) #11
  br label %cleanup

if.end38:                                         ; preds = %entry
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %div3.i = lshr i32 %txq_id, 5
  %arrayidx.i = getelementptr i32, ptr %txqs, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %txq_id, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool41.not = icmp eq i32 %5, 0
  br i1 %tobool41.not, label %land.rhs50, label %if.end98

land.rhs50:                                       ; preds = %if.end38
  %.b233234 = load i1, ptr @iwl_txq_gen2_tx.__already_done.6, align 1
  br i1 %.b233234, label %land.rhs50.cleanup_crit_edge, label %if.then61, !prof !172

land.rhs50.cleanup_crit_edge:                     ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then61:                                        ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_txq_gen2_tx.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 718, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %txq_id) #11
  br label %cleanup

if.end98:                                         ; preds = %if.end38
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end98.if.end110_crit_edge, label %land.lhs.true

if.end98.if.end110_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

land.lhs.true:                                    ; preds = %if.end98
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %11 to i32
  %tfd102 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %12 = ptrtoint ptr %tfd102 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tfd102, align 8
  %conv103 = zext i8 %13 to i32
  %sub = add nsw i32 %conv103, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp104 = icmp slt i32 %sub, %conv
  br i1 %cmp104, label %land.lhs.true106, label %land.lhs.true.if.end110_crit_edge

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

land.lhs.true106:                                 ; preds = %land.lhs.true
  %call.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %7) #11
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %land.lhs.true106.cleanup_crit_edge, label %land.lhs.true106.if.end110_crit_edge

land.lhs.true106.if.end110_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

land.lhs.true106.cleanup_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end110:                                        ; preds = %land.lhs.true106.if.end110_crit_edge, %land.lhs.true.if.end110_crit_edge, %if.end98.if.end110_crit_edge
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %n_window.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_window.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %16 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans_cfg.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_tfd_queue_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %21)
  %cmp.i = icmp ult i32 %15, %21
  %sub.i = add i32 %21, -1
  %max.0.i = select i1 %cmp.i, i32 %15, i32 %sub.i
  %write_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %write_ptr.i, align 4
  %read_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read_ptr.i, align 4
  %sub5.i = sub i32 %23, %25
  %and.i239 = and i32 %sub5.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %max.0.i, i32 %and.i239)
  %cmp10.i = icmp ult i32 %max.0.i, %and.i239
  br i1 %cmp10.i, label %do.end.i, label %if.end33.i, !prof !171

do.end.i:                                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef null) #11
  br label %iwl_txq_space.exit

if.end33.i:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %sub34.i = sub i32 %max.0.i, %and.i239
  br label %iwl_txq_space.exit

iwl_txq_space.exit:                               ; preds = %if.end33.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %sub34.i, %if.end33.i ]
  %high_mark = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %27)
  %cmp112 = icmp slt i32 %retval.0.i, %27
  br i1 %cmp112, label %if.then114, label %iwl_txq_space.exit.if.end130_crit_edge

iwl_txq_space.exit.if.end130_crit_edge:           ; preds = %iwl_txq_space.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then114:                                       ; preds = %iwl_txq_space.exit
  %id.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  %queue_stopped.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 1
  %call.i240 = tail call i32 @_test_and_set_bit(i32 noundef %29, ptr noundef %queue_stopped.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool.not.i241 = icmp eq i32 %call.i240, 0
  br i1 %tobool.not.i241, label %if.then.i, label %if.then114.iwl_txq_stop.exit_crit_edge

if.then114.iwl_txq_stop.exit_crit_edge:           ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_stop.exit

if.then.i:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %30 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %op_mode.i, align 8
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %queue_full.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %queue_full.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue_full.i.i, align 4
  tail call void %37(ptr noundef %31, i32 noundef %33) #11
  br label %iwl_txq_stop.exit

iwl_txq_stop.exit:                                ; preds = %if.then.i, %if.then114.iwl_txq_stop.exit_crit_edge
  %.str.35.sink.i = phi ptr [ @.str.34, %if.then.i ], [ @.str.35, %if.then114.iwl_txq_stop.exit_crit_edge ]
  %dev8.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %38 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev8.i, align 8
  %40 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %39, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_txq_stop, ptr noundef nonnull %.str.35.sink.i, i32 noundef %41) #11
  %42 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_window.i, align 4
  %44 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trans_cfg.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %max_tfd_queue_size.i244 = getelementptr inbounds %struct.iwl_base_params, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %max_tfd_queue_size.i244 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_tfd_queue_size.i244, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %49)
  %cmp.i245 = icmp ult i32 %43, %49
  %sub.i246 = add i32 %49, -1
  %max.0.i247 = select i1 %cmp.i245, i32 %43, i32 %sub.i246
  %50 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %write_ptr.i, align 4
  %52 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %read_ptr.i, align 4
  %sub5.i250 = sub i32 %51, %53
  %and.i251 = and i32 %sub5.i250, %sub.i246
  call void @__sanitizer_cov_trace_cmp4(i32 %max.0.i247, i32 %and.i251)
  %cmp10.i252 = icmp ult i32 %max.0.i247, %and.i251
  br i1 %cmp10.i252, label %iwl_txq_space.exit257.thread, label %iwl_txq_space.exit257, !prof !171

iwl_txq_space.exit257.thread:                     ; preds = %iwl_txq_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef null) #11
  br label %if.then124

iwl_txq_space.exit257:                            ; preds = %iwl_txq_stop.exit
  %sub34.i254 = sub i32 %max.0.i247, %and.i251
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub34.i254)
  %cmp116 = icmp slt i32 %sub34.i254, 3
  br i1 %cmp116, label %iwl_txq_space.exit257.if.then124_crit_edge, label %iwl_txq_space.exit257.if.end130_crit_edge, !prof !171

iwl_txq_space.exit257.if.end130_crit_edge:        ; preds = %iwl_txq_space.exit257
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

iwl_txq_space.exit257.if.then124_crit_edge:       ; preds = %iwl_txq_space.exit257
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then124

if.then124:                                       ; preds = %iwl_txq_space.exit257.if.then124_crit_edge, %iwl_txq_space.exit257.thread
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %dev_cmd_offs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 7
  %54 = ptrtoint ptr %dev_cmd_offs to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dev_cmd_offs, align 2
  %conv127 = zext i8 %55 to i32
  %add.ptr = getelementptr i8, ptr %cb, i32 %conv127
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev_cmd, ptr %add.ptr, align 4
  %overflow_q = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i, align 4
  %59 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %overflow_q, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %60 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %skb, ptr %58, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13, i32 1
  %62 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %63, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end130:                                        ; preds = %iwl_txq_space.exit257.if.end130_crit_edge, %iwl_txq_space.exit.if.end130_crit_edge
  %64 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %write_ptr.i, align 4
  %66 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_window.i, align 4
  %sub.i259 = add i32 %67, 65535
  %and.i260 = and i32 %sub.i259, %65
  %conv132 = and i32 %and.i260, 65535
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %entries, align 4
  %skb134 = getelementptr %struct.iwl_pcie_txq_entry, ptr %69, i32 %conv132, i32 1
  %70 = ptrtoint ptr %skb134 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %skb, ptr %skb134, align 4
  %71 = load ptr, ptr %entries, align 4
  %arrayidx136 = getelementptr %struct.iwl_pcie_txq_entry, ptr %71, i32 %conv132
  %72 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %dev_cmd, ptr %arrayidx136, align 4
  %and = shl i32 %txq_id, 8
  %shl = and i32 %and, 7936
  %and137 = and i32 %and.i260, 255
  %or = or i32 %and137, %shl
  %conv138 = trunc i32 %or to i16
  %73 = tail call i16 @llvm.bswap.i16(i16 %conv138)
  %sequence = getelementptr inbounds %struct.iwl_cmd_header, ptr %dev_cmd, i32 0, i32 2
  %74 = ptrtoint ptr %sequence to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %73, ptr %sequence, align 1
  %75 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %entries, align 4
  %meta = getelementptr %struct.iwl_pcie_txq_entry, ptr %76, i32 %conv132, i32 3
  %flags = getelementptr %struct.iwl_pcie_txq_entry, ptr %76, i32 %conv132, i32 3, i32 1
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %flags, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  %80 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %write_ptr.i, align 4
  %82 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %n_window.i, align 4
  %sub.i.i = add i32 %83, 65535
  %and.i.i = and i32 %81, 65535
  %conv.i262 = and i32 %and.i.i, %sub.i.i
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %size.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %86 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %size.i.i, align 2
  %conv1.i.i = zext i16 %87 to i32
  %mul.i.i = mul nuw i32 %conv.i262, %conv1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %85, i32 %mul.i.i
  %88 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 256)
  %89 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %92)
  %cmp.i263 = icmp ult i32 %92, 19
  %..i = select i1 %cmp.i263, i32 20, i32 28
  %93 = ptrtoint ptr %79 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %79, align 2
  %95 = and i16 %94, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %95)
  %cmp.i.i = icmp eq i16 %95, -30720
  br i1 %cmp.i.i, label %land.end.i, label %land.end.thread.i

land.end.thread.i:                                ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %call8106.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %94) #14
  br label %if.end16.i

land.end.i:                                       ; preds = %if.end130
  %96 = and i16 %94, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %96)
  %cmp.i.i.i = icmp eq i16 %96, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %79, i32 %retval.0.v.i.i
  %97 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %retval.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.i264 = icmp slt i8 %98, 0
  %call8.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %94) #14
  br i1 %tobool.i264, label %land.lhs.true.i, label %land.end.i.if.end16.i_crit_edge

land.end.i.if.end16.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %land.end.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %99 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool13.not.i = icmp eq i16 %102, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %if.then14.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  %103 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %write_ptr.i, align 4
  %105 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %n_window.i, align 4
  %sub.i.i43.i = add i32 %106, 65535
  %and.i.i44.i = and i32 %104, 65535
  %conv.i45.i = and i32 %and.i.i44.i, %sub.i.i43.i
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %109 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %size.i.i, align 2
  %conv1.i.i.i = zext i16 %110 to i32
  %mul.i.i.i = mul nuw i32 %conv.i45.i, %conv1.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %108, i32 %mul.i.i.i
  %first_tb_dma.i.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 2
  %111 = ptrtoint ptr %first_tb_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %first_tb_dma.i.i.i, align 4
  %mul.i46.i.i = shl nuw nsw i32 %conv.i45.i, 6
  %add.i.i.i265 = add i32 %112, %mul.i46.i.i
  %call3.i.i = tail call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %add.ptr.i.i.i, i32 noundef %add.i.i.i265, i16 noundef zeroext 20) #11
  %add.i.i = add nuw nsw i32 %..i, 4
  %add4.i.i = add i32 %add.i.i, %call8.i
  %sub.i46.i = add i32 %add4.i.i, -20
  %add.ptr.i47.i = getelementptr i8, ptr %dev_cmd, i32 20
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %113 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i.i, align 8
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i47.i) #11
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.then14.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i47.i.i, !prof !172

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i47.i.i:                                  ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %114) #11
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %116, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i47.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i47.i.i.dev_name.exit.i.i.i_crit_edge:    ; preds = %if.then.i47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %114, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i47.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %118, %if.end.i.i.i.i ], [ %116, %if.then.i47.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #11
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %119 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %120, i32 noundef -1) #11
  br label %out_err.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.then14.i
  tail call void @debug_dma_map_single(ptr noundef %114, ptr noundef %add.ptr.i47.i, i32 noundef %sub.i46.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %121 = load ptr, ptr @mem_map, align 4
  %122 = ptrtoint ptr %add.ptr.i47.i to i32
  %sub.i48.i.i = add i32 %122, 1073741824
  %shr.i.i.i = lshr i32 %sub.i48.i.i, 12
  %add.ptr.i49.i.i = getelementptr %struct.page, ptr %121, i32 %shr.i.i.i
  %and.i50.i.i = and i32 %122, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %114, ptr noundef %add.ptr.i49.i.i, i32 noundef %and.i50.i.i, i32 noundef %sub.i46.i, i32 noundef 1, i32 noundef 0) #11
  %123 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %124, i32 noundef %call41.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i48.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i48.i, label %dma_map_single_attrs.exit.i.i.out_err.i.i_crit_edge, label %if.end.i.i

dma_map_single_attrs.exit.i.i.out_err.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err.i.i

if.end.i.i:                                       ; preds = %dma_map_single_attrs.exit.i.i
  %conv10.i.i = trunc i32 %sub.i46.i to i16
  %call11.i.i = tail call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %add.ptr.i.i.i, i32 noundef %call41.i.i.i, i16 noundef zeroext %conv10.i.i) #11
  %payload.i.i.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %dev_cmd, i32 0, i32 1
  %125 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i, align 4
  %127 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %end.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %gso_size.i.i.i, align 4
  %conv.i51.i.i = zext i16 %130 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tso.i.i.i) #11
  %131 = getelementptr inbounds %struct.tso_t, ptr %tso.i.i.i, i32 0, i32 1
  %132 = getelementptr inbounds %struct.tso_t, ptr %tso.i.i.i, i32 0, i32 2
  %133 = call ptr @memset(ptr %tso.i.i.i, i32 255, i32 20)
  %134 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_tx(ptr noundef %135, ptr noundef %skb, ptr noundef %add.ptr.i.i.i, ptr noundef %dev_cmd, i32 noundef %add4.i.i, i32 noundef 0) #11
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %136 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %138 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %139 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %137, i32 %conv.i.i.i.i
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %140 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i192.i.i.i = zext i16 %141 to i32
  %add.ptr.i193.i.i.i = getelementptr i8, ptr %137, i32 %conv.i192.i.i.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr.i193.i.i.i to i32
  %doff.i.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %142 = ptrtoint ptr %doff.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %bf.load.i.i.i.i.i = load i16, ptr %doff.i.i.i.i.i, align 4
  %143 = lshr i16 %bf.load.i.i.i.i.i, 10
  %144 = and i16 %143, 60
  %mul.i.i.i.i.i = zext i16 %144 to i32
  %sub.ptr.sub.i.i.i = add i32 %sub.ptr.lhs.cast.i.i.i, 8
  %add.i52.i.i = sub i32 %sub.ptr.sub.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add5.i.i.i = add i32 %add.i52.i.i, %mul.i.i.i.i.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %145 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len.i.i.i, align 4
  %conv6.i.i.i = and i32 %call8.i, 255
  %147 = add i32 %conv6.i.i.i, %add5.i.i.i
  %sub7.i.i.i = sub i32 %146, %147
  %add8.i.i.i = add nsw i32 %conv.i51.i.i, -1
  %sub9.i.i.i = add i32 %add8.i.i.i, %sub7.i.i.i
  %div.i.i.i = udiv i32 %sub9.i.i.i, %conv.i51.i.i
  %add11.i.i.i = add i32 %add5.i.i.i, 17
  %mul.i53.i.i = mul i32 %add11.i.i.i, %div.i.i.i
  %call12.i.i.i = tail call ptr @get_page_hdr(ptr noundef %trans, i32 noundef %mul.i53.i.i, ptr noundef %skb) #11
  %tobool.not.i54.i.i = icmp eq ptr %call12.i.i.i, null
  br i1 %tobool.not.i54.i.i, label %if.end.i.i.iwl_txq_gen2_build_amsdu.exit.thread.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i.iwl_txq_gen2_build_amsdu.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_gen2_build_amsdu.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %pos.i.i.i = getelementptr inbounds %struct.iwl_tso_hdr_page, ptr %call12.i.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pos.i.i.i, align 4
  %call14.i.i.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv6.i.i.i) #11
  %150 = trunc i32 %add5.i.i.i to i16
  %151 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %payload.i.i.i, align 2
  %153 = tail call i16 @llvm.bswap.i16(i16 %152) #11
  %add.i.i.i.i = sub i16 %153, %150
  %154 = tail call i16 @llvm.bswap.i16(i16 %add.i.i.i.i) #11
  %155 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %payload.i.i.i, align 2
  %call18.i.i.i = call i32 @tso_start(ptr noundef %skb, ptr noundef nonnull %tso.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i.i.i)
  %tobool19.not238.i.i.i = icmp eq i32 %sub7.i.i.i, 0
  br i1 %tobool19.not238.i.i.i, label %if.end.i.i.i.if.end17.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.end.i.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end.i.i.i
  %addr3.i.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %126, i32 0, i32 4
  %addr1.i.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %126, i32 0, i32 2
  %addr2.i.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %126, i32 0, i32 3
  %addr4.i.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %126, i32 0, i32 6
  br label %while.body.i.i.i

while.cond.loopexit.i.i.i:                        ; preds = %cleanup.i.i.i.while.cond.loopexit.i.i.i_crit_edge, %if.end61.i.i.i.while.cond.loopexit.i.i.i_crit_edge
  br i1 %tobool45.not.i.i.i, label %while.cond.loopexit.i.i.i.if.end17.i.i_crit_edge, label %while.cond.loopexit.i.i.i.while.body.i.i.i_crit_edge

while.cond.loopexit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.loopexit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

while.cond.loopexit.i.i.i.if.end17.i.i_crit_edge: ; preds = %while.cond.loopexit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

while.body.i.i.i:                                 ; preds = %while.cond.loopexit.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %start_hdr.0241.i.i.i = phi ptr [ %149, %while.body.lr.ph.i.i.i ], [ %210, %while.cond.loopexit.i.i.i.while.body.i.i.i_crit_edge ]
  %amsdu_pad.0240.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %and.i56.i.i, %while.cond.loopexit.i.i.i.while.body.i.i.i_crit_edge ]
  %total_len.0239.i.i.i = phi i32 [ %sub7.i.i.i, %while.body.lr.ph.i.i.i ], [ %sub22.i.i.i, %while.cond.loopexit.i.i.i.while.body.i.i.i_crit_edge ]
  %156 = call i32 @llvm.umin.i32(i32 %total_len.0239.i.i.i, i32 %conv.i51.i.i) #11
  %157 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pos.i.i.i, align 4
  %sub22.i.i.i = sub i32 %total_len.0239.i.i.i, %156
  %159 = call ptr @memset(ptr %158, i32 0, i32 %amsdu_pad.0240.i.i.i)
  %160 = load ptr, ptr %pos.i.i.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %160, i32 %amsdu_pad.0240.i.i.i
  store ptr %add.ptr.i55.i.i, ptr %pos.i.i.i, align 4
  %161 = add i32 %156, %add5.i.i.i
  %add28.neg.i.i.i = sub i32 2, %161
  %and.i56.i.i = and i32 %add28.neg.i.i.i, 3
  %162 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %126, align 2
  %164 = and i16 %163, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %cmp.i.not.i.i.i.i = icmp eq i16 %164, 0
  %retval.0.i.i57.i.i = select i1 %cmp.i.not.i.i.i.i, ptr %addr1.i.i.i.i, ptr %addr3.i.i.i.i
  %165 = ptrtoint ptr %retval.0.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %retval.0.i.i57.i.i, align 4
  %167 = ptrtoint ptr %add.ptr.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %add.ptr.i55.i.i, align 4
  %add.ptr.i194.i.i.i = getelementptr i8, ptr %retval.0.i.i57.i.i, i32 4
  %168 = ptrtoint ptr %add.ptr.i194.i.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %add.ptr.i194.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i55.i.i, i32 4
  %170 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %add.ptr1.i.i.i.i, align 2
  %171 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pos.i.i.i, align 4
  %add.ptr34.i.i.i = getelementptr i8, ptr %172, i32 6
  store ptr %add.ptr34.i.i.i, ptr %pos.i.i.i, align 4
  %173 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %126, align 2
  %175 = and i16 %174, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %175)
  %cmp.i.i.i.i.i = icmp eq i16 %175, 3
  %176 = and i16 %174, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %cmp.i11.not.i.i.i.i = icmp eq i16 %176, 0
  %spec.select.i.i.i = select i1 %cmp.i11.not.i.i.i.i, ptr %addr2.i.i.i.i, ptr %addr3.i.i.i.i
  %retval.0.i196.i.i.i = select i1 %cmp.i.i.i.i.i, ptr %addr4.i.i.i.i, ptr %spec.select.i.i.i
  %177 = ptrtoint ptr %retval.0.i196.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %retval.0.i196.i.i.i, align 4
  %179 = ptrtoint ptr %add.ptr34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %add.ptr34.i.i.i, align 4
  %add.ptr.i197.i.i.i = getelementptr i8, ptr %retval.0.i196.i.i.i, i32 4
  %180 = ptrtoint ptr %add.ptr.i197.i.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %add.ptr.i197.i.i.i, align 2
  %add.ptr1.i198.i.i.i = getelementptr i8, ptr %172, i32 10
  %182 = ptrtoint ptr %add.ptr1.i198.i.i.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %add.ptr1.i198.i.i.i, align 2
  %183 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pos.i.i.i, align 4
  %add.ptr38.i.i.i = getelementptr i8, ptr %184, i32 6
  store ptr %add.ptr38.i.i.i, ptr %pos.i.i.i, align 4
  %conv40.i.i.i = trunc i32 %161 to i16
  %185 = ptrtoint ptr %add.ptr38.i.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv40.i.i.i, ptr %add.ptr38.i.i.i, align 2
  %186 = load ptr, ptr %pos.i.i.i, align 4
  %add.ptr43.i.i.i = getelementptr i8, ptr %186, i32 2
  store ptr %add.ptr43.i.i.i, ptr %pos.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22.i.i.i)
  %tobool45.not.i.i.i = icmp eq i32 %sub22.i.i.i, 0
  call void @tso_build_hdr(ptr noundef %skb, ptr noundef %add.ptr43.i.i.i, ptr noundef nonnull %tso.i.i.i, i32 noundef %156, i1 noundef zeroext %tobool45.not.i.i.i) #11
  %187 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pos.i.i.i, align 4
  %add.ptr47.i.i.i = getelementptr i8, ptr %188, i32 %add5.i.i.i
  store ptr %add.ptr47.i.i.i, ptr %pos.i.i.i, align 4
  %sub.ptr.lhs.cast49.i.i.i = ptrtoint ptr %add.ptr47.i.i.i to i32
  %sub.ptr.rhs.cast50.i.i.i = ptrtoint ptr %start_hdr.0241.i.i.i to i32
  %sub.ptr.sub51.i.i.i = sub i32 %sub.ptr.lhs.cast49.i.i.i, %sub.ptr.rhs.cast50.i.i.i
  %189 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev.i.i, align 8
  %call.i.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %start_hdr.0241.i.i.i) #11
  br i1 %call.i.i.i.i, label %land.rhs.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %while.body.i.i.i
  %.b1.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge, label %if.then.i199.i.i.i, !prof !172

land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread.i.i.i

if.then.i199.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i = call ptr @dev_driver_string(ptr noundef %190) #11
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %190, i32 0, i32 3
  %191 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %192, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i199.i.i.i.dev_name.exit.i.i.i.i_crit_edge

if.then.i199.i.i.i.dev_name.exit.i.i.i.i_crit_edge: ; preds = %if.then.i199.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i199.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %193 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %190, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i, %if.then.i199.i.i.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %194, %if.end.i.i.i.i.i ], [ %192, %if.then.i199.i.i.i.dev_name.exit.i.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i) #11
  br label %dma_map_single_attrs.exit.thread.i.i.i

dma_map_single_attrs.exit.thread.i.i.i:           ; preds = %dev_name.exit.i.i.i.i, %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge
  %195 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev.i.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %196, i32 noundef -1) #11
  br label %iwl_txq_gen2_build_amsdu.exit.thread.i.i

dma_map_single_attrs.exit.i.i.i:                  ; preds = %while.body.i.i.i
  call void @debug_dma_map_single(ptr noundef %190, ptr noundef %start_hdr.0241.i.i.i, i32 noundef %sub.ptr.sub51.i.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %197 = load ptr, ptr @mem_map, align 4
  %sub.i.i58.i.i = add i32 %sub.ptr.rhs.cast50.i.i.i, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i58.i.i, 12
  %add.ptr.i200.i.i.i = getelementptr %struct.page, ptr %197, i32 %shr.i.i.i.i
  %and.i.i59.i.i = and i32 %sub.ptr.rhs.cast50.i.i.i, 4095
  %call41.i.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %190, ptr noundef %add.ptr.i200.i.i.i, i32 noundef %and.i.i59.i.i, i32 noundef %sub.ptr.sub51.i.i.i, i32 noundef 1, i32 noundef 0) #11
  %198 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev.i.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %199, i32 noundef %call41.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call41.i.i.i.i, -1
  br i1 %cmp.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i.iwl_txq_gen2_build_amsdu.exit.thread.i.i_crit_edge, label %if.end61.i.i.i

dma_map_single_attrs.exit.i.i.i.iwl_txq_gen2_build_amsdu.exit.thread.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_gen2_build_amsdu.exit.thread.i.i

if.end61.i.i.i:                                   ; preds = %dma_map_single_attrs.exit.i.i.i
  %conv62.i.i.i = trunc i32 %sub.ptr.sub51.i.i.i to i16
  %call63.i.i.i = call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %add.ptr.i.i.i, i32 noundef %call41.i.i.i.i, i16 noundef zeroext %conv62.i.i.i) #11
  %200 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev.i.i, align 8
  call fastcc void @trace_iwlwifi_dev_tx_tb(ptr noundef %201, ptr noundef %skb, ptr noundef %start_hdr.0241.i.i.i, i32 noundef %call41.i.i.i.i, i32 noundef %sub.ptr.sub51.i.i.i) #11
  %202 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %pos.i.i.i, align 4
  %sub.ptr.lhs.cast67.i.i.i = ptrtoint ptr %203 to i32
  %sub.ptr.rhs.cast68.i.i.i = ptrtoint ptr %158 to i32
  %sub.ptr.sub69.i.i.i = sub i32 %sub.ptr.lhs.cast67.i.i.i, %sub.ptr.rhs.cast68.i.i.i
  %conv70.i.i.i = trunc i32 %sub.ptr.sub69.i.i.i to i16
  %204 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %payload.i.i.i, align 2
  %206 = call i16 @llvm.bswap.i16(i16 %205) #11
  %add.i202.i.i.i = add i16 %206, %conv70.i.i.i
  %207 = call i16 @llvm.bswap.i16(i16 %add.i202.i.i.i) #11
  %208 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %207, ptr %payload.i.i.i, align 2
  %209 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pos.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool73.not236.i.i.i = icmp eq i32 %156, 0
  br i1 %tobool73.not236.i.i.i, label %if.end61.i.i.i.while.cond.loopexit.i.i.i_crit_edge, label %if.end61.i.i.i.while.body74.i.i.i_crit_edge

if.end61.i.i.i.while.body74.i.i.i_crit_edge:      ; preds = %if.end61.i.i.i
  br label %while.body74.i.i.i

if.end61.i.i.i.while.cond.loopexit.i.i.i_crit_edge: ; preds = %if.end61.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit.i.i.i

while.body74.i.i.i:                               ; preds = %cleanup.i.i.i.while.body74.i.i.i_crit_edge, %if.end61.i.i.i.while.body74.i.i.i_crit_edge
  %data_left.0237.i.i.i = phi i32 [ %sub91.i.i.i, %cleanup.i.i.i.while.body74.i.i.i_crit_edge ], [ %156, %if.end61.i.i.i.while.body74.i.i.i_crit_edge ]
  %211 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %131, align 4
  %213 = call i32 @llvm.umin.i32(i32 %212, i32 %data_left.0237.i.i.i) #11
  %214 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev.i.i, align 8
  %216 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %132, align 4
  %call.i203.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %217) #11
  br i1 %call.i203.i.i.i, label %land.rhs.i205.i.i.i, label %if.end39.i218.i.i.i

land.rhs.i205.i.i.i:                              ; preds = %while.body74.i.i.i
  %.b1.i204.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i204.i.i.i, label %land.rhs.i205.i.i.i.dma_map_single_attrs.exit220.i.i.i_crit_edge, label %if.then.i209.i.i.i, !prof !172

land.rhs.i205.i.i.i.dma_map_single_attrs.exit220.i.i.i_crit_edge: ; preds = %land.rhs.i205.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit220.i.i.i

if.then.i209.i.i.i:                               ; preds = %land.rhs.i205.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i206.i.i.i = call ptr @dev_driver_string(ptr noundef %215) #11
  %init_name.i.i207.i.i.i = getelementptr inbounds %struct.device, ptr %215, i32 0, i32 3
  %218 = ptrtoint ptr %init_name.i.i207.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %init_name.i.i207.i.i.i, align 8
  %tobool.not.i.i208.i.i.i = icmp eq ptr %219, null
  br i1 %tobool.not.i.i208.i.i.i, label %if.end.i.i210.i.i.i, label %if.then.i209.i.i.i.dev_name.exit.i212.i.i.i_crit_edge

if.then.i209.i.i.i.dev_name.exit.i212.i.i.i_crit_edge: ; preds = %if.then.i209.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i212.i.i.i

if.end.i.i210.i.i.i:                              ; preds = %if.then.i209.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %220 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %215, align 4
  br label %dev_name.exit.i212.i.i.i

dev_name.exit.i212.i.i.i:                         ; preds = %if.end.i.i210.i.i.i, %if.then.i209.i.i.i.dev_name.exit.i212.i.i.i_crit_edge
  %retval.0.i.i211.i.i.i = phi ptr [ %221, %if.end.i.i210.i.i.i ], [ %219, %if.then.i209.i.i.i.dev_name.exit.i212.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i206.i.i.i, ptr noundef %retval.0.i.i211.i.i.i) #11
  br label %dma_map_single_attrs.exit220.i.i.i

if.end39.i218.i.i.i:                              ; preds = %while.body74.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @debug_dma_map_single(ptr noundef %215, ptr noundef %217, i32 noundef %213) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %222 = load ptr, ptr @mem_map, align 4
  %223 = ptrtoint ptr %217 to i32
  %sub.i213.i.i.i = add i32 %223, 1073741824
  %shr.i214.i.i.i = lshr i32 %sub.i213.i.i.i, 12
  %add.ptr.i215.i.i.i = getelementptr %struct.page, ptr %222, i32 %shr.i214.i.i.i
  %and.i216.i.i.i = and i32 %223, 4095
  %call41.i217.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %215, ptr noundef %add.ptr.i215.i.i.i, i32 noundef %and.i216.i.i.i, i32 noundef %213, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit220.i.i.i

dma_map_single_attrs.exit220.i.i.i:               ; preds = %if.end39.i218.i.i.i, %dev_name.exit.i212.i.i.i, %land.rhs.i205.i.i.i.dma_map_single_attrs.exit220.i.i.i_crit_edge
  %retval.0.i219.i.i.i = phi i32 [ %call41.i217.i.i.i, %if.end39.i218.i.i.i ], [ -1, %dev_name.exit.i212.i.i.i ], [ -1, %land.rhs.i205.i.i.i.dma_map_single_attrs.exit220.i.i.i_crit_edge ]
  %224 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %132, align 4
  %conv86.i.i.i = trunc i32 %213 to i16
  %call87.i.i.i = call fastcc i32 @iwl_txq_gen2_set_tb_with_wa(ptr noundef %trans, ptr noundef %skb, ptr noundef %add.ptr.i.i.i, i32 noundef %retval.0.i219.i.i.i, ptr noundef %225, i16 noundef zeroext %conv86.i.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i.i.i)
  %tobool88.not.i.i.i = icmp eq i32 %call87.i.i.i, 0
  br i1 %tobool88.not.i.i.i, label %cleanup.i.i.i, label %dma_map_single_attrs.exit220.i.i.i.iwl_txq_gen2_build_amsdu.exit.thread.i.i_crit_edge

dma_map_single_attrs.exit220.i.i.i.iwl_txq_gen2_build_amsdu.exit.thread.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit220.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_gen2_build_amsdu.exit.thread.i.i

cleanup.i.i.i:                                    ; preds = %dma_map_single_attrs.exit220.i.i.i
  %sub91.i.i.i = sub i32 %data_left.0237.i.i.i, %213
  call void @tso_build_data(ptr noundef %skb, ptr noundef nonnull %tso.i.i.i, i32 noundef %213) #11
  %tobool73.not.i.i.i = icmp eq i32 %sub91.i.i.i, 0
  br i1 %tobool73.not.i.i.i, label %cleanup.i.i.i.while.cond.loopexit.i.i.i_crit_edge, label %cleanup.i.i.i.while.body74.i.i.i_crit_edge

cleanup.i.i.i.while.body74.i.i.i_crit_edge:       ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body74.i.i.i

cleanup.i.i.i.while.cond.loopexit.i.i.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit.i.i.i

iwl_txq_gen2_build_amsdu.exit.thread.i.i:         ; preds = %dma_map_single_attrs.exit220.i.i.i.iwl_txq_gen2_build_amsdu.exit.thread.i.i_crit_edge, %dma_map_single_attrs.exit.i.i.i.iwl_txq_gen2_build_amsdu.exit.thread.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i.i, %if.end.i.i.iwl_txq_gen2_build_amsdu.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tso.i.i.i) #11
  br label %out_err.i.i

if.end17.i.i:                                     ; preds = %while.cond.loopexit.i.i.i.if.end17.i.i_crit_edge, %if.end.i.i.i.if.end17.i.i_crit_edge
  %call100.i.i.i = call ptr @skb_push(ptr noundef %skb, i32 noundef %conv6.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tso.i.i.i) #11
  %first_tb_bufs.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 1
  %226 = ptrtoint ptr %first_tb_bufs.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %first_tb_bufs.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iwl_pcie_first_tb_buf, ptr %227, i32 %conv.i45.i
  %228 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %dev_cmd, i32 20)
  br label %iwl_txq_gen2_build_tfd.exit

out_err.i.i:                                      ; preds = %iwl_txq_gen2_build_amsdu.exit.thread.i.i, %dma_map_single_attrs.exit.i.i.out_err.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  %229 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %229, i32 2)
  %230 = load i16, ptr %add.ptr.i.i.i, align 1
  %231 = lshr i16 %230, 8
  %232 = trunc i16 %231 to i8
  %conv1.i.i.i.i = and i8 %232, 31
  %conv.i61.i.i = zext i8 %conv1.i.i.i.i to i32
  %tfd1.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %233 = ptrtoint ptr %tfd1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %tfd1.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i.i.i.i, i8 %234)
  %cmp.i62.i.i = icmp ugt i8 %conv1.i.i.i.i, %234
  br i1 %cmp.i62.i.i, label %do.end.i.i.i, label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %out_err.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv1.i.i.i.i)
  %cmp745.i.i.i = icmp ugt i8 %conv1.i.i.i.i, 1
  br i1 %cmp745.i.i.i, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

do.end.i.i.i:                                     ; preds = %out_err.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %235 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %236, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %conv.i61.i.i) #11
  br label %if.then143

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.046.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 1, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %237 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev.i.i, align 8
  %arrayidx18.i.i.i = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr.i.i.i, i32 0, i32 1, i32 %i.046.i.i.i
  %addr19.i.i.i = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr.i.i.i, i32 0, i32 1, i32 %i.046.i.i.i, i32 1
  %239 = ptrtoint ptr %addr19.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %239, i32 8)
  %240 = load i64, ptr %addr19.i.i.i, align 1
  %241 = call i64 @llvm.bswap.i64(i64 %240) #11
  %conv20.i.i.i = trunc i64 %241 to i32
  %242 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %242, i32 2)
  %243 = load i16, ptr %arrayidx18.i.i.i, align 1
  %244 = call i16 @llvm.bswap.i16(i16 %243) #11
  %conv24.i.i.i = zext i16 %244 to i32
  call void @dma_unmap_page_attrs(ptr noundef %238, i32 noundef %conv20.i.i.i, i32 noundef %conv24.i.i.i, i32 noundef 1, i32 noundef 0) #11
  %inc.i.i.i = add nuw nsw i32 %i.046.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i61.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  %245 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %245, i32 2)
  store i16 0, ptr %add.ptr.i.i.i, align 1
  br label %if.then143

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %land.end.i.if.end16.i_crit_edge, %land.end.thread.i
  %call8107.i = phi i32 [ %call8106.i, %land.end.thread.i ], [ %call8.i, %land.lhs.true.i.if.end16.i_crit_edge ], [ %call8.i, %land.end.i.if.end16.i_crit_edge ]
  %246 = phi i1 [ true, %land.end.thread.i ], [ false, %land.lhs.true.i.if.end16.i_crit_edge ], [ true, %land.end.i.if.end16.i_crit_edge ]
  %247 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %write_ptr.i, align 4
  %249 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %n_window.i, align 4
  %sub.i.i52.i = add i32 %250, 65535
  %and.i.i53.i = and i32 %248, 65535
  %conv.i54.i = and i32 %and.i.i53.i, %sub.i.i52.i
  %251 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %1, align 4
  %253 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %size.i.i, align 2
  %conv1.i.i56.i = zext i16 %254 to i32
  %mul.i.i57.i = mul nuw i32 %conv.i54.i, %conv1.i.i56.i
  %add.ptr.i.i58.i = getelementptr i8, ptr %252, i32 %mul.i.i57.i
  %first_tb_dma.i.i59.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 2
  %255 = ptrtoint ptr %first_tb_dma.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %first_tb_dma.i.i59.i, align 4
  %mul.i127.i.i = shl nuw nsw i32 %conv.i54.i, 6
  %add.i.i60.i = add i32 %256, %mul.i127.i.i
  %first_tb_bufs.i61.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 1
  %257 = ptrtoint ptr %first_tb_bufs.i61.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %first_tb_bufs.i61.i, align 4
  %arrayidx.i62.i = getelementptr %struct.iwl_pcie_first_tb_buf, ptr %258, i32 %conv.i54.i
  %259 = call ptr @memcpy(ptr %arrayidx.i62.i, ptr %dev_cmd, i32 20)
  %call3.i63.i = tail call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %add.ptr.i.i58.i, i32 noundef %add.i.i60.i, i16 noundef zeroext 20) #11
  %add.i64.i = add nuw nsw i32 %..i, 4
  %add4.i65.i = add i32 %add.i64.i, %call8107.i
  %add5.i.i = add i32 %add4.i65.i, -17
  %and.i66.i = and i32 %add5.i.i, -4
  %sub.i67.i = add i32 %add4.i65.i, -20
  %spec.select = select i1 %246, i32 %and.i66.i, i32 %sub.i67.i
  %add.ptr.i68.i = getelementptr i8, ptr %dev_cmd, i32 20
  %dev.i69.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %260 = ptrtoint ptr %dev.i69.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev.i69.i, align 8
  %call.i.i70.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i68.i) #11
  br i1 %call.i.i70.i, label %land.rhs.i.i72.i, label %dma_map_single_attrs.exit.i83.i

land.rhs.i.i72.i:                                 ; preds = %if.end16.i
  %.b1.i.i71.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i71.i, label %land.rhs.i.i72.i.dma_map_single_attrs.exit.thread.i79.i_crit_edge, label %if.then.i128.i.i, !prof !172

land.rhs.i.i72.i.dma_map_single_attrs.exit.thread.i79.i_crit_edge: ; preds = %land.rhs.i.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread.i79.i

if.then.i128.i.i:                                 ; preds = %land.rhs.i.i72.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i73.i = tail call ptr @dev_driver_string(ptr noundef %261) #11
  %init_name.i.i.i74.i = getelementptr inbounds %struct.device, ptr %261, i32 0, i32 3
  %262 = ptrtoint ptr %init_name.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %init_name.i.i.i74.i, align 8
  %tobool.not.i.i.i75.i = icmp eq ptr %263, null
  br i1 %tobool.not.i.i.i75.i, label %if.end.i.i.i76.i, label %if.then.i128.i.i.dev_name.exit.i.i78.i_crit_edge

if.then.i128.i.i.dev_name.exit.i.i78.i_crit_edge: ; preds = %if.then.i128.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i78.i

if.end.i.i.i76.i:                                 ; preds = %if.then.i128.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %264 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %261, align 4
  br label %dev_name.exit.i.i78.i

dev_name.exit.i.i78.i:                            ; preds = %if.end.i.i.i76.i, %if.then.i128.i.i.dev_name.exit.i.i78.i_crit_edge
  %retval.0.i.i.i77.i = phi ptr [ %265, %if.end.i.i.i76.i ], [ %263, %if.then.i128.i.i.dev_name.exit.i.i78.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i.i73.i, ptr noundef %retval.0.i.i.i77.i) #11
  br label %dma_map_single_attrs.exit.thread.i79.i

dma_map_single_attrs.exit.thread.i79.i:           ; preds = %dev_name.exit.i.i78.i, %land.rhs.i.i72.i.dma_map_single_attrs.exit.thread.i79.i_crit_edge
  %266 = ptrtoint ptr %dev.i69.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev.i69.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %267, i32 noundef -1) #11
  br label %out_err.i94.i

dma_map_single_attrs.exit.i83.i:                  ; preds = %if.end16.i
  tail call void @debug_dma_map_single(ptr noundef %261, ptr noundef %add.ptr.i68.i, i32 noundef %spec.select) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %268 = load ptr, ptr @mem_map, align 4
  %269 = ptrtoint ptr %add.ptr.i68.i to i32
  %sub.i129.i.i = add i32 %269, 1073741824
  %shr.i.i80.i = lshr i32 %sub.i129.i.i, 12
  %add.ptr.i130.i.i = getelementptr %struct.page, ptr %268, i32 %shr.i.i80.i
  %and.i131.i.i = and i32 %269, 4095
  %call41.i.i81.i = tail call i32 @dma_map_page_attrs(ptr noundef %261, ptr noundef %add.ptr.i130.i.i, i32 noundef %and.i131.i.i, i32 noundef %spec.select, i32 noundef 1, i32 noundef 0) #11
  %270 = ptrtoint ptr %dev.i69.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev.i69.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %271, i32 noundef %call41.i.i81.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i81.i)
  %cmp.i.i82.i = icmp eq i32 %call41.i.i81.i, -1
  br i1 %cmp.i.i82.i, label %dma_map_single_attrs.exit.i83.i.out_err.i94.i_crit_edge, label %if.end13.i.i

dma_map_single_attrs.exit.i83.i.out_err.i94.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err.i94.i

if.end13.i.i:                                     ; preds = %dma_map_single_attrs.exit.i83.i
  %conv14.i.i = trunc i32 %spec.select to i16
  %call15.i.i = tail call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %add.ptr.i.i58.i, i32 noundef %call41.i.i81.i, i16 noundef zeroext %conv14.i.i) #11
  %272 = ptrtoint ptr %dev.i69.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev.i69.i, align 8
  %add18.i.i = add i32 %spec.select, 20
  tail call fastcc void @trace_iwlwifi_dev_tx(ptr noundef %273, ptr noundef %skb, ptr noundef %add.ptr.i.i58.i, ptr noundef %dev_cmd, i32 noundef %add18.i.i, i32 noundef %call8107.i) #11
  %len.i.i84.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %274 = ptrtoint ptr %len.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %len.i.i84.i, align 4
  %276 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %data_len.i, align 8
  %278 = add i32 %call8107.i, %277
  %sub20.i.i = sub i32 %275, %278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20.i.i)
  %cmp.i85.i = icmp sgt i32 %sub20.i.i, 0
  br i1 %cmp.i85.i, label %if.then22.i.i, label %if.end13.i.i.if.end33.i.i_crit_edge

if.end13.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

if.then22.i.i:                                    ; preds = %if.end13.i.i
  %279 = ptrtoint ptr %dev.i69.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev.i69.i, align 8
  %281 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %data.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %282, i32 %call8107.i
  %call.i133.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr24.i.i) #11
  br i1 %call.i133.i.i, label %land.rhs.i135.i.i, label %if.end39.i148.i.i

land.rhs.i135.i.i:                                ; preds = %if.then22.i.i
  %.b1.i134.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i134.i.i, label %land.rhs.i135.i.i.dma_map_single_attrs.exit150.i.i_crit_edge, label %if.then.i139.i.i, !prof !172

land.rhs.i135.i.i.dma_map_single_attrs.exit150.i.i_crit_edge: ; preds = %land.rhs.i135.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit150.i.i

if.then.i139.i.i:                                 ; preds = %land.rhs.i135.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i136.i.i = tail call ptr @dev_driver_string(ptr noundef %280) #11
  %init_name.i.i137.i.i = getelementptr inbounds %struct.device, ptr %280, i32 0, i32 3
  %283 = ptrtoint ptr %init_name.i.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %init_name.i.i137.i.i, align 8
  %tobool.not.i.i138.i.i = icmp eq ptr %284, null
  br i1 %tobool.not.i.i138.i.i, label %if.end.i.i140.i.i, label %if.then.i139.i.i.dev_name.exit.i142.i.i_crit_edge

if.then.i139.i.i.dev_name.exit.i142.i.i_crit_edge: ; preds = %if.then.i139.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i142.i.i

if.end.i.i140.i.i:                                ; preds = %if.then.i139.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %285 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %280, align 4
  br label %dev_name.exit.i142.i.i

dev_name.exit.i142.i.i:                           ; preds = %if.end.i.i140.i.i, %if.then.i139.i.i.dev_name.exit.i142.i.i_crit_edge
  %retval.0.i.i141.i.i = phi ptr [ %286, %if.end.i.i140.i.i ], [ %284, %if.then.i139.i.i.dev_name.exit.i142.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i136.i.i, ptr noundef %retval.0.i.i141.i.i) #11
  br label %dma_map_single_attrs.exit150.i.i

if.end39.i148.i.i:                                ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %280, ptr noundef %add.ptr24.i.i, i32 noundef %sub20.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %287 = load ptr, ptr @mem_map, align 4
  %288 = ptrtoint ptr %add.ptr24.i.i to i32
  %sub.i143.i.i = add i32 %288, 1073741824
  %shr.i144.i.i = lshr i32 %sub.i143.i.i, 12
  %add.ptr.i145.i.i = getelementptr %struct.page, ptr %287, i32 %shr.i144.i.i
  %and.i146.i.i = and i32 %288, 4095
  %call41.i147.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %280, ptr noundef %add.ptr.i145.i.i, i32 noundef %and.i146.i.i, i32 noundef %sub20.i.i, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit150.i.i

dma_map_single_attrs.exit150.i.i:                 ; preds = %if.end39.i148.i.i, %dev_name.exit.i142.i.i, %land.rhs.i135.i.i.dma_map_single_attrs.exit150.i.i_crit_edge
  %retval.0.i149.i.i = phi i32 [ %call41.i147.i.i, %if.end39.i148.i.i ], [ -1, %dev_name.exit.i142.i.i ], [ -1, %land.rhs.i135.i.i.dma_map_single_attrs.exit150.i.i_crit_edge ]
  %289 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %data.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %290, i32 %call8107.i
  %conv28.i.i = trunc i32 %sub20.i.i to i16
  %call29.i.i = tail call fastcc i32 @iwl_txq_gen2_set_tb_with_wa(ptr noundef %trans, ptr noundef %skb, ptr noundef %add.ptr.i.i58.i, i32 noundef %retval.0.i149.i.i, ptr noundef %add.ptr27.i.i, i16 noundef zeroext %conv28.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %dma_map_single_attrs.exit150.i.i.if.end33.i.i_crit_edge, label %dma_map_single_attrs.exit150.i.i.out_err.i94.i_crit_edge

dma_map_single_attrs.exit150.i.i.out_err.i94.i_crit_edge: ; preds = %dma_map_single_attrs.exit150.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err.i94.i

dma_map_single_attrs.exit150.i.i.if.end33.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit150.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %dma_map_single_attrs.exit150.i.i.if.end33.i.i_crit_edge, %if.end13.i.i.if.end33.i.i_crit_edge
  %end.i.i.i86.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %291 = ptrtoint ptr %end.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %end.i.i.i86.i, align 4
  %nr_frags30.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %nr_frags30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %nr_frags30.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %cmp32.not.i.i.i = icmp eq i8 %294, 0
  br i1 %cmp32.not.i.i.i, label %if.end33.i.i.if.end37.i.i_crit_edge, label %if.end33.i.i.for.body.i.i87.i_crit_edge

if.end33.i.i.for.body.i.i87.i_crit_edge:          ; preds = %if.end33.i.i
  br label %for.body.i.i87.i

if.end33.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i.i

for.body.i.i87.i:                                 ; preds = %for.inc.i.i.i.for.body.i.i87.i_crit_edge, %if.end33.i.i.for.body.i.i87.i_crit_edge
  %295 = phi ptr [ %309, %for.inc.i.i.i.for.body.i.i87.i_crit_edge ], [ %292, %if.end33.i.i.for.body.i.i87.i_crit_edge ]
  %i.033.i.i.i = phi i32 [ %inc.i.i91.i, %for.inc.i.i.i.for.body.i.i87.i_crit_edge ], [ 0, %if.end33.i.i.for.body.i.i87.i_crit_edge ]
  %bv_len.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %295, i32 0, i32 12, i32 %i.033.i.i.i, i32 1
  %296 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %bv_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool.not.i151.i.i = icmp eq i32 %297, 0
  br i1 %tobool.not.i151.i.i, label %for.body.i.i87.i.for.inc.i.i.i_crit_edge, label %if.end.i.i90.i

for.body.i.i87.i.for.inc.i.i.i_crit_edge:         ; preds = %for.body.i.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

if.end.i.i90.i:                                   ; preds = %for.body.i.i87.i
  %arrayidx.i.i.i = getelementptr %struct.skb_shared_info, ptr %295, i32 0, i32 12, i32 %i.033.i.i.i
  %298 = ptrtoint ptr %dev.i69.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev.i69.i, align 8
  %300 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx.i.i.i, align 4
  %bv_offset.i.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %295, i32 0, i32 12, i32 %i.033.i.i.i, i32 2
  %302 = ptrtoint ptr %bv_offset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %bv_offset.i.i.i.i.i, align 4
  %call2.i.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %299, ptr noundef %301, i32 noundef %303, i32 noundef %297, i32 noundef 1, i32 noundef 0) #11
  %304 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call1.i.i.i.i = tail call ptr @page_address(ptr noundef %305) #11
  %306 = ptrtoint ptr %bv_offset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %bv_offset.i.i.i.i.i, align 4
  %add.ptr.i.i.i88.i = getelementptr i8, ptr %call1.i.i.i.i, i32 %307
  %conv6.i.i89.i = trunc i32 %297 to i16
  %call7.i.i.i = tail call fastcc i32 @iwl_txq_gen2_set_tb_with_wa(ptr noundef %trans, ptr noundef %skb, ptr noundef %add.ptr.i.i58.i, i32 noundef %call2.i.i.i.i, ptr noundef %add.ptr.i.i.i88.i, i16 noundef zeroext %conv6.i.i89.i, ptr noundef %meta) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i.i90.i.for.inc.i.i.i_crit_edge, label %if.end.i.i90.i.out_err.i94.i_crit_edge

if.end.i.i90.i.out_err.i94.i_crit_edge:           ; preds = %if.end.i.i90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err.i94.i

if.end.i.i90.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end.i.i90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i90.i.for.inc.i.i.i_crit_edge, %for.body.i.i87.i.for.inc.i.i.i_crit_edge
  %inc.i.i91.i = add nuw nsw i32 %i.033.i.i.i, 1
  %308 = ptrtoint ptr %end.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %end.i.i.i86.i, align 4
  %nr_frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %309, i32 0, i32 2
  %310 = ptrtoint ptr %nr_frags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %nr_frags.i.i.i, align 2
  %conv.i152.i.i = zext i8 %311 to i32
  %cmp.i153.i.i = icmp ult i32 %inc.i.i91.i, %conv.i152.i.i
  br i1 %cmp.i153.i.i, label %for.inc.i.i.i.for.body.i.i87.i_crit_edge, label %for.inc.i.i.i.if.end37.i.i_crit_edge

for.inc.i.i.i.if.end37.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i.i

for.inc.i.i.i.for.body.i.i87.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i87.i

if.end37.i.i:                                     ; preds = %for.inc.i.i.i.if.end37.i.i_crit_edge, %if.end33.i.i.if.end37.i.i_crit_edge
  %312 = ptrtoint ptr %end.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %end.i.i.i86.i, align 4
  %frag_list.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %313, i32 0, i32 6
  %314 = ptrtoint ptr %frag_list.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %frag.0225.i.i = load ptr, ptr %frag_list.i.i, align 8
  %tobool39.not226.i.i = icmp eq ptr %frag.0225.i.i, null
  br i1 %tobool39.not226.i.i, label %if.end37.i.i.iwl_txq_gen2_build_tfd.exit_crit_edge, label %if.end37.i.i.for.body.i.i_crit_edge

if.end37.i.i.for.body.i.i_crit_edge:              ; preds = %if.end37.i.i
  br label %for.body.i.i

if.end37.i.i.iwl_txq_gen2_build_tfd.exit_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_gen2_build_tfd.exit

for.body.i.i:                                     ; preds = %cleanup56.i.i.for.body.i.i_crit_edge, %if.end37.i.i.for.body.i.i_crit_edge
  %frag.0227.i.i = phi ptr [ %frag.0.i.i, %cleanup56.i.i.for.body.i.i_crit_edge ], [ %frag.0225.i.i, %if.end37.i.i.for.body.i.i_crit_edge ]
  %315 = ptrtoint ptr %dev.i69.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %dev.i69.i, align 8
  %data42.i.i = getelementptr inbounds %struct.sk_buff, ptr %frag.0227.i.i, i32 0, i32 19
  %317 = ptrtoint ptr %data42.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %data42.i.i, align 4
  %len.i154.i.i = getelementptr inbounds %struct.sk_buff, ptr %frag.0227.i.i, i32 0, i32 6
  %319 = ptrtoint ptr %len.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %len.i154.i.i, align 4
  %data_len.i155.i.i = getelementptr inbounds %struct.sk_buff, ptr %frag.0227.i.i, i32 0, i32 7
  %321 = ptrtoint ptr %data_len.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %data_len.i155.i.i, align 8
  %call.i157.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %318) #11
  br i1 %call.i157.i.i, label %land.rhs.i159.i.i, label %if.end39.i172.i.i

land.rhs.i159.i.i:                                ; preds = %for.body.i.i
  %.b1.i158.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i158.i.i, label %land.rhs.i159.i.i.dma_map_single_attrs.exit174.i.i_crit_edge, label %if.then.i163.i.i, !prof !172

land.rhs.i159.i.i.dma_map_single_attrs.exit174.i.i_crit_edge: ; preds = %land.rhs.i159.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit174.i.i

if.then.i163.i.i:                                 ; preds = %land.rhs.i159.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i160.i.i = tail call ptr @dev_driver_string(ptr noundef %316) #11
  %init_name.i.i161.i.i = getelementptr inbounds %struct.device, ptr %316, i32 0, i32 3
  %323 = ptrtoint ptr %init_name.i.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %init_name.i.i161.i.i, align 8
  %tobool.not.i.i162.i.i = icmp eq ptr %324, null
  br i1 %tobool.not.i.i162.i.i, label %if.end.i.i164.i.i, label %if.then.i163.i.i.dev_name.exit.i166.i.i_crit_edge

if.then.i163.i.i.dev_name.exit.i166.i.i_crit_edge: ; preds = %if.then.i163.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i166.i.i

if.end.i.i164.i.i:                                ; preds = %if.then.i163.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %325 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %316, align 4
  br label %dev_name.exit.i166.i.i

dev_name.exit.i166.i.i:                           ; preds = %if.end.i.i164.i.i, %if.then.i163.i.i.dev_name.exit.i166.i.i_crit_edge
  %retval.0.i.i165.i.i = phi ptr [ %326, %if.end.i.i164.i.i ], [ %324, %if.then.i163.i.i.dev_name.exit.i166.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16.i160.i.i, ptr noundef %retval.0.i.i165.i.i) #11
  br label %dma_map_single_attrs.exit174.i.i

if.end39.i172.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i156.i.i = sub i32 %320, %322
  tail call void @debug_dma_map_single(ptr noundef %316, ptr noundef %318, i32 noundef %sub.i156.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %327 = load ptr, ptr @mem_map, align 4
  %328 = ptrtoint ptr %318 to i32
  %sub.i167.i.i = add i32 %328, 1073741824
  %shr.i168.i.i = lshr i32 %sub.i167.i.i, 12
  %add.ptr.i169.i.i = getelementptr %struct.page, ptr %327, i32 %shr.i168.i.i
  %and.i170.i.i = and i32 %328, 4095
  %call41.i171.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %316, ptr noundef %add.ptr.i169.i.i, i32 noundef %and.i170.i.i, i32 noundef %sub.i156.i.i, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit174.i.i

dma_map_single_attrs.exit174.i.i:                 ; preds = %if.end39.i172.i.i, %dev_name.exit.i166.i.i, %land.rhs.i159.i.i.dma_map_single_attrs.exit174.i.i_crit_edge
  %retval.0.i173.i.i = phi i32 [ %call41.i171.i.i, %if.end39.i172.i.i ], [ -1, %dev_name.exit.i166.i.i ], [ -1, %land.rhs.i159.i.i.dma_map_single_attrs.exit174.i.i_crit_edge ]
  %329 = ptrtoint ptr %data42.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %data42.i.i, align 4
  %331 = ptrtoint ptr %len.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %len.i154.i.i, align 4
  %333 = ptrtoint ptr %data_len.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %data_len.i155.i.i, align 8
  %sub.i177.i.i = sub i32 %332, %334
  %conv47.i.i = trunc i32 %sub.i177.i.i to i16
  %call48.i.i = tail call fastcc i32 @iwl_txq_gen2_set_tb_with_wa(ptr noundef %trans, ptr noundef %skb, ptr noundef %add.ptr.i.i58.i, i32 noundef %retval.0.i173.i.i, ptr noundef %330, i16 noundef zeroext %conv47.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end51.i.i, label %dma_map_single_attrs.exit174.i.i.out_err.i94.i_crit_edge

dma_map_single_attrs.exit174.i.i.out_err.i94.i_crit_edge: ; preds = %dma_map_single_attrs.exit174.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err.i94.i

if.end51.i.i:                                     ; preds = %dma_map_single_attrs.exit174.i.i
  %end.i.i178.i.i = getelementptr inbounds %struct.sk_buff, ptr %frag.0227.i.i, i32 0, i32 17
  %335 = ptrtoint ptr %end.i.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %end.i.i178.i.i, align 4
  %nr_frags30.i179.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %336, i32 0, i32 2
  %337 = ptrtoint ptr %nr_frags30.i179.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %nr_frags30.i179.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %cmp32.not.i180.i.i = icmp eq i8 %338, 0
  br i1 %cmp32.not.i180.i.i, label %if.end51.i.i.cleanup56.i.i_crit_edge, label %if.end51.i.i.for.body.i186.i.i_crit_edge

if.end51.i.i.for.body.i186.i.i_crit_edge:         ; preds = %if.end51.i.i
  br label %for.body.i186.i.i

if.end51.i.i.cleanup56.i.i_crit_edge:             ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56.i.i

for.body.i186.i.i:                                ; preds = %for.inc.i200.i.i.for.body.i186.i.i_crit_edge, %if.end51.i.i.for.body.i186.i.i_crit_edge
  %339 = phi ptr [ %353, %for.inc.i200.i.i.for.body.i186.i.i_crit_edge ], [ %336, %if.end51.i.i.for.body.i186.i.i_crit_edge ]
  %i.033.i183.i.i = phi i32 [ %inc.i196.i.i, %for.inc.i200.i.i.for.body.i186.i.i_crit_edge ], [ 0, %if.end51.i.i.for.body.i186.i.i_crit_edge ]
  %bv_len.i.i184.i.i = getelementptr %struct.skb_shared_info, ptr %339, i32 0, i32 12, i32 %i.033.i183.i.i, i32 1
  %340 = ptrtoint ptr %bv_len.i.i184.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %bv_len.i.i184.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %tobool.not.i185.i.i = icmp eq i32 %341, 0
  br i1 %tobool.not.i185.i.i, label %for.body.i186.i.i.for.inc.i200.i.i_crit_edge, label %if.end.i195.i.i

for.body.i186.i.i.for.inc.i200.i.i_crit_edge:     ; preds = %for.body.i186.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i200.i.i

if.end.i195.i.i:                                  ; preds = %for.body.i186.i.i
  %arrayidx.i187.i.i = getelementptr %struct.skb_shared_info, ptr %339, i32 0, i32 12, i32 %i.033.i183.i.i
  %342 = ptrtoint ptr %dev.i69.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %dev.i69.i, align 8
  %344 = ptrtoint ptr %arrayidx.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %arrayidx.i187.i.i, align 4
  %bv_offset.i.i.i188.i.i = getelementptr %struct.skb_shared_info, ptr %339, i32 0, i32 12, i32 %i.033.i183.i.i, i32 2
  %346 = ptrtoint ptr %bv_offset.i.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %bv_offset.i.i.i188.i.i, align 4
  %call2.i.i189.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %343, ptr noundef %345, i32 noundef %347, i32 noundef %341, i32 noundef 1, i32 noundef 0) #11
  %348 = ptrtoint ptr %arrayidx.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx.i187.i.i, align 4
  %call1.i.i190.i.i = tail call ptr @page_address(ptr noundef %349) #11
  %350 = ptrtoint ptr %bv_offset.i.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %bv_offset.i.i.i188.i.i, align 4
  %add.ptr.i.i191.i.i = getelementptr i8, ptr %call1.i.i190.i.i, i32 %351
  %conv6.i192.i.i = trunc i32 %341 to i16
  %call7.i193.i.i = tail call fastcc i32 @iwl_txq_gen2_set_tb_with_wa(ptr noundef %trans, ptr noundef nonnull %frag.0227.i.i, ptr noundef %add.ptr.i.i58.i, i32 noundef %call2.i.i189.i.i, ptr noundef %add.ptr.i.i191.i.i, i16 noundef zeroext %conv6.i192.i.i, ptr noundef %meta) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i193.i.i)
  %tobool8.not.i194.i.i = icmp eq i32 %call7.i193.i.i, 0
  br i1 %tobool8.not.i194.i.i, label %if.end.i195.i.i.for.inc.i200.i.i_crit_edge, label %if.end.i195.i.i.out_err.i94.i_crit_edge

if.end.i195.i.i.out_err.i94.i_crit_edge:          ; preds = %if.end.i195.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err.i94.i

if.end.i195.i.i.for.inc.i200.i.i_crit_edge:       ; preds = %if.end.i195.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i200.i.i

for.inc.i200.i.i:                                 ; preds = %if.end.i195.i.i.for.inc.i200.i.i_crit_edge, %for.body.i186.i.i.for.inc.i200.i.i_crit_edge
  %inc.i196.i.i = add nuw nsw i32 %i.033.i183.i.i, 1
  %352 = ptrtoint ptr %end.i.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %end.i.i178.i.i, align 4
  %nr_frags.i197.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %353, i32 0, i32 2
  %354 = ptrtoint ptr %nr_frags.i197.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %nr_frags.i197.i.i, align 2
  %conv.i198.i.i = zext i8 %355 to i32
  %cmp.i199.i.i = icmp ult i32 %inc.i196.i.i, %conv.i198.i.i
  br i1 %cmp.i199.i.i, label %for.inc.i200.i.i.for.body.i186.i.i_crit_edge, label %for.inc.i200.i.i.cleanup56.i.i_crit_edge

for.inc.i200.i.i.cleanup56.i.i_crit_edge:         ; preds = %for.inc.i200.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56.i.i

for.inc.i200.i.i.for.body.i186.i.i_crit_edge:     ; preds = %for.inc.i200.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i186.i.i

cleanup56.i.i:                                    ; preds = %for.inc.i200.i.i.cleanup56.i.i_crit_edge, %if.end51.i.i.cleanup56.i.i_crit_edge
  %356 = ptrtoint ptr %frag.0227.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %frag.0.i.i = load ptr, ptr %frag.0227.i.i, align 8
  %tobool39.not.i.i = icmp eq ptr %frag.0.i.i, null
  br i1 %tobool39.not.i.i, label %cleanup56.i.i.iwl_txq_gen2_build_tfd.exit_crit_edge, label %cleanup56.i.i.for.body.i.i_crit_edge

cleanup56.i.i.for.body.i.i_crit_edge:             ; preds = %cleanup56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

cleanup56.i.i.iwl_txq_gen2_build_tfd.exit_crit_edge: ; preds = %cleanup56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_gen2_build_tfd.exit

out_err.i94.i:                                    ; preds = %if.end.i195.i.i.out_err.i94.i_crit_edge, %dma_map_single_attrs.exit174.i.i.out_err.i94.i_crit_edge, %if.end.i.i90.i.out_err.i94.i_crit_edge, %dma_map_single_attrs.exit150.i.i.out_err.i94.i_crit_edge, %dma_map_single_attrs.exit.i83.i.out_err.i94.i_crit_edge, %dma_map_single_attrs.exit.thread.i79.i
  %357 = ptrtoint ptr %add.ptr.i.i58.i to i32
  call void @__asan_loadN_noabort(i32 %357, i32 2)
  %358 = load i16, ptr %add.ptr.i.i58.i, align 1
  %359 = lshr i16 %358, 8
  %360 = trunc i16 %359 to i8
  %conv1.i.i.i92.i = and i8 %360, 31
  %conv.i203.i.i = zext i8 %conv1.i.i.i92.i to i32
  %tfd1.i.i93.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %361 = ptrtoint ptr %tfd1.i.i93.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %tfd1.i.i93.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i.i.i92.i, i8 %362)
  %cmp.i204.i.i = icmp ugt i8 %conv1.i.i.i92.i, %362
  br i1 %cmp.i204.i.i, label %do.end.i.i97.i, label %for.cond.preheader.i.i96.i

for.cond.preheader.i.i96.i:                       ; preds = %out_err.i94.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv1.i.i.i92.i)
  %cmp745.i.i95.i = icmp ugt i8 %conv1.i.i.i92.i, 1
  br i1 %cmp745.i.i95.i, label %for.cond.preheader.i.i96.i.for.body.i208.i.i_crit_edge, label %for.cond.preheader.i.i96.i.for.end.i.i104.i_crit_edge

for.cond.preheader.i.i96.i.for.end.i.i104.i_crit_edge: ; preds = %for.cond.preheader.i.i96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i104.i

for.cond.preheader.i.i96.i.for.body.i208.i.i_crit_edge: ; preds = %for.cond.preheader.i.i96.i
  br label %for.body.i208.i.i

do.end.i.i97.i:                                   ; preds = %out_err.i94.i
  call void @__sanitizer_cov_trace_pc() #13
  %363 = ptrtoint ptr %dev.i69.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %dev.i69.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %364, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %conv.i203.i.i) #11
  br label %if.then143

for.body.i208.i.i:                                ; preds = %for.body.i208.i.i.for.body.i208.i.i_crit_edge, %for.cond.preheader.i.i96.i.for.body.i208.i.i_crit_edge
  %i.046.i.i98.i = phi i32 [ %inc.i207.i.i, %for.body.i208.i.i.for.body.i208.i.i_crit_edge ], [ 1, %for.cond.preheader.i.i96.i.for.body.i208.i.i_crit_edge ]
  %365 = ptrtoint ptr %dev.i69.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %dev.i69.i, align 8
  %arrayidx18.i.i99.i = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr.i.i58.i, i32 0, i32 1, i32 %i.046.i.i98.i
  %addr19.i.i100.i = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr.i.i58.i, i32 0, i32 1, i32 %i.046.i.i98.i, i32 1
  %367 = ptrtoint ptr %addr19.i.i100.i to i32
  call void @__asan_loadN_noabort(i32 %367, i32 8)
  %368 = load i64, ptr %addr19.i.i100.i, align 1
  %369 = tail call i64 @llvm.bswap.i64(i64 %368) #11
  %conv20.i.i101.i = trunc i64 %369 to i32
  %370 = ptrtoint ptr %arrayidx18.i.i99.i to i32
  call void @__asan_loadN_noabort(i32 %370, i32 2)
  %371 = load i16, ptr %arrayidx18.i.i99.i, align 1
  %372 = tail call i16 @llvm.bswap.i16(i16 %371) #11
  %conv24.i.i102.i = zext i16 %372 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %366, i32 noundef %conv20.i.i101.i, i32 noundef %conv24.i.i102.i, i32 noundef 1, i32 noundef 0) #11
  %inc.i207.i.i = add nuw nsw i32 %i.046.i.i98.i, 1
  %exitcond.not.i.i103.i = icmp eq i32 %inc.i207.i.i, %conv.i203.i.i
  br i1 %exitcond.not.i.i103.i, label %for.body.i208.i.i.for.end.i.i104.i_crit_edge, label %for.body.i208.i.i.for.body.i208.i.i_crit_edge

for.body.i208.i.i.for.body.i208.i.i_crit_edge:    ; preds = %for.body.i208.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i208.i.i

for.body.i208.i.i.for.end.i.i104.i_crit_edge:     ; preds = %for.body.i208.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i104.i

for.end.i.i104.i:                                 ; preds = %for.body.i208.i.i.for.end.i.i104.i_crit_edge, %for.cond.preheader.i.i96.i.for.end.i.i104.i_crit_edge
  %373 = ptrtoint ptr %add.ptr.i.i58.i to i32
  call void @__asan_storeN_noabort(i32 %373, i32 2)
  store i16 0, ptr %add.ptr.i.i58.i, align 1
  br label %if.then143

iwl_txq_gen2_build_tfd.exit:                      ; preds = %cleanup56.i.i.iwl_txq_gen2_build_tfd.exit_crit_edge, %if.end37.i.i.iwl_txq_gen2_build_tfd.exit_crit_edge, %if.end17.i.i
  %retval.0.i266 = phi ptr [ %add.ptr.i.i.i, %if.end17.i.i ], [ %add.ptr.i.i58.i, %if.end37.i.i.iwl_txq_gen2_build_tfd.exit_crit_edge ], [ %add.ptr.i.i58.i, %cleanup56.i.i.iwl_txq_gen2_build_tfd.exit_crit_edge ]
  %tobool142.not = icmp eq ptr %retval.0.i266, null
  br i1 %tobool142.not, label %iwl_txq_gen2_build_tfd.exit.if.then143_crit_edge, label %if.end145

iwl_txq_gen2_build_tfd.exit.if.then143_crit_edge: ; preds = %iwl_txq_gen2_build_tfd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then143

if.then143:                                       ; preds = %iwl_txq_gen2_build_tfd.exit.if.then143_crit_edge, %for.end.i.i104.i, %do.end.i.i97.i, %for.end.i.i.i, %do.end.i.i.i
  call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end145:                                        ; preds = %iwl_txq_gen2_build_tfd.exit
  %payload = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %dev_cmd, i32 0, i32 1
  %374 = ptrtoint ptr %payload to i32
  call void @__asan_loadN_noabort(i32 %374, i32 2)
  %375 = load i16, ptr %payload, align 1
  %376 = call i16 @llvm.bswap.i16(i16 %375)
  %377 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %write_ptr.i, align 4
  %379 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %n_window.i, align 4
  %sub.i.i269 = add i32 %380, 65535
  %and.i.i270 = and i32 %378, 65535
  %conv.i271 = and i32 %and.i.i270, %sub.i.i269
  call void @__sanitizer_cov_trace_cmp4(i32 %380, i32 %conv.i271)
  %cmp.not.i = icmp sgt i32 %380, %conv.i271
  br i1 %cmp.not.i, label %if.end23.i, label %do.end.i272, !prof !172

do.end.i272:                                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %conv.i271, i32 noundef %380) #11
  br label %iwl_pcie_gen2_update_byte_tbl.exit

if.end23.i:                                       ; preds = %if.end145
  %381 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %trans_cfg.i, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %382, i32 0, i32 1
  %383 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %384)
  %cmp146 = icmp ugt i32 %384, 18
  %385 = ptrtoint ptr %retval.0.i266 to i32
  call void @__asan_loadN_noabort(i32 %385, i32 2)
  %386 = load i16, ptr %retval.0.i266, align 1
  %387 = lshr i16 %386, 8
  %388 = and i16 %387, 31
  %narrow = mul nuw nsw i16 %388, 10
  %narrow292 = add nuw nsw i16 %narrow, 2
  %389 = and i16 %narrow292, 254
  %narrow293 = add nuw nsw i16 %389, 63
  %390 = lshr i16 %narrow293, 6
  %391 = trunc i16 %390 to i8
  %conv28.i = add nsw i8 %391, -1
  %addr.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 14, i32 1
  %392 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %addr.i, align 4
  %bc_table_dword.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 5
  %394 = ptrtoint ptr %bc_table_dword.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %bc_table_dword.i, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %395)
  %tobool33.not.i = icmp eq i8 %395, 0
  br i1 %cmp146, label %if.then31.i, label %if.else.i

if.then31.i:                                      ; preds = %if.end23.i
  br i1 %tobool33.not.i, label %if.then31.i.if.end55.i_crit_edge, label %do.end49.i, !prof !172

if.then31.i.if.end55.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

do.end49.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef null) #11
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end49.i, %if.then31.i.if.end55.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %376)
  %cmp65.i = icmp ugt i16 %376, 16383
  br i1 %cmp65.i, label %do.end82.i, label %if.end55.i.if.end88.i_crit_edge, !prof !171

if.end55.i.if.end88.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i

do.end82.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #11
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.end82.i, %if.end55.i.if.end88.i_crit_edge
  %conv97.i = zext i8 %conv28.i to i16
  %shl.i = shl i16 %conv97.i, 14
  %or.i = or i16 %shl.i, %376
  %396 = call i16 @llvm.bswap.i16(i16 %or.i) #11
  %arrayidx.i276 = getelementptr [1024 x i16], ptr %393, i32 0, i32 %conv.i271
  %397 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_storeN_noabort(i32 %397, i32 2)
  store i16 %396, ptr %arrayidx.i276, align 1
  br label %iwl_pcie_gen2_update_byte_tbl.exit

if.else.i:                                        ; preds = %if.end23.i
  br i1 %tobool33.not.i, label %do.end122.i, label %if.else.i.if.end128.i_crit_edge, !prof !171

if.else.i.if.end128.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128.i

do.end122.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 55, i32 noundef 9, ptr noundef null) #11
  br label %if.end128.i

if.end128.i:                                      ; preds = %do.end122.i, %if.else.i.if.end128.i_crit_edge
  %conv136.i = zext i16 %376 to i32
  %sub138.i = add nuw nsw i32 %conv136.i, 3
  %div139208.i = lshr i32 %sub138.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16380, i16 %376)
  %cmp143.i = icmp ugt i16 %376, 16380
  br i1 %cmp143.i, label %do.end160.i, label %if.end128.i.if.end166.i_crit_edge, !prof !171

if.end128.i.if.end166.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166.i

do.end160.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 9, ptr noundef null) #11
  br label %if.end166.i

if.end166.i:                                      ; preds = %do.end160.i, %if.end128.i.if.end166.i_crit_edge
  %conv175.i = zext i8 %conv28.i to i32
  %shl176.i = shl nuw nsw i32 %conv175.i, 12
  %or177.i = or i32 %shl176.i, %div139208.i
  %conv178.i = trunc i32 %or177.i to i16
  %398 = call i16 @llvm.bswap.i16(i16 %conv178.i) #11
  %arrayidx180.i = getelementptr [320 x i16], ptr %393, i32 0, i32 %conv.i271
  %399 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_storeN_noabort(i32 %399, i32 2)
  store i16 %398, ptr %arrayidx180.i, align 1
  br label %iwl_pcie_gen2_update_byte_tbl.exit

iwl_pcie_gen2_update_byte_tbl.exit:               ; preds = %if.end166.i, %if.end88.i, %do.end.i272
  %400 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %read_ptr.i, align 4
  %402 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %write_ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %401, i32 %403)
  %cmp157 = icmp eq i32 %401, %403
  br i1 %cmp157, label %land.lhs.true159, label %iwl_pcie_gen2_update_byte_tbl.exit.if.end164_crit_edge

iwl_pcie_gen2_update_byte_tbl.exit.if.end164_crit_edge: ; preds = %iwl_pcie_gen2_update_byte_tbl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

land.lhs.true159:                                 ; preds = %iwl_pcie_gen2_update_byte_tbl.exit
  %wd_timeout = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 12
  %404 = ptrtoint ptr %wd_timeout to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %wd_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %405)
  %tobool160.not = icmp eq i32 %405, 0
  br i1 %tobool160.not, label %land.lhs.true159.if.end164_crit_edge, label %if.then161

land.lhs.true159.if.end164_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then161:                                       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #13
  %stuck_timer = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %406 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %406, %405
  %call163 = call i32 @mod_timer(ptr noundef %stuck_timer, i32 noundef %add) #11
  br label %if.end164

if.end164:                                        ; preds = %if.then161, %land.lhs.true159.if.end164_crit_edge, %iwl_pcie_gen2_update_byte_tbl.exit.if.end164_crit_edge
  %407 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %write_ptr.i, align 4
  %inc.i = add i32 %408, 1
  %409 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %trans_cfg.i, align 4
  %411 = ptrtoint ptr %410 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %410, align 4
  %max_tfd_queue_size.i278 = getelementptr inbounds %struct.iwl_base_params, ptr %412, i32 0, i32 5
  %413 = ptrtoint ptr %max_tfd_queue_size.i278 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %max_tfd_queue_size.i278, align 4
  %sub.i279 = add i32 %414, -1
  %and.i280 = and i32 %sub.i279, %inc.i
  store i32 %and.i280, ptr %write_ptr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %415 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %415)
  %tobool.not.i281 = icmp eq i32 %415, 0
  br i1 %tobool.not.i281, label %if.end164.iwl_txq_inc_wr_ptr.exit_crit_edge, label %land.rhs.i

if.end164.iwl_txq_inc_wr_ptr.exit_crit_edge:      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_inc_wr_ptr.exit

land.rhs.i:                                       ; preds = %if.end164
  %dep_map.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i282 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i282, label %do.end.i283, label %land.rhs.i.iwl_txq_inc_wr_ptr.exit_crit_edge, !prof !171

land.rhs.i.iwl_txq_inc_wr_ptr.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_inc_wr_ptr.exit

do.end.i283:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #11
  br label %iwl_txq_inc_wr_ptr.exit

iwl_txq_inc_wr_ptr.exit:                          ; preds = %do.end.i283, %land.rhs.i.iwl_txq_inc_wr_ptr.exit_crit_edge, %if.end164.iwl_txq_inc_wr_ptr.exit_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %416 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %dev.i, align 8
  %id.i284 = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 19
  %418 = ptrtoint ptr %id.i284 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %id.i284, align 4
  %420 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %write_ptr.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %417, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_txq_inc_wr_ptr, ptr noundef nonnull @.str.1, i32 noundef %419, i32 noundef %421) #11
  %422 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %write_ptr.i, align 4
  %424 = ptrtoint ptr %id.i284 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %id.i284, align 4
  %shl.i286 = shl i32 %425, 16
  %or.i287 = or i32 %shl.i286, %423
  call void @iwl_write32(ptr noundef %trans, i32 noundef 1120, i32 noundef %or.i287) #11
  call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %iwl_txq_inc_wr_ptr.exit, %if.then143, %if.then124, %land.lhs.true106.cleanup_crit_edge, %if.then61, %land.rhs50.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then124 ], [ 0, %iwl_txq_inc_wr_ptr.exit ], [ -1, %if.then143 ], [ -22, %if.then ], [ -22, %if.then61 ], [ -12, %land.lhs.true106.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %land.rhs50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_gen2_unmap(ptr noundef %trans, i32 noundef %txq_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 15
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_ptr, align 4
  %4 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not108 = icmp eq i32 %3, %5
  br i1 %cmp.not108, label %entry.while.cond61.preheader_crit_edge, label %do.end.lr.ph

entry.while.cond61.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond61.preheader

do.end.lr.ph:                                     ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %n_window.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 18
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 3
  %page_offs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 6
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  br label %do.end

while.cond61.preheader:                           ; preds = %if.end57.while.cond61.preheader_crit_edge, %entry.while.cond61.preheader_crit_edge
  %overflow_q = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %overflow_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %overflow_q, align 4
  %cmp.i109 = icmp eq ptr %7, %overflow_q
  br i1 %cmp.i109, label %while.cond61.preheader.while.end70_crit_edge, label %while.body66.lr.ph

while.cond61.preheader.while.end70_crit_edge:     ; preds = %while.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end70

while.body66.lr.ph:                               ; preds = %while.cond61.preheader
  %qlen.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13, i32 1
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  br label %while.body66

do.end:                                           ; preds = %if.end57.do.end_crit_edge, %do.end.lr.ph
  %8 = phi i32 [ %5, %do.end.lr.ph ], [ %and.i101, %if.end57.do.end_crit_edge ]
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_txq_gen2_unmap, ptr noundef nonnull @.str.8, i32 noundef %txq_id, i32 noundef %8) #11
  %11 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %q_id, align 1
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %txq_id)
  %cmp7.not = icmp eq i32 %conv, %txq_id
  br i1 %cmp7.not, label %do.end.if.end57_crit_edge, label %if.then

do.end.if.end57_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then:                                          ; preds = %do.end
  %13 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_ptr, align 4
  %15 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_window.i, align 4
  %sub.i = add i32 %16, 65535
  %and.i = and i32 %14, 65535
  %conv10 = and i32 %and.i, %sub.i
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entries, align 4
  %skb12 = getelementptr %struct.iwl_pcie_txq_entry, ptr %18, i32 %conv10, i32 1
  %19 = ptrtoint ptr %skb12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb12, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %land.rhs, label %if.then55.critedge

land.rhs:                                         ; preds = %if.then
  %.b97 = load i1, ptr @iwl_txq_gen2_unmap.__already_done, align 1
  br i1 %.b97, label %land.rhs.if.end57_crit_edge, label %if.then22, !prof !172

land.rhs.if.end57_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_txq_gen2_unmap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 814, i32 noundef 9, ptr noundef null) #11
  br label %if.end57

if.then55.critedge:                               ; preds = %if.then
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %page_offs.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %page_offs.i, align 1
  %conv.i99 = zext i8 %22 to i32
  %add.ptr.i = getelementptr i8, ptr %cb.i, i32 %conv.i99
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  store ptr null, ptr %add.ptr.i, align 4
  %tobool.not6.i = icmp eq ptr %24, null
  br i1 %tobool.not6.i, label %if.then55.critedge.if.end57_crit_edge, label %if.then55.critedge.while.body.i_crit_edge

if.then55.critedge.while.body.i_crit_edge:        ; preds = %if.then55.critedge
  br label %while.body.i

if.then55.critedge.if.end57_crit_edge:            ; preds = %if.then55.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then55.critedge.while.body.i_crit_edge
  %next.07.i = phi ptr [ %26, %while.body.i.while.body.i_crit_edge ], [ %24, %if.then55.critedge.while.body.i_crit_edge ]
  %call.i = tail call ptr @page_address(ptr noundef nonnull %next.07.i) #11
  %add.ptr2.i = getelementptr i8, ptr %call.i, i32 4092
  %25 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr2.i, align 4
  tail call void @__free_pages(ptr noundef nonnull %next.07.i, i32 noundef 0) #11
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %while.body.i.if.end57_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.if.end57_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.end57:                                         ; preds = %while.body.i.if.end57_crit_edge, %if.then55.critedge.if.end57_crit_edge, %if.then22, %land.rhs.if.end57_crit_edge, %do.end.if.end57_crit_edge
  tail call void @iwl_txq_gen2_free_tfd(ptr noundef %trans, ptr noundef %1)
  %27 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_ptr, align 4
  %inc.i = add i32 %28, 1
  %29 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trans_cfg.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_tfd_queue_size.i, align 4
  %sub.i100 = add i32 %34, -1
  %and.i101 = and i32 %sub.i100, %inc.i
  store i32 %and.i101, ptr %read_ptr, align 4
  %35 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %write_ptr, align 4
  %cmp.not = icmp eq i32 %36, %and.i101
  br i1 %cmp.not, label %if.end57.while.cond61.preheader_crit_edge, label %if.end57.do.end_crit_edge

if.end57.do.end_crit_edge:                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end57.while.cond61.preheader_crit_edge:        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond61.preheader

while.body66:                                     ; preds = %iwl_op_mode_free_skb.exit.while.body66_crit_edge, %while.body66.lr.ph
  %37 = phi ptr [ %7, %while.body66.lr.ph ], [ %53, %iwl_op_mode_free_skb.exit.while.body66_crit_edge ]
  %tobool.not.i103 = icmp eq ptr %37, null
  br i1 %tobool.not.i103, label %while.body66.__skb_dequeue.exit_crit_edge, label %if.then.i

while.body66.__skb_dequeue.exit_crit_edge:        ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #13
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

__skb_dequeue.exit:                               ; preds = %if.then.i, %while.body66.__skb_dequeue.exit_crit_edge
  %46 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %op_mode, align 8
  %tobool.not.i104 = icmp eq ptr %47, null
  br i1 %tobool.not.i104, label %land.rhs.i, label %if.end39.critedge.i

land.rhs.i:                                       ; preds = %__skb_dequeue.exit
  %.b44.i = load i1, ptr @iwl_op_mode_free_skb.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge, label %if.then.i105, !prof !172

land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_op_mode_free_skb.exit

if.then.i105:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_op_mode_free_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 179, i32 noundef 9, ptr noundef null) #11
  br label %iwl_op_mode_free_skb.exit

if.end39.critedge.i:                              ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %free_skb.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %free_skb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %free_skb.i, align 4
  tail call void %51(ptr noundef nonnull %47, ptr noundef %37) #11
  br label %iwl_op_mode_free_skb.exit

iwl_op_mode_free_skb.exit:                        ; preds = %if.end39.critedge.i, %if.then.i105, %land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge
  %52 = ptrtoint ptr %overflow_q to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %overflow_q, align 4
  %cmp.i = icmp eq ptr %53, %overflow_q
  br i1 %cmp.i, label %iwl_op_mode_free_skb.exit.while.end70_crit_edge, label %iwl_op_mode_free_skb.exit.while.body66_crit_edge

iwl_op_mode_free_skb.exit.while.body66_crit_edge: ; preds = %iwl_op_mode_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body66

iwl_op_mode_free_skb.exit.while.end70_crit_edge:  ; preds = %iwl_op_mode_free_skb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end70

while.end70:                                      ; preds = %iwl_op_mode_free_skb.exit.while.end70_crit_edge, %while.cond61.preheader.while.end70_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %id.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 19
  %54 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id.i, align 4
  %queue_stopped.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 1
  %call.i106 = tail call i32 @_test_and_clear_bit(i32 noundef %55, ptr noundef %queue_stopped.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i107, label %while.end70.iwl_wake_queue.exit_crit_edge, label %do.end.i

while.end70.iwl_wake_queue.exit_crit_edge:        ; preds = %while.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_wake_queue.exit

do.end.i:                                         ; preds = %while.end70
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  %58 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %57, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_wake_queue, ptr noundef nonnull @.str.44, i32 noundef %59) #11
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
  tail call void %67(ptr noundef %61, i32 noundef %63) #11
  br label %iwl_wake_queue.exit

iwl_wake_queue.exit:                              ; preds = %do.end.i, %while.end70.iwl_wake_queue.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_free_tso_page(ptr nocapture noundef readonly %trans, ptr nocapture noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %page_offs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 6
  %0 = ptrtoint ptr %page_offs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %page_offs, align 1
  %conv = zext i8 %1 to i32
  %add.ptr = getelementptr i8, ptr %cb, i32 %conv
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  store ptr null, ptr %add.ptr, align 4
  %tobool.not6 = icmp eq ptr %3, null
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %next.07 = phi ptr [ %5, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %call = tail call ptr @page_address(ptr noundef nonnull %next.07) #11
  %add.ptr2 = getelementptr i8, ptr %call, i32 4092
  %4 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr2, align 4
  tail call void @__free_pages(ptr noundef nonnull %next.07, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_wake_queue(ptr noundef %trans, ptr nocapture noundef readonly %txq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 19
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %queue_stopped = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 1
  %call = tail call i32 @_test_and_clear_bit(i32 noundef %1, ptr noundef %queue_stopped) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_wake_queue, ptr noundef nonnull @.str.44, i32 noundef %5) #11
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %6 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_mode, align 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %queue_not_full.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %queue_not_full.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue_not_full.i, align 4
  tail call void %13(ptr noundef %7, i32 noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_txq_init(ptr nocapture noundef readonly %trans, ptr noundef %txq, i32 noundef %slots_num, i1 noundef zeroext %cmd_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %max_tfd_queue_size = getelementptr inbounds %struct.iwl_base_params, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %max_tfd_queue_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_tfd_queue_size, align 4
  %need_update = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 8
  %6 = ptrtoint ptr %need_update to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %need_update, align 4
  %7 = tail call i32 @llvm.ctpop.i32(i32 %5), !range !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %tobool.not = icmp ult i32 %7, 2
  br i1 %tobool.not, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b67 = load i1, ptr @iwl_txq_init.__already_done, align 1
  br i1 %.b67, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !172

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_txq_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 933, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %5) #11
  br label %cleanup

if.end39:                                         ; preds = %entry
  %n_window.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 18
  %8 = ptrtoint ptr %n_window.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %slots_num, ptr %n_window.i, align 4
  %9 = tail call i32 @llvm.ctpop.i32(i32 %slots_num) #11, !range !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %do.body43, label %iwl_queue_init.exit, !prof !178

iwl_queue_init.exit:                              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 903, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body43:                                        ; preds = %if.end39
  %div.i = sdiv i32 %slots_num, 4
  %low_mark.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %slots_num)
  %cmp.i = icmp slt i32 %slots_num, 16
  %spec.select.i = select i1 %cmp.i, i32 4, i32 %div.i
  %11 = ptrtoint ptr %low_mark.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select.i, ptr %low_mark.i, align 4
  %div29.i = sdiv i32 %slots_num, 8
  %high_mark.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 21
  %storemerge.i = select i1 %cmp.i, i32 2, i32 %div29.i
  %12 = ptrtoint ptr %high_mark.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge.i, ptr %high_mark.i, align 4
  %write_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 15
  %13 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %write_ptr.i, align 4
  %read_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 16
  %14 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %read_ptr.i, align 4
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @iwl_txq_init.__key, i16 noundef signext 3) #11
  br i1 %cmd_queue, label %if.then48, label %do.body43.if.end54_crit_edge

do.body43.if.end54_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %dep_map = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 4, i32 0, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 4, i32 0, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @iwl_txq_init.iwl_txq_cmd_queue_lock_class, i32 noundef 0, i8 noundef zeroext %16, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %do.body43.if.end54_crit_edge
  %overflow_q = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 13
  %17 = ptrtoint ptr %overflow_q to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %overflow_q, ptr %overflow_q, align 4
  %prev.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 13, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %overflow_q, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qlen.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %iwl_queue_init.exit, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -22, %if.then ], [ -22, %iwl_queue_init.exit ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_log_scd_error(ptr noundef %trans, ptr nocapture noundef readonly %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 19
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %use_tfh = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %use_tfh to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %use_tfh, align 4
  %5 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 16
  %8 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read_ptr, align 4
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 15
  %10 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %write_ptr, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %9, i32 noundef %11) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp.i = icmp ult i32 %1, 20
  br i1 %cmp.i, label %if.end.SCD_QUEUE_STATUS_BITS.exit_crit_edge, label %if.end.i

if.end.SCD_QUEUE_STATUS_BITS.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %SCD_QUEUE_STATUS_BITS.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp1.i = icmp ugt i32 %1, 31
  br i1 %cmp1.i, label %land.rhs.i, label %if.end.i.SCD_QUEUE_STATUS_BITS.exit_crit_edge

if.end.i.SCD_QUEUE_STATUS_BITS.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %SCD_QUEUE_STATUS_BITS.exit

land.rhs.i:                                       ; preds = %if.end.i
  %.b45.i = load i1, ptr @SCD_QUEUE_STATUS_BITS.__already_done, align 1
  br i1 %.b45.i, label %land.rhs.i.SCD_QUEUE_STATUS_BITS.exit_crit_edge, label %if.then8.i, !prof !172

land.rhs.i.SCD_QUEUE_STATUS_BITS.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %SCD_QUEUE_STATUS_BITS.exit

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @SCD_QUEUE_STATUS_BITS.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 72, i32 noundef 9, ptr noundef null) #11
  br label %SCD_QUEUE_STATUS_BITS.exit

SCD_QUEUE_STATUS_BITS.exit:                       ; preds = %if.then8.i, %land.rhs.i.SCD_QUEUE_STATUS_BITS.exit_crit_edge, %if.end.i.SCD_QUEUE_STATUS_BITS.exit_crit_edge, %if.end.SCD_QUEUE_STATUS_BITS.exit_crit_edge
  %.sink.i = phi i32 [ 10497292, %if.end.SCD_QUEUE_STATUS_BITS.exit_crit_edge ], [ 10497844, %if.end.i.SCD_QUEUE_STATUS_BITS.exit_crit_edge ], [ 10497844, %if.then8.i ], [ 10497844, %land.rhs.i.SCD_QUEUE_STATUS_BITS.exit_crit_edge ]
  %mul38.i = shl i32 %1, 2
  %add39.i = add i32 %.sink.i, %mul38.i
  %call4 = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %add39.i) #11
  %conv = and i32 %call4, 7
  %and5 = and i32 %call4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %dev12 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %12 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12, align 8
  %cond = select i1 %tobool6.not, ptr @.str.15, ptr @.str.14
  %wd_timeout = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 12
  %14 = ptrtoint ptr %wd_timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wd_timeout, align 4
  %call16 = tail call i32 @jiffies_to_msecs(i32 noundef %15) #11
  %read_ptr17 = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 16
  %16 = ptrtoint ptr %read_ptr17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_ptr17, align 4
  %write_ptr18 = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 15
  %18 = ptrtoint ptr %write_ptr18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %write_ptr18, align 4
  br i1 %cmp.i, label %SCD_QUEUE_STATUS_BITS.exit.SCD_QUEUE_RDPTR.exit_crit_edge, label %if.end.i58

SCD_QUEUE_STATUS_BITS.exit.SCD_QUEUE_RDPTR.exit_crit_edge: ; preds = %SCD_QUEUE_STATUS_BITS.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %SCD_QUEUE_RDPTR.exit

if.end.i58:                                       ; preds = %SCD_QUEUE_STATUS_BITS.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp1.i57 = icmp ugt i32 %1, 31
  br i1 %cmp1.i57, label %land.rhs.i60, label %if.end.i58.SCD_QUEUE_RDPTR.exit_crit_edge

if.end.i58.SCD_QUEUE_RDPTR.exit_crit_edge:        ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %SCD_QUEUE_RDPTR.exit

land.rhs.i60:                                     ; preds = %if.end.i58
  %.b45.i59 = load i1, ptr @SCD_QUEUE_RDPTR.__already_done, align 1
  br i1 %.b45.i59, label %land.rhs.i60.SCD_QUEUE_RDPTR.exit_crit_edge, label %if.then8.i61, !prof !172

land.rhs.i60.SCD_QUEUE_RDPTR.exit_crit_edge:      ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %SCD_QUEUE_RDPTR.exit

if.then8.i61:                                     ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @SCD_QUEUE_RDPTR.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 64, i32 noundef 9, ptr noundef null) #11
  br label %SCD_QUEUE_RDPTR.exit

SCD_QUEUE_RDPTR.exit:                             ; preds = %if.then8.i61, %land.rhs.i60.SCD_QUEUE_RDPTR.exit_crit_edge, %if.end.i58.SCD_QUEUE_RDPTR.exit_crit_edge, %SCD_QUEUE_STATUS_BITS.exit.SCD_QUEUE_RDPTR.exit_crit_edge
  %.sink.i62 = phi i32 [ 10497128, %SCD_QUEUE_STATUS_BITS.exit.SCD_QUEUE_RDPTR.exit_crit_edge ], [ 10497716, %if.end.i58.SCD_QUEUE_RDPTR.exit_crit_edge ], [ 10497716, %if.then8.i61 ], [ 10497716, %land.rhs.i60.SCD_QUEUE_RDPTR.exit_crit_edge ]
  %add39.i64 = add i32 %.sink.i62, %mul38.i
  %call20 = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %add39.i64) #11
  %20 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans_cfg, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %max_tfd_queue_size = getelementptr inbounds %struct.iwl_base_params, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %max_tfd_queue_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_tfd_queue_size, align 4
  %sub = add i32 %25, -1
  %and22 = and i32 %sub, %call20
  br i1 %cmp.i, label %SCD_QUEUE_RDPTR.exit.SCD_QUEUE_WRPTR.exit_crit_edge, label %if.end.i67

SCD_QUEUE_RDPTR.exit.SCD_QUEUE_WRPTR.exit_crit_edge: ; preds = %SCD_QUEUE_RDPTR.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %SCD_QUEUE_WRPTR.exit

if.end.i67:                                       ; preds = %SCD_QUEUE_RDPTR.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp1.i66 = icmp ugt i32 %1, 31
  br i1 %cmp1.i66, label %land.rhs.i69, label %if.end.i67.SCD_QUEUE_WRPTR.exit_crit_edge

if.end.i67.SCD_QUEUE_WRPTR.exit_crit_edge:        ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %SCD_QUEUE_WRPTR.exit

land.rhs.i69:                                     ; preds = %if.end.i67
  %.b45.i68 = load i1, ptr @SCD_QUEUE_WRPTR.__already_done, align 1
  br i1 %.b45.i68, label %land.rhs.i69.SCD_QUEUE_WRPTR.exit_crit_edge, label %if.then8.i70, !prof !172

land.rhs.i69.SCD_QUEUE_WRPTR.exit_crit_edge:      ; preds = %land.rhs.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %SCD_QUEUE_WRPTR.exit

if.then8.i70:                                     ; preds = %land.rhs.i69
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @SCD_QUEUE_WRPTR.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 56, i32 noundef 9, ptr noundef null) #11
  br label %SCD_QUEUE_WRPTR.exit

SCD_QUEUE_WRPTR.exit:                             ; preds = %if.then8.i70, %land.rhs.i69.SCD_QUEUE_WRPTR.exit_crit_edge, %if.end.i67.SCD_QUEUE_WRPTR.exit_crit_edge, %SCD_QUEUE_RDPTR.exit.SCD_QUEUE_WRPTR.exit_crit_edge
  %.sink.i71 = phi i32 [ 10497048, %SCD_QUEUE_RDPTR.exit.SCD_QUEUE_WRPTR.exit_crit_edge ], [ 10497588, %if.end.i67.SCD_QUEUE_WRPTR.exit_crit_edge ], [ 10497588, %if.then8.i70 ], [ 10497588, %land.rhs.i69.SCD_QUEUE_WRPTR.exit_crit_edge ]
  %add39.i72 = add i32 %.sink.i71, %mul38.i
  %call24 = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %add39.i72) #11
  %26 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trans_cfg, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %max_tfd_queue_size27 = getelementptr inbounds %struct.iwl_base_params, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %max_tfd_queue_size27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_tfd_queue_size27, align 4
  %sub28 = add i32 %31, -1
  %and29 = and i32 %sub28, %call24
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 6488
  %call31 = tail call i32 @iwl_read_direct32(ptr noundef %trans, i32 noundef %add) #11
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %1, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %call16, i32 noundef %17, i32 noundef %19, i32 noundef %and22, i32 noundef %and29, i32 noundef %call31) #11
  br label %cleanup

cleanup:                                          ; preds = %SCD_QUEUE_WRPTR.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_direct32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_txq_alloc(ptr noundef %trans, ptr noundef %txq, i32 noundef %slots_num, i1 noundef zeroext %cmd_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %size, align 2
  %conv = zext i16 %1 to i32
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %max_tfd_queue_size = getelementptr inbounds %struct.iwl_base_params, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %max_tfd_queue_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_tfd_queue_size, align 4
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 3
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %10 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txq, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end23, label %lor.rhs.do.end_crit_edge, !prof !172

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1028, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23:                                         ; preds = %lor.rhs
  %use_tfh = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %use_tfh to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %use_tfh, align 4
  %13 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool25.not = icmp eq i16 %13, 0
  %spec.select.v = select i1 %tobool25.not, i32 %7, i32 %slots_num
  %spec.select = mul i32 %spec.select.v, %conv
  %stuck_timer = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %stuck_timer, ptr noundef nonnull @iwl_txq_stuck_timer, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @iwl_txq_alloc.__key) #11
  %trans36 = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 7
  %14 = ptrtoint ptr %trans36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %trans, ptr %trans36, align 4
  %n_window = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 18
  %15 = ptrtoint ptr %n_window to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %slots_num, ptr %n_window, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %slots_num, i32 24) #11
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end23.error.sink.split_crit_edge, label %if.end7.i.i, !prof !171

if.end23.error.sink.split_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.sink.split

if.end7.i.i:                                      ; preds = %if.end23
  %18 = extractvalue { i32, i1 } %16, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #15
  %19 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %entries, align 4
  %tobool39.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool39.not, label %if.end7.i.i.error_crit_edge, label %if.end41

if.end7.i.i.error_crit_edge:                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end41:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots_num)
  %cmp142 = icmp ne i32 %slots_num, 0
  %or.cond = and i1 %cmp142, %cmd_queue
  br i1 %or.cond, label %if.end41.for.body_crit_edge, label %if.end41.if.end53_crit_edge

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc, %slots_num
  br i1 %exitcond.not, label %for.cond.if.end53_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.if.end53_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end41.for.body_crit_edge
  %i.0143 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 324) #16
  %21 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr %struct.iwl_pcie_txq_entry, ptr %22, i32 %i.0143
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i, ptr %arrayidx, align 4
  %24 = load ptr, ptr %entries, align 4
  %arrayidx48 = getelementptr %struct.iwl_pcie_txq_entry, ptr %24, i32 %i.0143
  %25 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx48, align 4
  %tobool50.not = icmp eq ptr %26, null
  br i1 %tobool50.not, label %for.body.error_crit_edge, label %for.cond

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end53:                                         ; preds = %for.cond.if.end53_crit_edge, %if.end41.if.end53_crit_edge
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %dma_addr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 17
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %28, i32 noundef %spec.select, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #11
  %29 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %txq, align 4
  %tobool57.not = icmp eq ptr %call.i, null
  br i1 %tobool57.not, label %if.end53.error_crit_edge, label %do.end62

if.end53.error_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

do.end62:                                         ; preds = %if.end53
  %mul63 = shl i32 %slots_num, 6
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %first_tb_dma = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 2
  %call.i136 = tail call ptr @dma_alloc_attrs(ptr noundef %31, i32 noundef %mul63, ptr noundef %first_tb_dma, i32 noundef 3264, i32 noundef 0) #11
  %first_tb_bufs = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 1
  %32 = ptrtoint ptr %first_tb_bufs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i136, ptr %first_tb_bufs, align 4
  %tobool67.not = icmp eq ptr %call.i136, null
  br i1 %tobool67.not, label %err_free_tfds, label %do.end62.cleanup_crit_edge

do.end62.cleanup_crit_edge:                       ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_free_tfds:                                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %35 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txq, align 4
  %37 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %34, i32 noundef %spec.select, ptr noundef %36, i32 noundef %38, i32 noundef 0) #11
  br label %error.sink.split

error.sink.split:                                 ; preds = %err_free_tfds, %if.end23.error.sink.split_crit_edge
  %entries.sink = phi ptr [ %txq, %err_free_tfds ], [ %entries, %if.end23.error.sink.split_crit_edge ]
  %39 = ptrtoint ptr %entries.sink to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %entries.sink, align 4
  br label %error

error:                                            ; preds = %error.sink.split, %if.end53.error_crit_edge, %for.body.error_crit_edge, %if.end7.i.i.error_crit_edge
  %40 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %entries, align 4
  %tobool75.not = icmp ne ptr %41, null
  %42 = and i1 %tobool75.not, %cmd_queue
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots_num)
  %cmp80144 = icmp sgt i32 %slots_num, 0
  %or.cond146 = and i1 %42, %cmp80144
  br i1 %or.cond146, label %error.for.body82_crit_edge, label %error.if.end89_crit_edge

error.if.end89_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

error.for.body82_crit_edge:                       ; preds = %error
  br label %for.body82

for.body82:                                       ; preds = %for.body82.for.body82_crit_edge, %error.for.body82_crit_edge
  %i.1145 = phi i32 [ %inc87, %for.body82.for.body82_crit_edge ], [ 0, %error.for.body82_crit_edge ]
  %43 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %entries, align 4
  %arrayidx84 = getelementptr %struct.iwl_pcie_txq_entry, ptr %44, i32 %i.1145
  %45 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx84, align 4
  tail call void @kfree(ptr noundef %46) #11
  %inc87 = add nuw nsw i32 %i.1145, 1
  %exitcond147.not = icmp eq i32 %inc87, %slots_num
  br i1 %exitcond147.not, label %for.body82.if.end89_crit_edge, label %for.body82.for.body82_crit_edge

for.body82.for.body82_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body82

for.body82.if.end89_crit_edge:                    ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.end89:                                         ; preds = %for.body82.if.end89_crit_edge, %error.if.end89_crit_edge
  %47 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %48) #11
  %49 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %entries, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %do.end62.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end89 ], [ 0, %do.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_txq_stuck_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trans1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %trans1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans1, align 4
  %lock = getelementptr i8, ptr %t, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %read_ptr = getelementptr i8, ptr %t, i32 136
  %2 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_ptr, align 4
  %write_ptr = getelementptr i8, ptr %t, i32 132
  %4 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %t, i32 -64
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call void @iwl_txq_log_scd_error(ptr noundef %1, ptr noundef %add.ptr)
  tail call void @iwl_force_nmi(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_txq_dyn_alloc(ptr noundef %trans, i16 noundef zeroext %flags, i8 noundef zeroext %sta_id, i8 noundef zeroext %tid, i32 noundef %cmd_id, i32 noundef %size, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_tx_queue_cfg_cmd, align 1
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, ptr %cmd, i32 0, i32 4
  %4 = getelementptr inbounds %struct.iwl_tx_queue_cfg_cmd, ptr %cmd, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %cmd, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %sta_id, ptr %cmd, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %tid, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %flags, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #11
  %10 = getelementptr inbounds i8, ptr %hcmd, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !179
  %12 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmd, ptr %hcmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %hcmd, i32 1
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 1
  %_rx_page_addr = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 2
  %_rx_page_order = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 3
  %flags5 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 4
  %13 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %flags5, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cmd_id, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 24, ptr %len, align 4
  %arrayinit.start7 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %arrayinit.start7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %arrayinit.start7, align 2
  %arrayinit.end8 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  %18 = ptrtoint ptr %arrayinit.end8 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %arrayinit.end8, align 4
  %bc_tbl_size1.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 4
  %19 = ptrtoint ptr %bc_tbl_size1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bc_tbl_size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !171

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1094, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %21 = ptrtoint ptr %bc_tbl_size1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bc_tbl_size1.i, align 4
  %div123.i = lshr i32 %22, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div123.i, i32 %size)
  %cmp.i = icmp ult i32 %div123.i, %size
  br i1 %cmp.i, label %do.end40.i, label %if.end56.i, !prof !171

do.end40.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1099, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end56.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 228) #16
  %tobool57.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool57.not.i, label %if.end56.i.cleanup_crit_edge, label %if.end59.i

if.end56.i.cleanup_crit_edge:                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59.i:                                       ; preds = %if.end56.i
  %bc_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 3
  %24 = ptrtoint ptr %bc_pool.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bc_pool.i, align 8
  %bc_tbl.i = getelementptr inbounds %struct.iwl_txq, ptr %call7.i.i.i, i32 0, i32 14
  %call61.i = call ptr @dma_pool_alloc(ptr noundef %25, i32 noundef 3264, ptr noundef %bc_tbl.i) #11
  %addr.i = getelementptr inbounds %struct.iwl_txq, ptr %call7.i.i.i, i32 0, i32 14, i32 1
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call61.i, ptr %addr.i, align 4
  %tobool65.not.i = icmp eq ptr %call61.i, null
  br i1 %tobool65.not.i, label %do.end70.i, label %if.end73.i

do.end70.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %28, i32 noundef 0, ptr noundef nonnull @.str.46) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end73.i:                                       ; preds = %if.end59.i
  %call74.i = call i32 @iwl_txq_alloc(ptr noundef %trans, ptr noundef nonnull %call7.i.i.i, i32 noundef %size, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end84.i, label %if.end73.i.error.i_crit_edge

if.end73.i.error.i_crit_edge:                     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.end84.i:                                       ; preds = %if.end73.i
  %call85.i = call i32 @iwl_txq_init(ptr noundef %trans, ptr noundef nonnull %call7.i.i.i, i32 noundef %size, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.else.i.i, label %if.end84.i.error.i_crit_edge

if.end84.i.error.i_crit_edge:                     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.else.i.i:                                      ; preds = %if.end84.i
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #11
  %wd_timeout.i = getelementptr inbounds %struct.iwl_txq, ptr %call7.i.i.i, i32 0, i32 12
  %29 = ptrtoint ptr %wd_timeout.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call2.i.i, ptr %wd_timeout.i, align 4
  %dma_addr = getelementptr inbounds %struct.iwl_txq, ptr %call7.i.i.i, i32 0, i32 17
  %30 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %31 to i64
  %32 = call i64 @llvm.bswap.i64(i64 %conv)
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %4, align 1
  %34 = ptrtoint ptr %bc_tbl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bc_tbl.i, align 8
  %conv14 = zext i32 %35 to i64
  %36 = call i64 @llvm.bswap.i64(i64 %conv14)
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i.i = icmp eq i32 %size, 0
  %38 = call i32 @llvm.ctlz.i32(i32 %size, i1 true) #11, !range !177
  %sub.i.op.i.op = sub nsw i32 28, %38
  %sub22 = select i1 %tobool.not.i.i, i32 -4, i32 %sub.i.op.i.op
  %39 = call i32 @llvm.bswap.i32(i32 %sub22)
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %2, align 1
  %call23 = call i32 @iwl_trans_send_cmd(ptr noundef %trans, ptr noundef nonnull %hcmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %error

error.i:                                          ; preds = %if.end84.i.error.i_crit_edge, %if.end73.i.error.i_crit_edge
  %.str.48.sink.i = phi ptr [ @.str.47, %if.end73.i.error.i_crit_edge ], [ @.str.48, %if.end84.i.error.i_crit_edge ]
  %ret.0.i = phi i32 [ %call74.i, %if.end73.i.error.i_crit_edge ], [ %call85.i, %if.end84.i.error.i_crit_edge ]
  %dev92.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %41 = ptrtoint ptr %dev92.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev92.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %42, i32 noundef 0, ptr noundef nonnull %.str.48.sink.i) #11
  call fastcc void @iwl_txq_gen2_free_memory(ptr noundef %trans, ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end26:                                         ; preds = %if.else.i.i
  %43 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %resp_pkt, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %44, align 1
  %47 = and i32 %46, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %47)
  %cmp.not.i = icmp eq i32 %47, 201326592
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i41, !prof !172

do.end.i41:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1143, i32 noundef 9, ptr noundef null) #11
  br label %error_free_resp.i

if.end21.i:                                       ; preds = %if.end26
  %data.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %44, i32 0, i32 2
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %data.i, align 1
  %50 = call i16 @llvm.bswap.i16(i16 %49) #11
  %conv.i = zext i16 %50 to i32
  %write_pointer.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %44, i32 1, i32 1
  %51 = ptrtoint ptr %write_pointer.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %write_pointer.i, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52) #11
  %conv23.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %50)
  %cmp24.i = icmp ugt i16 %50, 511
  br i1 %cmp24.i, label %land.end.i, label %if.end73.i42

land.end.i:                                       ; preds = %if.end21.i
  %.b234.i = load i1, ptr @iwl_txq_alloc_response.__already_done, align 1
  br i1 %.b234.i, label %land.end.i.error_free_resp.i_crit_edge, label %if.then38.i, !prof !172

land.end.i.error_free_resp.i_crit_edge:           ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free_resp.i

if.then38.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_txq_alloc_response.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1153, i32 noundef 9, ptr noundef nonnull @.str.49, i32 noundef %conv.i) #11
  br label %error_free_resp.i

if.end73.i42:                                     ; preds = %if.end21.i
  %txqs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %call75.i = call i32 @_test_and_set_bit(i32 noundef %conv.i, ptr noundef %txqs.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end127.i, label %land.end85.i

land.end85.i:                                     ; preds = %if.end73.i42
  %.b230233.i = load i1, ptr @iwl_txq_alloc_response.__already_done.50, align 1
  br i1 %.b230233.i, label %land.end85.i.error_free_resp.i_crit_edge, label %if.then92.i, !prof !172

land.end85.i.error_free_resp.i_crit_edge:         ; preds = %land.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free_resp.i

if.then92.i:                                      ; preds = %land.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_txq_alloc_response.__already_done.50, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1159, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %conv.i) #11
  br label %error_free_resp.i

if.end127.i:                                      ; preds = %if.end73.i42
  %arrayidx.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %conv.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %tobool131.not.i = icmp eq ptr %55, null
  br i1 %tobool131.not.i, label %if.end186.i, label %land.rhs138.i

land.rhs138.i:                                    ; preds = %if.end127.i
  %.b231232.i = load i1, ptr @iwl_txq_alloc_response.__already_done.52, align 1
  br i1 %.b231232.i, label %land.rhs138.i.error_free_resp.i_crit_edge, label %if.then149.i, !prof !172

land.rhs138.i.error_free_resp.i_crit_edge:        ; preds = %land.rhs138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free_resp.i

if.then149.i:                                     ; preds = %land.rhs138.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_txq_alloc_response.__already_done.52, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.53, i32 noundef %conv.i) #11
  br label %error_free_resp.i

if.end186.i:                                      ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #13
  %id.i = getelementptr inbounds %struct.iwl_txq, ptr %call7.i.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv.i, ptr %id.i, align 4
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %58 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trans_cfg.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_tfd_queue_size.i, align 4
  %sub.i43 = add i32 %63, 65535
  %and.i = and i32 %sub.i43, %conv23.i
  %read_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %call7.i.i.i, i32 0, i32 16
  %64 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and.i, ptr %read_ptr.i, align 8
  %write_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %call7.i.i.i, i32 0, i32 15
  %65 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and.i, ptr %write_ptr.i, align 4
  %dev.i44 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %66 = ptrtoint ptr %dev.i44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i44, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %67, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_txq_alloc_response, ptr noundef nonnull @.str.54, i32 noundef %conv.i) #11
  %68 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %_rx_page_addr, align 4
  %70 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %_rx_page_order, align 4
  call void @free_pages(i32 noundef %69, i32 noundef %71) #11
  br label %cleanup

error_free_resp.i:                                ; preds = %if.then149.i, %land.rhs138.i.error_free_resp.i_crit_edge, %if.then92.i, %land.end85.i.error_free_resp.i_crit_edge, %if.then38.i, %land.end.i.error_free_resp.i_crit_edge, %do.end.i41
  %ret.0.i45 = phi i32 [ -22, %do.end.i41 ], [ -5, %if.then38.i ], [ -5, %land.end.i.error_free_resp.i_crit_edge ], [ -5, %if.then92.i ], [ -5, %land.end85.i.error_free_resp.i_crit_edge ], [ -5, %if.then149.i ], [ -5, %land.rhs138.i.error_free_resp.i_crit_edge ]
  %72 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %_rx_page_addr, align 4
  %74 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %_rx_page_order, align 4
  call void @free_pages(i32 noundef %73, i32 noundef %75) #11
  call fastcc void @iwl_txq_gen2_free_memory(ptr noundef %trans, ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

error:                                            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @iwl_txq_gen2_free_memory(ptr noundef %trans, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %error, %error_free_resp.i, %if.end186.i, %error.i, %do.end70.i, %if.end56.i.cleanup_crit_edge, %do.end40.i
  %retval.0 = phi i32 [ %call23, %error ], [ %ret.0.i45, %error_free_resp.i ], [ %conv.i, %if.end186.i ], [ -12, %if.end56.i.cleanup_crit_edge ], [ -12, %do.end70.i ], [ %ret.0.i, %error.i ], [ -22, %do.end40.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_txq_gen2_free_memory(ptr nocapture noundef readonly %trans, ptr noundef %txq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size, align 2
  %conv = zext i16 %5 to i32
  %n_window = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 18
  %6 = ptrtoint ptr %n_window to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_window, align 4
  %mul = mul i32 %7, %conv
  %dma_addr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 17
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull %1, i32 noundef %9, i32 noundef 0) #11
  %10 = ptrtoint ptr %n_window to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_window, align 4
  %mul4 = shl i32 %11, 6
  %first_tb_bufs = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 1
  %12 = ptrtoint ptr %first_tb_bufs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %first_tb_bufs, align 4
  %first_tb_dma = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 2
  %14 = ptrtoint ptr %first_tb_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %first_tb_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul4, ptr noundef %13, i32 noundef %15, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 3
  %16 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %17) #11
  %addr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr, align 4
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bc_tbl = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 14
  %bc_pool = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 3
  %20 = ptrtoint ptr %bc_pool to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bc_pool, align 8
  %22 = ptrtoint ptr %bc_tbl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bc_tbl, align 4
  tail call void @dma_pool_free(ptr noundef %21, ptr noundef nonnull %19, i32 noundef %23) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  tail call void @kfree(ptr noundef %txq) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_dyn_free(ptr noundef %trans, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %queue)
  %cmp = icmp sgt i32 %queue, 511
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !171

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1228, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %queue) #11
  br label %do.end81

if.end21.critedge:                                ; preds = %entry
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %call = tail call i32 @_test_and_clear_bit(i32 noundef %queue, ptr noundef %txqs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.then23, label %if.end75

if.then23:                                        ; preds = %if.end21.critedge
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool25.not = icmp eq i32 %2, 0
  br i1 %tobool25.not, label %if.then23.do.end81_crit_edge, label %land.rhs

if.then23.do.end81_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81

land.rhs:                                         ; preds = %if.then23
  %.b93 = load i1, ptr @iwl_txq_dyn_free.__already_done, align 1
  br i1 %.b93, label %land.rhs.do.end81_crit_edge, label %if.then40, !prof !172

land.rhs.do.end81_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81

if.then40:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_txq_dyn_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1239, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %queue) #11
  br label %do.end81

if.end75:                                         ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @iwl_txq_gen2_free(ptr noundef %trans, i32 noundef %queue)
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %4, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_txq_dyn_free, ptr noundef nonnull @.str.18, i32 noundef %queue) #11
  br label %do.end81

do.end81:                                         ; preds = %if.end75, %if.then40, %land.rhs.do.end81_crit_edge, %if.then23.do.end81_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_txq_gen2_free(ptr noundef %trans, i32 noundef %txq_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool40.not = icmp eq ptr %1, null
  br i1 %tobool40.not, label %do.end58, label %if.end74, !prof !171

do.end58:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 874, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end74:                                         ; preds = %entry
  tail call void @iwl_txq_gen2_unmap(ptr noundef %trans, i32 noundef %txq_id)
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %2 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %q_id, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %txq_id)
  %cmp76 = icmp eq i32 %conv, %txq_id
  br i1 %cmp76, label %for.cond.preheader, label %if.end74.if.end85_crit_edge

if.end74.if.end85_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

for.cond.preheader:                               ; preds = %if.end74
  %n_window = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %n_window to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_window, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp79113 = icmp sgt i32 %5, 0
  br i1 %cmp79113, label %for.body.lr.ph, label %for.cond.preheader.if.end85_crit_edge

for.cond.preheader.if.end85_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries, align 4
  %arrayidx81 = getelementptr %struct.iwl_pcie_txq_entry, ptr %7, i32 %i.0114
  %8 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx81, align 4
  tail call void @kfree_sensitive(ptr noundef %9) #11
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries, align 4
  %free_buf = getelementptr %struct.iwl_pcie_txq_entry, ptr %11, i32 %i.0114, i32 2
  %12 = ptrtoint ptr %free_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_buf, align 4
  tail call void @kfree_sensitive(ptr noundef %13) #11
  %inc = add nuw nsw i32 %i.0114, 1
  %14 = ptrtoint ptr %n_window to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_window, align 4
  %cmp79 = icmp slt i32 %inc, %15
  br i1 %cmp79, label %for.body.for.body_crit_edge, label %for.body.if.end85_crit_edge

for.body.if.end85_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end85:                                         ; preds = %for.body.if.end85_crit_edge, %for.cond.preheader.if.end85_crit_edge, %if.end74.if.end85_crit_edge
  %stuck_timer = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 6
  %call = tail call i32 @del_timer_sync(ptr noundef %stuck_timer) #11
  tail call fastcc void @iwl_txq_gen2_free_memory(ptr noundef %trans, ptr noundef nonnull %1)
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_clear_bit(i32 noundef %txq_id, ptr noundef %txqs) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_gen2_tx_free(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %0 = call ptr @memset(ptr %txqs, i32 0, i32 64)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %i.07
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @iwl_txq_gen2_free(ptr noundef %trans, i32 noundef %i.07)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_txq_gen2_init(ptr noundef %trans, i32 noundef %txq_id, i32 noundef %queue_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 228) #16
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %call9 = tail call i32 @iwl_txq_alloc(ptr noundef %trans, ptr noundef nonnull %call7.i.i, i32 noundef %queue_size, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end23_crit_edge, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end23:                                         ; preds = %if.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  %queue.0 = phi ptr [ %call7.i.i, %if.end.if.end23_crit_edge ], [ %1, %entry.if.end23_crit_edge ]
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %6 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %q_id, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %txq_id)
  %cmp = icmp eq i32 %conv, %txq_id
  %call26 = tail call i32 @iwl_txq_init(ptr noundef %trans, ptr noundef nonnull %queue.0, i32 noundef %queue_size, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end36, label %if.end23.error_crit_edge

if.end23.error_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end36:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.iwl_txq, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %txq_id, ptr %id, align 4
  tail call void @_set_bit(i32 noundef %txq_id, ptr noundef %txqs) #11
  br label %cleanup

error:                                            ; preds = %if.end23.error_crit_edge, %if.end.error_crit_edge
  %.str.21.sink = phi ptr [ @.str.20, %if.end.error_crit_edge ], [ @.str.21, %if.end23.error_crit_edge ]
  %ret.0 = phi i32 [ %call9, %if.end.error_crit_edge ], [ %call26, %if.end23.error_crit_edge ]
  %dev33 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %11 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev33, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %.str.21.sink, i32 noundef %txq_id) #11
  %13 = call ptr @memset(ptr %txqs, i32 0, i32 64)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %error
  %i.07.i = phi i32 [ 0, %error ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %i.07.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @iwl_txq_gen2_free(ptr noundef %trans, i32 noundef %i.07.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end36, %do.end
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -12, %do.end ], [ %ret.0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_gen1_tfd_unmap(ptr nocapture noundef readonly %trans, ptr nocapture noundef %meta, ptr nocapture noundef readonly %txq, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %3 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i63

if.then.i63:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %n_window.i.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 18
  %4 = ptrtoint ptr %n_window.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_window.i.i, align 4
  %sub.i.i = add i32 %5, 65535
  %and.i.i = and i32 %index, 65535
  %conv.i = and i32 %and.i.i, %sub.i.i
  %6 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txq, align 4
  %size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size.i, align 2
  %conv1.i = zext i16 %9 to i32
  %mul.i = mul nuw i32 %conv.i, %conv1.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %add.ptr.i, align 1
  %12 = lshr i16 %11, 8
  %13 = trunc i16 %12 to i8
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %txq, align 4
  %size.i103 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %16 = ptrtoint ptr %size.i103 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %size.i103, align 2
  %conv1.i104 = zext i16 %17 to i32
  %mul.i105 = mul i32 %conv1.i104, %index
  %add.ptr.i106 = getelementptr i8, ptr %15, i32 %mul.i105
  %num_tbs3.i = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i106, i32 0, i32 1
  %18 = ptrtoint ptr %num_tbs3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_tbs3.i, align 1
  br label %iwl_txq_gen1_tfd_get_num_tbs.exit

iwl_txq_gen1_tfd_get_num_tbs.exit:                ; preds = %if.end.i, %if.then.i63
  %add.ptr.i107 = phi ptr [ %add.ptr.i, %if.then.i63 ], [ %add.ptr.i106, %if.end.i ]
  %retval.0.in.i = phi i8 [ %13, %if.then.i63 ], [ %19, %if.end.i ]
  %retval.0.i = and i8 %retval.0.in.i, 31
  %conv = zext i8 %retval.0.i to i32
  %tfd2 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %20 = ptrtoint ptr %tfd2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tfd2, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i, i8 %21)
  %cmp = icmp ugt i8 %retval.0.i, %21
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %retval.0.i)
  %cmp8115 = icmp ugt i8 %retval.0.i, 1
  br i1 %cmp8115, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tbs = getelementptr inbounds %struct.iwl_cmd_meta, ptr %meta, i32 0, i32 2
  %dev11 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %for.body

do.end:                                           ; preds = %iwl_txq_gen1_tfd_get_num_tbs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %conv) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0116 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %tbs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tbs, align 4
  %shl = shl nuw i32 1, %i.0116
  %and = and i32 %25, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %26 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev11, align 8
  %28 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i80 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %use_tfh.i80 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i81 = load i16, ptr %use_tfh.i80, align 4
  %31 = and i16 %bf.load.i81, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i82 = icmp eq i16 %31, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.body
  br i1 %tobool.not.i82, label %if.end.i77, label %if.then.i76

if.then.i76:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %addr3.i = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr.i107, i32 0, i32 1, i32 %i.0116, i32 1
  %32 = ptrtoint ptr %addr3.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %addr3.i, align 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #11
  %conv.i68 = trunc i64 %34 to i32
  %arrayidx.i = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr.i107, i32 0, i32 1, i32 %i.0116
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %arrayidx.i, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #11
  br label %for.inc

if.end.i77:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i107, i32 0, i32 2, i32 %i.0116
  %38 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx6.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  %hi_n_len.i = getelementptr %struct.iwl_tfd, ptr %add.ptr.i107, i32 0, i32 2, i32 %i.0116, i32 1
  %41 = ptrtoint ptr %hi_n_len.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %hi_n_len.i, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #11
  %44 = lshr i16 %43, 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %tobool.not.i82, label %if.end.i99, label %if.then.i97

if.then.i97:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %addr3.i84 = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr.i107, i32 0, i32 1, i32 %i.0116, i32 1
  %45 = ptrtoint ptr %addr3.i84 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %addr3.i84, align 1
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #11
  %conv.i85 = trunc i64 %47 to i32
  %arrayidx.i96 = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr.i107, i32 0, i32 1, i32 %i.0116
  %48 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %arrayidx.i96, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #11
  br label %for.inc

if.end.i99:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6.i87 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i107, i32 0, i32 2, i32 %i.0116
  %51 = ptrtoint ptr %arrayidx6.i87 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %arrayidx6.i87, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #11
  %hi_n_len.i98 = getelementptr %struct.iwl_tfd, ptr %add.ptr.i107, i32 0, i32 2, i32 %i.0116, i32 1
  %54 = ptrtoint ptr %hi_n_len.i98 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %hi_n_len.i98, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #11
  %57 = lshr i16 %56, 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i99, %if.then.i97, %if.end.i77, %if.then.i76
  %retval.0.i78.sink = phi i16 [ %37, %if.then.i76 ], [ %44, %if.end.i77 ], [ %50, %if.then.i97 ], [ %57, %if.end.i99 ]
  %retval.0.i71110.sink = phi i32 [ %conv.i68, %if.then.i76 ], [ %40, %if.end.i77 ], [ %conv.i85, %if.then.i97 ], [ %53, %if.end.i99 ]
  %conv16 = zext i16 %retval.0.i78.sink to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %retval.0.i71110.sink, i32 noundef %conv16, i32 noundef 1, i32 noundef 0) #11
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tbs24 = getelementptr inbounds %struct.iwl_cmd_meta, ptr %meta, i32 0, i32 2
  %58 = ptrtoint ptr %tbs24 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %tbs24, align 4
  %59 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %use_tfh to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load = load i16, ptr %use_tfh, align 4
  %62 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool25.not = icmp eq i16 %62, 0
  br i1 %tobool25.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 0, ptr %add.ptr.i107, align 1
  br label %cleanup

if.else28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %num_tbs30 = getelementptr inbounds %struct.iwl_tfd, ptr %add.ptr.i107, i32 0, i32 1
  %64 = ptrtoint ptr %num_tbs30 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %num_tbs30, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %if.then26, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_gen1_update_byte_cnt_tbl(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %txq, i16 noundef zeroext %byte_cnt, i32 noundef %num_tbs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %write_ptr1 = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 15
  %0 = ptrtoint ptr %write_ptr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %write_ptr1, align 4
  %id = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 19
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %add2 = add i16 %byte_cnt, 8
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 3
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr %struct.iwl_pcie_txq_entry, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %sta_id5 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %7, i32 5
  %8 = ptrtoint ptr %sta_id5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sta_id5, align 1
  %addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 11, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 4
  %sec_ctl6 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %7, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %sec_ctl6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sec_ctl6, align 1
  %14 = and i8 %13, 7
  %and = zext i8 %14 to i32
  %15 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb11
    i32 1, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add9 = add i16 %byte_cnt, 16
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add13 = add i16 %byte_cnt, 12
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add17 = add i16 %byte_cnt, 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb11, %sw.bb, %entry.sw.epilog_crit_edge
  %len.0 = phi i16 [ %add2, %entry.sw.epilog_crit_edge ], [ %add17, %sw.bb15 ], [ %add13, %sw.bb11 ], [ %add9, %sw.bb ]
  %bc_table_dword = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 5
  %16 = ptrtoint ptr %bc_table_dword to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bc_table_dword, align 8, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %conv20 = zext i16 %len.0 to i32
  %sub = add nuw nsw i32 %conv20, 3
  %div89 = lshr i32 %sub, 2
  %conv22 = trunc i32 %div89 to i16
  %len.1 = select i1 %tobool.not, i16 %len.0, i16 %conv22
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %len.1)
  %cmp = icmp ugt i16 %len.1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp25 = icmp sgt i32 %1, 255
  %18 = select i1 %cmp, i1 true, i1 %cmp25
  br i1 %18, label %do.end, label %if.end50, !prof !171

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1419, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end50:                                         ; preds = %sw.epilog
  %conv52 = zext i8 %9 to i16
  %shl = shl i16 %conv52, 12
  %or = or i16 %len.1, %shl
  %19 = tail call i16 @llvm.bswap.i16(i16 %or)
  %arrayidx54 = getelementptr %struct.iwlagn_scd_bc_tbl, ptr %11, i32 %3
  %arrayidx55 = getelementptr [320 x i16], ptr %arrayidx54, i32 0, i32 %1
  %20 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp56 = icmp slt i32 %1, 64
  br i1 %cmp56, label %if.then58, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %add61 = add nsw i32 %1, 256
  %arrayidx62 = getelementptr [320 x i16], ptr %arrayidx54, i32 0, i32 %add61
  %21 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %19, ptr %arrayidx62, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end50.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_gen1_inval_byte_cnt_tbl(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 11, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %id = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 19
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %read_ptr1 = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 16
  %4 = ptrtoint ptr %read_ptr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_ptr1, align 4
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 3
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr %struct.iwl_pcie_txq_entry, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp sgt i32 %5, 255
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1442, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %10 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %q_id, align 1
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp22.not = icmp eq i32 %3, %conv
  br i1 %cmp22.not, label %if.end.if.end26_crit_edge, label %if.then24

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sta_id25 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %9, i32 5
  %12 = ptrtoint ptr %sta_id25 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sta_id25, align 1
  %phi.cast = zext i8 %13 to i16
  %phi.bo = shl i16 %phi.cast, 12
  %phi.bo50 = or i16 %phi.bo, 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end.if.end26_crit_edge
  %sta_id.0 = phi i16 [ %phi.bo50, %if.then24 ], [ 1, %if.end.if.end26_crit_edge ]
  %14 = tail call i16 @llvm.bswap.i16(i16 %sta_id.0)
  %arrayidx29 = getelementptr %struct.iwlagn_scd_bc_tbl, ptr %1, i32 %3
  %arrayidx30 = getelementptr [320 x i16], ptr %arrayidx29, i32 0, i32 %5
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp31 = icmp slt i32 %5, 64
  br i1 %cmp31, label %if.then33, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nsw i32 %5, 256
  %arrayidx36 = getelementptr [320 x i16], ptr %arrayidx29, i32 0, i32 %add
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %14, ptr %arrayidx36, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end26.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_free_tfd(ptr nocapture noundef readonly %trans, ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 16
  %0 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %read_ptr, align 4
  %n_window.i = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 18
  %2 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_window.i, align 4
  %sub.i = add i32 %3, 65535
  %and.i = and i32 %1, 65535
  %conv = and i32 %and.i, %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !171

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1474, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 3
  %5 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entries, align 4
  %tobool26.not = icmp eq ptr %6, null
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %meta = getelementptr %struct.iwl_pcie_txq_entry, ptr %6, i32 %conv, i32 3
  tail call void @iwl_txq_gen1_tfd_unmap(ptr noundef %trans, ptr noundef %meta, ptr noundef %txq, i32 noundef %1)
  %7 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entries, align 4
  %skb32 = getelementptr %struct.iwl_pcie_txq_entry, ptr %8, i32 %conv, i32 1
  %9 = ptrtoint ptr %skb32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb32, align 4
  %tobool33.not = icmp eq ptr %10, null
  br i1 %tobool33.not, label %if.end28.cleanup_crit_edge, label %if.then34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then34:                                        ; preds = %if.end28
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %11 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %op_mode, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.critedge.i

land.rhs.i:                                       ; preds = %if.then34
  %.b44.i = load i1, ptr @iwl_op_mode_free_skb.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge, label %if.then.i, !prof !172

land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_op_mode_free_skb.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_op_mode_free_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 179, i32 noundef 9, ptr noundef null) #11
  br label %iwl_op_mode_free_skb.exit

if.end39.critedge.i:                              ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %free_skb.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %free_skb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %free_skb.i, align 4
  tail call void %16(ptr noundef nonnull %12, ptr noundef nonnull %10) #11
  br label %iwl_op_mode_free_skb.exit

iwl_op_mode_free_skb.exit:                        ; preds = %if.end39.critedge.i, %if.then.i, %land.rhs.i.iwl_op_mode_free_skb.exit_crit_edge
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entries, align 4
  %skb37 = getelementptr %struct.iwl_pcie_txq_entry, ptr %18, i32 %conv, i32 1
  %19 = ptrtoint ptr %skb37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %skb37, align 4
  br label %cleanup

cleanup:                                          ; preds = %iwl_op_mode_free_skb.exit, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_progress(ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !171

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1499, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %wd_timeout = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 12
  %1 = ptrtoint ptr %wd_timeout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wd_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool24.not = icmp eq i32 %2, 0
  br i1 %tobool24.not, label %if.end.if.end36_crit_edge, label %if.end26

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end26:                                         ; preds = %if.end
  %frozen = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 9
  %3 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %frozen, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool27.not = icmp eq i8 %4, 0
  br i1 %tobool27.not, label %if.end29, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end29:                                         ; preds = %if.end26
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 16
  %5 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %read_ptr, align 4
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 15
  %7 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %write_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp30 = icmp eq i32 %6, %8
  %stuck_timer = getelementptr inbounds %struct.iwl_txq, ptr %txq, i32 0, i32 6
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 @del_timer(ptr noundef %stuck_timer) #11
  br label %if.end36

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, %2
  %call35 = tail call i32 @mod_timer(ptr noundef %stuck_timer, i32 noundef %add) #11
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then31, %if.end26.if.end36_crit_edge, %if.end.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_reclaim(ptr noundef %trans, i32 noundef %txq_id, i32 noundef %ssn, ptr noundef %skbs) local_unnamed_addr #0 align 64 {
entry:
  %overflow_skbs = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %n_window.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_window.i, align 4
  %sub.i = add i32 %3, 65535
  %and.i286 = and i32 %sub.i, %ssn
  %conv.i = trunc i32 %and.i286 to i16
  %conv = and i32 %and.i286, 65535
  %read_ptr2 = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %read_ptr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_ptr2, align 4
  %and.i289 = and i32 %sub.i, %5
  %conv.i290 = trunc i32 %and.i289 to i16
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %6 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %q_id, align 1
  %conv6 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %txq_id)
  %cmp = icmp eq i32 %conv6, %txq_id
  br i1 %cmp, label %do.end, label %if.end28, !prof !171

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1531, i32 noundef 9, ptr noundef null) #11
  br label %cleanup203

if.end28:                                         ; preds = %entry
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %div3.i = lshr i32 %txq_id, 5
  %arrayidx.i = getelementptr i32, ptr %txqs, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %txq_id, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool31.not = icmp eq i32 %11, 0
  br i1 %tobool31.not, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_txq_reclaim, ptr noundef nonnull @.str.22, i32 noundef %txq_id, i32 noundef %ssn) #11
  br label %out

if.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i290, i16 %conv.i)
  %cmp40 = icmp eq i16 %conv.i290, %conv.i
  br i1 %cmp40, label %if.end39.out_crit_edge, label %do.end47

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end47:                                         ; preds = %if.end39
  %dev48 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %14 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev48, align 8
  %16 = ptrtoint ptr %read_ptr2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_ptr2, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_txq_reclaim, ptr noundef nonnull @.str.23, i32 noundef %txq_id, i32 noundef %17, i32 noundef %conv, i32 noundef %ssn) #11
  %dec.i = add nsw i32 %conv, -1
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %18 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans_cfg.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_tfd_queue_size.i, align 4
  %sub.i291 = add i32 %23, -1
  %and.i292 = and i32 %sub.i291, %dec.i
  %24 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_window.i, align 4
  %sub.i.i = add i32 %25, 65535
  %and.i.i = and i32 %sub.i.i, %and.i292
  %conv.i.i = trunc i32 %and.i.i to i16
  %26 = ptrtoint ptr %read_ptr2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read_ptr2, align 4
  %and.i31.i = and i32 %sub.i.i, %27
  %conv.i32.i = trunc i32 %and.i31.i to i16
  %write_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %write_ptr.i, align 4
  %and.i35.i = and i32 %29, %sub.i.i
  %conv.i36.i = trunc i32 %and.i35.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i36.i, i16 %conv.i32.i)
  %cmp.not.i = icmp ult i16 %conv.i36.i, %conv.i32.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i.i, i16 %conv.i32.i)
  %cmp10.i = icmp uge i16 %conv.i.i, %conv.i32.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i.i, i16 %conv.i36.i)
  %cmp13.i = icmp ult i16 %conv.i.i, %conv.i36.i
  br i1 %cmp.not.i, label %iwl_txq_used.exit, label %cond.true.i

cond.true.i:                                      ; preds = %do.end47
  %narrow.i = select i1 %cmp10.i, i1 %cmp13.i, i1 false
  br i1 %narrow.i, label %cond.true.i.if.end63_crit_edge, label %cond.true.i.do.end58_crit_edge

cond.true.i.do.end58_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

cond.true.i.if.end63_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

iwl_txq_used.exit:                                ; preds = %do.end47
  %narrow37.i = select i1 %cmp10.i, i1 true, i1 %cmp13.i
  br i1 %narrow37.i, label %iwl_txq_used.exit.if.end63_crit_edge, label %iwl_txq_used.exit.do.end58_crit_edge

iwl_txq_used.exit.do.end58_crit_edge:             ; preds = %iwl_txq_used.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

iwl_txq_used.exit.if.end63_crit_edge:             ; preds = %iwl_txq_used.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.end58:                                         ; preds = %iwl_txq_used.exit.do.end58_crit_edge, %cond.true.i.do.end58_crit_edge
  %30 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev48, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.iwl_txq_reclaim, i32 noundef %txq_id, i32 noundef %and.i292, i32 noundef %23, i32 noundef %29, i32 noundef %27) #11
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %32 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %op_mode, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %do.end58.out_crit_edge, label %lor.lhs.false.i

do.end58.out_crit_edge:                           ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false.i:                                  ; preds = %do.end58
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.out_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %time_point.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %time_point.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %time_point.i, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.out_crit_edge, label %if.end.i

lor.lhs.false2.i.out_crit_edge:                   ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %37(ptr noundef nonnull %33, i32 noundef 25, ptr noundef null) #11
  br label %out

if.end63:                                         ; preds = %iwl_txq_used.exit.if.end63_crit_edge, %cond.true.i.if.end63_crit_edge
  %38 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skbs, align 4
  %cmp.i.not = icmp eq ptr %39, %skbs
  br i1 %cmp.i.not, label %for.body.lr.ph, label %do.end84, !prof !172

for.body.lr.ph:                                   ; preds = %if.end63
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 3
  %page_offs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 6
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %skbs, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %skbs, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 11, i32 1
  %id.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 19
  br label %for.body

do.end84:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1565, i32 noundef 9, ptr noundef null) #11
  br label %out

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %read_ptr.0357.in = phi i32 [ %and.i289, %for.body.lr.ph ], [ %and.i306, %cleanup.for.body_crit_edge ]
  %read_ptr.0357 = and i32 %read_ptr.0357.in, 65535
  %40 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %entries, align 4
  %skb104 = getelementptr %struct.iwl_pcie_txq_entry, ptr %41, i32 %read_ptr.0357, i32 1
  %42 = ptrtoint ptr %skb104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb104, align 4
  %tobool105.not = icmp eq ptr %43, null
  br i1 %tobool105.not, label %land.rhs, label %if.end160

land.rhs:                                         ; preds = %for.body
  %.b279 = load i1, ptr @iwl_txq_reclaim.__already_done, align 1
  br i1 %.b279, label %land.rhs.cleanup_crit_edge, label %if.then123, !prof !172

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then123:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_txq_reclaim.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1574, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end160:                                        ; preds = %for.body
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %page_offs.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %page_offs.i, align 1
  %conv.i294 = zext i8 %45 to i32
  %add.ptr.i = getelementptr i8, ptr %cb.i, i32 %conv.i294
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  store ptr null, ptr %add.ptr.i, align 4
  %tobool.not6.i = icmp eq ptr %47, null
  br i1 %tobool.not6.i, label %if.end160.iwl_txq_free_tso_page.exit_crit_edge, label %if.end160.while.body.i_crit_edge

if.end160.while.body.i_crit_edge:                 ; preds = %if.end160
  br label %while.body.i

if.end160.iwl_txq_free_tso_page.exit_crit_edge:   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_free_tso_page.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end160.while.body.i_crit_edge
  %next.07.i = phi ptr [ %49, %while.body.i.while.body.i_crit_edge ], [ %47, %if.end160.while.body.i_crit_edge ]
  %call.i = tail call ptr @page_address(ptr noundef nonnull %next.07.i) #11
  %add.ptr2.i = getelementptr i8, ptr %call.i, i32 4092
  %48 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr2.i, align 4
  tail call void @__free_pages(ptr noundef nonnull %next.07.i, i32 noundef 0) #11
  %tobool.not.i295 = icmp eq ptr %49, null
  br i1 %tobool.not.i295, label %while.body.i.iwl_txq_free_tso_page.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.iwl_txq_free_tso_page.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_free_tso_page.exit

iwl_txq_free_tso_page.exit:                       ; preds = %while.body.i.iwl_txq_free_tso_page.exit_crit_edge, %if.end160.iwl_txq_free_tso_page.exit_crit_edge
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %skbs, ptr %43, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 1
  %53 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %prev10.i.i.i, align 4
  store volatile ptr %43, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %43, ptr %51, align 4
  %55 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %56, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %57 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %entries, align 4
  %skb163 = getelementptr %struct.iwl_pcie_txq_entry, ptr %58, i32 %read_ptr.0357, i32 1
  %59 = ptrtoint ptr %skb163 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %skb163, align 4
  %60 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %use_tfh to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load = load i16, ptr %use_tfh, align 4
  %63 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool165.not = icmp eq i16 %63, 0
  br i1 %tobool165.not, label %if.then166, label %iwl_txq_free_tso_page.exit.if.end167_crit_edge

iwl_txq_free_tso_page.exit.if.end167_crit_edge:   ; preds = %iwl_txq_free_tso_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then166:                                       ; preds = %iwl_txq_free_tso_page.exit
  %64 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %addr.i, align 4
  %66 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id.i, align 4
  %68 = ptrtoint ptr %read_ptr2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %read_ptr2, align 4
  %70 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %entries, align 4
  %arrayidx.i296 = getelementptr %struct.iwl_pcie_txq_entry, ptr %71, i32 %69
  %72 = ptrtoint ptr %arrayidx.i296 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %69)
  %cmp.i297 = icmp sgt i32 %69, 255
  br i1 %cmp.i297, label %do.end.i, label %if.then166.if.end.i299_crit_edge, !prof !171

if.then166.if.end.i299_crit_edge:                 ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i299

do.end.i:                                         ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1442, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i299

if.end.i299:                                      ; preds = %do.end.i, %if.then166.if.end.i299_crit_edge
  %74 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %q_id, align 1
  %conv.i298 = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv.i298)
  %cmp22.not.i = icmp eq i32 %67, %conv.i298
  br i1 %cmp22.not.i, label %if.end.i299.if.end26.i_crit_edge, label %if.then24.i

if.end.i299.if.end26.i_crit_edge:                 ; preds = %if.end.i299
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end.i299
  call void @__sanitizer_cov_trace_pc() #13
  %sta_id25.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %73, i32 5
  %76 = ptrtoint ptr %sta_id25.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %sta_id25.i, align 1
  %phi.cast.i = zext i8 %77 to i16
  %phi.bo.i = shl i16 %phi.cast.i, 12
  %phi.bo50.i = or i16 %phi.bo.i, 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end.i299.if.end26.i_crit_edge
  %sta_id.0.i = phi i16 [ %phi.bo50.i, %if.then24.i ], [ 1, %if.end.i299.if.end26.i_crit_edge ]
  %78 = tail call i16 @llvm.bswap.i16(i16 %sta_id.0.i) #11
  %arrayidx29.i = getelementptr %struct.iwlagn_scd_bc_tbl, ptr %65, i32 %67
  %arrayidx30.i = getelementptr [320 x i16], ptr %arrayidx29.i, i32 0, i32 %69
  %79 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %69)
  %cmp31.i = icmp slt i32 %69, 64
  br i1 %cmp31.i, label %if.then33.i, label %if.end26.i.if.end167_crit_edge

if.end26.i.if.end167_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then33.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add nsw i32 %69, 256
  %arrayidx36.i = getelementptr [320 x i16], ptr %arrayidx29.i, i32 0, i32 %add.i
  %80 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %78, ptr %arrayidx36.i, align 1
  br label %if.end167

if.end167:                                        ; preds = %if.then33.i, %if.end26.i.if.end167_crit_edge, %iwl_txq_free_tso_page.exit.if.end167_crit_edge
  tail call void @iwl_txq_free_tfd(ptr noundef %trans, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end167, %if.then123, %land.rhs.cleanup_crit_edge
  %81 = ptrtoint ptr %read_ptr2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %read_ptr2, align 4
  %inc.i = add i32 %82, 1
  %83 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %trans_cfg.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %max_tfd_queue_size.i301 = getelementptr inbounds %struct.iwl_base_params, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %max_tfd_queue_size.i301 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_tfd_queue_size.i301, align 4
  %sub.i302 = add i32 %88, -1
  %and.i303 = and i32 %sub.i302, %inc.i
  store i32 %and.i303, ptr %read_ptr2, align 4
  %89 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %n_window.i, align 4
  %sub.i305 = add i32 %90, 65535
  %and.i306 = and i32 %sub.i305, %and.i303
  %conv.i307 = trunc i32 %and.i306 to i16
  %cmp101.not = icmp eq i16 %conv.i307, %conv.i
  br i1 %cmp101.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %91 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i308 = icmp eq i32 %91, 0
  br i1 %tobool.not.i308, label %for.end.if.end.i311_crit_edge, label %land.rhs.i

for.end.if.end.i311_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i311

land.rhs.i:                                       ; preds = %for.end
  %dep_map.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i309 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i309, label %do.end.i310, label %land.rhs.i.if.end.i311_crit_edge, !prof !171

land.rhs.i.if.end.i311_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i311

do.end.i310:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1499, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i311

if.end.i311:                                      ; preds = %do.end.i310, %land.rhs.i.if.end.i311_crit_edge, %for.end.if.end.i311_crit_edge
  %wd_timeout.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 12
  %92 = ptrtoint ptr %wd_timeout.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %wd_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool24.not.i = icmp eq i32 %93, 0
  br i1 %tobool24.not.i, label %if.end.i311.iwl_txq_progress.exit_crit_edge, label %if.end26.i312

if.end.i311.iwl_txq_progress.exit_crit_edge:      ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_progress.exit

if.end26.i312:                                    ; preds = %if.end.i311
  %frozen.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 9
  %94 = ptrtoint ptr %frozen.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %frozen.i, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool27.not.i = icmp eq i8 %95, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end26.i312.iwl_txq_progress.exit_crit_edge

if.end26.i312.iwl_txq_progress.exit_crit_edge:    ; preds = %if.end26.i312
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_txq_progress.exit

if.end29.i:                                       ; preds = %if.end26.i312
  %96 = ptrtoint ptr %read_ptr2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %read_ptr2, align 4
  %98 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %write_ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp30.i = icmp eq i32 %97, %99
  %stuck_timer.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 6
  br i1 %cmp30.i, label %if.then31.i, label %if.else.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %call32.i = tail call i32 @del_timer(ptr noundef %stuck_timer.i) #11
  br label %iwl_txq_progress.exit

if.else.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %add.i315 = add i32 %100, %93
  %call35.i = tail call i32 @mod_timer(ptr noundef %stuck_timer.i, i32 noundef %add.i315) #11
  br label %iwl_txq_progress.exit

iwl_txq_progress.exit:                            ; preds = %if.else.i, %if.then31.i, %if.end26.i312.iwl_txq_progress.exit_crit_edge, %if.end.i311.iwl_txq_progress.exit_crit_edge
  %101 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %n_window.i, align 4
  %103 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %trans_cfg.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %max_tfd_queue_size.i318 = getelementptr inbounds %struct.iwl_base_params, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %max_tfd_queue_size.i318 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_tfd_queue_size.i318, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %108)
  %cmp.i319 = icmp ult i32 %102, %108
  %sub.i320 = add i32 %108, -1
  %max.0.i = select i1 %cmp.i319, i32 %102, i32 %sub.i320
  %109 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %write_ptr.i, align 4
  %111 = ptrtoint ptr %read_ptr2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %read_ptr2, align 4
  %sub5.i = sub i32 %110, %112
  %and.i323 = and i32 %sub5.i, %sub.i320
  call void @__sanitizer_cov_trace_cmp4(i32 %max.0.i, i32 %and.i323)
  %cmp10.i324 = icmp ult i32 %max.0.i, %and.i323
  br i1 %cmp10.i324, label %do.end.i325, label %if.end33.i, !prof !171

do.end.i325:                                      ; preds = %iwl_txq_progress.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef null) #11
  br label %iwl_txq_space.exit

if.end33.i:                                       ; preds = %iwl_txq_progress.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub34.i = sub i32 %max.0.i, %and.i323
  br label %iwl_txq_space.exit

iwl_txq_space.exit:                               ; preds = %if.end33.i, %do.end.i325
  %retval.0.i = phi i32 [ 0, %do.end.i325 ], [ %sub34.i, %if.end33.i ]
  %low_mark = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 20
  %113 = ptrtoint ptr %low_mark to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %low_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %114)
  %cmp175 = icmp sgt i32 %retval.0.i, %114
  br i1 %cmp175, label %land.lhs.true, label %iwl_txq_space.exit.out_crit_edge

iwl_txq_space.exit.out_crit_edge:                 ; preds = %iwl_txq_space.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true:                                    ; preds = %iwl_txq_space.exit
  %queue_stopped = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 1
  %arrayidx.i282 = getelementptr i32, ptr %queue_stopped, i32 %div3.i
  %115 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %arrayidx.i282, align 4
  %117 = and i32 %116, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool180.not = icmp eq i32 %117, 0
  br i1 %tobool180.not, label %land.lhs.true.out_crit_edge, label %if.then181

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then181:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %overflow_skbs) #11
  %118 = getelementptr inbounds i8, ptr %overflow_skbs, i32 12
  %119 = call ptr @memset(ptr %118, i32 255, i32 44)
  %120 = ptrtoint ptr %overflow_skbs to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %overflow_skbs, ptr %overflow_skbs, align 4
  %prev.i = getelementptr inbounds %struct.anon.96, ptr %overflow_skbs, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %overflow_skbs, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %overflow_skbs, i32 0, i32 1
  %122 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %qlen.i, align 4
  %overflow_q = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13
  %123 = ptrtoint ptr %overflow_q to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %overflow_q, align 4
  %cmp.i.not.i = icmp eq ptr %124, %overflow_q
  br i1 %cmp.i.not.i, label %if.then181.skb_queue_splice_init.exit_crit_edge, label %if.then.i

if.then181.skb_queue_splice_init.exit_crit_edge:  ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_queue_splice_init.exit

if.then.i:                                        ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #13
  %prev2.i.i = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 1
  %125 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon, ptr %124, i32 0, i32 1
  %127 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %overflow_skbs, ptr %prev5.i.i, align 4
  %128 = ptrtoint ptr %overflow_skbs to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %124, ptr %overflow_skbs, align 8
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %overflow_skbs, ptr %126, align 8
  %130 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %126, ptr %prev.i, align 4
  %qlen.i326 = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 13, i32 1
  %131 = ptrtoint ptr %qlen.i326 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %qlen.i326, align 4
  %133 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %qlen.i, align 4
  %add.i327 = add i32 %134, %132
  store i32 %add.i327, ptr %qlen.i, align 4
  %135 = ptrtoint ptr %overflow_q to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %overflow_q, ptr %overflow_q, align 4
  store ptr %overflow_q, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i326, align 4
  br label %skb_queue_splice_init.exit

skb_queue_splice_init.exit:                       ; preds = %if.then.i, %if.then181.skb_queue_splice_init.exit_crit_edge
  %overflow_tx = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 22
  %136 = ptrtoint ptr %overflow_tx to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %overflow_tx, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %137 = ptrtoint ptr %overflow_skbs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %overflow_skbs, align 4
  %cmp.i329358 = icmp eq ptr %138, %overflow_skbs
  br i1 %cmp.i329358, label %skb_queue_splice_init.exit.while.end_crit_edge, label %while.body.lr.ph

skb_queue_splice_init.exit.while.end_crit_edge:   ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %skb_queue_splice_init.exit
  %dev_cmd_offs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 7
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 6
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %iwl_trans_tx.exit.while.body_crit_edge, %while.body.lr.ph
  %139 = phi ptr [ %138, %while.body.lr.ph ], [ %166, %iwl_trans_tx.exit.while.body_crit_edge ]
  %tobool.not.i331 = icmp eq ptr %139, null
  br i1 %tobool.not.i331, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i333

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_dequeue.exit

if.then.i333:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %qlen.i, align 4
  %sub.i.i332 = add i32 %141, -1
  store volatile i32 %sub.i.i332, ptr %qlen.i, align 4
  %142 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %139, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %139, i32 0, i32 1
  %144 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %139, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %143, i32 0, i32 1
  %146 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %145, ptr %prev17.i.i, align 4
  %147 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %143, ptr %145, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i333, %while.body.__skb_dequeue.exit_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %139, i32 0, i32 3
  %148 = ptrtoint ptr %dev_cmd_offs to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %dev_cmd_offs, align 2
  %conv191 = zext i8 %149 to i32
  %add.ptr = getelementptr i8, ptr %cb, i32 %conv191
  %150 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr, align 4
  %152 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %status.i, align 4
  %154 = and i32 %153, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i335 = icmp eq i32 %154, 0
  br i1 %tobool.not.i335, label %if.end.i337, label %__skb_dequeue.exit.iwl_trans_tx.exit_crit_edge, !prof !172

__skb_dequeue.exit.iwl_trans_tx.exit_crit_edge:   ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_trans_tx.exit

if.end.i337:                                      ; preds = %__skb_dequeue.exit
  %155 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %156)
  %cmp.not.i336 = icmp eq i32 %156, 2
  br i1 %cmp.not.i336, label %if.end56.i, label %land.rhs.i338

land.rhs.i338:                                    ; preds = %if.end.i337
  %.b1.i = load i1, ptr @iwl_trans_tx.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i338.do.end52.i_crit_edge, label %if.then17.i, !prof !172

land.rhs.i338.do.end52.i_crit_edge:               ; preds = %land.rhs.i338
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52.i

if.then17.i:                                      ; preds = %land.rhs.i338
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_trans_tx.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 1150, i32 noundef 9, ptr noundef null) #11
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then17.i, %land.rhs.i338.do.end52.i_crit_edge
  %157 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev48, align 8
  %159 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %state.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %158, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.iwl_trans_tx, i32 noundef %160) #11
  br label %iwl_trans_tx.exit

if.end56.i:                                       ; preds = %if.end.i337
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ops.i, align 4
  %tx.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %162, i32 0, i32 8
  %163 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tx.i, align 4
  %call57.i = call i32 %164(ptr noundef %trans, ptr noundef %139, ptr noundef %151, i32 noundef %txq_id) #11
  br label %iwl_trans_tx.exit

iwl_trans_tx.exit:                                ; preds = %if.end56.i, %do.end52.i, %__skb_dequeue.exit.iwl_trans_tx.exit_crit_edge
  %165 = ptrtoint ptr %overflow_skbs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %overflow_skbs, align 4
  %cmp.i329 = icmp eq ptr %166, %overflow_skbs
  br i1 %cmp.i329, label %iwl_trans_tx.exit.while.end_crit_edge, label %iwl_trans_tx.exit.while.body_crit_edge

iwl_trans_tx.exit.while.body_crit_edge:           ; preds = %iwl_trans_tx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

iwl_trans_tx.exit.while.end_crit_edge:            ; preds = %iwl_trans_tx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %iwl_trans_tx.exit.while.end_crit_edge, %skb_queue_splice_init.exit.while.end_crit_edge
  %167 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %n_window.i, align 4
  %169 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %trans_cfg.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %max_tfd_queue_size.i341 = getelementptr inbounds %struct.iwl_base_params, ptr %172, i32 0, i32 5
  %173 = ptrtoint ptr %max_tfd_queue_size.i341 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %max_tfd_queue_size.i341, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %174)
  %cmp.i342 = icmp ult i32 %168, %174
  %sub.i343 = add i32 %174, -1
  %max.0.i344 = select i1 %cmp.i342, i32 %168, i32 %sub.i343
  %175 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %write_ptr.i, align 4
  %177 = ptrtoint ptr %read_ptr2 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %read_ptr2, align 4
  %sub5.i347 = sub i32 %176, %178
  %and.i348 = and i32 %sub5.i347, %sub.i343
  call void @__sanitizer_cov_trace_cmp4(i32 %max.0.i344, i32 %and.i348)
  %cmp10.i349 = icmp ult i32 %max.0.i344, %and.i348
  br i1 %cmp10.i349, label %do.end.i350, label %if.end33.i352, !prof !171

do.end.i350:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef null) #11
  br label %iwl_txq_space.exit354

if.end33.i352:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub34.i351 = sub i32 %max.0.i344, %and.i348
  br label %iwl_txq_space.exit354

iwl_txq_space.exit354:                            ; preds = %if.end33.i352, %do.end.i350
  %retval.0.i353 = phi i32 [ 0, %do.end.i350 ], [ %sub34.i351, %if.end33.i352 ]
  %179 = ptrtoint ptr %low_mark to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %low_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i353, i32 %180)
  %cmp195 = icmp sgt i32 %retval.0.i353, %180
  br i1 %cmp195, label %if.then197, label %iwl_txq_space.exit354.if.end198_crit_edge

iwl_txq_space.exit354.if.end198_crit_edge:        ; preds = %iwl_txq_space.exit354
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.then197:                                       ; preds = %iwl_txq_space.exit354
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @iwl_wake_queue(ptr noundef %trans, ptr noundef %1)
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %iwl_txq_space.exit354.if.end198_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %181 = ptrtoint ptr %overflow_tx to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %overflow_tx, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %overflow_skbs) #11
  br label %out

out:                                              ; preds = %if.end198, %land.lhs.true.out_crit_edge, %iwl_txq_space.exit.out_crit_edge, %do.end84, %if.end.i, %lor.lhs.false2.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %do.end58.out_crit_edge, %if.end39.out_crit_edge, %do.end36
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %cleanup203

cleanup203:                                       ; preds = %out, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_txq_set_q_ptrs(ptr nocapture noundef readonly %trans, i32 noundef %txq_id, i32 noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %write_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %ptr, ptr %write_ptr, align 4
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %read_ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ptr, ptr %read_ptr, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_txq_freeze_timer(ptr nocapture noundef readonly %trans, i32 noundef %txqs, i1 noundef zeroext %freeze) local_unnamed_addr #0 align 64 {
entry:
  %txqs.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %txqs.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %txqs, ptr %txqs.addr, align 4
  %frombool = zext i1 %freeze to i8
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %txqs.addr, i32 noundef 32, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp59 = icmp slt i32 %call, 32
  br i1 %cmp59, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %cond = select i1 %freeze, ptr @.str.26, ptr @.str.27
  br label %for.body

for.body:                                         ; preds = %next_queue.for.body_crit_edge, %for.body.lr.ph
  %queue.060 = phi i32 [ %call, %for.body.lr.ph ], [ %call38, %next_queue.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %queue.060
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %2, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %frozen = getelementptr inbounds %struct.iwl_txq, ptr %2, i32 0, i32 9
  %4 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %frozen, align 1, !range !176
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %frombool)
  %cmp5 = icmp eq i8 %5, %frombool
  br i1 %cmp5, label %for.body.next_queue_crit_edge, label %do.end

for.body.next_queue_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_queue

do.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_txq_freeze_timer, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond, i32 noundef %queue.060) #11
  %8 = ptrtoint ptr %frozen to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %frozen, align 1
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %2, i32 0, i32 16
  %9 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %read_ptr, align 4
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %2, i32 0, i32 15
  %11 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %write_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp15 = icmp eq i32 %10, %12
  br i1 %cmp15, label %do.end.next_queue_crit_edge, label %if.end18

do.end.next_queue_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_queue

if.end18:                                         ; preds = %do.end
  br i1 %freeze, label %if.then20, label %if.end32

if.then20:                                        ; preds = %if.end18
  %expires = getelementptr inbounds %struct.iwl_txq, ptr %2, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %expires, align 4
  %sub = sub i32 %14, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp21 = icmp slt i32 %sub, 0
  br i1 %cmp21, label %if.then20.next_queue_crit_edge, label %if.end26, !prof !171

if.then20.next_queue_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_queue

if.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %stuck_timer = getelementptr inbounds %struct.iwl_txq, ptr %2, i32 0, i32 6
  %frozen_expiry_remainder = getelementptr inbounds %struct.iwl_txq, ptr %2, i32 0, i32 5
  %15 = ptrtoint ptr %frozen_expiry_remainder to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %frozen_expiry_remainder, align 4
  %call31 = call i32 @del_timer(ptr noundef %stuck_timer) #11
  br label %next_queue

if.end32:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %stuck_timer33 = getelementptr inbounds %struct.iwl_txq, ptr %2, i32 0, i32 6
  %frozen_expiry_remainder34 = getelementptr inbounds %struct.iwl_txq, ptr %2, i32 0, i32 5
  %16 = ptrtoint ptr %frozen_expiry_remainder34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frozen_expiry_remainder34, align 4
  %add = add i32 %17, %3
  %call35 = call i32 @mod_timer(ptr noundef %stuck_timer33, i32 noundef %add) #11
  br label %next_queue

next_queue:                                       ; preds = %if.end32, %if.end26, %if.then20.next_queue_crit_edge, %do.end.next_queue_crit_edge, %for.body.next_queue_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %add37 = add nsw i32 %queue.060, 1
  %call38 = call i32 @_find_next_bit_be(ptr noundef nonnull %txqs.addr, i32 noundef 32, i32 noundef %add37) #11
  %cmp = icmp slt i32 %call38, 32
  br i1 %cmp, label %next_queue.for.body_crit_edge, label %next_queue.for.end_crit_edge

next_queue.for.end_crit_edge:                     ; preds = %next_queue
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

next_queue.for.body_crit_edge:                    ; preds = %next_queue
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %next_queue.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_trans_txq_send_hcmd(ptr noundef %trans, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end8_crit_edge, label %do.end

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 131072, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_txq_send_hcmd, ptr noundef nonnull @.str.28, i32 noundef %11) #11
  br label %return

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %system_pm_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 34
  %12 = ptrtoint ptr %system_pm_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %system_pm_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  %and10 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = select i1 %cmp, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %do.end18, label %if.end22, !prof !180

do.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %14 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev19, align 8
  %id20 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %16 = ptrtoint ptr %id20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id20, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 1024, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_txq_send_hcmd, ptr noundef nonnull @.str.29, i32 noundef %17) #11
  br label %return

if.end22:                                         ; preds = %if.end8
  %and24 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end73, label %if.then26

if.then26:                                        ; preds = %if.end22
  %and28 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end59, label %do.end44, !prof !172

do.end44:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1823, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end59:                                         ; preds = %if.then26
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %send_cmd = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %send_cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %send_cmd, align 4
  %call60 = tail call i32 %21(ptr noundef %trans, ptr noundef %cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end66, label %if.end59.return_crit_edge

if.end59.return_crit_edge:                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %dev67 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %22 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev67, align 8
  %id68 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %24 = ptrtoint ptr %id68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id68, align 4
  %call69 = tail call ptr @iwl_get_cmd_string(ptr noundef %trans, i32 noundef %25) #11
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef %call69, i32 noundef %call60) #11
  br label %return

if.end73:                                         ; preds = %if.end22
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 4
  %call.i = tail call ptr @iwl_get_cmd_string(ptr noundef %trans, i32 noundef %27) #11
  %q_id.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %28 = ptrtoint ptr %q_id.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %q_id.i, align 1
  %idxprom.i = zext i8 %29 to i32
  %arrayidx.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %idxprom.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %33, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_txq_send_hcmd_sync, ptr noundef nonnull @.str.57, ptr noundef %call.i) #11
  %call7.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %status) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %do.end36.i, label %do.end18.i, !prof !172

do.end18.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1721, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef %call.i) #11
  br label %return

do.end36.i:                                       ; preds = %if.end73
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %35, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_txq_send_hcmd_sync, ptr noundef nonnull @.str.59, ptr noundef %call.i) #11
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %send_cmd.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %send_cmd.i, align 4
  %call40.i = tail call i32 %39(ptr noundef %trans, ptr noundef %cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp.i = icmp slt i32 %call40.i, 0
  br i1 %cmp.i, label %if.then41.i, label %if.end50.i

if.then41.i:                                      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #11
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %41, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef %call.i, i32 noundef %call40.i) #11
  br label %return

if.end50.i:                                       ; preds = %do.end36.i
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1738) #11
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %status, align 4
  %and1.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool59.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool59.not.i, label %if.end50.i.if.end128.i_crit_edge, label %if.then72.i

if.end50.i.if.end128.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128.i

if.then72.i:                                      ; preds = %if.end50.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %44 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %wait_command_queue.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 24
  %call74256.i = call i32 @prepare_to_wait_event(ptr noundef %wait_command_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %45 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %status, align 4
  %and1.i246257.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i246257.i)
  %tobool78.not258.i = icmp eq i32 %and1.i246257.i, 0
  br i1 %tobool78.not258.i, label %if.end101.thread.i, label %if.then72.i.cleanup.i_crit_edge

if.then72.i.cleanup.i_crit_edge:                  ; preds = %if.then72.i
  br label %cleanup.i

if.end101.thread.i:                               ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %wait_command_queue.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %if.end128.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then72.i.cleanup.i_crit_edge
  %__ret73.1259.i = phi i32 [ %__ret73.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 200, %if.then72.i.cleanup.i_crit_edge ]
  %call98.i = call i32 @schedule_timeout(i32 noundef %__ret73.1259.i) #11
  %call74.i = call i32 @prepare_to_wait_event(ptr noundef %wait_command_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %47 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %status, align 4
  %and1.i246.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i246.i)
  %tobool78.not.i = icmp eq i32 %and1.i246.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool84.not.i = icmp eq i32 %call98.i, 0
  %49 = select i1 %tobool78.not.i, i1 %tobool84.not.i, i1 false
  %__ret73.1.i = select i1 %49, i32 1, i32 %call98.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret73.1.i)
  %tobool90.not.i = icmp eq i32 %__ret73.1.i, 0
  %50 = select i1 %tobool78.not.i, i1 true, i1 %tobool90.not.i
  br i1 %50, label %if.end101.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end101.i:                                      ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %wait_command_queue.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br i1 %tobool90.not.i, label %do.end108.i, label %if.end101.i.if.end128.i_crit_edge

if.end101.i.if.end128.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128.i

do.end108.i:                                      ; preds = %if.end101.i
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 8
  %call110.i = call i32 @jiffies_to_msecs(i32 noundef 200) #11
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef %call.i, i32 noundef %call110.i) #11
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 8
  %read_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %31, i32 0, i32 16
  %55 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %read_ptr.i, align 4
  %write_ptr.i = getelementptr inbounds %struct.iwl_txq, ptr %31, i32 0, i32 15
  %57 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %write_ptr.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %54, i32 noundef 0, ptr noundef nonnull @.str.61, i32 noundef %56, i32 noundef %58) #11
  call void @_clear_bit(i32 noundef 0, ptr noundef %status) #11
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %60, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_txq_send_hcmd_sync, ptr noundef nonnull @.str.62, ptr noundef %call.i) #11
  %61 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i, align 4
  %sync_nmi.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %62, i32 0, i32 37
  %63 = ptrtoint ptr %sync_nmi.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sync_nmi.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i, label %do.end108.i.cancel.i_crit_edge, label %if.then.i.i

do.end108.i.cancel.i_crit_edge:                   ; preds = %do.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cancel.i

if.then.i.i:                                      ; preds = %do.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %64(ptr noundef %trans) #11
  br label %cancel.i

if.end128.i:                                      ; preds = %if.end101.i.if.end128.i_crit_edge, %if.end101.thread.i, %if.end50.i.if.end128.i_crit_edge
  %65 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %status, align 4
  %67 = and i32 %66, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool131.not.i = icmp eq i32 %67, 0
  br i1 %tobool131.not.i, label %if.end145.i, label %if.then132.i

if.then132.i:                                     ; preds = %if.end128.i
  %call134.i = call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %status) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %tobool135.not.i = icmp eq i32 %call134.i, 0
  br i1 %tobool135.not.i, label %do.end140.i, label %if.then132.i.cancel.i_crit_edge

if.then132.i.cancel.i_crit_edge:                  ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cancel.i

do.end140.i:                                      ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %69, i32 noundef 0, ptr noundef nonnull @.str.63, ptr noundef %call.i) #11
  call void @dump_stack() #17
  br label %cancel.i

if.end145.i:                                      ; preds = %if.end128.i
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 4
  %and.i = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool146.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool146.not.i, label %land.lhs.true147.i, label %if.end145.i.if.end159.i_crit_edge

if.end145.i.if.end159.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

land.lhs.true147.i:                               ; preds = %if.end145.i
  %72 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %status, align 4
  %74 = and i32 %73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool150.not.i = icmp eq i32 %74, 0
  br i1 %tobool150.not.i, label %land.lhs.true147.i.if.end159.i_crit_edge, label %do.end155.i

land.lhs.true147.i.if.end159.i_crit_edge:         ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.i

do.end155.i:                                      ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %76, i32 noundef 131072, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_txq_send_hcmd_sync, ptr noundef nonnull @.str.64) #11
  br label %cancel.i

if.end159.i:                                      ; preds = %land.lhs.true147.i.if.end159.i_crit_edge, %if.end145.i.if.end159.i_crit_edge
  %and161.i = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i)
  %tobool162.not.i = icmp eq i32 %and161.i, 0
  br i1 %tobool162.not.i, label %if.end159.i.return_crit_edge, label %land.lhs.true163.i

if.end159.i.return_crit_edge:                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true163.i:                               ; preds = %if.end159.i
  %resp_pkt.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %77 = ptrtoint ptr %resp_pkt.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %resp_pkt.i, align 4
  %tobool164.not.i = icmp eq ptr %78, null
  br i1 %tobool164.not.i, label %do.end169.i, label %land.lhs.true163.i.return_crit_edge

land.lhs.true163.i.return_crit_edge:              ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end169.i:                                      ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %80, i32 noundef 0, ptr noundef nonnull @.str.65, ptr noundef %call.i) #11
  br label %cancel.i

cancel.i:                                         ; preds = %do.end169.i, %do.end155.i, %do.end140.i, %if.then132.i.cancel.i_crit_edge, %if.then.i.i, %do.end108.i.cancel.i_crit_edge
  %ret.0.i = phi i32 [ -5, %do.end169.i ], [ -132, %do.end155.i ], [ -5, %do.end140.i ], [ -5, %if.then132.i.cancel.i_crit_edge ], [ -110, %do.end108.i.cancel.i_crit_edge ], [ -110, %if.then.i.i ]
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags, align 4
  %and175.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i)
  %tobool176.not.i = icmp eq i32 %and175.i, 0
  br i1 %tobool176.not.i, label %cancel.i.if.end181.i_crit_edge, label %if.then177.i

cancel.i.if.end181.i_crit_edge:                   ; preds = %cancel.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181.i

if.then177.i:                                     ; preds = %cancel.i
  call void @__sanitizer_cov_trace_pc() #13
  %entries.i = getelementptr inbounds %struct.iwl_txq, ptr %31, i32 0, i32 3
  %83 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %entries.i, align 4
  %flags179.i = getelementptr %struct.iwl_pcie_txq_entry, ptr %84, i32 %call40.i, i32 3, i32 1
  %85 = ptrtoint ptr %flags179.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags179.i, align 4
  %and180.i = and i32 %86, -3
  store i32 %and180.i, ptr %flags179.i, align 4
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.then177.i, %cancel.i.if.end181.i_crit_edge
  %resp_pkt182.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %87 = ptrtoint ptr %resp_pkt182.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %resp_pkt182.i, align 4
  %tobool183.not.i = icmp eq ptr %88, null
  br i1 %tobool183.not.i, label %if.end181.i.return_crit_edge, label %if.then184.i

if.end181.i.return_crit_edge:                     ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then184.i:                                     ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #13
  %_rx_page_addr.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 2
  %89 = ptrtoint ptr %_rx_page_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %_rx_page_addr.i.i, align 4
  %_rx_page_order.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 3
  %91 = ptrtoint ptr %_rx_page_order.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %_rx_page_order.i.i, align 4
  call void @free_pages(i32 noundef %90, i32 noundef %92) #11
  %93 = ptrtoint ptr %resp_pkt182.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %resp_pkt182.i, align 4
  br label %return

return:                                           ; preds = %if.then184.i, %if.end181.i.return_crit_edge, %land.lhs.true163.i.return_crit_edge, %if.end159.i.return_crit_edge, %if.then41.i, %do.end18.i, %do.end66, %if.end59.return_crit_edge, %do.end44, %do.end18, %do.end, %entry.return_crit_edge
  %retval.1 = phi i32 [ -112, %do.end18 ], [ -132, %do.end ], [ -19, %entry.return_crit_edge ], [ -22, %do.end44 ], [ %call60, %do.end66 ], [ 0, %if.end59.return_crit_edge ], [ -5, %do.end18.i ], [ %call40.i, %if.then41.i ], [ 0, %land.lhs.true163.i.return_crit_edge ], [ 0, %if.end159.i.return_crit_edge ], [ %ret.0.i, %if.then184.i ], [ %ret.0.i, %if.end181.i.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_cmd_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ptr) #11
  br i1 %call, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1, label %land.rhs.return_crit_edge, label %if.then, !prof !172

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16 = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %call16, ptr noundef %retval.0.i) #11
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %ptr to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %shr
  %and = and i32 %5, 4095
  %call41 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %size, i32 noundef 1, i32 noundef 0) #11
  br label %return

return:                                           ; preds = %if.end39, %dev_name.exit, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -1, %dev_name.exit ], [ -1, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_tx(ptr noundef %dev, ptr noundef %skb, ptr noundef %tfd, ptr noundef %buf0, i32 noundef %buf0_len, i32 noundef %hdr_len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_tx, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !175

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !172

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !161) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !181
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_tx(ptr noundef null, ptr noundef %dev, ptr noundef %skb, ptr noundef %tfd, i32 noundef 256, ptr noundef %buf0, i32 noundef %buf0_len, i32 noundef %hdr_len) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !182
  %13 = tail call i32 @llvm.read_register.i32(metadata !161) #11
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !161) #11
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !172

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !161) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_iwlwifi_dev_tx.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_iwlwifi_dev_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 113, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !161) #11
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_tx_tb(ptr noundef %dev, ptr noundef %skb, ptr noundef %data_src, i32 noundef %phys, i32 noundef %data_len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx_tb, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_tx_tb, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !175

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !172

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !161) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !185
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_tx_tb(ptr noundef null, ptr noundef %dev, ptr noundef %skb, ptr noundef %data_src, i32 noundef %phys, i32 noundef %data_len) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !186
  %13 = tail call i32 @llvm.read_register.i32(metadata !161) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !161) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !172

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !161) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx_tb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_tx_tb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_tx_tb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_iwlwifi_dev_tx_tb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 35, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !184
  %31 = tail call i32 @llvm.read_register.i32(metadata !161) #11
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
define internal fastcc i32 @iwl_txq_gen2_set_tb_with_wa(ptr nocapture noundef readonly %trans, ptr noundef %skb, ptr nocapture noundef %tfd, i32 noundef %phys, ptr noundef %virt, i16 noundef zeroext %len, ptr noundef %meta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef %phys) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %phys)
  %cmp.i.not = icmp eq i32 %phys, -1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end, !prof !171

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %phys to i64
  %conv2.i = zext i16 %len to i64
  %add.i = add nuw nsw i64 %conv2.i, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i)
  %cmp.i138 = icmp ugt i64 %add.i, 4294967295
  br i1 %cmp.i138, label %if.end20, label %if.then12, !prof !171

if.then12:                                        ; preds = %if.end
  %call13 = tail call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %tfd, i32 noundef %phys, i16 noundef zeroext %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then12.unmap_crit_edge, label %if.end16

if.then12.unmap_crit_edge:                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap

if.end16:                                         ; preds = %if.then12
  %tobool17.not = icmp eq ptr %meta, null
  br i1 %tobool17.not, label %if.end16.trace_crit_edge, label %if.then18

if.end16.trace_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw i32 1, %call13
  %tbs = getelementptr inbounds %struct.iwl_cmd_meta, ptr %meta, i32 0, i32 2
  %2 = ptrtoint ptr %tbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tbs, align 4
  %or = or i32 %3, %shl
  store i32 %or, ptr %tbs, align 4
  br label %trace

if.end20:                                         ; preds = %if.end
  %conv21 = zext i16 %len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4092, i16 %len)
  %cmp22 = icmp ugt i16 %len, 4092
  br i1 %cmp22, label %do.end, label %if.end51, !prof !171

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #11
  br label %unmap

if.end51:                                         ; preds = %if.end20
  %call52 = tail call fastcc ptr @get_workaround_page(ptr noundef %trans, ptr noundef %skb)
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end51.unmap_crit_edge, label %if.end55

if.end51.unmap_crit_edge:                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap

if.end55:                                         ; preds = %if.end51
  %call56 = tail call ptr @page_address(ptr noundef nonnull %call52) #11
  %4 = call ptr @memcpy(ptr %call56, ptr %virt, i32 %conv21)
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %call59 = tail call ptr @page_address(ptr noundef nonnull %call52) #11
  %call61 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %6, ptr noundef %call59, i32 noundef %conv21)
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %8, i32 noundef %call61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call61)
  %cmp.i139.not = icmp eq i32 %call61, -1
  br i1 %cmp.i139.not, label %if.end55.cleanup_crit_edge, label %if.end72, !prof !171

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end72:                                         ; preds = %if.end55
  %call73 = tail call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %tfd, i32 noundef %call61, i16 noundef zeroext %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end72.if.else_crit_edge, label %do.end81

if.end72.if.else_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.end81:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %conv85 = zext i32 %call61 to i64
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %10, ptr noundef nonnull @.str.42, i32 noundef %conv21, i64 noundef %conv, i64 noundef %conv85) #11
  br label %unmap

unmap:                                            ; preds = %do.end81, %if.end51.unmap_crit_edge, %do.end, %if.then12.unmap_crit_edge
  %phys.addr.0 = phi i32 [ %phys, %if.then12.unmap_crit_edge ], [ %phys, %do.end ], [ %call61, %do.end81 ], [ %phys, %if.end51.unmap_crit_edge ]
  %ret.0 = phi i32 [ %call13, %if.then12.unmap_crit_edge ], [ -105, %do.end ], [ 0, %do.end81 ], [ -12, %if.end51.unmap_crit_edge ]
  %tobool88.not = icmp eq ptr %meta, null
  br i1 %tobool88.not, label %unmap.if.else_crit_edge, label %if.then89

unmap.if.else_crit_edge:                          ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i16 %len to i32
  br label %if.else

if.then89:                                        ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %conv91 = zext i16 %len to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %phys, i32 noundef %conv91, i32 noundef 1, i32 noundef 0) #11
  br label %trace

if.else:                                          ; preds = %unmap.if.else_crit_edge, %if.end72.if.else_crit_edge
  %conv93.pre-phi = phi i32 [ %.pre, %unmap.if.else_crit_edge ], [ %conv21, %if.end72.if.else_crit_edge ]
  %ret.0148 = phi i32 [ %ret.0, %unmap.if.else_crit_edge ], [ %call73, %if.end72.if.else_crit_edge ]
  %oldphys.0147 = phi i32 [ %phys, %unmap.if.else_crit_edge ], [ %call61, %if.end72.if.else_crit_edge ]
  %phys.addr.0146 = phi i32 [ %phys.addr.0, %unmap.if.else_crit_edge ], [ %call61, %if.end72.if.else_crit_edge ]
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %oldphys.0147, i32 noundef %conv93.pre-phi, i32 noundef 1, i32 noundef 0) #11
  br label %trace

trace:                                            ; preds = %if.else, %if.then89, %if.then18, %if.end16.trace_crit_edge
  %phys.addr.1 = phi i32 [ %phys.addr.0, %if.then89 ], [ %phys.addr.0146, %if.else ], [ %phys, %if.then18 ], [ %phys, %if.end16.trace_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %if.then89 ], [ %ret.0148, %if.else ], [ 0, %if.then18 ], [ 0, %if.end16.trace_crit_edge ]
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %conv96 = zext i16 %len to i32
  tail call fastcc void @trace_iwlwifi_dev_tx_tb(ptr noundef %16, ptr noundef %skb, ptr noundef %virt, i32 noundef %phys.addr.1, i32 noundef %conv96)
  br label %cleanup

cleanup:                                          ; preds = %trace, %if.end55.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %trace ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_tx_tb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_workaround_page(ptr nocapture noundef readonly %trans, ptr nocapture noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %page_offs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 6
  %0 = ptrtoint ptr %page_offs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %page_offs, align 1
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %conv = zext i8 %1 to i32
  %add.ptr = getelementptr i8, ptr %cb, i32 %conv
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call1 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #11
  %add.ptr3 = getelementptr i8, ptr %call1, i32 4092
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %add.ptr3, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call38.i.i.i, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call38.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_force_nmi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !24, !25, !27, !28, !30, !32, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !55, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !72, !74, !76, !77, !79, !81, !83, !84, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !100, !101, !102, !104, !106, !108, !109, !111, !112, !114, !116, !118, !120, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !138, !139, !141, !142, !144, !145, !147, !149, !151, !153, !155, !157, !159}
!llvm.named.register.sp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 68, i32 2}
!2 = !{ptr @__func__.iwl_txq_inc_wr_ptr, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 70, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 94, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 156, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 166, i32 3}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 713, i32 6}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 717, i32 6}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__func__.iwl_txq_gen2_unmap, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 807, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 814, i32 9}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 931, i32 6}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @iwl_txq_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 941, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @iwl_txq_init.iwl_txq_cmd_queue_lock_class, !29, !"iwl_txq_cmd_queue_lock_class", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 944, i32 32}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 946, i32 3}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 980, i32 3}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 990, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @iwl_txq_alloc.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1034, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1238, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__func__.iwl_txq_dyn_free, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1245, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1272, i32 4}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1278, i32 4}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1288, i32 3}
!53 = !{ptr @__func__.iwl_txq_reclaim, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1537, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1545, i32 2}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1553, i32 3}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1574, i32 7}
!62 = !{ptr @__func__.iwl_trans_txq_freeze_timer, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1671, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__func__.iwl_trans_txq_send_hcmd, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1808, i32 3}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1815, i32 3}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1828, i32 4}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h", i32 179, i32 6}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!81 = !{ptr @__func__.iwl_txq_stop, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.h", i32 65, i32 3}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.h", i32 67, i32 3}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h", i32 76, i32 1}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!94 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-data.h", i32 17, i32 1}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 263, i32 2}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 28, i32 6}
!106 = !{ptr @__func__.iwl_wake_queue, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.h", i32 33, i32 3}
!108 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-scd.h", i32 72, i32 2}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-scd.h", i32 64, i32 2}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-scd.h", i32 56, i32 2}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1109, i32 3}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1116, i32 3}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1121, i32 3}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1153, i32 3}
!124 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1159, i32 3}
!127 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1164, i32 6}
!130 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @__func__.iwl_txq_alloc_response, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1178, i32 2}
!133 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 868, i32 6}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 1150, i32 6}
!138 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 1151, i32 3}
!141 = !{ptr @__func__.iwl_trans_tx, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @__func__.iwl_trans_txq_send_hcmd_sync, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1717, i32 2}
!144 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1719, i32 6}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1724, i32 2}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1740, i32 3}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1743, i32 3}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1747, i32 3}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1758, i32 4}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1767, i32 3}
!159 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/queue/tx.c", i32 1773, i32 3}
!161 = !{!"sp"}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 2153378440, i64 2153378924, i64 2153378477, i64 2153378533, i64 2153378567, i64 2153378591, i64 2153378632, i64 2153378653, i64 2153378681, i64 2153378715}
!174 = !{i64 2148418641, i64 2148418667, i64 2148418696, i64 2148418730, i64 2148418761, i64 2148418784}
!175 = !{i64 2148900456, i64 2148900461, i64 2148900474, i64 2148900518, i64 2148900552, i64 2148900573}
!176 = !{i8 0, i8 2}
!177 = !{i32 0, i32 33}
!178 = !{!"branch_weights", i32 -102759400, i32 4193255}
!179 = !{!"auto-init"}
!180 = !{!"branch_weights", i32 1, i32 4001}
!181 = !{i64 2159573404}
!182 = !{i64 2159573687}
!183 = !{i64 2149723837}
!184 = !{i64 2149724873}
!185 = !{i64 2159467137}
!186 = !{i64 2159471463}
