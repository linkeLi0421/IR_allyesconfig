; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_reset.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
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
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }

@mthca_debug_level = external dso_local local_unnamed_addr global i32, align 4
@mthca_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Found bridge: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mthca_reset\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/infiniband/hw/mthca/mthca_reset.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr = internal global ptr @mthca_reset._entry, section ".printk_index", align 4
@mthca_reset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No bridge found for %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.8 = internal global ptr @mthca_reset._entry.5, section ".printk_index", align 4
@mthca_reset._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 108, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Couldn't save HCA PCI header, aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.12 = internal global ptr @mthca_reset._entry.9, section ".printk_index", align 4
@mthca_reset._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 129, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Couldn't save HCA bridge PCI header, aborting.\0A\00", [48 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.15 = internal global ptr @mthca_reset._entry.13, section ".printk_index", align 4
@mthca_reset._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 137, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Couldn't locate HCA bridge PCI-X capability, aborting.\0A\00", [40 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.18 = internal global ptr @mthca_reset._entry.16, section ".printk_index", align 4
@mthca_reset._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 150, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Couldn't map HCA reset register, aborting.\0A\00", [52 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.21 = internal global ptr @mthca_reset._entry.19, section ".printk_index", align 4
@mthca_reset._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 170, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Couldn't access HCA after reset, aborting.\0A\00", [52 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.24 = internal global ptr @mthca_reset._entry.22, section ".printk_index", align 4
@mthca_reset._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 182, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"PCI device did not come back after reset, aborting.\0A\00", [43 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.27 = internal global ptr @mthca_reset._entry.25, section ".printk_index", align 4
@mthca_reset._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 193, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Couldn't restore HCA bridge Upstream split transaction control, aborting.\0A\00", [53 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.30 = internal global ptr @mthca_reset._entry.28, section ".printk_index", align 4
@mthca_reset._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 200, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Couldn't restore HCA bridge Downstream split transaction control, aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.33 = internal global ptr @mthca_reset._entry.31, section ".printk_index", align 4
@mthca_reset._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 214, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Couldn't restore HCA bridge reg %x, aborting.\0A\00", [49 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.36 = internal global ptr @mthca_reset._entry.34, section ".printk_index", align 4
@mthca_reset._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 223, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Couldn't restore HCA bridge COMMAND, aborting.\0A\00", [48 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.39 = internal global ptr @mthca_reset._entry.37, section ".printk_index", align 4
@mthca_reset._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 233, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Couldn't restore HCA PCI-X command register, aborting.\0A\00", [40 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.42 = internal global ptr @mthca_reset._entry.40, section ".printk_index", align 4
@mthca_reset._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.1, ptr @.str.2, i32 244, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Couldn't restore HCA PCI Express Device Control register, aborting.\0A\00", [59 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.45 = internal global ptr @mthca_reset._entry.43, section ".printk_index", align 4
@mthca_reset._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.1, ptr @.str.2, i32 252, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Couldn't restore HCA PCI Express Link control register, aborting.\0A\00", [61 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.48 = internal global ptr @mthca_reset._entry.46, section ".printk_index", align 4
@mthca_reset._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.1, ptr @.str.2, i32 264, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't restore HCA reg %x, aborting.\0A\00", [56 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.51 = internal global ptr @mthca_reset._entry.49, section ".printk_index", align 4
@mthca_reset._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.1, ptr @.str.2, i32 273, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Couldn't restore HCA COMMAND, aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@mthca_reset._entry_ptr.54 = internal global ptr @mthca_reset._entry.52, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 77, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 89, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 107, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 128, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 136, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 149, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 169, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 181, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 192, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 199, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 213, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 222, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 232, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 243, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 251, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 263, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [45 x i8] c"../drivers/infiniband/hw/mthca/mthca_reset.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 272, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @mthca_reset._entry, ptr @mthca_reset._entry.13, ptr @mthca_reset._entry.16, ptr @mthca_reset._entry.19, ptr @mthca_reset._entry.22, ptr @mthca_reset._entry.25, ptr @mthca_reset._entry.28, ptr @mthca_reset._entry.31, ptr @mthca_reset._entry.34, ptr @mthca_reset._entry.37, ptr @mthca_reset._entry.40, ptr @mthca_reset._entry.43, ptr @mthca_reset._entry.46, ptr @mthca_reset._entry.49, ptr @mthca_reset._entry.5, ptr @mthca_reset._entry.52, ptr @mthca_reset._entry.9, ptr @mthca_reset._entry_ptr, ptr @mthca_reset._entry_ptr.12, ptr @mthca_reset._entry_ptr.15, ptr @mthca_reset._entry_ptr.18, ptr @mthca_reset._entry_ptr.21, ptr @mthca_reset._entry_ptr.24, ptr @mthca_reset._entry_ptr.27, ptr @mthca_reset._entry_ptr.30, ptr @mthca_reset._entry_ptr.33, ptr @mthca_reset._entry_ptr.36, ptr @mthca_reset._entry_ptr.39, ptr @mthca_reset._entry_ptr.42, ptr @mthca_reset._entry_ptr.45, ptr @mthca_reset._entry_ptr.48, ptr @mthca_reset._entry_ptr.51, ptr @mthca_reset._entry_ptr.54, ptr @mthca_reset._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reset._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_reset(ptr noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

while.cond.preheader:                             ; preds = %entry
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %vendor413 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %vendor413 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor413, align 8
  %conv414 = zext i16 %5 to i32
  %device415 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %device415 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device415, align 2
  %conv2416 = zext i16 %7 to i32
  %add417 = add nuw nsw i32 %conv2416, 2
  %call418 = tail call ptr @pci_get_device(i32 noundef %conv414, i32 noundef %add417, ptr noundef null) #5
  %cmp.not419 = icmp eq ptr %call418, null
  br i1 %cmp.not419, label %while.cond.preheader.do.end23.critedge_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.do.end23.critedge_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.critedge

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call420 = phi ptr [ %call, %if.end18.while.body_crit_edge ], [ %call418, %while.cond.preheader.while.body_crit_edge ]
  %hdr_type = getelementptr inbounds %struct.pci_dev, ptr %call420, i32 0, i32 13
  %8 = ptrtoint ptr %hdr_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hdr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp5 = icmp eq i8 %9, 1
  br i1 %cmp5, label %land.lhs.true, label %while.body.if.end18_crit_edge

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %while.body
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %call420, i32 0, i32 2
  %10 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subordinate, align 4
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 8
  %cmp8 = icmp eq ptr %11, %15
  br i1 %cmp8, label %do.body, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %16 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %do.body.if.end29_crit_edge, label %do.end

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.end:                                           ; preds = %do.body
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %call420, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %call420, i32 0, i32 44
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %do.end.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i) #8
  br label %if.end29

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %while.body.if.end18_crit_edge
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vendor, align 8
  %conv = zext i16 %24 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 8
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device, align 2
  %conv2 = zext i16 %26 to i32
  %add = add nuw nsw i32 %conv2, 2
  %call = tail call ptr @pci_get_device(i32 noundef %conv, i32 noundef %add, ptr noundef nonnull %call420) #5
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end18.do.end23.critedge_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end18.do.end23.critedge_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.critedge

do.end23.critedge:                                ; preds = %if.end18.do.end23.critedge_crit_edge, %while.cond.preheader.do.end23.critedge_crit_edge
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %init_name.i.i395 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i395 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i395, align 8
  %tobool.not.i.i396 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i396, label %if.end.i.i398, label %do.end23.critedge.pci_name.exit400_crit_edge

do.end23.critedge.pci_name.exit400_crit_edge:     ; preds = %do.end23.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit400

if.end.i.i398:                                    ; preds = %do.end23.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev25, align 4
  br label %pci_name.exit400

pci_name.exit400:                                 ; preds = %if.end.i.i398, %do.end23.critedge.pci_name.exit400_crit_edge
  %retval.0.i.i399 = phi ptr [ %32, %if.end.i.i398 ], [ %30, %do.end23.critedge.pci_name.exit400_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i399) #8
  br label %if.end29

if.end29:                                         ; preds = %pci_name.exit400, %pci_name.exit, %do.body.if.end29_crit_edge, %entry.if.end29_crit_edge
  %bridge.1 = phi ptr [ null, %entry.if.end29_crit_edge ], [ null, %pci_name.exit400 ], [ %call420, %pci_name.exit ], [ %call420, %do.body.if.end29_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 256) #9
  %tobool31.not = icmp eq ptr %call7.i, null
  br i1 %tobool31.not, label %if.end29.cleanup285_crit_edge, label %for.cond.preheader

if.end29.cleanup285_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup285

for.cond.preheader:                               ; preds = %if.end29
  %pdev42 = getelementptr inbounds %struct.mthca_dev, ptr %mdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0422 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %34 = and i32 %i.0422, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %34)
  %switch = icmp eq i32 %34, 22
  br i1 %switch, label %for.body.for.inc_crit_edge, label %if.end41

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end41:                                         ; preds = %for.body
  %35 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev42, align 8
  %mul = shl i32 %i.0422, 2
  %add.ptr = getelementptr i32, ptr %call7.i, i32 %i.0422
  %call43 = tail call i32 @pci_read_config_dword(ptr noundef %36, i32 noundef %mul, ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end41.for.inc_crit_edge, label %if.then45

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev42, align 8
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.10) #8
  br label %free_hca

for.inc:                                          ; preds = %if.end41.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0422, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %39 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev42, align 8
  %call53 = tail call zeroext i8 @pci_find_capability(ptr noundef %40, i32 noundef 7) #5
  %conv54 = zext i8 %call53 to i32
  %41 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev42, align 8
  %pcie_cap.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %pcie_cap.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pcie_cap.i, align 8
  %conv.i = zext i8 %44 to i32
  %tobool57.not = icmp eq ptr %bridge.1, null
  br i1 %tobool57.not, label %for.end.if.end98_crit_edge, label %if.then58

for.end.if.end98_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then58:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i394 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3264, i32 noundef 256) #9
  %tobool60.not = icmp eq ptr %call7.i394, null
  br i1 %tobool60.not, label %if.then58.free_hca_crit_edge, label %if.then58.for.body66_crit_edge

if.then58.for.body66_crit_edge:                   ; preds = %if.then58
  br label %for.body66

if.then58.free_hca_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_hca

for.body66:                                       ; preds = %for.inc85.for.body66_crit_edge, %if.then58.for.body66_crit_edge
  %i.1424 = phi i32 [ %inc86, %for.inc85.for.body66_crit_edge ], [ 0, %if.then58.for.body66_crit_edge ]
  %46 = and i32 %i.1424, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %46)
  %switch393 = icmp eq i32 %46, 22
  br i1 %switch393, label %for.body66.for.inc85_crit_edge, label %if.end73

for.body66.for.inc85_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc85

if.end73:                                         ; preds = %for.body66
  %mul74 = shl i32 %i.1424, 2
  %add.ptr75 = getelementptr i32, ptr %call7.i394, i32 %i.1424
  %call76 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %bridge.1, i32 noundef %mul74, ptr noundef %add.ptr75) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end73.for.inc85_crit_edge, label %if.then78

if.end73.for.inc85_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc85

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev42, align 8
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83, ptr noundef nonnull @.str.14) #8
  br label %free_bh

for.inc85:                                        ; preds = %if.end73.for.inc85_crit_edge, %for.body66.for.inc85_crit_edge
  %inc86 = add nuw nsw i32 %i.1424, 1
  %exitcond435.not = icmp eq i32 %inc86, 64
  br i1 %exitcond435.not, label %for.end87, label %for.inc85.for.body66_crit_edge

for.inc85.for.body66_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body66

for.end87:                                        ; preds = %for.inc85
  %call88 = tail call zeroext i8 @pci_find_capability(ptr noundef nonnull %bridge.1, i32 noundef 7) #5
  %conv89 = zext i8 %call88 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call88)
  %tobool90.not = icmp eq i8 %call88, 0
  br i1 %tobool90.not, label %if.then91, label %for.end87.if.end98_crit_edge

for.end87.if.end98_crit_edge:                     ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then91:                                        ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev42, align 8
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96, ptr noundef nonnull @.str.17) #8
  br label %free_bh

if.end98:                                         ; preds = %for.end87.if.end98_crit_edge, %for.end.if.end98_crit_edge
  %bridge_header.0 = phi ptr [ %call7.i394, %for.end87.if.end98_crit_edge ], [ null, %for.end.if.end98_crit_edge ]
  %bridge_pcix_cap.0 = phi i32 [ %conv89, %for.end87.if.end98_crit_edge ], [ 0, %for.end.if.end98_crit_edge ]
  %51 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev42, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 47
  %53 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %resource, align 8
  %add100 = add i32 %54, 983056
  %call101 = tail call ptr @ioremap(i32 noundef %add100, i32 noundef 4) #5
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %cleanup, label %cleanup.cont

cleanup:                                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev42, align 8
  %dev108 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.20) #8
  br label %free_bh

cleanup.cont:                                     ; preds = %if.end98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call101, i32 1) #5, !srcloc !84
  tail call void @iounmap(ptr noundef nonnull %call101) #5
  tail call void @msleep(i32 noundef 1000) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #5
  %57 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %v, align 4, !annotation !85
  br label %for.body116

for.body116:                                      ; preds = %if.end131.for.body116_crit_edge, %cleanup.cont
  %c.0426 = phi i32 [ 0, %cleanup.cont ], [ %inc133, %if.end131.for.body116_crit_edge ]
  br i1 %tobool57.not, label %cond.false, label %for.body116.cond.end_crit_edge

for.body116.cond.end_crit_edge:                   ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev42, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body116.cond.end_crit_edge
  %cond = phi ptr [ %59, %cond.false ], [ %bridge.1, %for.body116.cond.end_crit_edge ]
  %call119 = call i32 @pci_read_config_dword(ptr noundef %cond, i32 noundef 0, ptr noundef nonnull %v) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end127, label %cond.end.cleanup140.thread_crit_edge

cond.end.cleanup140.thread_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup140.thread

if.end127:                                        ; preds = %cond.end
  %60 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp128.not = icmp eq i32 %61, -1
  br i1 %cmp128.not, label %if.end131, label %good

if.end131:                                        ; preds = %if.end127
  call void @msleep(i32 noundef 100) #5
  %inc133 = add nuw nsw i32 %c.0426, 1
  %exitcond436.not = icmp eq i32 %inc133, 100
  br i1 %exitcond436.not, label %if.end131.cleanup140.thread_crit_edge, label %if.end131.for.body116_crit_edge

if.end131.for.body116_crit_edge:                  ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body116

if.end131.cleanup140.thread_crit_edge:            ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup140.thread

cleanup140.thread:                                ; preds = %if.end131.cleanup140.thread_crit_edge, %cond.end.cleanup140.thread_crit_edge
  %.str.23.sink = phi ptr [ @.str.23, %cond.end.cleanup140.thread_crit_edge ], [ @.str.26, %if.end131.cleanup140.thread_crit_edge ]
  %62 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev42, align 8
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev126, ptr noundef nonnull %.str.23.sink) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #5
  br label %free_bh

good:                                             ; preds = %if.end127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #5
  br i1 %tobool57.not, label %good.if.end203_crit_edge, label %if.then144

good.if.end203_crit_edge:                         ; preds = %good
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end203

if.then144:                                       ; preds = %good
  %add145 = add nuw nsw i32 %bridge_pcix_cap.0, 8
  %div390 = lshr i32 %add145, 2
  %arrayidx147 = getelementptr i32, ptr %bridge_header.0, i32 %div390
  %64 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx147, align 4
  %call148 = call i32 @pci_write_config_dword(ptr noundef nonnull %bridge.1, i32 noundef %add145, i32 noundef %65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end156, label %if.then150

if.then150:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev42, align 8
  %dev155 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev155, ptr noundef nonnull @.str.29) #8
  br label %free_bh

if.end156:                                        ; preds = %if.then144
  %add157 = add nuw nsw i32 %bridge_pcix_cap.0, 12
  %div159391 = lshr i32 %add157, 2
  %arrayidx160 = getelementptr i32, ptr %bridge_header.0, i32 %div159391
  %68 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx160, align 4
  %call161 = call i32 @pci_write_config_dword(ptr noundef nonnull %bridge.1, i32 noundef %add157, i32 noundef %69) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end156.for.body173_crit_edge, label %if.then163

if.end156.for.body173_crit_edge:                  ; preds = %if.end156
  br label %for.body173

if.then163:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev42, align 8
  %dev168 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev168, ptr noundef nonnull @.str.32) #8
  br label %free_bh

for.body173:                                      ; preds = %for.inc190.for.body173_crit_edge, %if.end156.for.body173_crit_edge
  %i.2427 = phi i32 [ %inc191, %for.inc190.for.body173_crit_edge ], [ 0, %if.end156.for.body173_crit_edge ]
  %mul174 = shl i32 %i.2427, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul174)
  %cmp175 = icmp eq i32 %mul174, 4
  br i1 %cmp175, label %for.body173.for.inc190_crit_edge, label %if.end178

for.body173.for.inc190_crit_edge:                 ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc190

if.end178:                                        ; preds = %for.body173
  %arrayidx180 = getelementptr i32, ptr %bridge_header.0, i32 %i.2427
  %72 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx180, align 4
  %call181 = call i32 @pci_write_config_dword(ptr noundef nonnull %bridge.1, i32 noundef %mul174, i32 noundef %73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end178.for.inc190_crit_edge, label %if.then183

if.end178.for.inc190_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc190

if.then183:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev42, align 8
  %dev188 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev188, ptr noundef nonnull @.str.35, i32 noundef %i.2427) #8
  br label %free_bh

for.inc190:                                       ; preds = %if.end178.for.inc190_crit_edge, %for.body173.for.inc190_crit_edge
  %inc191 = add nuw nsw i32 %i.2427, 1
  %exitcond437.not = icmp eq i32 %inc191, 16
  br i1 %exitcond437.not, label %for.end192, label %for.inc190.for.body173_crit_edge

for.inc190.for.body173_crit_edge:                 ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body173

for.end192:                                       ; preds = %for.inc190
  %arrayidx193 = getelementptr i32, ptr %bridge_header.0, i32 1
  %76 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx193, align 4
  %call194 = call i32 @pci_write_config_dword(ptr noundef nonnull %bridge.1, i32 noundef 4, i32 noundef %77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %for.end192.if.end203_crit_edge, label %if.then196

for.end192.if.end203_crit_edge:                   ; preds = %for.end192
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end203

if.then196:                                       ; preds = %for.end192
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev42, align 8
  %dev201 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev201, ptr noundef nonnull @.str.38) #8
  br label %free_bh

if.end203:                                        ; preds = %for.end192.if.end203_crit_edge, %good.if.end203_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call53)
  %tobool204.not = icmp eq i8 %call53, 0
  br i1 %tobool204.not, label %if.end203.if.end218_crit_edge, label %if.then205

if.end203.if.end218_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end218

if.then205:                                       ; preds = %if.end203
  %80 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev42, align 8
  %div207389 = lshr i32 %conv54, 2
  %arrayidx208 = getelementptr i32, ptr %call7.i, i32 %div207389
  %82 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx208, align 4
  %call209 = call i32 @pci_write_config_dword(ptr noundef %81, i32 noundef %conv54, i32 noundef %83) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.then205.if.end218_crit_edge, label %if.then211

if.then205.if.end218_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end218

if.then211:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev42, align 8
  %dev216 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev216, ptr noundef nonnull @.str.41) #8
  br label %free_bh

if.end218:                                        ; preds = %if.then205.if.end218_crit_edge, %if.end203.if.end218_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool219.not = icmp eq i8 %44, 0
  br i1 %tobool219.not, label %if.end218.for.body253.preheader_crit_edge, label %if.then220

if.end218.for.body253.preheader_crit_edge:        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body253.preheader

for.body253.preheader:                            ; preds = %if.end234.for.body253.preheader_crit_edge, %if.end218.for.body253.preheader_crit_edge
  br label %for.body253

if.then220:                                       ; preds = %if.end218
  %add221 = add nuw nsw i32 %conv.i, 8
  %div222406 = lshr i32 %add221, 2
  %arrayidx223 = getelementptr i32, ptr %call7.i, i32 %div222406
  %86 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx223, align 4
  %conv224 = trunc i32 %87 to i16
  %88 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev42, align 8
  %call226 = call i32 @pcie_capability_write_word(ptr noundef %89, i32 noundef 8, i16 noundef zeroext %conv224) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.end234, label %if.then228

if.then228:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev42, align 8
  %dev233 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev233, ptr noundef nonnull @.str.44) #8
  br label %free_bh

if.end234:                                        ; preds = %if.then220
  %add235 = add nuw nsw i32 %conv.i, 16
  %div236407 = lshr i32 %add235, 2
  %arrayidx237 = getelementptr i32, ptr %call7.i, i32 %div236407
  %92 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx237, align 4
  %conv238 = trunc i32 %93 to i16
  %94 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdev42, align 8
  %call240 = call i32 @pcie_capability_write_word(ptr noundef %95, i32 noundef 16, i16 noundef zeroext %conv238) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end234.for.body253.preheader_crit_edge, label %if.then242

if.end234.for.body253.preheader_crit_edge:        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body253.preheader

if.then242:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev42, align 8
  %dev247 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev247, ptr noundef nonnull @.str.47) #8
  br label %free_bh

for.body253:                                      ; preds = %for.inc271.for.body253_crit_edge, %for.body253.preheader
  %i.3429 = phi i32 [ %inc272, %for.inc271.for.body253_crit_edge ], [ 0, %for.body253.preheader ]
  %mul254 = shl i32 %i.3429, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul254)
  %cmp255 = icmp eq i32 %mul254, 4
  br i1 %cmp255, label %for.body253.for.inc271_crit_edge, label %if.end258

for.body253.for.inc271_crit_edge:                 ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc271

if.end258:                                        ; preds = %for.body253
  %98 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev42, align 8
  %arrayidx261 = getelementptr i32, ptr %call7.i, i32 %i.3429
  %100 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx261, align 4
  %call262 = call i32 @pci_write_config_dword(ptr noundef %99, i32 noundef %mul254, i32 noundef %101) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %if.end258.for.inc271_crit_edge, label %if.then264

if.end258.for.inc271_crit_edge:                   ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc271

if.then264:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev42, align 8
  %dev269 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev269, ptr noundef nonnull @.str.50, i32 noundef %i.3429) #8
  br label %free_bh

for.inc271:                                       ; preds = %if.end258.for.inc271_crit_edge, %for.body253.for.inc271_crit_edge
  %inc272 = add nuw nsw i32 %i.3429, 1
  %exitcond438.not = icmp eq i32 %inc272, 16
  br i1 %exitcond438.not, label %for.end273, label %for.inc271.for.body253_crit_edge

for.inc271.for.body253_crit_edge:                 ; preds = %for.inc271
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body253

for.end273:                                       ; preds = %for.inc271
  %104 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev42, align 8
  %arrayidx275 = getelementptr i32, ptr %call7.i, i32 1
  %106 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx275, align 4
  %call276 = call i32 @pci_write_config_dword(ptr noundef %105, i32 noundef 4, i32 noundef %107) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %for.end273.free_bh_crit_edge, label %if.then278

for.end273.free_bh_crit_edge:                     ; preds = %for.end273
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_bh

if.then278:                                       ; preds = %for.end273
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev42, align 8
  %dev283 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev283, ptr noundef nonnull @.str.53) #8
  br label %free_bh

free_bh:                                          ; preds = %if.then278, %for.end273.free_bh_crit_edge, %if.then264, %if.then242, %if.then228, %if.then211, %if.then196, %if.then183, %if.then163, %if.then150, %cleanup140.thread, %cleanup, %if.then91, %if.then78
  %err.2 = phi i32 [ -19, %if.then78 ], [ -12, %cleanup ], [ -19, %if.then150 ], [ -19, %if.then163 ], [ -19, %if.then183 ], [ -19, %if.then196 ], [ -19, %if.then211 ], [ -19, %if.then228 ], [ -19, %if.then242 ], [ -19, %if.then264 ], [ -19, %if.then278 ], [ 0, %for.end273.free_bh_crit_edge ], [ -19, %if.then91 ], [ -19, %cleanup140.thread ]
  %bridge_header.1 = phi ptr [ %call7.i394, %if.then78 ], [ %bridge_header.0, %cleanup ], [ %bridge_header.0, %if.then150 ], [ %bridge_header.0, %if.then163 ], [ %bridge_header.0, %if.then183 ], [ %bridge_header.0, %if.then196 ], [ %bridge_header.0, %if.then211 ], [ %bridge_header.0, %if.then228 ], [ %bridge_header.0, %if.then242 ], [ %bridge_header.0, %if.then264 ], [ %bridge_header.0, %if.then278 ], [ %bridge_header.0, %for.end273.free_bh_crit_edge ], [ %call7.i394, %if.then91 ], [ %bridge_header.0, %cleanup140.thread ]
  call void @kfree(ptr noundef %bridge_header.1) #5
  br label %free_hca

free_hca:                                         ; preds = %free_bh, %if.then58.free_hca_crit_edge, %if.then45
  %err.3 = phi i32 [ -19, %if.then45 ], [ %err.2, %free_bh ], [ -12, %if.then58.free_hca_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup285

cleanup285:                                       ; preds = %free_hca, %if.end29.cleanup285_crit_edge
  %err.4 = phi i32 [ %err.3, %free_hca ], [ -12, %if.end29.cleanup285_crit_edge ]
  call void @pci_dev_put(ptr noundef %bridge.1) #5
  ret i32 %err.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 77, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mthca_reset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mthca_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 89, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mthca_reset._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mthca_reset._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 107, i32 4}
!15 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mthca_reset._entry.9, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @mthca_reset._entry_ptr.12, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 128, i32 5}
!20 = !{ptr @mthca_reset._entry.13, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mthca_reset._entry_ptr.15, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 136, i32 5}
!24 = !{ptr @mthca_reset._entry.16, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mthca_reset._entry_ptr.18, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 149, i32 4}
!28 = !{ptr @mthca_reset._entry.19, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mthca_reset._entry_ptr.21, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.23, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 169, i32 5}
!32 = !{ptr @mthca_reset._entry.22, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mthca_reset._entry_ptr.24, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.26, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 181, i32 3}
!36 = !{ptr @mthca_reset._entry.25, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mthca_reset._entry_ptr.27, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.29, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 192, i32 4}
!40 = !{ptr @mthca_reset._entry.28, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mthca_reset._entry_ptr.30, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.32, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 199, i32 4}
!44 = !{ptr @mthca_reset._entry.31, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mthca_reset._entry_ptr.33, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.35, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 213, i32 5}
!48 = !{ptr @mthca_reset._entry.34, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mthca_reset._entry_ptr.36, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.38, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 222, i32 4}
!52 = !{ptr @mthca_reset._entry.37, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mthca_reset._entry_ptr.39, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.41, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 232, i32 4}
!56 = !{ptr @mthca_reset._entry.40, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mthca_reset._entry_ptr.42, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.44, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 243, i32 4}
!60 = !{ptr @mthca_reset._entry.43, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mthca_reset._entry_ptr.45, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.47, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 251, i32 4}
!64 = !{ptr @mthca_reset._entry.46, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mthca_reset._entry_ptr.48, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.50, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 263, i32 4}
!68 = !{ptr @mthca_reset._entry.49, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mthca_reset._entry_ptr.51, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.53, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/hw/mthca/mthca_reset.c", i32 272, i32 3}
!72 = !{ptr @mthca_reset._entry.52, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mthca_reset._entry_ptr.54, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2158136922}
!84 = !{i64 4985431}
!85 = !{!"auto-init"}
