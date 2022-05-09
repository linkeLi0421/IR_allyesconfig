; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_iov.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_iov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fm10k_msg_data = type { i32, ptr, ptr }
%struct.fm10k_tlv_attr = type { i32, i32, i16 }
%struct.fm10k_intfc = type { [128 x i32], ptr, ptr, ptr, [1 x i32], [1 x i32], i32, i32, i16, i32, i16, [90 x i8], [128 x ptr], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, [128 x ptr], [256 x ptr], ptr, i32, [2 x %struct.fm10k_ring_feature], ptr, %struct.fm10k_hw_stats, %struct.fm10k_hw, %struct.spinlock, ptr, ptr, i16, i16, i16, %struct.timer_list, %struct.work_struct, i32, i32, i32, i32, i8, i8, [32 x i32], [10 x i32], i16, i16, %struct.list_head, %struct.delayed_work, %struct.spinlock, ptr, i8, i8, i16, i16, i16, [36 x i8] }
%struct.fm10k_ring_feature = type { i16, i16, i16, i16 }
%struct.fm10k_hw_stats = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, [128 x %struct.fm10k_hw_stats_q] }
%struct.fm10k_hw_stat = type { i64, i32, i32 }
%struct.fm10k_hw_stats_q = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fm10k_iov_data = type { i32, i32, %struct.callback_head, [0 x %struct.fm10k_vf_info] }
%struct.callback_head = type { ptr, ptr }
%struct.fm10k_vf_info = type { %struct.fm10k_mbx_info, [16 x %struct.fm10k_hw_stats_q], i32, i16, i16, i16, [6 x i8], i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.114 = type { ptr }
%struct.fm10k_dglort_cfg = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@fm10k_iov_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 484, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot disable SR-IOV while VFs are assigned\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fm10k_iov_disable\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/fm10k/fm10k_iov.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fm10k_iov_disable._entry_ptr = internal global ptr @fm10k_iov_disable._entry, section ".printk_index", align 4
@fm10k_iov_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 498, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot modify SR-IOV while VFs are assigned\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fm10k_iov_configure\00", [44 x i8] zeroinitializer }, align 32
@fm10k_iov_configure._entry_ptr = internal global ptr @fm10k_iov_configure._entry, section ".printk_index", align 4
@fm10k_iov_configure._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 515, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Enable PCI SR-IOV failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@fm10k_iov_configure._entry_ptr.9 = internal global ptr @fm10k_iov_configure._entry.7, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iov_mbx_data = internal constant { [5 x %struct.fm10k_msg_data], [36 x i8] } { [5 x %struct.fm10k_msg_data] [%struct.fm10k_msg_data { i32 0, ptr @fm10k_tlv_msg_test_attr, ptr @fm10k_tlv_msg_test }, %struct.fm10k_msg_data { i32 1, ptr null, ptr @fm10k_iov_msg_msix_pf }, %struct.fm10k_msg_data { i32 2, ptr @fm10k_mac_vlan_msg_attr, ptr @fm10k_iov_msg_queue_mac_vlan }, %struct.fm10k_msg_data { i32 3, ptr @fm10k_lport_state_msg_attr, ptr @fm10k_iov_msg_lport_state_pf }, %struct.fm10k_msg_data { i32 -1, ptr null, ptr @fm10k_iov_msg_error }], [36 x i8] zeroinitializer }, align 32
@fm10k_iov_alloc_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 465, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to initialize SR-IOV mailbox\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fm10k_iov_alloc_data\00", [43 x i8] zeroinitializer }, align 32
@fm10k_iov_alloc_data._entry_ptr = internal global ptr @fm10k_iov_alloc_data._entry, section ".printk_index", align 4
@fm10k_tlv_msg_test_attr = external dso_local constant [0 x %struct.fm10k_tlv_attr], align 4
@fm10k_mac_vlan_msg_attr = external dso_local constant [0 x %struct.fm10k_tlv_attr], align 4
@fm10k_lport_state_msg_attr = external dso_local constant [0 x %struct.fm10k_tlv_attr], align 4
@fm10k_iov_msg_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 16, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown message ID %u on VF %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fm10k_iov_msg_error\00", [44 x i8] zeroinitializer }, align 32
@fm10k_iov_msg_error._entry_ptr = internal global ptr @fm10k_iov_msg_error._entry, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 483, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 497, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 514, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"iov_mbx_data\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 144, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 464, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [48 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_iov.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 15, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @fm10k_iov_alloc_data._entry, ptr @fm10k_iov_alloc_data._entry_ptr, ptr @fm10k_iov_configure._entry, ptr @fm10k_iov_configure._entry.7, ptr @fm10k_iov_configure._entry_ptr, ptr @fm10k_iov_configure._entry_ptr.9, ptr @fm10k_iov_disable._entry, ptr @fm10k_iov_disable._entry_ptr, ptr @fm10k_iov_msg_error._entry, ptr @fm10k_iov_msg_error._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @iov_mbx_data, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_iov_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_iov_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_iov_configure._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iov_mbx_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_iov_alloc_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_iov_msg_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_iov_event(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %iov_data2 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 39
  %0 = ptrtoint ptr %iov_data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %iov_data2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup24

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !36) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %iov_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iov_data2, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %rcu_read_lock.exit.read_unlock_crit_edge, label %if.end6

rcu_read_lock.exit.read_unlock_crit_edge:         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_unlock

if.end6:                                          ; preds = %rcu_read_lock.exit
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 6) #9
  %and = and i32 %call, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.read_unlock_crit_edge, label %if.end9

if.end6.read_unlock_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_unlock

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 100421) #9
  %conv = zext i32 %call10 to i64
  %shl = shl nuw i64 %conv, 32
  %call11 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 100420) #9
  %conv12 = zext i32 %call11 to i64
  %or = or i64 %shl, %conv12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %sub = sub i32 64, %9
  %sh_prom = zext i32 %sub to i64
  %shl13 = shl i64 %or, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13)
  %tobool14.not56 = icmp eq i64 %shl13, 0
  br i1 %tobool14.not56, label %if.end9.read_unlock_crit_edge, label %land.rhs.lr.ph

if.end9.read_unlock_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_unlock

land.rhs.lr.ph:                                   ; preds = %if.end9
  %reset_resources = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 5, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.058 = phi i32 [ %9, %land.rhs.lr.ph ], [ %dec, %cleanup.land.rhs_crit_edge ]
  %vflre.057 = phi i64 [ %shl13, %land.rhs.lr.ph ], [ %add, %cleanup.land.rhs_crit_edge ]
  %dec = add i32 %i.058, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.058)
  %tobool15.not = icmp eq i32 %i.058, 0
  br i1 %tobool15.not, label %land.rhs.read_unlock_crit_edge, label %for.body

land.rhs.read_unlock_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_unlock

for.body:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %vflre.057)
  %cmp = icmp sgt i64 %vflre.057, -1
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %if.end19

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.fm10k_iov_data, ptr %7, i32 0, i32 3, i32 %dec
  %10 = ptrtoint ptr %reset_resources to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_resources, align 8
  %call20 = tail call i32 %11(ptr noundef %hw1, ptr noundef %arrayidx) #9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  %call23 = tail call i32 %13(ptr noundef %hw1, ptr noundef %arrayidx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %for.body.cleanup_crit_edge
  %add = shl i64 %vflre.057, 1
  %tobool14.not = icmp eq i64 %add, 0
  br i1 %tobool14.not, label %cleanup.read_unlock_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup.read_unlock_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_unlock

read_unlock:                                      ; preds = %cleanup.read_unlock_crit_edge, %land.rhs.read_unlock_crit_edge, %if.end9.read_unlock_crit_edge, %if.end6.read_unlock_crit_edge, %rcu_read_lock.exit.read_unlock_crit_edge
  %call.i47 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i47, label %read_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

read_unlock.rcu_read_unlock.exit_crit_edge:       ; preds = %read_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %read_unlock
  %call1.i48 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %read_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %14 = tail call i32 @llvm.read_register.i32(metadata !36) #9
  %and.i.i.i.i.i54 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup24

cleanup24:                                        ; preds = %rcu_read_unlock.exit, %entry.cleanup24_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_iov_mbx(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %iov_data2 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 39
  %0 = ptrtoint ptr %iov_data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %iov_data2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup51_crit_edge, label %if.end

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup51

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !36) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %iov_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iov_data2, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %rcu_read_lock.exit.read_unlock_crit_edge, label %if.end6

rcu_read_lock.exit.read_unlock_crit_edge:         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_unlock

if.end6:                                          ; preds = %rcu_read_lock.exit
  %mbx_lock.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i) #9
  %next_vf_mbx = getelementptr inbounds %struct.fm10k_iov_data, ptr %7, i32 0, i32 1
  %mbx12 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6
  %process = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6, i32 0, i32 6
  %reset_lport = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 5, i32 0, i32 6
  %reset_resources = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 5, i32 0, i32 4
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6, i32 20
  %tx_ready = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 6, i32 0, i32 3
  %hw_sm_mbx_full = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 25
  %8 = ptrtoint ptr %next_vf_mbx to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %next_vf_mbx, align 4
  br label %process_mbx

process_mbx:                                      ; preds = %if.then47, %if.end6
  %9 = phi i32 [ 0, %if.then47 ], [ %.pr, %if.end6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %cond.end, label %process_mbx.for.body.preheader_crit_edge

process_mbx.for.body.preheader_crit_edge:         ; preds = %process_mbx
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

cond.end:                                         ; preds = %process_mbx
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not109 = icmp eq i32 %11, 0
  br i1 %tobool8.not109, label %cond.end.if.else_crit_edge, label %cond.end.for.body.preheader_crit_edge

cond.end.for.body.preheader_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.body.preheader:                               ; preds = %cond.end.for.body.preheader_crit_edge, %process_mbx.for.body.preheader_crit_edge
  %i.0110.ph = phi i32 [ %9, %process_mbx.for.body.preheader_crit_edge ], [ %11, %cond.end.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.preheader
  %i.0110 = phi i32 [ %dec111, %cleanup.for.body_crit_edge ], [ %i.0110.ph, %for.body.preheader ]
  %dec111 = add i32 %i.0110, -1
  %arrayidx = getelementptr %struct.fm10k_iov_data, ptr %7, i32 0, i32 3, i32 %dec111
  %glort11 = getelementptr %struct.fm10k_iov_data, ptr %7, i32 0, i32 3, i32 %dec111, i32 3
  %12 = ptrtoint ptr %glort11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %glort11, align 4
  %14 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %process, align 8
  %call = tail call i32 %15(ptr noundef %hw1, ptr noundef %mbx12) #9
  %vf_flags = getelementptr %struct.fm10k_iov_data, ptr %7, i32 0, i32 3, i32 %dec111, i32 9
  %16 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vf_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %for.body.if.end18_crit_edge, label %land.lhs.true

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %for.body
  %call15 = tail call zeroext i1 @fm10k_glort_valid_pf(ptr noundef %hw1, i16 noundef zeroext %13) #9
  br i1 %call15, label %land.lhs.true.if.end18_crit_edge, label %if.then16

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %reset_lport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset_lport, align 8
  tail call void %19(ptr noundef %hw1, ptr noundef %arrayidx) #9
  tail call void @fm10k_clear_macvlan_queue(ptr noundef %interface, i16 noundef zeroext %13, i1 noundef zeroext false) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true.if.end18_crit_edge, %for.body.if.end18_crit_edge
  %timeout = getelementptr inbounds %struct.fm10k_mbx_info, ptr %arrayidx, i32 0, i32 4
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool19.not = icmp eq i32 %21, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %reset_resources to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reset_resources, align 8
  %call23 = tail call i32 %23(ptr noundef %hw1, ptr noundef %arrayidx) #9
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 8
  %call25 = tail call i32 %25(ptr noundef %hw1, ptr noundef %arrayidx) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end18.if.end26_crit_edge
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp = icmp eq i32 %27, 2
  br i1 %cmp, label %land.lhs.true29, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.end26
  %28 = ptrtoint ptr %tx_ready to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ready, align 4
  %call33 = tail call zeroext i1 %29(ptr noundef %mbx12, i16 noundef zeroext 7) #9
  br i1 %call33, label %land.lhs.true29.cleanup_crit_edge, label %for.end

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true29.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  %process37 = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %arrayidx, i32 0, i32 6
  %30 = ptrtoint ptr %process37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %process37, align 8
  %call38 = tail call i32 %31(ptr noundef %hw1, ptr noundef %arrayidx) #9
  %tobool8.not = icmp eq i32 %dec111, 0
  br i1 %tobool8.not, label %cleanup.if.else_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.if.else_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.end:                                          ; preds = %land.lhs.true29
  %32 = ptrtoint ptr %hw_sm_mbx_full to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %hw_sm_mbx_full, align 32
  %inc = add i64 %33, 1
  store i64 %inc, ptr %hw_sm_mbx_full, align 32
  tail call void @fm10k_service_event_schedule(ptr noundef %interface) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec111)
  %cmp41 = icmp sgt i32 %dec111, -1
  br i1 %cmp41, label %if.then43, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %next_vf_mbx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %i.0110, ptr %next_vf_mbx, align 4
  br label %if.end50

if.else:                                          ; preds = %for.end.if.else_crit_edge, %cleanup.if.else_crit_edge, %cond.end.if.else_crit_edge
  %35 = ptrtoint ptr %next_vf_mbx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %next_vf_mbx, align 4
  %tobool46.not = icmp eq i32 %36, 0
  br i1 %tobool46.not, label %if.else.if.end50_crit_edge, label %if.then47

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %next_vf_mbx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %next_vf_mbx, align 4
  br label %process_mbx

if.end50:                                         ; preds = %if.else.if.end50_crit_edge, %if.then43
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #9
  br label %read_unlock

read_unlock:                                      ; preds = %if.end50, %rcu_read_lock.exit.read_unlock_crit_edge
  %call.i93 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i93, label %read_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i96

read_unlock.rcu_read_unlock.exit_crit_edge:       ; preds = %read_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i96:                                ; preds = %read_unlock
  %call1.i94 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool.not.i95, label %land.lhs.true.i96.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i98

land.lhs.true.i96.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i98:                               ; preds = %land.lhs.true.i96
  %.b4.i97 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i97, label %land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge, label %if.then.i99

land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i99:                                      ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i99, %land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i96.rcu_read_unlock.exit_crit_edge, %read_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %38 = tail call i32 @llvm.read_register.i32(metadata !36) #9
  %and.i.i.i.i.i100 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i100 to ptr
  %preempt_count.i.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i101, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i101, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup51

cleanup51:                                        ; preds = %rcu_read_unlock.exit, %entry.cleanup51_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fm10k_glort_valid_pf(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_clear_macvlan_queue(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_service_event_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_iov_suspend(ptr nocapture noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iov_data1 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %iov_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iov_data1, align 4
  %hw2 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %6 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw2, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %cond.end.if.end_crit_edge, label %do.body10, !prof !48

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body10:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  tail call void @arm_heavy_mb() #9
  %arrayidx = getelementptr i32, ptr %7, i32 50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 -65536) #9, !srcloc !50
  br label %if.end

if.end:                                           ; preds = %do.body10, %cond.end.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp33 = icmp sgt i32 %cond, 0
  br i1 %cmp33, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %reset_resources = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 5, i32 0, i32 4
  %reset_lport = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 5, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx16 = getelementptr %struct.fm10k_iov_data, ptr %3, i32 0, i32 3, i32 %i.034
  %8 = ptrtoint ptr %reset_resources to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_resources, align 8
  %call17 = tail call i32 %9(ptr noundef %hw2, ptr noundef %arrayidx16) #9
  %10 = ptrtoint ptr %reset_lport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_lport, align 8
  tail call void %11(ptr noundef %hw2, ptr noundef %arrayidx16) #9
  %glort = getelementptr %struct.fm10k_iov_data, ptr %3, i32 0, i32 3, i32 %i.034, i32 3
  %12 = ptrtoint ptr %glort to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %glort, align 4
  tail call void @fm10k_clear_macvlan_queue(ptr noundef %1, i16 noundef zeroext %13, i1 noundef zeroext false) #9
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_iov_resume(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %err_mask.i = alloca i32, align 4
  %dglort = alloca %struct.fm10k_dglort_cfg, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iov_data1 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %iov_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iov_data1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dglort) #9
  %4 = getelementptr inbounds i8, ptr %dglort, i32 6
  %5 = call ptr @memset(ptr %4, i32 0, i32 6)
  %hw2 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup39

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_mask.i) #9
  %8 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err_mask.i, align 4, !annotation !51
  %call.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %pdev, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i75 = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i75, label %if.end.fm10k_mask_aer_comp_abort.exit_crit_edge, label %if.end.i

if.end.fm10k_mask_aer_comp_abort.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fm10k_mask_aer_comp_abort.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %call.i to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call1.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add.i, ptr noundef nonnull %err_mask.i) #9
  %9 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err_mask.i, align 4
  %or.i = or i32 %10, 32768
  store i32 %or.i, ptr %err_mask.i, align 4
  %call3.i = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef %add.i, i32 noundef %or.i) #9
  br label %fm10k_mask_aer_comp_abort.exit

fm10k_mask_aer_comp_abort.exit:                   ; preds = %if.end.i, %if.end.fm10k_mask_aer_comp_abort.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_mask.i) #9
  %iov = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 5
  %11 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iov, align 8
  %conv = trunc i32 %7 to i16
  %call6 = call i32 %12(ptr noundef %hw2, i16 noundef zeroext %conv, i16 noundef zeroext %conv) #9
  %dglort_map = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 2, i32 10
  %13 = ptrtoint ptr %dglort_map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dglort_map, align 8
  %conv7 = trunc i32 %14 to i16
  %15 = ptrtoint ptr %dglort to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv7, ptr %dglort, align 2
  %idx = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 3
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %idx, align 1
  %inner_rss = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 9
  %17 = ptrtoint ptr %inner_rss to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %inner_rss, align 1
  %call8 = call zeroext i16 @fm10k_queues_per_pool(ptr noundef %hw2) #9
  %conv9 = zext i16 %call8 to i32
  %sub = add nsw i32 %conv9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i = icmp eq i32 %sub, 0
  %18 = call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #9, !range !52
  %19 = trunc i32 %18 to i8
  %20 = sub nuw nsw i8 32, %19
  %conv11 = select i1 %tobool.not.i, i8 0, i8 %20
  %rss_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 4
  %21 = ptrtoint ptr %rss_l to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv11, ptr %rss_l, align 2
  %call12 = call zeroext i16 @fm10k_vf_queue_index(ptr noundef %hw2, i16 noundef zeroext 0) #9
  %queue_b = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 1
  %22 = ptrtoint ptr %queue_b to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %call12, ptr %queue_b, align 2
  %total_vfs = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 5, i32 1
  %23 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %total_vfs, align 8
  %conv14 = zext i16 %24 to i32
  %sub15 = add nsw i32 %conv14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %tobool.not.i72 = icmp eq i32 %sub15, 0
  %25 = call i32 @llvm.ctlz.i32(i32 %sub15, i1 true) #9, !range !52
  %26 = trunc i32 %25 to i8
  %27 = sub nuw nsw i8 32, %26
  %conv17 = select i1 %tobool.not.i72, i8 0, i8 %27
  %vsi_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 6
  %28 = ptrtoint ptr %vsi_l to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv17, ptr %vsi_l, align 2
  %vsi_b = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 2
  %29 = ptrtoint ptr %vsi_b to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %vsi_b, align 2
  %configure_dglort_map = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 2, i32 0, i32 16
  %30 = ptrtoint ptr %configure_dglort_map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %configure_dglort_map, align 8
  %call20 = call i32 %31(ptr noundef %hw2, ptr noundef nonnull %dglort) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp79 = icmp sgt i32 %7, 0
  br i1 %cmp79, label %for.body.lr.ph, label %fm10k_mask_aer_comp_abort.exit.cleanup39_crit_edge

fm10k_mask_aer_comp_abort.exit.cleanup39_crit_edge: ; preds = %fm10k_mask_aer_comp_abort.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup39

for.body.lr.ph:                                   ; preds = %fm10k_mask_aer_comp_abort.exit
  %set_lport = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 5, i32 0, i32 5
  %assign_default_mac_vlan = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 5, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %32 = ptrtoint ptr %dglort_map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dglort_map, align 8
  %neg = xor i32 %33, -1
  %shr = lshr i32 %neg, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %i.080, i32 %shr)
  %cmp25 = icmp eq i32 %i.080, %shr
  br i1 %cmp25, label %for.body.cleanup39_crit_edge, label %for.inc

for.body.cleanup39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup39

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.fm10k_iov_data, ptr %3, i32 0, i32 3, i32 %i.080
  %34 = ptrtoint ptr %set_lport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_lport, align 4
  %conv31 = trunc i32 %i.080 to i16
  %call32 = call i32 %35(ptr noundef %hw2, ptr noundef %arrayidx, i16 noundef zeroext %conv31, i8 noundef zeroext 2) #9
  %36 = ptrtoint ptr %assign_default_mac_vlan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %assign_default_mac_vlan, align 4
  %call35 = call i32 %37(ptr noundef %hw2, ptr noundef %arrayidx) #9
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 8
  %call38 = call i32 %39(ptr noundef %hw2, ptr noundef %arrayidx) #9
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.cleanup39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup39

cleanup39:                                        ; preds = %for.inc.cleanup39_crit_edge, %for.body.cleanup39_crit_edge, %fm10k_mask_aer_comp_abort.exit.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup39_crit_edge ], [ 0, %fm10k_mask_aer_comp_abort.exit.cleanup39_crit_edge ], [ 0, %for.body.cleanup39_crit_edge ], [ 0, %for.inc.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dglort) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fm10k_queues_per_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fm10k_vf_queue_index(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_iov_update_pvid(ptr noundef %interface, i16 noundef zeroext %glort, i16 noundef zeroext %pvid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iov_data1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 39
  %0 = ptrtoint ptr %iov_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iov_data1, align 4
  %hw2 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dglort_map = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 10
  %2 = ptrtoint ptr %dglort_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dglort_map, align 8
  %4 = trunc i32 %3 to i16
  %conv3 = sub i16 %glort, %4
  %conv4 = zext i16 %conv3 to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv4)
  %cmp.not = icmp ugt i32 %6, %conv4
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %sw_vid = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %conv4, i32 4
  %7 = ptrtoint ptr %sw_vid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sw_vid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %pvid)
  %cmp11.not = icmp eq i16 %8, %pvid
  br i1 %cmp11.not, label %if.end7.cleanup_crit_edge, label %if.then13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %conv4
  %9 = ptrtoint ptr %sw_vid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %pvid, ptr %sw_vid, align 2
  %assign_default_mac_vlan = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 5, i32 0, i32 3
  %10 = ptrtoint ptr %assign_default_mac_vlan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %assign_default_mac_vlan, align 4
  %call = tail call i32 %11(ptr noundef %hw2, ptr noundef %arrayidx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_iov_disable(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_num_vf(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @pci_vfs_assigned(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %do.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #12
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @pci_disable_sriov(ptr noundef %pdev) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  tail call fastcc void @fm10k_iov_free_data(ptr noundef %pdev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_iov_free_data(ptr nocapture noundef readonly %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iov_data = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %iov_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iov_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end.i:                                       ; preds = %entry
  %hw2.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw2.i, align 8
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %cond.end.i.if.end.i_crit_edge, label %do.body10.i, !prof !48

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body10.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  tail call void @arm_heavy_mb() #9
  %arrayidx.i = getelementptr i32, ptr %7, i32 50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 -65536) #9, !srcloc !50
  br label %if.end.i

if.end.i:                                         ; preds = %do.body10.i, %cond.end.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp33.i = icmp sgt i32 %5, 0
  br i1 %cmp33.i, label %for.body.lr.ph.i, label %if.end.i.fm10k_iov_suspend.exit_crit_edge

if.end.i.fm10k_iov_suspend.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fm10k_iov_suspend.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %reset_resources.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 5, i32 0, i32 4
  %reset_lport.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 5, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx16.i = getelementptr %struct.fm10k_iov_data, ptr %3, i32 0, i32 3, i32 %i.034.i
  %8 = ptrtoint ptr %reset_resources.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_resources.i, align 8
  %call17.i = tail call i32 %9(ptr noundef %hw2.i, ptr noundef %arrayidx16.i) #9
  %10 = ptrtoint ptr %reset_lport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_lport.i, align 8
  tail call void %11(ptr noundef %hw2.i, ptr noundef %arrayidx16.i) #9
  %glort.i = getelementptr %struct.fm10k_iov_data, ptr %3, i32 0, i32 3, i32 %i.034.i, i32 3
  %12 = ptrtoint ptr %glort.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %glort.i, align 4
  tail call void @fm10k_clear_macvlan_queue(ptr noundef %1, i16 noundef zeroext %13, i1 noundef zeroext false) #9
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.body.i.fm10k_iov_suspend.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.fm10k_iov_suspend.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fm10k_iov_suspend.exit

fm10k_iov_suspend.exit:                           ; preds = %for.body.i.fm10k_iov_suspend.exit_crit_edge, %if.end.i.fm10k_iov_suspend.exit_crit_edge
  %14 = ptrtoint ptr %iov_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iov_data, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %fm10k_iov_suspend.exit.if.end5_crit_edge, label %do.end

fm10k_iov_suspend.exit.if.end5_crit_edge:         ; preds = %fm10k_iov_suspend.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end:                                           ; preds = %fm10k_iov_suspend.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rcu = getelementptr inbounds %struct.fm10k_iov_data, ptr %15, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %fm10k_iov_suspend.exit.if.end5_crit_edge
  %16 = ptrtoint ptr %iov_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %iov_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_iov_configure(ptr noundef %pdev, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_num_vf(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @pci_vfs_assigned(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %do.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @pci_disable_sriov(ptr noundef %pdev) #9
  tail call fastcc void @fm10k_iov_free_data(ptr noundef %pdev)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %num_vfs.addr.0 = phi i32 [ %call, %do.end ], [ %num_vfs, %if.else ]
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %iov_data1.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %iov_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iov_data1.i, align 4
  %hw2.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %iov.i = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 41, i32 5
  %4 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iov.i, align 8
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs.addr.0)
  %tobool6.not.i = icmp eq i32 %num_vfs.addr.0, 0
  br i1 %tobool6.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end8.i.i.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %if.end5.i
  %6 = mul i32 %num_vfs.addr.0, 4048
  %7 = add i32 %6, 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #13
  %tobool10.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool10.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end12.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i.i.i
  %8 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %num_vfs.addr.0, ptr %call9.i.i.i, align 128
  %smax.i = tail call i32 @llvm.smax.i32(i32 %num_vfs.addr.0, i32 0) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end12.i
  %i.0.i = phi i32 [ 0, %if.end12.i ], [ %add.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %smax.i)
  %exitcond.not.i = icmp eq i32 %i.0.i, %smax.i
  br i1 %exitcond.not.i, label %if.end6, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.fm10k_iov_data, ptr %call9.i.i.i, i32 0, i32 3, i32 %i.0.i
  %add.i = add nuw i32 %i.0.i, 1
  %conv.i = trunc i32 %add.i to i8
  %vsi.i = getelementptr %struct.fm10k_iov_data, ptr %call9.i.i.i, i32 0, i32 3, i32 %i.0.i, i32 7
  %9 = ptrtoint ptr %vsi.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %vsi.i, align 8
  %conv15.i = trunc i32 %i.0.i to i8
  %vf_idx.i = getelementptr %struct.fm10k_iov_data, ptr %call9.i.i.i, i32 0, i32 3, i32 %i.0.i, i32 8
  %10 = ptrtoint ptr %vf_idx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv15.i, ptr %vf_idx.i, align 1
  %call17.i = tail call i32 @fm10k_pfvf_mbx_init(ptr noundef %hw2.i, ptr noundef %arrayidx.i, ptr noundef nonnull @iov_mbx_data, i8 noundef zeroext %conv15.i) #9
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.thread.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %cleanup

if.end6:                                          ; preds = %for.cond.i
  %11 = ptrtoint ptr %iov_data1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i.i, ptr %iov_data1.i, align 4
  %call23.i = tail call i32 @fm10k_iov_resume(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %num_vfs.addr.0, i32 %call)
  %cmp.not = icmp eq i32 %num_vfs.addr.0, %call
  br i1 %cmp.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i32 @pci_enable_sriov(ptr noundef %pdev, i32 noundef %num_vfs.addr.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %do.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.8, i32 noundef %call10) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %cleanup.thread.i, %if.end8.i.i.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ %num_vfs.addr.0, %if.then9.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ 0, %if.end5.i.cleanup_crit_edge ], [ %call17.i, %cleanup.thread.i ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_iov_update_stats(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iov_data1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 39
  %0 = ptrtoint ptr %iov_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iov_data1, align 4
  %hw2 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %update_stats = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 5, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %update_stats, align 4
  %stats = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %i.013, i32 1
  %conv = trunc i32 %i.013 to i16
  tail call void %5(ptr noundef %hw2, ptr noundef %stats, i16 noundef zeroext %conv) #9
  %inc = add nuw i32 %i.013, 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_ndo_set_vf_mac(ptr noundef %netdev, i32 noundef %vf_idx, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %iov_data1 = getelementptr i8, ptr %netdev, i32 5180
  %0 = ptrtoint ptr %iov_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iov_data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vf_idx)
  %cmp.not = icmp ugt i32 %3, %vf_idx
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac, align 4
  %add.ptr.i17 = getelementptr i8, ptr %mac, i32 4
  %6 = ptrtoint ptr %add.ptr.i17 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i17, align 2
  %conv.i = zext i16 %7 to i32
  %or.i = or i32 %5, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %8 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  %or.cond = or i1 %tobool.i.not.i, %cmp.i
  br i1 %or.cond, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx
  %mac7 = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 6
  %9 = ptrtoint ptr %mac7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %mac7, align 4
  %10 = ptrtoint ptr %add.ptr.i17 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i17, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac7, i32 4
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i, align 2
  %hw1.i = getelementptr i8, ptr %netdev, i32 15552
  %mbx_lock.i.i = getelementptr i8, ptr %netdev, i32 18528
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i.i) #9
  %reset_lport.i = getelementptr i8, ptr %netdev, i32 15728
  %13 = ptrtoint ptr %reset_lport.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset_lport.i, align 8
  tail call void %14(ptr noundef %hw1.i, ptr noundef %arrayidx) #9
  %glort.i = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 3
  %15 = ptrtoint ptr %glort.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %glort.i, align 4
  tail call void @fm10k_clear_macvlan_queue(ptr noundef %add.ptr.i, i16 noundef zeroext %16, i1 noundef zeroext false) #9
  %assign_default_mac_vlan.i = getelementptr i8, ptr %netdev, i32 15716
  %17 = ptrtoint ptr %assign_default_mac_vlan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %assign_default_mac_vlan.i, align 4
  %call.i = tail call i32 %18(ptr noundef %hw1.i, ptr noundef %arrayidx) #9
  %set_lport.i = getelementptr i8, ptr %netdev, i32 15724
  %19 = ptrtoint ptr %set_lport.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_lport.i, align 4
  %vf_idx.i = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 8
  %21 = ptrtoint ptr %vf_idx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vf_idx.i, align 1
  %conv.i19 = zext i8 %22 to i16
  %call6.i = tail call i32 %20(ptr noundef %hw1.i, ptr noundef %arrayidx, i16 noundef zeroext %conv.i19, i8 noundef zeroext 2) #9
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_ndo_set_vf_vlan(ptr noundef %netdev, i32 noundef %vf_idx, i16 noundef zeroext %vid, i8 noundef zeroext %qos, i16 noundef zeroext %vlan_proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %iov_data1 = getelementptr i8, ptr %netdev, i32 5180
  %0 = ptrtoint ptr %iov_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iov_data1, align 4
  %hw2 = getelementptr i8, ptr %netdev, i32 15552
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vf_idx)
  %cmp.not = icmp ugt i32 %3, %vf_idx
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qos)
  %tobool3.not = icmp ne i8 %qos, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %vid)
  %cmp6 = icmp ugt i16 %vid, 4094
  %or.cond = or i1 %cmp6, %tobool3.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %vlan_proto)
  %cmp11.not = icmp eq i16 %vlan_proto, -32512
  br i1 %cmp11.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %pf_vid = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 5
  %4 = ptrtoint ptr %pf_vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pf_vid, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %vid)
  %cmp18 = icmp eq i16 %5, %vid
  br i1 %cmp18, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx
  %6 = ptrtoint ptr %pf_vid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %vid, ptr %pf_vid, align 8
  %update_vlan = getelementptr i8, ptr %netdev, i32 15588
  %7 = ptrtoint ptr %update_vlan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %update_vlan, align 4
  %vsi = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 7
  %9 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vsi, align 8
  %call23 = tail call i32 %8(ptr noundef %hw2, i32 noundef 268369920, i8 noundef zeroext %10, i1 noundef zeroext false) #9
  %mbx_lock.i.i = getelementptr i8, ptr %netdev, i32 18528
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i.i) #9
  %reset_lport.i = getelementptr i8, ptr %netdev, i32 15728
  %11 = ptrtoint ptr %reset_lport.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_lport.i, align 8
  tail call void %12(ptr noundef %hw2, ptr noundef %arrayidx) #9
  %glort.i = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 3
  %13 = ptrtoint ptr %glort.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %glort.i, align 4
  tail call void @fm10k_clear_macvlan_queue(ptr noundef %add.ptr.i, i16 noundef zeroext %14, i1 noundef zeroext false) #9
  %assign_default_mac_vlan.i = getelementptr i8, ptr %netdev, i32 15716
  %15 = ptrtoint ptr %assign_default_mac_vlan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %assign_default_mac_vlan.i, align 4
  %call.i = tail call i32 %16(ptr noundef %hw2, ptr noundef %arrayidx) #9
  %set_lport.i = getelementptr i8, ptr %netdev, i32 15724
  %17 = ptrtoint ptr %set_lport.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_lport.i, align 4
  %vf_idx.i = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 8
  %19 = ptrtoint ptr %vf_idx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vf_idx.i, align 1
  %conv.i = zext i8 %20 to i16
  %call6.i = tail call i32 %18(ptr noundef %hw2, ptr noundef %arrayidx, i16 noundef zeroext %conv.i, i8 noundef zeroext 2) #9
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -93, %if.end9.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_ndo_set_vf_bw(ptr noundef %netdev, i32 noundef %vf_idx, i32 noundef %min_rate, i32 noundef %max_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iov_data1 = getelementptr i8, ptr %netdev, i32 5180
  %0 = ptrtoint ptr %iov_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iov_data1, align 4
  %hw2 = getelementptr i8, ptr %netdev, i32 15552
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vf_idx)
  %cmp.not = icmp ule i32 %3, %vf_idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %max_rate)
  %4 = icmp ugt i32 %max_rate, 100000
  %or.cond = or i1 %cmp.not, %4
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %rate = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 2
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %max_rate, ptr %rate, align 8
  %configure_tc = getelementptr i8, ptr %netdev, i32 15708
  %6 = ptrtoint ptr %configure_tc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %configure_tc, align 4
  %conv = trunc i32 %vf_idx to i16
  %call9 = tail call i32 %7(ptr noundef %hw2, i16 noundef zeroext %conv, i32 noundef %max_rate) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fm10k_ndo_get_vf_config(ptr nocapture noundef readonly %netdev, i32 noundef %vf_idx, ptr nocapture noundef writeonly %ivi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iov_data1 = getelementptr i8, ptr %netdev, i32 5180
  %0 = ptrtoint ptr %iov_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iov_data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vf_idx)
  %cmp.not = icmp ugt i32 %3, %vf_idx
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %ivi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vf_idx, ptr %ivi, align 4
  %rate = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 2
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate, align 8
  %max_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 7
  %7 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %max_tx_rate, align 4
  %min_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 6
  %8 = ptrtoint ptr %min_tx_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %min_tx_rate, align 4
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  %mac3 = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 6
  %9 = ptrtoint ptr %mac3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac3, align 4
  %11 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mac, align 4
  %add.ptr.i18 = getelementptr i8, ptr %mac3, i32 4
  %12 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i18, align 2
  %add.ptr1.i = getelementptr %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i, align 2
  %pf_vid = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 5
  %15 = ptrtoint ptr %pf_vid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pf_vid, align 8
  %conv = zext i16 %16 to i32
  %vlan = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 2
  %17 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %vlan, align 4
  %qos = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 3
  %18 = ptrtoint ptr %qos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_ndo_get_vf_stats(ptr noundef %netdev, i32 noundef %vf_idx, ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iov_data1 = getelementptr i8, ptr %netdev, i32 5180
  %0 = ptrtoint ptr %iov_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iov_data1, align 4
  %hw2 = getelementptr i8, ptr %netdev, i32 15552
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vf_idx)
  %cmp.not = icmp ugt i32 %3, %vf_idx
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call zeroext i16 @fm10k_queues_per_pool(ptr noundef %hw2) #9
  %conv = zext i16 %call3 to i32
  %stats4 = getelementptr %struct.fm10k_iov_data, ptr %1, i32 0, i32 3, i32 %vf_idx, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3)
  %cmp547.not = icmp eq i16 %call3, 0
  br i1 %cmp547.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %tx_packets11 = getelementptr inbounds %struct.ifla_vf_stats, ptr %stats, i32 0, i32 1
  %rx_bytes15 = getelementptr inbounds %struct.ifla_vf_stats, ptr %stats, i32 0, i32 2
  %tx_bytes19 = getelementptr inbounds %struct.ifla_vf_stats, ptr %stats, i32 0, i32 3
  %rx_dropped = getelementptr inbounds %struct.ifla_vf_stats, ptr %stats, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %idx.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx7 = getelementptr %struct.fm10k_hw_stats_q, ptr %stats4, i32 %idx.048
  %rx_packets = getelementptr %struct.fm10k_hw_stats_q, ptr %stats4, i32 %idx.048, i32 3
  %4 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rx_packets, align 8
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stats, align 8
  %add = add i64 %7, %5
  store i64 %add, ptr %stats, align 8
  %tx_packets = getelementptr %struct.fm10k_hw_stats_q, ptr %stats4, i32 %idx.048, i32 1
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_packets, align 8
  %10 = ptrtoint ptr %tx_packets11 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_packets11, align 8
  %add12 = add i64 %11, %9
  store i64 %add12, ptr %tx_packets11, align 8
  %rx_bytes = getelementptr %struct.fm10k_hw_stats_q, ptr %stats4, i32 %idx.048, i32 2
  %12 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_bytes, align 8
  %14 = ptrtoint ptr %rx_bytes15 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_bytes15, align 8
  %add16 = add i64 %15, %13
  store i64 %add16, ptr %rx_bytes15, align 8
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx7, align 8
  %18 = ptrtoint ptr %tx_bytes19 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_bytes19, align 8
  %add20 = add i64 %19, %17
  store i64 %add20, ptr %tx_bytes19, align 8
  %rx_drops = getelementptr %struct.fm10k_hw_stats_q, ptr %stats4, i32 %idx.048, i32 4
  %20 = ptrtoint ptr %rx_drops to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_drops, align 8
  %22 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_dropped, align 8
  %add23 = add i64 %23, %21
  store i64 %add23, ptr %rx_dropped, align 8
  %inc = add nuw nsw i32 %idx.048, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_pfvf_mbx_init(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_msg_test(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_iov_msg_msix_pf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_iov_msg_queue_mac_vlan(ptr noundef %hw, ptr nocapture noundef readonly %results, ptr noundef %mbx) #0 align 64 {
entry:
  %mac = alloca [6 x i8], align 4
  %vlan = alloca i16, align 2
  %vid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #9
  %2 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %3 = call ptr @memset(ptr %mac, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan) #9
  %4 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %vlan, align 2, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vid) #9
  %5 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %vid, align 4, !annotation !51
  %vf_flags = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 9
  %6 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vf_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %tobool.not = icmp ult i8 %7, 16
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %results to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %results, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %land.lhs.true.land.lhs.true27_crit_edge, label %if.then3

land.lhs.true.land.lhs.true27_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true27

if.then3:                                         ; preds = %land.lhs.true
  %call = call i32 @fm10k_tlv_attr_get_value(ptr noundef nonnull %9, ptr noundef nonnull %vid, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vid, align 4
  %and = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %and9 = and i32 %11, -32769
  %12 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and9, ptr %vid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %11)
  %tobool11.not = icmp ult i32 %11, 65536
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end7
  %pf_vid = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 5
  %13 = ptrtoint ptr %pf_vid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pf_vid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool13.not = icmp eq i16 %14, 0
  br i1 %tobool13.not, label %if.then12.if.end25_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %if.end7
  %conv16 = trunc i32 %and9 to i16
  %call17 = call i32 @fm10k_iov_select_vid(ptr noundef %mbx, i16 noundef zeroext %conv16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call17, ptr %vid, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end20, %if.then12.if.end25_crit_edge
  %update_vlan = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 0, i32 7
  %16 = ptrtoint ptr %update_vlan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %update_vlan, align 4
  %18 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vid, align 4
  %vsi = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 7
  %20 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vsi, align 8
  %call24 = call i32 %17(ptr noundef %hw, i32 noundef %19, i8 noundef zeroext %21, i1 noundef zeroext %tobool8.not) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %if.end25.land.lhs.true27_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25.land.lhs.true27_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end25.land.lhs.true27_crit_edge, %land.lhs.true.land.lhs.true27_crit_edge
  %arrayidx28 = getelementptr ptr, ptr %results, i32 2
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %land.lhs.true27.land.lhs.true66_crit_edge, label %if.then30

land.lhs.true27.land.lhs.true66_crit_edge:        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true66

if.then30:                                        ; preds = %land.lhs.true27
  %call32 = call i32 @fm10k_tlv_attr_get_mac_vlan(ptr noundef nonnull %23, ptr noundef nonnull %mac, ptr noundef nonnull %vlan) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.then30
  %mac36 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 6
  %24 = ptrtoint ptr %mac36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mac36, align 4
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end35.if.end46_crit_edge

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

is_valid_ether_addr.exit:                         ; preds = %if.end35
  %add.ptr.i.i = getelementptr %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 6, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %28 to i32
  %or.i.i = or i32 %25, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end46_crit_edge, label %land.lhs.true40

is_valid_ether_addr.exit.if.end46_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

land.lhs.true40:                                  ; preds = %is_valid_ether_addr.exit
  %29 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %30, %25
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %2, align 4
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i = xor i16 %34, %32
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true40.if.end46_crit_edge, label %land.lhs.true40.cleanup_crit_edge

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true40.if.end46_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true40.if.end46_crit_edge, %is_valid_ether_addr.exit.if.end46_crit_edge, %if.end35.if.end46_crit_edge
  %35 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vlan, align 2
  %and53 = and i16 %36, 32767
  store i16 %and53, ptr %vlan, align 2
  %call55 = call i32 @fm10k_iov_select_vid(ptr noundef %mbx, i16 noundef zeroext %and53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end46.cleanup_crit_edge, label %if.end64

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %tobool49.not = icmp sgt i16 %36, -1
  %conv60 = trunc i32 %call55 to i16
  %37 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv60, ptr %vlan, align 2
  %glort = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 3
  %38 = ptrtoint ptr %glort to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %glort, align 4
  %call63 = call i32 @fm10k_queue_mac_request(ptr noundef %1, i16 noundef zeroext %39, ptr noundef nonnull %mac, i16 noundef zeroext %conv60, i1 noundef zeroext %tobool49.not) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool65.not = icmp eq i32 %call63, 0
  br i1 %tobool65.not, label %if.end64.land.lhs.true66_crit_edge, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64.land.lhs.true66_crit_edge:               ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.end64.land.lhs.true66_crit_edge, %land.lhs.true27.land.lhs.true66_crit_edge
  %arrayidx67 = getelementptr ptr, ptr %results, i32 4
  %40 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %41, null
  br i1 %tobool68.not, label %land.lhs.true66.cleanup_crit_edge, label %if.then69

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then69:                                        ; preds = %land.lhs.true66
  %call72 = call i32 @fm10k_tlv_attr_get_mac_vlan(ptr noundef nonnull %41, ptr noundef nonnull %mac, ptr noundef nonnull %vlan) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75:                                         ; preds = %if.then69
  %42 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %vf_flags, align 2
  %44 = and i8 %43, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool79.not = icmp eq i8 %44, 0
  br i1 %tobool79.not, label %if.end75.cleanup_crit_edge, label %if.end81

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end81:                                         ; preds = %if.end75
  %45 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vlan, align 2
  %and88 = and i16 %46, 32767
  store i16 %and88, ptr %vlan, align 2
  %call90 = call i32 @fm10k_iov_select_vid(ptr noundef %mbx, i16 noundef zeroext %and88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end81.cleanup_crit_edge, label %if.end94

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end94:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %46)
  %tobool84.not = icmp sgt i16 %46, -1
  %conv95 = trunc i32 %call90 to i16
  %47 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv95, ptr %vlan, align 2
  %glort96 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 3
  %48 = ptrtoint ptr %glort96 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %glort96, align 4
  %call99 = call i32 @fm10k_queue_mac_request(ptr noundef %1, i16 noundef zeroext %49, ptr noundef nonnull %mac, i16 noundef zeroext %conv95, i1 noundef zeroext %tobool84.not) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end81.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.then69.cleanup_crit_edge, %land.lhs.true66.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %land.lhs.true40.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3.cleanup_crit_edge ], [ -2, %if.then12.cleanup_crit_edge ], [ %call17, %if.else.cleanup_crit_edge ], [ %call32, %if.then30.cleanup_crit_edge ], [ -2, %land.lhs.true40.cleanup_crit_edge ], [ %call55, %if.end46.cleanup_crit_edge ], [ %call72, %if.then69.cleanup_crit_edge ], [ -2, %if.end75.cleanup_crit_edge ], [ %call90, %if.end81.cleanup_crit_edge ], [ %call63, %if.end64.cleanup_crit_edge ], [ %call99, %if.end94 ], [ 0, %land.lhs.true66.cleanup_crit_edge ], [ %call24, %if.end25.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vid) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_iov_msg_lport_state_pf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_iov_msg_error(ptr noundef %hw, ptr noundef %results, ptr noundef %mbx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %pdev1 = getelementptr inbounds %struct.fm10k_intfc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %results to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %results, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 65535
  %vf_idx = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 8
  %8 = ptrtoint ptr %vf_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vf_idx, align 1
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %and, i32 noundef %conv) #12
  %call = tail call i32 @fm10k_tlv_msg_error(ptr noundef %hw, ptr noundef %results, ptr noundef %mbx) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_get_value(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_iov_select_vid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_get_mac_vlan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_queue_mac_request(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_msg_error(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_iov.c", i32 483, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @fm10k_iov_disable._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @fm10k_iov_disable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_iov.c", i32 497, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @fm10k_iov_configure._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @fm10k_iov_configure._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_iov.c", i32 514, i32 4}
!15 = !{ptr @fm10k_iov_configure._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @fm10k_iov_configure._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_iov.c", i32 464, i32 4}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fm10k_iov_alloc_data._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @fm10k_iov_alloc_data._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @iov_mbx_data, !30, !"iov_mbx_data", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_iov.c", i32 144, i32 36}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_iov.c", i32 15, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @fm10k_iov_msg_error._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @fm10k_iov_msg_error._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2149697674}
!47 = !{i64 2149697940}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 2156508245}
!50 = !{i64 6076261}
!51 = !{!"auto-init"}
!52 = !{i32 0, i32 33}
