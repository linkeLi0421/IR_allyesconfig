; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qtnf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.153, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.153 = type { ptr }
%struct.qtnf_bus = type { ptr, i32, i32, i32, ptr, [3 x ptr], %struct.qtnf_qlink_transport, %struct.qtnf_hw_info, %struct.napi_struct, [32 x i8], %struct.net_device, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.mutex, ptr, %struct.notifier_block, [6 x i8], [2 x i8], [0 x i8], [44 x i8] }
%struct.qtnf_qlink_transport = type { %struct.qtnf_cmd_ctl_node, %struct.sk_buff_head, i32 }
%struct.qtnf_cmd_ctl_node = type { %struct.completion, ptr, i16, i8, %struct.spinlock }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.qtnf_hw_info = type { i32, i8, i8, i32, i8, i8, [32 x i8], i32, [2 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.qtnf_shm_ipc_int = type { ptr, ptr }
%struct.qtnf_pcie_pearl_state = type { %struct.qtnf_pcie_bus_priv, %struct.spinlock, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.qtnf_pcie_bus_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, %struct.tasklet_struct, ptr, ptr, ptr, %struct.qtnf_shm_ipc, %struct.qtnf_shm_ipc, i16, i16, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.154, i32 }
%union.anon.154 = type { ptr }
%struct.qtnf_shm_ipc = type { ptr, i32, i32, i32, i32, i8, %struct.qtnf_shm_ipc_int, %struct.qtnf_shm_ipc_rx_callback, ptr, ptr, %struct.work_struct, %struct.completion }
%struct.qtnf_shm_ipc_rx_callback = type { ptr, ptr }
%struct.qtnf_pearl_bda = type { i16, i16, i32, i32, i32, i32, i32, i32, [32 x i8], i32, [2048 x i8], i32, i32, i32, i32, i32, [6 x i8], [1958 x i8], %struct.qtnf_shm_ipc_region, %struct.qtnf_shm_ipc_region }
%struct.qtnf_shm_ipc_region = type { %union.qtnf_shm_ipc_region_headroom, [4064 x i8] }
%union.qtnf_shm_ipc_region_headroom = type { [32 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.qtnf_pearl_rx_bd = type { i32, i32, i32, i32, i32, i32 }
%struct.qtnf_pearl_tx_bd = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.qtnf_frame_meta_info = type { i8, i8, i8, i8 }
%struct.qtnf_pearl_fw_hdr = type { [8 x i8], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/quantenna/qtnfmac/bus.h\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qtnfmac: invalid bus pointer\00", [35 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_bus_ops = internal global { %struct.qtnf_bus_ops, [32 x i8] } { %struct.qtnf_bus_ops { ptr null, ptr null, ptr @qtnf_pcie_control_tx, ptr @qtnf_pcie_data_tx, ptr @qtnf_pcie_data_tx_timeout, ptr @qtnf_pearl_tx_use_meta_info_set, ptr @qtnf_pcie_data_rx_start, ptr @qtnf_pcie_data_rx_stop }, [32 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ps->irq_lock\00", [18 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&bus->fw_work)\00", [63 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qtnfmac_pcie: %s: PCIE xfer init failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qtnf_pcie_pearl_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c\00", [39 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_probe._entry_ptr = internal global ptr @qtnf_pcie_pearl_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qtnf_pearl_irq\00", [17 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.7, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qtnfmac_pcie: %s: failed to request pcie irq %d\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_probe._entry_ptr.11 = internal global ptr @qtnf_pcie_pearl_probe._entry.9, section ".printk_index", align 4
@qtnf_pcie_skb_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013qtnfmac_pcie: %s: skb DMA mapping error: %pad\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qtnf_pcie_skb_send\00", [45 x i8] zeroinitializer }, align 32
@qtnf_pcie_skb_send._entry_ptr = internal global ptr @qtnf_pcie_skb_send._entry, section ".printk_index", align 4
@qtnf_pcie_skb_send._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@qtnf_pcie_skb_send._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.7, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013qtnfmac_pcie: %s: drop skb\0A\00", [34 x i8] zeroinitializer }, align 32
@qtnf_pcie_skb_send._entry_ptr.17 = internal global ptr @qtnf_pcie_skb_send._entry.15, section ".printk_index", align 4
@qtnf_tx_queue_ready._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.qtnf_tx_queue_ready = private unnamed_addr constant [20 x i8] c"qtnf_tx_queue_ready\00", align 1
@qtnf_tx_queue_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.qtnf_tx_queue_ready, ptr @.str.7, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014qtnfmac_pcie: %s: reclaim full Tx queue\0A\00", [53 x i8] zeroinitializer }, align 32
@qtnf_tx_queue_ready._entry_ptr = internal global ptr @qtnf_tx_queue_ready._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qtn/fmac_qsr10g.img\00", [44 x i8] zeroinitializer }, align 32
@qtnf_pearl_fw_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013qtnfmac_pcie: %s: failed to get firmware %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qtnf_pearl_fw_work_handler\00", [37 x i8] zeroinitializer }, align 32
@qtnf_pearl_fw_work_handler._entry_ptr = internal global ptr @qtnf_pearl_fw_work_handler._entry, section ".printk_index", align 4
@qtnf_pearl_fw_work_handler._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.7, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013qtnfmac_pcie: %s: card is not ready\0A\00", [57 x i8] zeroinitializer }, align 32
@qtnf_pearl_fw_work_handler._entry_ptr.28 = internal global ptr @qtnf_pearl_fw_work_handler._entry.26, section ".printk_index", align 4
@qtnf_pearl_fw_work_handler._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.7, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016qtnfmac_pcie: %s: booting firmware from flash\0A\00", [47 x i8] zeroinitializer }, align 32
@qtnf_pearl_fw_work_handler._entry_ptr.31 = internal global ptr @qtnf_pearl_fw_work_handler._entry.29, section ".printk_index", align 4
@qtnf_pearl_fw_work_handler._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.7, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016qtnfmac_pcie: %s: starting firmware upload: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@qtnf_pearl_fw_work_handler._entry_ptr.34 = internal global ptr @qtnf_pearl_fw_work_handler._entry.32, section ".printk_index", align 4
@qtnf_pearl_fw_work_handler._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.7, i32 1064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qtnfmac_pcie: %s: firmware upload error\0A\00", [53 x i8] zeroinitializer }, align 32
@qtnf_pearl_fw_work_handler._entry_ptr.37 = internal global ptr @qtnf_pearl_fw_work_handler._entry.35, section ".printk_index", align 4
@qtnf_pearl_fw_work_handler._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.7, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013qtnfmac_pcie: %s: firmware bringup timed out\0A\00", [48 x i8] zeroinitializer }, align 32
@qtnf_pearl_fw_work_handler._entry_ptr.40 = internal global ptr @qtnf_pearl_fw_work_handler._entry.38, section ".printk_index", align 4
@qtnf_pearl_fw_work_handler._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str.7, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qtnfmac_pcie: %s: firmware runtime failure\0A\00", [50 x i8] zeroinitializer }, align 32
@qtnf_pearl_fw_work_handler._entry_ptr.43 = internal global ptr @qtnf_pearl_fw_work_handler._entry.41, section ".printk_index", align 4
@qtnf_pearl_fw_work_handler._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.7, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016qtnfmac_pcie: %s: firmware is up and running\0A\00", [48 x i8] zeroinitializer }, align 32
@qtnf_pearl_fw_work_handler._entry_ptr.46 = internal global ptr @qtnf_pearl_fw_work_handler._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdp_stats\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"irq_stats\00", [22 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.50, ptr @.str.7, ptr @.str.51, i8 0, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qtnfmac_pcie\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qtnf_ep_fw_load\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FW upload started: fw_addr=0x%p size=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"qtnfmac_pcie: %s: FW upload started: fw_addr=0x%p size=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.7, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013qtnfmac_pcie: %s: FW upload failed: too many retries\0A\00", [40 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry_ptr = internal global ptr @qtnf_ep_fw_load._entry, section ".printk_index", align 4
@qtnf_ep_fw_load._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.7, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013qtnfmac_pcie: %s: FW upload failed: SYNC timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry_ptr.56 = internal global ptr @qtnf_ep_fw_load._entry.54, section ".printk_index", align 4
@qtnf_ep_fw_load._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.7, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014qtnfmac_pcie: %s: FW upload retry: block #%d\0A\00", [48 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry_ptr.59 = internal global ptr @qtnf_ep_fw_load._entry.57, section ".printk_index", align 4
@qtnf_ep_fw_load.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.50, ptr @.str.7, ptr @.str.60, i8 0, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FW upload completed: totally sent %d blocks\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"qtnfmac_pcie: %s: FW upload completed: totally sent %d blocks\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCIEQTN\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_full_count(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_done_count(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_reclaim_done(%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_reclaim_req(%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_bd_r_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_bd_p_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_bd_w_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx queue len(%u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_bd_r_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_bd_p_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_bd_w_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx alloc queue len(%u)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcie_irq_count(%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcie_irq_tx_count(%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcie_irq_tx_status(%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EN\00", [29 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DIS\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcie_irq_rx_count(%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcie_irq_rx_status(%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcie_irq_uf_count(%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pcie_irq_hhbm_uf_status(%s)\0A\00", [35 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_init_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.7, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014qtnfmac_pcie: %s: invalid tx_bd_size value %u, use default %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qtnf_pcie_pearl_init_xfer\00", [38 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_init_xfer._entry_ptr = internal global ptr @qtnf_pcie_pearl_init_xfer._entry, section ".printk_index", align 4
@qtnf_pcie_pearl_init_xfer._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.7, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014qtnfmac_pcie: %s: invalid rx_bd_size value %u, use default %u\0A\00", [63 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_init_xfer._entry_ptr.88 = internal global ptr @qtnf_pcie_pearl_init_xfer._entry.86, section ".printk_index", align 4
@qtnf_pcie_pearl_init_xfer._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.7, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013qtnfmac_pcie: %s: failed to init h/w queues\0A\00", [49 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_init_xfer._entry_ptr.91 = internal global ptr @qtnf_pcie_pearl_init_xfer._entry.89, section ".printk_index", align 4
@qtnf_pcie_pearl_init_xfer._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.7, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013qtnfmac_pcie: %s: failed to allocate skb array\0A\00", [46 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_init_xfer._entry_ptr.94 = internal global ptr @qtnf_pcie_pearl_init_xfer._entry.92, section ".printk_index", align 4
@qtnf_pcie_pearl_init_xfer._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.85, ptr @.str.7, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013qtnfmac_pcie: %s: failed to allocate bd table\0A\00", [47 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_init_xfer._entry_ptr.97 = internal global ptr @qtnf_pcie_pearl_init_xfer._entry.95, section ".printk_index", align 4
@qtnf_pcie_pearl_init_xfer._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.85, ptr @.str.7, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qtnfmac_pcie: %s: failed to allocate rx buffers\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_init_xfer._entry_ptr.100 = internal global ptr @qtnf_pcie_pearl_init_xfer._entry.98, section ".printk_index", align 4
@pearl_alloc_bd_table.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.101, ptr @.str.7, ptr @.str.102, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pearl_alloc_bd_table\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TX descriptor table: vaddr=0x%p paddr=%pad\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"qtnfmac_pcie: %s: TX descriptor table: vaddr=0x%p paddr=%pad\0A\00", [34 x i8] zeroinitializer }, align 32
@pearl_alloc_bd_table.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.101, ptr @.str.7, ptr @.str.104, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RX descriptor table: vaddr=0x%p paddr=%pad\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"qtnfmac_pcie: %s: RX descriptor table: vaddr=0x%p paddr=%pad\0A\00", [34 x i8] zeroinitializer }, align 32
@pearl_skb2rbd_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.106, ptr @.str.7, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pearl_skb2rbd_attach\00", [43 x i8] zeroinitializer }, align 32
@pearl_skb2rbd_attach._entry_ptr = internal global ptr @pearl_skb2rbd_attach._entry, section ".printk_index", align 4
@qtnf_pcie_pearl_rx_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.7, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014qtnfmac_pcie: %s: skip invalid rxbd[%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qtnf_pcie_pearl_rx_poll\00", [40 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_rx_poll._entry_ptr = internal global ptr @qtnf_pcie_pearl_rx_poll._entry, section ".printk_index", align 4
@qtnf_pcie_pearl_rx_poll._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.7, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014qtnfmac_pcie: %s: skip missing rx_skb[%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_rx_poll._entry_ptr.111 = internal global ptr @qtnf_pcie_pearl_rx_poll._entry.109, section ".printk_index", align 4
@qtnf_pcie_pearl_rx_poll._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.7, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013qtnfmac_pcie: %s: skip packet with invalid length: %u > %u\0A\00", [34 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_rx_poll._entry_ptr.114 = internal global ptr @qtnf_pcie_pearl_rx_poll._entry.112, section ".printk_index", align 4
@qtnf_pcie_pearl_rx_poll.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.108, ptr @.str.7, ptr @.str.115, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drop untagged skb\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qtnfmac_pcie: %s: drop untagged skb\0A\00", [59 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_rx_poll._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.108, ptr @.str.7, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013qtnfmac_pcie: %s: failed to allocate new rx_skb[%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@qtnf_pcie_pearl_rx_poll._entry_ptr.119 = internal global ptr @qtnf_pcie_pearl_rx_poll._entry.117, section ".printk_index", align 4
@___asan_gen_.124 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/bus.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 94, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant [24 x i8] c"qtnf_pcie_pearl_bus_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 839, i32 28 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1120, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1121, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1129, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1141, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1143, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 565, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 597, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 526, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 326, i32 6 }
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 271, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 2789, i32 6 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1026, i32 23 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1036, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1045, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1056, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1059, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1064, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1071, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1077, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1081, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1087, i32 30 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1088, i32 30 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 964, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 968, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 983, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1006, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1017, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 928, i32 24 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 881, i32 16 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 882, i32 16 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 883, i32 16 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 884, i32 16 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 886, i32 16 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 887, i32 16 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 890, i32 16 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 891, i32 16 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 895, i32 16 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 896, i32 16 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 899, i32 16 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 900, i32 16 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 858, i32 16 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 859, i32 16 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 861, i32 16 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 862, i32 41 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 862, i32 48 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 863, i32 16 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 865, i32 16 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 867, i32 16 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 869, i32 16 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 414, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 427, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 439, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 445, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 451, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 457, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 255, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 277, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 301, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 733, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 738, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 743, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 763, i32 5 }
@___asan_gen_.453 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.457 = private constant [60 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 789, i32 5 }
@llvm.compiler.used = appending global [140 x ptr] [ptr @pearl_skb2rbd_attach._entry, ptr @pearl_skb2rbd_attach._entry_ptr, ptr @qtnf_ep_fw_load._entry, ptr @qtnf_ep_fw_load._entry.54, ptr @qtnf_ep_fw_load._entry.57, ptr @qtnf_ep_fw_load._entry_ptr, ptr @qtnf_ep_fw_load._entry_ptr.56, ptr @qtnf_ep_fw_load._entry_ptr.59, ptr @qtnf_pcie_pearl_init_xfer._entry, ptr @qtnf_pcie_pearl_init_xfer._entry.86, ptr @qtnf_pcie_pearl_init_xfer._entry.89, ptr @qtnf_pcie_pearl_init_xfer._entry.92, ptr @qtnf_pcie_pearl_init_xfer._entry.95, ptr @qtnf_pcie_pearl_init_xfer._entry.98, ptr @qtnf_pcie_pearl_init_xfer._entry_ptr, ptr @qtnf_pcie_pearl_init_xfer._entry_ptr.100, ptr @qtnf_pcie_pearl_init_xfer._entry_ptr.88, ptr @qtnf_pcie_pearl_init_xfer._entry_ptr.91, ptr @qtnf_pcie_pearl_init_xfer._entry_ptr.94, ptr @qtnf_pcie_pearl_init_xfer._entry_ptr.97, ptr @qtnf_pcie_pearl_probe._entry, ptr @qtnf_pcie_pearl_probe._entry.9, ptr @qtnf_pcie_pearl_probe._entry_ptr, ptr @qtnf_pcie_pearl_probe._entry_ptr.11, ptr @qtnf_pcie_pearl_rx_poll._entry, ptr @qtnf_pcie_pearl_rx_poll._entry.109, ptr @qtnf_pcie_pearl_rx_poll._entry.112, ptr @qtnf_pcie_pearl_rx_poll._entry.117, ptr @qtnf_pcie_pearl_rx_poll._entry_ptr, ptr @qtnf_pcie_pearl_rx_poll._entry_ptr.111, ptr @qtnf_pcie_pearl_rx_poll._entry_ptr.114, ptr @qtnf_pcie_pearl_rx_poll._entry_ptr.119, ptr @qtnf_pcie_skb_send._entry, ptr @qtnf_pcie_skb_send._entry.15, ptr @qtnf_pcie_skb_send._entry_ptr, ptr @qtnf_pcie_skb_send._entry_ptr.17, ptr @qtnf_pearl_fw_work_handler._entry, ptr @qtnf_pearl_fw_work_handler._entry.26, ptr @qtnf_pearl_fw_work_handler._entry.29, ptr @qtnf_pearl_fw_work_handler._entry.32, ptr @qtnf_pearl_fw_work_handler._entry.35, ptr @qtnf_pearl_fw_work_handler._entry.38, ptr @qtnf_pearl_fw_work_handler._entry.41, ptr @qtnf_pearl_fw_work_handler._entry.44, ptr @qtnf_pearl_fw_work_handler._entry_ptr, ptr @qtnf_pearl_fw_work_handler._entry_ptr.28, ptr @qtnf_pearl_fw_work_handler._entry_ptr.31, ptr @qtnf_pearl_fw_work_handler._entry_ptr.34, ptr @qtnf_pearl_fw_work_handler._entry_ptr.37, ptr @qtnf_pearl_fw_work_handler._entry_ptr.40, ptr @qtnf_pearl_fw_work_handler._entry_ptr.43, ptr @qtnf_pearl_fw_work_handler._entry_ptr.46, ptr @qtnf_tx_queue_ready._entry, ptr @qtnf_tx_queue_ready._entry_ptr, ptr @.str, ptr @.str.1, ptr @qtnf_pcie_pearl_bus_ops, ptr @qtnf_pcie_pearl_probe.__key, ptr @.str.2, ptr @qtnf_pcie_pearl_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @qtnf_pcie_skb_send._rs, ptr @.str.14, ptr @.str.16, ptr @qtnf_tx_queue_ready._rs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_bus_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_skb_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_skb_send._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_skb_send._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_tx_queue_ready._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_tx_queue_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pearl_fw_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pearl_fw_work_handler._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pearl_fw_work_handler._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pearl_fw_work_handler._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pearl_fw_work_handler._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pearl_fw_work_handler._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pearl_fw_work_handler._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pearl_fw_work_handler._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_ep_fw_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_ep_fw_load._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_ep_fw_load._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_init_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_init_xfer._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_init_xfer._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_init_xfer._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_init_xfer._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_init_xfer._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pearl_skb2rbd_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_rx_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_rx_poll._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_rx_poll._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pearl_rx_poll._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @qtnf_pcie_pearl_alloc(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3672, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %get_bus_priv.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

get_bus_priv.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %probe_cb = getelementptr inbounds %struct.qtnf_bus, ptr %call.i, i32 0, i32 21, i32 4
  %0 = ptrtoint ptr %probe_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @qtnf_pcie_pearl_probe, ptr %probe_cb, align 4
  %remove_cb = getelementptr inbounds %struct.qtnf_bus, ptr %call.i, i32 0, i32 21, i32 8
  %1 = ptrtoint ptr %remove_cb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @qtnf_pcie_pearl_remove, ptr %remove_cb, align 4
  %dma_mask_get_cb = getelementptr inbounds %struct.qtnf_bus, ptr %call.i, i32 0, i32 21, i32 20
  %2 = ptrtoint ptr %dma_mask_get_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @qtnf_pearl_dma_mask_get, ptr %dma_mask_get_cb, align 4
  %resume_cb = getelementptr inbounds %struct.qtnf_bus, ptr %call.i, i32 0, i32 21, i32 16
  %3 = ptrtoint ptr %resume_cb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @qtnf_pcie_pearl_resume, ptr %resume_cb, align 4
  %suspend_cb = getelementptr inbounds %struct.qtnf_bus, ptr %call.i, i32 0, i32 21, i32 12
  %4 = ptrtoint ptr %suspend_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @qtnf_pcie_pearl_suspend, ptr %suspend_cb, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_bus_priv.exit, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_pearl_probe(ptr noundef %bus, i32 noundef %tx_bd_size, i32 noundef %rx_bd_size) #0 align 64 {
entry:
  %ipc_int = alloca %struct.qtnf_shm_ipc_int, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipc_int) #11
  %0 = ptrtoint ptr %ipc_int to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ipc_int, align 4, !annotation !223
  %1 = getelementptr inbounds %struct.qtnf_shm_ipc_int, ptr %ipc_int, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !223
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %3 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i, align 4
  %bus_ops = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 4
  %5 = ptrtoint ptr %bus_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @qtnf_pcie_pearl_bus_ops, ptr %bus_ops, align 16
  %irq_lock = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @qtnf_pcie_pearl_probe.__key, i16 noundef signext 3) #11
  %fw_work = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13
  tail call void @__init_work(ptr noundef %fw_work, i32 noundef 0) #11
  %6 = ptrtoint ptr %fw_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %fw_work, align 8
  %lockdep_map = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @qtnf_pcie_pearl_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry7 = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @qtnf_pearl_fw_work_handler, ptr %func, align 4
  %dmareg_bar = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 12
  %10 = ptrtoint ptr %dmareg_bar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmareg_bar, align 4
  %pcie_reg_base = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 3
  %12 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %pcie_reg_base, align 4
  %epmem_bar = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 11
  %13 = ptrtoint ptr %epmem_bar to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %epmem_bar, align 4
  %bda = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %bda to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %bda, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  tail call void @arm_heavy_mb() #11
  %msi_enabled = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 29
  %16 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msi_enabled, align 4
  %conv = zext i8 %17 to i32
  %18 = shl nuw i32 %conv, 24
  %19 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bda, align 4
  %bda_rc_msi_enabled = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %20, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_rc_msi_enabled, i32 %18) #11, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_bd_size)
  %cmp.i = icmp eq i32 %tx_bd_size, 0
  %spec.store.select.i = select i1 %cmp.i, i32 32, i32 %tx_bd_size
  %21 = tail call i32 @llvm.ctpop.i32(i32 %spec.store.select.i) #11, !range !227
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp1.i.i = icmp ugt i32 %21, 1
  %mul.i = shl i32 %spec.store.select.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %mul.i)
  %cmp1.i = icmp ugt i32 %mul.i, 2048
  %or.cond.i = or i1 %cmp1.i.i, %cmp1.i
  br i1 %or.cond.i, label %do.end.i70, label %if.else.i

do.end.i70:                                       ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef %spec.store.select.i, i32 noundef 32) #14
  br label %if.end5.i

if.else.i:                                        ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %spec.store.select.i to i16
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %do.end.i70
  %conv.sink.i = phi i16 [ 32, %do.end.i70 ], [ %conv.i, %if.else.i ]
  %22 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 15
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.sink.i, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_bd_size)
  %cmp6.i = icmp eq i32 %rx_bd_size, 0
  %spec.store.select62.i = select i1 %cmp6.i, i32 256, i32 %rx_bd_size
  %24 = tail call i32 @llvm.ctpop.i32(i32 %spec.store.select62.i) #11, !range !227
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp1.i90.i = icmp ugt i32 %24, 1
  %mul10.i = shl i32 %spec.store.select62.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %mul10.i)
  %cmp13.i = icmp ugt i32 %mul10.i, 2048
  %or.cond89.i = or i1 %cmp1.i90.i, %cmp13.i
  br i1 %or.cond89.i, label %do.end18.i, label %if.else21.i

do.end18.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, i32 noundef %spec.store.select62.i, i32 noundef 256) #14
  br label %if.end24.i

if.else21.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv22.i = trunc i32 %spec.store.select62.i to i16
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else21.i, %do.end18.i
  %conv22.sink.i = phi i16 [ 256, %do.end18.i ], [ %conv22.i, %if.else21.i ]
  %25 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 16
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv22.sink.i, ptr %25, align 2
  %rx_bd_w_index.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 20
  %27 = ptrtoint ptr %rx_bd_w_index.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rx_bd_w_index.i, align 4
  %rx_bd_r_index.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 21
  %28 = ptrtoint ptr %rx_bd_r_index.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %rx_bd_r_index.i, align 4
  %29 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 12188
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !229
  %32 = or i32 %31, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %34, i32 12188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %32) #11, !srcloc !226
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #11
  %35 = and i32 %31, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %37, i32 12188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %35) #11, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  tail call void @arm_heavy_mb() #11
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %25, align 2
  %conv.i.i = zext i16 %39 to i32
  %40 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #11
  %41 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %42, i32 11784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %40) #11, !srcloc !226
  %call33.i = tail call i32 @qtnf_pcie_alloc_skb_array(ptr noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end41.i, label %if.end24.i.do.end21_crit_edge

if.end24.i.do.end21_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

if.end41.i:                                       ; preds = %if.end24.i
  %call42.i = tail call fastcc i32 @pearl_alloc_bd_table(ptr noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end50.i, label %if.end41.i.do.end21_crit_edge

if.end41.i.do.end21_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

if.end50.i:                                       ; preds = %if.end41.i
  %rx_bd_vbase.i.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 6
  %43 = ptrtoint ptr %rx_bd_vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_bd_vbase.i.i, align 4
  %45 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %25, align 2
  %conv.i92.i = zext i16 %46 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i92.i, 24
  %47 = call ptr @memset(ptr %44, i32 0, i32 %mul.i.i)
  %48 = load i16, ptr %25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp12.not.i.i = icmp eq i16 %48, 0
  br i1 %cmp12.not.i.i, label %if.end50.i.if.end_crit_edge, label %if.end50.i.for.body.i.i_crit_edge

if.end50.i.for.body.i.i_crit_edge:                ; preds = %if.end50.i
  br label %for.body.i.i

if.end50.i.if.end_crit_edge:                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i16 %i.013.i.i, 1
  %49 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %25, align 2
  %cmp.i.i = icmp ult i16 %inc.i.i, %50
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end_crit_edge

for.cond.i.i.if.end_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end50.i.for.body.i.i_crit_edge
  %i.013.i.i = phi i16 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end50.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call fastcc i32 @pearl_skb2rbd_attach(ptr noundef %retval.0.i, i16 noundef zeroext %i.013.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.i.i.do.end21_crit_edge

for.body.i.i.do.end21_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.end21:                                         ; preds = %for.body.i.i.do.end21_crit_edge, %if.end41.i.do.end21_crit_edge, %if.end24.i.do.end21_crit_edge
  %.str.99.sink.i = phi ptr [ @.str.93, %if.end24.i.do.end21_crit_edge ], [ @.str.96, %if.end41.i.do.end21_crit_edge ], [ @.str.99, %for.body.i.i.do.end21_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call33.i, %if.end24.i.do.end21_crit_edge ], [ %call42.i, %if.end41.i.do.end21_crit_edge ], [ %call.i.i, %for.body.i.i.do.end21_crit_edge ]
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.99.sink.i, ptr noundef nonnull @.str.85) #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #14
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.i.if.end_crit_edge, %if.end50.i.if.end_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %pcie_irq_mask.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 11
  %51 = ptrtoint ptr %pcie_irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 45057, ptr %pcie_irq_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2.i) #11
  %call2.i73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %52 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 11324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !226
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2.i73) #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %irq = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 46
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %55, ptr noundef nonnull @qtnf_pcie_pearl_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %bus) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end32, label %do.end28

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, i32 noundef %57) #14
  tail call fastcc void @qtnf_pearl_free_xfer_buffers(ptr noundef %retval.0.i)
  br label %cleanup

if.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %reclaim_tq = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 9
  tail call void @tasklet_setup(ptr noundef %reclaim_tq, ptr noundef nonnull @qtnf_pearl_reclaim_tasklet_fn) #11
  %mux_dev = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 10
  %mux_napi = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 8
  tail call void @netif_napi_add(ptr noundef %mux_dev, ptr noundef %mux_napi, ptr noundef nonnull @qtnf_pcie_pearl_rx_poll, i32 noundef 10) #11
  %58 = ptrtoint ptr %ipc_int to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @qtnf_pcie_pearl_ipc_gen_ep_int, ptr %ipc_int, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i, ptr %1, align 4
  %60 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bda, align 4
  %bda_shm_reg1 = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %61, i32 0, i32 18
  %bda_shm_reg2 = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %61, i32 0, i32 19
  call void @qtnf_pcie_init_shm_ipc(ptr noundef %retval.0.i, ptr noundef %bda_shm_reg1, ptr noundef %bda_shm_reg2, ptr noundef nonnull %ipc_int) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end28, %do.end21
  %retval.0 = phi i32 [ %retval.0.ph.i, %do.end21 ], [ %call.i, %do.end28 ], [ 0, %if.end32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipc_int) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_pearl_remove(ptr noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %sysctl_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 10
  %0 = ptrtoint ptr %sysctl_bar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2147450880) #11, !srcloc !226
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @msleep(i32 noundef 1000) #11
  %3 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i, align 4
  tail call void @pci_restore_state(ptr noundef %4) #11
  tail call fastcc void @qtnf_pearl_free_xfer_buffers(ptr noundef %retval.0.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @qtnf_pearl_dma_mask_get() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 4294967295
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qtnf_pcie_pearl_resume(ptr nocapture noundef readnone %bus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qtnf_pcie_pearl_suspend(ptr nocapture noundef readnone %bus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pearl_fw_work_handler(ptr noundef %work) #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2824
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr i8, ptr %work, i32 204
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %0 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retval.0.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !223
  %flashboot = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 31
  %3 = ptrtoint ptr %flashboot to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flashboot, align 2, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %get_bus_priv.exit.if.end7_crit_edge

get_bus_priv.exit.if.end7_crit_edge:              ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.else:                                          ; preds = %get_bus_priv.exit
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call3 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.23, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #14
  br label %fw_load_exit

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %get_bus_priv.exit.if.end7_crit_edge
  %state.0 = phi i32 [ 384, %if.else.if.end7_crit_edge ], [ 416, %get_bus_priv.exit.if.end7_crit_edge ]
  %bda = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bda, align 4
  %bda_rc_state = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %6, i32 0, i32 4
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_rc_state) #11, !srcloc !228
  %8 = call i32 @llvm.bswap.i32(i32 %7) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  %or.i = or i32 %8, %state.0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  call void @arm_heavy_mb() #11
  %9 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_rc_state, i32 %9) #11, !srcloc !226
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_rc_state) #11, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  %11 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bda, align 4
  %bda_ep_state = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %12, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end7
  %timeout.0.i = phi i32 [ 0, %if.end7 ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state) #11, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !238
  %14 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %while.body.i, label %if.end22

while.body.i:                                     ; preds = %while.cond.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #11
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond = icmp eq i32 %inc.i, 3001
  br i1 %exitcond, label %do.end14, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

do.end14:                                         ; preds = %while.body.i
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #14
  %15 = ptrtoint ptr %flashboot to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flashboot, align 2, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool19.not = icmp eq i8 %16, 0
  br i1 %tobool19.not, label %if.then20, label %do.end14.fw_load_exit_crit_edge

do.end14.fw_load_exit_crit_edge:                  ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %fw_load_exit

if.then20:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %18) #11
  br label %fw_load_exit

if.end22:                                         ; preds = %while.cond.i
  %19 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bda, align 4
  %bda_ep_state24 = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %20, i32 0, i32 3
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state24) #11, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !239
  %22 = and i32 %21, -65537
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_ep_state24, i32 %22) #11, !srcloc !226
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state24) #11, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  %24 = ptrtoint ptr %flashboot to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flashboot, align 2, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not = icmp eq i8 %25, 0
  br i1 %tobool27.not, label %do.end37, label %do.end31

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25) #14
  br label %if.end49

do.end37:                                         ; preds = %if.end22
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #14
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %call40 = call fastcc i32 @qtnf_ep_fw_load(ptr noundef %retval.0.i, ptr noundef %29, i32 noundef %31)
  %32 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.end37.if.end49_crit_edge, label %do.end45

do.end37.if.end49_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.end45:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.25) #14
  br label %fw_load_exit

if.end49:                                         ; preds = %do.end37.if.end49_crit_edge, %do.end31
  %34 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bda, align 4
  %bda_ep_state51 = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %35, i32 0, i32 3
  br label %while.cond.i104

while.cond.i104:                                  ; preds = %while.body.i107.while.cond.i104_crit_edge, %if.end49
  %timeout.0.i101 = phi i32 [ 0, %if.end49 ], [ %inc.i105, %while.body.i107.while.cond.i104_crit_edge ]
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state51) #11, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !238
  %37 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i103 = icmp eq i32 %37, 0
  br i1 %cmp.i103, label %while.body.i107, label %if.end60

while.body.i107:                                  ; preds = %while.cond.i104
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #11
  %inc.i105 = add nuw nsw i32 %timeout.0.i101, 1
  %exitcond125 = icmp eq i32 %inc.i105, 3001
  br i1 %exitcond125, label %do.end57, label %while.body.i107.while.cond.i104_crit_edge

while.body.i107.while.cond.i104_crit_edge:        ; preds = %while.body.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i104

do.end57:                                         ; preds = %while.body.i107
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.25) #14
  br label %fw_load_exit

if.end60:                                         ; preds = %while.cond.i104
  %38 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bda, align 4
  %bda_ep_state62 = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %39, i32 0, i32 3
  br label %while.cond.i113

while.cond.i113:                                  ; preds = %while.body.i116.while.cond.i113_crit_edge, %if.end60
  %timeout.0.i110 = phi i32 [ 0, %if.end60 ], [ %inc.i114, %while.body.i116.while.cond.i113_crit_edge ]
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state62) #11, !srcloc !228
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !238
  %41 = and i32 %40, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i112 = icmp eq i32 %41, 0
  br i1 %cmp.i112, label %while.body.i116, label %do.end74

while.body.i116:                                  ; preds = %while.cond.i113
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #11
  %inc.i114 = add nuw nsw i32 %timeout.0.i110, 1
  %exitcond126 = icmp eq i32 %inc.i114, 30001
  br i1 %exitcond126, label %do.end68, label %while.body.i116.while.cond.i113_crit_edge

while.body.i116.while.cond.i113_crit_edge:        ; preds = %while.body.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i113

do.end68:                                         ; preds = %while.body.i116
  call void @__sanitizer_cov_trace_pc() #13
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.25) #14
  br label %fw_load_exit

do.end74:                                         ; preds = %while.cond.i113
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.25) #14
  %call77 = call i32 @qtnf_pcie_fw_boot_done(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %do.end74.fw_load_exit_crit_edge

do.end74.fw_load_exit_crit_edge:                  ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %fw_load_exit

if.end80:                                         ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  call void @qtnf_debugfs_add_entry(ptr noundef %add.ptr, ptr noundef nonnull @.str.47, ptr noundef nonnull @qtnf_dbg_hdp_stats) #11
  call void @qtnf_debugfs_add_entry(ptr noundef %add.ptr, ptr noundef nonnull @.str.48, ptr noundef nonnull @qtnf_dbg_irq_stats) #11
  br label %fw_load_exit

fw_load_exit:                                     ; preds = %if.end80, %do.end74.fw_load_exit_crit_edge, %do.end68, %do.end57, %do.end45, %if.then20, %do.end14.fw_load_exit_crit_edge, %do.end
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @put_device(ptr noundef %dev81) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_pearl_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %data, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %pcie_irq_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 24
  %0 = ptrtoint ptr %pcie_irq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_irq_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %pcie_irq_count, align 4
  %pcie_reg_base = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 11320
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !228
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !240
  %shm_ipc_ep_in = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 13
  %irq_handler.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 13, i32 8
  %6 = ptrtoint ptr %irq_handler.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_handler.i, align 4
  tail call void %7(ptr noundef %shm_ipc_ep_in) #11
  %shm_ipc_ep_out = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 14
  %irq_handler.i50 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 14, i32 8
  %8 = ptrtoint ptr %irq_handler.i50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_handler.i50, align 4
  tail call void %9(ptr noundef %shm_ipc_ep_out) #11
  %pcie_irq_mask = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 11
  %10 = ptrtoint ptr %pcie_irq_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcie_irq_mask, align 4
  %and = and i32 %11, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %get_bus_priv.exit.irq_done_crit_edge, label %if.end

get_bus_priv.exit.irq_done_crit_edge:             ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_done

if.end:                                           ; preds = %get_bus_priv.exit
  %and3 = and i32 %5, 45056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pcie_irq_rx_count = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 12
  %12 = ptrtoint ptr %pcie_irq_rx_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcie_irq_rx_count, align 4
  %inc6 = add i32 %13, 1
  store i32 %inc6, ptr %pcie_irq_rx_count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %and8 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %pcie_irq_tx_count = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 13
  %14 = ptrtoint ptr %pcie_irq_tx_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcie_irq_tx_count, align 4
  %inc11 = add i32 %15, 1
  store i32 %inc11, ptr %pcie_irq_tx_count, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %and13 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %pcie_irq_uf_count = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 14
  %16 = ptrtoint ptr %pcie_irq_uf_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcie_irq_uf_count, align 4
  %inc16 = add i32 %17, 1
  store i32 %inc16, ptr %pcie_irq_uf_count, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  br i1 %tobool4.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  %irq_lock.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  %18 = ptrtoint ptr %pcie_irq_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcie_irq_mask, align 4
  %and.i = and i32 %19, -45057
  store i32 %and.i, ptr %pcie_irq_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !241
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %pcie_irq_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcie_irq_mask, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  %23 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 11324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #11, !srcloc !226
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #11
  %mux_napi = getelementptr inbounds %struct.qtnf_bus, ptr %data, i32 0, i32 8
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %mux_napi) #11
  br i1 %call.i, label %if.then.i, label %if.then20.if.end21_crit_edge

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %mux_napi) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %if.then20.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  br i1 %tobool9.not, label %if.end21.irq_done_crit_edge, label %if.then24

if.end21.irq_done_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_done

if.then24:                                        ; preds = %if.end21
  %irq_lock.i51 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 1
  %call2.i52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i51) #11
  %25 = ptrtoint ptr %pcie_irq_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pcie_irq_mask, align 4
  %and.i54 = and i32 %26, -2
  store i32 %and.i54, ptr %pcie_irq_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !242
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %pcie_irq_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pcie_irq_mask, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  %30 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr.i56 = getelementptr i8, ptr %31, i32 11324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %29) #11, !srcloc !226
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i51, i32 noundef %call2.i52) #11
  %state.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 9, i32 1
  %call.i57 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.then.i59, label %if.then24.irq_done_crit_edge

if.then24.irq_done_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_done

if.then.i59:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %reclaim_tq = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 9
  tail call void @__tasklet_hi_schedule(ptr noundef %reclaim_tq) #11
  br label %irq_done

irq_done:                                         ; preds = %if.then.i59, %if.then24.irq_done_crit_edge, %if.end21.irq_done_crit_edge, %get_bus_priv.exit.irq_done_crit_edge
  %32 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr27 = getelementptr i8, ptr %33, i32 11320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 -1) #11, !srcloc !226
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  %msi_enabled = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 29
  %35 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %msi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool28.not = icmp eq i8 %36, 0
  br i1 %tobool28.not, label %if.then29, label %irq_done.if.end30_crit_edge

irq_done.if.end30_crit_edge:                      ; preds = %irq_done
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then29:                                        ; preds = %irq_done
  call void @__sanitizer_cov_trace_pc() #13
  %sysctl_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 10
  %37 = ptrtoint ptr %sysctl_bar.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sysctl_bar.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %38, i32 108
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !243
  %40 = and i32 %39, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %40) #11, !srcloc !226
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %irq_done.if.end30_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtnf_pearl_free_xfer_buffers(ptr nocapture noundef readonly %ps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 16
  %0 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rx_bd_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp63.not = icmp eq i16 %1, 0
  br i1 %cmp63.not, label %entry.for.cond9.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond9.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond9.preheader

for.body.lr.ph:                                   ; preds = %entry
  %rx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 18
  %rx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 6
  br label %for.body

for.cond9.preheader:                              ; preds = %for.inc.for.cond9.preheader_crit_edge, %entry.for.cond9.preheader_crit_edge
  %tx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 15
  %2 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_bd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp1167.not = icmp eq i16 %3, 0
  br i1 %cmp1167.not, label %for.cond9.preheader.for.end31_crit_edge, label %for.body13.lr.ph

for.cond9.preheader.for.end31_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end31

for.body13.lr.ph:                                 ; preds = %for.cond9.preheader
  %tx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 17
  %tx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 4
  br label %for.body13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.064
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %rx_bd_vbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_bd_vbase, align 4
  %arrayidx4 = getelementptr %struct.qtnf_pearl_rx_bd, ptr %9, i32 %i.064
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx4, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ps, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %12, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #11
  %15 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_skb, align 4
  %arrayidx8 = getelementptr ptr, ptr %16, i32 %i.064
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.064, 1
  %18 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_bd_num, align 2
  %conv = zext i16 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond9.preheader_crit_edge

for.inc.for.cond9.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond9.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body13:                                       ; preds = %for.inc29.for.body13_crit_edge, %for.body13.lr.ph
  %i.168 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc30, %for.inc29.for.body13_crit_edge ]
  %20 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_skb, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %for.body13.for.inc29_crit_edge, label %land.lhs.true15

for.body13.for.inc29_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc29

land.lhs.true15:                                  ; preds = %for.body13
  %arrayidx17 = getelementptr ptr, ptr %21, i32 %i.168
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %land.lhs.true15.for.inc29_crit_edge, label %if.then19

land.lhs.true15.for.inc29_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc29

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %tx_bd_vbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_bd_vbase, align 4
  %arrayidx20 = getelementptr %struct.qtnf_pearl_tx_bd, ptr %25, i32 %i.168
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx20, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ps, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev25, i32 noundef %28, i32 noundef %32, i32 noundef 1, i32 noundef 0) #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %23, i32 noundef 1) #11
  %33 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_skb, align 4
  %arrayidx27 = getelementptr ptr, ptr %34, i32 %i.168
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx27, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %if.then19, %land.lhs.true15.for.inc29_crit_edge, %for.body13.for.inc29_crit_edge
  %inc30 = add nuw nsw i32 %i.168, 1
  %36 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tx_bd_num, align 4
  %conv10 = zext i16 %37 to i32
  %cmp11 = icmp ult i32 %inc30, %conv10
  br i1 %cmp11, label %for.inc29.for.body13_crit_edge, label %for.inc29.for.end31_crit_edge

for.inc29.for.end31_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end31

for.inc29.for.body13_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.end31:                                        ; preds = %for.inc29.for.end31_crit_edge, %for.cond9.preheader.for.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pearl_reclaim_tasklet_fn(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -116
  tail call fastcc void @qtnf_pearl_data_tx_reclaim(ptr noundef %add.ptr)
  %irq_lock.i = getelementptr i8, ptr %t, i32 388
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  %pcie_irq_mask.i = getelementptr i8, ptr %t, i32 468
  %0 = ptrtoint ptr %pcie_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_irq_mask.i, align 4
  %or.i = or i32 %1, 1
  store i32 %or.i, ptr %pcie_irq_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %pcie_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcie_irq_mask.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  %pcie_reg_base.i = getelementptr i8, ptr %t, i32 436
  %5 = ptrtoint ptr %pcie_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcie_reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 11324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #11, !srcloc !226
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_pearl_rx_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -256
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr i8, ptr %napi, i32 2772
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i168 = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp190 = icmp sgt i32 %budget, 0
  br i1 %cmp190, label %while.body.lr.ph, label %get_bus_priv.exit.if.end116_crit_edge

get_bus_priv.exit.if.end116_crit_edge:            ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

while.body.lr.ph:                                 ; preds = %get_bus_priv.exit
  %rx_bd_r_index.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i168, i32 0, i32 21
  %rx_bd_vbase.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i168, i32 0, i32 6
  %rx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i168, i32 0, i32 18
  %rx_dropped = getelementptr i8, ptr %napi, i32 496
  %rx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i168, i32 0, i32 16
  %rx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i168, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %processed.0191 = phi i32 [ 0, %while.body.lr.ph ], [ %inc110, %while.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %rx_bd_r_index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_bd_r_index.i, align 4
  %2 = ptrtoint ptr %rx_bd_vbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_bd_vbase.i, align 4
  %idxprom.i = and i32 %1, 65535
  %info.i = getelementptr %struct.qtnf_pearl_rx_bd, ptr %3, i32 %idxprom.i, i32 2
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %info.i, align 1
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then114.critedge, label %if.end

if.end:                                           ; preds = %while.body
  %conv = trunc i32 %1 to i16
  %arrayidx = getelementptr %struct.qtnf_pearl_rx_bd, ptr %3, i32 %idxprom.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %5)
  %8 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_skb, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %and = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool5.not = icmp sgt i32 %7, -1
  br i1 %tobool5.not, label %do.end, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef %idxprom.i) #14
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end.if.end10_crit_edge
  %consume.0 = phi i32 [ 1, %if.end.if.end10_crit_edge ], [ 0, %do.end ]
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %if.else60.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %skb_tailroom.exit.thread

skb_tailroom.exit:                                ; preds = %land.lhs.true
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %and)
  %cmp22 = icmp ult i32 %sub.ptr.sub.i, %and
  br i1 %cmp22, label %cond.false.i176, label %skb_tailroom.exit.if.end34_crit_edge

skb_tailroom.exit.if.end34_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

skb_tailroom.exit.thread:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp22181.not = icmp eq i32 %and, 0
  br i1 %cmp22181.not, label %skb_tailroom.exit.thread.if.end34_crit_edge, label %skb_tailroom.exit.thread.skb_tailroom.exit178_crit_edge

skb_tailroom.exit.thread.skb_tailroom.exit178_crit_edge: ; preds = %skb_tailroom.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit178

skb_tailroom.exit.thread.if.end34_crit_edge:      ; preds = %skb_tailroom.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

cond.false.i176:                                  ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i173 = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i174 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i175 = sub i32 %sub.ptr.lhs.cast.i173, %sub.ptr.rhs.cast.i174
  br label %skb_tailroom.exit178

skb_tailroom.exit178:                             ; preds = %cond.false.i176, %skb_tailroom.exit.thread.skb_tailroom.exit178_crit_edge
  %cond.i177 = phi i32 [ %sub.ptr.sub.i175, %cond.false.i176 ], [ 0, %skb_tailroom.exit.thread.skb_tailroom.exit178_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.108, i32 noundef %and, i32 noundef %cond.i177) #14
  br label %if.end34

if.else60.thread:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.108, i32 noundef %idxprom.i) #14
  br label %if.end68

if.end34:                                         ; preds = %skb_tailroom.exit178, %skb_tailroom.exit.thread.if.end34_crit_edge, %skb_tailroom.exit.if.end34_crit_edge
  %consume.2.ph = phi i32 [ %consume.0, %skb_tailroom.exit.thread.if.end34_crit_edge ], [ %consume.0, %skb_tailroom.exit.if.end34_crit_edge ], [ 0, %skb_tailroom.exit178 ]
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %retval.0.i168 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %retval.0.i168, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %24, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume.2.ph)
  %tobool35.not = icmp eq i32 %consume.2.ph, 0
  br i1 %tobool35.not, label %if.then62, label %if.then36

if.then36:                                        ; preds = %if.end34
  %call37 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef %and) #11
  %call38 = tail call ptr @qtnf_classify_skb(ptr noundef %add.ptr, ptr noundef nonnull %11) #11
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.body45, label %if.then42, !prof !224

if.then42:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %call38, i32 0, i32 130
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 64
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %38, %32
  %39 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %39, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #11
  %conv.i = zext i32 %28 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_bytes.i, align 8
  %add2.i = add i64 %41, %conv.i
  store i64 %add2.i, ptr %rx_bytes.i, align 8
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %39, align 32
  %inc.i = add i64 %43, 1
  store i64 %inc.i, ptr %39, align 32
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %39, i32 0, i32 4, i32 0, i32 1
  %44 = tail call ptr @llvm.returnaddress(i32 0) #11
  %45 = ptrtoint ptr %44 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %45) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !245
  %46 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %call43 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %11, ptr noundef nonnull %call38) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 15, i32 0, i32 18
  %48 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %call43, ptr %protocol, align 8
  %call44 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %11) #11
  br label %if.end68

do.body45:                                        ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_pcie_pearl_rx_poll.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_pcie_pearl_rx_poll, %if.then55)) #11
          to label %do.end58 [label %if.then55], !srcloc !246

if.then55:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_pcie_pearl_rx_poll.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.108) #11
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %do.body45
  %49 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %50, 1
  store i32 %inc, ptr %rx_dropped, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 1) #11
  br label %if.end68

if.then62:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_dropped, align 8
  %inc66 = add i32 %52, 1
  store i32 %inc66, ptr %rx_dropped, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 1) #11
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %do.end58, %if.then42, %if.else60.thread
  %53 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_skb, align 4
  %arrayidx71 = getelementptr ptr, ptr %54, i32 %idxprom.i
  %55 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx71, align 4
  %inc72 = add i16 %conv, 1
  %56 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %rx_bd_num, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc72, i16 %57)
  %cmp75.not = icmp ult i16 %inc72, %57
  %spec.store.select = select i1 %cmp75.not, i16 %inc72, i16 0
  %conv79 = zext i16 %spec.store.select to i32
  %58 = ptrtoint ptr %rx_bd_r_index.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv79, ptr %rx_bd_r_index.i, align 4
  %59 = ptrtoint ptr %rx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_bd_w_index, align 4
  %conv81 = trunc i32 %60 to i16
  br label %while.cond82

while.cond82:                                     ; preds = %while.body91.while.cond82_crit_edge, %if.end68
  %w_idx.0 = phi i16 [ %conv81, %if.end68 ], [ %spec.store.select117, %while.body91.while.cond82_crit_edge ]
  %61 = ptrtoint ptr %rx_bd_r_index.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_bd_r_index.i, align 4
  %63 = ptrtoint ptr %rx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_bd_w_index, align 4
  %add.neg = xor i32 %64, -1
  %sub = add i32 %62, %add.neg
  %65 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rx_bd_num, align 2
  %conv86 = zext i16 %66 to i32
  %sub87 = add nsw i32 %conv86, -1
  %and88 = and i32 %sub87, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %cmp89.not = icmp eq i32 %and88, 0
  br i1 %cmp89.not, label %while.cond82.while.end_crit_edge, label %while.body91

while.cond82.while.end_crit_edge:                 ; preds = %while.cond82
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body91:                                     ; preds = %while.cond82
  %inc92 = add i16 %w_idx.0, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc92, i16 %66)
  %cmp96.not = icmp ult i16 %inc92, %66
  %spec.store.select117 = select i1 %cmp96.not, i16 %inc92, i16 0
  %call100 = tail call fastcc i32 @pearl_skb2rbd_attach(ptr noundef %retval.0.i168, i16 noundef zeroext %spec.store.select117)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %while.body91.while.cond82_crit_edge, label %do.end105

while.body91.while.cond82_crit_edge:              ; preds = %while.body91
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond82

do.end105:                                        ; preds = %while.body91
  call void @__sanitizer_cov_trace_pc() #13
  %conv107 = zext i16 %spec.store.select117 to i32
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.108, i32 noundef %conv107) #14
  br label %while.end

while.end:                                        ; preds = %do.end105, %while.cond82.while.end_crit_edge
  %inc110 = add nuw nsw i32 %processed.0191, 1
  %exitcond.not = icmp eq i32 %inc110, %budget
  br i1 %exitcond.not, label %while.end.if.end116_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end.if.end116_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then114.critedge:                              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #11
  %irq_lock.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i168, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  %pcie_irq_mask.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i168, i32 0, i32 11
  %67 = ptrtoint ptr %pcie_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pcie_irq_mask.i, align 4
  %or.i = or i32 %68, 45056
  store i32 %or.i, ptr %pcie_irq_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !247
  tail call void @arm_heavy_mb() #11
  %69 = ptrtoint ptr %pcie_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pcie_irq_mask.i, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #11
  %pcie_reg_base.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i168, i32 0, i32 3
  %72 = ptrtoint ptr %pcie_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcie_reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %73, i32 11324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %71) #11, !srcloc !226
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #11
  br label %if.end116

if.end116:                                        ; preds = %if.then114.critedge, %while.end.if.end116_crit_edge, %get_bus_priv.exit.if.end116_crit_edge
  %processed.0189 = phi i32 [ %processed.0191, %if.then114.critedge ], [ 0, %get_bus_priv.exit.if.end116_crit_edge ], [ %budget, %while.end.if.end116_crit_edge ]
  ret i32 %processed.0189
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_pearl_ipc_gen_ep_int(ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl_bar = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %arg, i32 0, i32 10
  %0 = ptrtoint ptr %sysctl_bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl_bar, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1073758208) #11, !srcloc !226
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_pcie_init_shm_ipc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_pcie_control_tx(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_data_tx(ptr noundef %bus, ptr noundef %skb, i32 noundef %macid, i32 noundef %vifid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qtnf_pcie_skb_send(ptr noundef %bus, ptr noundef %skb)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_data_tx_timeout(ptr noundef %bus, ptr nocapture noundef readnone %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %state.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i1 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i1, label %if.then.i, label %get_bus_priv.exit.tasklet_hi_schedule.exit_crit_edge

get_bus_priv.exit.tasklet_hi_schedule.exit_crit_edge: ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_hi_schedule.exit

if.then.i:                                        ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  %reclaim_tq = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 9
  tail call void @__tasklet_hi_schedule(ptr noundef %reclaim_tq) #11
  br label %tasklet_hi_schedule.exit

tasklet_hi_schedule.exit:                         ; preds = %if.then.i, %get_bus_priv.exit.tasklet_hi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qtnf_pearl_tx_use_meta_info_set(ptr nocapture noundef readonly %bus, i1 noundef zeroext %use_meta) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_ops = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 4
  %0 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_ops, align 16
  %data_tx = getelementptr inbounds %struct.qtnf_bus_ops, ptr %1, i32 0, i32 3
  %qtnf_pcie_data_tx_meta.qtnf_pcie_data_tx = select i1 %use_meta, ptr @qtnf_pcie_data_tx_meta, ptr @qtnf_pcie_data_tx
  %2 = ptrtoint ptr %data_tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qtnf_pcie_data_tx_meta.qtnf_pcie_data_tx, ptr %data_tx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_data_rx_start(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %irq_lock.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !248
  tail call void @arm_heavy_mb() #11
  %pcie_irq_mask.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 11
  %0 = ptrtoint ptr %pcie_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_irq_mask.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  %pcie_reg_base.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %pcie_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie_reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 11324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !226
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #11
  %mux_napi = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 8
  tail call void @napi_enable(ptr noundef %mux_napi) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_data_rx_stop(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %mux_napi = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %mux_napi) #11
  %irq_lock.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %pcie_reg_base.i = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 3
  %0 = ptrtoint ptr %pcie_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 11324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !226
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_pcie_skb_send(ptr noundef %bus, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %skb_paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb_paddr) #11
  %tx_lock = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #11
  %tx_bd_r_index.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 23
  %0 = ptrtoint ptr %tx_bd_r_index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_bd_r_index.i, align 4
  %tx_bd_w_index.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 22
  %2 = ptrtoint ptr %tx_bd_w_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_bd_w_index.i, align 4
  %add.neg.i = xor i32 %3, -1
  %sub.i = add i32 %1, %add.neg.i
  %tx_bd_num.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 15
  %4 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_bd_num.i, align 4
  %conv.i = zext i16 %5 to i32
  %sub1.i = add nsw i32 %conv.i, -1
  %and.i = and i32 %sub1.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i96 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i96, label %if.then.i, label %get_bus_priv.exit.if.end10_crit_edge

get_bus_priv.exit.if.end10_crit_edge:             ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then.i:                                        ; preds = %get_bus_priv.exit
  tail call fastcc void @qtnf_pearl_data_tx_reclaim(ptr noundef %retval.0.i) #11
  %6 = ptrtoint ptr %tx_bd_r_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bd_r_index.i, align 4
  %8 = ptrtoint ptr %tx_bd_w_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bd_w_index.i, align 4
  %add4.neg.i = xor i32 %9, -1
  %sub5.i = add i32 %7, %add4.neg.i
  %10 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_bd_num.i, align 4
  %conv7.i = zext i16 %11 to i32
  %sub8.i = add nsw i32 %conv7.i, -1
  %and9.i = and i32 %sub8.i, %sub5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.then.i.if.end10_crit_edge

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then11.i:                                      ; preds = %if.then.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_tx_queue_ready._rs, ptr noundef nonnull @__func__.qtnf_tx_queue_ready) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.then11.i.if.then_crit_edge, label %do.end.i97

if.then11.i.if.then_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

do.end.i97:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.qtnf_tx_queue_ready) #14
  br label %if.then

if.then:                                          ; preds = %do.end.i97, %if.then11.i.if.then_crit_edge
  %tx_full_count.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 25
  %12 = ptrtoint ptr %tx_full_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_full_count.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %tx_full_count.i, align 4
  %14 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %16) #11
  %tx_stopped = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 30
  %17 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %tx_stopped, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #11
  br label %cleanup

if.end10:                                         ; preds = %if.then.i.if.end10_crit_edge, %get_bus_priv.exit.if.end10_crit_edge
  %18 = ptrtoint ptr %tx_bd_w_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_bd_w_index.i, align 4
  %tx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 17
  %20 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_skb, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %19
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skb, ptr %arrayidx, align 4
  %len11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len11, align 4
  %25 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %retval.0.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %call.i99 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %28) #11
  br i1 %call.i99, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end10
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i100, !prof !249

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i100:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i100.dev_name.exit.i_crit_edge

if.then.i100.dev_name.exit.i_crit_edge:           ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i100.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.then.i100.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %28, i32 noundef %24) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %28 to i32
  %sub.i101 = add i32 %34, 1073741824
  %shr.i = lshr i32 %sub.i101, 12
  %add.ptr.i = getelementptr %struct.page, ptr %33, i32 %shr.i
  %and.i102 = and i32 %34, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i102, i32 noundef %24, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i103 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %35 = ptrtoint ptr %skb_paddr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i103, ptr %skb_paddr, align 4
  %36 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %retval.0.i, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev15, i32 noundef %retval.0.i103) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i103)
  %cmp.i = icmp eq i32 %retval.0.i103, -1
  br i1 %cmp.i, label %do.end21, label %if.end24

do.end21:                                         ; preds = %dma_map_single_attrs.exit
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull %skb_paddr) #14
  %call40 = call i32 @___ratelimit(ptr noundef nonnull @qtnf_pcie_skb_send._rs, ptr noundef nonnull @.str.13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.end21.if.end48_crit_edge, label %do.end45

do.end21.if.end48_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.end24:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 4
  %38 = ptrtoint ptr %tx_bd_vbase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_bd_vbase, align 4
  %arrayidx25 = getelementptr %struct.qtnf_pearl_tx_bd, ptr %39, i32 %19
  %40 = ptrtoint ptr %skb_paddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %skb_paddr, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %arrayidx25, align 1
  %addr_h = getelementptr %struct.qtnf_pearl_tx_bd, ptr %39, i32 %19, i32 1
  %44 = ptrtoint ptr %addr_h to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 0, ptr %addr_h, align 1
  %and26 = and i32 %24, 65535
  %45 = tail call i32 @llvm.bswap.i32(i32 %and26)
  %info27 = getelementptr %struct.qtnf_pearl_tx_bd, ptr %39, i32 %19, i32 2
  %46 = ptrtoint ptr %info27 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %info27, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !250
  %tx_bd_pbase = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 5
  %47 = ptrtoint ptr %tx_bd_pbase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_bd_pbase, align 4
  %mul = shl i32 %19, 4
  %add = add i32 %48, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !251
  tail call void @arm_heavy_mb() #11
  %49 = tail call i32 @llvm.bswap.i32(i32 %add)
  %pcie_reg_base = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 3
  %50 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr = getelementptr i8, ptr %51, i32 11280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %49) #11, !srcloc !226
  %inc = add i32 %19, 1
  %52 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %tx_bd_num.i, align 4
  %conv32 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv32)
  %cmp33.not = icmp slt i32 %inc, %conv32
  %spec.store.select = select i1 %cmp33.not, i32 %inc, i32 0
  %54 = ptrtoint ptr %tx_bd_w_index.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.store.select, ptr %tx_bd_w_index.i, align 4
  br label %if.end53

do.end45:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #14
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %do.end21.if.end48_crit_edge
  %55 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %tobool49.not = icmp eq ptr %57, null
  br i1 %tobool49.not, label %if.end48.if.end52_crit_edge, label %if.then50

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 36, i32 7
  %58 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_dropped, align 4
  %inc51 = add i32 %59, 1
  store i32 %inc51, ptr %tx_dropped, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end24
  %tx_done_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 26
  %60 = ptrtoint ptr %tx_done_count to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_done_count, align 4
  %inc54 = add i32 %61, 1
  store i32 %inc54, ptr %tx_done_count, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #11
  call fastcc void @qtnf_pearl_data_tx_reclaim(ptr noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end
  %retval.0 = phi i32 [ 0, %if.end53 ], [ 16, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_paddr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtnf_pearl_data_tx_reclaim(ptr noundef %ps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_reclaim_lock = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_reclaim_lock) #11
  %pcie_reg_base = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 3
  %0 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 11536
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !228
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %tx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 15
  %4 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_bd_num, align 4
  %conv8 = zext i16 %5 to i32
  %sub = add nsw i32 %conv8, -1
  %and = and i32 %sub, %3
  %tx_bd_r_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 23
  %6 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bd_r_index, align 4
  %sub972 = sub i32 %and, %7
  %and1375 = and i32 %sub, %sub972
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1375)
  %tobool.not76 = icmp eq i32 %and1375, 0
  br i1 %tobool.not76, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 17
  %tx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 4
  %tx_stopped = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 30
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.body.lr.ph
  %i.078 = phi i32 [ %7, %while.body.lr.ph ], [ %spec.store.select, %if.end31.while.body_crit_edge ]
  %count.077 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end31.while.body_crit_edge ]
  %8 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_skb, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.078
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %while.body.if.end31_crit_edge, label %if.then, !prof !224

while.body.if.end31_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then:                                          ; preds = %while.body
  %12 = ptrtoint ptr %tx_bd_vbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_bd_vbase, align 4
  %arrayidx17 = getelementptr %struct.qtnf_pearl_tx_bd, ptr %13, i32 %i.078
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx17, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ps, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %16, i32 noundef %20, i32 noundef 1, i32 noundef 0) #11
  %21 = getelementptr inbounds %struct.anon.51, ptr %11, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %if.then.if.end30_crit_edge, label %if.then19

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then19:                                        ; preds = %if.then
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %26 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 130
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 64
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %35, %29
  %36 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %36, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #11
  %conv.i = zext i32 %25 to i64
  %tx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_bytes.i, align 8
  %add2.i = add i64 %38, %conv.i
  store i64 %add2.i, ptr %tx_bytes.i, align 8
  %tx_packets.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_packets.i, align 16
  %add4.i = add i64 %40, 1
  store i64 %add4.i, ptr %tx_packets.i, align 16
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %36, i32 0, i32 4, i32 0, i32 1
  %41 = tail call ptr @llvm.returnaddress(i32 0) #11
  %42 = ptrtoint ptr %41 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %42) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !245
  %43 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %44, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %45 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_stopped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool21.not = icmp eq i8 %46, 0
  br i1 %tobool21.not, label %if.then19.if.end30_crit_edge, label %if.then28, !prof !249

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %21, align 8
  tail call void @qtnf_wake_all_queues(ptr noundef %48) #11
  %49 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %tx_stopped, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then19.if.end30_crit_edge, %if.then.if.end30_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 1) #11
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %while.body.if.end31_crit_edge
  %50 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_skb, align 4
  %arrayidx33 = getelementptr ptr, ptr %51, i32 %i.078
  %52 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx33, align 4
  %inc = add i32 %count.077, 1
  %inc34 = add i32 %i.078, 1
  %53 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %tx_bd_num, align 4
  %conv36 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc34, i32 %conv36)
  %cmp37.not = icmp slt i32 %inc34, %conv36
  %spec.store.select = select i1 %cmp37.not, i32 %inc34, i32 0
  %sub9 = sub i32 %and, %spec.store.select
  %sub12 = add nsw i32 %conv36, -1
  %and13 = and i32 %sub12, %sub9
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.end31.while.end_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end31.while.end_crit_edge, %entry.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %if.end31.while.end_crit_edge ]
  %i.0.lcssa = phi i32 [ %7, %entry.while.end_crit_edge ], [ %spec.store.select, %if.end31.while.end_crit_edge ]
  %tx_reclaim_done = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 27
  %55 = ptrtoint ptr %tx_reclaim_done to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_reclaim_done, align 4
  %add = add i32 %56, %count.0.lcssa
  store i32 %add, ptr %tx_reclaim_done, align 4
  %tx_reclaim_req = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 28
  %57 = ptrtoint ptr %tx_reclaim_req to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_reclaim_req, align 4
  %inc41 = add i32 %58, 1
  store i32 %inc41, ptr %tx_reclaim_req, align 4
  %59 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %i.0.lcssa, ptr %tx_bd_r_index, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_reclaim_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_wake_all_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !253
  %5 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !254
  %14 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !255
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !256
  %33 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !249

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !257
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #11
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #11
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_data_tx_meta(ptr noundef %bus, ptr noundef %skb, i32 noundef %macid, i32 noundef %vifid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

skb_tailroom.exit:                                ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.neg = sub i32 4, %sub.ptr.lhs.cast.i
  %phi.bo = add i32 %sub.ptr.sub.i.neg, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %cmp = icmp sgt i32 %phi.bo, 0
  br i1 %cmp, label %skb_tailroom.exit.land.lhs.true_crit_edge, label %skb_tailroom.exit.if.end_crit_edge

skb_tailroom.exit.if.end_crit_edge:               ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

skb_tailroom.exit.land.lhs.true_crit_edge:        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %skb_tailroom.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %cond.i.neg29 = phi i32 [ %phi.bo, %skb_tailroom.exit.land.lhs.true_crit_edge ], [ 4, %entry.land.lhs.true_crit_edge ]
  %call1 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef %cond.i.neg29, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %6 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 7
  %9 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %skb_tailroom.exit.if.end_crit_edge
  %call2 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #11
  %11 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -85, ptr %call2, align 1
  %magic_e = getelementptr inbounds %struct.qtnf_frame_meta_info, ptr %call2, i32 0, i32 3
  %12 = ptrtoint ptr %magic_e to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -70, ptr %magic_e, align 1
  %conv = trunc i32 %macid to i8
  %macid3 = getelementptr inbounds %struct.qtnf_frame_meta_info, ptr %call2, i32 0, i32 2
  %13 = ptrtoint ptr %macid3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %macid3, align 1
  %conv4 = trunc i32 %vifid to i8
  %ifidx = getelementptr inbounds %struct.qtnf_frame_meta_info, ptr %call2, i32 0, i32 1
  %14 = ptrtoint ptr %ifidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4, ptr %ifidx, align 1
  %call5 = tail call fastcc i32 @qtnf_pcie_skb_send(ptr noundef %bus, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 16
  br i1 %cmp6, label %if.then10, label %if.end.cleanup_crit_edge, !prof !224

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %15 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !249

do.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 2789, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end21.critedge.i.i:                            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %sub11 = add i32 %18, -4
  store i32 %sub11, ptr %len, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %sub11
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21.critedge.i.i, %do.end.i.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call5, %if.end.cleanup_crit_edge ], [ 16, %do.end.i.i ], [ 16, %if.end21.critedge.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_ep_fw_load(ptr noundef %ps, ptr noundef %fw, i32 noundef %fw_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %fw_size, 2020
  %0 = mul i32 %div, 2020
  %rem.decomposed = sub i32 %fw_size, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp ne i32 %rem.decomposed, 0
  %cond = zext i1 %tobool.not to i32
  %add = add nuw nsw i32 %div, %cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_ep_fw_load, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_ep_fw_load.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, ptr noundef %fw, i32 noundef %fw_size) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = tail call i32 @llvm.bswap.i32(i32 %fw_size) #11
  %add.ptr8.i = getelementptr i8, ptr %fw, i32 %fw_size
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 -2020
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr8.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp127.not = icmp eq i32 %add, 0
  br i1 %cmp127.not, label %do.end.do.body60_crit_edge, label %while.cond.outer.split.lr.ph

do.end.do.body60_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body60

while.cond.outer.split.lr.ph:                     ; preds = %do.end
  %sub = add nsw i32 %add, -1
  %bda = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 2
  %and40 = and i32 %add, 15
  %.neg = mul nsw i32 %and40, -2020
  %mul.neg = add nsw i32 %.neg, 2020
  %sub41 = sub nsw i32 %sub, %and40
  br label %while.cond.outer.split

while.cond.outer.split:                           ; preds = %while.cond.outer.backedge.while.cond.outer.split_crit_edge, %while.cond.outer.split.lr.ph
  %sub.ptr.sub.i137 = phi i32 [ %fw_size, %while.cond.outer.split.lr.ph ], [ %sub.ptr.sub.i, %while.cond.outer.backedge.while.cond.outer.split_crit_edge ]
  %spec.select47.i135 = phi i32 [ 0, %while.cond.outer.split.lr.ph ], [ %spec.select47.i, %while.cond.outer.backedge.while.cond.outer.split_crit_edge ]
  %2 = phi i32 [ 0, %while.cond.outer.split.lr.ph ], [ %46, %while.cond.outer.backedge.while.cond.outer.split_crit_edge ]
  %pblk.0.ph133 = phi ptr [ %fw, %while.cond.outer.split.lr.ph ], [ %pblk.0.ph.be, %while.cond.outer.backedge.while.cond.outer.split_crit_edge ]
  %threshold.0.ph132 = phi i32 [ 0, %while.cond.outer.split.lr.ph ], [ %inc, %while.cond.outer.backedge.while.cond.outer.split_crit_edge ]
  %blk.0.ph131 = phi i32 [ 0, %while.cond.outer.split.lr.ph ], [ %blk.0.ph.be, %while.cond.outer.backedge.while.cond.outer.split_crit_edge ]
  %cmp.not.i136 = icmp ugt ptr %add.ptr9.i, %pblk.0.ph133
  %spec.store.select = select i1 %cmp.not.i136, i32 %spec.select47.i135, i32 33554432
  %spec.select138 = select i1 %cmp.not.i136, i32 2020, i32 %sub.ptr.sub.i137
  %3 = tail call i32 @llvm.bswap.i32(i32 %spec.select138) #11
  br label %while.cond

while.cond:                                       ; preds = %qtnf_ep_fw_send.exit.while.cond_crit_edge, %while.cond.outer.split
  %threshold.0 = phi i32 [ %inc, %qtnf_ep_fw_send.exit.while.cond_crit_edge ], [ %threshold.0.ph132, %while.cond.outer.split ]
  %inc = add i32 %threshold.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %inc)
  %cmp4 = icmp sgt i32 %inc, 10000
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50) #14
  br label %cleanup

if.end11:                                         ; preds = %while.cond
  %4 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2048, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end11.qtnf_ep_fw_send.exit_crit_edge, label %if.end.i

if.end11.qtnf_ep_fw_send.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %qtnf_ep_fw_send.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %len2.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2048, ptr %len2.i, align 4
  %9 = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %9, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = call ptr @memcpy(ptr %12, ptr @.str.62, i32 7)
  %fwsize.i = getelementptr inbounds %struct.qtnf_pearl_fw_hdr, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %fwsize.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %1, ptr %fwsize.i, align 1
  %seqnum.i = getelementptr inbounds %struct.qtnf_pearl_fw_hdr, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %2, ptr %seqnum.i, align 1
  %16 = getelementptr inbounds %struct.qtnf_pearl_fw_hdr, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %spec.select47.i135, ptr %16, align 1
  %18 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 28
  store i32 %spec.store.select, ptr %16, align 1
  %pktlen.i = getelementptr inbounds %struct.qtnf_pearl_fw_hdr, ptr %12, i32 0, i32 4
  %19 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %3, ptr %pktlen.i, align 1
  %20 = call ptr @memcpy(ptr %add.ptr.i, ptr %pblk.0.ph133, i32 %spec.select138)
  %call14.i = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr.i, i32 noundef %spec.select138) #15
  %neg.i = xor i32 %call14.i, -1
  %21 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #11
  %crc.i = getelementptr inbounds %struct.qtnf_pearl_fw_hdr, ptr %12, i32 0, i32 5
  %22 = ptrtoint ptr %crc.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %crc.i, align 1
  %call15.i = tail call fastcc i32 @qtnf_pcie_skb_send(ptr noundef %7, ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  %spec.select = select i1 %cmp16.i, i32 %spec.select138, i32 0
  br label %qtnf_ep_fw_send.exit

qtnf_ep_fw_send.exit:                             ; preds = %if.end.i, %if.end11.qtnf_ep_fw_send.exit_crit_edge
  %retval.0.i116 = phi i32 [ -12, %if.end11.qtnf_ep_fw_send.exit_crit_edge ], [ %spec.select, %if.end.i ]
  %cmp13 = icmp slt i32 %retval.0.i116, 1
  br i1 %cmp13, label %qtnf_ep_fw_send.exit.while.cond_crit_edge, label %if.end15

qtnf_ep_fw_send.exit.while.cond_crit_edge:        ; preds = %qtnf_ep_fw_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end15:                                         ; preds = %qtnf_ep_fw_send.exit
  %add16 = add nsw i32 %blk.0.ph131, 1
  %and = and i32 %add16, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %blk.0.ph131, i32 %sub)
  %cmp18 = icmp eq i32 %blk.0.ph131, %sub
  %or.cond = select i1 %tobool17.not, i1 true, i1 %cmp18
  br i1 %or.cond, label %if.then19, label %if.end15.while.cond.outer.backedge_crit_edge

if.end15.while.cond.outer.backedge_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.outer.backedge

if.then19:                                        ; preds = %if.end15
  %23 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bda, align 4
  %bda_rc_state = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_rc_state) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  %26 = or i32 %25, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_rc_state, i32 %26) #11, !srcloc !226
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_rc_state) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  %28 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bda, align 4
  %bda_ep_state = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %29, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then19
  %timeout.0.i = phi i32 [ 0, %if.then19 ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !238
  %31 = and i32 %30, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %while.body.i, label %if.end29

while.body.i:                                     ; preds = %while.cond.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #11
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond = icmp eq i32 %inc.i, 3001
  br i1 %exitcond, label %do.end26, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

do.end26:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50) #14
  br label %cleanup

if.end29:                                         ; preds = %while.cond.i
  %32 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bda, align 4
  %bda_ep_state31 = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %33, i32 0, i32 3
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state31) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !239
  %35 = and i32 %34, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_ep_state31, i32 %35) #11, !srcloc !226
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state31) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  %37 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bda, align 4
  %bda_ep_state33 = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %38, i32 0, i32 3
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state33) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !238
  %40 = and i32 %39, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool35.not = icmp eq i32 %40, 0
  br i1 %tobool35.not, label %if.end56, label %if.then36

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %sub44 = add i32 %blk.0.ph131, -15
  %add43.neg = sub i32 %mul.neg, %retval.0.i116
  %.sink = select i1 %cmp18, i32 %add43.neg, i32 -30300
  %blk.1 = select i1 %cmp18, i32 %sub41, i32 %sub44
  %41 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bda, align 4
  %bda_ep_state50 = getelementptr inbounds %struct.qtnf_pearl_bda, ptr %42, i32 0, i32 3
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state50) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !239
  %44 = and i32 %43, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_ep_state50, i32 %44) #11, !srcloc !226
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_state50) #11, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.50, i32 noundef %blk.1) #14
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end56, %if.then36, %if.end15.while.cond.outer.backedge_crit_edge
  %blk.0.ph.be = phi i32 [ %blk.1, %if.then36 ], [ %add16, %if.end15.while.cond.outer.backedge_crit_edge ], [ %add16, %if.end56 ]
  %retval.0.i116.pn = phi i32 [ %.sink, %if.then36 ], [ %retval.0.i116, %if.end15.while.cond.outer.backedge_crit_edge ], [ %retval.0.i116, %if.end56 ]
  %pblk.0.ph.be = getelementptr i8, ptr %pblk.0.ph133, i32 %retval.0.i116.pn
  %cmp = icmp slt i32 %blk.0.ph.be, %add
  %46 = tail call i32 @llvm.bswap.i32(i32 %blk.0.ph.be) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blk.0.ph.be)
  %tobool3.not.i = icmp eq i32 %blk.0.ph.be, 0
  %spec.select47.i = select i1 %tobool3.not.i, i32 0, i32 16777216
  %sub.ptr.rhs.cast.i = ptrtoint ptr %pblk.0.ph.be to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br i1 %cmp, label %while.cond.outer.backedge.while.cond.outer.split_crit_edge, label %while.cond.outer.backedge.do.body60_crit_edge

while.cond.outer.backedge.do.body60_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body60

while.cond.outer.backedge.while.cond.outer.split_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.outer.split

if.end56:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @qtnf_pearl_data_tx_reclaim(ptr noundef %ps)
  br label %while.cond.outer.backedge

do.body60:                                        ; preds = %while.cond.outer.backedge.do.body60_crit_edge, %do.end.do.body60_crit_edge
  %blk.0.ph.lcssa126 = phi i32 [ 0, %do.end.do.body60_crit_edge ], [ %blk.0.ph.be, %while.cond.outer.backedge.do.body60_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_ep_fw_load, %if.then72)) #11
          to label %cleanup [label %if.then72], !srcloc !246

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_ep_fw_load.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.50, i32 noundef %blk.0.ph.lcssa126) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body60, %do.end26, %do.end8
  %retval.0 = phi i32 [ -110, %do.end8 ], [ -110, %do.end26 ], [ 0, %if.then72 ], [ 0, %do.body60 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_pcie_fw_boot_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_debugfs_add_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_dbg_hdp_stats(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %tx_full_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 25
  %4 = ptrtoint ptr %tx_full_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_full_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %5) #11
  %tx_done_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 26
  %6 = ptrtoint ptr %tx_done_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_done_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.64, i32 noundef %7) #11
  %tx_reclaim_done = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 27
  %8 = ptrtoint ptr %tx_reclaim_done to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_reclaim_done, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, i32 noundef %9) #11
  %tx_reclaim_req = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 28
  %10 = ptrtoint ptr %tx_reclaim_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_reclaim_req, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, i32 noundef %11) #11
  %tx_bd_r_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 23
  %12 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_bd_r_index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.67, i32 noundef %13) #11
  %pcie_reg_base = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 3
  %14 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 11536
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !228
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !258
  %tx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 15
  %18 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_bd_num, align 4
  %conv = zext i16 %19 to i32
  %sub = add nsw i32 %conv, -1
  %and = and i32 %sub, %17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef %and) #11
  %tx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 22
  %20 = ptrtoint ptr %tx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_bd_w_index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.69, i32 noundef %21) #11
  %22 = ptrtoint ptr %tx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_bd_w_index, align 4
  %24 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_bd_r_index, align 4
  %sub6 = sub i32 %23, %25
  %26 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tx_bd_num, align 4
  %conv8 = zext i16 %27 to i32
  %sub9 = add nsw i32 %conv8, -1
  %and10 = and i32 %sub9, %sub6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.70, i32 noundef %and10) #11
  %rx_bd_r_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 21
  %28 = ptrtoint ptr %rx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_bd_r_index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, i32 noundef %29) #11
  %30 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr14 = getelementptr i8, ptr %31, i32 11552
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #11, !srcloc !228
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !259
  %rx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 16
  %34 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_bd_num, align 2
  %conv18 = zext i16 %35 to i32
  %sub19 = add nsw i32 %conv18, -1
  %and20 = and i32 %sub19, %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, i32 noundef %and20) #11
  %rx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 20
  %36 = ptrtoint ptr %rx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_bd_w_index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, i32 noundef %37) #11
  %38 = ptrtoint ptr %rx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_bd_r_index, align 4
  %40 = ptrtoint ptr %rx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_bd_w_index, align 4
  %add.neg = xor i32 %41, -1
  %sub23 = add i32 %39, %add.neg
  %42 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rx_bd_num, align 2
  %conv25 = zext i16 %43 to i32
  %sub26 = add nsw i32 %conv25, -1
  %and27 = and i32 %sub26, %sub23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.74, i32 noundef %and27) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_dbg_irq_stats(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !224

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #11
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %pcie_reg_base = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 11324
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !228
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !260
  %pcie_irq_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 24
  %8 = ptrtoint ptr %pcie_irq_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcie_irq_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.75, i32 noundef %9) #11
  %pcie_irq_tx_count = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 13
  %10 = ptrtoint ptr %pcie_irq_tx_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcie_irq_tx_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.76, i32 noundef %11) #11
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %cond = select i1 %cmp.not, ptr @.str.79, ptr @.str.78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, ptr noundef nonnull %cond) #11
  %pcie_irq_rx_count = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 12
  %12 = ptrtoint ptr %pcie_irq_rx_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcie_irq_rx_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.80, i32 noundef %13) #11
  %and4 = and i32 %7, 45056
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 45056
  %cond6 = select i1 %cmp5, ptr @.str.78, ptr @.str.79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.81, ptr noundef nonnull %cond6) #11
  %pcie_irq_uf_count = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %retval.0.i, i32 0, i32 14
  %14 = ptrtoint ptr %pcie_irq_uf_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcie_irq_uf_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i32 noundef %15) #11
  %and7 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %cmp8.not, ptr @.str.79, ptr @.str.78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.83, ptr noundef nonnull %cond9) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_pcie_alloc_skb_array(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pearl_alloc_bd_table(ptr nocapture noundef %ps) unnamed_addr #0 align 64 {
entry:
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #11
  %0 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %paddr, align 4, !annotation !223
  %tx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 15
  %1 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tx_bd_num, align 4
  %conv = zext i16 %2 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %rx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 16
  %3 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rx_bd_num, align 2
  %conv1 = zext i16 %4 to i32
  %mul2 = mul nuw nsw i32 %conv1, 24
  %add = add nuw nsw i32 %mul2, %mul
  %5 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i = call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %paddr, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_table_vaddr = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 9
  %7 = ptrtoint ptr %bd_table_vaddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %bd_table_vaddr, align 4
  %8 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paddr, align 4
  %bd_table_paddr = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 8
  %10 = ptrtoint ptr %bd_table_paddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bd_table_paddr, align 4
  %bd_table_len = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 10
  %11 = ptrtoint ptr %bd_table_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %bd_table_len, align 4
  %tx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 4
  %12 = ptrtoint ptr %tx_bd_vbase to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %tx_bd_vbase, align 4
  %tx_bd_pbase = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 5
  %13 = ptrtoint ptr %tx_bd_pbase to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %tx_bd_pbase, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pearl_alloc_bd_table.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pearl_alloc_bd_table, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !246

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pearl_alloc_bd_table.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, ptr noundef nonnull %call.i, ptr noundef nonnull %paddr) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %tx_bd_r_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 23
  %14 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tx_bd_r_index, align 4
  %tx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 22
  %15 = ptrtoint ptr %tx_bd_w_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tx_bd_w_index, align 4
  %16 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_bd_num, align 4
  %conv10 = zext i16 %17 to i32
  %add.ptr = getelementptr %struct.qtnf_pearl_tx_bd, ptr %call.i, i32 %conv10
  %mul13 = shl nuw nsw i32 %conv10, 4
  %18 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %paddr, align 4
  %add14 = add i32 %mul13, %19
  store i32 %add14, ptr %paddr, align 4
  %rx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 6
  %20 = ptrtoint ptr %rx_bd_vbase to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %rx_bd_vbase, align 4
  %rx_bd_pbase = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 7
  %21 = ptrtoint ptr %rx_bd_pbase to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add14, ptr %rx_bd_pbase, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !261
  call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %paddr, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %pcie_reg_base = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 3
  %25 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr18 = getelementptr i8, ptr %26, i32 11568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %24) #11, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !262
  call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rx_bd_num, align 2
  %conv23 = zext i16 %28 to i32
  %or = or i32 %conv23, 1572864
  %29 = call i32 @llvm.bswap.i32(i32 %or)
  %30 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr25 = getelementptr i8, ptr %31, i32 11564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %29) #11, !srcloc !226
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pearl_alloc_bd_table.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pearl_alloc_bd_table, %if.then38)) #11
          to label %cleanup [label %if.then38], !srcloc !246

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pearl_alloc_bd_table.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.101, ptr noundef %add.ptr, ptr noundef nonnull %paddr) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pearl_skb2rbd_attach(ptr nocapture noundef %ps, i16 noundef zeroext %index) unnamed_addr #0 align 64 {
entry:
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #11
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2050, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 18
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skb, align 4
  %idxprom = zext i16 %index to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %6, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %rx_skb1 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 18
  %7 = ptrtoint ptr %rx_skb1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_skb1, align 4
  %idxprom2 = zext i16 %index to i32
  %arrayidx3 = getelementptr ptr, ptr %8, i32 %idxprom2
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %arrayidx3, align 4
  %rx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 6
  %10 = ptrtoint ptr %rx_bd_vbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_bd_vbase, align 4
  %12 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = load ptr, ptr %data.i.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %14) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !249

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i45 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i45, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %14, i32 noundef 2048) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %14 to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %21 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %paddr, align 4
  %22 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ps, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev8, i32 noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.106, ptr noundef nonnull %paddr) #14
  br label %cleanup

if.end13:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5 = getelementptr %struct.qtnf_pearl_rx_bd, ptr %11, i32 %idxprom2
  %24 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %paddr, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %arrayidx5, align 1
  %addr_h = getelementptr %struct.qtnf_pearl_rx_bd, ptr %11, i32 %idxprom2, i32 1
  %28 = ptrtoint ptr %addr_h to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %addr_h, align 1
  %info = getelementptr %struct.qtnf_pearl_rx_bd, ptr %11, i32 %idxprom2, i32 2
  %29 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %info, align 1
  %rx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ps, i32 0, i32 20
  %30 = ptrtoint ptr %rx_bd_w_index to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %idxprom2, ptr %rx_bd_w_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !263
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %paddr, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %pcie_reg_base = getelementptr inbounds %struct.qtnf_pcie_pearl_state, ptr %ps, i32 0, i32 3
  %34 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 11520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %33) #11, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !265
  tail call void @arm_heavy_mb() #11
  %36 = tail call i32 @llvm.bswap.i32(i32 %idxprom2)
  %37 = ptrtoint ptr %pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcie_reg_base, align 4
  %add.ptr26 = getelementptr i8, ptr %38, i32 11576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %36) #11, !srcloc !226
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %if.then
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end13 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_classify_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !19, !20, !21, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212}
!llvm.named.register.sp = !{!213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/quantenna/qtnfmac/bus.h", i32 94, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @qtnf_pcie_pearl_probe.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1120, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qtnf_pcie_pearl_probe.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1121, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1129, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @qtnf_pcie_pearl_probe._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @qtnf_pcie_pearl_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1141, i32 11}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1143, i32 3}
!19 = !{ptr @qtnf_pcie_pearl_probe._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @qtnf_pcie_pearl_probe._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @qtnf_pcie_pearl_bus_ops, !22, !"qtnf_pcie_pearl_bus_ops", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 839, i32 28}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 565, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @qtnf_pcie_skb_send._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @qtnf_pcie_skb_send._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 597, i32 3}
!30 = !{ptr @qtnf_pcie_skb_send._rs, !29, !"_rs", i1 false, i1 false}
!31 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @qtnf_pcie_skb_send._entry.15, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @qtnf_pcie_skb_send._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @qtnf_tx_queue_ready._rs, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 526, i32 4}
!36 = !{ptr @__func__.qtnf_tx_queue_ready, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @qtnf_tx_queue_ready._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @qtnf_tx_queue_ready._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1026, i32 23}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1036, i32 4}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @qtnf_pearl_fw_work_handler._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @qtnf_pearl_fw_work_handler._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1045, i32 3}
!58 = !{ptr @qtnf_pearl_fw_work_handler._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @qtnf_pearl_fw_work_handler._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1056, i32 3}
!62 = !{ptr @qtnf_pearl_fw_work_handler._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @qtnf_pearl_fw_work_handler._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1059, i32 3}
!66 = !{ptr @qtnf_pearl_fw_work_handler._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @qtnf_pearl_fw_work_handler._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1064, i32 4}
!70 = !{ptr @qtnf_pearl_fw_work_handler._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @qtnf_pearl_fw_work_handler._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1071, i32 3}
!74 = !{ptr @qtnf_pearl_fw_work_handler._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @qtnf_pearl_fw_work_handler._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1077, i32 3}
!78 = !{ptr @qtnf_pearl_fw_work_handler._entry.41, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @qtnf_pearl_fw_work_handler._entry_ptr.43, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1081, i32 2}
!82 = !{ptr @qtnf_pearl_fw_work_handler._entry.44, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @qtnf_pearl_fw_work_handler._entry_ptr.46, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1087, i32 30}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1088, i32 30}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 964, i32 2}
!90 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug468, !89, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!93 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 968, i32 4}
!96 = !{ptr @qtnf_ep_fw_load._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qtnf_ep_fw_load._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 983, i32 5}
!100 = !{ptr @qtnf_ep_fw_load._entry.54, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qtnf_ep_fw_load._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1006, i32 5}
!104 = !{ptr @qtnf_ep_fw_load._entry.57, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @qtnf_ep_fw_load._entry_ptr.59, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 1017, i32 2}
!108 = !{ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug469, !107, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!109 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 928, i32 24}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 881, i32 16}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 882, i32 16}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 883, i32 16}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 884, i32 16}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 886, i32 16}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 887, i32 16}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 890, i32 16}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 891, i32 16}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 895, i32 16}
!130 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 896, i32 16}
!132 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 899, i32 16}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 900, i32 16}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 858, i32 16}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 859, i32 16}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 861, i32 16}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 862, i32 41}
!144 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 862, i32 48}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 863, i32 16}
!148 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 865, i32 16}
!150 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 867, i32 16}
!152 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 869, i32 16}
!154 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 414, i32 3}
!156 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @qtnf_pcie_pearl_init_xfer._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @qtnf_pcie_pearl_init_xfer._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 427, i32 3}
!161 = !{ptr @qtnf_pcie_pearl_init_xfer._entry.86, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @qtnf_pcie_pearl_init_xfer._entry_ptr.88, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 439, i32 3}
!165 = !{ptr @qtnf_pcie_pearl_init_xfer._entry.89, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @qtnf_pcie_pearl_init_xfer._entry_ptr.91, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.93, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 445, i32 3}
!169 = !{ptr @qtnf_pcie_pearl_init_xfer._entry.92, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @qtnf_pcie_pearl_init_xfer._entry_ptr.94, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.96, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 451, i32 3}
!173 = !{ptr @qtnf_pcie_pearl_init_xfer._entry.95, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @qtnf_pcie_pearl_init_xfer._entry_ptr.97, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.99, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 457, i32 3}
!177 = !{ptr @qtnf_pcie_pearl_init_xfer._entry.98, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @qtnf_pcie_pearl_init_xfer._entry_ptr.100, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.101, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 255, i32 2}
!181 = !{ptr @.str.102, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @pearl_alloc_bd_table.__UNIQUE_ID_ddebug465, !180, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!183 = !{ptr @.str.103, !180, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.104, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 277, i32 2}
!186 = !{ptr @pearl_alloc_bd_table.__UNIQUE_ID_ddebug466, !185, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!187 = !{ptr @.str.105, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.106, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 301, i32 3}
!190 = !{ptr @pearl_skb2rbd_attach._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @pearl_skb2rbd_attach._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.107, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 733, i32 4}
!194 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @qtnf_pcie_pearl_rx_poll._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @qtnf_pcie_pearl_rx_poll._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.110, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 738, i32 4}
!199 = !{ptr @qtnf_pcie_pearl_rx_poll._entry.109, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @qtnf_pcie_pearl_rx_poll._entry_ptr.111, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.113, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 743, i32 4}
!203 = !{ptr @qtnf_pcie_pearl_rx_poll._entry.112, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @qtnf_pcie_pearl_rx_poll._entry_ptr.114, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.115, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 763, i32 5}
!207 = !{ptr @qtnf_pcie_pearl_rx_poll.__UNIQUE_ID_ddebug467, !206, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!208 = !{ptr @.str.116, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.118, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pearl_pcie.c", i32 789, i32 5}
!211 = !{ptr @qtnf_pcie_pearl_rx_poll._entry.117, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @qtnf_pcie_pearl_rx_poll._entry_ptr.119, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{!"sp"}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{!"auto-init"}
!224 = !{!"branch_weights", i32 1, i32 2000}
!225 = !{i64 2158498329}
!226 = !{i64 5010641}
!227 = !{i32 0, i32 33}
!228 = !{i64 5011059}
!229 = !{i64 2158423375}
!230 = !{i64 2158423724}
!231 = !{i64 2158424263}
!232 = !{i64 2158424733}
!233 = !{i64 2158404586}
!234 = !{i64 2158391103}
!235 = !{i64 2158391714}
!236 = !{i8 0, i8 2}
!237 = !{i64 2158411672}
!238 = !{i64 2158411242}
!239 = !{i64 2158412102}
!240 = !{i64 2158447768}
!241 = !{i64 2158407322}
!242 = !{i64 2158409640}
!243 = !{i64 2158410309}
!244 = !{i64 2158408481}
!245 = !{i64 2149767368}
!246 = !{i64 2148719260, i64 2148719265, i64 2148719278, i64 2148719322, i64 2148719356, i64 2148719377}
!247 = !{i64 2158405933}
!248 = !{i64 2158403562}
!249 = !{!"branch_weights", i32 2000, i32 1}
!250 = !{i64 2158443647}
!251 = !{i64 2158443996}
!252 = !{i64 2158437231}
!253 = !{i64 2149659050}
!254 = !{i64 2149663982}
!255 = !{i64 2149685694}
!256 = !{i64 2149690586}
!257 = !{i64 2149767043}
!258 = !{i64 2158466911}
!259 = !{i64 2158467582}
!260 = !{i64 2158465213}
!261 = !{i64 2158415165}
!262 = !{i64 2158415779}
!263 = !{i64 2158421059}
!264 = !{i64 2158421398}
!265 = !{i64 2158421960}
