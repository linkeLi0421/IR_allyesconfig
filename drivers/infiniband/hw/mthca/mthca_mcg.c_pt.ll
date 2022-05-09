; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_mcg.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_mcg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mthca_mailbox = type { i32, ptr }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.173, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.176, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.144 }
%struct.anon.144 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i64, i64, i64, ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.176 = type { %struct.anon.178 }
%struct.anon.178 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.179 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.179 = type { ptr, ptr, %struct.mthca_buddy }
%struct.mthca_eq_table = type { %struct.mthca_alloc, ptr, i32, i32, [3 x %struct.mthca_eq], i64, ptr, i32, i32, i8 }
%struct.mthca_eq = type { ptr, i32, i32, i32, i16, i16, i32, i32, ptr, %struct.mthca_mr, [64 x i8] }
%struct.mthca_cq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_array = type { ptr }
%struct.mthca_srq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_qp_table = type { %struct.mthca_alloc, i32, i32, i32, %struct.spinlock, %struct.mthca_array, ptr, ptr, ptr }
%struct.mthca_av_table = type { ptr, i32, i64, ptr, %struct.mthca_alloc }
%struct.mthca_mcg_table = type { %struct.mutex, %struct.mthca_alloc, ptr }
%struct.mthca_catas_err = type { i64, ptr, i32, %struct.timer_list, %struct.list_head }
%struct.mthca_uar = type { i32, i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32, %struct.atomic_t, %struct.mthca_mr, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mthca_mr = type { %struct.ib_mr, ptr, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.129, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.129 = type { %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mthca_mgm = type { i32, [3 x i32], [16 x i8], [56 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }

@zero_gid = internal constant { [16 x i8], [16 x i8] } zeroinitializer, align 32
@mthca_multicast_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No AMGM entries left\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mthca_multicast_attach\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/infiniband/hw/mthca/mthca_mcg.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_multicast_attach._entry_ptr = internal global ptr @mthca_multicast_attach._entry, section ".printk_index", align 4
@mthca_multicast_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"READ_MGM failed (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@mthca_multicast_attach._entry_ptr.7 = internal global ptr @mthca_multicast_attach._entry.5, section ".printk_index", align 4
@mthca_debug_level = external dso_local local_unnamed_addr global i32, align 4
@mthca_multicast_attach._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 167, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"QP %06x already a member of MGM\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mthca_multicast_attach._entry_ptr.11 = internal global ptr @mthca_multicast_attach._entry.8, section ".printk_index", align 4
@mthca_multicast_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MGM at index %x is full.\0A\00", [38 x i8] zeroinitializer }, align 32
@mthca_multicast_attach._entry_ptr.14 = internal global ptr @mthca_multicast_attach._entry.12, section ".printk_index", align 4
@mthca_multicast_attach._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WRITE_MGM failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mthca_multicast_attach._entry_ptr.17 = internal global ptr @mthca_multicast_attach._entry.15, section ".printk_index", align 4
@mthca_multicast_attach._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"READ_MGM failed %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mthca_multicast_attach._entry_ptr.20 = internal global ptr @mthca_multicast_attach._entry.18, section ".printk_index", align 4
@mthca_multicast_attach._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WRITE_MGM returned %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mthca_multicast_attach._entry_ptr.23 = internal global ptr @mthca_multicast_attach._entry.21, section ".printk_index", align 4
@mthca_multicast_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MGID %pI6 not found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mthca_multicast_detach\00", [41 x i8] zeroinitializer }, align 32
@mthca_multicast_detach._entry_ptr = internal global ptr @mthca_multicast_detach._entry, section ".printk_index", align 4
@mthca_multicast_detach._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 249, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"QP %06x not found in MGM\0A\00", [38 x i8] zeroinitializer }, align 32
@mthca_multicast_detach._entry_ptr.28 = internal global ptr @mthca_multicast_detach._entry.26, section ".printk_index", align 4
@mthca_multicast_detach._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.25, ptr @.str.2, i32 259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mthca_multicast_detach._entry_ptr.30 = internal global ptr @mthca_multicast_detach._entry.29, section ".printk_index", align 4
@mthca_multicast_detach._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.2, i32 273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"READ_MGM returned %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mthca_multicast_detach._entry_ptr.33 = internal global ptr @mthca_multicast_detach._entry.31, section ".printk_index", align 4
@mthca_multicast_detach._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.25, ptr @.str.2, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mthca_multicast_detach._entry_ptr.35 = internal global ptr @mthca_multicast_detach._entry.34, section ".printk_index", align 4
@mthca_multicast_detach._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.2, i32 293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mthca_multicast_detach._entry_ptr.37 = internal global ptr @mthca_multicast_detach._entry.36, section ".printk_index", align 4
@mthca_multicast_detach._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.25, ptr @.str.2, i32 301, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mthca_multicast_detach._entry_ptr.39 = internal global ptr @mthca_multicast_detach._entry.38, section ".printk_index", align 4
@mthca_init_mcg_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dev->mcg_table.mutex\00", [42 x i8] zeroinitializer }, align 32
@find_mgm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MGID_HASH failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"find_mgm\00", [23 x i8] zeroinitializer }, align 32
@find_mgm._entry_ptr = internal global ptr @find_mgm._entry, section ".printk_index", align 4
@find_mgm._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.42, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@find_mgm._entry_ptr.44 = internal global ptr @find_mgm._entry.43, section ".printk_index", align 4
@find_mgm._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.2, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Found zero MGID in AMGM.\0A\00", [38 x i8] zeroinitializer }, align 32
@find_mgm._entry_ptr.47 = internal global ptr @find_mgm._entry.45, section ".printk_index", align 4
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"zero_gid\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 46, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 150, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 157, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 166, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 176, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 183, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 193, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 201, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 236, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 249, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 259, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 273, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 281, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 293, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 301, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 327, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 81, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 94, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [43 x i8] c"../drivers/infiniband/hw/mthca/mthca_mcg.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 100, i32 5 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @find_mgm._entry, ptr @find_mgm._entry.43, ptr @find_mgm._entry.45, ptr @find_mgm._entry_ptr, ptr @find_mgm._entry_ptr.44, ptr @find_mgm._entry_ptr.47, ptr @mthca_multicast_attach._entry, ptr @mthca_multicast_attach._entry.12, ptr @mthca_multicast_attach._entry.15, ptr @mthca_multicast_attach._entry.18, ptr @mthca_multicast_attach._entry.21, ptr @mthca_multicast_attach._entry.5, ptr @mthca_multicast_attach._entry.8, ptr @mthca_multicast_attach._entry_ptr, ptr @mthca_multicast_attach._entry_ptr.11, ptr @mthca_multicast_attach._entry_ptr.14, ptr @mthca_multicast_attach._entry_ptr.17, ptr @mthca_multicast_attach._entry_ptr.20, ptr @mthca_multicast_attach._entry_ptr.23, ptr @mthca_multicast_attach._entry_ptr.7, ptr @mthca_multicast_detach._entry, ptr @mthca_multicast_detach._entry.26, ptr @mthca_multicast_detach._entry.29, ptr @mthca_multicast_detach._entry.31, ptr @mthca_multicast_detach._entry.34, ptr @mthca_multicast_detach._entry.36, ptr @mthca_multicast_detach._entry.38, ptr @mthca_multicast_detach._entry_ptr, ptr @mthca_multicast_detach._entry_ptr.28, ptr @mthca_multicast_detach._entry_ptr.30, ptr @mthca_multicast_detach._entry_ptr.33, ptr @mthca_multicast_detach._entry_ptr.35, ptr @mthca_multicast_detach._entry_ptr.37, ptr @mthca_multicast_detach._entry_ptr.39, ptr @zero_gid, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.32, ptr @mthca_init_mcg_table.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.46], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_gid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_attach._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_attach._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_attach._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_attach._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_detach._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_detach._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_detach._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_detach._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_detach._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_multicast_detach._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_mcg_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_mgm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_mgm._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_mgm._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_multicast_attach(ptr nocapture noundef readonly %ibqp, ptr nocapture noundef readonly %gid, i16 noundef zeroext %lid) local_unnamed_addr #0 align 64 {
entry:
  %hash = alloca i16, align 2
  %index = alloca i32, align 4
  %prev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hash) #5
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %hash, align 2, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #5
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %index, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #5
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %prev, align 4, !annotation !84
  %call1 = tail call ptr @mthca_alloc_mailbox(ptr noundef %1, i32 noundef 3264) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.mthca_mailbox, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %mcg_table = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %mcg_table, i32 noundef 0) #5
  %call4 = call fastcc i32 @find_mgm(ptr noundef %1, ptr noundef %gid, ptr noundef %call1, ptr noundef nonnull %hash, ptr noundef nonnull %prev, ptr noundef nonnull %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.if.end121_crit_edge

if.end.if.end121_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end6
  %gid8 = getelementptr inbounds %struct.mthca_mgm, ptr %7, i32 0, i32 2
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %gid8, ptr noundef nonnull dereferenceable(16) @zero_gid, i32 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %if.then7.if.end35.sink.split_crit_edge, label %if.then7.if.end35_crit_edge

if.then7.if.end35_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then7.if.end35.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split

if.else:                                          ; preds = %if.end6
  %alloc = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 27, i32 1
  %call18 = call i32 @mthca_alloc(ptr noundef %alloc) #5
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call18, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %do.end, label %if.end22

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str) #9
  br label %land.lhs.true102

if.end22:                                         ; preds = %if.else
  %call23 = call i32 @mthca_READ_MGM(ptr noundef %1, i32 noundef %call18, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %pdev29 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %pdev29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev29, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.6, i32 noundef %call23) #9
  br label %land.lhs.true102

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %15 = call ptr @memset(ptr %7, i32 0, i32 256)
  %gid32 = getelementptr inbounds %struct.mthca_mgm, ptr %7, i32 0, i32 2
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %if.end31, %if.then7.if.end35.sink.split_crit_edge
  %gid8.sink = phi ptr [ %gid32, %if.end31 ], [ %gid8, %if.then7.if.end35.sink.split_crit_edge ]
  %link.0.ph = phi i32 [ 1, %if.end31 ], [ 0, %if.then7.if.end35.sink.split_crit_edge ]
  %16 = call ptr @memcpy(ptr %gid8.sink, ptr %gid, i32 16)
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.then7.if.end35_crit_edge
  %link.0 = phi i32 [ 0, %if.then7.if.end35_crit_edge ], [ %link.0.ph, %if.end35.sink.split ]
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %17 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qp_num, align 4
  %or = or i32 %18, -2147483648
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35
  %i.0199 = phi i32 [ 0, %if.end35 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mthca_mgm, ptr %7, i32 0, i32 3, i32 %i.0199
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %or)
  %cmp37 = icmp eq i32 %20, %or
  br i1 %cmp37, label %do.body39, label %if.else51

do.body39:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %21 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool40.not = icmp eq i32 %21, 0
  br i1 %tobool40.not, label %do.body39.if.end121_crit_edge, label %do.end44

do.body39.if.end121_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

do.end44:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %pdev45 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %pdev45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev45, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev46, ptr noundef nonnull @.str.9, i32 noundef %18) #9
  br label %if.end121

if.else51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool54.not = icmp sgt i32 %20, -1
  br i1 %tobool54.not, label %if.end69, label %for.inc

for.inc:                                          ; preds = %if.else51
  %inc = add nuw nsw i32 %i.0199, 1
  %exitcond.not = icmp eq i32 %inc, 56
  br i1 %exitcond.not, label %do.end66, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end66:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %pdev67 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %pdev67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev67, align 8
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.13, i32 noundef %27) #9
  br label %out

if.end69:                                         ; preds = %if.else51
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index, align 4
  %call70 = call i32 @mthca_WRITE_MGM(ptr noundef %1, i32 noundef %30, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end78, label %do.end75

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %pdev76 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev76, align 8
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev77, ptr noundef nonnull @.str.16, i32 noundef %call70) #9
  br label %out

if.end78:                                         ; preds = %if.end69
  br i1 %cmp.not, label %if.end81, label %if.end78.if.end121_crit_edge

if.end78.if.end121_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.end81:                                         ; preds = %if.end78
  %33 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prev, align 4
  %call82 = call i32 @mthca_READ_MGM(ptr noundef %1, i32 noundef %34, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end90, label %do.end87

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %pdev88 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %pdev88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev88, align 8
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev89, ptr noundef nonnull @.str.19, i32 noundef %call82) #9
  br label %land.lhs.true102

if.end90:                                         ; preds = %if.end81
  %shl = shl i32 %30, 6
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shl, ptr %7, align 4
  %call91 = call i32 @mthca_WRITE_MGM(ptr noundef %1, i32 noundef %34, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end90.if.end121_crit_edge, label %do.end96

if.end90.if.end121_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %pdev97 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %pdev97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev97, align 8
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev98, ptr noundef nonnull @.str.22, i32 noundef %call91) #9
  br label %land.lhs.true102

out:                                              ; preds = %do.end75, %do.end66
  %err.0 = phi i32 [ -12, %do.end66 ], [ -22, %do.end75 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link.0)
  %tobool101.not = icmp eq i32 %link.0, 0
  br i1 %tobool101.not, label %out.if.end121_crit_edge, label %out.land.lhs.true102_crit_edge

out.land.lhs.true102_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true102

out.if.end121_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

land.lhs.true102:                                 ; preds = %out.land.lhs.true102_crit_edge, %do.end96, %do.end87, %do.end28, %do.end
  %err.0205 = phi i32 [ %err.0, %out.land.lhs.true102_crit_edge ], [ %call23, %do.end28 ], [ -12, %do.end ], [ %call91, %do.end96 ], [ %call82, %do.end87 ]
  %40 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp103.not = icmp eq i32 %41, -1
  br i1 %cmp103.not, label %land.lhs.true102.if.end121_crit_edge, label %do.body105

land.lhs.true102.if.end121_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

do.body105:                                       ; preds = %land.lhs.true102
  %num_mgms = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 31
  %42 = ptrtoint ptr %num_mgms to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_mgms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp106 = icmp slt i32 %41, %43
  br i1 %cmp106, label %do.body110, label %do.end118, !prof !85

do.body110:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/mthca/mthca_mcg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 205, 0\0A.popsection", ""() #5, !srcloc !86
  unreachable

do.end118:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  %alloc120 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 27, i32 1
  call void @mthca_free(ptr noundef %alloc120, i32 noundef %41) #5
  br label %if.end121

if.end121:                                        ; preds = %do.end118, %land.lhs.true102.if.end121_crit_edge, %out.if.end121_crit_edge, %if.end90.if.end121_crit_edge, %if.end78.if.end121_crit_edge, %do.end44, %do.body39.if.end121_crit_edge, %if.end.if.end121_crit_edge
  %err.0193 = phi i32 [ %err.0205, %do.end118 ], [ %err.0205, %land.lhs.true102.if.end121_crit_edge ], [ %err.0, %out.if.end121_crit_edge ], [ 0, %do.body39.if.end121_crit_edge ], [ 0, %do.end44 ], [ 0, %if.end78.if.end121_crit_edge ], [ 0, %if.end90.if.end121_crit_edge ], [ %call4, %if.end.if.end121_crit_edge ]
  call void @mutex_unlock(ptr noundef %mcg_table) #5
  call void @mthca_free_mailbox(ptr noundef %1, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %err.0193, %if.end121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hash) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_alloc_mailbox(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_mgm(ptr noundef %dev, ptr nocapture noundef readonly %gid, ptr noundef %mgm_mailbox, ptr noundef %hash, ptr nocapture noundef writeonly %prev, ptr nocapture noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.mthca_mailbox, ptr %mgm_mailbox, i32 0, i32 1
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %call = tail call ptr @mthca_alloc_mailbox(ptr noundef %dev, i32 noundef 3264) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf2 = getelementptr inbounds %struct.mthca_mailbox, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf2, align 4
  %4 = call ptr @memcpy(ptr %3, ptr %gid, i32 16)
  %call3 = tail call i32 @mthca_MGID_HASH(ptr noundef %dev, ptr noundef %call, ptr noundef %hash) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.41, i32 noundef %call3) #9
  br label %out

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %hash to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hash, align 2
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %index, align 4
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %prev, align 4
  %gid17 = getelementptr inbounds %struct.mthca_mgm, ptr %1, i32 0, i32 2
  br label %do.body7

do.body7:                                         ; preds = %if.end36.do.body7_crit_edge, %if.end6
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %call8 = tail call i32 @mthca_READ_MGM(ptr noundef %dev, i32 noundef %12, ptr noundef %mgm_mailbox) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %pdev14 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev14, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.6, i32 noundef %call8) #9
  br label %out

if.end16:                                         ; preds = %do.body7
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %gid17, ptr noundef nonnull dereferenceable(16) @zero_gid, i32 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool19.not = icmp eq i32 %bcmp, 0
  br i1 %tobool19.not, label %if.then20, label %if.end30

if.then20:                                        ; preds = %if.end16
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %17 = ptrtoint ptr %hash to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hash, align 2
  %conv21 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv21)
  %cmp.not = icmp eq i32 %16, %conv21
  br i1 %cmp.not, label %if.then20.out_crit_edge, label %do.end26

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %pdev27 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %19 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev27, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.46) #9
  br label %out

if.end30:                                         ; preds = %if.end16
  %bcmp69 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %gid17, ptr noundef dereferenceable(16) %gid, i32 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp69)
  %tobool34.not = icmp eq i32 %bcmp69, 0
  br i1 %tobool34.not, label %if.end30.out_crit_edge, label %if.end36

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end36:                                         ; preds = %if.end30
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  %23 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %prev, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %shr = lshr i32 %25, 6
  store i32 %shr, ptr %index, align 4
  %tobool38.not = icmp ult i32 %25, 64
  br i1 %tobool38.not, label %do.end39, label %if.end36.do.body7_crit_edge

if.end36.do.body7_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body7

do.end39:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %index, align 4
  br label %out

out:                                              ; preds = %do.end39, %if.end30.out_crit_edge, %do.end26, %if.then20.out_crit_edge, %do.end13, %do.end
  %err.0 = phi i32 [ %call3, %do.end ], [ %call8, %do.end13 ], [ 0, %do.end39 ], [ -22, %do.end26 ], [ 0, %if.then20.out_crit_edge ], [ 0, %if.end30.out_crit_edge ]
  tail call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_READ_MGM(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_WRITE_MGM(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_multicast_detach(ptr nocapture noundef readonly %ibqp, ptr noundef %gid, i16 noundef zeroext %lid) local_unnamed_addr #0 align 64 {
entry:
  %hash = alloca i16, align 2
  %prev = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hash) #5
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %hash, align 2, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #5
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %prev, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %index, align 4, !annotation !84
  %call1 = tail call ptr @mthca_alloc_mailbox(ptr noundef %1, i32 noundef 3264) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call1 to i32
  br label %cleanup141

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.mthca_mailbox, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %mcg_table = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %mcg_table, i32 noundef 0) #5
  %call4 = call fastcc i32 @find_mgm(ptr noundef %1, ptr noundef %gid, ptr noundef %call1, ptr noundef nonnull %hash, ptr noundef nonnull %prev, ptr noundef nonnull %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %10 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qp_num, align 4
  %or = or i32 %11, -2147483648
  br label %for.body

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.24, ptr noundef %gid) #9
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %loc.0219 = phi i32 [ -1, %for.cond.preheader ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %i.0218 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mthca_mgm, ptr %7, i32 0, i32 3, i32 %i.0218
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %or)
  %cmp12 = icmp eq i32 %15, %or
  %spec.select = select i1 %cmp12, i32 %i.0218, i32 %loc.0219
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool17.not = icmp sgt i32 %15, -1
  br i1 %tobool17.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0218, 1
  %exitcond.not = icmp eq i32 %inc, 56
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.0218, %for.body.for.end_crit_edge ], [ 56, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp20 = icmp eq i32 %spec.select, -1
  br i1 %cmp20, label %do.end24, label %if.end28

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %pdev25 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev25, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qp_num, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.27, i32 noundef %19) #9
  br label %out

if.end28:                                         ; preds = %for.end
  %sub = add nsw i32 %i.0.lcssa, -1
  %arrayidx30 = getelementptr %struct.mthca_mgm, ptr %7, i32 0, i32 3, i32 %sub
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx30, align 4
  %arrayidx32 = getelementptr %struct.mthca_mgm, ptr %7, i32 0, i32 3, i32 %spec.select
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx32, align 4
  store i32 0, ptr %arrayidx30, align 4
  %call36 = call i32 @mthca_WRITE_MGM(ptr noundef %1, i32 noundef %9, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %pdev42 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev42, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.22, i32 noundef %call36) #9
  br label %out

if.end44:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0.lcssa)
  %cmp45.not = icmp eq i32 %i.0.lcssa, 1
  br i1 %cmp45.not, label %if.end47, label %if.end44.out_crit_edge

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end47:                                         ; preds = %if.end44
  %25 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp48 = icmp eq i32 %26, -1
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %7, align 4
  br i1 %cmp48, label %if.then49, label %if.else91

if.then49:                                        ; preds = %if.end47
  %shr = lshr i32 %28, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %28)
  %tobool50.not = icmp ult i32 %28, 64
  br i1 %tobool50.not, label %if.end63, label %if.then51

if.then51:                                        ; preds = %if.then49
  %call52 = call i32 @mthca_READ_MGM(ptr noundef %1, i32 noundef %shr, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end63.thread, label %do.end57

do.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  %pdev58 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev58, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.32, i32 noundef %call52) #9
  br label %out

if.end63:                                         ; preds = %if.then49
  %gid61 = getelementptr inbounds %struct.mthca_mgm, ptr %7, i32 0, i32 2
  %31 = call ptr @memset(ptr %gid61, i32 0, i32 16)
  %call64 = call i32 @mthca_WRITE_MGM(ptr noundef %1, i32 noundef %9, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.out_crit_edge, label %if.end63.do.end69_crit_edge

if.end63.do.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end69

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end63.thread:                                  ; preds = %if.then51
  %call64215 = call i32 @mthca_WRITE_MGM(ptr noundef %1, i32 noundef %9, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64215)
  %tobool65.not216 = icmp eq i32 %call64215, 0
  br i1 %tobool65.not216, label %do.body75, label %if.end63.thread.do.end69_crit_edge

if.end63.thread.do.end69_crit_edge:               ; preds = %if.end63.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end69

do.end69:                                         ; preds = %if.end63.thread.do.end69_crit_edge, %if.end63.do.end69_crit_edge
  %call64217 = phi i32 [ %call64215, %if.end63.thread.do.end69_crit_edge ], [ %call64, %if.end63.do.end69_crit_edge ]
  %pdev70 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %pdev70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev70, align 8
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71, ptr noundef nonnull @.str.22, i32 noundef %call64217) #9
  br label %out

do.body75:                                        ; preds = %if.end63.thread
  %num_mgms = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 31
  %34 = ptrtoint ptr %num_mgms to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_mgms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %35)
  %cmp76 = icmp slt i32 %shr, %35
  br i1 %cmp76, label %do.body80, label %do.end88, !prof !85

do.body80:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/mthca/mthca_mcg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 285, 0\0A.popsection", ""() #5, !srcloc !87
  unreachable

do.end88:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  %alloc = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 27, i32 1
  call void @mthca_free(ptr noundef %alloc, i32 noundef %shr) #5
  br label %out

if.else91:                                        ; preds = %if.end47
  %call94 = call i32 @mthca_READ_MGM(ptr noundef %1, i32 noundef %26, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end102, label %do.end99

do.end99:                                         ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #7
  %pdev100 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %pdev100 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev100, align 8
  %dev101 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev101, ptr noundef nonnull @.str.32, i32 noundef %call94) #9
  br label %out

if.end102:                                        ; preds = %if.else91
  %shr93 = and i32 %28, -64
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr93, ptr %7, align 4
  %call104 = call i32 @mthca_WRITE_MGM(ptr noundef %1, i32 noundef %26, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.body113, label %do.end109

do.end109:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  %pdev110 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %pdev110 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev110, align 8
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111, ptr noundef nonnull @.str.22, i32 noundef %call104) #9
  br label %out

do.body113:                                       ; preds = %if.end102
  %num_mgms115 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 31
  %41 = ptrtoint ptr %num_mgms115 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_mgms115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %42)
  %cmp116 = icmp slt i32 %9, %42
  br i1 %cmp116, label %do.body124, label %do.end132, !prof !85

do.body124:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/mthca/mthca_mcg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #5, !srcloc !88
  unreachable

do.end132:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  %alloc134 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 27, i32 1
  call void @mthca_free(ptr noundef %alloc134, i32 noundef %9) #5
  br label %out

out:                                              ; preds = %do.end132, %do.end109, %do.end99, %do.end88, %do.end69, %if.end63.out_crit_edge, %do.end57, %if.end44.out_crit_edge, %do.end41, %do.end24, %do.end, %if.end.out_crit_edge
  %err.2 = phi i32 [ %call4, %if.end.out_crit_edge ], [ -22, %do.end ], [ -22, %do.end24 ], [ %call36, %do.end41 ], [ 0, %if.end44.out_crit_edge ], [ %call52, %do.end57 ], [ %call64217, %do.end69 ], [ 0, %do.end88 ], [ %call94, %do.end99 ], [ %call104, %do.end109 ], [ 0, %do.end132 ], [ 0, %if.end63.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mcg_table) #5
  call void @mthca_free_mailbox(ptr noundef %1, ptr noundef %call1) #5
  br label %cleanup141

cleanup141:                                       ; preds = %out, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %err.2, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hash) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_init_mcg_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_mgms = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 31
  %0 = ptrtoint ptr %num_mgms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_mgms, align 4
  %num_amgms = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 32
  %2 = ptrtoint ptr %num_amgms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_amgms, align 8
  %add = add i32 %3, %1
  %alloc = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 27, i32 1
  %sub = add i32 %add, -1
  %call = tail call i32 @mthca_alloc_init(ptr noundef %alloc, i32 noundef %add, i32 noundef %sub, i32 noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mcg_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 27
  tail call void @__mutex_init(ptr noundef %mcg_table, ptr noundef nonnull @.str.40, ptr noundef nonnull @mthca_init_mcg_table.__key) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cleanup_mcg_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 27, i32 1
  tail call void @mthca_alloc_cleanup(ptr noundef %alloc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_alloc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_MGID_HASH(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !66, !67, !68, !70, !71, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 150, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mthca_multicast_attach._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mthca_multicast_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 157, i32 4}
!10 = !{ptr @mthca_multicast_attach._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mthca_multicast_attach._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 166, i32 4}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mthca_multicast_attach._entry.8, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mthca_multicast_attach._entry_ptr.11, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 176, i32 3}
!19 = !{ptr @mthca_multicast_attach._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mthca_multicast_attach._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 183, i32 3}
!23 = !{ptr @mthca_multicast_attach._entry.15, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mthca_multicast_attach._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 193, i32 3}
!27 = !{ptr @mthca_multicast_attach._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mthca_multicast_attach._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 201, i32 3}
!31 = !{ptr @mthca_multicast_attach._entry.21, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mthca_multicast_attach._entry_ptr.23, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 236, i32 3}
!35 = !{ptr @.str.25, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mthca_multicast_detach._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @mthca_multicast_detach._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 249, i32 3}
!40 = !{ptr @mthca_multicast_detach._entry.26, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mthca_multicast_detach._entry_ptr.28, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @mthca_multicast_detach._entry.29, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 259, i32 3}
!44 = !{ptr @mthca_multicast_detach._entry_ptr.30, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.32, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 273, i32 5}
!47 = !{ptr @mthca_multicast_detach._entry.31, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mthca_multicast_detach._entry_ptr.33, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mthca_multicast_detach._entry.34, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 281, i32 4}
!51 = !{ptr @mthca_multicast_detach._entry_ptr.35, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mthca_multicast_detach._entry.36, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 293, i32 4}
!54 = !{ptr @mthca_multicast_detach._entry_ptr.37, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @mthca_multicast_detach._entry.38, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 301, i32 4}
!57 = !{ptr @mthca_multicast_detach._entry_ptr.39, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @mthca_init_mcg_table.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 327, i32 2}
!60 = !{ptr @.str.40, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @zero_gid, !62, !"zero_gid", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 46, i32 17}
!63 = !{ptr @.str.41, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 81, i32 3}
!65 = !{ptr @.str.42, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @find_mgm._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @find_mgm._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @find_mgm._entry.43, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 94, i32 4}
!70 = !{ptr @find_mgm._entry_ptr.44, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.46, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/mthca/mthca_mcg.c", i32 100, i32 5}
!73 = !{ptr @find_mgm._entry.45, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @find_mgm._entry_ptr.47, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 2158144945, i64 2158145449, i64 2158144982, i64 2158145038, i64 2158145072, i64 2158145096, i64 2158145137, i64 2158145158, i64 2158145186, i64 2158145220}
!87 = !{i64 2158155583, i64 2158156087, i64 2158155620, i64 2158155676, i64 2158155710, i64 2158155734, i64 2158155775, i64 2158155796, i64 2158155824, i64 2158155858}
!88 = !{i64 2158160764, i64 2158161268, i64 2158160801, i64 2158160857, i64 2158160891, i64 2158160915, i64 2158160956, i64 2158160977, i64 2158161005, i64 2158161039}
