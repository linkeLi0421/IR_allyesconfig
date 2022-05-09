; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_pci.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fm10k_msg_data = type { i32, ptr, ptr }
%struct.fm10k_tlv_attr = type { i32, i32, i16 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fm10k_info = type { i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fm10k_hw = type { ptr, ptr, %struct.fm10k_mac_info, %struct.fm10k_bus_info, %struct.fm10k_bus_info, %struct.fm10k_iov_info, %struct.fm10k_mbx_info, %struct.fm10k_swapi_info, i16, i16, i16, i16, i8 }
%struct.fm10k_mac_info = type { %struct.fm10k_mac_ops, i32, [6 x i8], [6 x i8], i16, i16, i16, i8, i8, i8, i32, i8, i64 }
%struct.fm10k_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_bus_info = type { i32, i32, i32 }
%struct.fm10k_iov_info = type { %struct.fm10k_iov_ops, i16, i16, i16 }
%struct.fm10k_iov_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_info = type { %struct.fm10k_mbx_ops, ptr, %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, [640 x i32] }
%struct.fm10k_mbx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_fifo = type { ptr, i16, i16, i16 }
%struct.fm10k_swapi_info = type { i32, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info }
%struct.fm10k_swapi_table_info = type { i32, i32 }
%struct.fm10k_intfc = type { [128 x i32], ptr, ptr, ptr, [1 x i32], [1 x i32], i32, i32, i16, i32, i16, [90 x i8], [128 x ptr], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, [128 x ptr], [256 x ptr], ptr, i32, [2 x %struct.fm10k_ring_feature], ptr, %struct.fm10k_hw_stats, %struct.fm10k_hw, %struct.spinlock, ptr, ptr, i16, i16, i16, %struct.timer_list, %struct.work_struct, i32, i32, i32, i32, i8, i8, [32 x i32], [10 x i32], i16, i16, %struct.list_head, %struct.delayed_work, %struct.spinlock, ptr, i8, i8, i16, i16, i16, [36 x i8] }
%struct.fm10k_ring_feature = type { i16, i16, i16, i16 }
%struct.fm10k_hw_stats = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, [128 x %struct.fm10k_hw_stats_q] }
%struct.fm10k_hw_stat = type { i64, i32, i32 }
%struct.fm10k_hw_stats_q = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.fm10k_ring = type { ptr, ptr, ptr, ptr, ptr, %union.anon.115, ptr, [1 x i32], i32, i32, i8, i8, i8, i16, i16, i16, i16, i16, %struct.fm10k_queue_stats, %struct.u64_stats_sync, %union.anon.116, [72 x i8] }
%union.anon.115 = type { ptr }
%struct.fm10k_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { %struct.fm10k_rx_queue_stats, ptr }
%struct.fm10k_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.msix_entry = type { i32, i16 }
%struct.fm10k_q_vector = type { ptr, ptr, i16, %struct.fm10k_ring_container, %struct.fm10k_ring_container, %struct.napi_struct, %struct.cpumask, [25 x i8], ptr, %struct.callback_head, [60 x i8], [0 x %struct.fm10k_ring] }
%struct.fm10k_ring_container = type { ptr, i32, i32, i16, i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.fm10k_dglort_cfg = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.114 = type { ptr }
%struct.fm10k_fault = type { i64, i32, i8, i8 }
%struct.fm10k_iov_data = type { i32, i32, %struct.callback_head, [0 x %struct.fm10k_vf_info] }
%struct.fm10k_vf_info = type { %struct.fm10k_mbx_info, [16 x %struct.fm10k_hw_stats_q], i32, i16, i16, i16, [6 x i8], i8, i8, i8 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PCIe link lost, device now detached\0A\00", [59 x i8] zeroinitializer }, align 32
@fm10k_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-TxRx-%u\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-rx-%u\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-tx-%u\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"request_irq failed for MSIX interrupt Error: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@fm10k_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1944, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Tx queues failed to drain after %d tries. Tx DMA is probably hung.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fm10k_down\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/fm10k/fm10k_pci.c\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fm10k_down._entry_ptr = internal global ptr @fm10k_down._entry, section ".printk_index", align 4
@fm10k_down._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1950, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"due to pending requests hw was not shut down gracefully\0A\00", [39 x i8] zeroinitializer }, align 32
@fm10k_down._entry_ptr.12 = internal global ptr @fm10k_down._entry.10, section ".printk_index", align 4
@fm10k_down._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 1952, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stop_hw failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@fm10k_down._entry_ptr.15 = internal global ptr @fm10k_down._entry.13, section ".printk_index", align 4
@fm10k_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @fm10k_driver_name, ptr @fm10k_pci_tbl, ptr @fm10k_probe, ptr @fm10k_remove, ptr null, ptr null, ptr null, ptr @fm10k_iov_configure, ptr null, ptr null, ptr @fm10k_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fm10k_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fm10k\00", [26 x i8] zeroinitializer }, align 32
@pf_mbx_data = internal constant { [7 x %struct.fm10k_msg_data], [44 x i8] } { [7 x %struct.fm10k_msg_data] [%struct.fm10k_msg_data { i32 1, ptr @fm10k_err_msg_attr, ptr @fm10k_msg_err_pf }, %struct.fm10k_msg_data { i32 2, ptr @fm10k_err_msg_attr, ptr @fm10k_msg_err_pf }, %struct.fm10k_msg_data { i32 256, ptr @fm10k_lport_map_msg_attr, ptr @fm10k_lport_map }, %struct.fm10k_msg_data { i32 512, ptr @fm10k_err_msg_attr, ptr @fm10k_msg_err_pf }, %struct.fm10k_msg_data { i32 513, ptr @fm10k_err_msg_attr, ptr @fm10k_msg_err_pf }, %struct.fm10k_msg_data { i32 1024, ptr @fm10k_update_pvid_msg_attr, ptr @fm10k_update_pvid }, %struct.fm10k_msg_data { i32 -1, ptr null, ptr @fm10k_mbx_error }], [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"request_irq for msix_mbx failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@fm10k_err_msg_attr = external dso_local constant [0 x %struct.fm10k_tlv_attr], align 4
@fm10k_lport_map_msg_attr = external dso_local constant [0 x %struct.fm10k_tlv_attr], align 4
@fm10k_update_pvid_msg_attr = external dso_local constant [0 x %struct.fm10k_tlv_attr], align 4
@fm10k_lport_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.7, i32 1569, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"cannot obtain link because the host interface is configured for a PCIe host interface bandwidth of zero\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fm10k_lport_map\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fm10k_lport_map._entry_ptr = internal global ptr @fm10k_lport_map._entry, section ".printk_index", align 4
@fm10k_lport_map._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.7, i32 1572, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"request logical port map failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@fm10k_lport_map._entry_ptr.23 = internal global ptr @fm10k_lport_map._entry.21, section ".printk_index", align 4
@fm10k_mbx_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 1496, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown message ID %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fm10k_mbx_error\00", [16 x i8] zeroinitializer }, align 32
@fm10k_mbx_error._entry_ptr = internal global ptr @fm10k_mbx_error._entry, section ".printk_index", align 4
@fm10k_report_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 1320, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error reading fault\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fm10k_report_fault\00", [45 x i8] zeroinitializer }, align 32
@fm10k_report_fault._entry_ptr = internal global ptr @fm10k_report_fault._entry, section ".printk_index", align 4
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown PCA error\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCA_NO_FAULT\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCA_UNMAPPED_ADDR\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCA_BAD_QACCESS_PF\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCA_BAD_QACCESS_VF\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCA_MALICIOUS_REQ\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCA_POISONED_TLP\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCA_TLP_ABORT\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown THI error\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"THI_NO_FAULT\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"THI_MAL_DIS_Q_FAULT\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown FUM error\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FUM_NO_FAULT\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FUM_UNMAPPED_ADDR\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FUM_BAD_VF_QACCESS\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FUM_ADD_DECODE_ERR\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FUM_RO_ERROR\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FUM_QPRC_CRC_ERROR\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FUM_CSR_TIMEOUT\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FUM_INVALID_TYPE\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FUM_INVALID_LENGTH\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FUM_INVALID_BE\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FUM_INVALID_ALIGN\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Undocumented fault\00", [45 x i8] zeroinitializer }, align 32
@fm10k_handle_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.7, i32 1276, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s Address: 0x%llx SpecInfo: 0x%x Func: %02x.%0x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fm10k_handle_fault\00", [45 x i8] zeroinitializer }, align 32
@fm10k_handle_fault._entry_ptr = internal global ptr @fm10k_handle_fault._entry, section ".printk_index", align 4
@vf_mbx_data = internal constant { [4 x %struct.fm10k_msg_data], [48 x i8] } { [4 x %struct.fm10k_msg_data] [%struct.fm10k_msg_data { i32 0, ptr @fm10k_tlv_msg_test_attr, ptr @fm10k_tlv_msg_test }, %struct.fm10k_msg_data { i32 2, ptr @fm10k_mac_vlan_msg_attr, ptr @fm10k_mbx_mac_addr }, %struct.fm10k_msg_data { i32 3, ptr @fm10k_lport_state_msg_attr, ptr @fm10k_msg_lport_state_vf }, %struct.fm10k_msg_data { i32 -1, ptr null, ptr @fm10k_mbx_error }], [48 x i8] zeroinitializer }, align 32
@fm10k_tlv_msg_test_attr = external dso_local constant [0 x %struct.fm10k_tlv_attr], align 4
@fm10k_mac_vlan_msg_attr = external dso_local constant [0 x %struct.fm10k_tlv_attr], align 4
@fm10k_lport_state_msg_attr = external dso_local constant [0 x %struct.fm10k_tlv_attr], align 4
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not enable Tx Queue %d\0A\00", [34 x i8] zeroinitializer }, align 32
@fm10k_driver_name = external dso_local global [0 x i8], align 1
@fm10k_pci_tbl = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 5540, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5584, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5589, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5541, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@fm10k_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @fm10k_io_error_detected, ptr null, ptr @fm10k_io_slot_reset, ptr @fm10k_io_reset_prepare, ptr @fm10k_io_reset_done, ptr @fm10k_io_resume }, [40 x i8] zeroinitializer }, align 32
@fm10k_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fm10k_suspend, ptr @fm10k_resume, ptr @fm10k_suspend, ptr @fm10k_resume, ptr @fm10k_suspend, ptr @fm10k_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fm10k_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.7, i32 2103, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"PCI device still in an error state. Unable to load...\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fm10k_probe\00", [20 x i8] zeroinitializer }, align 32
@fm10k_probe._entry_ptr = internal global ptr @fm10k_probe._entry, section ".printk_index", align 4
@fm10k_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.7, i32 2110, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCI enable device failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@fm10k_probe._entry_ptr.59 = internal global ptr @fm10k_probe._entry.57, section ".printk_index", align 4
@fm10k_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.7, i32 2119, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA configuration failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@fm10k_probe._entry_ptr.62 = internal global ptr @fm10k_probe._entry.60, section ".printk_index", align 4
@fm10k_probe._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.7, i32 2126, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pci_request_selected_regions failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@fm10k_probe._entry_ptr.65 = internal global ptr @fm10k_probe._entry.63, section ".printk_index", align 4
@fm10k_info_tbl = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fm10k_pf_info, ptr @fm10k_vf_info], [24 x i8] zeroinitializer }, align 32
@fm10k_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&interface->service_timer)\00", [36 x i8] zeroinitializer }, align 32
@fm10k_probe.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&interface->service_task)\00", [52 x i8] zeroinitializer }, align 32
@fm10k_probe.__key.69 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&interface->macvlan_task)->work)\00", [43 x i8] zeroinitializer }, align 32
@fm10k_probe.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&interface->macvlan_task)->timer\00", [61 x i8] zeroinitializer }, align 32
@fm10k_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.56, ptr @.str.7, i32 2208, ptr @.str.75, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fm10k_probe._entry_ptr.76 = internal global ptr @fm10k_probe._entry.73, section ".printk_index", align 4
@fm10k_pf_info = external dso_local constant %struct.fm10k_info, align 4
@fm10k_vf_info = external dso_local constant %struct.fm10k_info, align 4
@fm10k_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.7, i32 2020, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reset_hw failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fm10k_sw_init\00", [18 x i8] zeroinitializer }, align 32
@fm10k_sw_init._entry_ptr = internal global ptr @fm10k_sw_init._entry, section ".printk_index", align 4
@fm10k_sw_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.7, i32 2026, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init_hw failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@fm10k_sw_init._entry_ptr.81 = internal global ptr @fm10k_sw_init._entry.79, section ".printk_index", align 4
@fm10k_sw_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.7, i32 2043, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to obtain MAC address defaulting to random\0A\00", [45 x i8] zeroinitializer }, align 32
@fm10k_sw_init._entry_ptr.84 = internal global ptr @fm10k_sw_init._entry.82, section ".printk_index", align 4
@fm10k_sw_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.7, i32 2052, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid MAC Address\0A\00", [43 x i8] zeroinitializer }, align 32
@fm10k_sw_init._entry_ptr.87 = internal global ptr @fm10k_sw_init._entry.85, section ".printk_index", align 4
@fm10k_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&interface->mbx_lock\00", [43 x i8] zeroinitializer }, align 32
@fm10k_sw_init.__key.89 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&interface->macvlan_lock\00", [39 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCIe link restored, device now attached\0A\00", [55 x i8] zeroinitializer }, align 32
@fm10k_handle_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.93, ptr @.str.7, i32 272, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fm10k_handle_reset\00", [45 x i8] zeroinitializer }, align 32
@fm10k_handle_reset._entry_ptr = internal global ptr @fm10k_handle_reset._entry, section ".printk_index", align 4
@fm10k_handle_reset._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.93, ptr @.str.7, i32 278, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@fm10k_handle_reset._entry_ptr.95 = internal global ptr @fm10k_handle_reset._entry.94, section ".printk_index", align 4
@fm10k_handle_reset._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.93, ptr @.str.7, i32 285, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"init_queueing_scheme failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@fm10k_handle_reset._entry_ptr.98 = internal global ptr @fm10k_handle_reset._entry.96, section ".printk_index", align 4
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Reset interface\0A\00", [47 x i8] zeroinitializer }, align 32
@fm10k_reset_subtask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.7, i32 414, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fm10k_handle_reset failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fm10k_reset_subtask\00", [44 x i8] zeroinitializer }, align 32
@fm10k_reset_subtask._entry_ptr = internal global ptr @fm10k_reset_subtask._entry, section ".printk_index", align 4
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NIC Link is up\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NIC Link is down\0A\00", [46 x i8] zeroinitializer }, align 32
@fm10k_io_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.7, i32 2427, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fm10k_io_slot_reset\00", [44 x i8] zeroinitializer }, align 32
@fm10k_io_slot_reset._entry_ptr = internal global ptr @fm10k_io_slot_reset._entry, section ".printk_index", align 4
@fm10k_io_reset_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.7, i32 2480, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"PCIe FLR may cause issues for any active VF devices\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fm10k_io_reset_prepare\00", [41 x i8] zeroinitializer }, align 32
@fm10k_io_reset_prepare._entry_ptr = internal global ptr @fm10k_io_reset_prepare._entry, section ".printk_index", align 4
@fm10k_io_reset_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.7, i32 2498, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fm10k_io_reset_done\00", [44 x i8] zeroinitializer }, align 32
@fm10k_io_reset_done._entry_ptr = internal global ptr @fm10k_io_reset_done._entry, section ".printk_index", align 4
@fm10k_handle_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.7, i32 2315, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Device was shut down as part of suspend... Attempting to recover\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fm10k_handle_resume\00", [44 x i8] zeroinitializer }, align 32
@fm10k_handle_resume._entry_ptr = internal global ptr @fm10k_handle_resume._entry, section ".printk_index", align 4
@fm10k_io_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.112, ptr @.str.7, i32 2463, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fm10k_io_resume\00", [16 x i8] zeroinitializer }, align 32
@fm10k_io_resume._entry_ptr = internal global ptr @fm10k_io_resume._entry, section ".printk_index", align 4
@switch.table.fm10k_msix_mbx_pf = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], [36 x i8] zeroinitializer }, align 32
@switch.table.fm10k_msix_mbx_pf.113 = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 28]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 64, i32 22 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1771, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1775, i32 6 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1778, i32 6 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1793, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1942, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1949, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1952, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [13 x i8] c"fm10k_driver\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2513, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2532, i32 9 }
@___asan_gen_.169 = private unnamed_addr constant [12 x i8] c"pf_mbx_data\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1631, i32 36 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1661, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1568, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1570, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1495, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1319, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1230, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1232, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1233, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1234, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1235, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1236, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1237, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1238, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1244, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1246, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1247, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1253, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1255, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1256, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1257, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1258, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1259, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1260, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1261, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1262, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1263, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1264, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1265, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1269, i32 11 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1273, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [12 x i8] c"vf_mbx_data\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1501, i32 36 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 948, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [14 x i8] c"fm10k_pci_tbl\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 24, i32 35 }
@___asan_gen_.301 = private unnamed_addr constant [18 x i8] c"fm10k_err_handler\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2503, i32 40 }
@___asan_gen_.304 = private unnamed_addr constant [13 x i8] c"fm10k_pm_ops\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2511, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2102, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2109, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2118, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2125, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [15 x i8] c"fm10k_info_tbl\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 10, i32 33 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2195, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2196, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2199, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2208, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2020, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2026, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2042, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2052, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2074, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2075, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 379, i32 23 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 386, i32 23 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 272, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 278, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 284, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 409, i32 32 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 413, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 507, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 525, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2426, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2479, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2497, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2314, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.488 = private constant [48 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 2462, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant [31 x i8] c"switch.table.fm10k_msix_mbx_pf\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [35 x i8] c"switch.table.fm10k_msix_mbx_pf.113\00", align 1
@llvm.compiler.used = appending global [152 x ptr] [ptr @fm10k_down._entry, ptr @fm10k_down._entry.10, ptr @fm10k_down._entry.13, ptr @fm10k_down._entry_ptr, ptr @fm10k_down._entry_ptr.12, ptr @fm10k_down._entry_ptr.15, ptr @fm10k_handle_fault._entry, ptr @fm10k_handle_fault._entry_ptr, ptr @fm10k_handle_reset._entry, ptr @fm10k_handle_reset._entry.94, ptr @fm10k_handle_reset._entry.96, ptr @fm10k_handle_reset._entry_ptr, ptr @fm10k_handle_reset._entry_ptr.95, ptr @fm10k_handle_reset._entry_ptr.98, ptr @fm10k_handle_resume._entry, ptr @fm10k_handle_resume._entry_ptr, ptr @fm10k_io_reset_done._entry, ptr @fm10k_io_reset_done._entry_ptr, ptr @fm10k_io_reset_prepare._entry, ptr @fm10k_io_reset_prepare._entry_ptr, ptr @fm10k_io_resume._entry, ptr @fm10k_io_resume._entry_ptr, ptr @fm10k_io_slot_reset._entry, ptr @fm10k_io_slot_reset._entry_ptr, ptr @fm10k_lport_map._entry, ptr @fm10k_lport_map._entry.21, ptr @fm10k_lport_map._entry_ptr, ptr @fm10k_lport_map._entry_ptr.23, ptr @fm10k_mbx_error._entry, ptr @fm10k_mbx_error._entry_ptr, ptr @fm10k_probe._entry, ptr @fm10k_probe._entry.57, ptr @fm10k_probe._entry.60, ptr @fm10k_probe._entry.63, ptr @fm10k_probe._entry.73, ptr @fm10k_probe._entry_ptr, ptr @fm10k_probe._entry_ptr.59, ptr @fm10k_probe._entry_ptr.62, ptr @fm10k_probe._entry_ptr.65, ptr @fm10k_probe._entry_ptr.76, ptr @fm10k_report_fault._entry, ptr @fm10k_report_fault._entry_ptr, ptr @fm10k_reset_subtask._entry, ptr @fm10k_reset_subtask._entry_ptr, ptr @fm10k_sw_init._entry, ptr @fm10k_sw_init._entry.79, ptr @fm10k_sw_init._entry.82, ptr @fm10k_sw_init._entry.85, ptr @fm10k_sw_init._entry_ptr, ptr @fm10k_sw_init._entry_ptr.81, ptr @fm10k_sw_init._entry_ptr.84, ptr @fm10k_sw_init._entry_ptr.87, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @fm10k_driver, ptr @.str.16, ptr @pf_mbx_data, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @vf_mbx_data, ptr @.str.54, ptr @fm10k_pci_tbl, ptr @fm10k_err_handler, ptr @fm10k_pm_ops, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @fm10k_info_tbl, ptr @fm10k_probe.__key, ptr @.str.66, ptr @fm10k_probe.__key.67, ptr @.str.68, ptr @fm10k_probe.__key.69, ptr @.str.70, ptr @fm10k_probe.__key.71, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @fm10k_sw_init.__key, ptr @.str.88, ptr @fm10k_sw_init.__key.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @switch.table.fm10k_msix_mbx_pf, ptr @switch.table.fm10k_msix_mbx_pf.113], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_down._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_down._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf_mbx_data to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_lport_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_lport_map._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_mbx_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_report_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_handle_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf_mbx_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_pci_tbl to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_probe._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_info_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_probe.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_probe.__key.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_probe.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_sw_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_sw_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_sw_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_sw_init.__key.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_handle_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_handle_reset._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_handle_reset._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_reset_subtask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_io_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_io_reset_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_io_reset_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_handle_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_io_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fm10k_msix_mbx_pf to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fm10k_msix_mbx_pf.113 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fm10k_read_pci_cfg_word(ptr noundef %hw, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %value, align 2
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !235

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef %reg, ptr noundef nonnull %value) #8
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp = icmp eq i16 %8, -1
  br i1 %cmp, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then7.if.end9_crit_edge, label %if.end.i, !prof !235

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.i:                                         ; preds = %if.then7
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #8, !srcloc !236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool8.not.i = icmp eq i32 %11, -1
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %if.end.i.if.end9_crit_edge

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %back, align 4
  %netdev18.i = getelementptr inbounds %struct.fm10k_intfc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %netdev18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev18.i, align 128
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %hw, align 8
  call void @netif_device_detach(ptr noundef %15) #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str) #11
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.i, %if.end.i.if.end9_crit_edge, %if.then7.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %value, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %18, %if.end9 ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #8
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !235

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i32, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #8, !srcloc !236
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool8.not = icmp eq i32 %2, -1
  br i1 %tobool8.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %tobool9.not = icmp eq i32 %reg, 0
  br i1 %tobool9.not, label %land.lhs.true.if.then17_crit_edge, label %lor.lhs.false

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool16.not = icmp eq i32 %4, -1
  br i1 %tobool16.not, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %land.lhs.true.if.then17_crit_edge
  %back = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 4
  %netdev18 = getelementptr inbounds %struct.fm10k_intfc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev18, align 128
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %hw, align 8
  tail call void @netif_device_detach(ptr noundef %8) #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %3, %if.then17 ], [ %3, %lor.lhs.false.cleanup_crit_edge ], [ %3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_macvlan_schedule(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %3 = load ptr, ptr @fm10k_workqueue, align 4
  %macvlan_task = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 61
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %macvlan_task, i32 noundef 10) #8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_service_event_schedule(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %3 = load ptr, ptr @fm10k_workqueue, align 4
  %service_task = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 49
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %service_task) #8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_update_stats(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 128
  %stats = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 4
  %call = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup114_crit_edge

entry.cleanup114_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 100
  %next_stats_update = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 50
  %3 = ptrtoint ptr %next_stats_update to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %next_stats_update, align 8
  %num_tx_queues = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 7
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp229 = icmp sgt i32 %5, 0
  br i1 %cmp229, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %hw_csum_tx_good.0236 = phi i64 [ %hw_csum_tx_good.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.0235 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %pkts.0234 = phi i64 [ %pkts.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %bytes.0233 = phi i64 [ %bytes.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %tx_busy.0232 = phi i64 [ %tx_busy.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %restart_queue.0231 = phi i64 [ %restart_queue.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %tx_csum_errors.0230 = phi i64 [ %tx_csum_errors.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 12, i32 %i.0235
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %if.end5

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = getelementptr inbounds %struct.fm10k_ring, ptr %7, i32 0, i32 20
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %add7 = add i64 %10, %restart_queue.0231
  %tx_busy8 = getelementptr inbounds %struct.fm10k_ring, ptr %7, i32 0, i32 20, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %tx_busy8 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_busy8, align 8
  %add9 = add i64 %12, %tx_busy.0232
  %csum_err = getelementptr inbounds %struct.fm10k_ring, ptr %7, i32 0, i32 20, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %csum_err to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %csum_err, align 8
  %add10 = add i64 %14, %tx_csum_errors.0230
  %stats11 = getelementptr inbounds %struct.fm10k_ring, ptr %7, i32 0, i32 18
  %bytes12 = getelementptr inbounds %struct.fm10k_ring, ptr %7, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %bytes12 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bytes12, align 8
  %add13 = add i64 %16, %bytes.0233
  %17 = ptrtoint ptr %stats11 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %stats11, align 8
  %add15 = add i64 %18, %pkts.0234
  %csum_good = getelementptr inbounds %struct.fm10k_ring, ptr %7, i32 0, i32 20, i32 0, i32 0, i32 4
  %19 = ptrtoint ptr %csum_good to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %csum_good, align 8
  %add16 = add i64 %20, %hw_csum_tx_good.0236
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %for.body.cleanup_crit_edge
  %tx_csum_errors.1 = phi i64 [ %add10, %if.end5 ], [ %tx_csum_errors.0230, %for.body.cleanup_crit_edge ]
  %restart_queue.1 = phi i64 [ %add7, %if.end5 ], [ %restart_queue.0231, %for.body.cleanup_crit_edge ]
  %tx_busy.1 = phi i64 [ %add9, %if.end5 ], [ %tx_busy.0232, %for.body.cleanup_crit_edge ]
  %bytes.1 = phi i64 [ %add13, %if.end5 ], [ %bytes.0233, %for.body.cleanup_crit_edge ]
  %pkts.1 = phi i64 [ %add15, %if.end5 ], [ %pkts.0234, %for.body.cleanup_crit_edge ]
  %hw_csum_tx_good.1 = phi i64 [ %add16, %if.end5 ], [ %hw_csum_tx_good.0236, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0235, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end.loopexit, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t278 = trunc i64 %pkts.1 to i32
  %extract.t = trunc i64 %bytes.1 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %tx_csum_errors.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %tx_csum_errors.1, %for.end.loopexit ]
  %restart_queue.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %restart_queue.1, %for.end.loopexit ]
  %tx_busy.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %tx_busy.1, %for.end.loopexit ]
  %bytes.0.lcssa.off0 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %extract.t, %for.end.loopexit ]
  %pkts.0.lcssa.off0 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %extract.t278, %for.end.loopexit ]
  %hw_csum_tx_good.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %hw_csum_tx_good.1, %for.end.loopexit ]
  %restart_queue17 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 13
  %21 = ptrtoint ptr %restart_queue17 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %restart_queue.0.lcssa, ptr %restart_queue17, align 128
  %tx_busy18 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 14
  %22 = ptrtoint ptr %tx_busy18 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %tx_busy.0.lcssa, ptr %tx_busy18, align 8
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %23 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bytes.0.lcssa.off0, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %24 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %pkts.0.lcssa.off0, ptr %tx_packets, align 4
  %tx_csum_errors20 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 15
  %25 = ptrtoint ptr %tx_csum_errors20 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %tx_csum_errors.0.lcssa, ptr %tx_csum_errors20, align 16
  %hw_csum_tx_good21 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 26
  %26 = ptrtoint ptr %hw_csum_tx_good21 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %hw_csum_tx_good.0.lcssa, ptr %hw_csum_tx_good21, align 8
  %num_rx_queues = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 9
  %27 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_rx_queues, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp23242 = icmp sgt i32 %28, 0
  br i1 %cmp23242, label %for.end.for.body25_crit_edge, label %for.end.for.end66_crit_edge

for.end.for.end66_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end66

for.end.for.body25_crit_edge:                     ; preds = %for.end
  br label %for.body25

for.body25:                                       ; preds = %cleanup61.for.body25_crit_edge, %for.end.for.body25_crit_edge
  %i.1254 = phi i32 [ %inc65, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %pkts.2253 = phi i64 [ %pkts.3, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %bytes.2252 = phi i64 [ %bytes.3, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %alloc_failed.0251 = phi i64 [ %alloc_failed.1, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %rx_csum_errors.0250 = phi i64 [ %rx_csum_errors.1, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %rx_errors.0249 = phi i64 [ %rx_errors.1, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %rx_link_errors.0248 = phi i64 [ %rx_link_errors.1, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %rx_pp_errors.0247 = phi i64 [ %rx_pp_errors.1, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %rx_drops.0246 = phi i64 [ %rx_drops.1, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %rx_switch_errors.0245 = phi i64 [ %rx_switch_errors.1, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %rx_length_errors.0244 = phi i64 [ %rx_length_errors.1, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %hw_csum_rx_good.0243 = phi i64 [ %hw_csum_rx_good.1, %cleanup61.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %arrayidx31 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 34, i32 %i.1254
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %30, null
  br i1 %tobool32.not, label %for.body25.cleanup61_crit_edge, label %if.end34

for.body25.cleanup61_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup61

if.end34:                                         ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  %stats35 = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 18
  %bytes36 = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %bytes36 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes36, align 8
  %add37 = add i64 %32, %bytes.2252
  %33 = ptrtoint ptr %stats35 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %stats35, align 8
  %add40 = add i64 %34, %pkts.2253
  %35 = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 20
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %35, align 8
  %add42 = add i64 %37, %alloc_failed.0251
  %csum_err44 = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 20, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %csum_err44 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %csum_err44, align 8
  %add45 = add i64 %39, %rx_csum_errors.0250
  %errors = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 20, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %errors to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %errors, align 8
  %add47 = add i64 %41, %rx_errors.0249
  %csum_good49 = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 20, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %csum_good49 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %csum_good49, align 8
  %add50 = add i64 %43, %hw_csum_rx_good.0243
  %switch_errors = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 20, i32 0, i32 0, i32 4
  %44 = ptrtoint ptr %switch_errors to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %switch_errors, align 8
  %add52 = add i64 %45, %rx_switch_errors.0245
  %drops = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 20, i32 0, i32 0, i32 5
  %46 = ptrtoint ptr %drops to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %drops, align 8
  %add54 = add i64 %47, %rx_drops.0246
  %pp_errors = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 20, i32 0, i32 0, i32 6
  %48 = ptrtoint ptr %pp_errors to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %pp_errors, align 8
  %add56 = add i64 %49, %rx_pp_errors.0247
  %link_errors = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 20, i32 0, i32 0, i32 7
  %50 = ptrtoint ptr %link_errors to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %link_errors, align 8
  %add58 = add i64 %51, %rx_link_errors.0248
  %length_errors = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 20, i32 0, i32 0, i32 8
  %52 = ptrtoint ptr %length_errors to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %length_errors, align 8
  %add60 = add i64 %53, %rx_length_errors.0244
  br label %cleanup61

cleanup61:                                        ; preds = %if.end34, %for.body25.cleanup61_crit_edge
  %hw_csum_rx_good.1 = phi i64 [ %add50, %if.end34 ], [ %hw_csum_rx_good.0243, %for.body25.cleanup61_crit_edge ]
  %rx_length_errors.1 = phi i64 [ %add60, %if.end34 ], [ %rx_length_errors.0244, %for.body25.cleanup61_crit_edge ]
  %rx_switch_errors.1 = phi i64 [ %add52, %if.end34 ], [ %rx_switch_errors.0245, %for.body25.cleanup61_crit_edge ]
  %rx_drops.1 = phi i64 [ %add54, %if.end34 ], [ %rx_drops.0246, %for.body25.cleanup61_crit_edge ]
  %rx_pp_errors.1 = phi i64 [ %add56, %if.end34 ], [ %rx_pp_errors.0247, %for.body25.cleanup61_crit_edge ]
  %rx_link_errors.1 = phi i64 [ %add58, %if.end34 ], [ %rx_link_errors.0248, %for.body25.cleanup61_crit_edge ]
  %rx_errors.1 = phi i64 [ %add47, %if.end34 ], [ %rx_errors.0249, %for.body25.cleanup61_crit_edge ]
  %rx_csum_errors.1 = phi i64 [ %add45, %if.end34 ], [ %rx_csum_errors.0250, %for.body25.cleanup61_crit_edge ]
  %alloc_failed.1 = phi i64 [ %add42, %if.end34 ], [ %alloc_failed.0251, %for.body25.cleanup61_crit_edge ]
  %bytes.3 = phi i64 [ %add37, %if.end34 ], [ %bytes.2252, %for.body25.cleanup61_crit_edge ]
  %pkts.3 = phi i64 [ %add40, %if.end34 ], [ %pkts.2253, %for.body25.cleanup61_crit_edge ]
  %inc65 = add nuw nsw i32 %i.1254, 1
  %exitcond282.not = icmp eq i32 %inc65, %28
  br i1 %exitcond282.not, label %for.end66.loopexit, label %cleanup61.for.body25_crit_edge

cleanup61.for.body25_crit_edge:                   ; preds = %cleanup61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25

for.end66.loopexit:                               ; preds = %cleanup61
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t281 = trunc i64 %pkts.3 to i32
  %extract.t280 = trunc i64 %bytes.3 to i32
  %extract.t279 = trunc i64 %rx_errors.1 to i32
  br label %for.end66

for.end66:                                        ; preds = %for.end66.loopexit, %for.end.for.end66_crit_edge
  %hw_csum_rx_good.0.lcssa = phi i64 [ 0, %for.end.for.end66_crit_edge ], [ %hw_csum_rx_good.1, %for.end66.loopexit ]
  %rx_length_errors.0.lcssa = phi i64 [ 0, %for.end.for.end66_crit_edge ], [ %rx_length_errors.1, %for.end66.loopexit ]
  %rx_switch_errors.0.lcssa = phi i64 [ 0, %for.end.for.end66_crit_edge ], [ %rx_switch_errors.1, %for.end66.loopexit ]
  %rx_drops.0.lcssa = phi i64 [ 0, %for.end.for.end66_crit_edge ], [ %rx_drops.1, %for.end66.loopexit ]
  %rx_pp_errors.0.lcssa = phi i64 [ 0, %for.end.for.end66_crit_edge ], [ %rx_pp_errors.1, %for.end66.loopexit ]
  %rx_link_errors.0.lcssa = phi i64 [ 0, %for.end.for.end66_crit_edge ], [ %rx_link_errors.1, %for.end66.loopexit ]
  %rx_errors.0.lcssa.off0 = phi i32 [ 0, %for.end.for.end66_crit_edge ], [ %extract.t279, %for.end66.loopexit ]
  %rx_csum_errors.0.lcssa = phi i64 [ 0, %for.end.for.end66_crit_edge ], [ %rx_csum_errors.1, %for.end66.loopexit ]
  %alloc_failed.0.lcssa = phi i64 [ 0, %for.end.for.end66_crit_edge ], [ %alloc_failed.1, %for.end66.loopexit ]
  %bytes.2.lcssa.off0 = phi i32 [ 0, %for.end.for.end66_crit_edge ], [ %extract.t280, %for.end66.loopexit ]
  %pkts.2.lcssa.off0 = phi i32 [ 0, %for.end.for.end66_crit_edge ], [ %extract.t281, %for.end66.loopexit ]
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %54 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %bytes.2.lcssa.off0, ptr %rx_bytes, align 4
  %55 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %pkts.2.lcssa.off0, ptr %stats, align 4
  %alloc_failed69 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 16
  %56 = ptrtoint ptr %alloc_failed69 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %alloc_failed.0.lcssa, ptr %alloc_failed69, align 8
  %rx_csum_errors70 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 17
  %57 = ptrtoint ptr %rx_csum_errors70 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %rx_csum_errors.0.lcssa, ptr %rx_csum_errors70, align 32
  %hw_csum_rx_good71 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 27
  %58 = ptrtoint ptr %hw_csum_rx_good71 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %hw_csum_rx_good.0.lcssa, ptr %hw_csum_rx_good71, align 16
  %rx_switch_errors72 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 28
  %59 = ptrtoint ptr %rx_switch_errors72 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %rx_switch_errors.0.lcssa, ptr %rx_switch_errors72, align 8
  %rx_drops73 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 29
  %60 = ptrtoint ptr %rx_drops73 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %rx_drops.0.lcssa, ptr %rx_drops73, align 128
  %rx_pp_errors74 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 30
  %61 = ptrtoint ptr %rx_pp_errors74 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %rx_pp_errors.0.lcssa, ptr %rx_pp_errors74, align 8
  %rx_link_errors75 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 31
  %62 = ptrtoint ptr %rx_link_errors75 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %rx_link_errors.0.lcssa, ptr %rx_link_errors75, align 16
  %rx_length_errors76 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 32
  %63 = ptrtoint ptr %rx_length_errors76 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %rx_length_errors.0.lcssa, ptr %rx_length_errors76, align 8
  %update_hw_stats = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 14
  %64 = ptrtoint ptr %update_hw_stats to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %update_hw_stats, align 8
  %stats77 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 40
  tail call void %65(ptr noundef %hw1, ptr noundef %stats77) #8
  %max_queues = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 6
  %66 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %max_queues, align 8
  %conv80 = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp81266.not = icmp eq i16 %67, 0
  br i1 %cmp81266.not, label %for.end66.for.end103_crit_edge, label %for.end66.for.body83_crit_edge

for.end66.for.body83_crit_edge:                   ; preds = %for.end66
  br label %for.body83

for.end66.for.end103_crit_edge:                   ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end103

for.body83:                                       ; preds = %for.body83.for.body83_crit_edge, %for.end66.for.body83_crit_edge
  %i.2272 = phi i32 [ %inc102, %for.body83.for.body83_crit_edge ], [ 0, %for.end66.for.body83_crit_edge ]
  %tx_pkts_nic.0271 = phi i64 [ %add91, %for.body83.for.body83_crit_edge ], [ 0, %for.end66.for.body83_crit_edge ]
  %tx_bytes_nic.0270 = phi i64 [ %add88, %for.body83.for.body83_crit_edge ], [ 0, %for.end66.for.body83_crit_edge ]
  %rx_drops_nic.0269 = phi i64 [ %add100, %for.body83.for.body83_crit_edge ], [ 0, %for.end66.for.body83_crit_edge ]
  %rx_pkts_nic.0268 = phi i64 [ %add97, %for.body83.for.body83_crit_edge ], [ 0, %for.end66.for.body83_crit_edge ]
  %rx_bytes_nic.0267 = phi i64 [ %add94, %for.body83.for.body83_crit_edge ], [ 0, %for.end66.for.body83_crit_edge ]
  %arrayidx86 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 40, i32 8, i32 %i.2272
  %68 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx86, align 8
  %add88 = add i64 %69, %tx_bytes_nic.0270
  %tx_packets89 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 40, i32 8, i32 %i.2272, i32 1
  %70 = ptrtoint ptr %tx_packets89 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %tx_packets89, align 8
  %add91 = add i64 %71, %tx_pkts_nic.0271
  %rx_bytes92 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 40, i32 8, i32 %i.2272, i32 2
  %72 = ptrtoint ptr %rx_bytes92 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %rx_bytes92, align 8
  %add94 = add i64 %73, %rx_bytes_nic.0267
  %rx_packets95 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 40, i32 8, i32 %i.2272, i32 3
  %74 = ptrtoint ptr %rx_packets95 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %rx_packets95, align 8
  %add97 = add i64 %75, %rx_pkts_nic.0268
  %rx_drops98 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 40, i32 8, i32 %i.2272, i32 4
  %76 = ptrtoint ptr %rx_drops98 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %rx_drops98, align 8
  %add100 = add i64 %77, %rx_drops_nic.0269
  %inc102 = add nuw nsw i32 %i.2272, 1
  %exitcond283.not = icmp eq i32 %inc102, %conv80
  br i1 %exitcond283.not, label %for.body83.for.end103_crit_edge, label %for.body83.for.body83_crit_edge

for.body83.for.body83_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body83

for.body83.for.end103_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end103

for.end103:                                       ; preds = %for.body83.for.end103_crit_edge, %for.end66.for.end103_crit_edge
  %rx_bytes_nic.0.lcssa = phi i64 [ 0, %for.end66.for.end103_crit_edge ], [ %add94, %for.body83.for.end103_crit_edge ]
  %rx_pkts_nic.0.lcssa = phi i64 [ 0, %for.end66.for.end103_crit_edge ], [ %add97, %for.body83.for.end103_crit_edge ]
  %rx_drops_nic.0.lcssa = phi i64 [ 0, %for.end66.for.end103_crit_edge ], [ %add100, %for.body83.for.end103_crit_edge ]
  %tx_bytes_nic.0.lcssa = phi i64 [ 0, %for.end66.for.end103_crit_edge ], [ %add88, %for.body83.for.end103_crit_edge ]
  %tx_pkts_nic.0.lcssa = phi i64 [ 0, %for.end66.for.end103_crit_edge ], [ %add91, %for.body83.for.end103_crit_edge ]
  %tx_bytes_nic104 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 18
  %78 = ptrtoint ptr %tx_bytes_nic104 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %tx_bytes_nic.0.lcssa, ptr %tx_bytes_nic104, align 8
  %tx_packets_nic = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 19
  %79 = ptrtoint ptr %tx_packets_nic to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %tx_pkts_nic.0.lcssa, ptr %tx_packets_nic, align 16
  %rx_bytes_nic105 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 20
  %80 = ptrtoint ptr %rx_bytes_nic105 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %rx_bytes_nic.0.lcssa, ptr %rx_bytes_nic105, align 8
  %rx_packets_nic = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 21
  %81 = ptrtoint ptr %rx_packets_nic to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %rx_pkts_nic.0.lcssa, ptr %rx_packets_nic, align 64
  %rx_drops_nic106 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 22
  %82 = ptrtoint ptr %rx_drops_nic106 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %rx_drops_nic.0.lcssa, ptr %rx_drops_nic106, align 8
  %rx_errors108 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %83 = ptrtoint ptr %rx_errors108 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %rx_errors.0.lcssa.off0, ptr %rx_errors108, align 4
  %nodesc_drop = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 40, i32 7
  %84 = ptrtoint ptr %nodesc_drop to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %nodesc_drop, align 16
  %conv111 = trunc i64 %85 to i32
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %86 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv111, ptr %rx_dropped, align 4
  tail call void @fm10k_iov_update_stats(ptr noundef %interface) #8
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %state) #8
  br label %cleanup114

cleanup114:                                       ; preds = %for.end103, %entry.cleanup114_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_iov_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_update_rx_drop_en(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %num_rx_queues = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 9
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35 = icmp sgt i32 %1, 0
  br i1 %cmp35, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pfc_en = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 64
  %2 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pfc_en, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %rx_pause2 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 65
  %4 = ptrtoint ptr %rx_pause2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_pause2, align 1
  %spec.select = select i1 %tobool.not, i8 %5, i8 %3
  %conv = zext i8 %spec.select to i32
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end21.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 34, i32 %i.036
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %reg_idx4 = getelementptr inbounds %struct.fm10k_ring, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %reg_idx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_idx4, align 1
  %qos_pc = getelementptr inbounds %struct.fm10k_ring, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %qos_pc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %qos_pc, align 2
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw1, align 8
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %for.body.if.end21_crit_edge, label %do.body16, !prof !235

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.body16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = zext i8 %11 to i32
  %shl = shl nuw i32 1, %conv5
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %spec.select34 = select i1 %tobool6.not, i32 513, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %spec.select34)
  %conv19 = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %conv19, 6
  %add = or i32 %mul, 16391
  %arrayidx20 = getelementptr i32, ptr %13, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20, i32 %14) #8, !srcloc !240
  br label %if.end21

if.end21:                                         ; preds = %do.body16, %for.body.if.end21_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %15 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_rx_queues, align 32
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %if.end21.for.body_crit_edge, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_mbx_free_irq(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %msix_entries = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 36
  %0 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msix_entries, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbx = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6
  %disconnect = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6, i32 0, i32 1
  %2 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect, align 4
  tail call void %3(ptr noundef %hw1, ptr noundef %mbx) #8
  %type = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %do.body, label %if.end.do.body21_crit_edge

if.end.do.body21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

do.body:                                          ; preds = %if.end
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.body.do.body21_crit_edge, label %do.body13, !prof !235

do.body.do.body21_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %arrayidx16 = getelementptr i32, ptr %7, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16, i32 22302977) #8, !srcloc !240
  br label %do.body21

do.body21:                                        ; preds = %do.body13, %do.body.do.body21_crit_edge, %if.end.do.body21_crit_edge
  %itr_reg.0 = phi i32 [ 74752, %do.body13 ], [ 74752, %do.body.do.body21_crit_edge ], [ 96, %if.end.do.body21_crit_edge ]
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw1, align 8
  %tobool28.not = icmp eq ptr %9, null
  br i1 %tobool28.not, label %do.body21.if.end42_crit_edge, label %do.body38, !prof !235

do.body21.if.end42_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.body38:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  tail call void @arm_heavy_mb() #8
  %arrayidx41 = getelementptr i32, ptr %9, i32 %itr_reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41, i32 64) #8, !srcloc !240
  br label %if.end42

if.end42:                                         ; preds = %do.body38, %do.body21.if.end42_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %call = tail call ptr @free_irq(i32 noundef %11, ptr noundef %interface) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_mbx_request_irq(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %type = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %msix_entries.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 36
  %2 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msix_entries.i, align 4
  %netdev.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev.i, align 128
  %entry3.i = getelementptr inbounds %struct.msix_entry, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %entry3.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %entry3.i, align 4
  %conv.i = zext i16 %7 to i32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %or6.i = or i32 %conv.i, 512
  %mbx.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6
  %register_handlers.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6, i32 0, i32 7
  %8 = ptrtoint ptr %register_handlers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %register_handlers.i, align 4
  %call.i = tail call i32 %9(ptr noundef %mbx.i, ptr noundef nonnull @pf_mbx_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef nonnull @fm10k_msix_mbx_pf, ptr noundef null, i32 noundef 0, ptr noundef %5, ptr noundef %interface) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %do.body16.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %msg_enable.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 45
  %12 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %msg_enable.i, align 4
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool12.not.i = icmp eq i16 %14, 0
  br i1 %tobool12.not.i, label %do.body.i.cleanup_crit_edge, label %if.then13.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef %call.i.i) #11
  br label %cleanup

do.body16.i:                                      ; preds = %if.end.i
  %15 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw1, align 8
  %tobool21.not.i = icmp eq ptr %16, null
  br i1 %tobool21.not.i, label %do.body16.i.if.end30.i_crit_edge, label %do.body26.i, !prof !235

do.body16.i.if.end30.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

do.body26.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !243
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #8
  %arrayidx29.i = getelementptr i32, ptr %16, i32 65665
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx29.i, i32 %17) #8, !srcloc !240
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.body26.i, %do.body16.i.if.end30.i_crit_edge
  %18 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw1, align 8
  %tobool40.not.i = icmp eq ptr %19, null
  br i1 %tobool40.not.i, label %if.end30.i.if.end54.i_crit_edge, label %do.body50.i, !prof !235

if.end30.i.if.end54.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

do.body50.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #8
  %arrayidx53.i = getelementptr i32, ptr %19, i32 65666
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx53.i, i32 %20) #8, !srcloc !240
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.body50.i, %if.end30.i.if.end54.i_crit_edge
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw1, align 8
  %tobool64.not.i = icmp eq ptr %22, null
  br i1 %tobool64.not.i, label %if.end54.i.if.end78.i_crit_edge, label %do.body74.i, !prof !235

if.end54.i.if.end78.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i

do.body74.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #8
  %arrayidx77.i = getelementptr i32, ptr %22, i32 65668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx77.i, i32 %23) #8, !srcloc !240
  br label %if.end78.i

if.end78.i:                                       ; preds = %do.body74.i, %if.end54.i.if.end78.i_crit_edge
  %24 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw1, align 8
  %tobool88.not.i = icmp eq ptr %25, null
  br i1 %tobool88.not.i, label %if.end78.i.if.end102.i_crit_edge, label %do.body98.i, !prof !235

if.end78.i.if.end102.i_crit_edge:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

do.body98.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !246
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #8
  %arrayidx101.i = getelementptr i32, ptr %25, i32 65670
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx101.i, i32 %26) #8, !srcloc !240
  br label %if.end102.i

if.end102.i:                                      ; preds = %do.body98.i, %if.end78.i.if.end102.i_crit_edge
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw1, align 8
  %tobool112.not.i = icmp eq ptr %28, null
  br i1 %tobool112.not.i, label %if.end102.i.if.end126.i_crit_edge, label %do.body122.i, !prof !235

if.end102.i.if.end126.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126.i

do.body122.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #8
  %arrayidx125.i = getelementptr i32, ptr %28, i32 65669
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx125.i, i32 %29) #8, !srcloc !240
  br label %if.end126.i

if.end126.i:                                      ; preds = %do.body122.i, %if.end102.i.if.end126.i_crit_edge
  %30 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw1, align 8
  %tobool136.not.i = icmp eq ptr %31, null
  br i1 %tobool136.not.i, label %if.end126.i.if.end150.i_crit_edge, label %do.body146.i, !prof !235

if.end126.i.if.end150.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150.i

do.body146.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !248
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %arrayidx149.i = getelementptr i32, ptr %31, i32 65664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx149.i, i32 %32) #8, !srcloc !240
  br label %if.end150.i

if.end150.i:                                      ; preds = %do.body146.i, %if.end126.i.if.end150.i_crit_edge
  %33 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw1, align 8
  %tobool160.not.i = icmp eq ptr %34, null
  br i1 %tobool160.not.i, label %if.end150.i.if.end174.i_crit_edge, label %do.body170.i, !prof !235

if.end150.i.if.end174.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174.i

do.body170.i:                                     ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  %arrayidx173.i = getelementptr i32, ptr %34, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx173.i, i32 44605954) #8, !srcloc !240
  br label %if.end174.i

if.end174.i:                                      ; preds = %do.body170.i, %if.end150.i.if.end174.i_crit_edge
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw1, align 8
  %tobool184.not.i = icmp eq ptr %36, null
  br i1 %tobool184.not.i, label %if.end174.i.if.end4_crit_edge, label %do.body194.i, !prof !235

if.end174.i.if.end4_crit_edge:                    ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.body194.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %entry3.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %entry3.i, align 4
  %conv198.i = zext i16 %38 to i32
  %add.i = add nuw nsw i32 %conv198.i, 74752
  %arrayidx199.i = getelementptr i32, ptr %36, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx199.i, i32 160) #8, !srcloc !240
  br label %if.end4

if.else:                                          ; preds = %entry
  %mbx.i25 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6
  %register_handlers.i26 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6, i32 0, i32 7
  %39 = ptrtoint ptr %register_handlers.i26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %register_handlers.i26, align 4
  %call.i27 = tail call i32 %40(ptr noundef %mbx.i25, ptr noundef nonnull @vf_mbx_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %if.end.i30, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i30:                                       ; preds = %if.else
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %call.i.i29 = tail call i32 @request_threaded_irq(i32 noundef %42, ptr noundef nonnull @fm10k_msix_mbx_vf, ptr noundef null, i32 noundef 0, ptr noundef %5, ptr noundef %interface) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %tobool6.not.i = icmp eq i32 %call.i.i29, 0
  br i1 %tobool6.not.i, label %do.body13.i, label %do.body.i33

do.body.i33:                                      ; preds = %if.end.i30
  %msg_enable.i31 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 45
  %43 = ptrtoint ptr %msg_enable.i31 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %msg_enable.i31, align 4
  %45 = and i16 %44, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool9.not.i32 = icmp eq i16 %45, 0
  br i1 %tobool9.not.i32, label %do.body.i33.cleanup_crit_edge, label %if.then10.i

do.body.i33.cleanup_crit_edge:                    ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i:                                      ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef %call.i.i29) #11
  br label %cleanup

do.body13.i:                                      ; preds = %if.end.i30
  %46 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %hw1, align 8
  %tobool18.not.i = icmp eq ptr %47, null
  br i1 %tobool18.not.i, label %do.body13.i.if.end27.i_crit_edge, label %do.body23.i, !prof !235

do.body13.i.if.end27.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

do.body23.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %arrayidx26.i = getelementptr i32, ptr %47, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx26.i, i32 %48) #8, !srcloc !240
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.body23.i, %do.body13.i.if.end27.i_crit_edge
  %49 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %hw1, align 8
  %tobool37.not.i = icmp eq ptr %50, null
  br i1 %tobool37.not.i, label %if.end27.i.if.end4_crit_edge, label %do.body47.i, !prof !235

if.end27.i.if.end4_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.body47.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %entry3.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %entry3.i, align 4
  %conv51.i = zext i16 %52 to i32
  %add.i34 = add nuw nsw i32 %conv51.i, 96
  %arrayidx52.i = getelementptr i32, ptr %50, i32 %add.i34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx52.i, i32 160) #8, !srcloc !240
  br label %if.end4

if.end4:                                          ; preds = %do.body47.i, %if.end27.i.if.end4_crit_edge, %do.body194.i, %if.end174.i.if.end4_crit_edge
  %mbx = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6
  %53 = ptrtoint ptr %mbx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mbx, align 8
  %call6 = tail call i32 %54(ptr noundef %hw1, ptr noundef %mbx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.then8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  %msix_entries.i36 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 36
  %55 = ptrtoint ptr %msix_entries.i36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %msix_entries.i36, align 4
  %tobool.not.i37 = icmp eq ptr %56, null
  br i1 %tobool.not.i37, label %if.then8.cleanup_crit_edge, label %if.end.i39

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i39:                                       ; preds = %if.then8
  %disconnect.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6, i32 0, i32 1
  %57 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disconnect.i, align 4
  tail call void %58(ptr noundef %hw1, ptr noundef %mbx) #8
  %59 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i = icmp eq i32 %60, 1
  br i1 %cmp.i, label %do.body.i40, label %if.end.i39.do.body21.i_crit_edge

if.end.i39.do.body21.i_crit_edge:                 ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

do.body.i40:                                      ; preds = %if.end.i39
  %61 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %hw1, align 8
  %tobool8.not.i = icmp eq ptr %62, null
  br i1 %tobool8.not.i, label %do.body.i40.do.body21.i_crit_edge, label %do.body13.i41, !prof !235

do.body.i40.do.body21.i_crit_edge:                ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

do.body13.i41:                                    ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %arrayidx16.i = getelementptr i32, ptr %62, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.i, i32 22302977) #8, !srcloc !240
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.body13.i41, %do.body.i40.do.body21.i_crit_edge, %if.end.i39.do.body21.i_crit_edge
  %itr_reg.0.i = phi i32 [ 74752, %do.body13.i41 ], [ 74752, %do.body.i40.do.body21.i_crit_edge ], [ 96, %if.end.i39.do.body21.i_crit_edge ]
  %63 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %hw1, align 8
  %tobool28.not.i = icmp eq ptr %64, null
  br i1 %tobool28.not.i, label %do.body21.i.if.end42.i_crit_edge, label %do.body38.i, !prof !235

do.body21.i.if.end42.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

do.body38.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  tail call void @arm_heavy_mb() #8
  %arrayidx41.i = getelementptr i32, ptr %64, i32 %itr_reg.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41.i, i32 64) #8, !srcloc !240
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.body38.i, %do.body21.i.if.end42.i_crit_edge
  %65 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %56, align 4
  %call.i42 = tail call ptr @free_irq(i32 noundef %66, ptr noundef %interface) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %if.then8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then10.i, %do.body.i33.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then13.i, %do.body.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %call6, %if.then8.cleanup_crit_edge ], [ %call6, %if.end42.i ], [ %call.i.i29, %do.body.i33.cleanup_crit_edge ], [ %call.i.i29, %if.then10.i ], [ %call.i27, %if.else.cleanup_crit_edge ], [ %call.i.i, %do.body.i.cleanup_crit_edge ], [ %call.i.i, %if.then13.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_qv_free_irq(ptr nocapture noundef readonly %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_q_vectors = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 37
  %0 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_q_vectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not20 = icmp eq i32 %1, 0
  br i1 %tobool.not20, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %msix_entries = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 36
  %2 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msix_entries, align 4
  %add = add i32 %1, 1
  %arrayidx = getelementptr %struct.msix_entry, ptr %3, i32 %add
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %entry1.022 = phi ptr [ %incdec.ptr, %cleanup.while.body_crit_edge ], [ %arrayidx, %while.body.preheader ]
  %vector.021 = phi i32 [ %dec, %cleanup.while.body_crit_edge ], [ %1, %while.body.preheader ]
  %dec = add i32 %vector.021, -1
  %incdec.ptr = getelementptr %struct.msix_entry, ptr %entry1.022, i32 -1
  %arrayidx3 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 35, i32 %dec
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %count = getelementptr inbounds %struct.fm10k_q_vector, ptr %5, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %count5 = getelementptr inbounds %struct.fm10k_q_vector, ptr %5, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %count5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr, align 4
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %11, ptr noundef null, i1 noundef zeroext true) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %itr = getelementptr inbounds %struct.fm10k_q_vector, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %itr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %itr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 64) #8, !srcloc !240
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_qv_request_irq(ptr nocapture noundef readonly %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 128
  %num_q_vectors = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 37
  %2 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_q_vectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp151 = icmp sgt i32 %3, 0
  br i1 %cmp151, label %for.body.lr.ph, label %entry.cleanup88_crit_edge

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

for.body.lr.ph:                                   ; preds = %entry
  %msix_entries = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 36
  %4 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msix_entries, align 4
  %arrayidx = getelementptr %struct.msix_entry, ptr %5, i32 1
  %type = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 1
  %uc_addr40 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 43
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vector.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc62, %for.inc.for.body_crit_edge ]
  %ti.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %ti.2.ph, %for.inc.for.body_crit_edge ]
  %ri.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %ri.2.ph, %for.inc.for.body_crit_edge ]
  %entry2.0152 = phi ptr [ %arrayidx, %for.body.lr.ph ], [ %entry2.1.ph, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 35, i32 %vector.0157
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %count = getelementptr inbounds %struct.fm10k_q_vector, ptr %7, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %count12 = getelementptr inbounds %struct.fm10k_q_vector, ptr %7, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %count12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %count12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  br i1 %tobool13.not, label %if.else.thread, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.fm10k_q_vector, ptr %7, i32 0, i32 7
  %inc = add i32 %ri.0153, 1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 25, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %ri.0153)
  %inc10 = add i32 %ti.0155, 1
  br label %if.end34

if.else:                                          ; preds = %for.body
  br i1 %tobool13.not, label %if.else.for.inc_crit_edge, label %if.else.if.then14_crit_edge

if.else.if.then14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else.thread:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %count12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %count12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not138 = icmp eq i8 %13, 0
  br i1 %tobool13.not138, label %if.then25, label %if.else.thread.if.then14_crit_edge

if.else.thread.if.then14_crit_edge:               ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then14:                                        ; preds = %if.else.thread.if.then14_crit_edge, %if.else.if.then14_crit_edge
  %name15 = getelementptr inbounds %struct.fm10k_q_vector, ptr %7, i32 0, i32 7
  %inc19 = add i32 %ri.0153, 1
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name15, i32 noundef 25, ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef %ri.0153)
  br label %if.end34

if.then25:                                        ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #10
  %name26 = getelementptr inbounds %struct.fm10k_q_vector, ptr %7, i32 0, i32 7
  %inc30 = add i32 %ti.0155, 1
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name26, i32 noundef 25, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %ti.0155)
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %if.then14, %if.then
  %ri.1 = phi i32 [ %inc, %if.then ], [ %inc19, %if.then14 ], [ %ri.0153, %if.then25 ]
  %ti.1 = phi i32 [ %inc10, %if.then ], [ %ti.0155, %if.then14 ], [ %inc30, %if.then25 ]
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp35 = icmp eq i32 %15, 1
  %16 = ptrtoint ptr %uc_addr40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uc_addr40, align 4
  %entry37 = getelementptr inbounds %struct.msix_entry, ptr %entry2.0152, i32 0, i32 1
  %18 = ptrtoint ptr %entry37 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %entry37, align 4
  %conv38 = zext i16 %19 to i32
  %. = select i1 %cmp35, i32 74752, i32 96
  %add43 = add nuw nsw i32 %., %conv38
  %arrayidx44 = getelementptr i32, ptr %17, i32 %add43
  %itr = getelementptr inbounds %struct.fm10k_q_vector, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %itr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx44, ptr %itr, align 4
  %21 = ptrtoint ptr %entry2.0152 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %entry2.0152, align 4
  %name46 = getelementptr inbounds %struct.fm10k_q_vector, ptr %7, i32 0, i32 7
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %22, ptr noundef nonnull @fm10k_msix_clean_rings, ptr noundef null, i32 noundef 0, ptr noundef %name46, ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not = icmp eq i32 %call.i, 0
  br i1 %tobool49.not, label %if.end55, label %do.body

do.body:                                          ; preds = %if.end34
  %msg_enable = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 45
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %msg_enable, align 4
  %25 = and i16 %24, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool52.not = icmp eq i16 %25, 0
  br i1 %tobool52.not, label %do.body.cleanup_crit_edge, label %if.then53

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %call.i) #11
  br label %cleanup

if.end55:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %entry2.0152 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entry2.0152, align 4
  %affinity_mask = getelementptr inbounds %struct.fm10k_q_vector, ptr %7, i32 0, i32 6
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %27, ptr noundef %affinity_mask, i1 noundef zeroext true) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %itr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %itr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 160) #8, !srcloc !240
  %incdec.ptr = getelementptr %struct.msix_entry, ptr %entry2.0152, i32 1
  br label %for.inc

cleanup:                                          ; preds = %if.then53, %do.body.cleanup_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vector.0157)
  %tobool63.not159 = icmp eq i32 %vector.0157, 0
  br i1 %tobool63.not159, label %cleanup.cleanup88_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  br label %while.body

cleanup.cleanup88_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

for.inc:                                          ; preds = %if.end55, %if.else.for.inc_crit_edge
  %entry2.1.ph = phi ptr [ %entry2.0152, %if.else.for.inc_crit_edge ], [ %incdec.ptr, %if.end55 ]
  %ri.2.ph = phi i32 [ %ri.0153, %if.else.for.inc_crit_edge ], [ %ri.1, %if.end55 ]
  %ti.2.ph = phi i32 [ %ti.0155, %if.else.for.inc_crit_edge ], [ %ti.1, %if.end55 ]
  %inc62 = add nuw nsw i32 %vector.0157, 1
  %30 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_q_vectors, align 8
  %cmp = icmp slt i32 %inc62, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup88_crit_edge

for.inc.cleanup88_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.body:                                       ; preds = %cleanup85.while.body_crit_edge, %cleanup.while.body_crit_edge
  %vector.1161 = phi i32 [ %dec, %cleanup85.while.body_crit_edge ], [ %vector.0157, %cleanup.while.body_crit_edge ]
  %entry2.2160 = phi ptr [ %incdec.ptr65, %cleanup85.while.body_crit_edge ], [ %entry2.0152, %cleanup.while.body_crit_edge ]
  %incdec.ptr65 = getelementptr %struct.msix_entry, ptr %entry2.2160, i32 -1
  %dec = add nsw i32 %vector.1161, -1
  %arrayidx67 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 35, i32 %dec
  %32 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx67, align 4
  %count69 = getelementptr inbounds %struct.fm10k_q_vector, ptr %33, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %count69 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %count69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool70.not = icmp eq i8 %35, 0
  br i1 %tobool70.not, label %land.lhs.true71, label %while.body.if.end76_crit_edge

while.body.if.end76_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

land.lhs.true71:                                  ; preds = %while.body
  %count73 = getelementptr inbounds %struct.fm10k_q_vector, ptr %33, i32 0, i32 3, i32 6
  %36 = ptrtoint ptr %count73 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %count73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool74.not = icmp eq i8 %37, 0
  br i1 %tobool74.not, label %land.lhs.true71.cleanup85_crit_edge, label %land.lhs.true71.if.end76_crit_edge

land.lhs.true71.if.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

land.lhs.true71.cleanup85_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup85

if.end76:                                         ; preds = %land.lhs.true71.if.end76_crit_edge, %while.body.if.end76_crit_edge
  %38 = ptrtoint ptr %incdec.ptr65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %incdec.ptr65, align 4
  %call.i.i136 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %39, ptr noundef null, i1 noundef zeroext true) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  tail call void @arm_heavy_mb() #8
  %itr82 = getelementptr inbounds %struct.fm10k_q_vector, ptr %33, i32 0, i32 1
  %40 = ptrtoint ptr %itr82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %itr82, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 64) #8, !srcloc !240
  %42 = ptrtoint ptr %incdec.ptr65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %incdec.ptr65, align 4
  %call84 = tail call ptr @free_irq(i32 noundef %43, ptr noundef %33) #8
  br label %cleanup85

cleanup85:                                        ; preds = %if.end76, %land.lhs.true71.cleanup85_crit_edge
  %tobool63.not = icmp eq i32 %dec, 0
  br i1 %tobool63.not, label %cleanup85.cleanup88_crit_edge, label %cleanup85.while.body_crit_edge

cleanup85.while.body_crit_edge:                   ; preds = %cleanup85
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup85.cleanup88_crit_edge:                    ; preds = %cleanup85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

cleanup88:                                        ; preds = %cleanup85.cleanup88_crit_edge, %for.inc.cleanup88_crit_edge, %cleanup.cleanup88_crit_edge, %entry.cleanup88_crit_edge
  %retval.0 = phi i32 [ %call.i, %cleanup.cleanup88_crit_edge ], [ 0, %entry.cleanup88_crit_edge ], [ %call.i, %cleanup85.cleanup88_crit_edge ], [ 0, %for.inc.cleanup88_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_msix_clean_rings(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.fm10k_q_vector, ptr %data, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %count1 = getelementptr inbounds %struct.fm10k_q_vector, ptr %data, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %count1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %napi = getelementptr inbounds %struct.fm10k_q_vector, ptr %data, i32 0, i32 5
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_up(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  %dglort.i.i = alloca %struct.fm10k_dglort_cfg, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %start_hw = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %start_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %start_hw, align 8
  %call = tail call i32 %1(ptr noundef %hw1) #8
  %num_tx_queues.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 7
  %2 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp34.i = icmp sgt i32 %3, 0
  br i1 %cmp34.i, label %for.body.lr.ph.i, label %entry.fm10k_configure_tx.exit_crit_edge

entry.fm10k_configure_tx.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_tx.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %back.i.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 1
  %uc_addr.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 43
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %fm10k_configure_tx_ring.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp336.i = icmp sgt i32 %57, 0
  br i1 %cmp336.i, label %for.body4.lr.ph.i, label %for.cond1.preheader.i.fm10k_configure_tx.exit_crit_edge

for.cond1.preheader.i.fm10k_configure_tx.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_tx.exit

for.body4.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %msg_enable.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 45
  %netdev.i31.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  br label %for.body4.i

for.body.i:                                       ; preds = %fm10k_configure_tx_ring.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %fm10k_configure_tx_ring.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 12, i32 %i.035.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %dma.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma.i.i, align 32
  %count.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count.i.i, align 2
  %conv2.i.i = zext i16 %9 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i, 4
  %reg_idx3.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %reg_idx3.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg_idx3.i.i, align 1
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i.i_crit_edge, label %do.body9.i.i, !prof !235

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.body9.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !256
  tail call void @arm_heavy_mb() #8
  %conv12.i.i = zext i8 %11 to i32
  %mul13.i.i = shl nuw nsw i32 %conv12.i.i, 6
  %add.i.i = or i32 %mul13.i.i, 32774
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 0) #8, !srcloc !240
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body9.i.i, %for.body.i.if.end.i.i_crit_edge
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.fm10k_read_reg.exit.i.i_crit_edge, label %if.end.i.i.i, !prof !235

if.end.i.i.fm10k_read_reg.exit.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool8.not.i.i.i = icmp eq i32 %16, -1
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.i.fm10k_read_reg.exit.i.i_crit_edge

if.end.i.i.i.fm10k_read_reg.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %back.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %back.i.i.i, align 4
  %netdev18.i.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %netdev18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev18.i.i.i, align 128
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %hw1, align 8
  tail call void @netif_device_detach(ptr noundef %20) #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str) #11
  br label %fm10k_read_reg.exit.i.i

fm10k_read_reg.exit.i.i:                          ; preds = %land.lhs.true.i.i.i, %if.end.i.i.i.fm10k_read_reg.exit.i.i_crit_edge, %if.end.i.i.fm10k_read_reg.exit.i.i_crit_edge
  %22 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw1, align 8
  %tobool23.not.i.i = icmp eq ptr %23, null
  br i1 %tobool23.not.i.i, label %fm10k_read_reg.exit.i.i.if.end41.i.i_crit_edge, label %do.body33.i.i, !prof !235

fm10k_read_reg.exit.i.i.if.end41.i.i_crit_edge:   ; preds = %fm10k_read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i.i

do.body33.i.i:                                    ; preds = %fm10k_read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %conv37.i.i = zext i8 %11 to i32
  %mul38.i.i = shl nuw nsw i32 %conv37.i.i, 6
  %add39.i.i = or i32 %mul38.i.i, 32768
  %arrayidx40.i.i = getelementptr i32, ptr %23, i32 %add39.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx40.i.i, i32 %24) #8, !srcloc !240
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %do.body33.i.i, %fm10k_read_reg.exit.i.i.if.end41.i.i_crit_edge
  %25 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw1, align 8
  %tobool51.not.i.i = icmp eq ptr %26, null
  br i1 %tobool51.not.i.i, label %if.end41.i.i.if.end69.i.i_crit_edge, label %do.body61.i.i, !prof !235

if.end41.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i.i

do.body61.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void @arm_heavy_mb() #8
  %conv65.i.i = zext i8 %11 to i32
  %mul66.i.i = shl nuw nsw i32 %conv65.i.i, 6
  %add67.i.i = or i32 %mul66.i.i, 32769
  %arrayidx68.i.i = getelementptr i32, ptr %26, i32 %add67.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx68.i.i, i32 0) #8, !srcloc !240
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %do.body61.i.i, %if.end41.i.i.if.end69.i.i_crit_edge
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw1, align 8
  %tobool79.not.i.i = icmp eq ptr %28, null
  br i1 %tobool79.not.i.i, label %if.end69.i.i.if.end96.i.i_crit_edge, label %do.body89.i.i, !prof !235

if.end69.i.i.if.end96.i.i_crit_edge:              ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96.i.i

do.body89.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %mul.i.i) #8
  %conv92.i.i = zext i8 %11 to i32
  %mul93.i.i = shl nuw nsw i32 %conv92.i.i, 6
  %add94.i.i = or i32 %mul93.i.i, 32770
  %arrayidx95.i.i = getelementptr i32, ptr %28, i32 %add94.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx95.i.i, i32 %29) #8, !srcloc !240
  br label %if.end96.i.i

if.end96.i.i:                                     ; preds = %do.body89.i.i, %if.end69.i.i.if.end96.i.i_crit_edge
  %30 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw1, align 8
  %tobool106.not.i.i = icmp eq ptr %31, null
  br i1 %tobool106.not.i.i, label %if.end96.i.i.if.end123.i.i_crit_edge, label %do.body116.i.i, !prof !235

if.end96.i.i.if.end123.i.i_crit_edge:             ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123.i.i

do.body116.i.i:                                   ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  %conv119.i.i = zext i8 %11 to i32
  %mul120.i.i = shl nuw nsw i32 %conv119.i.i, 6
  %add121.i.i = or i32 %mul120.i.i, 32772
  %arrayidx122.i.i = getelementptr i32, ptr %31, i32 %add121.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx122.i.i, i32 0) #8, !srcloc !240
  br label %if.end123.i.i

if.end123.i.i:                                    ; preds = %do.body116.i.i, %if.end96.i.i.if.end123.i.i_crit_edge
  %32 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw1, align 8
  %tobool133.not.i.i = icmp eq ptr %33, null
  br i1 %tobool133.not.i.i, label %if.end123.if.end150_crit_edge.i.i, label %do.body143.i.i, !prof !235

if.end123.if.end150_crit_edge.i.i:                ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i.i = zext i8 %11 to i32
  %.pre296.i.i = shl nuw nsw i32 %.pre.i.i, 6
  %.pre297.i.i = or i32 %.pre296.i.i, 32773
  br label %if.end150.i.i

do.body143.i.i:                                   ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %conv146.i.i = zext i8 %11 to i32
  %mul147.i.i = shl nuw nsw i32 %conv146.i.i, 6
  %add148.i.i = or i32 %mul147.i.i, 32773
  %arrayidx149.i.i = getelementptr i32, ptr %33, i32 %add148.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx149.i.i, i32 0) #8, !srcloc !240
  br label %if.end150.i.i

if.end150.i.i:                                    ; preds = %do.body143.i.i, %if.end123.if.end150_crit_edge.i.i
  %add155.pre-phi.i.i = phi i32 [ %.pre297.i.i, %if.end123.if.end150_crit_edge.i.i ], [ %add148.i.i, %do.body143.i.i ]
  %mul154.pre-phi.i.i = phi i32 [ %.pre296.i.i, %if.end123.if.end150_crit_edge.i.i ], [ %mul147.i.i, %do.body143.i.i ]
  %34 = ptrtoint ptr %uc_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uc_addr.i.i, align 4
  %arrayidx156.i.i = getelementptr i32, ptr %35, i32 %add155.pre-phi.i.i
  %tail.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %5, i32 0, i32 6
  %36 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx156.i.i, ptr %tail.i.i, align 8
  %next_to_clean.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %5, i32 0, i32 17
  %37 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %next_to_clean.i.i, align 4
  %next_to_use.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %5, i32 0, i32 16
  %38 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %next_to_use.i.i, align 2
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 128
  %tobool157.not.i.i = icmp eq ptr %40, null
  br i1 %tobool157.not.i.i, label %if.end150.i.i.do.body163.i.i_crit_edge, label %if.then158.i.i

if.end150.i.i.do.body163.i.i_crit_edge:           ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body163.i.i

if.then158.i.i:                                   ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %v_idx.i.i = getelementptr inbounds %struct.fm10k_q_vector, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %v_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %v_idx.i.i, align 8
  %conv160.i.i = zext i16 %42 to i32
  %add161.i.i = add nuw nsw i32 %conv160.i.i, 1
  br label %do.body163.i.i

do.body163.i.i:                                   ; preds = %if.then158.i.i, %if.end150.i.i.do.body163.i.i_crit_edge
  %txint.0.i.i = phi i32 [ %add161.i.i, %if.then158.i.i ], [ 768, %if.end150.i.i.do.body163.i.i_crit_edge ]
  %43 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %hw1, align 8
  %tobool170.not.i.i = icmp eq ptr %44, null
  br i1 %tobool170.not.i.i, label %do.body163.i.i.if.end187.i.i_crit_edge, label %do.body180.i.i, !prof !235

do.body163.i.i.if.end187.i.i_crit_edge:           ; preds = %do.body163.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187.i.i

do.body180.i.i:                                   ; preds = %do.body163.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %txint.0.i.i) #8
  %add185.i.i = or i32 %mul154.pre-phi.i.i, 32776
  %arrayidx186.i.i = getelementptr i32, ptr %44, i32 %add185.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx186.i.i, i32 %45) #8, !srcloc !240
  br label %if.end187.i.i

if.end187.i.i:                                    ; preds = %do.body180.i.i, %do.body163.i.i.if.end187.i.i_crit_edge
  %46 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %hw1, align 8
  %tobool197.not.i.i = icmp eq ptr %47, null
  br i1 %tobool197.not.i.i, label %if.end187.i.i.if.end214.i.i_crit_edge, label %do.body207.i.i, !prof !235

if.end187.i.i.if.end214.i.i_crit_edge:            ; preds = %if.end187.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214.i.i

do.body207.i.i:                                   ; preds = %if.end187.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  tail call void @arm_heavy_mb() #8
  %add212.i.i = or i32 %mul154.pre-phi.i.i, 32782
  %arrayidx213.i.i = getelementptr i32, ptr %47, i32 %add212.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx213.i.i, i32 16777216) #8, !srcloc !240
  br label %if.end214.i.i

if.end214.i.i:                                    ; preds = %do.body207.i.i, %if.end187.i.i.if.end214.i.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %5, i32 0, i32 7
  %call217.i.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217.i.i)
  %tobool218.not.i.i = icmp eq i32 %call217.i.i, 0
  br i1 %tobool218.not.i.i, label %land.lhs.true.i.i, label %if.end214.i.i.do.body226.i.i_crit_edge

if.end214.i.i.do.body226.i.i_crit_edge:           ; preds = %if.end214.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body226.i.i

land.lhs.true.i.i:                                ; preds = %if.end214.i.i
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 128
  %tobool220.not.i.i = icmp eq ptr %49, null
  br i1 %tobool220.not.i.i, label %land.lhs.true.i.i.do.body226.i.i_crit_edge, label %if.then221.i.i

land.lhs.true.i.i.do.body226.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body226.i.i

if.then221.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %5, i32 0, i32 1
  %50 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev.i.i, align 4
  %affinity_mask.i.i = getelementptr inbounds %struct.fm10k_q_vector, ptr %49, i32 0, i32 6
  %queue_index.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %5, i32 0, i32 10
  %52 = ptrtoint ptr %queue_index.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %queue_index.i.i, align 8
  %conv223.i.i = zext i8 %53 to i16
  %call224.i.i = tail call i32 @netif_set_xps_queue(ptr noundef %51, ptr noundef %affinity_mask.i.i, i16 noundef zeroext %conv223.i.i) #8
  br label %do.body226.i.i

do.body226.i.i:                                   ; preds = %if.then221.i.i, %land.lhs.true.i.i.do.body226.i.i_crit_edge, %if.end214.i.i.do.body226.i.i_crit_edge
  %54 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %hw1, align 8
  %tobool233.not.i.i = icmp eq ptr %55, null
  br i1 %tobool233.not.i.i, label %do.body226.i.i.fm10k_configure_tx_ring.exit.i_crit_edge, label %do.body243.i.i, !prof !235

do.body226.i.i.fm10k_configure_tx_ring.exit.i_crit_edge: ; preds = %do.body226.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_tx_ring.exit.i

do.body243.i.i:                                   ; preds = %do.body226.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !264
  tail call void @arm_heavy_mb() #8
  %add248.i.i = or i32 %mul154.pre-phi.i.i, 32774
  %arrayidx249.i.i = getelementptr i32, ptr %55, i32 %add248.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx249.i.i, i32 4194560) #8, !srcloc !240
  br label %fm10k_configure_tx_ring.exit.i

fm10k_configure_tx_ring.exit.i:                   ; preds = %do.body243.i.i, %do.body226.i.i.fm10k_configure_tx_ring.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %56 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %57
  br i1 %cmp.i, label %fm10k_configure_tx_ring.exit.i.for.body.i_crit_edge, label %for.cond1.preheader.i

fm10k_configure_tx_ring.exit.i.for.body.i_crit_edge: ; preds = %fm10k_configure_tx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body4.i:                                      ; preds = %fm10k_enable_tx_ring.exit.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %i.137.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc8.i, %fm10k_enable_tx_ring.exit.i.for.body4.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 12, i32 %i.137.i
  %58 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx6.i, align 4
  %reg_idx2.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %reg_idx2.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %reg_idx2.i.i, align 1
  %conv.i.i = zext i8 %61 to i32
  %mul.i21.i = shl nuw nsw i32 %conv.i.i, 6
  %add.i22.i = or i32 %mul.i21.i, 32774
  %62 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i.i23.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i23.i, label %for.body4.i.fm10k_enable_tx_ring.exit.i_crit_edge, label %if.end.i.i25.i, !prof !235

for.body4.i.fm10k_enable_tx_ring.exit.i_crit_edge: ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_enable_tx_ring.exit.i

if.end.i.i25.i:                                   ; preds = %for.body4.i
  %arrayidx.i.i.i = getelementptr i32, ptr %63, i32 %add.i22.i
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %tobool8.not.i.i24.i = icmp eq i32 %64, -1
  br i1 %tobool8.not.i.i24.i, label %land.lhs.true.i.i26.i, label %fm10k_read_reg.exit.i30.i

land.lhs.true.i.i26.i:                            ; preds = %if.end.i.i25.i
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %63) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %tobool16.not.i.i.i = icmp eq i32 %65, -1
  br i1 %tobool16.not.i.i.i, label %if.then17.i.i.i, label %land.lhs.true.i.i26.i.fm10k_enable_tx_ring.exit.i_crit_edge

land.lhs.true.i.i26.i.fm10k_enable_tx_ring.exit.i_crit_edge: ; preds = %land.lhs.true.i.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_enable_tx_ring.exit.i

if.then17.i.i.i:                                  ; preds = %land.lhs.true.i.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %back.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %back.i.i.i, align 4
  %netdev18.i.i28.i = getelementptr inbounds %struct.fm10k_intfc, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %netdev18.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %netdev18.i.i28.i, align 128
  %70 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %hw1, align 8
  tail call void @netif_device_detach(ptr noundef %69) #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %69, ptr noundef nonnull @.str) #11
  br label %fm10k_enable_tx_ring.exit.i

fm10k_read_reg.exit.i30.i:                        ; preds = %if.end.i.i25.i
  %71 = and i32 %64, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i29.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i29.i, label %fm10k_read_reg.exit.i30.i.do.body.i.i_crit_edge, label %fm10k_read_reg.exit.i30.i.fm10k_enable_tx_ring.exit.i_crit_edge

fm10k_read_reg.exit.i30.i.fm10k_enable_tx_ring.exit.i_crit_edge: ; preds = %fm10k_read_reg.exit.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_enable_tx_ring.exit.i

fm10k_read_reg.exit.i30.i.do.body.i.i_crit_edge:  ; preds = %fm10k_read_reg.exit.i30.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %fm10k_read_reg.exit.i30.i.do.body.i.i_crit_edge
  %wait_loop.0.i.i = phi i32 [ %dec.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ], [ 10, %fm10k_read_reg.exit.i30.i.do.body.i.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %72 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i31.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i31.i.i, label %do.body.i.i.fm10k_enable_tx_ring.exit.i_crit_edge, label %if.end.i34.i.i, !prof !235

do.body.i.i.fm10k_enable_tx_ring.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_enable_tx_ring.exit.i

if.end.i34.i.i:                                   ; preds = %do.body.i.i
  %arrayidx.i32.i.i = getelementptr i32, ptr %73, i32 %add.i22.i
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i32.i.i) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %tobool8.not.i33.i.i = icmp eq i32 %74, -1
  br i1 %tobool8.not.i33.i.i, label %land.lhs.true.i35.i.i, label %fm10k_read_reg.exit41.i.i

land.lhs.true.i35.i.i:                            ; preds = %if.end.i34.i.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %73) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %tobool16.not.i36.i.i = icmp eq i32 %75, -1
  br i1 %tobool16.not.i36.i.i, label %if.then17.i39.i.i, label %land.lhs.true.i35.i.i.fm10k_enable_tx_ring.exit.i_crit_edge

land.lhs.true.i35.i.i.fm10k_enable_tx_ring.exit.i_crit_edge: ; preds = %land.lhs.true.i35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_enable_tx_ring.exit.i

if.then17.i39.i.i:                                ; preds = %land.lhs.true.i35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %back.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %back.i.i.i, align 4
  %netdev18.i38.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %netdev18.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %netdev18.i38.i.i, align 128
  %80 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %hw1, align 8
  tail call void @netif_device_detach(ptr noundef %79) #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %79, ptr noundef nonnull @.str) #11
  br label %fm10k_enable_tx_ring.exit.i

fm10k_read_reg.exit41.i.i:                        ; preds = %if.end.i34.i.i
  %81 = and i32 %74, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool8.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool8.not.i.i, label %land.rhs.i.i, label %fm10k_read_reg.exit41.i.i.fm10k_enable_tx_ring.exit.i_crit_edge

fm10k_read_reg.exit41.i.i.fm10k_enable_tx_ring.exit.i_crit_edge: ; preds = %fm10k_read_reg.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_enable_tx_ring.exit.i

land.rhs.i.i:                                     ; preds = %fm10k_read_reg.exit41.i.i
  %dec.i.i = add nsw i32 %wait_loop.0.i.i, -1
  %tobool9.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body12.i.i, label %land.rhs.i.i.do.body.i.i_crit_edge

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.body12.i.i:                                    ; preds = %land.rhs.i.i
  %82 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %msg_enable.i.i, align 4
  %84 = and i16 %83, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool15.not.i.i = icmp eq i16 %84, 0
  br i1 %tobool15.not.i.i, label %do.body12.i.i.fm10k_enable_tx_ring.exit.i_crit_edge, label %if.then16.i.i

do.body12.i.i.fm10k_enable_tx_ring.exit.i_crit_edge: ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_enable_tx_ring.exit.i

if.then16.i.i:                                    ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %netdev.i31.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %netdev.i31.i, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %86, ptr noundef nonnull @.str.54, i32 noundef %conv.i.i) #11
  br label %fm10k_enable_tx_ring.exit.i

fm10k_enable_tx_ring.exit.i:                      ; preds = %if.then16.i.i, %do.body12.i.i.fm10k_enable_tx_ring.exit.i_crit_edge, %fm10k_read_reg.exit41.i.i.fm10k_enable_tx_ring.exit.i_crit_edge, %if.then17.i39.i.i, %land.lhs.true.i35.i.i.fm10k_enable_tx_ring.exit.i_crit_edge, %do.body.i.i.fm10k_enable_tx_ring.exit.i_crit_edge, %fm10k_read_reg.exit.i30.i.fm10k_enable_tx_ring.exit.i_crit_edge, %if.then17.i.i.i, %land.lhs.true.i.i26.i.fm10k_enable_tx_ring.exit.i_crit_edge, %for.body4.i.fm10k_enable_tx_ring.exit.i_crit_edge
  %inc8.i = add nuw nsw i32 %i.137.i, 1
  %87 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_tx_queues.i, align 8
  %cmp3.i = icmp slt i32 %inc8.i, %88
  br i1 %cmp3.i, label %fm10k_enable_tx_ring.exit.i.for.body4.i_crit_edge, label %fm10k_enable_tx_ring.exit.i.fm10k_configure_tx.exit_crit_edge

fm10k_enable_tx_ring.exit.i.fm10k_configure_tx.exit_crit_edge: ; preds = %fm10k_enable_tx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_tx.exit

fm10k_enable_tx_ring.exit.i.for.body4.i_crit_edge: ; preds = %fm10k_enable_tx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i

fm10k_configure_tx.exit:                          ; preds = %fm10k_enable_tx_ring.exit.i.fm10k_configure_tx.exit_crit_edge, %for.cond1.preheader.i.fm10k_configure_tx.exit_crit_edge, %entry.fm10k_configure_tx.exit_crit_edge
  %netdev1.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %89 = ptrtoint ptr %netdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %netdev1.i.i, align 128
  %flags.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i.i) #8
  %type.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 1
  %91 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp.not.i.i = icmp eq i32 %92, 1
  br i1 %cmp.not.i.i, label %fm10k_configure_tx.exit.do.body.i.i21_crit_edge, label %fm10k_configure_tx.exit.fm10k_configure_swpri_map.exit.i_crit_edge

fm10k_configure_tx.exit.fm10k_configure_swpri_map.exit.i_crit_edge: ; preds = %fm10k_configure_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_swpri_map.exit.i

fm10k_configure_tx.exit.do.body.i.i21_crit_edge:  ; preds = %fm10k_configure_tx.exit
  br label %do.body.i.i21

do.body.i.i21:                                    ; preds = %if.end13.i.i.do.body.i.i21_crit_edge, %fm10k_configure_tx.exit.do.body.i.i21_crit_edge
  %i.025.i.i = phi i32 [ %inc.i.i, %if.end13.i.i.do.body.i.i21_crit_edge ], [ 0, %fm10k_configure_tx.exit.do.body.i.i21_crit_edge ]
  %93 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i.i20 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i20, label %do.body.i.i21.if.end13.i.i_crit_edge, label %do.body10.i.i, !prof !235

do.body.i.i21.if.end13.i.i_crit_edge:             ; preds = %do.body.i.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

do.body10.i.i:                                    ; preds = %do.body.i.i21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !265
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i.i22 = getelementptr %struct.net_device, ptr %90, i32 0, i32 142, i32 %i.025.i.i
  %95 = ptrtoint ptr %arrayidx.i.i.i22 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i.i22, align 1
  %conv.i.i.i = zext i8 %96 to i32
  %97 = shl nuw i32 %conv.i.i.i, 24
  %add.i.i23 = add nuw nsw i32 %i.025.i.i, 80
  %arrayidx.i.i24 = getelementptr i32, ptr %94, i32 %add.i.i23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i24, i32 %97) #8, !srcloc !240
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %do.body10.i.i, %do.body.i.i21.if.end13.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.025.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %if.end13.i.i.fm10k_configure_swpri_map.exit.i_crit_edge, label %if.end13.i.i.do.body.i.i21_crit_edge

if.end13.i.i.do.body.i.i21_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i21

if.end13.i.i.fm10k_configure_swpri_map.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_swpri_map.exit.i

fm10k_configure_swpri_map.exit.i:                 ; preds = %if.end13.i.i.fm10k_configure_swpri_map.exit.i_crit_edge, %fm10k_configure_tx.exit.fm10k_configure_swpri_map.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dglort.i.i) #8
  %98 = call ptr @memset(ptr %dglort.i.i, i32 0, i32 12)
  br label %do.body.i8.i

do.body.i8.i:                                     ; preds = %if.end.i.i25.do.body.i8.i_crit_edge, %fm10k_configure_swpri_map.exit.i
  %i.0186.i.i = phi i32 [ 0, %fm10k_configure_swpri_map.exit.i ], [ %inc.i10.i, %if.end.i.i25.do.body.i8.i_crit_edge ]
  %99 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i7.i = icmp eq ptr %100, null
  br i1 %tobool.not.i7.i, label %do.body.i8.i.if.end.i.i25_crit_edge, label %do.body7.i.i, !prof !235

do.body.i8.i.if.end.i.i25_crit_edge:              ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i25

do.body7.i.i:                                     ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !266
  tail call void @arm_heavy_mb() #8
  %arrayidx.i9.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 57, i32 %i.0186.i.i
  %101 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i9.i, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #8
  %add10.i.i = add nuw nsw i32 %i.0186.i.i, 2048
  %arrayidx11.i.i = getelementptr i32, ptr %100, i32 %add10.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx11.i.i, i32 %103) #8, !srcloc !240
  br label %if.end.i.i25

if.end.i.i25:                                     ; preds = %do.body7.i.i, %do.body.i8.i.if.end.i.i25_crit_edge
  %inc.i10.i = add nuw nsw i32 %i.0186.i.i, 1
  %exitcond.not.i11.i = icmp eq i32 %inc.i10.i, 10
  br i1 %exitcond.not.i11.i, label %if.end.i.i25.do.body17.i.i_crit_edge, label %if.end.i.i25.do.body.i8.i_crit_edge

if.end.i.i25.do.body.i8.i_crit_edge:              ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i8.i

if.end.i.i25.do.body17.i.i_crit_edge:             ; preds = %if.end.i.i25
  br label %do.body17.i.i

do.body17.i.i:                                    ; preds = %if.end41.i.i28.do.body17.i.i_crit_edge, %if.end.i.i25.do.body17.i.i_crit_edge
  %i.1188.i.i = phi i32 [ %inc45.i.i, %if.end41.i.i28.do.body17.i.i_crit_edge ], [ 0, %if.end.i.i25.do.body17.i.i_crit_edge ]
  %104 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %hw1, align 8
  %tobool24.not.i.i = icmp eq ptr %105, null
  br i1 %tobool24.not.i.i, label %do.body17.i.i.if.end41.i.i28_crit_edge, label %do.body34.i.i, !prof !235

do.body17.i.i.if.end41.i.i28_crit_edge:           ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i.i28

do.body34.i.i:                                    ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  tail call void @arm_heavy_mb() #8
  %arrayidx37.i.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 56, i32 %i.1188.i.i
  %106 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx37.i.i, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #8
  %add39.i.i26 = add nuw nsw i32 %i.1188.i.i, 4096
  %arrayidx40.i.i27 = getelementptr i32, ptr %105, i32 %add39.i.i26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx40.i.i27, i32 %108) #8, !srcloc !240
  br label %if.end41.i.i28

if.end41.i.i28:                                   ; preds = %do.body34.i.i, %do.body17.i.i.if.end41.i.i28_crit_edge
  %inc45.i.i = add nuw nsw i32 %i.1188.i.i, 1
  %exitcond190.not.i.i = icmp eq i32 %inc45.i.i, 32
  br i1 %exitcond190.not.i.i, label %for.end46.i.i, label %if.end41.i.i28.do.body17.i.i_crit_edge

if.end41.i.i28.do.body17.i.i_crit_edge:           ; preds = %if.end41.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17.i.i

for.end46.i.i:                                    ; preds = %if.end41.i.i28
  %109 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %flags.i.i, align 4
  %111 = load volatile i32, ptr %flags.i.i, align 4
  %112 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %hw1, align 8
  %tobool64.not.i.i = icmp eq ptr %113, null
  br i1 %tobool64.not.i.i, label %for.end46.i.i.if.end78.i.i_crit_edge, label %do.body74.i.i, !prof !235

for.end46.i.i.if.end78.i.i_crit_edge:             ; preds = %for.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i.i

do.body74.i.i:                                    ; preds = %for.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %114 = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool47.not.i.i = icmp eq i32 %114, 0
  %spec.select.i.i = select i1 %tobool47.not.i.i, i32 855638016, i32 1929379840
  %115 = shl i32 %111, 29
  %116 = and i32 %115, -2147483648
  %117 = or i32 %116, %spec.select.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  tail call void @arm_heavy_mb() #8
  %arrayidx77.i.i = getelementptr i32, ptr %113, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx77.i.i, i32 %117) #8, !srcloc !240
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %do.body74.i.i, %for.end46.i.i.if.end78.i.i_crit_edge
  %inner_rss.i.i = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort.i.i, i32 0, i32 9
  %118 = ptrtoint ptr %inner_rss.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %inner_rss.i.i, align 1
  %mask.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 0, i32 2
  %119 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %mask.i.i, align 4
  %conv.i.i29 = zext i16 %120 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool.not.i.i.i30 = icmp eq i16 %120, 0
  %121 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i29, i1 true) #8, !range !269
  %122 = trunc i32 %121 to i8
  %123 = sub nuw nsw i8 32, %122
  %conv83.i.i = select i1 %tobool.not.i.i.i30, i8 0, i8 %123
  %rss_l.i.i = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort.i.i, i32 0, i32 4
  %124 = ptrtoint ptr %rss_l.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv83.i.i, ptr %rss_l.i.i, align 2
  %mask86.i.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 1, i32 2
  %125 = ptrtoint ptr %mask86.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %mask86.i.i, align 4
  %conv87.i.i = zext i16 %126 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool.not.i171.i.i = icmp eq i16 %126, 0
  %127 = tail call i32 @llvm.ctlz.i32(i32 %conv87.i.i, i1 true) #8, !range !269
  %128 = trunc i32 %127 to i8
  %129 = sub nuw nsw i8 32, %128
  %conv89.i.i = select i1 %tobool.not.i171.i.i, i8 0, i8 %129
  %pc_l.i.i = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort.i.i, i32 0, i32 5
  %130 = ptrtoint ptr %pc_l.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv89.i.i, ptr %pc_l.i.i, align 1
  %configure_dglort_map.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 16
  %131 = ptrtoint ptr %configure_dglort_map.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %configure_dglort_map.i.i, align 8
  %call90.i.i = call i32 %132(ptr noundef %hw1, ptr noundef nonnull %dglort.i.i) #8
  %glort_count.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 67
  %133 = ptrtoint ptr %glort_count.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %glort_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %134)
  %cmp92.i.i = icmp ugt i16 %134, 64
  br i1 %cmp92.i.i, label %if.then94.i.i, label %if.end78.i.i.if.end106.i.i_crit_edge

if.end78.i.i.if.end106.i.i_crit_edge:             ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106.i.i

if.then94.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %135 = getelementptr inbounds i8, ptr %dglort.i.i, i32 2
  %136 = call ptr @memset(ptr %135, i32 0, i32 10)
  %137 = ptrtoint ptr %inner_rss.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %inner_rss.i.i, align 1
  %glort.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 66
  %138 = ptrtoint ptr %glort.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %glort.i.i, align 2
  %add97.i.i = add i16 %139, 64
  %140 = ptrtoint ptr %dglort.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %add97.i.i, ptr %dglort.i.i, align 2
  %idx.i.i = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort.i.i, i32 0, i32 3
  %141 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 4, ptr %idx.i.i, align 1
  %num_rx_queues.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 9
  %142 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_rx_queues.i.i, align 32
  %sub.i.i = add i32 %143, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not.i174.i.i = icmp eq i32 %sub.i.i, 0
  %144 = call i32 @llvm.ctlz.i32(i32 %sub.i.i, i1 true) #8, !range !269
  %145 = trunc i32 %144 to i8
  %146 = sub nuw nsw i8 32, %145
  %conv101.i.i = select i1 %tobool.not.i174.i.i, i8 0, i8 %146
  %queue_l.i.i = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort.i.i, i32 0, i32 7
  %147 = ptrtoint ptr %queue_l.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv101.i.i, ptr %queue_l.i.i, align 1
  %148 = ptrtoint ptr %configure_dglort_map.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %configure_dglort_map.i.i, align 8
  %call105.i.i = call i32 %149(ptr noundef %hw1, ptr noundef nonnull %dglort.i.i) #8
  br label %if.end106.i.i

if.end106.i.i:                                    ; preds = %if.then94.i.i, %if.end78.i.i.if.end106.i.i_crit_edge
  %150 = getelementptr inbounds i8, ptr %dglort.i.i, i32 2
  %151 = call ptr @memset(ptr %150, i32 0, i32 10)
  %152 = ptrtoint ptr %inner_rss.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %inner_rss.i.i, align 1
  %glort108.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 66
  %153 = ptrtoint ptr %glort108.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %glort108.i.i, align 2
  %155 = ptrtoint ptr %dglort.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %dglort.i.i, align 2
  %156 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %mask.i.i, align 4
  %conv113.i.i = zext i16 %157 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool.not.i177.i.i = icmp eq i16 %157, 0
  %158 = call i32 @llvm.ctlz.i32(i32 %conv113.i.i, i1 true) #8, !range !269
  %159 = trunc i32 %158 to i8
  %160 = sub nuw nsw i8 32, %159
  %conv115.i.i = select i1 %tobool.not.i177.i.i, i8 0, i8 %160
  %161 = ptrtoint ptr %rss_l.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv115.i.i, ptr %rss_l.i.i, align 2
  %162 = ptrtoint ptr %mask86.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %mask86.i.i, align 4
  %conv120.i.i = zext i16 %163 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool.not.i180.i.i = icmp eq i16 %163, 0
  %164 = call i32 @llvm.ctlz.i32(i32 %conv120.i.i, i1 true) #8, !range !269
  %165 = trunc i32 %164 to i8
  %166 = sub nuw nsw i8 32, %165
  %conv122.i.i = select i1 %tobool.not.i180.i.i, i8 0, i8 %166
  %167 = ptrtoint ptr %pc_l.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv122.i.i, ptr %pc_l.i.i, align 1
  %idx124.i.i = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort.i.i, i32 0, i32 3
  %168 = ptrtoint ptr %idx124.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 7, ptr %idx124.i.i, align 1
  %l2_accel.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 2
  %169 = ptrtoint ptr %l2_accel.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %l2_accel.i.i, align 4
  %tobool125.not.i.i = icmp eq ptr %170, null
  br i1 %tobool125.not.i.i, label %if.end106.i.i.fm10k_configure_dglort.exit.i_crit_edge, label %if.then126.i.i

if.end106.i.i.fm10k_configure_dglort.exit.i_crit_edge: ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_dglort.exit.i

if.then126.i.i:                                   ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i183.i.i = icmp eq i32 %172, 0
  %173 = call i32 @llvm.ctlz.i32(i32 %172, i1 true) #8, !range !269
  %174 = trunc i32 %173 to i8
  %175 = sub nuw nsw i8 32, %174
  %conv129.i.i = select i1 %tobool.not.i183.i.i, i8 0, i8 %175
  %shared_l.i.i = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort.i.i, i32 0, i32 8
  %176 = ptrtoint ptr %shared_l.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv129.i.i, ptr %shared_l.i.i, align 2
  br label %fm10k_configure_dglort.exit.i

fm10k_configure_dglort.exit.i:                    ; preds = %if.then126.i.i, %if.end106.i.i.fm10k_configure_dglort.exit.i_crit_edge
  %177 = ptrtoint ptr %configure_dglort_map.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %configure_dglort_map.i.i, align 8
  %call134.i.i = call i32 %178(ptr noundef %hw1, ptr noundef nonnull %dglort.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dglort.i.i) #8
  %num_rx_queues.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 9
  %179 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_rx_queues.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp21.i = icmp sgt i32 %180, 0
  br i1 %cmp21.i, label %for.body.lr.ph.i33, label %fm10k_configure_dglort.exit.i.fm10k_configure_rx.exit_crit_edge

fm10k_configure_dglort.exit.i.fm10k_configure_rx.exit_crit_edge: ; preds = %fm10k_configure_dglort.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_rx.exit

for.body.lr.ph.i33:                               ; preds = %fm10k_configure_dglort.exit.i
  %rx_pause3.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 65
  %back.i.i.i31 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 1
  %uc_addr.i.i32 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 43
  %pfc_en.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 64
  %default_vid.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 4
  br label %for.body.i39

for.body.i39:                                     ; preds = %fm10k_configure_rx_ring.exit.i.for.body.i39_crit_edge, %for.body.lr.ph.i33
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i33 ], [ %inc.i54, %fm10k_configure_rx_ring.exit.i.for.body.i39_crit_edge ]
  %arrayidx.i34 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 34, i32 %i.022.i
  %181 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.i34, align 4
  %dma.i.i35 = getelementptr inbounds %struct.fm10k_ring, ptr %182, i32 0, i32 8
  %183 = ptrtoint ptr %dma.i.i35 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %dma.i.i35, align 32
  %count.i.i36 = getelementptr inbounds %struct.fm10k_ring, ptr %182, i32 0, i32 14
  %185 = ptrtoint ptr %count.i.i36 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %count.i.i36, align 2
  %conv2.i.i37 = zext i16 %186 to i32
  %mul.i.i38 = shl nuw nsw i32 %conv2.i.i37, 5
  %187 = ptrtoint ptr %rx_pause3.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %rx_pause3.i.i, align 1
  %reg_idx4.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %182, i32 0, i32 11
  %189 = ptrtoint ptr %reg_idx4.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %reg_idx4.i.i, align 1
  %conv5.i.i = zext i8 %190 to i32
  %mul6.i.i = shl nuw nsw i32 %conv5.i.i, 6
  %add.i14.i = or i32 %mul6.i.i, 16390
  %191 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i.i15.i = icmp eq ptr %192, null
  br i1 %tobool.not.i.i15.i, label %for.body.i39.fm10k_read_reg.exit.i.i46_crit_edge, label %if.end.i.i.i41, !prof !235

for.body.i39.fm10k_read_reg.exit.i.i46_crit_edge: ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit.i.i46

if.end.i.i.i41:                                   ; preds = %for.body.i39
  %arrayidx.i370.i.i = getelementptr i32, ptr %192, i32 %add.i14.i
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i370.i.i) #8, !srcloc !236
  %194 = call i32 @llvm.bswap.i32(i32 %193) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %193)
  %tobool8.not.i.i.i40 = icmp eq i32 %193, -1
  br i1 %tobool8.not.i.i.i40, label %land.lhs.true.i.i.i43, label %if.end.i.i.i41.fm10k_read_reg.exit.i.i46_crit_edge

if.end.i.i.i41.fm10k_read_reg.exit.i.i46_crit_edge: ; preds = %if.end.i.i.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit.i.i46

land.lhs.true.i.i.i43:                            ; preds = %if.end.i.i.i41
  %195 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %192) #8, !srcloc !236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %195)
  %tobool16.not.i.i.i42 = icmp eq i32 %195, -1
  br i1 %tobool16.not.i.i.i42, label %if.then17.i.i.i45, label %land.lhs.true.i.i.i43.fm10k_read_reg.exit.i.i46_crit_edge

land.lhs.true.i.i.i43.fm10k_read_reg.exit.i.i46_crit_edge: ; preds = %land.lhs.true.i.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit.i.i46

if.then17.i.i.i45:                                ; preds = %land.lhs.true.i.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %back.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %back.i.i.i31, align 4
  %netdev18.i.i.i44 = getelementptr inbounds %struct.fm10k_intfc, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %netdev18.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %netdev18.i.i.i44, align 128
  %200 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %hw1, align 8
  call void @netif_device_detach(ptr noundef %199) #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %199, ptr noundef nonnull @.str) #11
  br label %fm10k_read_reg.exit.i.i46

fm10k_read_reg.exit.i.i46:                        ; preds = %if.then17.i.i.i45, %land.lhs.true.i.i.i43.fm10k_read_reg.exit.i.i46_crit_edge, %if.end.i.i.i41.fm10k_read_reg.exit.i.i46_crit_edge, %for.body.i39.fm10k_read_reg.exit.i.i46_crit_edge
  %retval.0.i.i.i = phi i32 [ -1, %for.body.i39.fm10k_read_reg.exit.i.i46_crit_edge ], [ %194, %if.then17.i.i.i45 ], [ %194, %land.lhs.true.i.i.i43.fm10k_read_reg.exit.i.i46_crit_edge ], [ %194, %if.end.i.i.i41.fm10k_read_reg.exit.i.i46_crit_edge ]
  %201 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i16.i = icmp eq ptr %202, null
  br i1 %tobool.not.i16.i, label %fm10k_read_reg.exit.i.i46.if.end.i18.i_crit_edge, label %do.body12.i.i47, !prof !235

fm10k_read_reg.exit.i.i46.if.end.i18.i_crit_edge: ; preds = %fm10k_read_reg.exit.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i18.i

do.body12.i.i47:                                  ; preds = %fm10k_read_reg.exit.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i = and i32 %retval.0.i.i.i, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  call void @arm_heavy_mb() #8
  %203 = call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %arrayidx.i17.i = getelementptr i32, ptr %202, i32 %add.i14.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i17.i, i32 %203) #8, !srcloc !240
  br label %if.end.i18.i

if.end.i18.i:                                     ; preds = %do.body12.i.i47, %fm10k_read_reg.exit.i.i46.if.end.i18.i_crit_edge
  %204 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i371.i.i = icmp eq ptr %205, null
  br i1 %tobool.not.i371.i.i, label %if.end.i18.i.fm10k_read_reg.exit379.i.i_crit_edge, label %if.end.i373.i.i, !prof !235

if.end.i18.i.fm10k_read_reg.exit379.i.i_crit_edge: ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit379.i.i

if.end.i373.i.i:                                  ; preds = %if.end.i18.i
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %205) #8, !srcloc !236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %206)
  %tobool8.not.i372.i.i = icmp eq i32 %206, -1
  br i1 %tobool8.not.i372.i.i, label %land.lhs.true.i374.i.i, label %if.end.i373.i.i.fm10k_read_reg.exit379.i.i_crit_edge

if.end.i373.i.i.fm10k_read_reg.exit379.i.i_crit_edge: ; preds = %if.end.i373.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit379.i.i

land.lhs.true.i374.i.i:                           ; preds = %if.end.i373.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %back.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %back.i.i.i31, align 4
  %netdev18.i376.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %netdev18.i376.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %netdev18.i376.i.i, align 128
  %211 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %hw1, align 8
  call void @netif_device_detach(ptr noundef %210) #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %210, ptr noundef nonnull @.str) #11
  br label %fm10k_read_reg.exit379.i.i

fm10k_read_reg.exit379.i.i:                       ; preds = %land.lhs.true.i374.i.i, %if.end.i373.i.i.fm10k_read_reg.exit379.i.i_crit_edge, %if.end.i18.i.fm10k_read_reg.exit379.i.i_crit_edge
  %212 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile ptr, ptr %hw1, align 8
  %tobool28.not.i.i = icmp eq ptr %213, null
  br i1 %tobool28.not.i.i, label %fm10k_read_reg.exit379.i.i.if.end47.i.i_crit_edge, label %do.body38.i.i, !prof !235

fm10k_read_reg.exit379.i.i.if.end47.i.i_crit_edge: ; preds = %fm10k_read_reg.exit379.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

do.body38.i.i:                                    ; preds = %fm10k_read_reg.exit379.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !271
  call void @arm_heavy_mb() #8
  %214 = call i32 @llvm.bswap.i32(i32 %184) #8
  %add45.i.i = or i32 %mul6.i.i, 16384
  %arrayidx46.i.i = getelementptr i32, ptr %213, i32 %add45.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx46.i.i, i32 %214) #8, !srcloc !240
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %do.body38.i.i, %fm10k_read_reg.exit379.i.i.if.end47.i.i_crit_edge
  %215 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile ptr, ptr %hw1, align 8
  %tobool57.not.i.i = icmp eq ptr %216, null
  br i1 %tobool57.not.i.i, label %if.end47.i.i.if.end75.i.i_crit_edge, label %do.body67.i.i, !prof !235

if.end47.i.i.if.end75.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i.i

do.body67.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  call void @arm_heavy_mb() #8
  %add73.i.i = or i32 %mul6.i.i, 16385
  %arrayidx74.i.i = getelementptr i32, ptr %216, i32 %add73.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx74.i.i, i32 0) #8, !srcloc !240
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %do.body67.i.i, %if.end47.i.i.if.end75.i.i_crit_edge
  %217 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile ptr, ptr %hw1, align 8
  %tobool85.not.i.i = icmp eq ptr %218, null
  br i1 %tobool85.not.i.i, label %if.end75.i.i.if.end102.i.i_crit_edge, label %do.body95.i.i, !prof !235

if.end75.i.i.if.end102.i.i_crit_edge:             ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i.i

do.body95.i.i:                                    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !273
  call void @arm_heavy_mb() #8
  %219 = call i32 @llvm.bswap.i32(i32 %mul.i.i38) #8
  %add100.i.i = or i32 %mul6.i.i, 16386
  %arrayidx101.i.i = getelementptr i32, ptr %218, i32 %add100.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx101.i.i, i32 %219) #8, !srcloc !240
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %do.body95.i.i, %if.end75.i.i.if.end102.i.i_crit_edge
  %220 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile ptr, ptr %hw1, align 8
  %tobool112.not.i.i = icmp eq ptr %221, null
  br i1 %tobool112.not.i.i, label %if.end102.i.i.if.end129.i.i_crit_edge, label %do.body122.i.i, !prof !235

if.end102.i.i.if.end129.i.i_crit_edge:            ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129.i.i

do.body122.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !274
  call void @arm_heavy_mb() #8
  %add127.i.i = or i32 %mul6.i.i, 16388
  %arrayidx128.i.i = getelementptr i32, ptr %221, i32 %add127.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx128.i.i, i32 0) #8, !srcloc !240
  br label %if.end129.i.i

if.end129.i.i:                                    ; preds = %do.body122.i.i, %if.end102.i.i.if.end129.i.i_crit_edge
  %222 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile ptr, ptr %hw1, align 8
  %tobool139.not.i.i = icmp eq ptr %223, null
  br i1 %tobool139.not.i.i, label %if.end129.if.end156_crit_edge.i.i, label %do.body149.i.i, !prof !235

if.end129.if.end156_crit_edge.i.i:                ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i.i48 = or i32 %mul6.i.i, 16389
  br label %if.end156.i.i

do.body149.i.i:                                   ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !275
  call void @arm_heavy_mb() #8
  %add154.i.i = or i32 %mul6.i.i, 16389
  %arrayidx155.i.i = getelementptr i32, ptr %223, i32 %add154.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx155.i.i, i32 0) #8, !srcloc !240
  br label %if.end156.i.i

if.end156.i.i:                                    ; preds = %do.body149.i.i, %if.end129.if.end156_crit_edge.i.i
  %add161.pre-phi.i.i = phi i32 [ %.pre.i.i48, %if.end129.if.end156_crit_edge.i.i ], [ %add154.i.i, %do.body149.i.i ]
  %224 = ptrtoint ptr %uc_addr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %uc_addr.i.i32, align 4
  %arrayidx162.i.i = getelementptr i32, ptr %225, i32 %add161.pre-phi.i.i
  %tail.i.i49 = getelementptr inbounds %struct.fm10k_ring, ptr %182, i32 0, i32 6
  %226 = ptrtoint ptr %tail.i.i49 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %arrayidx162.i.i, ptr %tail.i.i49, align 8
  %next_to_clean.i.i50 = getelementptr inbounds %struct.fm10k_ring, ptr %182, i32 0, i32 17
  %227 = ptrtoint ptr %next_to_clean.i.i50 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %next_to_clean.i.i50, align 4
  %next_to_use.i.i51 = getelementptr inbounds %struct.fm10k_ring, ptr %182, i32 0, i32 16
  %228 = ptrtoint ptr %next_to_use.i.i51 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %next_to_use.i.i51, align 2
  %next_to_alloc.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %182, i32 0, i32 15
  %229 = ptrtoint ptr %next_to_alloc.i.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 0, ptr %next_to_alloc.i.i, align 16
  %230 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile ptr, ptr %hw1, align 8
  %tobool171.not.i.i = icmp eq ptr %231, null
  br i1 %tobool171.not.i.i, label %if.end156.i.i.if.end188.i.i_crit_edge, label %do.body181.i.i, !prof !235

if.end156.i.i.if.end188.i.i_crit_edge:            ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188.i.i

do.body181.i.i:                                   ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  call void @arm_heavy_mb() #8
  %add186.i.i = or i32 %mul6.i.i, 16393
  %arrayidx187.i.i = getelementptr i32, ptr %231, i32 %add186.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx187.i.i, i32 134217920) #8, !srcloc !240
  br label %if.end188.i.i

if.end188.i.i:                                    ; preds = %do.body181.i.i, %if.end156.i.i.if.end188.i.i_crit_edge
  %232 = ptrtoint ptr %pfc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %pfc_en.i.i, align 4
  %qos_pc.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %182, i32 0, i32 12
  %234 = ptrtoint ptr %qos_pc.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %qos_pc.i.i, align 2
  %236 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile ptr, ptr %hw1, align 8
  %tobool209.not.i.i = icmp eq ptr %237, null
  br i1 %tobool209.not.i.i, label %if.end188.i.i.if.end226.i.i_crit_edge, label %do.body219.i.i, !prof !235

if.end188.i.i.if.end226.i.i_crit_edge:            ; preds = %if.end188.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226.i.i

do.body219.i.i:                                   ; preds = %if.end188.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv196.i.i = zext i8 %235 to i32
  %shl.i.i = shl nuw i32 1, %conv196.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool191.not.i.i = icmp eq i8 %233, 0
  %spec.select.i19.i = select i1 %tobool191.not.i.i, i8 %188, i8 %233
  %conv195.i.i = zext i8 %spec.select.i19.i to i32
  %and197.i.i = and i32 %shl.i.i, %conv195.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197.i.i)
  %tobool198.not.i.i = icmp eq i32 %and197.i.i, 0
  %rxdctl.0.i.i = select i1 %tobool198.not.i.i, i32 513, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  call void @arm_heavy_mb() #8
  %238 = call i32 @llvm.bswap.i32(i32 %rxdctl.0.i.i) #8
  %add224.i.i = or i32 %mul6.i.i, 16391
  %arrayidx225.i.i = getelementptr i32, ptr %237, i32 %add224.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx225.i.i, i32 %238) #8, !srcloc !240
  br label %if.end226.i.i

if.end226.i.i:                                    ; preds = %do.body219.i.i, %if.end188.i.i.if.end226.i.i_crit_edge
  %239 = ptrtoint ptr %default_vid.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %default_vid.i.i, align 4
  %vid.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %182, i32 0, i32 13
  %241 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %240, ptr %vid.i.i, align 4
  %242 = load i16, ptr %default_vid.i.i, align 4
  %conv231.i.i = zext i16 %242 to i32
  %div3.i.i.i = lshr i32 %conv231.i.i, 5
  %arrayidx.i.i20.i = getelementptr i32, ptr %interface, i32 %div3.i.i.i
  %243 = ptrtoint ptr %arrayidx.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load volatile i32, ptr %arrayidx.i.i20.i, align 4
  %and.i.i.i = and i32 %conv231.i.i, 31
  %245 = shl nuw i32 1, %and.i.i.i
  %246 = and i32 %245, %244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool233.not.i.i52 = icmp eq i32 %246, 0
  br i1 %tobool233.not.i.i52, label %if.end226.i.i.if.end239.i.i_crit_edge, label %if.then234.i.i

if.end226.i.i.if.end239.i.i_crit_edge:            ; preds = %if.end226.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239.i.i

if.then234.i.i:                                   ; preds = %if.end226.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %247 = or i16 %240, -32768
  %248 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %247, ptr %vid.i.i, align 4
  br label %if.end239.i.i

if.end239.i.i:                                    ; preds = %if.then234.i.i, %if.end226.i.i.if.end239.i.i_crit_edge
  %249 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %182, align 128
  %tobool240.not.i.i = icmp eq ptr %250, null
  br i1 %tobool240.not.i.i, label %if.end239.i.i.do.body247.i.i_crit_edge, label %if.then241.i.i

if.end239.i.i.do.body247.i.i_crit_edge:           ; preds = %if.end239.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body247.i.i

if.then241.i.i:                                   ; preds = %if.end239.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %v_idx.i.i53 = getelementptr inbounds %struct.fm10k_q_vector, ptr %250, i32 0, i32 2
  %251 = ptrtoint ptr %v_idx.i.i53 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %v_idx.i.i53, align 8
  %conv243.i.i = zext i16 %252 to i32
  %add244.i.i = add nuw nsw i32 %conv243.i.i, 1
  %or245.i.i = or i32 %add244.i.i, 256
  br label %do.body247.i.i

do.body247.i.i:                                   ; preds = %if.then241.i.i, %if.end239.i.i.do.body247.i.i_crit_edge
  %rxint.0.i.i = phi i32 [ %or245.i.i, %if.then241.i.i ], [ 768, %if.end239.i.i.do.body247.i.i_crit_edge ]
  %253 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load volatile ptr, ptr %hw1, align 8
  %tobool254.not.i.i = icmp eq ptr %254, null
  br i1 %tobool254.not.i.i, label %do.body247.i.i.if.end271.i.i_crit_edge, label %do.body264.i.i, !prof !235

do.body247.i.i.if.end271.i.i_crit_edge:           ; preds = %do.body247.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end271.i.i

do.body264.i.i:                                   ; preds = %do.body247.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !278
  call void @arm_heavy_mb() #8
  %255 = call i32 @llvm.bswap.i32(i32 %rxint.0.i.i) #8
  %add269.i.i = or i32 %mul6.i.i, 16392
  %arrayidx270.i.i = getelementptr i32, ptr %254, i32 %add269.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx270.i.i, i32 %255) #8, !srcloc !240
  br label %if.end271.i.i

if.end271.i.i:                                    ; preds = %do.body264.i.i, %do.body247.i.i.if.end271.i.i_crit_edge
  %256 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i380.i.i = icmp eq ptr %257, null
  br i1 %tobool.not.i380.i.i, label %if.end271.i.i.fm10k_read_reg.exit390.i.i_crit_edge, label %if.end.i383.i.i, !prof !235

if.end271.i.i.fm10k_read_reg.exit390.i.i_crit_edge: ; preds = %if.end271.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit390.i.i

if.end.i383.i.i:                                  ; preds = %if.end271.i.i
  %arrayidx.i381.i.i = getelementptr i32, ptr %257, i32 %add.i14.i
  %258 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i381.i.i) #8, !srcloc !236
  %259 = call i32 @llvm.bswap.i32(i32 %258) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %258)
  %tobool8.not.i382.i.i = icmp eq i32 %258, -1
  br i1 %tobool8.not.i382.i.i, label %land.lhs.true.i384.i.i, label %if.end.i383.i.i.fm10k_read_reg.exit390.i.i_crit_edge

if.end.i383.i.i.fm10k_read_reg.exit390.i.i_crit_edge: ; preds = %if.end.i383.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit390.i.i

land.lhs.true.i384.i.i:                           ; preds = %if.end.i383.i.i
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %257) #8, !srcloc !236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %260)
  %tobool16.not.i385.i.i = icmp eq i32 %260, -1
  br i1 %tobool16.not.i385.i.i, label %if.then17.i388.i.i, label %land.lhs.true.i384.i.i.fm10k_read_reg.exit390.i.i_crit_edge

land.lhs.true.i384.i.i.fm10k_read_reg.exit390.i.i_crit_edge: ; preds = %land.lhs.true.i384.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit390.i.i

if.then17.i388.i.i:                               ; preds = %land.lhs.true.i384.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %261 = ptrtoint ptr %back.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %back.i.i.i31, align 4
  %netdev18.i387.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %netdev18.i387.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %netdev18.i387.i.i, align 128
  %265 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr null, ptr %hw1, align 8
  call void @netif_device_detach(ptr noundef %264) #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %264, ptr noundef nonnull @.str) #11
  br label %fm10k_read_reg.exit390.i.i

fm10k_read_reg.exit390.i.i:                       ; preds = %if.then17.i388.i.i, %land.lhs.true.i384.i.i.fm10k_read_reg.exit390.i.i_crit_edge, %if.end.i383.i.i.fm10k_read_reg.exit390.i.i_crit_edge, %if.end271.i.i.fm10k_read_reg.exit390.i.i_crit_edge
  %retval.0.i389.i.i = phi i32 [ -1, %if.end271.i.i.fm10k_read_reg.exit390.i.i_crit_edge ], [ %259, %if.then17.i388.i.i ], [ %259, %land.lhs.true.i384.i.i.fm10k_read_reg.exit390.i.i_crit_edge ], [ %259, %if.end.i383.i.i.fm10k_read_reg.exit390.i.i_crit_edge ]
  %266 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load volatile ptr, ptr %hw1, align 8
  %tobool286.not.i.i = icmp eq ptr %267, null
  br i1 %tobool286.not.i.i, label %fm10k_read_reg.exit390.i.i.if.end303.i.i_crit_edge, label %do.body296.i.i, !prof !235

fm10k_read_reg.exit390.i.i.if.end303.i.i_crit_edge: ; preds = %fm10k_read_reg.exit390.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end303.i.i

do.body296.i.i:                                   ; preds = %fm10k_read_reg.exit390.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or278.i.i = or i32 %retval.0.i389.i.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !279
  call void @arm_heavy_mb() #8
  %268 = call i32 @llvm.bswap.i32(i32 %or278.i.i) #8
  %arrayidx302.i.i = getelementptr i32, ptr %267, i32 %add.i14.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx302.i.i, i32 %268) #8, !srcloc !240
  br label %if.end303.i.i

if.end303.i.i:                                    ; preds = %do.body296.i.i, %fm10k_read_reg.exit390.i.i.if.end303.i.i_crit_edge
  %269 = ptrtoint ptr %next_to_clean.i.i50 to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %next_to_clean.i.i50, align 4
  %271 = ptrtoint ptr %next_to_use.i.i51 to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %next_to_use.i.i51, align 2
  %273 = xor i16 %272, -1
  %sub2.i.i.i = add i16 %270, %273
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub2.i.i.i)
  %cmp.i.i.i = icmp slt i16 %sub2.i.i.i, 0
  br i1 %cmp.i.i.i, label %cond.true.i.i.i, label %if.end303.i.i.fm10k_configure_rx_ring.exit.i_crit_edge, !prof !280

if.end303.i.i.fm10k_configure_rx_ring.exit.i_crit_edge: ; preds = %if.end303.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_rx_ring.exit.i

cond.true.i.i.i:                                  ; preds = %if.end303.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %274 = ptrtoint ptr %count.i.i36 to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %count.i.i36, align 2
  %add.i.i.i = add i16 %275, %sub2.i.i.i
  br label %fm10k_configure_rx_ring.exit.i

fm10k_configure_rx_ring.exit.i:                   ; preds = %cond.true.i.i.i, %if.end303.i.i.fm10k_configure_rx_ring.exit.i_crit_edge
  %cond.i.i.i = phi i16 [ %add.i.i.i, %cond.true.i.i.i ], [ %sub2.i.i.i, %if.end303.i.i.fm10k_configure_rx_ring.exit.i_crit_edge ]
  call void @fm10k_alloc_rx_buffers(ptr noundef %182, i16 noundef zeroext %cond.i.i.i) #8
  %inc.i54 = add nuw nsw i32 %i.022.i, 1
  %276 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %num_rx_queues.i, align 32
  %cmp.i55 = icmp slt i32 %inc.i54, %277
  br i1 %cmp.i55, label %fm10k_configure_rx_ring.exit.i.for.body.i39_crit_edge, label %fm10k_configure_rx_ring.exit.i.fm10k_configure_rx.exit_crit_edge

fm10k_configure_rx_ring.exit.i.fm10k_configure_rx.exit_crit_edge: ; preds = %fm10k_configure_rx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_rx.exit

fm10k_configure_rx_ring.exit.i.for.body.i39_crit_edge: ; preds = %fm10k_configure_rx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i39

fm10k_configure_rx.exit:                          ; preds = %fm10k_configure_rx_ring.exit.i.fm10k_configure_rx.exit_crit_edge, %fm10k_configure_dglort.exit.i.fm10k_configure_rx.exit_crit_edge
  %update_int_moderator = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 12
  %278 = ptrtoint ptr %update_int_moderator to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %update_int_moderator, align 8
  call void %279(ptr noundef %hw1) #8
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 4
  call void @_clear_bit(i32 noundef 11, ptr noundef %state) #8
  call void @_clear_bit(i32 noundef 3, ptr noundef %state) #8
  %num_q_vectors.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 37
  %280 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %num_q_vectors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %cmp5.i = icmp sgt i32 %281, 0
  br i1 %cmp5.i, label %fm10k_configure_rx.exit.for.body.i59_crit_edge, label %fm10k_configure_rx.exit.fm10k_napi_enable_all.exit_crit_edge

fm10k_configure_rx.exit.fm10k_napi_enable_all.exit_crit_edge: ; preds = %fm10k_configure_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_napi_enable_all.exit

fm10k_configure_rx.exit.for.body.i59_crit_edge:   ; preds = %fm10k_configure_rx.exit
  br label %for.body.i59

for.body.i59:                                     ; preds = %for.body.i59.for.body.i59_crit_edge, %fm10k_configure_rx.exit.for.body.i59_crit_edge
  %q_idx.06.i = phi i32 [ %inc.i57, %for.body.i59.for.body.i59_crit_edge ], [ 0, %fm10k_configure_rx.exit.for.body.i59_crit_edge ]
  %arrayidx.i56 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 35, i32 %q_idx.06.i
  %282 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx.i56, align 4
  %napi.i = getelementptr inbounds %struct.fm10k_q_vector, ptr %283, i32 0, i32 5
  call void @napi_enable(ptr noundef %napi.i) #8
  %inc.i57 = add nuw nsw i32 %q_idx.06.i, 1
  %284 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %num_q_vectors.i, align 8
  %cmp.i58 = icmp slt i32 %inc.i57, %285
  br i1 %cmp.i58, label %for.body.i59.for.body.i59_crit_edge, label %for.body.i59.fm10k_napi_enable_all.exit_crit_edge

for.body.i59.fm10k_napi_enable_all.exit_crit_edge: ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_napi_enable_all.exit

for.body.i59.for.body.i59_crit_edge:              ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i59

fm10k_napi_enable_all.exit:                       ; preds = %for.body.i59.fm10k_napi_enable_all.exit_crit_edge, %fm10k_configure_rx.exit.fm10k_napi_enable_all.exit_crit_edge
  call void @fm10k_restore_rx_state(ptr noundef %interface) #8
  %286 = ptrtoint ptr %netdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %netdev1.i.i, align 128
  %num_tx_queues.i60 = getelementptr inbounds %struct.net_device, ptr %287, i32 0, i32 104
  %288 = ptrtoint ptr %num_tx_queues.i60 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %num_tx_queues.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %cmp4.not.i = icmp eq i32 %289, 0
  br i1 %cmp4.not.i, label %fm10k_napi_enable_all.exit.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i61

fm10k_napi_enable_all.exit.netif_tx_start_all_queues.exit_crit_edge: ; preds = %fm10k_napi_enable_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i61:                               ; preds = %fm10k_napi_enable_all.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %287, i32 0, i32 103
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.body.i65.for.body.i65_crit_edge, %for.body.lr.ph.i61
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i61 ], [ %inc.i63, %for.body.i65.for.body.i65_crit_edge ]
  %290 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i62 = getelementptr %struct.netdev_queue, ptr %291, i32 %i.05.i, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i62) #8
  %inc.i63 = add nuw i32 %i.05.i, 1
  %292 = ptrtoint ptr %num_tx_queues.i60 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %num_tx_queues.i60, align 4
  %cmp.i64 = icmp ult i32 %inc.i63, %293
  br i1 %cmp.i64, label %for.body.i65.for.body.i65_crit_edge, label %for.body.i65.netif_tx_start_all_queues.exit_crit_edge

for.body.i65.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_tx_start_all_queues.exit

for.body.i65.for.body.i65_crit_edge:              ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i65

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i65.netif_tx_start_all_queues.exit_crit_edge, %fm10k_napi_enable_all.exit.netif_tx_start_all_queues.exit_crit_edge
  %get_host_state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 8
  %294 = ptrtoint ptr %get_host_state to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 1, ptr %get_host_state, align 1
  %service_timer = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %295 = load volatile i32, ptr @jiffies, align 128
  %call7 = call i32 @mod_timer(ptr noundef %service_timer, i32 noundef %295) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_restore_rx_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_down(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 128
  %hw2 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 4
  %call = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_carrier_off(ptr noundef %1) #8
  tail call void @netif_tx_stop_all_queues(ptr noundef %1) #8
  tail call fastcc void @local_bh_disable() #8
  %2 = tail call i32 @llvm.read_register.i32(metadata !225) #8
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #8
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not.i = icmp eq i32 %7, 0
  br i1 %cmp13.not.i, label %if.end.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end.netif_tx_disable.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #8
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %5, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %11 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #8
  %inc.i = add nuw i32 %i.014.i, 1
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.end.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #8
  tail call fastcc void @local_bh_enable() #8
  tail call void @fm10k_reset_rx_state(ptr noundef %interface) #8
  %num_q_vectors.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 37
  %14 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_q_vectors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.i = icmp sgt i32 %15, 0
  br i1 %cmp5.i, label %netif_tx_disable.exit.for.body.i89_crit_edge, label %netif_tx_disable.exit.fm10k_napi_disable_all.exit_crit_edge

netif_tx_disable.exit.fm10k_napi_disable_all.exit_crit_edge: ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_napi_disable_all.exit

netif_tx_disable.exit.for.body.i89_crit_edge:     ; preds = %netif_tx_disable.exit
  br label %for.body.i89

for.body.i89:                                     ; preds = %for.body.i89.for.body.i89_crit_edge, %netif_tx_disable.exit.for.body.i89_crit_edge
  %q_idx.06.i = phi i32 [ %inc.i87, %for.body.i89.for.body.i89_crit_edge ], [ 0, %netif_tx_disable.exit.for.body.i89_crit_edge ]
  %arrayidx.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 35, i32 %q_idx.06.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %napi.i = getelementptr inbounds %struct.fm10k_q_vector, ptr %17, i32 0, i32 5
  tail call void @napi_disable(ptr noundef %napi.i) #8
  %inc.i87 = add nuw nsw i32 %q_idx.06.i, 1
  %18 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_q_vectors.i, align 8
  %cmp.i88 = icmp slt i32 %inc.i87, %19
  br i1 %cmp.i88, label %for.body.i89.for.body.i89_crit_edge, label %for.body.i89.fm10k_napi_disable_all.exit_crit_edge

for.body.i89.fm10k_napi_disable_all.exit_crit_edge: ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_napi_disable_all.exit

for.body.i89.for.body.i89_crit_edge:              ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i89

fm10k_napi_disable_all.exit:                      ; preds = %for.body.i89.fm10k_napi_disable_all.exit_crit_edge, %netif_tx_disable.exit.fm10k_napi_disable_all.exit_crit_edge
  tail call void @fm10k_update_stats(ptr noundef %interface)
  %call593 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call593)
  %tobool6.not94 = icmp eq i32 %call593, 0
  br i1 %tobool6.not94, label %fm10k_napi_disable_all.exit.while.end_crit_edge, label %fm10k_napi_disable_all.exit.while.body_crit_edge

fm10k_napi_disable_all.exit.while.body_crit_edge: ; preds = %fm10k_napi_disable_all.exit
  br label %while.body

fm10k_napi_disable_all.exit.while.end_crit_edge:  ; preds = %fm10k_napi_disable_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %fm10k_napi_disable_all.exit.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %call5 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %state) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %fm10k_napi_disable_all.exit.while.end_crit_edge
  %20 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw2, align 8
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %while.end.skip_tx_dma_drain_crit_edge, label %if.end12, !prof !235

while.end.skip_tx_dma_drain_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_tx_dma_drain

if.end12:                                         ; preds = %while.end
  %stop_hw = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 3
  %22 = ptrtoint ptr %stop_hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stop_hw, align 4
  %call13 = tail call i32 %23(ptr noundef %hw2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call13)
  %cmp.not = icmp eq i32 %call13, -4
  br i1 %cmp.not, label %for.cond.preheader, label %if.end12.skip_tx_dma_drain_crit_edge

if.end12.skip_tx_dma_drain_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_tx_dma_drain

for.cond.preheader:                               ; preds = %if.end12
  %num_tx_queues = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.cond.preheader
  %count.099 = phi i32 [ 0, %for.cond.preheader ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %i.098 = phi i32 [ 0, %for.cond.preheader ], [ %i.1.lcssa, %for.inc28.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  %24 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.098, i32 %25)
  %cmp1895 = icmp slt i32 %i.098, %25
  br i1 %cmp1895, label %for.body.for.body19_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body19_crit_edge:                    ; preds = %for.body
  br label %for.body19

for.body19:                                       ; preds = %for.inc.for.body19_crit_edge, %for.body.for.body19_crit_edge
  %i.196 = phi i32 [ %inc, %for.inc.for.body19_crit_edge ], [ %i.098, %for.body.for.body19_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 12, i32 %i.196
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %call20 = tail call i64 @fm10k_get_tx_pending(ptr noundef %27, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call20)
  %tobool21.not = icmp eq i64 %call20, 0
  br i1 %tobool21.not, label %for.inc, label %for.body19.for.end_crit_edge

for.body19.for.end_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body19
  %inc = add nsw i32 %i.196, 1
  %28 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues, align 8
  %cmp18 = icmp slt i32 %inc, %29
  br i1 %cmp18, label %for.inc.for.body19_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body19_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body19.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.1.lcssa = phi i32 [ %i.098, %for.body.for.end_crit_edge ], [ %i.196, %for.body19.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %30 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %31)
  %cmp25 = icmp eq i32 %i.1.lcssa, %31
  br i1 %cmp25, label %for.end30, label %for.inc28

for.inc28:                                        ; preds = %for.end
  %inc29 = add nuw nsw i32 %count.099, 1
  %exitcond.not = icmp eq i32 %inc29, 25
  br i1 %exitcond.not, label %for.inc28.do.end_crit_edge, label %for.inc28.for.body_crit_edge

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc28.do.end_crit_edge:                       ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %count.099)
  %cmp31 = icmp ugt i32 %count.099, 24
  br i1 %cmp31, label %for.end30.do.end_crit_edge, label %for.end30.skip_tx_dma_drain_crit_edge

for.end30.skip_tx_dma_drain_crit_edge:            ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_tx_dma_drain

for.end30.do.end_crit_edge:                       ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end30.do.end_crit_edge, %for.inc28.do.end_crit_edge
  %count.092 = phi i32 [ %count.099, %for.end30.do.end_crit_edge ], [ 25, %for.inc28.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %count.092) #11
  br label %skip_tx_dma_drain

skip_tx_dma_drain:                                ; preds = %do.end, %for.end30.skip_tx_dma_drain_crit_edge, %if.end12.skip_tx_dma_drain_crit_edge, %while.end.skip_tx_dma_drain_crit_edge
  %stop_hw36 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 3
  %34 = ptrtoint ptr %stop_hw36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stop_hw36, align 4
  %call37 = tail call i32 %35(ptr noundef %hw2) #8
  %36 = zext i32 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call37, label %do.end49 [
    i32 -4, label %do.end42
    i32 0, label %skip_tx_dma_drain.if.end53_crit_edge
  ]

skip_tx_dma_drain.if.end53_crit_edge:             ; preds = %skip_tx_dma_drain
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end42:                                         ; preds = %skip_tx_dma_drain
  call void @__sanitizer_cov_trace_pc() #10
  %pdev43 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %37 = ptrtoint ptr %pdev43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev43, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.11) #11
  br label %if.end53

do.end49:                                         ; preds = %skip_tx_dma_drain
  call void @__sanitizer_cov_trace_pc() #10
  %pdev50 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %39 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev50, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.14, i32 noundef %call37) #11
  br label %if.end53

if.end53:                                         ; preds = %do.end49, %do.end42, %skip_tx_dma_drain.if.end53_crit_edge
  tail call void @fm10k_clean_all_tx_rings(ptr noundef %interface) #8
  tail call void @fm10k_clean_all_rx_rings(ptr noundef %interface) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_reset_rx_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fm10k_get_tx_pending(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_clean_all_tx_rings(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_clean_all_rx_rings(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_register_pci_driver() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @fm10k_driver, ptr noundef null, ptr noundef nonnull @.str.16) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_unregister_pci_driver() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @fm10k_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_msix_mbx_pf(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %fault.i = alloca %struct.fm10k_fault, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41
  %mbx2 = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fm10k_read_reg.exit_crit_edge, label %if.end.i, !prof !235

entry.fm10k_read_reg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr i32, ptr %1, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #8, !srcloc !236
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool8.not.i = icmp eq i32 %2, -1
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %if.end.i.fm10k_read_reg.exit_crit_edge

if.end.i.fm10k_read_reg.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool16.not.i = icmp eq i32 %4, -1
  br i1 %tobool16.not.i, label %if.then17.i, label %land.lhs.true.i.fm10k_read_reg.exit_crit_edge

land.lhs.true.i.fm10k_read_reg.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %back.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 1
  %5 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back.i, align 4
  %netdev18.i = getelementptr inbounds %struct.fm10k_intfc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev18.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev18.i, align 128
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %hw1, align 8
  tail call void @netif_device_detach(ptr noundef %8) #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str) #11
  br label %fm10k_read_reg.exit

fm10k_read_reg.exit:                              ; preds = %if.then17.i, %land.lhs.true.i.fm10k_read_reg.exit_crit_edge, %if.end.i.fm10k_read_reg.exit_crit_edge, %entry.fm10k_read_reg.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.fm10k_read_reg.exit_crit_edge ], [ %3, %if.then17.i ], [ %3, %land.lhs.true.i.fm10k_read_reg.exit_crit_edge ], [ %3, %if.end.i.fm10k_read_reg.exit_crit_edge ]
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw1, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %fm10k_read_reg.exit.if.end_crit_edge, label %do.body8, !prof !235

fm10k_read_reg.exit.if.end_crit_edge:             ; preds = %fm10k_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body8:                                         ; preds = %fm10k_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !281
  tail call void @arm_heavy_mb() #8
  %and = and i32 %retval.0.i, 448
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i32, ptr %11, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %12) #8, !srcloc !240
  br label %if.end

if.end:                                           ; preds = %do.body8, %fm10k_read_reg.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fault.i) #8
  %13 = call ptr @memset(ptr %fault.i, i32 0, i32 16)
  %and.i = and i32 %retval.0.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not15.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not15.i, label %if.end.fm10k_report_fault.exit_crit_edge, label %for.body.lr.ph.i

if.end.fm10k_report_fault.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_report_fault.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %get_fault.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 2, i32 0, i32 18
  %pdev.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 3
  %iov_data3.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 39
  %type20.i.i = getelementptr inbounds %struct.fm10k_fault, ptr %fault.i, i32 0, i32 2
  %specinfo.i.i = getelementptr inbounds %struct.fm10k_fault, ptr %fault.i, i32 0, i32 1
  %func.i.i = getelementptr inbounds %struct.fm10k_fault, ptr %fault.i, i32 0, i32 3
  %reset_lport.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 5, i32 0, i32 6
  %reset_resources.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 5, i32 0, i32 4
  %set_lport.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 5, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %type.017.i = phi i32 [ 8, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %eicr.addr.016.i = phi i32 [ %and.i, %for.body.lr.ph.i ], [ %shr.i, %for.inc.i.for.body.i_crit_edge ]
  %and2.i = and i32 %eicr.addr.016.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i74

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i74:                                       ; preds = %for.body.i
  %14 = ptrtoint ptr %get_fault.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_fault.i, align 8
  %call.i = call i32 %15(ptr noundef %hw1, i32 noundef %type.017.i, ptr noundef nonnull %fault.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26) #11
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i74
  %18 = ptrtoint ptr %iov_data3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iov_data3.i.i, align 4
  %20 = zext i32 %type.017.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %type.017.i, label %if.end6.i.do.end.i.i_crit_edge [
    i32 8, label %sw.bb.i.i
    i32 16, label %sw.bb12.i.i
    i32 28, label %sw.bb19.i.i
  ]

if.end6.i.do.end.i.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

sw.bb.i.i:                                        ; preds = %if.end6.i
  %21 = ptrtoint ptr %type20.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type20.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %23 = icmp ult i8 %22, 7
  br i1 %23, label %switch.lookup, label %sw.bb.i.i.do.end.i.i_crit_edge

sw.bb.i.i.do.end.i.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

sw.bb12.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %type20.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type20.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %switch.selectcmp.i.i = icmp eq i8 %25, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @.str.38, ptr @.str.36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %switch.selectcmp78.i.i = icmp eq i8 %25, 0
  %switch.select79.i.i = select i1 %switch.selectcmp78.i.i, ptr @.str.37, ptr %switch.select.i.i
  br label %do.end.i.i

sw.bb19.i.i:                                      ; preds = %if.end6.i
  %26 = ptrtoint ptr %type20.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type20.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %27)
  %28 = icmp ult i8 %27, 12
  br i1 %28, label %switch.lookup92, label %sw.bb19.i.i.do.end.i.i_crit_edge

sw.bb19.i.i.do.end.i.i_crit_edge:                 ; preds = %sw.bb19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

switch.lookup:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = sext i8 %22 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.fm10k_msix_mbx_pf, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end.i.i

switch.lookup92:                                  ; preds = %sw.bb19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = sext i8 %27 to i32
  %switch.gep93 = getelementptr inbounds [12 x ptr], ptr @switch.table.fm10k_msix_mbx_pf.113, i32 0, i32 %31
  %32 = ptrtoint ptr %switch.gep93 to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load94 = load ptr, ptr %switch.gep93, align 4
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %switch.lookup92, %switch.lookup, %sw.bb19.i.i.do.end.i.i_crit_edge, %sw.bb12.i.i, %sw.bb.i.i.do.end.i.i_crit_edge, %if.end6.i.do.end.i.i_crit_edge
  %error.0.i.i = phi ptr [ @.str.28, %sw.bb.i.i.do.end.i.i_crit_edge ], [ %switch.select79.i.i, %sw.bb12.i.i ], [ @.str.39, %sw.bb19.i.i.do.end.i.i_crit_edge ], [ @.str.51, %if.end6.i.do.end.i.i_crit_edge ], [ %switch.load, %switch.lookup ], [ %switch.load94, %switch.lookup92 ]
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %33 = ptrtoint ptr %fault.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %fault.i, align 8
  %35 = ptrtoint ptr %specinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %specinfo.i.i, align 8
  %37 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %func.i.i, align 1
  %conv37.i.i = zext i8 %38 to i32
  %39 = lshr i32 %conv37.i.i, 3
  %and40.i.i = and i32 %conv37.i.i, 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.52, ptr noundef nonnull %error.0.i.i, i64 noundef %34, i32 noundef %36, i32 noundef %39, i32 noundef %and40.i.i) #11
  %40 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %func.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  %tobool43.not.i.i = icmp eq ptr %19, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool43.not.i.i
  br i1 %or.cond.i.i, label %do.end.i.i.for.inc.i_crit_edge, label %if.then.i.i

do.end.i.i.for.inc.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv42.i.i = zext i8 %41 to i32
  %sub.i.i = add nsw i32 %conv42.i.i, -1
  %arrayidx.i.i = getelementptr %struct.fm10k_iov_data, ptr %19, i32 0, i32 3, i32 %sub.i.i
  %42 = ptrtoint ptr %reset_lport.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reset_lport.i.i, align 8
  call void %43(ptr noundef %hw1, ptr noundef %arrayidx.i.i) #8
  %44 = ptrtoint ptr %reset_resources.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reset_resources.i.i, align 8
  %call.i.i = call i32 %45(ptr noundef %hw1, ptr noundef %arrayidx.i.i) #8
  %46 = ptrtoint ptr %set_lport.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_lport.i.i, align 4
  %conv51.i.i = trunc i32 %sub.i.i to i16
  %call52.i.i = call i32 %47(ptr noundef %hw1, ptr noundef %arrayidx.i.i, i16 noundef zeroext %conv51.i.i, i8 noundef zeroext 2) #8
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 8
  %call55.i.i = call i32 %49(ptr noundef %hw1, ptr noundef %arrayidx.i.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %do.end.i.i.for.inc.i_crit_edge, %do.end.i, %for.body.i.for.inc.i_crit_edge
  %shr.i = lshr i32 %eicr.addr.016.i, 1
  %add.i = add nuw nsw i32 %type.017.i, 4
  %tobool.not.i75 = icmp ult i32 %eicr.addr.016.i, 2
  br i1 %tobool.not.i75, label %for.inc.i.fm10k_report_fault.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.fm10k_report_fault.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_report_fault.exit

fm10k_report_fault.exit:                          ; preds = %for.inc.i.fm10k_report_fault.exit_crit_edge, %if.end.fm10k_report_fault.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fault.i) #8
  %and.i77 = and i32 %retval.0.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i78, label %fm10k_report_fault.exit.fm10k_reset_drop_on_empty.exit_crit_edge, label %if.end.i80

fm10k_report_fault.exit.fm10k_reset_drop_on_empty.exit_crit_edge: ; preds = %fm10k_report_fault.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_reset_drop_on_empty.exit

if.end.i80:                                       ; preds = %fm10k_report_fault.exit
  %50 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i.i79 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i79, label %if.end.i80.do.body.i_crit_edge, label %if.end.i.i, !prof !235

if.end.i80.do.body.i_crit_edge:                   ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i.i:                                       ; preds = %if.end.i80
  %arrayidx.i.i81 = getelementptr i32, ptr %51, i32 39
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i81) #8, !srcloc !236
  %53 = call i32 @llvm.bswap.i32(i32 %52) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  %54 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %52, label %if.end.i.i.do.body.i_crit_edge [
    i32 -1, label %land.lhs.true.i.i
    i32 0, label %if.end.i.i.if.end17.i_crit_edge
  ]

if.end.i.i.if.end17.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #8, !srcloc !236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %tobool16.not.i.i = icmp eq i32 %55, -1
  br i1 %tobool16.not.i.i, label %if.then17.i.i, label %land.lhs.true.i.i.do.body.i_crit_edge

land.lhs.true.i.i.do.body.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then17.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %back.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 1
  %56 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %back.i.i, align 4
  %netdev18.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %netdev18.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %netdev18.i.i, align 128
  %60 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %hw1, align 8
  call void @netif_device_detach(ptr noundef %59) #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %59, ptr noundef nonnull @.str) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.then17.i.i, %land.lhs.true.i.i.do.body.i_crit_edge, %if.end.i.i.do.body.i_crit_edge, %if.end.i80.do.body.i_crit_edge
  %retval.0.i128.i = phi i32 [ -1, %if.end.i80.do.body.i_crit_edge ], [ %53, %if.end.i.i.do.body.i_crit_edge ], [ %53, %land.lhs.true.i.i.do.body.i_crit_edge ], [ %53, %if.then17.i.i ]
  %61 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %hw1, align 8
  %tobool6.not.i = icmp eq ptr %62, null
  br i1 %tobool6.not.i, label %do.body.i.if.end17.i_crit_edge, label %do.body11.i, !prof !235

do.body.i.if.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

do.body11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !282
  call void @arm_heavy_mb() #8
  %63 = call i32 @llvm.bswap.i32(i32 %retval.0.i128.i) #8
  %arrayidx.i82 = getelementptr i32, ptr %62, i32 39
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i82, i32 %63) #8, !srcloc !240
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.body11.i, %do.body.i.if.end17.i_crit_edge, %if.end.i.i.if.end17.i_crit_edge
  %retval.0.i129.i = phi i32 [ %retval.0.i128.i, %do.body.i.if.end17.i_crit_edge ], [ %retval.0.i128.i, %do.body11.i ], [ %52, %if.end.i.i.if.end17.i_crit_edge ]
  %rx_overrun_vf.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 24
  %rx_overrun_pf.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 23
  %back.i121.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.end17.i
  %q.0.i = phi i32 [ 255, %if.end17.i ], [ %dec.i, %for.cond.i.backedge ]
  %maxholdq.0.i = phi i32 [ %retval.0.i129.i, %if.end17.i ], [ %maxholdq.0.i.be, %for.cond.i.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %maxholdq.0.i)
  %tobool19.not.i = icmp sgt i32 %maxholdq.0.i, -1
  br i1 %tobool19.not.i, label %for.cond.i.if.end48.i_crit_edge, label %if.then20.i

for.cond.i.if.end48.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then20.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %q.0.i)
  %cmp.i = icmp slt i32 %q.0.i, 128
  br i1 %cmp.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.then20.i
  %64 = ptrtoint ptr %rx_overrun_pf.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %rx_overrun_pf.i, align 16
  %inc.i = add i64 %65, 1
  store i64 %inc.i, ptr %rx_overrun_pf.i, align 16
  %66 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %hw1, align 8
  %tobool29.not.i = icmp eq ptr %67, null
  br i1 %tobool29.not.i, label %if.then21.i.if.end48.i_crit_edge, label %do.body39.i, !prof !235

if.then21.i.if.end48.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

do.body39.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !283
  call void @arm_heavy_mb() #8
  %mul.i = shl i32 %q.0.i, 6
  %add.i83 = add i32 %mul.i, 16391
  %arrayidx42.i = getelementptr i32, ptr %67, i32 %add.i83
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx42.i, i32 16777216) #8, !srcloc !240
  br label %if.end48.i

if.else.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %rx_overrun_vf.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %rx_overrun_vf.i, align 8
  %inc46.i = add i64 %69, 1
  store i64 %inc46.i, ptr %rx_overrun_vf.i, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else.i, %do.body39.i, %if.then21.i.if.end48.i_crit_edge, %for.cond.i.if.end48.i_crit_edge
  %mul49.i = shl i32 %maxholdq.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul49.i)
  %tobool50.not.i = icmp eq i32 %mul49.i, 0
  %and52.i = and i32 %q.0.i, -32
  %spec.select.i = select i1 %tobool50.not.i, i32 %and52.i, i32 %q.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool54.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool54.not.i, label %if.end48.i.fm10k_reset_drop_on_empty.exit_crit_edge, label %if.end56.i

if.end48.i.fm10k_reset_drop_on_empty.exit_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_reset_drop_on_empty.exit

if.end56.i:                                       ; preds = %if.end48.i
  %dec.i = add i32 %spec.select.i, -1
  %70 = and i32 %spec.select.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool57.not.i = icmp eq i32 %70, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %if.end56.i.for.cond.i.backedge_crit_edge

if.end56.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.backedge

if.end59.i:                                       ; preds = %if.end56.i
  %div.i = sdiv i32 %dec.i, 32
  %add60.i = add nsw i32 %div.i, 32
  %71 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i115.i = icmp eq ptr %72, null
  br i1 %tobool.not.i115.i, label %if.end59.i.do.body64.i_crit_edge, label %if.end.i118.i, !prof !235

if.end59.i.do.body64.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64.i

if.end.i118.i:                                    ; preds = %if.end59.i
  %arrayidx.i116.i = getelementptr i32, ptr %72, i32 %add60.i
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i116.i) #8, !srcloc !236
  %74 = call i32 @llvm.bswap.i32(i32 %73) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  %75 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %73, label %if.end.i118.i.do.body64.i_crit_edge [
    i32 -1, label %land.lhs.true.i119.i
    i32 0, label %if.end.i118.i.for.cond.i.backedge_crit_edge
  ]

if.end.i118.i.for.cond.i.backedge_crit_edge:      ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.backedge

if.end.i118.i.do.body64.i_crit_edge:              ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64.i

land.lhs.true.i119.i:                             ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add60.i)
  %tobool9.not.i.i = icmp eq i32 %add60.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true.i119.i.if.then17.i123.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i119.i.if.then17.i123.i_crit_edge:  ; preds = %land.lhs.true.i119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i123.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i119.i
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %72) #8, !srcloc !236
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %tobool16.not.i120.i = icmp eq i32 %76, -1
  br i1 %tobool16.not.i120.i, label %lor.lhs.false.i.i.if.then17.i123.i_crit_edge, label %lor.lhs.false.i.i.do.body64.i_crit_edge

lor.lhs.false.i.i.do.body64.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64.i

lor.lhs.false.i.i.if.then17.i123.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i123.i

if.then17.i123.i:                                 ; preds = %lor.lhs.false.i.i.if.then17.i123.i_crit_edge, %land.lhs.true.i119.i.if.then17.i123.i_crit_edge
  %77 = ptrtoint ptr %back.i121.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %back.i121.i, align 4
  %netdev18.i122.i = getelementptr inbounds %struct.fm10k_intfc, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %netdev18.i122.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %netdev18.i122.i, align 128
  %81 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %hw1, align 8
  call void @netif_device_detach(ptr noundef %80) #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str) #11
  br label %do.body64.i

do.body64.i:                                      ; preds = %if.then17.i123.i, %lor.lhs.false.i.i.do.body64.i_crit_edge, %if.end.i118.i.do.body64.i_crit_edge, %if.end59.i.do.body64.i_crit_edge
  %retval.0.i124132.i = phi i32 [ -1, %if.end59.i.do.body64.i_crit_edge ], [ %74, %if.end.i118.i.do.body64.i_crit_edge ], [ %74, %lor.lhs.false.i.i.do.body64.i_crit_edge ], [ %74, %if.then17.i123.i ]
  %82 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %hw1, align 8
  %tobool71.not.i = icmp eq ptr %83, null
  br i1 %tobool71.not.i, label %do.body64.i.for.cond.i.backedge_crit_edge, label %do.body81.i, !prof !235

do.body64.i.for.cond.i.backedge_crit_edge:        ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.backedge

do.body81.i:                                      ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !284
  call void @arm_heavy_mb() #8
  %84 = call i32 @llvm.bswap.i32(i32 %retval.0.i124132.i) #8
  %arrayidx86.i = getelementptr i32, ptr %83, i32 %add60.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx86.i, i32 %84) #8, !srcloc !240
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %do.body81.i, %do.body64.i.for.cond.i.backedge_crit_edge, %if.end.i118.i.for.cond.i.backedge_crit_edge, %if.end56.i.for.cond.i.backedge_crit_edge
  %maxholdq.0.i.be = phi i32 [ %retval.0.i124132.i, %do.body81.i ], [ %retval.0.i124132.i, %do.body64.i.for.cond.i.backedge_crit_edge ], [ %73, %if.end.i118.i.for.cond.i.backedge_crit_edge ], [ %mul49.i, %if.end56.i.for.cond.i.backedge_crit_edge ]
  br label %for.cond.i

fm10k_reset_drop_on_empty.exit:                   ; preds = %if.end48.i.fm10k_reset_drop_on_empty.exit_crit_edge, %fm10k_report_fault.exit.fm10k_reset_drop_on_empty.exit_crit_edge
  %mbx_lock.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 42
  %call.i.i84 = call i32 @_raw_spin_trylock(ptr noundef %mbx_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %tobool14.not = icmp eq i32 %call.i.i84, 0
  br i1 %tobool14.not, label %fm10k_reset_drop_on_empty.exit.if.end20_crit_edge, label %if.then15

fm10k_reset_drop_on_empty.exit.if.end20_crit_edge: ; preds = %fm10k_reset_drop_on_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %fm10k_reset_drop_on_empty.exit
  %process = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 6, i32 0, i32 6
  %85 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %process, align 8
  %call16 = call i32 %86(ptr noundef %hw1, ptr noundef %mbx2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call16)
  %cmp = icmp eq i32 %call16, -5
  br i1 %cmp, label %if.then17, label %if.then15.if.end18_crit_edge

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 5
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then15.if.end18_crit_edge
  %call19 = call i32 @fm10k_iov_event(ptr noundef %data) #8
  call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #8
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %fm10k_reset_drop_on_empty.exit.if.end20_crit_edge
  %and21 = and i32 %retval.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %87, 400
  %link_down_event = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 53
  %88 = ptrtoint ptr %link_down_event to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add, ptr %link_down_event, align 4
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 4
  call void @_set_bit(i32 noundef 10, ptr noundef %state) #8
  %dglort_map = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 2, i32 10
  %89 = ptrtoint ptr %dglort_map to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 65535, ptr %dglort_map, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %get_host_state = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 2, i32 8
  %90 = ptrtoint ptr %get_host_state to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %get_host_state, align 1
  %state.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 4
  %91 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %state.i, align 4
  %93 = and i32 %92, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i86 = icmp eq i32 %93, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i88, label %if.end25.if.else.i90_crit_edge

if.end25.if.else.i90_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i90

land.lhs.true.i88:                                ; preds = %if.end25
  %call3.i = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i87 = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i87, label %if.then.i, label %land.lhs.true.i88.if.else.i90_crit_edge

land.lhs.true.i88.if.else.i90_crit_edge:          ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i90

if.then.i:                                        ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 5, ptr noundef %state.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %94 = load ptr, ptr @fm10k_workqueue, align 4
  %service_task.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 49
  %call.i.i89 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %94, ptr noundef %service_task.i) #8
  br label %fm10k_service_event_schedule.exit

if.else.i90:                                      ; preds = %land.lhs.true.i88.if.else.i90_crit_edge, %if.end25.if.else.i90_crit_edge
  call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #8
  br label %fm10k_service_event_schedule.exit

fm10k_service_event_schedule.exit:                ; preds = %if.else.i90, %if.then.i
  %95 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %hw1, align 8
  %tobool34.not = icmp eq ptr %96, null
  br i1 %tobool34.not, label %fm10k_service_event_schedule.exit.if.end49_crit_edge, label %do.body44, !prof !235

fm10k_service_event_schedule.exit.if.end49_crit_edge: ; preds = %fm10k_service_event_schedule.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.body44:                                        ; preds = %fm10k_service_event_schedule.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !285
  call void @arm_heavy_mb() #8
  %itr_scale = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 2, i32 11
  %97 = ptrtoint ptr %itr_scale to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %itr_scale, align 4
  %conv = zext i8 %98 to i32
  %shr = lshr i32 20, %conv
  %or = or i32 %shr, -1610612736
  %99 = call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx48 = getelementptr i32, ptr %96, i32 74752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx48, i32 %99) #8, !srcloc !240
  br label %if.end49

if.end49:                                         ; preds = %do.body44, %fm10k_service_event_schedule.exit.if.end49_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_msg_err_pf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_lport_map(ptr noundef %hw, ptr noundef %results, ptr noundef %mbx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dglort_map1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %0 = ptrtoint ptr %dglort_map1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dglort_map1, align 8
  %call = tail call i32 @fm10k_msg_err_pf(ptr noundef %hw, ptr noundef %results, ptr noundef %mbx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %swapi = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %swapi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swapi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end19_crit_edge, label %if.then

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 200
  %link_down_event = getelementptr i8, ptr %hw, i32 3140
  %5 = ptrtoint ptr %link_down_event to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %link_down_event, align 4
  %state = getelementptr i8, ptr %hw, i32 -12724
  tail call void @_set_bit(i32 noundef 10, ptr noundef %state) #8
  %6 = ptrtoint ptr %dglort_map1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65535, ptr %dglort_map1, align 8
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.if.else.i_crit_edge

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %10 = load ptr, ptr @fm10k_workqueue, align 4
  %service_task.i = getelementptr i8, ptr %hw, i32 3084
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %service_task.i) #8
  br label %fm10k_service_event_schedule.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #8
  br label %fm10k_service_event_schedule.exit

fm10k_service_event_schedule.exit:                ; preds = %if.else.i, %if.then.i
  %lport_map_failed = getelementptr i8, ptr %hw, i32 3145
  %11 = ptrtoint ptr %lport_map_failed to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lport_map_failed, align 1, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %if.end, label %fm10k_service_event_schedule.exit.cleanup_crit_edge

fm10k_service_event_schedule.exit.cleanup_crit_edge: ; preds = %fm10k_service_event_schedule.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %fm10k_service_event_schedule.exit
  %13 = ptrtoint ptr %lport_map_failed to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %lport_map_failed, align 1
  %14 = ptrtoint ptr %swapi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %swapi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %15)
  %cmp = icmp eq i32 %15, 280
  br i1 %cmp, label %do.end, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr i8, ptr %hw, i32 -12728
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.end.do.end14_crit_edge
  %pdev15 = getelementptr i8, ptr %hw, i32 -12728
  %18 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %swapi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %swapi, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16, ptr noundef nonnull @.str.22, i32 noundef %21) #11
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  %call20 = tail call i32 @fm10k_msg_lport_map_pf(ptr noundef %hw, ptr noundef %results, ptr noundef %mbx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %lport_map_failed24 = getelementptr i8, ptr %hw, i32 3145
  %22 = ptrtoint ptr %lport_map_failed24 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %lport_map_failed24, align 1
  %23 = ptrtoint ptr %dglort_map1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dglort_map1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %24)
  %cmp27.not = icmp eq i32 %1, %24
  br i1 %cmp27.not, label %if.end23.cleanup_crit_edge, label %if.then28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr i8, ptr %hw, i32 -12720
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end14, %fm10k_service_event_schedule.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end14 ], [ 0, %fm10k_service_event_schedule.exit.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_pvid(ptr noundef %hw, ptr nocapture noundef readonly %results, ptr nocapture noundef readnone %mbx) #0 align 64 {
entry:
  %pvid_update = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pvid_update) #8
  %0 = ptrtoint ptr %pvid_update to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pvid_update, align 4, !annotation !287
  %arrayidx = getelementptr ptr, ptr %results, i32 13
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @fm10k_tlv_attr_get_value(ptr noundef %2, ptr noundef nonnull %pvid_update, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pvid_update to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pvid_update, align 4
  %conv2 = trunc i32 %4 to i16
  %shr3 = lshr i32 %4, 16
  %conv7 = trunc i32 %shr3 to i16
  %call8 = call zeroext i1 @fm10k_glort_valid_pf(ptr noundef %hw, i16 noundef zeroext %conv2) #8
  %call8.not = xor i1 %call8, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %4)
  %cmp = icmp ugt i32 %4, 268435455
  %or.cond = select i1 %call8.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %hw, i32 -13248
  %call15 = call i32 @fm10k_iov_update_pvid(ptr noundef %add.ptr, i16 noundef zeroext %conv2, i16 noundef zeroext %conv7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %default_vid = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %default_vid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %default_vid, align 4
  %conv20 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr3, i32 %conv20)
  %cmp21.not = icmp eq i32 %shr3, %conv20
  br i1 %cmp21.not, label %if.end18.if.end24_crit_edge, label %if.then23

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr i8, ptr %hw, i32 -12720
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end18.if.end24_crit_edge
  %7 = ptrtoint ptr %default_vid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv7, ptr %default_vid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %call, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pvid_update) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_mbx_error(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %results, ptr nocapture noundef readnone %mbx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr i8, ptr %hw, i32 -12728
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %results to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %results, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %and) #11
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_msg_lport_map_pf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_get_value(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fm10k_glort_valid_pf(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_iov_update_pvid(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_iov_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_msix_mbx_vf(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41
  %mbx2 = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body8, !prof !235

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  tail call void @arm_heavy_mb() #8
  %itr_scale = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 2, i32 11
  %2 = ptrtoint ptr %itr_scale to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %itr_scale, align 4
  %conv = zext i8 %3 to i32
  %shr = lshr i32 20, %conv
  %or = or i32 %shr, -1610612736
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i32, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #8, !srcloc !240
  br label %if.end

if.end:                                           ; preds = %do.body8, %entry.if.end_crit_edge
  %mbx_lock.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 42
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %mbx_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not, label %if.end.if.end16_crit_edge, label %if.then14

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %process = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 6, i32 0, i32 6
  %5 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %process, align 8
  %call15 = tail call i32 %6(ptr noundef %hw1, ptr noundef %mbx2) #8
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  %get_host_state = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 41, i32 2, i32 8
  %7 = ptrtoint ptr %get_host_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %get_host_state, align 1
  %state.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end16.if.else.i_crit_edge

if.end16.if.else.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end16
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %11 = load ptr, ptr @fm10k_workqueue, align 4
  %service_task.i = getelementptr inbounds %struct.fm10k_intfc, ptr %data, i32 0, i32 49
  %call.i.i28 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %service_task.i) #8
  br label %fm10k_service_event_schedule.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end16.if.else.i_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #8
  br label %fm10k_service_event_schedule.exit

fm10k_service_event_schedule.exit:                ; preds = %if.else.i, %if.then.i
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_msg_test(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_mbx_mac_addr(ptr noundef %hw, ptr noundef %results, ptr noundef %mbx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_override1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 7
  %0 = ptrtoint ptr %vlan_override1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vlan_override1, align 2, !range !286
  %default_vid3 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %default_vid3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %default_vid3, align 4
  %call = tail call i32 @fm10k_msg_mac_vlan_vf(ptr noundef %hw, ptr noundef %results, ptr noundef %mbx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %perm_addr = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %perm_addr, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end15_crit_edge, label %land.lhs.true

is_valid_ether_addr.exit.if.end15_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %is_valid_ether_addr.exit
  %addr = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %10, %5
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 2, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %14, %12
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end15_crit_edge, label %if.then13

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr i8, ptr %hw, i32 -12720
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge, %is_valid_ether_addr.exit.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %15 = ptrtoint ptr %vlan_override1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vlan_override1, align 2, !range !286
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %16)
  %cmp.not = icmp eq i8 %1, %16
  br i1 %cmp.not, label %lor.lhs.false, label %if.end15.if.then28_crit_edge

if.end15.if.then28_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end15
  %17 = ptrtoint ptr %default_vid3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %default_vid3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %18)
  %cmp26.not = icmp eq i16 %3, %18
  br i1 %cmp26.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %if.end15.if.then28_crit_edge
  %flags29 = getelementptr i8, ptr %hw, i32 -12720
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags29) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_msg_lport_state_vf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_msg_mac_vlan_vf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_xps_queue(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_alloc_rx_buffers(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  %rss_key.i = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %error_state = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 43
  %0 = ptrtoint ptr %error_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool.not, label %if.end6, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.58, i32 noundef %call) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev7, i64 noundef 281474976710655) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end6.if.end20_crit_edge, label %if.then10

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then10:                                        ; preds = %if.end6
  %call.i192 = tail call i32 @dma_set_mask(ptr noundef %dev7, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %cmp.i193 = icmp eq i32 %call.i192, 0
  br i1 %cmp.i193, label %if.then10.if.end20_crit_edge, label %do.end18

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end18:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.61, i32 noundef %call.i192) #11
  br label %err_dma

if.end20:                                         ; preds = %if.then10.if.end20_crit_edge, %if.end6.if.end20_crit_edge
  %.sink = phi i64 [ 281474976710655, %if.end6.if.end20_crit_edge ], [ 4294967295, %if.then10.if.end20_crit_edge ]
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev7, i64 noundef %.sink) #8
  %call.i197 = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #8
  %call1.i198 = tail call i32 @pci_request_selected_regions(ptr noundef %pdev, i32 noundef %call.i197, ptr noundef nonnull @fm10k_driver_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i198)
  %tobool22.not = icmp eq i32 %call1.i198, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.64, i32 noundef %call1.i198) #11
  br label %err_dma

if.end28:                                         ; preds = %if.end20
  %call29 = tail call i32 @pci_enable_pcie_error_reporting(ptr noundef %pdev) #8
  tail call void @pci_set_master(ptr noundef %pdev) #8
  %call30 = tail call i32 @pci_save_state(ptr noundef %pdev) #8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @fm10k_info_tbl, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call31 = tail call ptr @fm10k_alloc_netdev(ptr noundef %5) #8
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end28.err_alloc_netdev_crit_edge, label %if.end34

if.end28.err_alloc_netdev_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_alloc_netdev

if.end34:                                         ; preds = %if.end28
  %parent = getelementptr inbounds %struct.net_device, ptr %call31, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev7, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call31, i32 2304
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %netdev38 = getelementptr i8, ptr %call31, i32 2816
  %8 = ptrtoint ptr %netdev38 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %netdev38, align 128
  %pdev39 = getelementptr i8, ptr %call31, i32 2824
  %9 = ptrtoint ptr %pdev39 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %pdev39, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource, align 8
  %call41 = tail call ptr @ioremap(i32 noundef %11, i32 noundef 1048576) #8
  %uc_addr = getelementptr i8, ptr %call31, i32 18572
  %12 = ptrtoint ptr %uc_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call41, ptr %uc_addr, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.end34.err_ioremap_crit_edge, label %if.end45

if.end34.err_ioremap_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ioremap

if.end45:                                         ; preds = %if.end34
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_data, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @fm10k_info_tbl, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %hw1.i = getelementptr i8, ptr %call31, i32 15552
  %17 = ptrtoint ptr %pdev39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev39, align 8
  %19 = ptrtoint ptr %netdev38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev38, align 128
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rss_key.i) #8
  %21 = call ptr @memset(ptr %rss_key.i, i32 255, i32 40)
  %back.i = getelementptr i8, ptr %call31, i32 15556
  %22 = ptrtoint ptr %back.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %back.i, align 4
  %23 = ptrtoint ptr %uc_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %uc_addr, align 4
  %25 = ptrtoint ptr %hw1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %hw1.i, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 7
  %26 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vendor.i, align 8
  %vendor_id.i = getelementptr i8, ptr %call31, i32 18518
  %28 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vendor_id.i, align 2
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %29 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %device.i, align 2
  %device_id.i = getelementptr i8, ptr %call31, i32 18516
  %31 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %device_id.i, align 4
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 12
  %32 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %revision.i, align 4
  %revision_id.i = getelementptr i8, ptr %call31, i32 18524
  %34 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %revision_id.i, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 9
  %35 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %subsystem_vendor.i, align 4
  %subsystem_vendor_id.i = getelementptr i8, ptr %call31, i32 18522
  %37 = ptrtoint ptr %subsystem_vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %subsystem_vendor_id.i, align 2
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 10
  %38 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %subsystem_device.i, align 2
  %subsystem_device_id.i = getelementptr i8, ptr %call31, i32 18520
  %40 = ptrtoint ptr %subsystem_device_id.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %subsystem_device_id.i, align 8
  %mac.i = getelementptr i8, ptr %call31, i32 15560
  %mac_ops.i = getelementptr inbounds %struct.fm10k_info, ptr %16, i32 0, i32 2
  %41 = ptrtoint ptr %mac_ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mac_ops.i, align 4
  %43 = call ptr @memcpy(ptr %mac.i, ptr %42, i32 76)
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %16, align 4
  %type.i = getelementptr i8, ptr %call31, i32 15636
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %type.i, align 4
  %iov_ops.i = getelementptr inbounds %struct.fm10k_info, ptr %16, i32 0, i32 3
  %47 = ptrtoint ptr %iov_ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iov_ops.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.end45.if.end.i_crit_edge, label %if.then.i199

if.end45.if.end.i_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i199:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %iov.i = getelementptr i8, ptr %call31, i32 15704
  %49 = call ptr @memcpy(ptr %iov.i, ptr %48, i32 32)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i199, %if.end45.if.end.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %50 = load volatile i32, ptr @__num_online_cpus, align 4
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 128) #8
  %52 = trunc i32 %51 to i16
  %ring_feature.i = getelementptr i8, ptr %call31, i32 5164
  %53 = ptrtoint ptr %ring_feature.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %ring_feature.i, align 4
  %get_invariants.i = getelementptr inbounds %struct.fm10k_info, ptr %16, i32 0, i32 1
  %54 = ptrtoint ptr %get_invariants.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_invariants.i, align 4
  %call9.i = tail call i32 %55(ptr noundef %hw1.i) #8
  %get_bus_info.i = getelementptr i8, ptr %call31, i32 15576
  %56 = ptrtoint ptr %get_bus_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_bus_info.i, align 8
  %tobool12.not.i = icmp eq ptr %57, null
  br i1 %tobool12.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then13.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = tail call i32 %57(ptr noundef %hw1.i) #8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.end.i.if.end18.i_crit_edge
  %set_dma_mask.i = getelementptr i8, ptr %call31, i32 15628
  %58 = ptrtoint ptr %set_dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_dma_mask.i, align 4
  %tobool21.not.i = icmp eq ptr %59, null
  br i1 %tobool21.not.i, label %if.end18.i.if.end27.i_crit_edge, label %if.then22.i

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.end18.i
  %dma_mask.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 18
  %60 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_mask.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %if.then22.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then22.i.if.end.i.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then22.i
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %61, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool2.not.i.i = icmp eq i64 %63, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.dma_get_mask.exit.i_crit_edge

land.lhs.true.i.i.dma_get_mask.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_get_mask.exit.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then22.i.if.end.i.i_crit_edge
  br label %dma_get_mask.exit.i

dma_get_mask.exit.i:                              ; preds = %if.end.i.i, %land.lhs.true.i.i.dma_get_mask.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ 4294967295, %if.end.i.i ], [ %63, %land.lhs.true.i.i.dma_get_mask.exit.i_crit_edge ]
  tail call void %59(ptr noundef %hw1.i, i64 noundef %retval.0.i.i) #8
  br label %if.end27.i

if.end27.i:                                       ; preds = %dma_get_mask.exit.i, %if.end18.i.if.end27.i_crit_edge
  %dev28.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %dma_mask.i181.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 18
  %64 = ptrtoint ptr %dma_mask.i181.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_mask.i181.i, align 8
  %tobool.not.i182.i = icmp eq ptr %65, null
  br i1 %tobool.not.i182.i, label %if.end27.i.if.end34.i_crit_edge, label %land.lhs.true.i184.i

if.end27.i.if.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i184.i:                             ; preds = %if.end27.i
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %65, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %67)
  %cmp30.i = icmp ugt i64 %67, 4294967295
  br i1 %cmp30.i, label %if.then32.i, label %land.lhs.true.i184.i.if.end34.i_crit_edge

land.lhs.true.i184.i.if.end34.i_crit_edge:        ; preds = %land.lhs.true.i184.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then32.i:                                      ; preds = %land.lhs.true.i184.i
  call void @__sanitizer_cov_trace_pc() #10
  %features.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 23
  %68 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %features.i, align 16
  %or.i = or i64 %69, 32
  store i64 %or.i, ptr %features.i, align 16
  %vlan_features.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 26
  %70 = ptrtoint ptr %vlan_features.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %vlan_features.i, align 8
  %or33.i = or i64 %71, 32
  store i64 %or33.i, ptr %vlan_features.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %land.lhs.true.i184.i.if.end34.i_crit_edge, %if.end27.i.if.end34.i_crit_edge
  %72 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mac.i, align 8
  %call37.i = tail call i32 %73(ptr noundef %hw1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end41.i, label %do.end.i

do.end.i:                                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.77, i32 noundef %call37.i) #11
  br label %fm10k_sw_init.exit.thread

if.end41.i:                                       ; preds = %if.end34.i
  %init_hw.i = getelementptr i8, ptr %call31, i32 15564
  %74 = ptrtoint ptr %init_hw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_hw.i, align 4
  %call44.i = tail call i32 %75(ptr noundef %hw1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end51.i, label %do.end49.i

do.end49.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.80, i32 noundef %call44.i) #11
  br label %fm10k_sw_init.exit.thread

if.end51.i:                                       ; preds = %if.end41.i
  %update_hw_stats.i = getelementptr i8, ptr %call31, i32 15616
  %76 = ptrtoint ptr %update_hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %update_hw_stats.i, align 8
  %stats.i = getelementptr i8, ptr %call31, i32 5184
  tail call void %77(ptr noundef %hw1.i, ptr noundef %stats.i) #8
  %total_vfs.i = getelementptr i8, ptr %call31, i32 15736
  %78 = ptrtoint ptr %total_vfs.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %total_vfs.i, align 8
  %call55.i = tail call i32 @pci_sriov_set_totalvfs(ptr noundef %18, i16 noundef zeroext %79) #8
  %addr.i = getelementptr i8, ptr %call31, i32 15640
  tail call void @get_random_bytes(ptr noundef %addr.i, i32 noundef 6) #8
  %80 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %addr.i, align 1
  %82 = and i8 %81, -4
  %83 = or i8 %82, 2
  store i8 %83, ptr %addr.i, align 1
  %read_mac_addr.i = getelementptr i8, ptr %call31, i32 15592
  %84 = ptrtoint ptr %read_mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read_mac_addr.i, align 8
  %call59.i = tail call i32 %85(ptr noundef %hw1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end51.i.if.end69.i_crit_edge, label %do.end64.i

if.end51.i.if.end69.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

do.end64.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev28.i, ptr noundef nonnull @.str.83) #11
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 55
  %86 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %addr_assign_type.i, align 4
  %88 = or i8 %87, 1
  store i8 %88, ptr %addr_assign_type.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %do.end64.i, %if.end51.i.if.end69.i_crit_edge
  tail call void @dev_addr_mod(ptr noundef %20, i32 noundef 0, ptr noundef %addr.i, i32 noundef 6) #8
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 54
  %89 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %addr.i, align 4
  %91 = ptrtoint ptr %perm_addr.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %perm_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call31, i32 15644
  %92 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.net_device, ptr %20, i32 0, i32 54, i32 4
  %94 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %add.ptr1.i.i, align 2
  %95 = and i32 %90, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.i.not.i.i = icmp eq i32 %95, 0
  %conv.i.i.i = zext i16 %93 to i32
  %or.i.i.i = or i32 %90, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp ne i32 %or.i.i.i, 0
  %or.cond190.i = select i1 %tobool.i.not.i.i, i1 %cmp.i.i.i, i1 false
  br i1 %or.cond190.i, label %if.end49, label %do.end83.i

do.end83.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.86) #11
  br label %fm10k_sw_init.exit.thread

fm10k_sw_init.exit.thread:                        ; preds = %do.end83.i, %do.end49.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -5, %do.end83.i ], [ %call44.i, %do.end49.i ], [ %call37.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rss_key.i) #8
  br label %err_sw_init

if.end49:                                         ; preds = %if.end69.i
  tail call void @fm10k_dcbnl_set_ops(ptr noundef %20) #8
  %tx_ring_count.i = getelementptr i8, ptr %call31, i32 18582
  %96 = ptrtoint ptr %tx_ring_count.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 256, ptr %tx_ring_count.i, align 2
  %rx_ring_count.i = getelementptr i8, ptr %call31, i32 18584
  %97 = ptrtoint ptr %rx_ring_count.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 256, ptr %rx_ring_count.i, align 8
  %tx_itr.i = getelementptr i8, ptr %call31, i32 2844
  %98 = ptrtoint ptr %tx_itr.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 25, ptr %tx_itr.i, align 4
  %rx_itr.i = getelementptr i8, ptr %call31, i32 2852
  %99 = ptrtoint ptr %rx_itr.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 -32718, ptr %rx_itr.i, align 4
  %macvlan_requests.i = getelementptr i8, ptr %call31, i32 18872
  %100 = ptrtoint ptr %macvlan_requests.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %macvlan_requests.i, ptr %macvlan_requests.i, align 4
  %prev.i.i = getelementptr i8, ptr %call31, i32 18876
  %101 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %macvlan_requests.i, ptr %prev.i.i, align 4
  call void @netdev_rss_key_fill(ptr noundef nonnull %rss_key.i, i32 noundef 40) #8
  %rssrk.i = getelementptr i8, ptr %call31, i32 18828
  %102 = call ptr @memcpy(ptr %rssrk.i, ptr %rss_key.i, i32 40)
  %mbx_lock.i = getelementptr i8, ptr %call31, i32 18528
  call void @__raw_spin_lock_init(ptr noundef %mbx_lock.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @fm10k_sw_init.__key, i16 noundef signext 3) #8
  %macvlan_lock.i = getelementptr i8, ptr %call31, i32 18980
  call void @__raw_spin_lock_init(ptr noundef %macvlan_lock.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @fm10k_sw_init.__key.89, i16 noundef signext 3) #8
  %state.i = getelementptr i8, ptr %call31, i32 2828
  call void @_set_bit(i32 noundef 3, ptr noundef %state.i) #8
  call void @_set_bit(i32 noundef 11, ptr noundef %state.i) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rss_key.i) #8
  call void @fm10k_dbg_intfc_init(ptr noundef %add.ptr.i) #8
  %call50 = call i32 @fm10k_init_queueing_scheme(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.err_sw_init_crit_edge

if.end49.err_sw_init_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_sw_init

if.end53:                                         ; preds = %if.end49
  call void @_set_bit(i32 noundef 6, ptr noundef %state.i) #8
  %call54 = call i32 @fm10k_mbx_request_irq(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.err_mbx_interrupt_crit_edge

if.end53.err_mbx_interrupt_crit_edge:             ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mbx_interrupt

if.end57:                                         ; preds = %if.end53
  %call58 = call fastcc i32 @fm10k_hw_ready(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.err_register_crit_edge

if.end57.err_register_crit_edge:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_register

if.end61:                                         ; preds = %if.end57
  %call62 = call i32 @register_netdev(ptr noundef nonnull %call31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.err_register_crit_edge

if.end61.err_register_crit_edge:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_register

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  call void @netif_carrier_off(ptr noundef nonnull %call31) #8
  call void @netif_tx_stop_all_queues(ptr noundef nonnull %call31) #8
  %service_timer = getelementptr i8, ptr %call31, i32 18588
  call void @init_timer_key(ptr noundef %service_timer, ptr noundef nonnull @fm10k_service_timer, i32 noundef 0, ptr noundef nonnull @.str.66, ptr noundef nonnull @fm10k_probe.__key) #8
  %service_task = getelementptr i8, ptr %call31, i32 18636
  call void @__init_work(ptr noundef %service_task, i32 noundef 0) #8
  %103 = ptrtoint ptr %service_task to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -64, ptr %service_task, align 4
  %lockdep_map = getelementptr i8, ptr %call31, i32 18652
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.68, ptr noundef nonnull @fm10k_probe.__key.67, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry73 = getelementptr i8, ptr %call31, i32 18640
  %104 = ptrtoint ptr %entry73 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %entry73, ptr %entry73, align 4
  %prev.i = getelementptr i8, ptr %call31, i32 18644
  %105 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %entry73, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call31, i32 18648
  %106 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @fm10k_service_task, ptr %func, align 4
  %macvlan_task = getelementptr i8, ptr %call31, i32 18880
  call void @__init_work(ptr noundef %macvlan_task, i32 noundef 0) #8
  %107 = ptrtoint ptr %macvlan_task to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -64, ptr %macvlan_task, align 64
  %lockdep_map86 = getelementptr i8, ptr %call31, i32 18896
  call void @lockdep_init_map_type(ptr noundef %lockdep_map86, ptr noundef nonnull @.str.70, ptr noundef nonnull @fm10k_probe.__key.69, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry89 = getelementptr i8, ptr %call31, i32 18884
  %108 = ptrtoint ptr %entry89 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %entry89, ptr %entry89, align 4
  %prev.i200 = getelementptr i8, ptr %call31, i32 18888
  %109 = ptrtoint ptr %prev.i200 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %entry89, ptr %prev.i200, align 4
  %func92 = getelementptr i8, ptr %call31, i32 18892
  %110 = ptrtoint ptr %func92 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @fm10k_macvlan_task, ptr %func92, align 4
  %timer = getelementptr i8, ptr %call31, i32 18924
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.72, ptr noundef nonnull @fm10k_probe.__key.71) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %111 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %111, 200
  %call102 = call i32 @mod_timer(ptr noundef %service_timer, i32 noundef %add) #8
  %112 = ptrtoint ptr %pdev39 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev39, align 8
  call void @pcie_print_link_status(ptr noundef %113) #8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call31, i32 0, i32 86
  %114 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.74, ptr noundef %115) #11
  %call108 = call i32 @fm10k_iov_configure(ptr noundef %pdev, i32 noundef 0) #8
  call void @_clear_bit(i32 noundef 6, ptr noundef %state.i) #8
  call void @fm10k_service_event_schedule(ptr noundef %add.ptr.i)
  br label %cleanup

err_register:                                     ; preds = %if.end61.err_register_crit_edge, %if.end57.err_register_crit_edge
  %err.1 = phi i32 [ %call58, %if.end57.err_register_crit_edge ], [ %call62, %if.end61.err_register_crit_edge ]
  call void @fm10k_mbx_free_irq(ptr noundef %add.ptr.i)
  br label %err_mbx_interrupt

err_mbx_interrupt:                                ; preds = %err_register, %if.end53.err_mbx_interrupt_crit_edge
  %err.2 = phi i32 [ %call54, %if.end53.err_mbx_interrupt_crit_edge ], [ %err.1, %err_register ]
  call void @fm10k_clear_queueing_scheme(ptr noundef %add.ptr.i) #8
  br label %err_sw_init

err_sw_init:                                      ; preds = %err_mbx_interrupt, %if.end49.err_sw_init_crit_edge, %fm10k_sw_init.exit.thread
  %err.3 = phi i32 [ %call50, %if.end49.err_sw_init_crit_edge ], [ %err.2, %err_mbx_interrupt ], [ %retval.0.i.ph, %fm10k_sw_init.exit.thread ]
  %sw_addr = getelementptr i8, ptr %call31, i32 18576
  %116 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sw_addr, align 16
  %tobool111.not = icmp eq ptr %117, null
  br i1 %tobool111.not, label %err_sw_init.if.end114_crit_edge, label %if.then112

err_sw_init.if.end114_crit_edge:                  ; preds = %err_sw_init
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then112:                                       ; preds = %err_sw_init
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %117) #8
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %err_sw_init.if.end114_crit_edge
  %118 = ptrtoint ptr %uc_addr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %uc_addr, align 4
  call void @iounmap(ptr noundef %119) #8
  br label %err_ioremap

err_ioremap:                                      ; preds = %if.end114, %if.end34.err_ioremap_crit_edge
  %err.4 = phi i32 [ %err.3, %if.end114 ], [ -5, %if.end34.err_ioremap_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call31) #8
  br label %err_alloc_netdev

err_alloc_netdev:                                 ; preds = %err_ioremap, %if.end28.err_alloc_netdev_crit_edge
  %err.5 = phi i32 [ %err.4, %err_ioremap ], [ -12, %if.end28.err_alloc_netdev_crit_edge ]
  %call116 = call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #8
  %call.i201 = call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #8
  call void @pci_release_selected_regions(ptr noundef %pdev, i32 noundef %call.i201) #8
  br label %err_dma

err_dma:                                          ; preds = %err_alloc_netdev, %do.end26, %do.end18
  %err.6 = phi i32 [ %call.i192, %do.end18 ], [ %call1.i198, %do.end26 ], [ %err.5, %err_alloc_netdev ]
  call void @pci_disable_device(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %err_dma, %if.end65, %do.end4, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call, %do.end4 ], [ %err.6, %err_dma ], [ 0, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev1 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 128
  %service_timer = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 48
  %call2 = tail call i32 @del_timer_sync(ptr noundef %service_timer) #8
  %state.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state.i) #8
  %service_task.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 49
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %service_task.i) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i) #8
  tail call void @_set_bit(i32 noundef 9, ptr noundef %state.i) #8
  %macvlan_task.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 61
  %call.i25 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %macvlan_task.i) #8
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state.i) #8
  %glort = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 66
  %4 = ptrtoint ptr %glort to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %glort, align 2
  tail call void @fm10k_clear_macvlan_queue(ptr noundef %1, i16 noundef zeroext %5, i1 noundef zeroext true) #8
  %reg_state = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 121
  %6 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_netdev(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @fm10k_iov_disable(ptr noundef %pdev) #8
  %hw1.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41
  %msix_entries.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 36
  %7 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msix_entries.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.fm10k_mbx_free_irq.exit_crit_edge, label %if.end.i

if.end.fm10k_mbx_free_irq.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_mbx_free_irq.exit

if.end.i:                                         ; preds = %if.end
  %mbx.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 6
  %disconnect.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 6, i32 0, i32 1
  %9 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disconnect.i, align 4
  tail call void %10(ptr noundef %hw1.i, ptr noundef %mbx.i) #8
  %type.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 2, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  br i1 %cmp.i, label %do.body.i, label %if.end.i.do.body21.i_crit_edge

if.end.i.do.body21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

do.body.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw1.i, align 8
  %tobool8.not.i = icmp eq ptr %14, null
  br i1 %tobool8.not.i, label %do.body.i.do.body21.i_crit_edge, label %do.body13.i, !prof !235

do.body.i.do.body21.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

do.body13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %arrayidx16.i = getelementptr i32, ptr %14, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.i, i32 22302977) #8, !srcloc !240
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.body13.i, %do.body.i.do.body21.i_crit_edge, %if.end.i.do.body21.i_crit_edge
  %itr_reg.0.i = phi i32 [ 74752, %do.body13.i ], [ 74752, %do.body.i.do.body21.i_crit_edge ], [ 96, %if.end.i.do.body21.i_crit_edge ]
  %15 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw1.i, align 8
  %tobool28.not.i = icmp eq ptr %16, null
  br i1 %tobool28.not.i, label %do.body21.i.if.end42.i_crit_edge, label %do.body38.i, !prof !235

do.body21.i.if.end42.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

do.body38.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  tail call void @arm_heavy_mb() #8
  %arrayidx41.i = getelementptr i32, ptr %16, i32 %itr_reg.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41.i, i32 64) #8, !srcloc !240
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.body38.i, %do.body21.i.if.end42.i_crit_edge
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  %call.i26 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %1) #8
  br label %fm10k_mbx_free_irq.exit

fm10k_mbx_free_irq.exit:                          ; preds = %if.end42.i, %if.end.fm10k_mbx_free_irq.exit_crit_edge
  tail call void @fm10k_clear_queueing_scheme(ptr noundef %1) #8
  tail call void @fm10k_dbg_intfc_exit(ptr noundef %1) #8
  %sw_addr = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 44
  %19 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw_addr, align 16
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %fm10k_mbx_free_irq.exit.if.end5_crit_edge, label %if.then3

fm10k_mbx_free_irq.exit.if.end5_crit_edge:        ; preds = %fm10k_mbx_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %fm10k_mbx_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %20) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %fm10k_mbx_free_irq.exit.if.end5_crit_edge
  %uc_addr = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 43
  %21 = ptrtoint ptr %uc_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uc_addr, align 4
  tail call void @iounmap(ptr noundef %22) #8
  tail call void @free_netdev(ptr noundef %3) #8
  %call.i27 = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #8
  tail call void @pci_release_selected_regions(ptr noundef %pdev, i32 noundef %call.i27) #8
  %call6 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_iov_configure(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fm10k_alloc_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_dbg_intfc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_init_queueing_scheme(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fm10k_hw_ready(ptr noundef %interface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw1, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fm10k_read_reg.exit_crit_edge, label %if.end.i, !prof !235

entry.fm10k_read_reg.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit

if.end.i:                                         ; preds = %entry
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool8.not.i = icmp eq i32 %2, -1
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %if.end.i.fm10k_read_reg.exit_crit_edge

if.end.i.fm10k_read_reg.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_read_reg.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %back.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 1
  %3 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back.i, align 4
  %netdev18.i = getelementptr inbounds %struct.fm10k_intfc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %netdev18.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev18.i, align 128
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %hw1, align 8
  tail call void @netif_device_detach(ptr noundef %6) #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str) #11
  br label %fm10k_read_reg.exit

fm10k_read_reg.exit:                              ; preds = %land.lhs.true.i, %if.end.i.fm10k_read_reg.exit_crit_edge, %entry.fm10k_read_reg.exit_crit_edge
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1, align 8
  %tobool.not = icmp eq ptr %9, null
  %cond = select i1 %tobool.not, i32 -19, i32 0, !prof !235
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_service_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 200
  %call = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  %state.i = getelementptr i8, ptr %t, i32 -15760
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %3 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %4 = load ptr, ptr @fm10k_workqueue, align 4
  %service_task.i = getelementptr i8, ptr %t, i32 48
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %service_task.i) #8
  br label %fm10k_service_event_schedule.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #8
  br label %fm10k_service_event_schedule.exit

fm10k_service_event_schedule.exit:                ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_service_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16332
  %netdev1.i = getelementptr i8, ptr %work, i32 -15820
  %0 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1.i, align 128
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %entry.fm10k_detach_subtask.exit_crit_edge

entry.fm10k_detach_subtask.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_detach_subtask.exit

lor.lhs.false.i:                                  ; preds = %entry
  %hw.i = getelementptr i8, ptr %work, i32 -3084
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 64
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.fm10k_detach_subtask.exit_crit_edge

lor.lhs.false.i.fm10k_detach_subtask.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_detach_subtask.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call3.i = tail call fastcc zeroext i1 @fm10k_prepare_for_reset(ptr noundef %add.ptr) #8
  br i1 %call3.i, label %if.then4.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %state.i = getelementptr i8, ptr %work, i32 -15808
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %if.end.i.do.end.i_crit_edge
  %uc_addr.i = getelementptr i8, ptr %work, i32 -64
  %7 = ptrtoint ptr %uc_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %uc_addr.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !289
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool9.not.i = icmp eq i32 %9, -1
  br i1 %tobool9.not.i, label %do.end.i.fm10k_detach_subtask.exit_crit_edge, label %if.then10.i

do.end.i.fm10k_detach_subtask.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_detach_subtask.exit

if.then10.i:                                      ; preds = %do.end.i
  %state11.i = getelementptr i8, ptr %work, i32 -15808
  %call13.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state11.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then10.i.fm10k_detach_subtask.exit_crit_edge, label %if.end16.i

if.then10.i.fm10k_detach_subtask.exit_crit_edge:  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_detach_subtask.exit

if.end16.i:                                       ; preds = %if.then10.i
  %10 = ptrtoint ptr %uc_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uc_addr.i, align 4
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %hw.i, align 64
  %call20.i = tail call fastcc i32 @fm10k_handle_reset(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end25.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.91, i32 noundef %call20.i) #11
  %13 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %hw.i, align 64
  br label %fm10k_detach_subtask.exit

if.end25.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_device_attach(ptr noundef %1) #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.92) #11
  br label %fm10k_detach_subtask.exit

fm10k_detach_subtask.exit:                        ; preds = %if.end25.i, %if.then22.i, %if.then10.i.fm10k_detach_subtask.exit_crit_edge, %do.end.i.fm10k_detach_subtask.exit_crit_edge, %lor.lhs.false.i.fm10k_detach_subtask.exit_crit_edge, %entry.fm10k_detach_subtask.exit_crit_edge
  %state.i6 = getelementptr i8, ptr %work, i32 -15808
  %14 = ptrtoint ptr %state.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i6, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i7 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i7, label %if.end.i8, label %fm10k_detach_subtask.exit.fm10k_mbx_subtask.exit_crit_edge

fm10k_detach_subtask.exit.fm10k_mbx_subtask.exit_crit_edge: ; preds = %fm10k_detach_subtask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_mbx_subtask.exit

if.end.i8:                                        ; preds = %fm10k_detach_subtask.exit
  %hw1.i.i = getelementptr i8, ptr %work, i32 -3084
  %16 = ptrtoint ptr %state.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i6, align 4
  %18 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i8.if.end5.i.i_crit_edge, label %if.then.i.i

if.end.i8.if.end5.i.i_crit_edge:                  ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.end.i8
  %host_ready.i.i = getelementptr i8, ptr %work, i32 60
  %19 = ptrtoint ptr %host_ready.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %host_ready.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %link_down_event.i.i = getelementptr i8, ptr %work, i32 56
  %21 = ptrtoint ptr %link_down_event.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link_down_event.i.i, align 4
  %sub.i.i = sub i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i.fm10k_watchdog_update_host_state.exit.i_crit_edge, label %if.end.i.i

if.then.i.i.fm10k_watchdog_update_host_state.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_watchdog_update_host_state.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %state.i6) #8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i, %if.end.i8.if.end5.i.i_crit_edge
  %flags.i.i = getelementptr i8, ptr %work, i32 -15804
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i.i, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool8.not.i.i, label %if.end5.i.i.if.end14.i.i_crit_edge, label %if.then9.i.i

if.end5.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.then9.i.i:                                     ; preds = %if.end5.i.i
  %call10.i.i = tail call i32 @rtnl_trylock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then9.i.i.if.end14.i.i_crit_edge, label %if.then12.i.i

if.then9.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.then9.i.i
  %26 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev1.i, align 128
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i.i) #8
  %type.i.i.i = getelementptr i8, ptr %work, i32 -3000
  %28 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.not.i.i.i = icmp eq i32 %29, 1
  br i1 %cmp.not.i.i.i, label %if.then12.i.i.do.body.i.i.i_crit_edge, label %if.then12.i.i.fm10k_configure_swpri_map.exit.i.i_crit_edge

if.then12.i.i.fm10k_configure_swpri_map.exit.i.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_swpri_map.exit.i.i

if.then12.i.i.do.body.i.i.i_crit_edge:            ; preds = %if.then12.i.i
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end13.i.i.i.do.body.i.i.i_crit_edge, %if.then12.i.i.do.body.i.i.i_crit_edge
  %i.025.i.i.i = phi i32 [ %inc.i.i.i, %if.end13.i.i.i.do.body.i.i.i_crit_edge ], [ 0, %if.then12.i.i.do.body.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw1.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end13.i.i.i_crit_edge, label %do.body10.i.i.i, !prof !235

do.body.i.i.i.if.end13.i.i.i_crit_edge:           ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i.i

do.body10.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !265
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i.i.i = getelementptr %struct.net_device, ptr %27, i32 0, i32 142, i32 %i.025.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %33 to i32
  %34 = shl nuw i32 %conv.i.i.i.i, 24
  %add.i.i.i = add nuw nsw i32 %i.025.i.i.i, 80
  %arrayidx.i.i.i = getelementptr i32, ptr %31, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i, i32 %34) #8, !srcloc !240
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %do.body10.i.i.i, %do.body.i.i.i.if.end13.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.025.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %if.end13.i.i.i.fm10k_configure_swpri_map.exit.i.i_crit_edge, label %if.end13.i.i.i.do.body.i.i.i_crit_edge

if.end13.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

if.end13.i.i.i.fm10k_configure_swpri_map.exit.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_configure_swpri_map.exit.i.i

fm10k_configure_swpri_map.exit.i.i:               ; preds = %if.end13.i.i.i.fm10k_configure_swpri_map.exit.i.i_crit_edge, %if.then12.i.i.fm10k_configure_swpri_map.exit.i.i_crit_edge
  tail call void @rtnl_unlock() #8
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %fm10k_configure_swpri_map.exit.i.i, %if.then9.i.i.if.end14.i.i_crit_edge, %if.end5.i.i.if.end14.i.i_crit_edge
  %mbx_lock.i.i.i = getelementptr i8, ptr %work, i32 -108
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i.i.i) #8
  %get_host_state.i.i = getelementptr i8, ptr %work, i32 -3056
  %35 = ptrtoint ptr %get_host_state.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_host_state.i.i, align 4
  %host_ready15.i.i = getelementptr i8, ptr %work, i32 60
  %call16.i.i = tail call i32 %36(ptr noundef %hw1.i.i, ptr noundef %host_ready15.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end14.i.i.if.end23.i.i_crit_edge, label %land.lhs.true.i.i

if.end14.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i

land.lhs.true.i.i:                                ; preds = %if.end14.i.i
  %last_reset.i.i = getelementptr i8, ptr %work, i32 52
  %37 = ptrtoint ptr %last_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_reset.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub18.i.i = sub i32 %38, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i.i)
  %cmp19.i.i = icmp slt i32 %sub18.i.i, 0
  br i1 %cmp19.i.i, label %if.then20.i.i, label %land.lhs.true.i.i.if.end23.i.i_crit_edge

land.lhs.true.i.i.if.end23.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i

if.then20.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #8
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then20.i.i, %land.lhs.true.i.i.if.end23.i.i_crit_edge, %if.end14.i.i.if.end23.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i.i.i) #8
  br label %fm10k_watchdog_update_host_state.exit.i

fm10k_watchdog_update_host_state.exit.i:          ; preds = %if.end23.i.i, %if.then.i.i.fm10k_watchdog_update_host_state.exit.i_crit_edge
  %call1.i = tail call i32 @fm10k_iov_mbx(ptr noundef %add.ptr) #8
  br label %fm10k_mbx_subtask.exit

fm10k_mbx_subtask.exit:                           ; preds = %fm10k_watchdog_update_host_state.exit.i, %fm10k_detach_subtask.exit.fm10k_mbx_subtask.exit_crit_edge
  %flags.i = getelementptr i8, ptr %work, i32 -15804
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i9 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i9, label %fm10k_mbx_subtask.exit.fm10k_reset_subtask.exit_crit_edge, label %if.end.i11

fm10k_mbx_subtask.exit.fm10k_reset_subtask.exit_crit_edge: ; preds = %fm10k_mbx_subtask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_reset_subtask.exit

if.end.i11:                                       ; preds = %fm10k_mbx_subtask.exit
  %call1.i10 = tail call fastcc zeroext i1 @fm10k_prepare_for_reset(ptr noundef %add.ptr) #8
  br i1 %call1.i10, label %if.end3.i, label %if.end.i11.fm10k_reset_subtask.exit_crit_edge

if.end.i11.fm10k_reset_subtask.exit_crit_edge:    ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_reset_subtask.exit

if.end3.i:                                        ; preds = %if.end.i11
  %40 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev1.i, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.99) #11
  %call4.i = tail call fastcc i32 @fm10k_handle_reset(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.fm10k_reset_subtask.exit_crit_edge, label %do.end.i12

if.end3.i.fm10k_reset_subtask.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_reset_subtask.exit

do.end.i12:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr i8, ptr %work, i32 -15812
  %42 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.100, i32 noundef %call4.i) #11
  br label %fm10k_reset_subtask.exit

fm10k_reset_subtask.exit:                         ; preds = %do.end.i12, %if.end3.i.fm10k_reset_subtask.exit_crit_edge, %if.end.i11.fm10k_reset_subtask.exit_crit_edge, %fm10k_mbx_subtask.exit.fm10k_reset_subtask.exit_crit_edge
  %44 = ptrtoint ptr %state.i6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i6, align 4
  %46 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i14 = icmp eq i32 %46, 0
  br i1 %tobool.not.i14, label %lor.lhs.false.i15, label %fm10k_reset_subtask.exit.fm10k_watchdog_subtask.exit_crit_edge

fm10k_reset_subtask.exit.fm10k_watchdog_subtask.exit_crit_edge: ; preds = %fm10k_reset_subtask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_watchdog_subtask.exit

lor.lhs.false.i15:                                ; preds = %fm10k_reset_subtask.exit
  %47 = ptrtoint ptr %state.i6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %state.i6, align 4
  %and1.i17.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i17.i)
  %tobool4.not.i = icmp eq i32 %and1.i17.i, 0
  br i1 %tobool4.not.i, label %if.end.i17, label %lor.lhs.false.i15.fm10k_watchdog_subtask.exit_crit_edge

lor.lhs.false.i15.fm10k_watchdog_subtask.exit_crit_edge: ; preds = %lor.lhs.false.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_watchdog_subtask.exit

if.end.i17:                                       ; preds = %lor.lhs.false.i15
  %host_ready.i = getelementptr i8, ptr %work, i32 60
  %49 = ptrtoint ptr %host_ready.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %host_ready.i, align 8, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool5.not.i16 = icmp eq i8 %50, 0
  %51 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %netdev1.i, align 128
  %state.i.i19.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %state.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state.i.i19.i, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i20.i = icmp eq i32 %55, 0
  br i1 %tobool5.not.i16, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i17
  br i1 %tobool.not.i.i20.i, label %if.then6.i.if.end7.i_crit_edge, label %do.body.i.i

if.then6.i.if.end7.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

do.body.i.i:                                      ; preds = %if.then6.i
  %msg_enable.i.i = getelementptr i8, ptr %work, i32 -56
  %56 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %msg_enable.i.i, align 4
  %58 = and i16 %57, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i.i18 = icmp eq i16 %58, 0
  br i1 %tobool.not.i.i18, label %do.body.i.i.do.end.i.i_crit_edge, label %if.then2.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %52, ptr noundef nonnull @.str.102) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then2.i.i, %do.body.i.i.do.end.i.i_crit_edge
  tail call void @netif_carrier_on(ptr noundef %52) #8
  %num_tx_queues.i.i.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 104
  %59 = ptrtoint ptr %num_tx_queues.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_tx_queues.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp4.not.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp4.not.i.i.i, label %do.end.i.i.if.end7.i_crit_edge, label %for.body.lr.ph.i.i.i

do.end.i.i.if.end7.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.body.lr.ph.i.i.i:                             ; preds = %do.end.i.i
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 103
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.05.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i20, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %61 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i.i.i.i, align 128
  %arrayidx.i.i.i.i19 = getelementptr %struct.netdev_queue, ptr %62, i32 %i.05.i.i.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i.i19) #8
  %inc.i.i.i20 = add nuw i32 %i.05.i.i.i, 1
  %63 = ptrtoint ptr %num_tx_queues.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_tx_queues.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i20, %64
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.if.end7.i_crit_edge

for.body.i.i.i.if.end7.i_crit_edge:               ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

if.else.i:                                        ; preds = %if.end.i17
  br i1 %tobool.not.i.i20.i, label %do.body.i23.i, label %if.else.i.if.end7.i_crit_edge

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

do.body.i23.i:                                    ; preds = %if.else.i
  %msg_enable.i21.i = getelementptr i8, ptr %work, i32 -56
  %65 = ptrtoint ptr %msg_enable.i21.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %msg_enable.i21.i, align 4
  %67 = and i16 %66, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i22.i = icmp eq i16 %67, 0
  br i1 %tobool.not.i22.i, label %do.body.i23.i.do.end.i25.i_crit_edge, label %if.then2.i24.i

do.body.i23.i.do.end.i25.i_crit_edge:             ; preds = %do.body.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i25.i

if.then2.i24.i:                                   ; preds = %do.body.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %52, ptr noundef nonnull @.str.103) #11
  br label %do.end.i25.i

do.end.i25.i:                                     ; preds = %if.then2.i24.i, %do.body.i23.i.do.end.i25.i_crit_edge
  tail call void @netif_carrier_off(ptr noundef %52) #8
  tail call void @netif_tx_stop_all_queues(ptr noundef %52) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i25.i, %if.else.i.if.end7.i_crit_edge, %for.body.i.i.i.if.end7.i_crit_edge, %do.end.i.i.if.end7.i_crit_edge, %if.then6.i.if.end7.i_crit_edge
  %next_stats_update.i = getelementptr i8, ptr %work, i32 44
  %68 = ptrtoint ptr %next_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %next_stats_update.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %69, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then8.i, label %if.end7.i.if.end9.i_crit_edge

if.end7.i.if.end9.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fm10k_update_stats(ptr noundef %add.ptr) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end7.i.if.end9.i_crit_edge
  %71 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %netdev1.i, align 128
  %state.i.i26.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %state.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %state.i.i26.i, align 4
  %75 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i.i27.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i.i27.i, label %if.end9.i.fm10k_watchdog_subtask.exit_crit_edge, label %for.cond.preheader.i.i

if.end9.i.fm10k_watchdog_subtask.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_watchdog_subtask.exit

for.cond.preheader.i.i:                           ; preds = %if.end9.i
  %num_tx_queues.i.i = getelementptr i8, ptr %work, i32 -15796
  %76 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_tx_queues.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp19.i.i21 = icmp sgt i32 %77, 0
  br i1 %cmp19.i.i21, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.fm10k_watchdog_subtask.exit_crit_edge

for.cond.preheader.i.i.fm10k_watchdog_subtask.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_watchdog_subtask.exit

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %77
  br i1 %exitcond.not.i.i, label %for.cond.i.i.fm10k_watchdog_subtask.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.fm10k_watchdog_subtask.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_watchdog_subtask.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fm10k_intfc, ptr %add.ptr, i32 0, i32 12, i32 %i.020.i.i
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i, align 4
  %next_to_use.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %79, i32 0, i32 16
  %80 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %next_to_use.i.i, align 2
  %next_to_clean.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %79, i32 0, i32 17
  %82 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %next_to_clean.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %83)
  %cmp3.not.i.i = icmp eq i16 %81, %83
  br i1 %cmp3.not.i.i, label %for.cond.i.i, label %if.then7.critedge.i.i

if.then7.critedge.i.i:                            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  br label %fm10k_watchdog_subtask.exit

fm10k_watchdog_subtask.exit:                      ; preds = %if.then7.critedge.i.i, %for.cond.i.i.fm10k_watchdog_subtask.exit_crit_edge, %for.cond.preheader.i.i.fm10k_watchdog_subtask.exit_crit_edge, %if.end9.i.fm10k_watchdog_subtask.exit_crit_edge, %lor.lhs.false.i15.fm10k_watchdog_subtask.exit_crit_edge, %fm10k_reset_subtask.exit.fm10k_watchdog_subtask.exit_crit_edge
  %84 = ptrtoint ptr %state.i6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %state.i6, align 4
  %86 = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i24 = icmp eq i32 %86, 0
  br i1 %tobool.not.i24, label %lor.lhs.false.i26, label %fm10k_watchdog_subtask.exit.fm10k_check_hang_subtask.exit_crit_edge

fm10k_watchdog_subtask.exit.fm10k_check_hang_subtask.exit_crit_edge: ; preds = %fm10k_watchdog_subtask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_check_hang_subtask.exit

lor.lhs.false.i26:                                ; preds = %fm10k_watchdog_subtask.exit
  %87 = ptrtoint ptr %state.i6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %state.i6, align 4
  %and1.i41.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i41.i)
  %tobool4.not.i25 = icmp eq i32 %and1.i41.i, 0
  br i1 %tobool4.not.i25, label %if.end.i29, label %lor.lhs.false.i26.fm10k_check_hang_subtask.exit_crit_edge

lor.lhs.false.i26.fm10k_check_hang_subtask.exit_crit_edge: ; preds = %lor.lhs.false.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_check_hang_subtask.exit

if.end.i29:                                       ; preds = %lor.lhs.false.i26
  %next_tx_hang_check.i = getelementptr i8, ptr %work, i32 48
  %89 = ptrtoint ptr %next_tx_hang_check.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %next_tx_hang_check.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %sub.i27 = sub i32 %90, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i27)
  %cmp.i28 = icmp sgt i32 %sub.i27, -1
  br i1 %cmp.i28, label %if.end.i29.fm10k_check_hang_subtask.exit_crit_edge, label %if.end6.i

if.end.i29.fm10k_check_hang_subtask.exit_crit_edge: ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_check_hang_subtask.exit

if.end6.i:                                        ; preds = %if.end.i29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %92, 200
  %93 = ptrtoint ptr %next_tx_hang_check.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add.i, ptr %next_tx_hang_check.i, align 4
  %94 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %netdev1.i, align 128
  %state.i.i31 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %state.i.i31 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %state.i.i31, align 4
  %98 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i32 = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i32, label %for.cond.preheader.i, label %if.end6.i.fm10k_check_hang_subtask.exit_crit_edge

if.end6.i.fm10k_check_hang_subtask.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_check_hang_subtask.exit

for.cond.preheader.i:                             ; preds = %if.end6.i
  %num_tx_queues.i = getelementptr i8, ptr %work, i32 -15796
  %99 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp1042.i = icmp sgt i32 %100, 0
  br i1 %cmp1042.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.cond13.preheader.i_crit_edge

for.cond.preheader.i.for.cond13.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13.preheader.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond13.preheader.i:                           ; preds = %for.body.i.for.cond13.preheader.i_crit_edge, %for.cond.preheader.i.for.cond13.preheader.i_crit_edge
  %num_q_vectors.i = getelementptr i8, ptr %work, i32 -13476
  %101 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_q_vectors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp1444.i = icmp sgt i32 %102, 0
  br i1 %cmp1444.i, label %for.cond13.preheader.i.for.body15.i_crit_edge, label %for.cond13.preheader.i.fm10k_check_hang_subtask.exit_crit_edge

for.cond13.preheader.i.fm10k_check_hang_subtask.exit_crit_edge: ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_check_hang_subtask.exit

for.cond13.preheader.i.for.body15.i_crit_edge:    ; preds = %for.cond13.preheader.i
  br label %for.body15.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.043.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fm10k_intfc, ptr %add.ptr, i32 0, i32 12, i32 %i.043.i
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i, align 4
  %state11.i33 = getelementptr inbounds %struct.fm10k_ring, ptr %104, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state11.i33) #8
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %105 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_tx_queues.i, align 8
  %cmp10.i = icmp slt i32 %inc.i, %106
  br i1 %cmp10.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond13.preheader.i_crit_edge

for.body.i.for.cond13.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body15.i:                                     ; preds = %cleanup.i.for.body15.i_crit_edge, %for.cond13.preheader.i.for.body15.i_crit_edge
  %i.145.i = phi i32 [ %inc23.i, %cleanup.i.for.body15.i_crit_edge ], [ 0, %for.cond13.preheader.i.for.body15.i_crit_edge ]
  %arrayidx16.i = getelementptr %struct.fm10k_intfc, ptr %add.ptr, i32 0, i32 35, i32 %i.145.i
  %107 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx16.i, align 4
  %count.i = getelementptr inbounds %struct.fm10k_q_vector, ptr %108, i32 0, i32 4, i32 6
  %109 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool17.not.i = icmp eq i8 %110, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i, label %for.body15.i.do.body.i_crit_edge

for.body15.i.do.body.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %for.body15.i
  %count18.i = getelementptr inbounds %struct.fm10k_q_vector, ptr %108, i32 0, i32 3, i32 6
  %111 = ptrtoint ptr %count18.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %count18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool19.not.i = icmp eq i8 %112, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

do.body.i:                                        ; preds = %land.lhs.true.i.do.body.i_crit_edge, %for.body15.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !290
  tail call void @arm_heavy_mb() #8
  %itr.i = getelementptr inbounds %struct.fm10k_q_vector, ptr %108, i32 0, i32 1
  %113 = ptrtoint ptr %itr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %itr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 176) #8, !srcloc !240
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body.i, %land.lhs.true.i.cleanup.i_crit_edge
  %inc23.i = add nuw nsw i32 %i.145.i, 1
  %115 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_q_vectors.i, align 8
  %cmp14.i = icmp slt i32 %inc23.i, %116
  br i1 %cmp14.i, label %cleanup.i.for.body15.i_crit_edge, label %cleanup.i.fm10k_check_hang_subtask.exit_crit_edge

cleanup.i.fm10k_check_hang_subtask.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_check_hang_subtask.exit

cleanup.i.for.body15.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15.i

fm10k_check_hang_subtask.exit:                    ; preds = %cleanup.i.fm10k_check_hang_subtask.exit_crit_edge, %for.cond13.preheader.i.fm10k_check_hang_subtask.exit_crit_edge, %if.end6.i.fm10k_check_hang_subtask.exit_crit_edge, %if.end.i29.fm10k_check_hang_subtask.exit_crit_edge, %lor.lhs.false.i26.fm10k_check_hang_subtask.exit_crit_edge, %fm10k_watchdog_subtask.exit.fm10k_check_hang_subtask.exit_crit_edge
  %117 = ptrtoint ptr %state.i6 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %state.i6, align 4
  %119 = and i32 %118, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i36 = icmp eq i32 %119, 0
  br i1 %tobool.not.i36, label %do.end.i37, label %fm10k_check_hang_subtask.exit.if.end.i38_crit_edge, !prof !235

fm10k_check_hang_subtask.exit.if.end.i38_crit_edge: ; preds = %fm10k_check_hang_subtask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i38

do.end.i37:                                       ; preds = %fm10k_check_hang_subtask.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 162, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i38

if.end.i38:                                       ; preds = %do.end.i37, %fm10k_check_hang_subtask.exit.if.end.i38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !291
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i6) #8
  %120 = ptrtoint ptr %state.i6 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %state.i6, align 4
  %122 = and i32 %121, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool32.not.i = icmp eq i32 %122, 0
  br i1 %tobool32.not.i, label %if.end.i38.fm10k_service_event_complete.exit_crit_edge, label %if.then33.i

if.end.i38.fm10k_service_event_complete.exit_crit_edge: ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_service_event_complete.exit

if.then33.i:                                      ; preds = %if.end.i38
  %123 = ptrtoint ptr %state.i6 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %state.i6, align 4
  %125 = and i32 %124, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i.i39 = icmp eq i32 %125, 0
  br i1 %tobool.not.i.i39, label %land.lhs.true.i.i40, label %if.then33.i.if.else.i.i_crit_edge

if.then33.i.if.else.i.i_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true.i.i40:                              ; preds = %if.then33.i
  %call3.i.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i41, label %land.lhs.true.i.i40.if.else.i.i_crit_edge

land.lhs.true.i.i40.if.else.i.i_crit_edge:        ; preds = %land.lhs.true.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i.i41:                                    ; preds = %land.lhs.true.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state.i6) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %126 = load ptr, ptr @fm10k_workqueue, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %126, ptr noundef %work) #8
  br label %fm10k_service_event_complete.exit

if.else.i.i:                                      ; preds = %land.lhs.true.i.i40.if.else.i.i_crit_edge, %if.then33.i.if.else.i.i_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i6) #8
  br label %fm10k_service_event_complete.exit

fm10k_service_event_complete.exit:                ; preds = %if.else.i.i, %if.then.i.i41, %if.end.i38.fm10k_service_event_complete.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_macvlan_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %work, i32 -3328
  %macvlan_requests = getelementptr i8, ptr %work, i32 -8
  %macvlan_lock = getelementptr i8, ptr %work, i32 100
  %call6169 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock) #8
  %0 = ptrtoint ptr %macvlan_requests to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %macvlan_requests, align 4
  %cmp14.not170 = icmp eq ptr %1, %macvlan_requests
  %add.ptr18171 = getelementptr i8, ptr %1, i32 -4
  %tobool.not165172 = icmp eq ptr %add.ptr18171, null
  %tobool.not173 = or i1 %cmp14.not170, %tobool.not165172
  br i1 %tobool.not173, label %entry.done_crit_edge, label %if.then.lr.ph

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then.lr.ph:                                    ; preds = %entry
  %mbx_lock.i = getelementptr i8, ptr %work, i32 -352
  %mbx = getelementptr i8, ptr %work, i32 -3136
  %tx_ready = getelementptr i8, ptr %work, i32 -3124
  %update_vlan = getelementptr i8, ptr %work, i32 -3292
  %update_uc_addr = getelementptr i8, ptr %work, i32 -3284
  %update_mc_addr = getelementptr i8, ptr %work, i32 -3280
  br label %if.then

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %if.then.lr.ph
  %add.ptr18175 = phi ptr [ %add.ptr18171, %if.then.lr.ph ], [ %add.ptr18, %sw.epilog.if.then_crit_edge ]
  %2 = phi ptr [ %1, %if.then.lr.ph ], [ %52, %sw.epilog.if.then_crit_edge ]
  %call6174 = phi i32 [ %call6169, %if.then.lr.ph ], [ %call6, %sw.epilog.if.then_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %macvlan_lock, i32 noundef %call6174) #8
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i) #8
  %11 = ptrtoint ptr %tx_ready to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_ready, align 4
  %call24 = tail call zeroext i1 %12(ptr noundef %mbx, i16 noundef zeroext 12) #8
  br i1 %call24, label %if.end46, label %if.then25

if.then25:                                        ; preds = %list_del_init.exit
  %process = getelementptr i8, ptr %work, i32 -3112
  %13 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %process, align 8
  %call29 = tail call i32 %14(ptr noundef %hw1, ptr noundef %mbx) #8
  %state = getelementptr i8, ptr %work, i32 -16052
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #8
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #8
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock) #8
  %15 = ptrtoint ptr %macvlan_requests to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %macvlan_requests, align 4
  %call.i.i161 = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %macvlan_requests, ptr noundef %16) #8
  br i1 %call.i.i161, label %if.end.i.i162, label %if.then25.done_crit_edge

if.then25.done_crit_edge:                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end.i.i162:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i3.i.le = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %2, ptr %prev1.i.i, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %2, align 4
  %19 = ptrtoint ptr %prev.i3.i.le to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %macvlan_requests, ptr %prev.i3.i.le, align 4
  %20 = ptrtoint ptr %macvlan_requests to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %2, ptr %macvlan_requests, align 4
  br label %done

if.end46:                                         ; preds = %list_del_init.exit
  %21 = ptrtoint ptr %add.ptr18175 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr18175, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %22, label %if.end46.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb51
    i32 2, label %sw.bb61
  ]

if.end46.sw.epilog_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %update_mc_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %update_mc_addr, align 8
  %26 = getelementptr i8, ptr %2, i32 8
  %glort = getelementptr i8, ptr %2, i32 14
  %27 = ptrtoint ptr %glort to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %glort, align 2
  %vid = getelementptr i8, ptr %2, i32 16
  %29 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vid, align 4
  %set = getelementptr i8, ptr %2, i32 20
  %31 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %set, align 4, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool49 = icmp ne i8 %32, 0
  %call50 = tail call i32 %25(ptr noundef %hw1, i16 noundef zeroext %28, ptr noundef %26, i16 noundef zeroext %30, i1 noundef zeroext %tobool49) #8
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %update_uc_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %update_uc_addr, align 4
  %35 = getelementptr i8, ptr %2, i32 8
  %glort54 = getelementptr i8, ptr %2, i32 14
  %36 = ptrtoint ptr %glort54 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %glort54, align 2
  %vid57 = getelementptr i8, ptr %2, i32 16
  %38 = ptrtoint ptr %vid57 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vid57, align 4
  %set58 = getelementptr i8, ptr %2, i32 20
  %40 = ptrtoint ptr %set58 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %set58, align 4, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool59 = icmp ne i8 %41, 0
  %call60 = tail call i32 %34(ptr noundef %hw1, i16 noundef zeroext %37, ptr noundef %35, i16 noundef zeroext %39, i1 noundef zeroext %tobool59, i8 noundef zeroext 0) #8
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %update_vlan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %update_vlan, align 4
  %44 = getelementptr i8, ptr %2, i32 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %vsi = getelementptr i8, ptr %2, i32 12
  %47 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %vsi, align 4
  %set65 = getelementptr i8, ptr %2, i32 20
  %49 = ptrtoint ptr %set65 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %set65, align 4, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool66 = icmp ne i8 %50, 0
  %call67 = tail call i32 %43(ptr noundef %hw1, i32 noundef %46, i8 noundef zeroext %48, i1 noundef zeroext %tobool66) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb61, %sw.bb51, %sw.bb, %if.end46.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #8
  tail call void @kfree(ptr noundef nonnull %add.ptr18175) #8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock) #8
  %51 = ptrtoint ptr %macvlan_requests to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %macvlan_requests, align 4
  %cmp14.not = icmp eq ptr %52, %macvlan_requests
  %add.ptr18 = getelementptr i8, ptr %52, i32 -4
  %tobool.not165 = icmp eq ptr %add.ptr18, null
  %tobool.not = or i1 %cmp14.not, %tobool.not165
  br i1 %tobool.not, label %sw.epilog.done_crit_edge, label %sw.epilog.if.then_crit_edge

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

done:                                             ; preds = %sw.epilog.done_crit_edge, %if.end.i.i162, %if.then25.done_crit_edge, %entry.done_crit_edge
  %call6.lcssa.sink = phi i32 [ %call39, %if.then25.done_crit_edge ], [ %call39, %if.end.i.i162 ], [ %call6169, %entry.done_crit_edge ], [ %call6, %sw.epilog.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %macvlan_lock, i32 noundef %call6.lcssa.sink) #8
  %state70 = getelementptr i8, ptr %work, i32 -16052
  %53 = ptrtoint ptr %state70 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state70, align 4
  %55 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool73.not = icmp eq i32 %55, 0
  br i1 %tobool73.not, label %do.end86, label %done.if.end92_crit_edge, !prof !235

done.if.end92_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

do.end86:                                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 847, i32 noundef 9, ptr noundef null) #8
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %done.if.end92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !292
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state70) #8
  %56 = ptrtoint ptr %state70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state70, align 4
  %58 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool111.not = icmp eq i32 %58, 0
  br i1 %tobool111.not, label %if.end92.if.end113_crit_edge, label %if.then112

if.end92.if.end113_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then112:                                       ; preds = %if.end92
  %59 = ptrtoint ptr %state70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %state70, align 4
  %61 = and i32 %60, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then112.if.else.i_crit_edge

if.then112.if.else.i_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then112
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state70) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %62 = load ptr, ptr @fm10k_workqueue, align 4
  %call.i.i164 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %work, i32 noundef 10) #8
  br label %if.end113

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then112.if.else.i_crit_edge
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state70) #8
  br label %if.end113

if.end113:                                        ; preds = %if.else.i, %if.then.i, %if.end92.if.end113_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_print_link_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_clear_queueing_scheme(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_select_bars(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_sriov_set_totalvfs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_dcbnl_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fm10k_prepare_for_reset(ptr noundef %interface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 128
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not.i.i = icmp eq i32 %6, %4
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %4, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 4
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %netif_trans_update.exit.cleanup_crit_edge

netif_trans_update.exit.cleanup_crit_edge:        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %netif_trans_update.exit
  tail call void @_set_bit(i32 noundef 9, ptr noundef %state) #8
  %macvlan_task.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 61
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %macvlan_task.i) #8
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #8
  tail call void @rtnl_lock() #8
  %pdev = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  tail call void @fm10k_iov_suspend(ptr noundef %9) #8
  %state.i14 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i14, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @fm10k_close(ptr noundef %1) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %hw1.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %msix_entries.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 36
  %12 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msix_entries.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end5.fm10k_mbx_free_irq.exit_crit_edge, label %if.end.i

if.end5.fm10k_mbx_free_irq.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_mbx_free_irq.exit

if.end.i:                                         ; preds = %if.end5
  %mbx.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6
  %disconnect.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6, i32 0, i32 1
  %14 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disconnect.i, align 4
  tail call void %15(ptr noundef %hw1.i, ptr noundef %mbx.i) #8
  %type.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 1
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp eq i32 %17, 1
  br i1 %cmp.i, label %do.body.i, label %if.end.i.do.body21.i_crit_edge

if.end.i.do.body21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

do.body.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw1.i, align 8
  %tobool8.not.i = icmp eq ptr %19, null
  br i1 %tobool8.not.i, label %do.body.i.do.body21.i_crit_edge, label %do.body13.i, !prof !235

do.body.i.do.body21.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

do.body13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %arrayidx16.i = getelementptr i32, ptr %19, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.i, i32 22302977) #8, !srcloc !240
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.body13.i, %do.body.i.do.body21.i_crit_edge, %if.end.i.do.body21.i_crit_edge
  %itr_reg.0.i = phi i32 [ 74752, %do.body13.i ], [ 74752, %do.body.i.do.body21.i_crit_edge ], [ 96, %if.end.i.do.body21.i_crit_edge ]
  %20 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw1.i, align 8
  %tobool28.not.i = icmp eq ptr %21, null
  br i1 %tobool28.not.i, label %do.body21.i.if.end42.i_crit_edge, label %do.body38.i, !prof !235

do.body21.i.if.end42.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

do.body38.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  tail call void @arm_heavy_mb() #8
  %arrayidx41.i = getelementptr i32, ptr %21, i32 %itr_reg.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41.i, i32 64) #8, !srcloc !240
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.body38.i, %do.body21.i.if.end42.i_crit_edge
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %13, align 4
  %call.i15 = tail call ptr @free_irq(i32 noundef %23, ptr noundef %interface) #8
  br label %fm10k_mbx_free_irq.exit

fm10k_mbx_free_irq.exit:                          ; preds = %if.end42.i, %if.end5.fm10k_mbx_free_irq.exit_crit_edge
  tail call void @fm10k_clear_queueing_scheme(ptr noundef %interface) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %24, 1000
  %last_reset = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 52
  %25 = ptrtoint ptr %last_reset to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %last_reset, align 128
  tail call void @rtnl_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %fm10k_mbx_free_irq.exit, %netif_trans_update.exit.cleanup_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fm10k_handle_reset(ptr noundef %interface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 128
  %hw2 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !235

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 263, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @rtnl_lock() #8
  %pdev = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  tail call void @pci_set_master(ptr noundef %5) #8
  %mac = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac, align 8
  %call23 = tail call i32 %7(ptr noundef %hw2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %call23) #11
  br label %reinit_err

if.end30:                                         ; preds = %if.end
  %init_hw = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %init_hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_hw, align 4
  %call33 = tail call i32 %11(ptr noundef %hw2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.80, i32 noundef %call33) #11
  br label %reinit_err

if.end41:                                         ; preds = %if.end30
  %call42 = tail call i32 @fm10k_init_queueing_scheme(ptr noundef %interface) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end50, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.97, i32 noundef %call42) #11
  br label %reinit_err

if.end50:                                         ; preds = %if.end41
  %call51 = tail call i32 @fm10k_mbx_request_irq(ptr noundef %interface)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.err_mbx_irq_crit_edge

if.end50.err_mbx_irq_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mbx_irq

if.end54:                                         ; preds = %if.end50
  %16 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw2, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end54.err_open_crit_edge, label %if.end.i.i, !prof !235

if.end54.err_open_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_open

if.end.i.i:                                       ; preds = %if.end54
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool8.not.i.i = icmp eq i32 %18, -1
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.fm10k_hw_ready.exit_crit_edge

if.end.i.i.fm10k_hw_ready.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_hw_ready.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %back.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 1
  %19 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %back.i.i, align 4
  %netdev18.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %netdev18.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev18.i.i, align 128
  %23 = ptrtoint ptr %hw2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %hw2, align 8
  tail call void @netif_device_detach(ptr noundef %22) #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str) #11
  br label %fm10k_hw_ready.exit

fm10k_hw_ready.exit:                              ; preds = %land.lhs.true.i.i, %if.end.i.i.fm10k_hw_ready.exit_crit_edge
  %24 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load ptr, ptr %hw2, align 8
  %tobool.not.i.not = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.not, label %fm10k_hw_ready.exit.err_open_crit_edge, label %if.end58

fm10k_hw_ready.exit.err_open_crit_edge:           ; preds = %fm10k_hw_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_open

if.end58:                                         ; preds = %fm10k_hw_ready.exit
  %type = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp = icmp eq i32 %26, 2
  br i1 %cmp, label %if.then60, label %if.end58.if.end86_crit_edge

if.end58.if.end86_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then60:                                        ; preds = %if.end58
  %perm_addr = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 3
  %27 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %perm_addr, align 4
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then60.if.end79_crit_edge

if.then60.if.end79_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

is_valid_ether_addr.exit:                         ; preds = %if.then60
  %add.ptr.i.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 3, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %31 to i32
  %or.i.i = or i32 %28, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end79_crit_edge, label %if.then64

is_valid_ether_addr.exit.if.end79_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then64:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 2
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %28, ptr %addr, align 4
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 2, i32 4
  %35 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i, align 2
  %perm_addr70 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  %36 = ptrtoint ptr %perm_addr70 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %28, ptr %perm_addr70, align 4
  %37 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i145 = getelementptr %struct.net_device, ptr %1, i32 0, i32 54, i32 4
  %38 = ptrtoint ptr %add.ptr1.i145 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i145, align 2
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %perm_addr, i32 noundef 6) #8
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 55
  %39 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %addr_assign_type, align 4
  %41 = and i8 %40, -2
  store i8 %41, ptr %addr_assign_type, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then64, %is_valid_ether_addr.exit.if.end79_crit_edge, %if.then60.if.end79_crit_edge
  %vlan_override = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 7
  %42 = ptrtoint ptr %vlan_override to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %vlan_override, align 2, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool81.not = icmp eq i8 %43, 0
  %features84 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %44 = ptrtoint ptr %features84 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %features84, align 16
  %and83 = and i64 %45, -257
  %masksel = select i1 %tobool81.not, i64 256, i64 0
  %and83.sink = or i64 %and83, %masksel
  store i64 %and83.sink, ptr %features84, align 16
  br label %if.end86

if.end86:                                         ; preds = %if.end79, %if.end58.if.end86_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end86.if.end92_crit_edge, label %cond.end

if.end86.if.end92_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

cond.end:                                         ; preds = %if.end86
  %call89 = tail call i32 @fm10k_open(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %cond.end.if.end92_crit_edge, label %cond.end.err_open_crit_edge

cond.end.err_open_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_open

cond.end.if.end92_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end92:                                         ; preds = %cond.end.if.end92_crit_edge, %if.end86.if.end92_crit_edge
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 8
  %call94 = tail call i32 @fm10k_iov_resume(ptr noundef %49) #8
  tail call void @rtnl_unlock() #8
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %state) #8
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %state, align 4
  %52 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i147 = icmp eq i32 %52, 0
  br i1 %tobool.not.i147, label %if.end92.cleanup_crit_edge, label %if.then.i

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end92
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state, align 4
  %55 = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i148 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i148, label %land.lhs.true.i.i149, label %if.then.i.if.else.i.i_crit_edge

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true.i.i149:                             ; preds = %if.then.i
  %call3.i.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i149.if.else.i.i_crit_edge

land.lhs.true.i.i149.if.else.i.i_crit_edge:       ; preds = %land.lhs.true.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %56 = load ptr, ptr @fm10k_workqueue, align 4
  %macvlan_task.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 61
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %macvlan_task.i.i, i32 noundef 10) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %land.lhs.true.i.i149.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #8
  br label %cleanup

err_open:                                         ; preds = %cond.end.err_open_crit_edge, %fm10k_hw_ready.exit.err_open_crit_edge, %if.end54.err_open_crit_edge
  %err.0 = phi i32 [ -19, %fm10k_hw_ready.exit.err_open_crit_edge ], [ %call89, %cond.end.err_open_crit_edge ], [ -19, %if.end54.err_open_crit_edge ]
  %msix_entries.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 36
  %57 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %msix_entries.i, align 4
  %tobool.not.i151 = icmp eq ptr %58, null
  br i1 %tobool.not.i151, label %err_open.err_mbx_irq_crit_edge, label %if.end.i

err_open.err_mbx_irq_crit_edge:                   ; preds = %err_open
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mbx_irq

if.end.i:                                         ; preds = %err_open
  %mbx.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6
  %disconnect.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6, i32 0, i32 1
  %59 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %disconnect.i, align 4
  tail call void %60(ptr noundef %hw2, ptr noundef %mbx.i) #8
  %type.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 1
  %61 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i = icmp eq i32 %62, 1
  br i1 %cmp.i, label %do.body.i, label %if.end.i.do.body21.i_crit_edge

if.end.i.do.body21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

do.body.i:                                        ; preds = %if.end.i
  %63 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %hw2, align 8
  %tobool8.not.i = icmp eq ptr %64, null
  br i1 %tobool8.not.i, label %do.body.i.do.body21.i_crit_edge, label %do.body13.i, !prof !235

do.body.i.do.body21.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

do.body13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %arrayidx16.i = getelementptr i32, ptr %64, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.i, i32 22302977) #8, !srcloc !240
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.body13.i, %do.body.i.do.body21.i_crit_edge, %if.end.i.do.body21.i_crit_edge
  %itr_reg.0.i = phi i32 [ 74752, %do.body13.i ], [ 74752, %do.body.i.do.body21.i_crit_edge ], [ 96, %if.end.i.do.body21.i_crit_edge ]
  %65 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %hw2, align 8
  %tobool28.not.i = icmp eq ptr %66, null
  br i1 %tobool28.not.i, label %do.body21.i.if.end42.i_crit_edge, label %do.body38.i, !prof !235

do.body21.i.if.end42.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

do.body38.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  tail call void @arm_heavy_mb() #8
  %arrayidx41.i = getelementptr i32, ptr %66, i32 %itr_reg.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41.i, i32 64) #8, !srcloc !240
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.body38.i, %do.body21.i.if.end42.i_crit_edge
  %67 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %58, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %68, ptr noundef %interface) #8
  br label %err_mbx_irq

err_mbx_irq:                                      ; preds = %if.end42.i, %err_open.err_mbx_irq_crit_edge, %if.end50.err_mbx_irq_crit_edge
  %err.1 = phi i32 [ %call51, %if.end50.err_mbx_irq_crit_edge ], [ %err.0, %err_open.err_mbx_irq_crit_edge ], [ %err.0, %if.end42.i ]
  tail call void @fm10k_clear_queueing_scheme(ptr noundef %interface) #8
  br label %reinit_err

reinit_err:                                       ; preds = %err_mbx_irq, %do.end47, %do.end38, %do.end28
  %err.2 = phi i32 [ %call23, %do.end28 ], [ %call33, %do.end38 ], [ %call42, %do.end47 ], [ %err.1, %err_mbx_irq ]
  tail call void @netif_device_detach(ptr noundef %1) #8
  tail call void @rtnl_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %reinit_err, %if.else.i.i, %if.then.i.i, %if.end92.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %reinit_err ], [ 0, %if.end92.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.else.i.i ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_iov_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_iov_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_iov_mbx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_clear_macvlan_queue(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_iov_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_dbg_intfc_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_io_error_detected(ptr nocapture noundef readonly %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev1 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 128
  tail call void @netif_device_detach(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state.i.i) #8
  %service_task.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 49
  %call.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %service_task.i.i) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i.i) #8
  %call.i = tail call fastcc zeroext i1 @fm10k_prepare_for_reset(ptr noundef %1) #8
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 3, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_io_slot_reset(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_reenable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.104) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_set_master(ptr noundef %pdev) #8
  tail call void @pci_restore_state(ptr noundef %pdev) #8
  %call1 = tail call i32 @pci_save_state(ptr noundef %pdev) #8
  %call2 = tail call i32 @pci_wake_from_d3(ptr noundef %pdev, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %result.0 = phi i32 [ 4, %do.end ], [ 5, %if.else ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_io_reset_prepare(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_num_vf(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.106) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state.i.i) #8
  %service_task.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 49
  %call.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %service_task.i.i) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i.i) #8
  %call.i = tail call fastcc zeroext i1 @fm10k_prepare_for_reset(ptr noundef %1) #8
  br i1 %call.i, label %if.then.i, label %if.end.fm10k_prepare_suspend.exit_crit_edge

if.end.fm10k_prepare_suspend.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_prepare_suspend.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i.i) #8
  br label %fm10k_prepare_suspend.exit

fm10k_prepare_suspend.exit:                       ; preds = %if.then.i, %if.end.fm10k_prepare_suspend.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_io_reset_done(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @fm10k_handle_resume(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef %call1) #11
  %netdev = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 128
  tail call void @netif_device_detach(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_io_resume(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev1 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 128
  %call2 = tail call fastcc i32 @fm10k_handle_resume(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.112, i32 noundef %call2) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_device_attach(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reenable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fm10k_handle_resume(ptr noundef %interface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.110) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rebind_hw_stats = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 15
  %2 = ptrtoint ptr %rebind_hw_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rebind_hw_stats, align 4
  %stats = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 40
  tail call void %3(ptr noundef %hw1, ptr noundef %stats) #8
  %call2 = tail call fastcc i32 @fm10k_handle_reset(ptr noundef %interface)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %host_ready = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 54
  %4 = ptrtoint ptr %host_ready to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %host_ready, align 8
  %netdev1.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %5 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev1.i, align 128
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %do.body.i, label %if.end5.fm10k_watchdog_host_not_ready.exit_crit_edge

if.end5.fm10k_watchdog_host_not_ready.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_watchdog_host_not_ready.exit

do.body.i:                                        ; preds = %if.end5
  %msg_enable.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 45
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg_enable.i, align 4
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then2.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %6, ptr noundef nonnull @.str.103) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then2.i, %do.body.i.do.end.i_crit_edge
  tail call void @netif_carrier_off(ptr noundef %6) #8
  tail call void @netif_tx_stop_all_queues(ptr noundef %6) #8
  br label %fm10k_watchdog_host_not_ready.exit

fm10k_watchdog_host_not_ready.exit:               ; preds = %do.end.i, %if.end5.fm10k_watchdog_host_not_ready.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 100
  %link_down_event = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 53
  %14 = ptrtoint ptr %link_down_event to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %link_down_event, align 4
  tail call void @_set_bit(i32 noundef 10, ptr noundef %state) #8
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state) #8
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state, align 4
  %17 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i21 = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i21, label %land.lhs.true.i.i, label %fm10k_watchdog_host_not_ready.exit.if.else.i.i_crit_edge

fm10k_watchdog_host_not_ready.exit.if.else.i.i_crit_edge: ; preds = %fm10k_watchdog_host_not_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %fm10k_watchdog_host_not_ready.exit
  %call3.i.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %18 = load ptr, ptr @fm10k_workqueue, align 4
  %service_task.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 49
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %service_task.i.i) #8
  br label %fm10k_start_service_event.exit

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %fm10k_watchdog_host_not_ready.exit.if.else.i.i_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #8
  br label %fm10k_start_service_event.exit

fm10k_start_service_event.exit:                   ; preds = %if.else.i.i, %if.then.i.i
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state, align 4
  %21 = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i23 = icmp eq i32 %21, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i, label %fm10k_start_service_event.exit.if.else.i_crit_edge

fm10k_start_service_event.exit.if.else.i_crit_edge: ; preds = %fm10k_start_service_event.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %fm10k_start_service_event.exit
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fm10k_workqueue to i32))
  %22 = load ptr, ptr @fm10k_workqueue, align 4
  %macvlan_task.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 61
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %macvlan_task.i, i32 noundef 10) #8
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %fm10k_start_service_event.exit.if.else.i_crit_edge
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.end.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %netdev1 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 128
  tail call void @netif_device_detach(ptr noundef %3) #8
  %state.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state.i.i) #8
  %service_task.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 49
  %call.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %service_task.i.i) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i.i) #8
  %call.i = tail call fastcc zeroext i1 @fm10k_prepare_for_reset(ptr noundef %1) #8
  br i1 %call.i, label %if.then.i, label %entry.fm10k_prepare_suspend.exit_crit_edge

entry.fm10k_prepare_suspend.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fm10k_prepare_suspend.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i.i) #8
  br label %fm10k_prepare_suspend.exit

fm10k_prepare_suspend.exit:                       ; preds = %if.then.i, %entry.fm10k_prepare_suspend.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %netdev1 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 128
  %hw2 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41
  %uc_addr = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 43
  %4 = ptrtoint ptr %uc_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uc_addr, align 4
  %6 = ptrtoint ptr %hw2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %hw2, align 8
  %call3 = tail call fastcc i32 @fm10k_handle_resume(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_device_attach(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !173, !175, !177, !178, !179, !181, !182, !184, !185, !186, !188, !190, !191, !192, !193, !195, !197, !199, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223}
!llvm.named.register.sp = !{!225}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 64, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1771, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1775, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1778, i32 6}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1793, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1942, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fm10k_down._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @fm10k_down._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1949, i32 3}
!20 = !{ptr @fm10k_down._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @fm10k_down._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1952, i32 3}
!24 = !{ptr @fm10k_down._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @fm10k_down._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2532, i32 9}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1661, i32 3}
!30 = !{ptr @pf_mbx_data, !31, !"pf_mbx_data", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1631, i32 36}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1568, i32 4}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @fm10k_lport_map._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @fm10k_lport_map._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1570, i32 3}
!40 = !{ptr @fm10k_lport_map._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @fm10k_lport_map._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1495, i32 2}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @fm10k_mbx_error._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @fm10k_mbx_error._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1319, i32 4}
!49 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @fm10k_report_fault._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @fm10k_report_fault._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1230, i32 12}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1232, i32 3}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1233, i32 3}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1234, i32 3}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1235, i32 3}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1236, i32 3}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1237, i32 3}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1238, i32 3}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1244, i32 12}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1246, i32 3}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1247, i32 3}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1253, i32 12}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1255, i32 3}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1256, i32 3}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1257, i32 3}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1258, i32 3}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1259, i32 3}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1260, i32 3}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1261, i32 3}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1262, i32 3}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1263, i32 3}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1264, i32 3}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1265, i32 3}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1269, i32 11}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1273, i32 2}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @fm10k_handle_fault._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @fm10k_handle_fault._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @vf_mbx_data, !106, !"vf_mbx_data", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 1501, i32 36}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 948, i32 3}
!109 = !{ptr @fm10k_driver, !110, !"fm10k_driver", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2513, i32 26}
!111 = !{ptr @fm10k_pci_tbl, !112, !"fm10k_pci_tbl", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 24, i32 35}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2102, i32 3}
!115 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @fm10k_probe._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @fm10k_probe._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2109, i32 3}
!120 = !{ptr @fm10k_probe._entry.57, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @fm10k_probe._entry_ptr.59, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2118, i32 3}
!124 = !{ptr @fm10k_probe._entry.60, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @fm10k_probe._entry_ptr.62, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2125, i32 3}
!128 = !{ptr @fm10k_probe._entry.63, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @fm10k_probe._entry_ptr.65, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @fm10k_probe.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2195, i32 2}
!132 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @fm10k_probe.__key.67, !134, !"__key", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2196, i32 2}
!135 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @fm10k_probe.__key.69, !137, !"__key", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2199, i32 2}
!138 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @fm10k_probe.__key.71, !137, !"__key", i1 false, i1 false}
!140 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2208, i32 2}
!143 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @fm10k_probe._entry.73, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @fm10k_probe._entry_ptr.76, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @fm10k_info_tbl, !147, !"fm10k_info_tbl", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 10, i32 33}
!148 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2020, i32 3}
!150 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @fm10k_sw_init._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @fm10k_sw_init._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2026, i32 3}
!155 = !{ptr @fm10k_sw_init._entry.79, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @fm10k_sw_init._entry_ptr.81, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2042, i32 3}
!159 = !{ptr @fm10k_sw_init._entry.82, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @fm10k_sw_init._entry_ptr.84, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2052, i32 3}
!163 = !{ptr @fm10k_sw_init._entry.85, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @fm10k_sw_init._entry_ptr.87, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @fm10k_sw_init.__key, !166, !"__key", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2074, i32 2}
!167 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @fm10k_sw_init.__key.89, !169, !"__key", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2075, i32 2}
!170 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 379, i32 23}
!173 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 386, i32 23}
!175 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 272, i32 3}
!177 = !{ptr @fm10k_handle_reset._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @fm10k_handle_reset._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @fm10k_handle_reset._entry.94, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 278, i32 3}
!181 = !{ptr @fm10k_handle_reset._entry_ptr.95, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.97, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 284, i32 3}
!184 = !{ptr @fm10k_handle_reset._entry.96, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @fm10k_handle_reset._entry_ptr.98, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.99, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 409, i32 32}
!188 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 413, i32 3}
!190 = !{ptr @.str.101, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @fm10k_reset_subtask._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @fm10k_reset_subtask._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.102, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 507, i32 2}
!195 = !{ptr @.str.103, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 525, i32 2}
!197 = !{ptr @fm10k_err_handler, !198, !"fm10k_err_handler", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2503, i32 40}
!199 = !{ptr @.str.104, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2426, i32 3}
!201 = !{ptr @.str.105, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @fm10k_io_slot_reset._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @fm10k_io_slot_reset._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.106, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2479, i32 3}
!206 = !{ptr @.str.107, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @fm10k_io_reset_prepare._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @fm10k_io_reset_prepare._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.108, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2497, i32 3}
!211 = !{ptr @.str.109, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @fm10k_io_reset_done._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @fm10k_io_reset_done._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2314, i32 3}
!216 = !{ptr @.str.111, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @fm10k_handle_resume._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @fm10k_handle_resume._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2462, i32 3}
!221 = !{ptr @fm10k_io_resume._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @fm10k_io_resume._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @fm10k_pm_ops, !224, !"fm10k_pm_ops", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pci.c", i32 2511, i32 8}
!225 = !{!"sp"}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{!"branch_weights", i32 1, i32 2000}
!236 = !{i64 4686501}
!237 = !{i64 2156553802}
!238 = !{i64 2156554248}
!239 = !{i64 2156672513}
!240 = !{i64 4686083}
!241 = !{i64 2156716653}
!242 = !{i64 2156720844}
!243 = !{i64 2156750781}
!244 = !{i64 2156754489}
!245 = !{i64 2156758171}
!246 = !{i64 2156761870}
!247 = !{i64 2156765551}
!248 = !{i64 2156769228}
!249 = !{i64 2156773756}
!250 = !{i64 2156778040}
!251 = !{i64 2156729871}
!252 = !{i64 2156733598}
!253 = !{i64 2156778564}
!254 = !{i64 2156779620}
!255 = !{i64 2156780103}
!256 = !{i64 2156601107}
!257 = !{i64 2156604934}
!258 = !{i64 2156608741}
!259 = !{i64 2156612410}
!260 = !{i64 2156616055}
!261 = !{i64 2156619691}
!262 = !{i64 2156623379}
!263 = !{i64 2156627056}
!264 = !{i64 2156630888}
!265 = !{i64 2156577996}
!266 = !{i64 2156676210}
!267 = !{i64 2156679946}
!268 = !{i64 2156683690}
!269 = !{i32 0, i32 33}
!270 = !{i64 2156635200}
!271 = !{i64 2156639042}
!272 = !{i64 2156642849}
!273 = !{i64 2156646518}
!274 = !{i64 2156650163}
!275 = !{i64 2156653799}
!276 = !{i64 2156657516}
!277 = !{i64 2156661274}
!278 = !{i64 2156665042}
!279 = !{i64 2156668744}
!280 = !{!"branch_weights", i32 2000, i32 1}
!281 = !{i64 2156707735}
!282 = !{i64 2156696638}
!283 = !{i64 2156700352}
!284 = !{i64 2156704004}
!285 = !{i64 2156711979}
!286 = !{i8 0, i8 2}
!287 = !{!"auto-init"}
!288 = !{i64 2156687558}
!289 = !{i64 2156568273}
!290 = !{i64 2156588610}
!291 = !{i64 2156556508}
!292 = !{i64 2156597423}
