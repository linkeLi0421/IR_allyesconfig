; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qtnf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.qtnf_pcie_bus_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, %struct.tasklet_struct, ptr, ptr, ptr, %struct.qtnf_shm_ipc, %struct.qtnf_shm_ipc, i16, i16, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.154, i32 }
%union.anon.154 = type { ptr }
%struct.qtnf_shm_ipc = type { ptr, i32, i32, i32, i32, i8, %struct.qtnf_shm_ipc_int, %struct.qtnf_shm_ipc_rx_callback, ptr, ptr, %struct.work_struct, %struct.completion }
%struct.qtnf_shm_ipc_rx_callback = type { ptr, ptr }
%struct.qtnf_pcie_topaz_state = type { %struct.qtnf_pcie_bus_priv, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.qtnf_topaz_bda = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [56 x i8], i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, [256 x %struct.vmac_pkt_info], [1872 x i8], %struct.qtnf_shm_ipc_region, %struct.qtnf_shm_ipc_region }
%struct.vmac_pkt_info = type { i32, i32 }
%struct.qtnf_shm_ipc_region = type { %union.qtnf_shm_ipc_region_headroom, [4064 x i8] }
%union.qtnf_shm_ipc_region_headroom = type { [32 x i8] }
%struct.qtnf_topaz_rx_bd = type { i32, i32 }
%struct.qtnf_topaz_tx_bd = type { i32, i32 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.qtnf_extra_bd_params = type { i32, i32, i32, i32 }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/quantenna/qtnfmac/bus.h\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qtnfmac: invalid bus pointer\00", [35 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_bus_ops = internal global { %struct.qtnf_bus_ops, [32 x i8] } { %struct.qtnf_bus_ops { ptr null, ptr null, ptr @qtnf_pcie_control_tx, ptr @qtnf_pcie_data_tx, ptr @qtnf_pcie_data_tx_timeout, ptr null, ptr @qtnf_pcie_data_rx_start, ptr @qtnf_pcie_data_rx_stop }, [32 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&bus->fw_work)\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qtnf_topaz_irq\00", [17 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qtnfmac_pcie: %s: failed to request pcie irq %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qtnf_pcie_topaz_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c\00", [39 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_probe._entry_ptr = internal global ptr @qtnf_pcie_topaz_probe._entry, section ".printk_index", align 4
@qtnf_pcie_topaz_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013qtnfmac_pcie: %s: failed to init card\0A\00", [55 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_probe._entry_ptr.9 = internal global ptr @qtnf_pcie_topaz_probe._entry.7, section ".printk_index", align 4
@qtnf_pcie_topaz_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qtnfmac_pcie: %s: PCIE xfer init failed\0A\00", [53 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_probe._entry_ptr.12 = internal global ptr @qtnf_pcie_topaz_probe._entry.10, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qtn/uboot_qsr1000.img\00", [42 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016qtnfmac_pcie: %s: booting firmware from flash\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qtnf_topaz_fw_work_handler\00", [37 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_work_handler._entry_ptr = internal global ptr @qtnf_topaz_fw_work_handler._entry, section ".printk_index", align 4
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qtn/fmac_qsr1000.img\00", [43 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_work_handler._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.6, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013qtnfmac_pcie: %s: FW bringup timed out\0A\00", [54 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_work_handler._entry_ptr.22 = internal global ptr @qtnf_topaz_fw_work_handler._entry.20, section ".printk_index", align 4
@qtnf_topaz_fw_work_handler._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.6, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013qtnfmac_pcie: %s: card bringup timed out\0A\00", [52 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_work_handler._entry_ptr.25 = internal global ptr @qtnf_topaz_fw_work_handler._entry.23, section ".printk_index", align 4
@qtnf_topaz_fw_work_handler._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.6, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013qtnfmac_pcie: %s: FW runtime failure\0A\00", [56 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_work_handler._entry_ptr.28 = internal global ptr @qtnf_topaz_fw_work_handler._entry.26, section ".printk_index", align 4
@qtnf_topaz_fw_work_handler._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.6, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016qtnfmac_pcie: %s: firmware is up and running\0A\00", [48 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_work_handler._entry_ptr.31 = internal global ptr @qtnf_topaz_fw_work_handler._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pkt_stats\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"irq_stats\00", [22 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qtnfmac_pcie: %s: %s: card is not ready\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qtnf_topaz_fw_upload\00", [43 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_upload._entry_ptr = internal global ptr @qtnf_topaz_fw_upload._entry, section ".printk_index", align 4
@qtnf_topaz_fw_upload._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.6, i32 1017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016qtnfmac_pcie: %s: starting firmware upload: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_upload._entry_ptr.38 = internal global ptr @qtnf_topaz_fw_upload._entry.36, section ".printk_index", align 4
@qtnf_topaz_fw_upload._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.6, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qtnfmac_pcie: %s: %s: request_firmware error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_upload._entry_ptr.41 = internal global ptr @qtnf_topaz_fw_upload._entry.39, section ".printk_index", align 4
@qtnf_topaz_fw_upload._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.6, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013qtnfmac_pcie: %s: %s: FW upload error\0A\00", [55 x i8] zeroinitializer }, align 32
@qtnf_topaz_fw_upload._entry_ptr.44 = internal global ptr @qtnf_topaz_fw_upload._entry.42, section ".printk_index", align 4
@qtnf_ep_fw_load.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.46, ptr @.str.6, ptr @.str.47, i8 0, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qtnfmac_pcie\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qtnf_ep_fw_load\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FW upload started: fw_addr = 0x%p, size=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"qtnfmac_pcie: %s: FW upload started: fw_addr = 0x%p, size=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.46, ptr @.str.6, ptr @.str.49, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"allocating %u bytes to upload FW\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"qtnfmac_pcie: %s: allocating %u bytes to upload FW\0A\00", [44 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.6, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013qtnfmac_pcie: %s: failed to allocate DMA buffer for FW upload\0A\00", [63 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry_ptr = internal global ptr @qtnf_ep_fw_load._entry, section ".printk_index", align 4
@qtnf_ep_fw_load._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.46, ptr @.str.6, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013qtnfmac_pcie: %s: card is not ready to download FW\0A\00", [42 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry_ptr.54 = internal global ptr @qtnf_ep_fw_load._entry.52, section ".printk_index", align 4
@qtnf_ep_fw_load.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.46, ptr @.str.6, ptr @.str.55, i8 0, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"chunk[%u] VA[0x%p] PA[%pad] sz[%u]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"qtnfmac_pcie: %s: chunk[%u] VA[0x%p] PA[%pad] sz[%u]\0A\00", [42 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.46, ptr @.str.6, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013qtnfmac_pcie: %s: confirmation for block #%d timed out\0A\00", [38 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry_ptr.59 = internal global ptr @qtnf_ep_fw_load._entry.57, section ".printk_index", align 4
@qtnf_ep_fw_load._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.46, ptr @.str.6, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013qtnfmac_pcie: %s: confirmation for the last block timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry_ptr.62 = internal global ptr @qtnf_ep_fw_load._entry.60, section ".printk_index", align 4
@qtnf_ep_fw_load._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.46, ptr @.str.6, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013qtnfmac_pcie: %s: confirmation for FW upload completion timed out\0A\00", [59 x i8] zeroinitializer }, align 32
@qtnf_ep_fw_load._entry_ptr.65 = internal global ptr @qtnf_ep_fw_load._entry.63, section ".printk_index", align 4
@qtnf_ep_fw_load.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.46, ptr @.str.6, ptr @.str.66, i8 0, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FW upload completed: totally sent %d blocks\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"qtnfmac_pcie: %s: FW upload completed: totally sent %d blocks\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_full_count(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_done_count(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_reclaim_done(%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_reclaim_req(%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_bd_r_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_done_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_bd_w_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx host queue len(%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx reclaim queue len(%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx card queue len(%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_bd_r_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_bd_w_index(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx alloc queue len(%u)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcie_irq_count(%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@qtnf_pre_init_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.6, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013qtnfmac_pcie: %s: failed to detect card endianness\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qtnf_pre_init_ep\00", [47 x i8] zeroinitializer }, align 32
@qtnf_pre_init_ep._entry_ptr = internal global ptr @qtnf_pre_init_ep._entry, section ".printk_index", align 4
@qtnf_pre_init_ep._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.6, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013qtnfmac_pcie: %s: card is not ready to boot...\0A\00", [46 x i8] zeroinitializer }, align 32
@qtnf_pre_init_ep._entry_ptr.86 = internal global ptr @qtnf_pre_init_ep._entry.84, section ".printk_index", align 4
@qtnf_pcie_endian_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.6, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013qtnfmac_pcie: %s: card endianness detection timed out\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qtnf_pcie_endian_detect\00", [40 x i8] zeroinitializer }, align 32
@qtnf_pcie_endian_detect._entry_ptr = internal global ptr @qtnf_pcie_endian_detect._entry, section ".printk_index", align 4
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: unexpected card endianness\00", [33 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_init_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014qtnfmac_pcie: %s: TX BD queue cannot exceed %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qtnf_pcie_topaz_init_xfer\00", [38 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_init_xfer._entry_ptr = internal global ptr @qtnf_pcie_topaz_init_xfer._entry, section ".printk_index", align 4
@qtnf_pcie_topaz_init_xfer._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.6, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014qtnfmac_pcie: %s: RX BD queue cannot exceed %d\0A\00", [46 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_init_xfer._entry_ptr.94 = internal global ptr @qtnf_pcie_topaz_init_xfer._entry.92, section ".printk_index", align 4
@qtnf_pcie_topaz_init_xfer._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.6, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013qtnfmac_pcie: %s: failed to allocate skb array\0A\00", [46 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_init_xfer._entry_ptr.97 = internal global ptr @qtnf_pcie_topaz_init_xfer._entry.95, section ".printk_index", align 4
@qtnf_pcie_topaz_init_xfer._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.91, ptr @.str.6, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013qtnfmac_pcie: %s: failed to allocate bd table\0A\00", [47 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_init_xfer._entry_ptr.100 = internal global ptr @qtnf_pcie_topaz_init_xfer._entry.98, section ".printk_index", align 4
@qtnf_pcie_topaz_init_xfer._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.91, ptr @.str.6, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qtnfmac_pcie: %s: failed to allocate rx buffers\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_pcie_topaz_init_xfer._entry_ptr.103 = internal global ptr @qtnf_pcie_topaz_init_xfer._entry.101, section ".printk_index", align 4
@topaz_alloc_bd_table.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.104, ptr @.str.6, ptr @.str.105, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"topaz_alloc_bd_table\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TX descriptor table: vaddr=0x%p paddr=%pad\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"qtnfmac_pcie: %s: TX descriptor table: vaddr=0x%p paddr=%pad\0A\00", [34 x i8] zeroinitializer }, align 32
@topaz_alloc_bd_table.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.104, ptr @.str.6, ptr @.str.107, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RX descriptor table: vaddr=0x%p paddr=%pad\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"qtnfmac_pcie: %s: RX descriptor table: vaddr=0x%p paddr=%pad\0A\00", [34 x i8] zeroinitializer }, align 32
@topaz_skb2rbd_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.6, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013qtnfmac_pcie: %s: skb mapping error: %pad\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"topaz_skb2rbd_attach\00", [43 x i8] zeroinitializer }, align 32
@topaz_skb2rbd_attach._entry_ptr = internal global ptr @topaz_skb2rbd_attach._entry, section ".printk_index", align 4
@qtnf_topaz_rx_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.6, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014qtnfmac_pcie: %s: skip invalid rxbd[%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qtnf_topaz_rx_poll\00", [45 x i8] zeroinitializer }, align 32
@qtnf_topaz_rx_poll._entry_ptr = internal global ptr @qtnf_topaz_rx_poll._entry, section ".printk_index", align 4
@qtnf_topaz_rx_poll._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.6, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014qtnfmac_pcie: %s: skip missing rx_skb[%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@qtnf_topaz_rx_poll._entry_ptr.115 = internal global ptr @qtnf_topaz_rx_poll._entry.113, section ".printk_index", align 4
@qtnf_topaz_rx_poll._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.112, ptr @.str.6, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013qtnfmac_pcie: %s: skip packet with invalid length: %u > %u\0A\00", [34 x i8] zeroinitializer }, align 32
@qtnf_topaz_rx_poll._entry_ptr.118 = internal global ptr @qtnf_topaz_rx_poll._entry.116, section ".printk_index", align 4
@qtnf_topaz_rx_poll.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.112, ptr @.str.6, ptr @.str.119, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drop untagged skb\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qtnfmac_pcie: %s: drop untagged skb\0A\00", [59 x i8] zeroinitializer }, align 32
@qtnf_topaz_rx_poll._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.112, ptr @.str.6, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013qtnfmac_pcie: %s: failed to allocate new rx_skb[%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@qtnf_topaz_rx_poll._entry_ptr.123 = internal global ptr @qtnf_topaz_rx_poll._entry.121, section ".printk_index", align 4
@___asan_gen_.128 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/bus.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 94, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"qtnf_pcie_topaz_bus_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 744, i32 28 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1130, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1141, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1143, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1151, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1157, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 326, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 271, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1045, i32 34 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1058, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1066, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1075, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1084, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1091, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1095, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1101, i32 30 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1102, i32 30 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1013, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1017, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1021, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1029, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 917, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 925, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 934, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 945, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 957, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 964, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 980, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 989, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 994, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 772, i32 16 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 773, i32 16 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 774, i32 16 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 775, i32 16 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 777, i32 16 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 778, i32 16 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 779, i32 16 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 781, i32 16 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 784, i32 16 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 787, i32 16 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 791, i32 16 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 792, i32 16 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 793, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 760, i32 16 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 859, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 879, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 829, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 839, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 347, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 359, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 372, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 378, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 384, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 211, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 224, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 261, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 639, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 644, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 649, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 669, i32 5 }
@___asan_gen_.460 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.464 = private constant [60 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 701, i32 5 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @qtnf_ep_fw_load._entry, ptr @qtnf_ep_fw_load._entry.52, ptr @qtnf_ep_fw_load._entry.57, ptr @qtnf_ep_fw_load._entry.60, ptr @qtnf_ep_fw_load._entry.63, ptr @qtnf_ep_fw_load._entry_ptr, ptr @qtnf_ep_fw_load._entry_ptr.54, ptr @qtnf_ep_fw_load._entry_ptr.59, ptr @qtnf_ep_fw_load._entry_ptr.62, ptr @qtnf_ep_fw_load._entry_ptr.65, ptr @qtnf_pcie_endian_detect._entry, ptr @qtnf_pcie_endian_detect._entry_ptr, ptr @qtnf_pcie_topaz_init_xfer._entry, ptr @qtnf_pcie_topaz_init_xfer._entry.101, ptr @qtnf_pcie_topaz_init_xfer._entry.92, ptr @qtnf_pcie_topaz_init_xfer._entry.95, ptr @qtnf_pcie_topaz_init_xfer._entry.98, ptr @qtnf_pcie_topaz_init_xfer._entry_ptr, ptr @qtnf_pcie_topaz_init_xfer._entry_ptr.100, ptr @qtnf_pcie_topaz_init_xfer._entry_ptr.103, ptr @qtnf_pcie_topaz_init_xfer._entry_ptr.94, ptr @qtnf_pcie_topaz_init_xfer._entry_ptr.97, ptr @qtnf_pcie_topaz_probe._entry, ptr @qtnf_pcie_topaz_probe._entry.10, ptr @qtnf_pcie_topaz_probe._entry.7, ptr @qtnf_pcie_topaz_probe._entry_ptr, ptr @qtnf_pcie_topaz_probe._entry_ptr.12, ptr @qtnf_pcie_topaz_probe._entry_ptr.9, ptr @qtnf_pre_init_ep._entry, ptr @qtnf_pre_init_ep._entry.84, ptr @qtnf_pre_init_ep._entry_ptr, ptr @qtnf_pre_init_ep._entry_ptr.86, ptr @qtnf_topaz_fw_upload._entry, ptr @qtnf_topaz_fw_upload._entry.36, ptr @qtnf_topaz_fw_upload._entry.39, ptr @qtnf_topaz_fw_upload._entry.42, ptr @qtnf_topaz_fw_upload._entry_ptr, ptr @qtnf_topaz_fw_upload._entry_ptr.38, ptr @qtnf_topaz_fw_upload._entry_ptr.41, ptr @qtnf_topaz_fw_upload._entry_ptr.44, ptr @qtnf_topaz_fw_work_handler._entry, ptr @qtnf_topaz_fw_work_handler._entry.20, ptr @qtnf_topaz_fw_work_handler._entry.23, ptr @qtnf_topaz_fw_work_handler._entry.26, ptr @qtnf_topaz_fw_work_handler._entry.29, ptr @qtnf_topaz_fw_work_handler._entry_ptr, ptr @qtnf_topaz_fw_work_handler._entry_ptr.22, ptr @qtnf_topaz_fw_work_handler._entry_ptr.25, ptr @qtnf_topaz_fw_work_handler._entry_ptr.28, ptr @qtnf_topaz_fw_work_handler._entry_ptr.31, ptr @qtnf_topaz_rx_poll._entry, ptr @qtnf_topaz_rx_poll._entry.113, ptr @qtnf_topaz_rx_poll._entry.116, ptr @qtnf_topaz_rx_poll._entry.121, ptr @qtnf_topaz_rx_poll._entry_ptr, ptr @qtnf_topaz_rx_poll._entry_ptr.115, ptr @qtnf_topaz_rx_poll._entry_ptr.118, ptr @qtnf_topaz_rx_poll._entry_ptr.123, ptr @topaz_skb2rbd_attach._entry, ptr @topaz_skb2rbd_attach._entry_ptr, ptr @.str, ptr @.str.1, ptr @qtnf_pcie_topaz_bus_ops, ptr @qtnf_pcie_topaz_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.122], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_topaz_bus_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_topaz_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_topaz_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_topaz_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_topaz_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_fw_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_fw_work_handler._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_fw_work_handler._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_fw_work_handler._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_fw_work_handler._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_fw_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_fw_upload._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_fw_upload._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_fw_upload._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_ep_fw_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_ep_fw_load._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_ep_fw_load._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_ep_fw_load._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_ep_fw_load._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pre_init_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pre_init_ep._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_endian_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_topaz_init_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_topaz_init_xfer._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_topaz_init_xfer._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_topaz_init_xfer._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_topaz_init_xfer._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topaz_skb2rbd_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_rx_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_rx_poll._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_rx_poll._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_topaz_rx_poll._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @qtnf_pcie_topaz_alloc(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3612, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %get_bus_priv.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

get_bus_priv.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %probe_cb = getelementptr inbounds %struct.qtnf_bus, ptr %call.i, i32 0, i32 21, i32 4
  %0 = ptrtoint ptr %probe_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @qtnf_pcie_topaz_probe, ptr %probe_cb, align 4
  %remove_cb = getelementptr inbounds %struct.qtnf_bus, ptr %call.i, i32 0, i32 21, i32 8
  %1 = ptrtoint ptr %remove_cb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @qtnf_pcie_topaz_remove, ptr %remove_cb, align 4
  %dma_mask_get_cb = getelementptr inbounds %struct.qtnf_bus, ptr %call.i, i32 0, i32 21, i32 20
  %2 = ptrtoint ptr %dma_mask_get_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @qtnf_topaz_dma_mask_get, ptr %dma_mask_get_cb, align 4
  %resume_cb = getelementptr inbounds %struct.qtnf_bus, ptr %call.i, i32 0, i32 21, i32 16
  %3 = ptrtoint ptr %resume_cb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @qtnf_pcie_topaz_resume, ptr %resume_cb, align 4
  %suspend_cb = getelementptr inbounds %struct.qtnf_bus, ptr %call.i, i32 0, i32 21, i32 12
  %4 = ptrtoint ptr %suspend_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @qtnf_pcie_topaz_suspend, ptr %suspend_cb, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_bus_priv.exit, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_topaz_probe(ptr noundef %bus, i32 noundef %tx_bd_num, i32 noundef %rx_bd_num) #0 align 64 {
entry:
  %ipc_int = alloca %struct.qtnf_shm_ipc_int, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %0 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retval.0.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipc_int) #9
  %2 = ptrtoint ptr %ipc_int to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ipc_int, align 4, !annotation !226
  %3 = getelementptr inbounds %struct.qtnf_shm_ipc_int, ptr %ipc_int, i32 0, i32 1
  %bus_ops = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 4
  %4 = ptrtoint ptr %bus_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @qtnf_pcie_topaz_bus_ops, ptr %bus_ops, align 16
  %fw_work = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13
  tail call void @__init_work(ptr noundef %fw_work, i32 noundef 0) #9
  %5 = ptrtoint ptr %fw_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %fw_work, align 8
  %lockdep_map = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @qtnf_pcie_topaz_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry5 = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @qtnf_topaz_fw_work_handler, ptr %func, align 4
  %epmem_bar = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 11
  %9 = ptrtoint ptr %epmem_bar to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %epmem_bar, align 4
  %bda = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %bda to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %bda, align 4
  %msi_enabled = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 29
  %12 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %. = select i1 %tobool.not, i32 2176, i32 2048
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %15, ptr noundef nonnull @qtnf_pcie_topaz_interrupt, ptr noundef null, i32 noundef %., ptr noundef nonnull @.str.3, ptr noundef %bus) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %17) #12
  br label %cleanup

if.end17:                                         ; preds = %get_bus_priv.exit
  tail call void @disable_irq(i32 noundef %17) #9
  %call19 = tail call fastcc i32 @qtnf_pre_init_ep(ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bda, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_bd_num)
  %cmp.i = icmp eq i32 %tx_bd_num, 0
  %spec.store.select.i = select i1 %cmp.i, i32 128, i32 %tx_bd_num
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %spec.store.select.i)
  %cmp2.i = icmp ugt i32 %spec.store.select.i, 256
  br i1 %cmp2.i, label %do.end.i73, label %if.end27.if.end4.i_crit_edge

if.end27.if.end4.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

do.end.i73:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 256) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i73, %if.end27.if.end4.i_crit_edge
  %tx_bd_size.addr.0.i = phi i32 [ 256, %do.end.i73 ], [ %spec.store.select.i, %if.end27.if.end4.i_crit_edge ]
  %conv.i = trunc i32 %tx_bd_size.addr.0.i to i16
  %tx_bd_num.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 15
  %20 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %tx_bd_num.i, align 4
  %bda_rc_tx_bd_num.i = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %19, i32 0, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %tx_bd_size.addr.0.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_rc_tx_bd_num.i, i32 %21) #9, !srcloc !228
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_rc_tx_bd_num.i) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_bd_num)
  %cmp7.i = icmp eq i32 %rx_bd_num, 0
  %spec.store.select51.i = select i1 %cmp7.i, i32 256, i32 %rx_bd_num
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %spec.store.select51.i)
  %cmp11.i = icmp ugt i32 %spec.store.select51.i, 256
  br i1 %cmp11.i, label %do.end16.i, label %if.end4.i.if.end19.i_crit_edge

if.end4.i.if.end19.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

do.end16.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91, i32 noundef 256) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end16.i, %if.end4.i.if.end19.i_crit_edge
  %rx_bd_size.addr.0.i = phi i32 [ 256, %do.end16.i ], [ %spec.store.select51.i, %if.end4.i.if.end19.i_crit_edge ]
  %conv20.i = trunc i32 %rx_bd_size.addr.0.i to i16
  %rx_bd_num.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 16
  %23 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv20.i, ptr %rx_bd_num.i, align 2
  %bda_rc_rx_bd_num.i = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %19, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %rx_bd_size.addr.0.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_rc_rx_bd_num.i, i32 %24) #9, !srcloc !228
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_rc_rx_bd_num.i) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %rx_bd_w_index.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 20
  %26 = ptrtoint ptr %rx_bd_w_index.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rx_bd_w_index.i, align 4
  %rx_bd_r_index.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 21
  %27 = ptrtoint ptr %rx_bd_r_index.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rx_bd_r_index.i, align 4
  %call23.i = tail call i32 @qtnf_pcie_alloc_skb_array(ptr noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool.not.i74 = icmp eq i32 %call23.i, 0
  br i1 %tobool.not.i74, label %if.end30.i, label %if.end19.i.do.end33_crit_edge

if.end19.i.do.end33_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

if.end30.i:                                       ; preds = %if.end19.i
  %call31.i = tail call fastcc i32 @topaz_alloc_bd_table(ptr noundef %retval.0.i, ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end39.i, label %if.end30.i.do.end33_crit_edge

if.end30.i.do.end33_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

if.end39.i:                                       ; preds = %if.end30.i
  %rx_bd_vbase.i.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 5
  %28 = ptrtoint ptr %rx_bd_vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_bd_vbase.i.i, align 4
  %30 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rx_bd_num.i, align 2
  %conv.i.i = zext i16 %31 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 3
  %32 = call ptr @memset(ptr %29, i32 0, i32 %mul.i.i)
  %33 = load i16, ptr %rx_bd_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp18.not.i.i = icmp eq i16 %33, 0
  br i1 %cmp18.not.i.i, label %if.end39.i.topaz_alloc_rx_buffers.exit.i_crit_edge, label %if.end39.i.for.body.i.i_crit_edge

if.end39.i.for.body.i.i_crit_edge:                ; preds = %if.end39.i
  br label %for.body.i.i

if.end39.i.topaz_alloc_rx_buffers.exit.i_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %topaz_alloc_rx_buffers.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i16 %i.019.i.i, 1
  %34 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_bd_num.i, align 2
  %cmp.i.i = icmp ult i16 %inc.i.i, %35
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.topaz_alloc_rx_buffers.exit.i_crit_edge

for.cond.i.i.topaz_alloc_rx_buffers.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %topaz_alloc_rx_buffers.exit.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end39.i.for.body.i.i_crit_edge
  %i.019.i.i = phi i16 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end39.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call fastcc i32 @topaz_skb2rbd_attach(ptr noundef %retval.0.i, i16 noundef zeroext %i.019.i.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.i.i.topaz_alloc_rx_buffers.exit.i_crit_edge

for.body.i.i.topaz_alloc_rx_buffers.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %topaz_alloc_rx_buffers.exit.i

topaz_alloc_rx_buffers.exit.i:                    ; preds = %for.body.i.i.topaz_alloc_rx_buffers.exit.i_crit_edge, %for.cond.i.i.topaz_alloc_rx_buffers.exit.i_crit_edge, %if.end39.i.topaz_alloc_rx_buffers.exit.i_crit_edge
  %ret.1.i.i = phi i32 [ 0, %if.end39.i.topaz_alloc_rx_buffers.exit.i_crit_edge ], [ %call.i.i, %for.body.i.i.topaz_alloc_rx_buffers.exit.i_crit_edge ], [ 0, %for.cond.i.i.topaz_alloc_rx_buffers.exit.i_crit_edge ]
  %36 = ptrtoint ptr %rx_bd_vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_bd_vbase.i.i, align 4
  %38 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rx_bd_num.i, align 2
  %conv9.i.i = zext i16 %39 to i32
  %sub.i.i = add nsw i32 %conv9.i.i, -1
  %info.i.i = getelementptr %struct.qtnf_topaz_rx_bd, ptr %37, i32 %sub.i.i, i32 1
  %40 = ptrtoint ptr %info.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %info.i.i, align 1
  %or.i.i = or i32 %41, 33554432
  store i32 %or.i.i, ptr %info.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool41.not.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool41.not.i, label %if.end36, label %topaz_alloc_rx_buffers.exit.i.do.end33_crit_edge

topaz_alloc_rx_buffers.exit.i.do.end33_crit_edge: ; preds = %topaz_alloc_rx_buffers.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

do.end33:                                         ; preds = %topaz_alloc_rx_buffers.exit.i.do.end33_crit_edge, %if.end30.i.do.end33_crit_edge, %if.end19.i.do.end33_crit_edge
  %.str.102.sink.i = phi ptr [ @.str.96, %if.end19.i.do.end33_crit_edge ], [ @.str.99, %if.end30.i.do.end33_crit_edge ], [ @.str.102, %topaz_alloc_rx_buffers.exit.i.do.end33_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call23.i, %if.end19.i.do.end33_crit_edge ], [ %call31.i, %if.end30.i.do.end33_crit_edge ], [ %ret.1.i.i, %topaz_alloc_rx_buffers.exit.i.do.end33_crit_edge ]
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.102.sink.i, ptr noundef nonnull @.str.91) #12
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end36:                                         ; preds = %topaz_alloc_rx_buffers.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %reclaim_tq = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 9
  tail call void @tasklet_setup(ptr noundef %reclaim_tq, ptr noundef nonnull @qtnf_reclaim_tasklet_fn) #9
  %mux_dev = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 10
  %mux_napi = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 8
  tail call void @netif_napi_add(ptr noundef %mux_dev, ptr noundef %mux_napi, ptr noundef nonnull @qtnf_topaz_rx_poll, i32 noundef 10) #9
  %42 = ptrtoint ptr %ipc_int to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @qtnf_topaz_ipc_gen_ep_int, ptr %ipc_int, align 4
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.0.i, ptr %3, align 4
  %44 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bda, align 4
  %bda_shm_reg1 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %45, i32 0, i32 30
  %bda_shm_reg2 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %45, i32 0, i32 31
  call void @qtnf_pcie_init_shm_ipc(ptr noundef %retval.0.i, ptr noundef %bda_shm_reg1, ptr noundef %bda_shm_reg2, ptr noundef nonnull %ipc_int) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end33, %do.end24, %do.end14
  %retval.0 = phi i32 [ %call.i, %do.end14 ], [ %call19, %do.end24 ], [ %retval.0.ph.i, %do.end33 ], [ 0, %if.end36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipc_int) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_topaz_remove(ptr noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  tail call void @arm_heavy_mb() #9
  %sysctl_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 10
  %0 = ptrtoint ptr %sysctl_bar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554944) #9, !srcloc !228
  tail call void @msleep(i32 noundef 1000) #9
  %2 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %retval.0.i, align 4
  tail call void @pci_restore_state(ptr noundef %3) #9
  %rx_bd_num.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 16
  %4 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_bd_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp69.not.i = icmp eq i16 %5, 0
  br i1 %cmp69.not.i, label %get_bus_priv.exit.for.cond10.preheader.i_crit_edge, label %for.body.lr.ph.i

get_bus_priv.exit.for.cond10.preheader.i_crit_edge: ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.preheader.i

for.body.lr.ph.i:                                 ; preds = %get_bus_priv.exit
  %rx_skb.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 18
  %rx_bd_vbase.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 5
  br label %for.body.i

for.cond10.preheader.i:                           ; preds = %for.inc.i.for.cond10.preheader.i_crit_edge, %get_bus_priv.exit.for.cond10.preheader.i_crit_edge
  %tx_bd_num.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 15
  %6 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp1273.not.i = icmp eq i16 %7, 0
  br i1 %cmp1273.not.i, label %for.cond10.preheader.i.qtnf_topaz_free_xfer_buffers.exit_crit_edge, label %for.body14.lr.ph.i

for.cond10.preheader.i.qtnf_topaz_free_xfer_buffers.exit_crit_edge: ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qtnf_topaz_free_xfer_buffers.exit

for.body14.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  %tx_skb.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 17
  %tx_bd_vbase.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 4
  br label %for.body14.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.070.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_skb.i, align 4
  %tobool.not.i2 = icmp eq ptr %9, null
  br i1 %tobool.not.i2, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.070.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %rx_bd_vbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_bd_vbase.i, align 4
  %arrayidx4.i = getelementptr %struct.qtnf_topaz_rx_bd, ptr %13, i32 %i.070.i
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx4.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %retval.0.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %16, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 1) #9
  %19 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_skb.i, align 4
  %arrayidx8.i = getelementptr ptr, ptr %20, i32 %i.070.i
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx8.i, align 4
  %22 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 0, ptr %arrayidx4.i, align 1
  %info.i = getelementptr %struct.qtnf_topaz_rx_bd, ptr %13, i32 %i.070.i, i32 1
  %23 = ptrtoint ptr %info.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %info.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.070.i, 1
  %24 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rx_bd_num.i, align 2
  %conv.i = zext i16 %25 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond10.preheader.i_crit_edge

for.inc.i.for.cond10.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond10.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body14.i:                                     ; preds = %for.inc32.i.for.body14.i_crit_edge, %for.body14.lr.ph.i
  %i.174.i = phi i32 [ 0, %for.body14.lr.ph.i ], [ %inc33.i, %for.inc32.i.for.body14.i_crit_edge ]
  %26 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_skb.i, align 4
  %tobool15.not.i = icmp eq ptr %27, null
  br i1 %tobool15.not.i, label %for.body14.i.for.inc32.i_crit_edge, label %land.lhs.true16.i

for.body14.i.for.inc32.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc32.i

land.lhs.true16.i:                                ; preds = %for.body14.i
  %arrayidx18.i = getelementptr ptr, ptr %27, i32 %i.174.i
  %28 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %29, null
  br i1 %tobool19.not.i, label %land.lhs.true16.i.for.inc32.i_crit_edge, label %if.then20.i

land.lhs.true16.i.for.inc32.i_crit_edge:          ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc32.i

if.then20.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %tx_bd_vbase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_bd_vbase.i, align 4
  %arrayidx21.i = getelementptr %struct.qtnf_topaz_tx_bd, ptr %31, i32 %i.174.i
  %32 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx21.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %35 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %retval.0.i, align 4
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev26.i, i32 noundef %34, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %29, i32 noundef 1) #9
  %37 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_skb.i, align 4
  %arrayidx28.i = getelementptr ptr, ptr %38, i32 %i.174.i
  %39 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx28.i, align 4
  %40 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %arrayidx21.i, align 1
  %info30.i = getelementptr %struct.qtnf_topaz_tx_bd, ptr %31, i32 %i.174.i, i32 1
  %41 = ptrtoint ptr %info30.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 0, ptr %info30.i, align 1
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %if.then20.i, %land.lhs.true16.i.for.inc32.i_crit_edge, %for.body14.i.for.inc32.i_crit_edge
  %inc33.i = add nuw nsw i32 %i.174.i, 1
  %42 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tx_bd_num.i, align 4
  %conv11.i = zext i16 %43 to i32
  %cmp12.i = icmp ult i32 %inc33.i, %conv11.i
  br i1 %cmp12.i, label %for.inc32.i.for.body14.i_crit_edge, label %for.inc32.i.qtnf_topaz_free_xfer_buffers.exit_crit_edge

for.inc32.i.qtnf_topaz_free_xfer_buffers.exit_crit_edge: ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qtnf_topaz_free_xfer_buffers.exit

for.inc32.i.for.body14.i_crit_edge:               ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i

qtnf_topaz_free_xfer_buffers.exit:                ; preds = %for.inc32.i.qtnf_topaz_free_xfer_buffers.exit_crit_edge, %for.cond10.preheader.i.qtnf_topaz_free_xfer_buffers.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @qtnf_topaz_dma_mask_get() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 4294967295
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_topaz_resume(ptr noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %0 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retval.0.i, align 4
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %1, i32 noundef 0) #9
  tail call void @pci_restore_state(ptr noundef %1) #9
  %call3 = tail call i32 @pci_enable_wake(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %ep_pmstate = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 8
  %2 = ptrtoint ptr %ep_pmstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep_pmstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #9, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  tail call void @arm_heavy_mb() #9
  %sysctl_bar = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 10
  %4 = ptrtoint ptr %sysctl_bar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysctl_bar, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268439552) #9, !srcloc !228
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_topaz_suspend(ptr noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %0 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retval.0.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  tail call void @arm_heavy_mb() #9
  %ep_pmstate = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 8
  %2 = ptrtoint ptr %ep_pmstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep_pmstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 50331648) #9, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  %sysctl_bar = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 10
  %4 = ptrtoint ptr %sysctl_bar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysctl_bar, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268439552) #9, !srcloc !228
  %call6 = tail call i32 @pci_save_state(ptr noundef %1) #9
  %call7 = tail call i32 @pci_enable_wake(ptr noundef %1, i32 noundef 3, i1 noundef zeroext true) #9
  %call8 = tail call i32 @pci_set_power_state(ptr noundef %1, i32 noundef 3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_topaz_fw_work_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2824
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr i8, ptr %work, i32 204
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %bda = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bda, align 4
  %bda_flags = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_flags) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  %3 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i, align 4
  %5 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bda, align 4
  %bda_bootstate = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %6, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_bootstate, i32 301989888) #9, !srcloc !228
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %8 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %get_bus_priv.exit.if.end15_crit_edge, label %if.then

get_bus_priv.exit.if.end15_crit_edge:             ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %get_bus_priv.exit
  %call6 = tail call fastcc i32 @qtnf_topaz_fw_upload(ptr noundef %retval.0.i, ptr noundef nonnull @.str.16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %if.then.fw_load_exit_crit_edge

if.then.fw_load_exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_load_exit

if.end:                                           ; preds = %if.then
  %call9 = tail call fastcc i32 @qtnf_pre_init_ep(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.fw_load_exit_crit_edge

if.end.fw_load_exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_load_exit

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bda, align 4
  %bda_bootstate14 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %10, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_bootstate14, i32 301989888) #9, !srcloc !228
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate14) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %get_bus_priv.exit.if.end15_crit_edge
  %flashboot = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 31
  %12 = ptrtoint ptr %flashboot to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flashboot, align 2, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not = icmp eq i8 %13, 0
  br i1 %tobool17.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end15
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #12
  %14 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bda, align 4
  %bda_bootstate22 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %15, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.end
  %timeout.0.i = phi i32 [ 0, %do.end ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate22) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 318767104, i32 %16)
  %cmp.i.not.i = icmp eq i32 %16, 318767104
  br i1 %cmp.i.not.i, label %while.cond.i.if.end57_crit_edge, label %while.body.i

while.cond.i.if.end57_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

while.body.i:                                     ; preds = %while.cond.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond = icmp eq i32 %inc.i, 3001
  br i1 %exitcond, label %while.body.i.fw_load_exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.fw_load_exit_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_load_exit

if.else:                                          ; preds = %if.end15
  %call27 = tail call fastcc i32 @qtnf_topaz_fw_upload(ptr noundef %retval.0.i, ptr noundef nonnull @.str.19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.else.fw_load_exit_crit_edge

if.else.fw_load_exit_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_load_exit

if.end30:                                         ; preds = %if.else
  %17 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bda, align 4
  %bda_bootstate32 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %18, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_bootstate32, i32 83886080) #9, !srcloc !228
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate32) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %20 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bda, align 4
  %bda_bootstate34 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %21, i32 0, i32 2
  br label %while.cond.i102

while.cond.i102:                                  ; preds = %while.body.i105.while.cond.i102_crit_edge, %if.end30
  %timeout.0.i100 = phi i32 [ 0, %if.end30 ], [ %inc.i103, %while.body.i105.while.cond.i102_crit_edge ]
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate34) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103808, i32 %22)
  %cmp.i.not.i101 = icmp eq i32 %22, 218103808
  br i1 %cmp.i.not.i101, label %if.end43, label %while.body.i105

while.body.i105:                                  ; preds = %while.cond.i102
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc.i103 = add nuw nsw i32 %timeout.0.i100, 1
  %exitcond112 = icmp eq i32 %inc.i103, 30001
  br i1 %exitcond112, label %do.end40, label %while.body.i105.while.cond.i102_crit_edge

while.body.i105.while.cond.i102_crit_edge:        ; preds = %while.body.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i102

do.end40:                                         ; preds = %while.body.i105
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18) #12
  br label %fw_load_exit

if.end43:                                         ; preds = %while.cond.i102
  %23 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bda, align 4
  %bda_bootstate45 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %24, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_bootstate45, i32 100663296) #9, !srcloc !228
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate45) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %26 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bda, align 4
  %bda_bootstate47 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %27, i32 0, i32 2
  %call48 = tail call fastcc i32 @qtnf_poll_state(ptr noundef %bda_bootstate47, i32 noundef 14, i32 noundef 30000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end43.if.end57_crit_edge, label %do.end53

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.end53:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18) #12
  br label %fw_load_exit

if.end57:                                         ; preds = %if.end43.if.end57_crit_edge, %while.cond.i.if.end57_crit_edge
  %call58 = tail call fastcc i32 @qtnf_post_init_ep(ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.end69, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.18) #12
  br label %fw_load_exit

do.end69:                                         ; preds = %if.end57
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.18) #12
  %call72 = tail call i32 @qtnf_pcie_fw_boot_done(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %do.end69.fw_load_exit_crit_edge

do.end69.fw_load_exit_crit_edge:                  ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_load_exit

if.end75:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @qtnf_debugfs_add_entry(ptr noundef %add.ptr, ptr noundef nonnull @.str.32, ptr noundef nonnull @qtnf_dbg_pkt_stats) #9
  tail call void @qtnf_debugfs_add_entry(ptr noundef %add.ptr, ptr noundef nonnull @.str.33, ptr noundef nonnull @qtnf_dbg_irq_stats) #9
  br label %fw_load_exit

fw_load_exit:                                     ; preds = %if.end75, %do.end69.fw_load_exit_crit_edge, %do.end63, %do.end53, %do.end40, %if.else.fw_load_exit_crit_edge, %while.body.i.fw_load_exit_crit_edge, %if.end.fw_load_exit_crit_edge, %if.then.fw_load_exit_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void @put_device(ptr noundef %dev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_topaz_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %data, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %msi_enabled = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 29
  %0 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %get_bus_priv.exit.if.end6_crit_edge

get_bus_priv.exit.if.end6_crit_edge:              ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %get_bus_priv.exit
  %sysctl_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 10
  %2 = ptrtoint ptr %sysctl_bar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysctl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 108
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %6 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %msi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool4.not = icmp eq i8 %.pr, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %sysctl_bar.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sysctl_bar.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %8, i32 108
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  %10 = and i32 %9, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %10) #9, !srcloc !228
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge, %get_bus_priv.exit.if.end6_crit_edge
  %pcie_irq_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 24
  %12 = ptrtoint ptr %pcie_irq_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcie_irq_count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %pcie_irq_count, align 4
  %shm_ipc_ep_in = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 13
  %irq_handler.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 13, i32 8
  %14 = ptrtoint ptr %irq_handler.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_handler.i, align 4
  tail call void %15(ptr noundef %shm_ipc_ep_in) #9
  %shm_ipc_ep_out = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 14
  %irq_handler.i25 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 14, i32 8
  %16 = ptrtoint ptr %irq_handler.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_handler.i25, align 4
  tail call void %17(ptr noundef %shm_ipc_ep_out) #9
  %mux_napi = getelementptr inbounds %struct.qtnf_bus, ptr %data, i32 0, i32 8
  %call7 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %mux_napi) #9
  br i1 %call7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dmareg_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 12
  %18 = ptrtoint ptr %dmareg_bar.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmareg_bar.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %19, i32 2512
  %dma_msi_dummy.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %dma_msi_dummy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_msi_dummy.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %22) #9, !srcloc !228
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @__napi_schedule(ptr noundef %mux_napi) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %state.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i27 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i27, label %if.then.i, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %reclaim_tq = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 9
  tail call void @__tasklet_hi_schedule(ptr noundef %reclaim_tq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_pre_init_ep(ptr noundef readonly %bus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %bda1 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bda1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  tail call void @arm_heavy_mb() #9
  %bda_pci_endian.i = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_pci_endian.i, i32 2018915346) #9, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  tail call void @arm_heavy_mb() #9
  %bda_pci_pre_status.i = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_pci_pre_status.i, i32 1010580540) #9, !srcloc !228
  %bda_pci_post_status.i = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 16
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %get_bus_priv.exit
  %timeout.0.i = phi i32 [ 0, %get_bus_priv.exit ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_pci_post_status.i) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 1010580540, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 1010580540
  br i1 %cmp.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 3001
  br i1 %exitcond.i, label %do.end9.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

do.end9.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88) #12
  br label %qtnf_pcie_endian_detect.exit

while.end.i:                                      ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !247
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_pci_endian.i) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not.i = icmp eq i32 %3, 0
  br i1 %cmp18.not.i, label %while.end.i.qtnf_pcie_endian_detect.exit_crit_edge, label %do.end29.i, !prof !249

while.end.i.qtnf_pcie_endian_detect.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qtnf_pcie_endian_detect.exit

do.end29.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 840, i32 noundef 9, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88) #9
  br label %qtnf_pcie_endian_detect.exit

qtnf_pcie_endian_detect.exit:                     ; preds = %do.end29.i, %while.end.i.qtnf_pcie_endian_detect.exit_crit_edge, %do.end9.i
  %ret.0.i = phi i32 [ -110, %do.end9.i ], [ 0, %do.end29.i ], [ 0, %while.end.i.qtnf_pcie_endian_detect.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_pci_pre_status.i, i32 0) #9, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_pci_post_status.i, i32 0) #9, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_pci_endian.i, i32 0) #9, !srcloc !228
  br i1 %cmp.not.i, label %do.body4, label %qtnf_pcie_endian_detect.exit.cleanup.sink.split_crit_edge

qtnf_pcie_endian_detect.exit.cleanup.sink.split_crit_edge: ; preds = %qtnf_pcie_endian_detect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body4:                                         ; preds = %qtnf_pcie_endian_detect.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %msi_enabled = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 29
  %4 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msi_enabled, align 4
  %6 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bda1, align 4
  %bda_rc_msi_enabled = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %7, i32 0, i32 25
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %bda_rc_msi_enabled, i8 %5) #9, !srcloc !254
  %8 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bda1, align 4
  %bda_dma_offset.i = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_dma_offset.i) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %10)
  %cmp.not.i47 = icmp ugt i32 %10, -65537
  br i1 %cmp.not.i47, label %do.body.i, label %do.body4.qtnf_reset_dma_offset.exit_crit_edge

do.body4.qtnf_reset_dma_offset.exit_crit_edge:    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %qtnf_reset_dma_offset.exit

do.body.i:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_dma_offset.i, i32 0) #9, !srcloc !228
  br label %qtnf_reset_dma_offset.exit

qtnf_reset_dma_offset.exit:                       ; preds = %do.body.i, %do.body4.qtnf_reset_dma_offset.exit_crit_edge
  %bda_flags = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 5
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_flags) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %flashboot = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 31
  %12 = ptrtoint ptr %flashboot to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flashboot, align 2, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %14 = and i32 %11, 1610612735
  %15 = or i32 %14, -2147483648
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %masksel = select i1 %tobool.not, i32 0, i32 32
  %flags.0 = or i32 %masksel, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %flags.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_flags, i32 %17) #9, !srcloc !228
  %18 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bda1, align 4
  %bda_bootstate = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %19, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_bootstate, i32 117440512) #9, !srcloc !228
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %21 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bda1, align 4
  %bda_bootstate21 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %22, i32 0, i32 2
  br label %while.cond.i49

while.cond.i49:                                   ; preds = %while.body.i51.while.cond.i49_crit_edge, %qtnf_reset_dma_offset.exit
  %timeout.0.i48 = phi i32 [ 0, %qtnf_reset_dma_offset.exit ], [ %inc.i50, %while.body.i51.while.cond.i49_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate21) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212672, i32 %23)
  %cmp.i.not.i = icmp eq i32 %23, 285212672
  br i1 %cmp.i.not.i, label %while.cond.i49.cleanup_crit_edge, label %while.body.i51

while.cond.i49.cleanup_crit_edge:                 ; preds = %while.cond.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i51:                                   ; preds = %while.cond.i49
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc.i50 = add nuw nsw i32 %timeout.0.i48, 1
  %exitcond = icmp eq i32 %inc.i50, 3001
  br i1 %exitcond, label %while.body.i51.cleanup.sink.split_crit_edge, label %while.body.i51.while.cond.i49_crit_edge

while.body.i51.while.cond.i49_crit_edge:          ; preds = %while.body.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i49

while.body.i51.cleanup.sink.split_crit_edge:      ; preds = %while.body.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.body.i51.cleanup.sink.split_crit_edge, %qtnf_pcie_endian_detect.exit.cleanup.sink.split_crit_edge
  %.str.85.sink = phi ptr [ @.str.82, %qtnf_pcie_endian_detect.exit.cleanup.sink.split_crit_edge ], [ @.str.85, %while.body.i51.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0.i, %qtnf_pcie_endian_detect.exit.cleanup.sink.split_crit_edge ], [ -110, %while.body.i51.cleanup.sink.split_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.85.sink, ptr noundef nonnull @.str.83) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.i49.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ %ret.0.i, %while.cond.i49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_reclaim_tasklet_fn(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -116
  tail call fastcc void @qtnf_topaz_data_tx_reclaim(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_topaz_rx_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -256
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr i8, ptr %napi, i32 2772
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i185 = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp209 = icmp sgt i32 %budget, 0
  br i1 %cmp209, label %while.body.lr.ph, label %get_bus_priv.exit.if.end129_crit_edge

get_bus_priv.exit.if.end129_crit_edge:            ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

while.body.lr.ph:                                 ; preds = %get_bus_priv.exit
  %rx_bd_r_index.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i185, i32 0, i32 21
  %rx_bd_vbase.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i185, i32 0, i32 5
  %rx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i185, i32 0, i32 18
  %rx_dropped = getelementptr i8, ptr %napi, i32 496
  %rx_pkt_count = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i185, i32 0, i32 9
  %sysctl_bar = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i185, i32 0, i32 10
  %rx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i185, i32 0, i32 16
  %rx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i185, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %processed.0210 = phi i32 [ 0, %while.body.lr.ph ], [ %inc123, %while.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %rx_bd_r_index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_bd_r_index.i, align 4
  %2 = ptrtoint ptr %rx_bd_vbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_bd_vbase.i, align 4
  %idxprom.i = and i32 %1, 65535
  %info.i = getelementptr %struct.qtnf_topaz_rx_bd, ptr %3, i32 %idxprom.i, i32 1
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %info.i, align 1
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.not = icmp eq i32 %6, 0
  br i1 %tobool.not.not, label %if.end, label %if.then127.critedge

if.end:                                           ; preds = %while.body
  %conv = trunc i32 %1 to i16
  %arrayidx = getelementptr %struct.qtnf_topaz_rx_bd, ptr %3, i32 %idxprom.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %5)
  %8 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_skb, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %shr = lshr i32 %7, 8
  %and = and i32 %shr, 255
  %shr4 = lshr i32 %7, 16
  %and6 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %do.end

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef %idxprom.i) #12
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end.if.end12_crit_edge
  %consume.0 = phi i32 [ 0, %do.end ], [ 1, %if.end.if.end12_crit_edge ]
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.else62.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
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
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %shr4)
  %cmp24 = icmp ult i32 %sub.ptr.sub.i, %shr4
  br i1 %cmp24, label %cond.false.i193, label %skb_tailroom.exit.if.end36_crit_edge

skb_tailroom.exit.if.end36_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

skb_tailroom.exit.thread:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp24200.not = icmp ult i32 %7, 65536
  br i1 %cmp24200.not, label %skb_tailroom.exit.thread.if.end36_crit_edge, label %skb_tailroom.exit.thread.skb_tailroom.exit195_crit_edge

skb_tailroom.exit.thread.skb_tailroom.exit195_crit_edge: ; preds = %skb_tailroom.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit195

skb_tailroom.exit.thread.if.end36_crit_edge:      ; preds = %skb_tailroom.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

cond.false.i193:                                  ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i190 = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i191 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i192 = sub i32 %sub.ptr.lhs.cast.i190, %sub.ptr.rhs.cast.i191
  br label %skb_tailroom.exit195

skb_tailroom.exit195:                             ; preds = %cond.false.i193, %skb_tailroom.exit.thread.skb_tailroom.exit195_crit_edge
  %cond.i194 = phi i32 [ %sub.ptr.sub.i192, %cond.false.i193 ], [ 0, %skb_tailroom.exit.thread.skb_tailroom.exit195_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.112, i32 noundef %shr4, i32 noundef %cond.i194) #12
  br label %if.end36

if.else62.thread:                                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.112, i32 noundef %idxprom.i) #12
  br label %if.end70

if.end36:                                         ; preds = %skb_tailroom.exit195, %skb_tailroom.exit.thread.if.end36_crit_edge, %skb_tailroom.exit.if.end36_crit_edge
  %consume.2.ph = phi i32 [ %consume.0, %skb_tailroom.exit.thread.if.end36_crit_edge ], [ %consume.0, %skb_tailroom.exit.if.end36_crit_edge ], [ 0, %skb_tailroom.exit195 ]
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %retval.0.i185 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %retval.0.i185, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %24, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume.2.ph)
  %tobool37.not = icmp eq i32 %consume.2.ph, 0
  br i1 %tobool37.not, label %if.then64, label %if.then38

if.then38:                                        ; preds = %if.end36
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 %and
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i196 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i196 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i196, align 8
  %add.ptr1.i = getelementptr i8, ptr %30, i32 %and
  store ptr %add.ptr1.i, ptr %tail.i196, align 8
  %call39 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef %shr4) #9
  %call40 = tail call ptr @qtnf_classify_skb(ptr noundef %add.ptr, ptr noundef nonnull %11) #9
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %do.body47, label %if.then44, !prof !225

if.then44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %33 = getelementptr inbounds %struct.net_device, ptr %call40, i32 0, i32 130
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 64
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !215) #9
  %and.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %42, %36
  %43 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %43, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #9
  %conv.i = zext i32 %32 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rx_bytes.i, align 8
  %add2.i = add i64 %45, %conv.i
  store i64 %add2.i, ptr %rx_bytes.i, align 8
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %43, align 32
  %inc.i = add i64 %47, 1
  store i64 %inc.i, ptr %43, align 32
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %43, i32 0, i32 4, i32 0, i32 1
  %48 = tail call ptr @llvm.returnaddress(i32 0) #9
  %49 = ptrtoint ptr %48 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !259
  %50 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %call45 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %11, ptr noundef nonnull %call40) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 15, i32 0, i32 18
  %52 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %call45, ptr %protocol, align 8
  %call46 = tail call i32 @netif_receive_skb(ptr noundef nonnull %11) #9
  br label %if.end70

do.body47:                                        ; preds = %if.then38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_topaz_rx_poll.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_topaz_rx_poll, %if.then57)) #9
          to label %do.end60 [label %if.then57], !srcloc !260

if.then57:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_topaz_rx_poll.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.112) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body47
  %53 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %54, 1
  store i32 %inc, ptr %rx_dropped, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 1) #9
  br label %if.end70

if.then64:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_dropped, align 8
  %inc68 = add i32 %56, 1
  store i32 %inc68, ptr %rx_dropped, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 1) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %do.end60, %if.then44, %if.else62.thread
  %57 = ptrtoint ptr %rx_pkt_count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_pkt_count, align 4
  %inc71 = add i32 %58, 1
  store i32 %inc71, ptr %rx_pkt_count, align 4
  %and72 = and i32 %inc71, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %cmp73 = icmp eq i32 %and72, 0
  br i1 %cmp73, label %do.body76, label %if.end70.if.end80_crit_edge

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

do.body76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %sysctl_bar to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sysctl_bar, align 4
  %add.ptr79 = getelementptr i8, ptr %60, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 134219776) #9, !srcloc !228
  br label %if.end80

if.end80:                                         ; preds = %do.body76, %if.end70.if.end80_crit_edge
  %61 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_skb, align 4
  %arrayidx83 = getelementptr ptr, ptr %62, i32 %idxprom.i
  %63 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx83, align 4
  %inc84 = add i16 %conv, 1
  %64 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %rx_bd_num, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc84, i16 %65)
  %cmp87.not = icmp ult i16 %inc84, %65
  %spec.store.select = select i1 %cmp87.not, i16 %inc84, i16 0
  %conv91 = zext i16 %spec.store.select to i32
  %66 = ptrtoint ptr %rx_bd_r_index.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv91, ptr %rx_bd_r_index.i, align 4
  %67 = ptrtoint ptr %rx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_bd_w_index, align 4
  %conv93 = trunc i32 %68 to i16
  %and112 = and i32 %7, 2
  br label %while.cond94

while.cond94:                                     ; preds = %while.body103.while.cond94_crit_edge, %if.end80
  %w_idx.0 = phi i16 [ %conv93, %if.end80 ], [ %spec.store.select130, %while.body103.while.cond94_crit_edge ]
  %69 = ptrtoint ptr %rx_bd_r_index.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_bd_r_index.i, align 4
  %71 = ptrtoint ptr %rx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_bd_w_index, align 4
  %add.neg = xor i32 %72, -1
  %sub = add i32 %70, %add.neg
  %73 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rx_bd_num, align 2
  %conv98 = zext i16 %74 to i32
  %sub99 = add nsw i32 %conv98, -1
  %and100 = and i32 %sub99, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %cmp101.not = icmp eq i32 %and100, 0
  br i1 %cmp101.not, label %while.cond94.while.end_crit_edge, label %while.body103

while.cond94.while.end_crit_edge:                 ; preds = %while.cond94
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body103:                                    ; preds = %while.cond94
  %inc104 = add i16 %w_idx.0, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc104, i16 %74)
  %cmp108.not = icmp ult i16 %inc104, %74
  %spec.store.select130 = select i1 %cmp108.not, i16 %inc104, i16 0
  %call113 = tail call fastcc i32 @topaz_skb2rbd_attach(ptr noundef %retval.0.i185, i16 noundef zeroext %spec.store.select130, i32 noundef %and112)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %while.body103.while.cond94_crit_edge, label %do.end118

while.body103.while.cond94_crit_edge:             ; preds = %while.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond94

do.end118:                                        ; preds = %while.body103
  call void @__sanitizer_cov_trace_pc() #11
  %conv120 = zext i16 %spec.store.select130 to i32
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.112, i32 noundef %conv120) #12
  br label %while.end

while.end:                                        ; preds = %do.end118, %while.cond94.while.end_crit_edge
  %inc123 = add nuw nsw i32 %processed.0210, 1
  %exitcond.not = icmp eq i32 %inc123, %budget
  br i1 %exitcond.not, label %while.end.if.end129_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end.if.end129_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then127.critedge:                              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #9
  %dmareg_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i185, i32 0, i32 12
  %75 = ptrtoint ptr %dmareg_bar.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dmareg_bar.i, align 4
  %add.ptr.i197 = getelementptr i8, ptr %76, i32 2512
  %dma_msi_imwr.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i185, i32 0, i32 3
  %77 = ptrtoint ptr %dma_msi_imwr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_msi_imwr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197, i32 %79) #9, !srcloc !228
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  br label %if.end129

if.end129:                                        ; preds = %if.then127.critedge, %while.end.if.end129_crit_edge, %get_bus_priv.exit.if.end129_crit_edge
  %processed.0208 = phi i32 [ %processed.0210, %if.then127.critedge ], [ 0, %get_bus_priv.exit.if.end129_crit_edge ], [ %budget, %while.end.if.end129_crit_edge ]
  ret i32 %processed.0208
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_topaz_ipc_gen_ep_int(ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  %sysctl_bar = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %arg, i32 0, i32 10
  %0 = ptrtoint ptr %sysctl_bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl_bar, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1073758208) #9, !srcloc !228
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_pcie_init_shm_ipc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_pcie_control_tx(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_data_tx(ptr noundef %bus, ptr noundef %skb, i32 noundef %macid, i32 noundef %vifid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %bda1 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bda1, align 4
  %tx_lock = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #9
  %tx_bd_r_index.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 23
  %2 = ptrtoint ptr %tx_bd_r_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_bd_r_index.i, align 4
  %tx_bd_w_index.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 22
  %4 = ptrtoint ptr %tx_bd_w_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bd_w_index.i, align 4
  %add.neg.i = xor i32 %5, -1
  %sub.i = add i32 %3, %add.neg.i
  %tx_bd_num.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 15
  %6 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_bd_num.i, align 4
  %conv.i = zext i16 %7 to i32
  %sub1.i = add nsw i32 %conv.i, -1
  %and.i = and i32 %sub1.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i87 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i87, label %if.then.i, label %get_bus_priv.exit.if.end_crit_edge

get_bus_priv.exit.if.end_crit_edge:               ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %get_bus_priv.exit
  tail call fastcc void @qtnf_topaz_data_tx_reclaim(ptr noundef %retval.0.i) #9
  %8 = ptrtoint ptr %tx_bd_r_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bd_r_index.i, align 4
  %10 = ptrtoint ptr %tx_bd_w_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bd_w_index.i, align 4
  %add4.neg.i = xor i32 %11, -1
  %sub5.i = add i32 %9, %add4.neg.i
  %12 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_bd_num.i, align 4
  %conv7.i = zext i16 %13 to i32
  %sub8.i = add nsw i32 %conv7.i, -1
  %and9.i = and i32 %sub8.i, %sub5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %if.then.i
  %tx_full_count.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 25
  %14 = ptrtoint ptr %tx_full_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_full_count.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %tx_full_count.i, align 4
  %16 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  br i1 %tobool.not.i, label %do.end.i.i, label %if.end23.i.i, !prof !225

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit.i

if.end23.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit.i

get_bus_priv.exit.i:                              ; preds = %if.end23.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %bus_priv.i.i, %if.end23.i.i ]
  %tobool.not.i89 = icmp eq ptr %18, null
  br i1 %tobool.not.i89, label %get_bus_priv.exit.i.do.body.i_crit_edge, label %if.then.i90

get_bus_priv.exit.i.do.body.i_crit_edge:          ; preds = %get_bus_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then.i90:                                      ; preds = %get_bus_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %18) #9
  %tx_stopped.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i.i, i32 0, i32 30
  %19 = ptrtoint ptr %tx_stopped.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %tx_stopped.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i90, %get_bus_priv.exit.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %txqueue_wake.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %txqueue_wake.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %txqueue_wake.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #9, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %sysctl_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %sysctl_bar.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sysctl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67109888) #9, !srcloc !228
  %state.i.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i.i, i32 0, i32 9, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i10.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i10.i, label %if.then.i.i, label %do.body.i.qtnf_try_stop_xmit.exit_crit_edge

do.body.i.qtnf_try_stop_xmit.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qtnf_try_stop_xmit.exit

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %reclaim_tq.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i.i, i32 0, i32 9
  tail call void @__tasklet_hi_schedule(ptr noundef %reclaim_tq.i) #9
  br label %qtnf_try_stop_xmit.exit

qtnf_try_stop_xmit.exit:                          ; preds = %if.then.i.i, %do.body.i.qtnf_try_stop_xmit.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %get_bus_priv.exit.if.end_crit_edge
  %24 = ptrtoint ptr %tx_bd_w_index.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_bd_w_index.i, align 4
  %tx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 17
  %26 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_skb, align 4
  %arrayidx = getelementptr ptr, ptr %27, i32 %25
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %skb, ptr %arrayidx, align 4
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len9, align 4
  %31 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %retval.0.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %34) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i92, !prof !249

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i92:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i91 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i91, label %if.end.i.i, label %if.then.i92.dev_name.exit.i_crit_edge

if.then.i92.dev_name.exit.i_crit_edge:            ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i92.dev_name.exit.i_crit_edge
  %retval.0.i.i93 = phi ptr [ %38, %if.end.i.i ], [ %36, %if.then.i92.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i93) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %34, i32 noundef %30) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  %40 = ptrtoint ptr %34 to i32
  %sub.i94 = add i32 %40, 1073741824
  %shr.i = lshr i32 %sub.i94, 12
  %add.ptr.i95 = getelementptr %struct.page, ptr %39, i32 %shr.i
  %and.i96 = and i32 %40, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i95, i32 noundef %and.i96, i32 noundef %30, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i97 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %41 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %retval.0.i, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev13, i32 noundef %retval.0.i97) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i97)
  %cmp.i = icmp eq i32 %retval.0.i97, -1
  br i1 %cmp.i, label %if.then40.critedge, label %if.end17

if.end17:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 4
  %43 = ptrtoint ptr %tx_bd_vbase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_bd_vbase, align 4
  %arrayidx18 = getelementptr %struct.qtnf_topaz_tx_bd, ptr %44, i32 %25
  %45 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i97)
  %46 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %arrayidx18, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  %arrayidx23 = getelementptr %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 28, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx23, i32 %45) #9, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %or = or i32 %30, -2147483648
  %47 = tail call i32 @llvm.bswap.i32(i32 %or)
  %info = getelementptr %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 28, i32 %25, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %info, i32 %47) #9, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  %sysctl_bar = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 10
  %48 = ptrtoint ptr %sysctl_bar to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sysctl_bar, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777472) #9, !srcloc !228
  %inc = add i32 %25, 1
  %50 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %tx_bd_num.i, align 4
  %conv33 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv33)
  %cmp34.not = icmp slt i32 %inc, %conv33
  %spec.store.select = select i1 %cmp34.not, i32 %inc, i32 0
  %52 = ptrtoint ptr %tx_bd_w_index.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.store.select, ptr %tx_bd_w_index.i, align 4
  br label %if.end45

if.then40.critedge:                               ; preds = %dma_map_single_attrs.exit
  %53 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %tobool41.not = icmp eq ptr %55, null
  br i1 %tobool41.not, label %if.then40.critedge.if.end44_crit_edge, label %if.then42

if.then40.critedge.if.end44_crit_edge:            ; preds = %if.then40.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then42:                                        ; preds = %if.then40.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 36, i32 7
  %56 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_dropped, align 4
  %inc43 = add i32 %57, 1
  store i32 %inc43, ptr %tx_dropped, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then40.critedge.if.end44_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end17
  %tx_done_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 26
  %58 = ptrtoint ptr %tx_done_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_done_count, align 4
  %inc46 = add i32 %59, 1
  store i32 %inc46, ptr %tx_done_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call4) #9
  tail call fastcc void @qtnf_topaz_data_tx_reclaim(ptr noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %qtnf_try_stop_xmit.exit
  %retval.0 = phi i32 [ 0, %if.end45 ], [ 16, %qtnf_try_stop_xmit.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_data_tx_timeout(ptr noundef %bus, ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i.i, label %if.end23.i.i, !prof !225

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit.i

if.end23.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit.i

get_bus_priv.exit.i:                              ; preds = %if.end23.i.i, %do.end.i.i
  %retval.0.i6 = phi ptr [ null, %do.end.i.i ], [ %bus_priv.i, %if.end23.i.i ]
  %txqueue_wake.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i6, i32 0, i32 7
  %0 = ptrtoint ptr %txqueue_wake.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txqueue_wake.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i2 = icmp eq i32 %2, 0
  br i1 %tobool.not.i2, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %get_bus_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %4) #9
  br label %qtnf_try_wake_xmit.exit

do.body.i:                                        ; preds = %get_bus_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void @arm_heavy_mb() #9
  %sysctl_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i6, i32 0, i32 10
  %5 = ptrtoint ptr %sysctl_bar.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sysctl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67109888) #9, !srcloc !228
  br label %qtnf_try_wake_xmit.exit

qtnf_try_wake_xmit.exit:                          ; preds = %do.body.i, %if.then.i
  %state.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i6, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i3 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i3, label %if.then.i4, label %qtnf_try_wake_xmit.exit.tasklet_hi_schedule.exit_crit_edge

qtnf_try_wake_xmit.exit.tasklet_hi_schedule.exit_crit_edge: ; preds = %qtnf_try_wake_xmit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_hi_schedule.exit

if.then.i4:                                       ; preds = %qtnf_try_wake_xmit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %reclaim_tq = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i6, i32 0, i32 9
  tail call void @__tasklet_hi_schedule(ptr noundef %reclaim_tq) #9
  br label %tasklet_hi_schedule.exit

tasklet_hi_schedule.exit:                         ; preds = %if.then.i4, %qtnf_try_wake_xmit.exit.tasklet_hi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_data_rx_start(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %mux_napi = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 8
  tail call void @napi_enable(ptr noundef %mux_napi) #9
  %dmareg_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 12
  %0 = ptrtoint ptr %dmareg_bar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmareg_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2512
  %dma_msi_imwr.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %dma_msi_imwr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_msi_imwr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !228
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_data_rx_stop(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %dmareg_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 12
  %0 = ptrtoint ptr %dmareg_bar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmareg_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2512
  %dma_msi_dummy.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 2
  %2 = ptrtoint ptr %dma_msi_dummy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_msi_dummy.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !228
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %mux_napi = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %mux_napi) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtnf_topaz_data_tx_reclaim(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_reclaim_lock = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_reclaim_lock) #9
  %ep_next_rx_pkt = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 6
  %0 = ptrtoint ptr %ep_next_rx_pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep_next_rx_pkt, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !229
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  %tx_bd_r_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 23
  %4 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bd_r_index, align 4
  %tx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 22
  %6 = ptrtoint ptr %tx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bd_w_index, align 4
  %sub = sub i32 %7, %3
  %tx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 15
  %8 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_bd_num, align 4
  %conv8 = zext i16 %9 to i32
  %sub9 = add nsw i32 %conv8, -1
  %and = and i32 %sub9, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body10

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %sysctl_bar = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 10
  %10 = ptrtoint ptr %sysctl_bar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysctl_bar, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777472) #9, !srcloc !228
  br label %if.end

if.end:                                           ; preds = %do.body10, %entry.if.end_crit_edge
  %sub1382 = sub i32 %3, %5
  %12 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_bd_num, align 4
  %conv1583 = zext i16 %13 to i32
  %sub1684 = add nsw i32 %conv1583, -1
  %and1785 = and i32 %sub1684, %sub1382
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1785)
  %tobool18.not86 = icmp eq i32 %and1785, 0
  br i1 %tobool18.not86, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %tx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 17
  %tx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 4
  %tx_stopped = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 30
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  %i.088 = phi i32 [ %5, %while.body.lr.ph ], [ %spec.store.select, %if.end38.while.body_crit_edge ]
  %count.087 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end38.while.body_crit_edge ]
  %14 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_skb, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.088
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %while.body.if.end38_crit_edge, label %if.then22, !prof !225

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then22:                                        ; preds = %while.body
  %18 = ptrtoint ptr %tx_bd_vbase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_bd_vbase, align 4
  %arrayidx23 = getelementptr %struct.qtnf_topaz_tx_bd, ptr %19, i32 %i.088
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx23, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %22, i32 noundef %26, i32 noundef 1, i32 noundef 0) #9
  %27 = getelementptr inbounds %struct.anon.51, ptr %17, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %tobool24.not = icmp eq ptr %29, null
  br i1 %tobool24.not, label %if.then22.if.end37_crit_edge, label %if.then25

if.then22.if.end37_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then25:                                        ; preds = %if.then22
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %32 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 130
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 64
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !215) #9
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %41, %35
  %42 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %42, i32 0, i32 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #9
  %conv.i = zext i32 %31 to i64
  %tx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tx_bytes.i, align 8
  %add2.i = add i64 %44, %conv.i
  store i64 %add2.i, ptr %tx_bytes.i, align 8
  %tx_packets.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tx_packets.i, align 16
  %add4.i = add i64 %46, 1
  store i64 %add4.i, ptr %tx_packets.i, align 16
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %42, i32 0, i32 4, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #9
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %48) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !259
  %49 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %51 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tx_stopped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool27.not = icmp eq i8 %52, 0
  br i1 %tobool27.not, label %if.then25.if.end37_crit_edge, label %if.then34, !prof !249

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then34:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %27, align 8
  tail call void @qtnf_wake_all_queues(ptr noundef %54) #9
  %55 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %tx_stopped, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then25.if.end37_crit_edge, %if.then22.if.end37_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %17, i32 noundef 1) #9
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %while.body.if.end38_crit_edge
  %56 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_skb, align 4
  %arrayidx40 = getelementptr ptr, ptr %57, i32 %i.088
  %58 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx40, align 4
  %inc = add i32 %count.087, 1
  %inc41 = add i32 %i.088, 1
  %59 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tx_bd_num, align 4
  %conv43 = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc41, i32 %conv43)
  %cmp44.not = icmp slt i32 %inc41, %conv43
  %spec.store.select = select i1 %cmp44.not, i32 %inc41, i32 0
  %sub13 = sub i32 %3, %spec.store.select
  %sub16 = add nsw i32 %conv43, -1
  %and17 = and i32 %sub16, %sub13
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end38.while.end_crit_edge, label %if.end38.while.body_crit_edge

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %if.end.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %inc, %if.end38.while.end_crit_edge ]
  %i.0.lcssa = phi i32 [ %5, %if.end.while.end_crit_edge ], [ %spec.store.select, %if.end38.while.end_crit_edge ]
  %tx_reclaim_done = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 27
  %61 = ptrtoint ptr %tx_reclaim_done to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_reclaim_done, align 4
  %add = add i32 %62, %count.0.lcssa
  store i32 %add, ptr %tx_reclaim_done, align 4
  %tx_reclaim_req = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 28
  %63 = ptrtoint ptr %tx_reclaim_req to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_reclaim_req, align 4
  %inc48 = add i32 %64, 1
  store i32 %inc48, ptr %tx_reclaim_req, align 4
  %65 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %i.0.lcssa, ptr %tx_bd_r_index, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_reclaim_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #3

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
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !215) #9
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !274
  %5 = tail call i32 @llvm.read_register.i32(metadata !215) #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !275
  %14 = tail call i32 @llvm.read_register.i32(metadata !215) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !215) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !215) #9
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !276
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !277
  %33 = tail call i32 @llvm.read_register.i32(metadata !215) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !249

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !278
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #9
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_topaz_fw_upload(ptr nocapture noundef readonly %ts, ptr noundef %fwname) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !226
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ts, align 4
  %bda = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 1
  %3 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bda, align 4
  %bda_bootstate = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %4, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 50331648
  br i1 %cmp.i.not.i, label %do.end5, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond = icmp eq i32 %inc.i, 3001
  br i1 %exitcond, label %do.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

do.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef %fwname) #12
  br label %cleanup

do.end5:                                          ; preds = %while.cond.i
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, ptr noundef %fwname) #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call8 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fwname, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %if.end15

do.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35, ptr noundef %fwname, i32 noundef %call8) #12
  br label %cleanup

if.end15:                                         ; preds = %do.end5
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %call16 = call fastcc i32 @qtnf_ep_fw_load(ptr noundef %ts, ptr noundef %9, i32 noundef %11)
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %do.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.35, ptr noundef %fwname) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end15.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end12 ], [ %call16, %do.end21 ], [ 0, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_poll_state(ptr noundef %reg, i32 noundef %state, i32 noundef %delay_in_ms) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %timeout.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #9, !srcloc !229
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %state)
  %cmp.i.not = icmp eq i32 %1, %state
  br i1 %cmp.i.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc = add i32 %timeout.0, 1
  %cmp1 = icmp ugt i32 %inc, %delay_in_ms
  br i1 %cmp1, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %while.body.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_post_init_ep(ptr nocapture noundef %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %dmareg_bar.i = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 12
  %2 = ptrtoint ptr %dmareg_bar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmareg_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !229
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  %dma_msi_imwr.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 3
  %6 = ptrtoint ptr %dma_msi_imwr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dma_msi_imwr.i, align 4
  %7 = ptrtoint ptr %dmareg_bar.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmareg_bar.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %8, i32 2512
  %dma_msi_dummy.i = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 2
  %9 = ptrtoint ptr %dma_msi_dummy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_msi_dummy.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %11) #9, !srcloc !228
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %bda = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 1
  %13 = ptrtoint ptr %bda to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bda, align 4
  %bda_bootstate = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %14, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, 335544320
  br i1 %cmp.i.not.i, label %if.end, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond = icmp eq i32 %inc.i, 30001
  br i1 %exitcond, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %17) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_pcie_fw_boot_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_debugfs_add_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_dbg_pkt_stats(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %ep_next_rx_pkt = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %retval.0.i, i32 0, i32 6
  %4 = ptrtoint ptr %ep_next_rx_pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep_next_rx_pkt, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !229
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  %tx_full_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 25
  %8 = ptrtoint ptr %tx_full_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_full_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef %9) #9
  %tx_done_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 26
  %10 = ptrtoint ptr %tx_done_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_done_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.69, i32 noundef %11) #9
  %tx_reclaim_done = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 27
  %12 = ptrtoint ptr %tx_reclaim_done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_reclaim_done, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.70, i32 noundef %13) #9
  %tx_reclaim_req = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 28
  %14 = ptrtoint ptr %tx_reclaim_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_reclaim_req, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, i32 noundef %15) #9
  %tx_bd_r_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 23
  %16 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_bd_r_index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, i32 noundef %17) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, i32 noundef %7) #9
  %tx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 22
  %18 = ptrtoint ptr %tx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_bd_w_index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.74, i32 noundef %19) #9
  %20 = ptrtoint ptr %tx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_bd_w_index, align 4
  %22 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_bd_r_index, align 4
  %sub = sub i32 %21, %23
  %tx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 15
  %24 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx_bd_num, align 4
  %conv = zext i16 %25 to i32
  %sub6 = add nsw i32 %conv, -1
  %and = and i32 %sub6, %sub
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.75, i32 noundef %and) #9
  %26 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_bd_r_index, align 4
  %sub8 = sub i32 %7, %27
  %28 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tx_bd_num, align 4
  %conv10 = zext i16 %29 to i32
  %sub11 = add nsw i32 %conv10, -1
  %and12 = and i32 %sub11, %sub8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.76, i32 noundef %and12) #9
  %30 = ptrtoint ptr %tx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_bd_w_index, align 4
  %sub14 = sub i32 %31, %7
  %32 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tx_bd_num, align 4
  %conv16 = zext i16 %33 to i32
  %sub17 = add nsw i32 %conv16, -1
  %and18 = and i32 %sub17, %sub14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, i32 noundef %and18) #9
  %rx_bd_r_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 21
  %34 = ptrtoint ptr %rx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_bd_r_index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, i32 noundef %35) #9
  %rx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 20
  %36 = ptrtoint ptr %rx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_bd_w_index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, i32 noundef %37) #9
  %38 = ptrtoint ptr %rx_bd_r_index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_bd_r_index, align 4
  %40 = ptrtoint ptr %rx_bd_w_index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_bd_w_index, align 4
  %add.neg = xor i32 %41, -1
  %sub21 = add i32 %39, %add.neg
  %rx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 16
  %42 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rx_bd_num, align 2
  %conv22 = zext i16 %43 to i32
  %sub23 = add nsw i32 %conv22, -1
  %and24 = and i32 %sub23, %sub21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.80, i32 noundef %and24) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_dbg_irq_stats(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !225

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %pcie_irq_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 24
  %4 = ptrtoint ptr %pcie_irq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pcie_irq_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.81, i32 noundef %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_ep_fw_load(ptr nocapture noundef readonly %ts, ptr noundef %fw, i32 noundef %fw_size) unnamed_addr #0 align 64 {
entry:
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bda1 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bda1, align 4
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #9
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %paddr, align 4, !annotation !226
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_ep_fw_load, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !260

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_ep_fw_load.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, ptr noundef %fw, i32 noundef %fw_size) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fw_blksize = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 19
  %5 = ptrtoint ptr %fw_blksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_blksize, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 4096)
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %do.body9

do.body9:                                         ; preds = %if.end28.do.body9_crit_edge, %do.end
  %blksize.0240 = phi i32 [ %7, %do.end ], [ %div183, %if.end28.do.body9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_ep_fw_load, %if.then21)) #9
          to label %do.end24 [label %if.then21], !srcloc !260

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_ep_fw_load.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.46, i32 noundef %blksize.0240) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body9
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %blksize.0240, ptr noundef nonnull %paddr, i32 noundef 3264, i32 noundef 0) #9
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %if.end28, label %if.end36

if.end28:                                         ; preds = %do.end24
  %div183 = lshr i32 %blksize.0240, 1
  %cmp8 = icmp ugt i32 %blksize.0240, 8191
  br i1 %cmp8, label %if.end28.do.body9_crit_edge, label %do.end33

if.end28.do.body9_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.46) #12
  br label %fw_load_out

if.end36:                                         ; preds = %do.end24
  %blksize.0240.frozen = freeze i32 %blksize.0240
  %div37 = udiv i32 %fw_size, %blksize.0240.frozen
  %8 = mul i32 %div37, %blksize.0240.frozen
  %rem.decomposed = sub i32 %fw_size, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp38.not = icmp ne i32 %rem.decomposed, 0
  %cond = zext i1 %cmp38.not to i32
  %add = add i32 %div37, %cond
  %bda_dma_offset = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 4
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_dma_offset) #9, !srcloc !229
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  %11 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bda1, align 4
  %bda_bootstate = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %12, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_bootstate, i32 134217728) #9, !srcloc !228
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %14 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bda1, align 4
  %bda_bootstate44 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %15, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end36
  %timeout.0.i = phi i32 [ 0, %if.end36 ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate44) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 184549376, i32 %16)
  %cmp.i.not.i = icmp eq i32 %16, 184549376
  br i1 %cmp.i.not.i, label %for.cond.preheader, label %while.body.i

for.cond.preheader:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp54241.not = icmp eq i32 %add, 0
  br i1 %cmp54241.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bda_img = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 6
  %bda_img_size = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 7
  br label %for.body

while.body.i:                                     ; preds = %while.cond.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond = icmp eq i32 %inc.i, 3001
  br i1 %exitcond, label %do.end50, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

do.end50:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.46) #12
  br label %fw_load_map

for.body:                                         ; preds = %if.end86.for.body_crit_edge, %for.body.lr.ph
  %remaining.0244 = phi i32 [ %fw_size, %for.body.lr.ph ], [ %sub, %if.end86.for.body_crit_edge ]
  %curr.0243 = phi ptr [ %fw, %for.body.lr.ph ], [ %add.ptr, %if.end86.for.body_crit_edge ]
  %count.0242 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end86.for.body_crit_edge ]
  %17 = call i32 @llvm.umin.i32(i32 %remaining.0244, i32 %blksize.0240)
  %18 = call ptr @memcpy(ptr %call.i, ptr %curr.0243, i32 %17)
  %19 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %paddr, align 4
  %add57 = add i32 %20, %10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  %21 = call i32 @llvm.bswap.i32(i32 %add57) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_img, i32 %21) #9, !srcloc !228
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_img) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  %23 = call i32 @llvm.bswap.i32(i32 %17) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_img_size, i32 %23) #9, !srcloc !228
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_img_size) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_ep_fw_load, %if.then70)) #9
          to label %do.end73 [label %if.then70], !srcloc !260

if.then70:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_ep_fw_load.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.46, i32 noundef %count.0242, ptr noundef %curr.0243, ptr noundef nonnull %paddr, i32 noundef %17) #9
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %for.body
  %25 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bda1, align 4
  %bda_bootstate75 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %26, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_bootstate75, i32 167772160) #9, !srcloc !228
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate75) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %28 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bda1, align 4
  %bda_bootstate77 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %29, i32 0, i32 2
  br label %while.cond.i196

while.cond.i196:                                  ; preds = %while.body.i199.while.cond.i196_crit_edge, %do.end73
  %timeout.0.i194 = phi i32 [ 0, %do.end73 ], [ %inc.i197, %while.body.i199.while.cond.i196_crit_edge ]
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate77) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %30)
  %cmp.i.not.i195 = icmp eq i32 %30, 150994944
  br i1 %cmp.i.not.i195, label %if.end86, label %while.body.i199

while.body.i199:                                  ; preds = %while.cond.i196
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc.i197 = add nuw nsw i32 %timeout.0.i194, 1
  %exitcond248 = icmp eq i32 %inc.i197, 3001
  br i1 %exitcond248, label %do.end83, label %while.body.i199.while.cond.i196_crit_edge

while.body.i199.while.cond.i196_crit_edge:        ; preds = %while.body.i199
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i196

do.end83:                                         ; preds = %while.body.i199
  call void @__sanitizer_cov_trace_pc() #11
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.46, i32 noundef %count.0242) #12
  br label %fw_load_map

if.end86:                                         ; preds = %while.cond.i196
  %sub = sub i32 %remaining.0244, %17
  %add.ptr = getelementptr i8, ptr %curr.0243, i32 %17
  %inc = add nuw i32 %count.0242, 1
  %exitcond249.not = icmp eq i32 %inc, %add
  br i1 %exitcond249.not, label %if.end86.for.end_crit_edge, label %if.end86.for.body_crit_edge

if.end86.for.body_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end86.for.end_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end86.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bda_img92 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_img92, i32 0) #9, !srcloc !228
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_img92) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %bda_img_size93 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %1, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_img_size93, i32 0) #9, !srcloc !228
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_img_size93) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %33 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bda1, align 4
  %bda_bootstate95 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %34, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_bootstate95, i32 167772160) #9, !srcloc !228
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate95) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %36 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bda1, align 4
  %bda_bootstate97 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %37, i32 0, i32 2
  br label %while.cond.i204

while.cond.i204:                                  ; preds = %while.body.i207.while.cond.i204_crit_edge, %for.end
  %timeout.0.i202 = phi i32 [ 0, %for.end ], [ %inc.i205, %while.body.i207.while.cond.i204_crit_edge ]
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate97) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %38)
  %cmp.i.not.i203 = icmp eq i32 %38, 150994944
  br i1 %cmp.i.not.i203, label %if.end106, label %while.body.i207

while.body.i207:                                  ; preds = %while.cond.i204
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc.i205 = add nuw nsw i32 %timeout.0.i202, 1
  %exitcond250 = icmp eq i32 %inc.i205, 3001
  br i1 %exitcond250, label %do.end103, label %while.body.i207.while.cond.i204_crit_edge

while.body.i207.while.cond.i204_crit_edge:        ; preds = %while.body.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i204

do.end103:                                        ; preds = %while.body.i207
  call void @__sanitizer_cov_trace_pc() #11
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.46) #12
  br label %fw_load_map

if.end106:                                        ; preds = %while.cond.i204
  %39 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bda1, align 4
  %bda_bootstate108 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %40, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_bootstate108, i32 201326592) #9, !srcloc !228
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate108) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %42 = ptrtoint ptr %bda1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bda1, align 4
  %bda_bootstate110 = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %43, i32 0, i32 2
  br label %while.cond.i212

while.cond.i212:                                  ; preds = %while.body.i215.while.cond.i212_crit_edge, %if.end106
  %timeout.0.i210 = phi i32 [ 0, %if.end106 ], [ %inc.i213, %while.body.i215.while.cond.i212_crit_edge ]
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_bootstate110) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %44)
  %cmp.i.not.i211 = icmp eq i32 %44, 67108864
  br i1 %cmp.i.not.i211, label %do.body120, label %while.body.i215

while.body.i215:                                  ; preds = %while.cond.i212
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %inc.i213 = add nuw nsw i32 %timeout.0.i210, 1
  %exitcond251 = icmp eq i32 %inc.i213, 3001
  br i1 %exitcond251, label %do.end116, label %while.body.i215.while.cond.i212_crit_edge

while.body.i215.while.cond.i212_crit_edge:        ; preds = %while.body.i215
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i212

do.end116:                                        ; preds = %while.body.i215
  call void @__sanitizer_cov_trace_pc() #11
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.46) #12
  br label %fw_load_map

do.body120:                                       ; preds = %while.cond.i212
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_ep_fw_load, %if.then132)) #9
          to label %fw_load_map [label %if.then132], !srcloc !260

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_ep_fw_load.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.46, i32 noundef %add) #9
  br label %fw_load_map

fw_load_map:                                      ; preds = %if.then132, %do.body120, %do.end116, %do.end103, %do.end83, %do.end50
  %ret.0 = phi i32 [ -110, %do.end50 ], [ -110, %do.end83 ], [ -110, %do.end103 ], [ -110, %do.end116 ], [ 0, %if.then132 ], [ 0, %do.body120 ]
  %45 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %paddr, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %blksize.0240, ptr noundef nonnull %call.i, i32 noundef %46, i32 noundef 0) #9
  br label %fw_load_out

fw_load_out:                                      ; preds = %fw_load_map, %do.end33
  %ret.1 = phi i32 [ %ret.0, %fw_load_map ], [ -12, %do.end33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #9
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_pcie_alloc_skb_array(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @topaz_alloc_bd_table(ptr nocapture noundef %ts, ptr noundef %bda) unnamed_addr #0 align 64 {
entry:
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #9
  %0 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %paddr, align 4, !annotation !226
  %tx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 15
  %1 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tx_bd_num, align 4
  %conv = zext i16 %2 to i32
  %rx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 16
  %3 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rx_bd_num, align 2
  %conv1 = zext i16 %4 to i32
  %mul79 = add nuw nsw i32 %conv1, %conv
  %add = shl nuw nsw i32 %mul79, 3
  %add3 = add nuw nsw i32 %add, 16
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i = call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef %add3, ptr noundef nonnull %paddr, i32 noundef 3264, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 4
  %7 = ptrtoint ptr %tx_bd_vbase to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %tx_bd_vbase, align 4
  %8 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paddr, align 4
  %bda_rc_tx_bd_base = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %bda, i32 0, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  %10 = call i32 @llvm.bswap.i32(i32 %9) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_rc_tx_bd_base, i32 %10) #9, !srcloc !228
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_rc_tx_bd_base) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %12 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_bd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp86.not = icmp eq i16 %13, 0
  br i1 %cmp86.not, label %if.end.do.body_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.087 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %tx_bd_vbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_bd_vbase, align 4
  %info = getelementptr %struct.qtnf_topaz_tx_bd, ptr %15, i32 %i.087, i32 1
  %16 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %info, align 1
  %or = or i32 %17, 16777216
  store i32 %or, ptr %info, align 1
  %inc = add nuw nsw i32 %i.087, 1
  %18 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_bd_num, align 4
  %conv5 = zext i16 %19 to i32
  %cmp = icmp ult i32 %inc, %conv5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @topaz_alloc_bd_table.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topaz_alloc_bd_table, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !260

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @topaz_alloc_bd_table.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104, ptr noundef nonnull %call.i, ptr noundef nonnull %paddr) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %tx_bd_r_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 23
  %20 = ptrtoint ptr %tx_bd_r_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tx_bd_r_index, align 4
  %tx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 22
  %21 = ptrtoint ptr %tx_bd_w_index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tx_bd_w_index, align 4
  %22 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tx_bd_num, align 4
  %conv15 = zext i16 %23 to i32
  %add.ptr = getelementptr %struct.qtnf_topaz_tx_bd, ptr %call.i, i32 %conv15
  %mul18 = shl nuw nsw i32 %conv15, 3
  %24 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %paddr, align 4
  %add19 = add i32 %mul18, %25
  store i32 %add19, ptr %paddr, align 4
  %rx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 5
  %26 = ptrtoint ptr %rx_bd_vbase to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %rx_bd_vbase, align 4
  %bda_rc_rx_bd_base = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %bda, i32 0, i32 19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  %27 = call i32 @llvm.bswap.i32(i32 %add19) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_rc_rx_bd_base, i32 %27) #9, !srcloc !228
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_rc_rx_bd_base) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @topaz_alloc_bd_table.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topaz_alloc_bd_table, %if.then32)) #9
          to label %do.end35 [label %if.then32], !srcloc !260

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @topaz_alloc_bd_table.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.104, ptr noundef %add.ptr, ptr noundef nonnull %paddr) #9
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.end
  %29 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rx_bd_num, align 2
  %conv37 = zext i16 %30 to i32
  %add.ptr38 = getelementptr %struct.qtnf_topaz_rx_bd, ptr %add.ptr, i32 %conv37
  %mul41 = shl nuw nsw i32 %conv37, 3
  %31 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %paddr, align 4
  %add42 = add i32 %mul41, %32
  store i32 %add42, ptr %paddr, align 4
  %ep_next_rx_pkt = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 6
  %33 = ptrtoint ptr %ep_next_rx_pkt to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr38, ptr %ep_next_rx_pkt, align 4
  %bda_ep_next_pkt = getelementptr inbounds %struct.qtnf_topaz_bda, ptr %bda, i32 0, i32 27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @arm_heavy_mb() #9
  %34 = call i32 @llvm.bswap.i32(i32 %add42) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bda_ep_next_pkt, i32 %34) #9, !srcloc !228
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bda_ep_next_pkt) #9, !srcloc !229
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %param2 = getelementptr inbounds %struct.qtnf_extra_bd_params, ptr %add.ptr38, i32 0, i32 1
  %txqueue_wake = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 7
  %36 = ptrtoint ptr %txqueue_wake to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %param2, ptr %txqueue_wake, align 4
  %param3 = getelementptr inbounds %struct.qtnf_extra_bd_params, ptr %add.ptr38, i32 0, i32 2
  %ep_pmstate = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 8
  %37 = ptrtoint ptr %ep_pmstate to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %param3, ptr %ep_pmstate, align 4
  %38 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %paddr, align 4
  %add44 = add i32 %39, 12
  %dma_msi_dummy = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 2
  %40 = ptrtoint ptr %dma_msi_dummy to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add44, ptr %dma_msi_dummy, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end35 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @topaz_skb2rbd_attach(ptr nocapture noundef %ts, i16 noundef zeroext %index, i32 noundef %wrap) unnamed_addr #0 align 64 {
entry:
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_bd_vbase = getelementptr inbounds %struct.qtnf_pcie_topaz_state, ptr %ts, i32 0, i32 5
  %0 = ptrtoint ptr %rx_bd_vbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_bd_vbase, align 4
  %idxprom = zext i16 %index to i32
  %arrayidx = getelementptr %struct.qtnf_topaz_rx_bd, ptr %1, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #9
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2050, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 18
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx2, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %8, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %rx_skb4 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 18
  %9 = ptrtoint ptr %rx_skb4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_skb4, align 4
  %arrayidx6 = getelementptr ptr, ptr %10, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %arrayidx6, align 4
  %12 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = load ptr, ptr %data.i.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %14) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !249

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i31 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i31, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %14, i32 noundef 2048) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %14 to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %21 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %paddr, align 4
  %22 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ts, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev11, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.end, label %if.end16

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, ptr noundef nonnull %paddr) #12
  br label %cleanup

if.end16:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %paddr, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %arrayidx, align 1
  %or = or i32 %wrap, 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %or)
  %info = getelementptr %struct.qtnf_topaz_rx_bd, ptr %1, i32 %idxprom, i32 1
  %29 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %info, align 1
  %rx_bd_w_index = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %ts, i32 0, i32 20
  %30 = ptrtoint ptr %rx_bd_w_index to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %idxprom, ptr %rx_bd_w_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %if.then
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end16 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_classify_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214}
!llvm.named.register.sp = !{!215}
!llvm.module.flags = !{!216, !217, !218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/quantenna/qtnfmac/bus.h", i32 94, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @qtnf_pcie_topaz_probe.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1130, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1141, i32 21}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1143, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @qtnf_pcie_topaz_probe._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @qtnf_pcie_topaz_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1151, i32 3}
!16 = !{ptr @qtnf_pcie_topaz_probe._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @qtnf_pcie_topaz_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1157, i32 3}
!20 = !{ptr @qtnf_pcie_topaz_probe._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qtnf_pcie_topaz_probe._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @qtnf_pcie_topaz_bus_ops, !23, !"qtnf_pcie_topaz_bus_ops", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 744, i32 28}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1045, i32 34}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1058, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @qtnf_topaz_fw_work_handler._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @qtnf_topaz_fw_work_handler._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1066, i32 34}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1075, i32 4}
!42 = !{ptr @qtnf_topaz_fw_work_handler._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @qtnf_topaz_fw_work_handler._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1084, i32 4}
!46 = !{ptr @qtnf_topaz_fw_work_handler._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @qtnf_topaz_fw_work_handler._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1091, i32 3}
!50 = !{ptr @qtnf_topaz_fw_work_handler._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qtnf_topaz_fw_work_handler._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1095, i32 2}
!54 = !{ptr @qtnf_topaz_fw_work_handler._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @qtnf_topaz_fw_work_handler._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1101, i32 30}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1102, i32 30}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1013, i32 3}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @qtnf_topaz_fw_upload._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @qtnf_topaz_fw_upload._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1017, i32 2}
!67 = !{ptr @qtnf_topaz_fw_upload._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @qtnf_topaz_fw_upload._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1021, i32 3}
!71 = !{ptr @qtnf_topaz_fw_upload._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @qtnf_topaz_fw_upload._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 1029, i32 3}
!75 = !{ptr @qtnf_topaz_fw_upload._entry.42, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @qtnf_topaz_fw_upload._entry_ptr.44, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 917, i32 2}
!79 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug468, !78, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!82 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 925, i32 3}
!85 = !{ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug469, !84, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!86 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 934, i32 3}
!89 = !{ptr @qtnf_ep_fw_load._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @qtnf_ep_fw_load._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 945, i32 3}
!93 = !{ptr @qtnf_ep_fw_load._entry.52, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @qtnf_ep_fw_load._entry_ptr.54, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 957, i32 3}
!97 = !{ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug470, !96, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!98 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 964, i32 4}
!101 = !{ptr @qtnf_ep_fw_load._entry.57, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @qtnf_ep_fw_load._entry_ptr.59, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 980, i32 3}
!105 = !{ptr @qtnf_ep_fw_load._entry.60, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @qtnf_ep_fw_load._entry_ptr.62, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.64, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 989, i32 3}
!109 = !{ptr @qtnf_ep_fw_load._entry.63, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @qtnf_ep_fw_load._entry_ptr.65, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 994, i32 2}
!113 = !{ptr @qtnf_ep_fw_load.__UNIQUE_ID_ddebug471, !112, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!114 = !{ptr @.str.67, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 772, i32 16}
!117 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 773, i32 16}
!119 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 774, i32 16}
!121 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 775, i32 16}
!123 = !{ptr @.str.72, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 777, i32 16}
!125 = !{ptr @.str.73, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 778, i32 16}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 779, i32 16}
!129 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 781, i32 16}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 784, i32 16}
!133 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 787, i32 16}
!135 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 791, i32 16}
!137 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 792, i32 16}
!139 = !{ptr @.str.80, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 793, i32 16}
!141 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 760, i32 16}
!143 = !{ptr @.str.82, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 859, i32 3}
!145 = !{ptr @.str.83, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @qtnf_pre_init_ep._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @qtnf_pre_init_ep._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.85, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 879, i32 3}
!150 = !{ptr @qtnf_pre_init_ep._entry.84, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @qtnf_pre_init_ep._entry_ptr.86, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.87, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 829, i32 4}
!154 = !{ptr @.str.88, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @qtnf_pcie_endian_detect._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @qtnf_pcie_endian_detect._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.89, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 839, i32 2}
!159 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 347, i32 3}
!161 = !{ptr @.str.91, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @qtnf_pcie_topaz_init_xfer._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @qtnf_pcie_topaz_init_xfer._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 359, i32 3}
!166 = !{ptr @qtnf_pcie_topaz_init_xfer._entry.92, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @qtnf_pcie_topaz_init_xfer._entry_ptr.94, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.96, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 372, i32 3}
!170 = !{ptr @qtnf_pcie_topaz_init_xfer._entry.95, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @qtnf_pcie_topaz_init_xfer._entry_ptr.97, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.99, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 378, i32 3}
!174 = !{ptr @qtnf_pcie_topaz_init_xfer._entry.98, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @qtnf_pcie_topaz_init_xfer._entry_ptr.100, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 384, i32 3}
!178 = !{ptr @qtnf_pcie_topaz_init_xfer._entry.101, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @qtnf_pcie_topaz_init_xfer._entry_ptr.103, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.104, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 211, i32 2}
!182 = !{ptr @.str.105, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @topaz_alloc_bd_table.__UNIQUE_ID_ddebug465, !181, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!184 = !{ptr @.str.106, !181, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.107, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 224, i32 2}
!187 = !{ptr @topaz_alloc_bd_table.__UNIQUE_ID_ddebug466, !186, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!188 = !{ptr @.str.108, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.109, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 261, i32 3}
!191 = !{ptr @.str.110, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @topaz_skb2rbd_attach._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @topaz_skb2rbd_attach._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.111, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 639, i32 4}
!196 = !{ptr @.str.112, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @qtnf_topaz_rx_poll._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @qtnf_topaz_rx_poll._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.114, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 644, i32 4}
!201 = !{ptr @qtnf_topaz_rx_poll._entry.113, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @qtnf_topaz_rx_poll._entry_ptr.115, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.117, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 649, i32 4}
!205 = !{ptr @qtnf_topaz_rx_poll._entry.116, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @qtnf_topaz_rx_poll._entry_ptr.118, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.119, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 669, i32 5}
!209 = !{ptr @qtnf_topaz_rx_poll.__UNIQUE_ID_ddebug467, !208, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!210 = !{ptr @.str.120, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.122, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c", i32 701, i32 5}
!213 = !{ptr @qtnf_topaz_rx_poll._entry.121, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @qtnf_topaz_rx_poll._entry_ptr.123, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{!"sp"}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 1, !"min_enum_size", i32 4}
!218 = !{i32 8, !"branch-target-enforcement", i32 0}
!219 = !{i32 8, !"sign-return-address", i32 0}
!220 = !{i32 8, !"sign-return-address-all", i32 0}
!221 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!222 = !{i32 7, !"uwtable", i32 1}
!223 = !{i32 7, !"frame-pointer", i32 2}
!224 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!225 = !{!"branch_weights", i32 1, i32 2000}
!226 = !{!"auto-init"}
!227 = !{i64 2158391738}
!228 = !{i64 5011276}
!229 = !{i64 5011694}
!230 = !{i64 2158392349}
!231 = !{i64 2158401217}
!232 = !{i64 2158507119}
!233 = !{i64 2158507495}
!234 = !{i64 2158508027}
!235 = !{i64 2158505442}
!236 = !{i64 2158505818}
!237 = !{i64 2158506350}
!238 = !{i64 2158488824}
!239 = !{i8 0, i8 2}
!240 = !{i64 2158403557}
!241 = !{i64 2158400603}
!242 = !{i64 2158399915}
!243 = !{i64 2158448782}
!244 = !{i64 2158449077}
!245 = !{i64 2158449316}
!246 = !{i64 2158450037}
!247 = !{i64 2158452011}
!248 = !{i64 2158452509}
!249 = !{!"branch_weights", i32 2000, i32 1}
!250 = !{i64 2158453312}
!251 = !{i64 2158453708}
!252 = !{i64 2158454100}
!253 = !{i64 2158456350}
!254 = !{i64 5011079}
!255 = !{i64 2158448138}
!256 = !{i64 2158448369}
!257 = !{i64 2158456909}
!258 = !{i64 2158457369}
!259 = !{i64 2149768003}
!260 = !{i64 2148719895, i64 2148719900, i64 2148719913, i64 2148719957, i64 2148719991, i64 2148720012}
!261 = !{i64 2158444215}
!262 = !{i64 2158402736}
!263 = !{i64 2158424179}
!264 = !{i64 2158424449}
!265 = !{i64 2158424981}
!266 = !{i64 2158428136}
!267 = !{i64 2158428674}
!268 = !{i64 2158428988}
!269 = !{i64 2158429514}
!270 = !{i64 2158425855}
!271 = !{i64 2158426387}
!272 = !{i64 2158422511}
!273 = !{i64 2158423120}
!274 = !{i64 2149659685}
!275 = !{i64 2149664617}
!276 = !{i64 2149686329}
!277 = !{i64 2149691221}
!278 = !{i64 2149767678}
!279 = !{i64 2158402081}
!280 = !{i64 2158447189}
!281 = !{i64 2158467220}
