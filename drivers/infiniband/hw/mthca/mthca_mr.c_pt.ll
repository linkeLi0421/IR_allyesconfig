; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_mr.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_mr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.173, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.176, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mthca_mtt = type { ptr, i32, i32 }
%struct.mthca_mailbox = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.mthca_mpt_entry = type <{ i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i32, [2 x i32] }>

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/mthca/mthca_mr.c\00", [57 x i8] zeroinitializer }, align 32
@mthca_mr_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 491, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SW2HW_MPT failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_mr_alloc\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_mr_alloc._entry_ptr = internal global ptr @mthca_mr_alloc._entry, section ".printk_index", align 4
@mthca_free_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 558, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HW2SW_MPT failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mthca_free_mr\00", [18 x i8] zeroinitializer }, align 32
@mthca_free_mr._entry_ptr = internal global ptr @mthca_free_mr._entry, section ".printk_index", align 4
@mthca_debug_level = external dso_local local_unnamed_addr global i32, align 4
@mthca_init_mr_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 582, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Memory key throughput optimization activated.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mthca_init_mr_table\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mthca_init_mr_table._entry_ptr = internal global ptr @mthca_init_mr_table._entry, section ".printk_index", align 4
@mthca_init_mr_table._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to reserve 2^31 FMR MTTs.\0A\00", [62 x i8] zeroinitializer }, align 32
@mthca_init_mr_table._entry_ptr.12 = internal global ptr @mthca_init_mr_table._entry.10, section ".printk_index", align 4
@mthca_init_mr_table._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str, i32 618, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MPT ioremap for FMR failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@mthca_init_mr_table._entry_ptr.15 = internal global ptr @mthca_init_mr_table._entry.13, section ".printk_index", align 4
@mthca_init_mr_table._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str, i32 630, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MTT ioremap for FMR failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@mthca_init_mr_table._entry_ptr.18 = internal global ptr @mthca_init_mr_table._entry.16, section ".printk_index", align 4
@mthca_init_mr_table._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str, i32 658, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MTT table of order %d is too small.\0A\00", [59 x i8] zeroinitializer }, align 32
@mthca_init_mr_table._entry_ptr.21 = internal global ptr @mthca_init_mr_table._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__mthca_write_mtt._entry = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 283, ptr @.str.3, ptr @.str.4 }, align 1
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WRITE_MTT failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__mthca_write_mtt\00", [46 x i8] zeroinitializer }, align 32
@__mthca_write_mtt._entry_ptr = internal global ptr @__mthca_write_mtt._entry, section ".printk_index", align 4
@mthca_buddy_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&buddy->lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 436, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 491, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 558, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 582, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 597, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 618, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 630, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 657, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 283, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [42 x i8] c"../drivers/infiniband/hw/mthca/mthca_mr.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 145, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__mthca_write_mtt._entry, ptr @__mthca_write_mtt._entry_ptr, ptr @mthca_free_mr._entry, ptr @mthca_free_mr._entry_ptr, ptr @mthca_init_mr_table._entry, ptr @mthca_init_mr_table._entry.10, ptr @mthca_init_mr_table._entry.13, ptr @mthca_init_mr_table._entry.16, ptr @mthca_init_mr_table._entry.19, ptr @mthca_init_mr_table._entry_ptr, ptr @mthca_init_mr_table._entry_ptr.12, ptr @mthca_init_mr_table._entry_ptr.15, ptr @mthca_init_mr_table._entry_ptr.18, ptr @mthca_init_mr_table._entry_ptr.21, ptr @mthca_mr_alloc._entry, ptr @mthca_mr_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @mthca_buddy_init.__key, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_mr_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_free_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_mr_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_mr_table._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_mr_table._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_mr_table._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_mr_table._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_buddy_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mthca_alloc_mtt(ptr noundef %dev, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtt_buddy = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp.i = icmp slt i32 %size, 1
  br i1 %cmp.i, label %entry.__mthca_alloc_mtt.exit_crit_edge, label %if.end.i

entry.__mthca_alloc_mtt.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mthca_alloc_mtt.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.i.__mthca_alloc_mtt.exit_crit_edge, label %if.end4.i

if.end.i.__mthca_alloc_mtt.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mthca_alloc_mtt.exit

if.end4.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mtt_buddy, ptr %call7.i.i, align 8
  %order.i = getelementptr inbounds %struct.mthca_mtt, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %order.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %order.i, align 4
  %mtt_seg_size.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 26
  %3 = ptrtoint ptr %mtt_seg_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtt_seg_size.i, align 8
  %div.i = sdiv i32 %4, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %size)
  %cmp631.i = icmp slt i32 %div.i, %size
  br i1 %cmp631.i, label %if.end4.i.for.body.i_crit_edge, label %if.end4.i.for.end.i_crit_edge

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i.for.body.i_crit_edge
  %5 = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end4.i.for.body.i_crit_edge ]
  %i.032.i = phi i32 [ %shl.i, %for.body.i.for.body.i_crit_edge ], [ %div.i, %if.end4.i.for.body.i_crit_edge ]
  %inc.i = add i32 %5, 1
  %shl.i = shl i32 %i.032.i, 1
  %cmp6.i = icmp slt i32 %shl.i, %size
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.cond.for.end_crit_edge.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.for.end_crit_edge.i:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %order.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %order.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.for.end_crit_edge.i, %if.end4.i.for.end.i_crit_edge
  %7 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %order.i, align 4
  %call.i.i = tail call fastcc i32 @mthca_buddy_alloc(ptr noundef %mtt_buddy, i32 noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp.i.i, label %for.end.i.if.then12.i_crit_edge, label %if.end.i.i

for.end.i.if.then12.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.end.i.i:                                       ; preds = %for.end.i
  %mthca_flags.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %mthca_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mthca_flags.i.i.i, align 8
  %and.i.i.i = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.mthca_alloc_mtt_range.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.mthca_alloc_mtt_range.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_alloc_mtt_range.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %mtt_table.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 5
  %11 = ptrtoint ptr %mtt_table.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mtt_table.i.i, align 8
  %notmask.i.i = shl nsw i32 -1, %8
  %add.i.i = xor i32 %notmask.i.i, -1
  %sub.i.i = add i32 %call.i.i, %add.i.i
  %call3.i.i = tail call i32 @mthca_table_get_range(ptr noundef %dev, ptr noundef %12, i32 noundef %call.i.i, i32 noundef %sub.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then2.i.i.mthca_alloc_mtt_range.exit.i_crit_edge, label %if.then5.i.i

if.then2.i.i.mthca_alloc_mtt_range.exit.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_alloc_mtt_range.exit.i

if.then5.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mthca_buddy_free(ptr noundef %mtt_buddy, i32 noundef %call.i.i, i32 noundef %8) #8
  br label %if.then12.i

mthca_alloc_mtt_range.exit.i:                     ; preds = %if.then2.i.i.mthca_alloc_mtt_range.exit.i_crit_edge, %if.end.i.i.mthca_alloc_mtt_range.exit.i_crit_edge
  %first_seg.i = getelementptr inbounds %struct.mthca_mtt, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %first_seg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i.i, ptr %first_seg.i, align 8
  br label %__mthca_alloc_mtt.exit

if.then12.i:                                      ; preds = %if.then5.i.i, %for.end.i.if.then12.i_crit_edge
  %first_seg29.i = getelementptr inbounds %struct.mthca_mtt, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %first_seg29.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %first_seg29.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %__mthca_alloc_mtt.exit

__mthca_alloc_mtt.exit:                           ; preds = %if.then12.i, %mthca_alloc_mtt_range.exit.i, %if.end.i.__mthca_alloc_mtt.exit_crit_edge, %entry.__mthca_alloc_mtt.exit_crit_edge
  %retval.0.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.then12.i ], [ %call7.i.i, %mthca_alloc_mtt_range.exit.i ], [ inttoptr (i32 -22 to ptr), %entry.__mthca_alloc_mtt.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.__mthca_alloc_mtt.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_mtt(ptr noundef %dev, ptr noundef %mtt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mtt, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %mtt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtt, align 4
  %first_seg = getelementptr inbounds %struct.mthca_mtt, ptr %mtt, i32 0, i32 2
  %2 = ptrtoint ptr %first_seg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first_seg, align 4
  %order = getelementptr inbounds %struct.mthca_mtt, ptr %mtt, i32 0, i32 1
  %4 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %order, align 4
  tail call fastcc void @mthca_buddy_free(ptr noundef %1, i32 noundef %3, i32 noundef %5)
  %mtt_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 5
  %6 = ptrtoint ptr %mtt_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mtt_table, align 8
  %8 = ptrtoint ptr %first_seg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %first_seg, align 4
  %10 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %order, align 4
  %shl = shl nuw i32 1, %11
  %add = add i32 %9, -1
  %sub = add i32 %add, %shl
  tail call void @mthca_table_put_range(ptr noundef %dev, ptr noundef %7, i32 noundef %9, i32 noundef %sub) #8
  tail call void @kfree(ptr noundef nonnull %mtt) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mthca_buddy_free(ptr noundef %buddy, i32 noundef %seg, i32 noundef %order) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %seg, %order
  %lock = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buddy, align 4
  %arrayidx33 = getelementptr ptr, ptr %1, i32 %order
  %2 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx33, align 4
  %div3.i34 = lshr i32 %shr, 5
  %arrayidx.i35 = getelementptr i32, ptr %3, i32 %div3.i34
  %4 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i35, align 4
  %xor36 = and i32 %shr, 31
  %and.i37 = xor i32 %xor36, 1
  %6 = shl nuw i32 1, %and.i37
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not38 = icmp eq i32 %7, 0
  br i1 %tobool.not38, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %num_free = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %and.i42 = phi i32 [ %and.i37, %while.body.lr.ph ], [ %and.i, %while.body.while.body_crit_edge ]
  %8 = phi i32 [ %5, %while.body.lr.ph ], [ %19, %while.body.while.body_crit_edge ]
  %arrayidx.i41 = phi ptr [ %arrayidx.i35, %while.body.lr.ph ], [ %arrayidx.i, %while.body.while.body_crit_edge ]
  %order.addr.040 = phi i32 [ %order, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %seg.addr.039 = phi i32 [ %shr, %while.body.lr.ph ], [ %shr5, %while.body.while.body_crit_edge ]
  %shl.i = shl nuw i32 1, %and.i42
  %neg.i = xor i32 %shl.i, -1
  %and.i28 = and i32 %8, %neg.i
  %9 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i28, ptr %arrayidx.i41, align 4
  %10 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %num_free, align 4
  %arrayidx4 = getelementptr i32, ptr %11, i32 %order.addr.040
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %arrayidx4, align 4
  %shr5 = lshr i32 %seg.addr.039, 1
  %inc = add i32 %order.addr.040, 1
  %14 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buddy, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %inc
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %div3.i = lshr i32 %seg.addr.039, 6
  %arrayidx.i = getelementptr i32, ptr %17, i32 %div3.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %xor = and i32 %shr5, 31
  %and.i = xor i32 %xor, 1
  %20 = shl nuw i32 1, %and.i
  %21 = and i32 %19, %20
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %while.end.loopexit, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = lshr i32 %seg.addr.039, 6
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %div2.i31.pre-phi = phi i32 [ %.pre, %while.end.loopexit ], [ %div3.i34, %entry.while.end_crit_edge ]
  %rem.i29.pre-phi = phi i32 [ %xor, %while.end.loopexit ], [ %xor36, %entry.while.end_crit_edge ]
  %order.addr.0.lcssa = phi i32 [ %inc, %while.end.loopexit ], [ %order, %entry.while.end_crit_edge ]
  %.lcssa = phi ptr [ %17, %while.end.loopexit ], [ %3, %entry.while.end_crit_edge ]
  %shl.i30 = shl nuw i32 1, %rem.i29.pre-phi
  %add.ptr.i32 = getelementptr i32, ptr %.lcssa, i32 %div2.i31.pre-phi
  %22 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i32, align 4
  %or.i = or i32 %23, %shl.i30
  store i32 %or.i, ptr %add.ptr.i32, align 4
  %num_free8 = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 1
  %24 = ptrtoint ptr %num_free8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %num_free8, align 4
  %arrayidx9 = getelementptr i32, ptr %25, i32 %order.addr.0.lcssa
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx9, align 4
  %inc10 = add i32 %27, 1
  store i32 %inc10, ptr %arrayidx9, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_table_put_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mthca_write_mtt_size(ptr noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fmr_mtt_buddy = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %fmr_mtt_buddy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmr_mtt_buddy, align 8
  %mtt_buddy = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 1
  %cmp.not = icmp eq ptr %1, %mtt_buddy
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mthca_flags, align 8
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool2.not, i32 134217727, i32 512
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ 510, %lor.lhs.false.return_crit_edge ], [ 510, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_write_mtt(ptr noundef %dev, ptr nocapture noundef readonly %mtt, i32 noundef %start_index, ptr nocapture noundef readonly %buffer_list, i32 noundef %list_len) local_unnamed_addr #0 align 64 {
entry:
  %dma_handle.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fmr_mtt_buddy.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %fmr_mtt_buddy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmr_mtt_buddy.i, align 8
  %mtt_buddy.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 1
  %cmp.not.i = icmp eq ptr %1, %mtt_buddy.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and.i.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i = icmp eq i32 %and.i.i, 0
  %cond.i = select i1 %tobool2.not.i, i32 134217727, i32 512
  %retval.0.i.ph = select i1 %tobool.not.i, i32 510, i32 %cond.i
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then_crit_edge, label %while.cond.preheader

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.cond.preheader:                             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %list_len)
  %cmp367 = icmp sgt i32 %list_len, 0
  br i1 %cmp367, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mtt_seg_size.i44 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 26
  %mtt_table.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 5
  %first_seg.i45 = getelementptr inbounds %struct.mthca_mtt, ptr %mtt, i32 0, i32 2
  %pdev.i47 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %mtt_base.i53 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 7, i32 1
  br label %while.body

if.then:                                          ; preds = %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call ptr @mthca_alloc_mailbox(ptr noundef %dev, i32 noundef 3264) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i34

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end.i34:                                       ; preds = %if.then
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %list_len)
  %cmp60.i = icmp sgt i32 %list_len, 0
  br i1 %cmp60.i, label %while.body.lr.ph.i, label %if.end.i34.out.i_crit_edge

if.end.i34.out.i_crit_edge:                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

while.body.lr.ph.i:                               ; preds = %if.end.i34
  %mtt_base.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 3
  %first_seg.i = getelementptr inbounds %struct.mthca_mtt, ptr %mtt, i32 0, i32 2
  %mtt_seg_size.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 26
  %arrayidx6.i = getelementptr i64, ptr %6, i32 1
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end24.i.for.body.preheader.i_crit_edge, %while.body.lr.ph.i
  %list_len.addr.063.i = phi i32 [ %list_len, %while.body.lr.ph.i ], [ %sub.i, %if.end24.i.for.body.preheader.i_crit_edge ]
  %buffer_list.addr.062.i = phi ptr [ %buffer_list, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end24.i.for.body.preheader.i_crit_edge ]
  %start_index.addr.061.i = phi i32 [ %start_index, %while.body.lr.ph.i ], [ %add25.i, %if.end24.i.for.body.preheader.i_crit_edge ]
  %7 = ptrtoint ptr %mtt_base.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mtt_base.i, align 8
  %9 = ptrtoint ptr %first_seg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %first_seg.i, align 4
  %11 = ptrtoint ptr %mtt_seg_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtt_seg_size.i, align 8
  %mul.i = mul i32 %12, %10
  %conv.i = zext i32 %mul.i to i64
  %mul3.i = shl i32 %start_index.addr.061.i, 3
  %conv4.i = sext i32 %mul3.i to i64
  %add.i = add i64 %8, %conv4.i
  %add5.i = add i64 %add.i, %conv.i
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add5.i, ptr %6, align 8
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %arrayidx6.i, align 8
  %15 = add nsw i32 %list_len.addr.063.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %15, i32 509) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.059.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx11.i = getelementptr i64, ptr %buffer_list.addr.062.i, i32 %i.059.i
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx11.i, align 8
  %or.i = or i64 %17, 1
  %add12.i = add nuw nsw i32 %i.059.i, 2
  %arrayidx13.i = getelementptr i64, ptr %6, i32 %add12.i
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or.i, ptr %arrayidx13.i, align 8
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %i.059.i, %umin.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %19 = add nuw nsw i32 %umin.i, 1
  %and.i35 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %for.end.i.if.end17.i_crit_edge, label %if.then14.i

for.end.i.if.end17.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then14.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add15.i = add nuw nsw i32 %umin.i, 3
  %arrayidx16.i = getelementptr i64, ptr %6, i32 %add15.i
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %arrayidx16.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %for.end.i.if.end17.i_crit_edge
  %add18.i = add nuw nsw i32 %umin.i, 2
  %and19.i = and i32 %add18.i, 1022
  %call20.i = tail call i32 @mthca_WRITE_MTT(ptr noundef %dev, ptr noundef %call.i, i32 noundef %and19.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end24.i, label %do.end.i

do.end.i:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 8
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev23.i, ptr noundef nonnull @.str.22, i32 noundef %call20.i) #12
  br label %out.i

if.end24.i:                                       ; preds = %if.end17.i
  %sub.i = sub i32 %list_len.addr.063.i, %19
  %add25.i = add i32 %19, %start_index.addr.061.i
  %add.ptr.i = getelementptr i64, ptr %buffer_list.addr.062.i, i32 %19
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end24.i.for.body.preheader.i_crit_edge, label %if.end24.i.out.i_crit_edge

if.end24.i.out.i_crit_edge:                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end24.i.for.body.preheader.i_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

out.i:                                            ; preds = %if.end24.i.out.i_crit_edge, %do.end.i, %if.end.i34.out.i_crit_edge
  %err.1.i = phi i32 [ %call20.i, %do.end.i ], [ 0, %if.end.i34.out.i_crit_edge ], [ 0, %if.end24.i.out.i_crit_edge ]
  tail call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call.i) #8
  br label %cleanup

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.lr.ph
  %list_len.addr.073 = phi i32 [ %list_len, %while.body.lr.ph ], [ %sub, %if.end8.while.body_crit_edge ]
  %buffer_list.addr.070 = phi ptr [ %buffer_list, %while.body.lr.ph ], [ %add.ptr, %if.end8.while.body_crit_edge ]
  %start_index.addr.068 = phi i32 [ %start_index, %while.body.lr.ph ], [ %add, %if.end8.while.body_crit_edge ]
  %23 = call i32 @llvm.smin.i32(i32 %retval.0.i.ph, i32 %list_len.addr.073)
  %24 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mthca_flags.i, align 8
  %and.i39 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool6.not = icmp eq i32 %and.i39, 0
  br i1 %tobool6.not, label %for.body.i62.preheader, label %if.then7

if.then7:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i) #8
  %26 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %dma_handle.i, align 4, !annotation !53
  %mul.i40 = shl i32 %start_index.addr.068, 3
  %mul1.i = shl i32 %23, 3
  %add.i41 = add i32 %mul.i40, -1
  %sub.i42 = add i32 %add.i41, %mul1.i
  %cmp.not.unshifted.i = xor i32 %sub.i42, %mul.i40
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %cmp.not.unshifted.i)
  %cmp.not.i43 = icmp ult i32 %cmp.not.unshifted.i, 4096
  br i1 %cmp.not.i43, label %do.body10.i, label %do.body4.i, !prof !54

do.body4.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/mthca/mthca_mr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 337, 0\0A.popsection", ""() #8, !srcloc !55
  unreachable

do.body10.i:                                      ; preds = %if.then7
  %27 = ptrtoint ptr %mtt_seg_size.i44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mtt_seg_size.i44, align 8
  %mul.i40.frozen = freeze i32 %mul.i40
  %.frozen = freeze i32 %28
  %div30.i = sdiv i32 %mul.i40.frozen, %.frozen
  %29 = mul i32 %div30.i, %.frozen
  %rem.i.decomposed = sub i32 %mul.i40.frozen, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool11.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool11.not.i, label %do.end27.i, label %do.body19.i, !prof !54

do.body19.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/mthca/mthca_mr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 339, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

do.end27.i:                                       ; preds = %do.body10.i
  %30 = ptrtoint ptr %mtt_table.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mtt_table.i, align 8
  %32 = ptrtoint ptr %first_seg.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %first_seg.i45, align 4
  %add31.i = add i32 %div30.i, %33
  %call.i46 = call ptr @mthca_table_find(ptr noundef %31, i32 noundef %add31.i, ptr noundef nonnull %dma_handle.i) #8
  %tobool33.not.i = icmp eq ptr %call.i46, null
  br i1 %tobool33.not.i, label %do.body43.i, label %for.body.i51.preheader, !prof !57

do.body43.i:                                      ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/mthca/mthca_mr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 344, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

for.body.i51.preheader:                           ; preds = %do.end27.i
  %34 = ptrtoint ptr %pdev.i47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i47, align 8
  %dev52.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_handle.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %dev52.i, i32 noundef %37, i32 noundef %mul1.i, i32 noundef 1) #8
  br label %for.body.i51

for.body.i51:                                     ; preds = %for.body.i51.for.body.i51_crit_edge, %for.body.i51.preheader
  %i.076.i = phi i32 [ %inc.i49, %for.body.i51.for.body.i51_crit_edge ], [ 0, %for.body.i51.preheader ]
  %arrayidx.i = getelementptr i64, ptr %buffer_list.addr.070, i32 %i.076.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx.i, align 8
  %or.i48 = or i64 %39, 1
  %arrayidx55.i = getelementptr i64, ptr %call.i46, i32 %i.076.i
  %40 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %or.i48, ptr %arrayidx55.i, align 8
  %inc.i49 = add nuw nsw i32 %i.076.i, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i49, %23
  br i1 %exitcond.not.i50, label %mthca_arbel_write_mtt_seg.exit, label %for.body.i51.for.body.i51_crit_edge

for.body.i51.for.body.i51_crit_edge:              ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i51

mthca_arbel_write_mtt_seg.exit:                   ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %pdev.i47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i47, align 8
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_handle.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %dev57.i, i32 noundef %44, i32 noundef %mul1.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #8
  br label %if.end8

for.body.i62.preheader:                           ; preds = %while.body
  %45 = ptrtoint ptr %mtt_base.i53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mtt_base.i53, align 4
  %47 = ptrtoint ptr %first_seg.i45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %first_seg.i45, align 4
  %49 = ptrtoint ptr %mtt_seg_size.i44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mtt_seg_size.i44, align 8
  %mul.i56 = mul i32 %50, %48
  %add.ptr.i57 = getelementptr i8, ptr %46, i32 %mul.i56
  %mul1.i58 = shl i32 %start_index.addr.068, 3
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i57, i32 %mul1.i58
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.body.i62.for.body.i62_crit_edge, %for.body.i62.preheader
  %i.09.i = phi i32 [ %inc.i60, %for.body.i62.for.body.i62_crit_edge ], [ 0, %for.body.i62.preheader ]
  %arrayidx.i59 = getelementptr i64, ptr %buffer_list.addr.070, i32 %i.09.i
  %51 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx.i59, align 8
  %add.ptr3.i = getelementptr i64, ptr %add.ptr2.i, i32 %i.09.i
  %val.addr.sroa.0.0.extract.shift.i.i = lshr i64 %52, 32
  %val.addr.sroa.0.0.extract.trunc.i.i = trunc i64 %val.addr.sroa.0.0.extract.shift.i.i to i32
  %53 = trunc i64 %52 to i32
  %val.addr.sroa.2.0.extract.trunc.i.i = or i32 %53, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %val.addr.sroa.0.0.extract.trunc.i.i) #8, !srcloc !59
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr3.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %val.addr.sroa.2.0.extract.trunc.i.i) #8, !srcloc !59
  %inc.i60 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i61 = icmp eq i32 %inc.i60, %23
  br i1 %exitcond.not.i61, label %for.body.i62.if.end8_crit_edge, label %for.body.i62.for.body.i62_crit_edge

for.body.i62.for.body.i62_crit_edge:              ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i62

for.body.i62.if.end8_crit_edge:                   ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %for.body.i62.if.end8_crit_edge, %mthca_arbel_write_mtt_seg.exit
  %sub = sub i32 %list_len.addr.073, %23
  %add = add i32 %23, %start_index.addr.068
  %add.ptr = getelementptr i64, ptr %buffer_list.addr.070, i32 %23
  %cmp3 = icmp sgt i32 %sub, 0
  br i1 %cmp3, label %if.end8.while.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %out.i, %if.then.i, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then.i ], [ %err.1.i, %out.i ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_mr_alloc(ptr noundef %dev, i32 noundef %pd, i32 noundef %buffer_size_shift, i64 noundef %iova, i64 noundef %total_size, i32 noundef %access, ptr nocapture noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %buffer_size_shift)
  %cmp = icmp sgt i32 %buffer_size_shift, 31
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !57

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 436, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mr_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21
  %call = tail call i32 @mthca_alloc(ptr noundef %mr_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp19 = icmp eq i32 %call, -1
  br i1 %cmp19, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %shl.i = shl i32 %call, 20
  %and1.i = and i32 %shl.i, 8388608
  %and2.i = and i32 %call, 8388607
  %or.i = or i32 %and1.i, %and2.i
  %retval.0.i = select i1 %tobool.not.i, i32 %call, i32 %or.i
  %and.i.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i117 = icmp eq i32 %and.i.i, 0
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %retval.0.i, i32 %retval.0.i, i32 8) #8
  %retval.0.i118 = select i1 %tobool.not.i117, i32 %retval.0.i, i32 %or.i.i
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 2
  %2 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %retval.0.i118, ptr %lkey, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 3
  %3 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %retval.0.i118, ptr %rkey, align 4
  %4 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mthca_flags.i, align 8
  %and.i120 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool26.not = icmp eq i32 %and.i120, 0
  br i1 %tobool26.not, label %if.end21.if.end33_crit_edge, label %if.then27

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then27:                                        ; preds = %if.end21
  %mpt_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 6
  %6 = ptrtoint ptr %mpt_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mpt_table, align 4
  %call29 = tail call i32 @mthca_table_get(ptr noundef %dev, ptr noundef %7, i32 noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then27.if.end33_crit_edge, label %if.then27.err_out_mpt_free_crit_edge

if.then27.err_out_mpt_free_crit_edge:             ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_mpt_free

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %if.then27.if.end33_crit_edge, %if.end21.if.end33_crit_edge
  %call34 = tail call ptr @mthca_alloc_mailbox(ptr noundef %dev, i32 noundef 3264) #8
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call34 to i32
  br label %err_out_table

if.end38:                                         ; preds = %if.end33
  %buf = getelementptr inbounds %struct.mthca_mailbox, ptr %call34, i32 0, i32 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  %or = or i32 %access, -268304128
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %or, ptr %10, align 1
  %mtt = getelementptr inbounds %struct.mthca_mr, ptr %mr, i32 0, i32 2
  %12 = ptrtoint ptr %mtt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtt, align 4
  %tobool39.not = icmp eq ptr %13, null
  br i1 %tobool39.not, label %if.then40, label %if.end38.if.end43_crit_edge

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %or42 = or i32 %access, -268303616
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %or42, ptr %10, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end38.if.end43_crit_edge
  %sub = add i32 %buffer_size_shift, -12
  %page_size = getelementptr inbounds %struct.mthca_mpt_entry, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %page_size to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %sub, ptr %page_size, align 1
  %key44 = getelementptr inbounds %struct.mthca_mpt_entry, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %key44 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %retval.0.i, ptr %key44, align 1
  %pd45 = getelementptr inbounds %struct.mthca_mpt_entry, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %pd45 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %pd, ptr %pd45, align 1
  %start = getelementptr inbounds %struct.mthca_mpt_entry, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %start to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %iova, ptr %start, align 1
  %length = getelementptr inbounds %struct.mthca_mpt_entry, ptr %10, i32 0, i32 5
  %19 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %total_size, ptr %length, align 1
  %add.ptr = getelementptr i8, ptr %10, i32 32
  %20 = call ptr @memset(ptr %add.ptr, i32 0, i32 32)
  %21 = ptrtoint ptr %mtt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mtt, align 4
  %tobool48.not = icmp eq ptr %22, null
  br i1 %tobool48.not, label %if.end43.if.end52_crit_edge, label %if.then49

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %mtt_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 3
  %23 = ptrtoint ptr %mtt_base to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %mtt_base, align 8
  %first_seg = getelementptr inbounds %struct.mthca_mtt, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %first_seg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %first_seg, align 4
  %mtt_seg_size = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 26
  %27 = ptrtoint ptr %mtt_seg_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mtt_seg_size, align 8
  %mul = mul i32 %28, %26
  %conv = zext i32 %mul to i64
  %add = add i64 %24, %conv
  %mtt_seg = getelementptr inbounds %struct.mthca_mpt_entry, ptr %10, i32 0, i32 9
  %29 = ptrtoint ptr %mtt_seg to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %add, ptr %mtt_seg, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end43.if.end52_crit_edge
  %num_mpts = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 24
  %30 = ptrtoint ptr %num_mpts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_mpts, align 8
  %sub54 = add i32 %31, -1
  %and = and i32 %sub54, %retval.0.i
  %call55 = tail call i32 @mthca_SW2HW_MPT(ptr noundef %dev, ptr noundef %call34, i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 8
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev61, ptr noundef nonnull @.str.1, i32 noundef %call55) #12
  tail call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call34) #8
  br label %err_out_table

if.end62:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call34) #8
  br label %cleanup

err_out_table:                                    ; preds = %do.end60, %if.then36
  %err.0 = phi i32 [ %8, %if.then36 ], [ %call55, %do.end60 ]
  %mpt_table64 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 6
  %34 = ptrtoint ptr %mpt_table64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mpt_table64, align 4
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %35, i32 noundef %retval.0.i) #8
  br label %err_out_mpt_free

err_out_mpt_free:                                 ; preds = %err_out_table, %if.then27.err_out_mpt_free_crit_edge
  %err.1 = phi i32 [ %call29, %if.then27.err_out_mpt_free_crit_edge ], [ %err.0, %err_out_table ]
  tail call void @mthca_free(ptr noundef %mr_table, i32 noundef %retval.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out_mpt_free, %if.end62, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_out_mpt_free ], [ 0, %if.end62 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_table_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_alloc_mailbox(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_SW2HW_MPT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_table_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_mr_alloc_notrans(ptr noundef %dev, i32 noundef %pd, i32 noundef %access, ptr nocapture noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtt = getelementptr inbounds %struct.mthca_mr, ptr %mr, i32 0, i32 2
  %0 = ptrtoint ptr %mtt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mtt, align 4
  %call = tail call i32 @mthca_mr_alloc(ptr noundef %dev, i32 noundef %pd, i32 noundef 12, i64 noundef 0, i64 noundef -1, i32 noundef %access, ptr noundef %mr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_mr_alloc_phys(ptr noundef %dev, i32 noundef %pd, ptr nocapture noundef readonly %buffer_list, i32 noundef %buffer_size_shift, i32 noundef %list_len, i64 noundef %iova, i64 noundef %total_size, i32 noundef %access, ptr nocapture noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mthca_alloc_mtt(ptr noundef %dev, i32 noundef %list_len)
  %mtt = getelementptr inbounds %struct.mthca_mr, ptr %mr, i32 0, i32 2
  %0 = ptrtoint ptr %mtt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %mtt, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @mthca_write_mtt(ptr noundef %dev, ptr noundef %call, i32 noundef 0, ptr noundef %buffer_list, i32 noundef %list_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = ptrtoint ptr %mtt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtt, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then7.cleanup_crit_edge, label %if.end.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %first_seg.i = getelementptr inbounds %struct.mthca_mtt, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %first_seg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_seg.i, align 4
  %order.i = getelementptr inbounds %struct.mthca_mtt, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %order.i, align 4
  tail call fastcc void @mthca_buddy_free(ptr noundef %5, i32 noundef %7, i32 noundef %9) #8
  %mtt_table.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 5
  %10 = ptrtoint ptr %mtt_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mtt_table.i, align 8
  %12 = ptrtoint ptr %first_seg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %first_seg.i, align 4
  %14 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %order.i, align 4
  %shl.i = shl nuw i32 1, %15
  %add.i = add i32 %13, -1
  %sub.i = add i32 %add.i, %shl.i
  tail call void @mthca_table_put_range(ptr noundef %dev, ptr noundef %11, i32 noundef %13, i32 noundef %sub.i) #8
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @mthca_mr_alloc(ptr noundef %dev, i32 noundef %pd, i32 noundef %buffer_size_shift, i64 noundef %iova, i64 noundef %total_size, i32 noundef %access, ptr noundef %mr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  %16 = ptrtoint ptr %mtt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mtt, align 4
  %tobool.not.i29 = icmp eq ptr %17, null
  br i1 %tobool.not.i29, label %if.then12.cleanup_crit_edge, label %if.end.i36

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i36:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %first_seg.i30 = getelementptr inbounds %struct.mthca_mtt, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %first_seg.i30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %first_seg.i30, align 4
  %order.i31 = getelementptr inbounds %struct.mthca_mtt, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %order.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %order.i31, align 4
  tail call fastcc void @mthca_buddy_free(ptr noundef %19, i32 noundef %21, i32 noundef %23) #8
  %mtt_table.i32 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 5
  %24 = ptrtoint ptr %mtt_table.i32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mtt_table.i32, align 8
  %26 = ptrtoint ptr %first_seg.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %first_seg.i30, align 4
  %28 = ptrtoint ptr %order.i31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %order.i31, align 4
  %shl.i33 = shl nuw i32 1, %29
  %add.i34 = add i32 %27, -1
  %sub.i35 = add i32 %add.i34, %shl.i33
  tail call void @mthca_table_put_range(ptr noundef %dev, ptr noundef %25, i32 noundef %27, i32 noundef %sub.i35) #8
  tail call void @kfree(ptr noundef nonnull %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i36, %if.then12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.i, %if.then7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end9.cleanup_crit_edge ], [ %call6, %if.then7.cleanup_crit_edge ], [ %call6, %if.end.i ], [ %call10, %if.then12.cleanup_crit_edge ], [ %call10, %if.end.i36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_mr(ptr noundef %dev, ptr nocapture noundef readonly %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 2
  %0 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lkey, align 8
  %mthca_flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 24) #8
  %retval.0.i = select i1 %tobool.not.i, i32 %1, i32 %or.i.i
  %num_mpts = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 24
  %4 = ptrtoint ptr %num_mpts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_mpts, align 8
  %sub = add i32 %5, -1
  %and = and i32 %retval.0.i, %sub
  %call1 = tail call i32 @mthca_HW2SW_MPT(ptr noundef %dev, ptr noundef null, i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.5, i32 noundef %call1) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lkey, align 8
  %mr_table.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21
  %mpt_table.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 6
  %10 = ptrtoint ptr %mpt_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mpt_table.i, align 4
  %12 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i.i = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 24) #8
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %9, i32 %or.i.i.i
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %11, i32 noundef %retval.0.i.i) #8
  %14 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i9.i = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9.i)
  %tobool.not.i10.i = icmp eq i32 %and.i.i9.i, 0
  %retval.0.i12.i = select i1 %tobool.not.i10.i, i32 %9, i32 %or.i.i.i
  tail call void @mthca_free(ptr noundef %mr_table.i, i32 noundef %retval.0.i12.i) #8
  %mtt = getelementptr inbounds %struct.mthca_mr, ptr %mr, i32 0, i32 2
  %16 = ptrtoint ptr %mtt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mtt, align 4
  %tobool.not.i13 = icmp eq ptr %17, null
  br i1 %tobool.not.i13, label %if.end.mthca_free_mtt.exit_crit_edge, label %if.end.i

if.end.mthca_free_mtt.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_free_mtt.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %first_seg.i = getelementptr inbounds %struct.mthca_mtt, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %first_seg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %first_seg.i, align 4
  %order.i = getelementptr inbounds %struct.mthca_mtt, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %order.i, align 4
  tail call fastcc void @mthca_buddy_free(ptr noundef %19, i32 noundef %21, i32 noundef %23) #8
  %mtt_table.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 5
  %24 = ptrtoint ptr %mtt_table.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mtt_table.i, align 8
  %26 = ptrtoint ptr %first_seg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %first_seg.i, align 4
  %28 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %order.i, align 4
  %shl.i = shl nuw i32 1, %29
  %add.i = add i32 %27, -1
  %sub.i = add i32 %add.i, %shl.i
  tail call void @mthca_table_put_range(ptr noundef %dev, ptr noundef %25, i32 noundef %27, i32 noundef %sub.i) #8
  tail call void @kfree(ptr noundef nonnull %17) #8
  br label %mthca_free_mtt.exit

mthca_free_mtt.exit:                              ; preds = %if.end.i, %if.end.mthca_free_mtt.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_HW2SW_MPT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_init_mr_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21
  %num_mpts = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 24
  %0 = ptrtoint ptr %num_mpts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_mpts, align 8
  %reserved_mrws = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 29
  %2 = ptrtoint ptr %reserved_mrws to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_mrws, align 4
  %call = tail call i32 @mthca_alloc_init(ptr noundef %mr_table, i32 noundef %1, i32 noundef -1, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mthca_flags.i, align 8
  %6 = and i32 %5, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %.not = icmp eq i32 %6, 2
  br i1 %.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fmr_reserved_mtts = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 27
  %7 = ptrtoint ptr %fmr_reserved_mtts to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fmr_reserved_mtts, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %5, 32
  %8 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %mthca_flags.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %9 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mthca_flags.i, align 8
  %and10 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end20_crit_edge, label %do.body

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.body:                                          ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %11 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %do.body.if.end20_crit_edge, label %do.end

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev16, ptr noundef nonnull @.str.7) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end, %do.body.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %mtt_buddy = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 1
  %num_mtt_segs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 25
  %14 = ptrtoint ptr %num_mtt_segs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_mtt_segs, align 4
  %sub = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i = icmp eq i32 %sub, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #8, !range !60
  %sub.i = sub nuw nsw i32 32, %16
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %call24 = tail call fastcc i32 @mthca_buddy_init(ptr noundef %mtt_buddy, i32 noundef %cond.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end20.err_mtt_buddy_crit_edge

if.end20.err_mtt_buddy_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mtt_buddy

if.end27:                                         ; preds = %if.end20
  %tavor_fmr = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 7
  %17 = ptrtoint ptr %tavor_fmr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %tavor_fmr, align 8
  %mtt_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 7, i32 1
  %18 = ptrtoint ptr %mtt_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %mtt_base, align 4
  %fmr_reserved_mtts32 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 27
  %19 = ptrtoint ptr %fmr_reserved_mtts32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmr_reserved_mtts32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool33.not = icmp eq i32 %20, 0
  br i1 %tobool33.not, label %if.else46, label %if.then34

if.then34:                                        ; preds = %if.end27
  %sub37 = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub37)
  %tobool.not.i306 = icmp eq i32 %sub37, 0
  %21 = tail call i32 @llvm.ctlz.i32(i32 %sub37, i1 true) #8, !range !60
  %sub.i307 = sub nuw nsw i32 32, %21
  %cond.i308 = select i1 %tobool.not.i306, i32 0, i32 %sub.i307
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %cond.i308)
  %cmp = icmp ugt i32 %cond.i308, 30
  br i1 %cmp, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %pdev43 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %22 = ptrtoint ptr %pdev43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev43, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev44, ptr noundef nonnull @.str.11) #12
  br label %err_fmr_mpt

if.end45:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw nsw i32 1, %cond.i308
  br label %if.end51

if.else46:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %num_mtt_segs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_mtt_segs, align 4
  %26 = ptrtoint ptr %num_mpts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_mpts, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else46, %if.end45
  %mpts.0 = phi i32 [ %shl, %if.end45 ], [ %27, %if.else46 ]
  %mtts.0 = phi i32 [ %shl, %if.end45 ], [ %25, %if.else46 ]
  %28 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mthca_flags.i, align 8
  %30 = and i32 %29, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %30)
  %.not325 = icmp eq i32 %30, 32
  br i1 %.not325, label %if.then58, label %if.end51.if.end145_crit_edge

if.end51.if.end145_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then58:                                        ; preds = %if.end51
  %pdev59 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %31 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev59, align 8
  %arrayidx = getelementptr %struct.pci_dev, ptr %32, i32 0, i32 47, i32 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %32, i32 0, i32 47, i32 4, i32 1
  %35 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp63 = icmp eq i32 %36, 0
  %sub73 = sub i32 %36, %34
  %spec.select = select i1 %cmp63, i32 -1, i32 %sub73
  %mpt_base77 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 4
  %37 = ptrtoint ptr %mpt_base77 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %mpt_base77, align 8
  %39 = trunc i64 %38 to i32
  %40 = and i32 %spec.select, %39
  %conv80 = add i32 %40, %34
  %mul = shl i32 %mpts.0, 6
  %call81 = tail call ptr @ioremap(i32 noundef %conv80, i32 noundef %mul) #8
  %41 = ptrtoint ptr %tavor_fmr to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call81, ptr %tavor_fmr, align 8
  %tobool88.not = icmp eq ptr %call81, null
  %42 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev59, align 8
  br i1 %tobool88.not, label %do.end92, label %if.end95

do.end92:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev94, ptr noundef nonnull @.str.14) #12
  br label %err_fmr_mpt

if.end95:                                         ; preds = %if.then58
  %arrayidx98 = getelementptr %struct.pci_dev, ptr %43, i32 0, i32 47, i32 4
  %44 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx98, align 8
  %end104 = getelementptr %struct.pci_dev, ptr %43, i32 0, i32 47, i32 4, i32 1
  %46 = ptrtoint ptr %end104 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp105 = icmp eq i32 %47, 0
  %sub117 = sub i32 %47, %45
  %spec.select305 = select i1 %cmp105, i32 -1, i32 %sub117
  %mtt_base124 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 3
  %48 = ptrtoint ptr %mtt_base124 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %mtt_base124, align 8
  %50 = trunc i64 %49 to i32
  %51 = and i32 %spec.select305, %50
  %conv127 = add i32 %51, %45
  %mtt_seg_size = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 26
  %52 = ptrtoint ptr %mtt_seg_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mtt_seg_size, align 8
  %mul129 = mul i32 %53, %mtts.0
  %call130 = tail call ptr @ioremap(i32 noundef %conv127, i32 noundef %mul129) #8
  %54 = ptrtoint ptr %mtt_base to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call130, ptr %mtt_base, align 4
  %tobool137.not = icmp eq ptr %call130, null
  br i1 %tobool137.not, label %do.end141, label %if.end95.if.end145_crit_edge

if.end95.if.end145_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

do.end141:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev59, align 8
  %dev143 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev143, ptr noundef nonnull @.str.17) #12
  br label %err_fmr_mtt

if.end145:                                        ; preds = %if.end95.if.end145_crit_edge, %if.end51.if.end145_crit_edge
  %57 = ptrtoint ptr %fmr_reserved_mtts32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fmr_reserved_mtts32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool148.not = icmp eq i32 %58, 0
  br i1 %tobool148.not, label %if.end145.if.end176_crit_edge, label %if.then149

if.end145.if.end176_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.then149:                                       ; preds = %if.end145
  %mtt_buddy152 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 7, i32 2
  %sub153 = add i32 %mtts.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub153)
  %tobool.not.i309 = icmp eq i32 %sub153, 0
  %59 = tail call i32 @llvm.ctlz.i32(i32 %sub153, i1 true) #8, !range !60
  %sub.i310 = sub nuw nsw i32 32, %59
  %cond.i311 = select i1 %tobool.not.i309, i32 0, i32 %sub.i310
  %call155 = tail call fastcc i32 @mthca_buddy_init(ptr noundef %mtt_buddy152, i32 noundef %cond.i311)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.then149.err_fmr_mtt_buddy_crit_edge

if.then149.err_fmr_mtt_buddy_crit_edge:           ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_fmr_mtt_buddy

if.end158:                                        ; preds = %if.then149
  %call163 = tail call fastcc i32 @mthca_buddy_alloc(ptr noundef %mtt_buddy, i32 noundef %cond.i311)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end158.if.end176_crit_edge, label %if.end158.err_reserve_fmr_crit_edge

if.end158.err_reserve_fmr_crit_edge:              ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_reserve_fmr

if.end158.if.end176_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.end176:                                        ; preds = %if.end158.if.end176_crit_edge, %if.end145.if.end176_crit_edge
  %mtt_buddy.sink = phi ptr [ %mtt_buddy152, %if.end158.if.end176_crit_edge ], [ %mtt_buddy, %if.end145.if.end176_crit_edge ]
  %fmr_mtt_buddy175 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 2
  %60 = ptrtoint ptr %fmr_mtt_buddy175 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %mtt_buddy.sink, ptr %fmr_mtt_buddy175, align 8
  %reserved_mtts = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 28
  %61 = ptrtoint ptr %reserved_mtts to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reserved_mtts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool178.not = icmp eq i32 %62, 0
  br i1 %tobool178.not, label %if.end176.cleanup_crit_edge, label %if.then179

if.end176.cleanup_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then179:                                       ; preds = %if.end176
  %sub182 = add i32 %62, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub182)
  %tobool.not.i315 = icmp eq i32 %sub182, 0
  %63 = tail call i32 @llvm.ctlz.i32(i32 %sub182, i1 true) #8, !range !60
  %sub.i316 = sub nuw nsw i32 32, %63
  %cond.i317 = select i1 %tobool.not.i315, i32 0, i32 %sub.i316
  %fmr_mtt_buddy185 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 2
  %64 = ptrtoint ptr %fmr_mtt_buddy185 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fmr_mtt_buddy185, align 8
  %call.i = tail call fastcc i32 @mthca_buddy_alloc(ptr noundef %65, i32 noundef %cond.i317) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.then179.do.end192_crit_edge, label %if.end.i

if.then179.do.end192_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end192

if.end.i:                                         ; preds = %if.then179
  %66 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mthca_flags.i, align 8
  %and.i.i = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i320 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i320, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  %mtt_table.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 5
  %68 = ptrtoint ptr %mtt_table.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mtt_table.i, align 8
  %notmask.i = shl nsw i32 -1, %cond.i317
  %add.i = xor i32 %notmask.i, -1
  %sub.i321 = add i32 %call.i, %add.i
  %call3.i = tail call i32 @mthca_table_get_range(ptr noundef %dev, ptr noundef %69, i32 noundef %call.i, i32 noundef %sub.i321) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.cleanup_crit_edge, label %if.then5.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mthca_buddy_free(ptr noundef %65, i32 noundef %call.i, i32 noundef %cond.i317) #8
  br label %do.end192

do.end192:                                        ; preds = %if.then5.i, %if.then179.do.end192_crit_edge
  %pdev193 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %70 = ptrtoint ptr %pdev193 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev193, align 8
  %dev194 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %72 = ptrtoint ptr %fmr_mtt_buddy185 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fmr_mtt_buddy185, align 8
  %max_order = getelementptr inbounds %struct.mthca_buddy, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %max_order to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_order, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev194, ptr noundef nonnull @.str.20, i32 noundef %75) #12
  br label %err_reserve_fmr

err_reserve_fmr:                                  ; preds = %do.end192, %if.end158.err_reserve_fmr_crit_edge
  %err.0 = phi i32 [ %call163, %if.end158.err_reserve_fmr_crit_edge ], [ -12, %do.end192 ]
  %76 = ptrtoint ptr %fmr_reserved_mtts32 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fmr_reserved_mtts32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool201.not = icmp eq i32 %77, 0
  br i1 %tobool201.not, label %err_reserve_fmr.err_fmr_mtt_buddy_crit_edge, label %if.then202

err_reserve_fmr.err_fmr_mtt_buddy_crit_edge:      ; preds = %err_reserve_fmr
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_fmr_mtt_buddy

if.then202:                                       ; preds = %err_reserve_fmr
  call void @__sanitizer_cov_trace_pc() #10
  %mtt_buddy205 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 7, i32 2
  tail call fastcc void @mthca_buddy_cleanup(ptr noundef %mtt_buddy205)
  br label %err_fmr_mtt_buddy

err_fmr_mtt_buddy:                                ; preds = %if.then202, %err_reserve_fmr.err_fmr_mtt_buddy_crit_edge, %if.then149.err_fmr_mtt_buddy_crit_edge
  %err.1 = phi i32 [ %call155, %if.then149.err_fmr_mtt_buddy_crit_edge ], [ %err.0, %if.then202 ], [ %err.0, %err_reserve_fmr.err_fmr_mtt_buddy_crit_edge ]
  %78 = ptrtoint ptr %mtt_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mtt_base, align 4
  %tobool210.not = icmp eq ptr %79, null
  br i1 %tobool210.not, label %err_fmr_mtt_buddy.err_fmr_mtt_crit_edge, label %if.then211

err_fmr_mtt_buddy.err_fmr_mtt_crit_edge:          ; preds = %err_fmr_mtt_buddy
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_fmr_mtt

if.then211:                                       ; preds = %err_fmr_mtt_buddy
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %79) #8
  br label %err_fmr_mtt

err_fmr_mtt:                                      ; preds = %if.then211, %err_fmr_mtt_buddy.err_fmr_mtt_crit_edge, %do.end141
  %err.2 = phi i32 [ %err.1, %if.then211 ], [ %err.1, %err_fmr_mtt_buddy.err_fmr_mtt_crit_edge ], [ -12, %do.end141 ]
  %80 = ptrtoint ptr %tavor_fmr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tavor_fmr, align 8
  %tobool219.not = icmp eq ptr %81, null
  br i1 %tobool219.not, label %err_fmr_mtt.err_fmr_mpt_crit_edge, label %if.then220

err_fmr_mtt.err_fmr_mpt_crit_edge:                ; preds = %err_fmr_mtt
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_fmr_mpt

if.then220:                                       ; preds = %err_fmr_mtt
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %81) #8
  br label %err_fmr_mpt

err_fmr_mpt:                                      ; preds = %if.then220, %err_fmr_mtt.err_fmr_mpt_crit_edge, %do.end92, %do.end42
  %err.3 = phi i32 [ -22, %do.end42 ], [ %err.2, %if.then220 ], [ %err.2, %err_fmr_mtt.err_fmr_mpt_crit_edge ], [ -12, %do.end92 ]
  %max_order.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 1, i32 2
  %82 = ptrtoint ptr %max_order.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.not7.i = icmp slt i32 %83, 0
  br i1 %cmp.not7.i, label %err_fmr_mpt.mthca_buddy_cleanup.exit_crit_edge, label %err_fmr_mpt.for.body.i_crit_edge

err_fmr_mpt.for.body.i_crit_edge:                 ; preds = %err_fmr_mpt
  br label %for.body.i

err_fmr_mpt.mthca_buddy_cleanup.exit_crit_edge:   ; preds = %err_fmr_mpt
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_buddy_cleanup.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err_fmr_mpt.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %err_fmr_mpt.for.body.i_crit_edge ]
  %84 = ptrtoint ptr %mtt_buddy to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mtt_buddy, align 4
  %arrayidx.i = getelementptr ptr, ptr %85, i32 %i.08.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i, align 4
  tail call void @bitmap_free(ptr noundef %87) #8
  %inc.i = add i32 %i.08.i, 1
  %88 = ptrtoint ptr %max_order.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_order.i, align 4
  %cmp.not.i = icmp sgt i32 %inc.i, %89
  br i1 %cmp.not.i, label %for.body.i.mthca_buddy_cleanup.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.mthca_buddy_cleanup.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_buddy_cleanup.exit

mthca_buddy_cleanup.exit:                         ; preds = %for.body.i.mthca_buddy_cleanup.exit_crit_edge, %err_fmr_mpt.mthca_buddy_cleanup.exit_crit_edge
  %90 = ptrtoint ptr %mtt_buddy to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mtt_buddy, align 4
  tail call void @kfree(ptr noundef %91) #8
  %num_free.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 1, i32 1
  %92 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %num_free.i, align 4
  tail call void @kfree(ptr noundef %93) #8
  br label %err_mtt_buddy

err_mtt_buddy:                                    ; preds = %mthca_buddy_cleanup.exit, %if.end20.err_mtt_buddy_crit_edge
  %err.4 = phi i32 [ %call24, %if.end20.err_mtt_buddy_crit_edge ], [ %err.3, %mthca_buddy_cleanup.exit ]
  tail call void @mthca_alloc_cleanup(ptr noundef %mr_table) #8
  br label %cleanup

cleanup:                                          ; preds = %err_mtt_buddy, %if.then2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end176.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_mtt_buddy ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end176.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_buddy_init(ptr noundef %buddy, i32 noundef %max_order) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_order1 = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 2
  %0 = ptrtoint ptr %max_order1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %max_order, ptr %max_order1, align 4
  %lock = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @mthca_buddy_init.__key, i16 noundef signext 3) #8
  %1 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_order1, align 4
  %add = add i32 %2, 1
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %entry.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !57

entry.kcalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #13
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %entry.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %entry.kcalloc.exit_crit_edge ]
  %6 = ptrtoint ptr %buddy to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %retval.0.i.i, ptr %buddy, align 4
  %7 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_order1, align 4
  %add5 = add i32 %8, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add5, i32 4) #8
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %kcalloc.exit94.thread, label %if.end7.i.i92, !prof !57

kcalloc.exit94.thread:                            ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %num_free96 = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 1
  %11 = ptrtoint ptr %num_free96 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %num_free96, align 4
  br label %err_out

if.end7.i.i92:                                    ; preds = %kcalloc.exit
  %12 = extractvalue { i32, i1 } %9, 0
  %call8.i.i91 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #13
  %num_free = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 1
  %13 = ptrtoint ptr %num_free to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i91, ptr %num_free, align 4
  %14 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buddy, align 4
  %tobool.not = icmp eq ptr %15, null
  %tobool9.not = icmp eq ptr %call8.i.i91, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end7.i.i92.err_out_crit_edge, label %for.cond.preheader

if.end7.i.i92.err_out_crit_edge:                  ; preds = %if.end7.i.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

for.cond.preheader:                               ; preds = %if.end7.i.i92
  %16 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_order1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not102 = icmp slt i32 %17, 0
  br i1 %cmp.not102, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.0103, 1
  %18 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_order1, align 4
  %cmp.not = icmp slt i32 %19, %inc
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %20 = phi i32 [ %19, %for.cond.for.body_crit_edge ], [ %17, %for.cond.preheader.for.body_crit_edge ]
  %i.0103 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %sub = sub i32 %20, %i.0103
  %shl = shl nuw i32 1, %sub
  %call12 = tail call ptr @bitmap_zalloc(i32 noundef %shl, i32 noundef 3264) #8
  %21 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buddy, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %i.0103
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call12, ptr %arrayidx, align 4
  %24 = load ptr, ptr %buddy, align 4
  %arrayidx15 = getelementptr ptr, ptr %24, i32 %i.0103
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %26, null
  br i1 %tobool16.not, label %for.cond25.preheader, label %for.cond

for.cond25.preheader:                             ; preds = %for.body
  %27 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_order1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp27.not104 = icmp slt i32 %28, 0
  br i1 %cmp27.not104, label %for.cond25.preheader.err_out_crit_edge, label %for.cond25.preheader.for.body28_crit_edge

for.cond25.preheader.for.body28_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body28

for.cond25.preheader.err_out_crit_edge:           ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %17, %for.cond.preheader.for.end_crit_edge ], [ %19, %for.cond.for.end_crit_edge ]
  %29 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buddy, align 4
  %arrayidx21 = getelementptr ptr, ptr %30, i32 %.lcssa
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx21, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %or.i = or i32 %34, 1
  store i32 %or.i, ptr %32, align 4
  %35 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %num_free, align 4
  %37 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_order1, align 4
  %arrayidx24 = getelementptr i32, ptr %36, i32 %38
  %39 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %arrayidx24, align 4
  br label %cleanup

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.cond25.preheader.for.body28_crit_edge
  %i.1105 = phi i32 [ %inc32, %for.body28.for.body28_crit_edge ], [ 0, %for.cond25.preheader.for.body28_crit_edge ]
  %40 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buddy, align 4
  %arrayidx30 = getelementptr ptr, ptr %41, i32 %i.1105
  %42 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx30, align 4
  tail call void @bitmap_free(ptr noundef %43) #8
  %inc32 = add i32 %i.1105, 1
  %44 = ptrtoint ptr %max_order1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_order1, align 4
  %cmp27.not = icmp sgt i32 %inc32, %45
  br i1 %cmp27.not, label %for.body28.err_out_crit_edge, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

for.body28.err_out_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

err_out:                                          ; preds = %for.body28.err_out_crit_edge, %for.cond25.preheader.err_out_crit_edge, %if.end7.i.i92.err_out_crit_edge, %kcalloc.exit94.thread
  %num_free100 = phi ptr [ %num_free96, %kcalloc.exit94.thread ], [ %num_free, %if.end7.i.i92.err_out_crit_edge ], [ %num_free, %for.cond25.preheader.err_out_crit_edge ], [ %num_free, %for.body28.err_out_crit_edge ]
  %46 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buddy, align 4
  tail call void @kfree(ptr noundef %47) #8
  %48 = ptrtoint ptr %num_free100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %num_free100, align 4
  tail call void @kfree(ptr noundef %49) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out, %for.end
  %retval.0 = phi i32 [ -12, %err_out ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_buddy_alloc(ptr noundef %buddy, i32 noundef %order) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %max_order = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 2
  %0 = ptrtoint ptr %max_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_order, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %order)
  %cmp.not57 = icmp slt i32 %1, %order
  br i1 %cmp.not57, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num_free = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %12, %for.inc.for.body_crit_edge ]
  %o.058 = phi i32 [ %order, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %num_free, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %o.058
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %sub = sub i32 %2, %o.058
  %shl = shl nuw i32 1, %sub
  %7 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buddy, align 4
  %arrayidx2 = getelementptr ptr, ptr %8, i32 %o.058
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %call = tail call i32 @_find_first_bit_be(ptr noundef %10, i32 noundef %shl) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %shl)
  %cmp3 = icmp ult i32 %call, %shl
  br i1 %cmp3, label %found, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %o.058, 1
  %11 = ptrtoint ptr %max_order to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_order, align 4
  %cmp.not = icmp slt i32 %12, %inc
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

found:                                            ; preds = %if.then
  %13 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buddy, align 4
  %arrayidx8 = getelementptr ptr, ptr %14, i32 %o.058
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx8, align 4
  %rem.i = and i32 %call, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call, 5
  %add.ptr.i = getelementptr i32, ptr %16, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %18, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %19 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %num_free, align 4
  %arrayidx10 = getelementptr i32, ptr %20, i32 %o.058
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %o.058, i32 %order)
  %cmp1160 = icmp sgt i32 %o.058, %order
  br i1 %cmp1160, label %found.while.body_crit_edge, label %found.while.end_crit_edge

found.while.end_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

found.while.body_crit_edge:                       ; preds = %found
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %found.while.body_crit_edge
  %seg.062 = phi i32 [ %shl13, %while.body.while.body_crit_edge ], [ %call, %found.while.body_crit_edge ]
  %o.161 = phi i32 [ %dec12, %while.body.while.body_crit_edge ], [ %o.058, %found.while.body_crit_edge ]
  %dec12 = add nsw i32 %o.161, -1
  %shl13 = shl i32 %seg.062, 1
  %23 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buddy, align 4
  %arrayidx15 = getelementptr ptr, ptr %24, i32 %dec12
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx15, align 4
  %xor51 = and i32 %shl13, 30
  %rem.i52 = or i32 %xor51, 1
  %shl.i53 = shl nuw i32 1, %rem.i52
  %div2.i54 = lshr i32 %shl13, 5
  %add.ptr.i55 = getelementptr i32, ptr %26, i32 %div2.i54
  %27 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i55, align 4
  %or.i = or i32 %28, %shl.i53
  store i32 %or.i, ptr %add.ptr.i55, align 4
  %29 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %num_free, align 4
  %arrayidx17 = getelementptr i32, ptr %30, i32 %dec12
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx17, align 4
  %inc18 = add i32 %32, 1
  store i32 %inc18, ptr %arrayidx17, align 4
  %cmp11 = icmp sgt i32 %dec12, %order
  br i1 %cmp11, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %found.while.end_crit_edge
  %seg.0.lcssa = phi i32 [ %call, %found.while.end_crit_edge ], [ %shl13, %while.body.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %shl20 = shl i32 %seg.0.lcssa, %order
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end
  %retval.0 = phi i32 [ %shl20, %while.end ], [ -1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mthca_buddy_cleanup(ptr nocapture noundef readonly %buddy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_order = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 2
  %0 = ptrtoint ptr %max_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not7 = icmp slt i32 %1, 0
  br i1 %cmp.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buddy, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.08
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @bitmap_free(ptr noundef %5) #8
  %inc = add i32 %i.08, 1
  %6 = ptrtoint ptr %max_order to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_order, align 4
  %cmp.not = icmp sgt i32 %inc, %7
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %buddy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buddy, align 4
  tail call void @kfree(ptr noundef %9) #8
  %num_free = getelementptr inbounds %struct.mthca_buddy, ptr %buddy, i32 0, i32 1
  %10 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %num_free, align 4
  tail call void @kfree(ptr noundef %11) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_alloc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cleanup_mr_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fmr_reserved_mtts = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 27
  %0 = ptrtoint ptr %fmr_reserved_mtts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmr_reserved_mtts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %mtt_buddy = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 7, i32 2
  %max_order.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 7, i32 2, i32 2
  %2 = ptrtoint ptr %max_order.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not7.i = icmp slt i32 %3, 0
  br i1 %cmp.not7.i, label %if.then.mthca_buddy_cleanup.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.mthca_buddy_cleanup.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_buddy_cleanup.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %mtt_buddy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtt_buddy, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.08.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @bitmap_free(ptr noundef %7) #8
  %inc.i = add i32 %i.08.i, 1
  %8 = ptrtoint ptr %max_order.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_order.i, align 4
  %cmp.not.i = icmp sgt i32 %inc.i, %9
  br i1 %cmp.not.i, label %for.body.i.mthca_buddy_cleanup.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.mthca_buddy_cleanup.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_buddy_cleanup.exit

mthca_buddy_cleanup.exit:                         ; preds = %for.body.i.mthca_buddy_cleanup.exit_crit_edge, %if.then.mthca_buddy_cleanup.exit_crit_edge
  %10 = ptrtoint ptr %mtt_buddy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mtt_buddy, align 4
  tail call void @kfree(ptr noundef %11) #8
  %num_free.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 7, i32 2, i32 1
  %12 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %num_free.i, align 4
  tail call void @kfree(ptr noundef %13) #8
  br label %if.end

if.end:                                           ; preds = %mthca_buddy_cleanup.exit, %entry.if.end_crit_edge
  %mtt_buddy2 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 1
  %max_order.i28 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 1, i32 2
  %14 = ptrtoint ptr %max_order.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_order.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not7.i29 = icmp slt i32 %15, 0
  br i1 %cmp.not7.i29, label %if.end.mthca_buddy_cleanup.exit36_crit_edge, label %if.end.for.body.i34_crit_edge

if.end.for.body.i34_crit_edge:                    ; preds = %if.end
  br label %for.body.i34

if.end.mthca_buddy_cleanup.exit36_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_buddy_cleanup.exit36

for.body.i34:                                     ; preds = %for.body.i34.for.body.i34_crit_edge, %if.end.for.body.i34_crit_edge
  %i.08.i30 = phi i32 [ %inc.i32, %for.body.i34.for.body.i34_crit_edge ], [ 0, %if.end.for.body.i34_crit_edge ]
  %16 = ptrtoint ptr %mtt_buddy2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mtt_buddy2, align 4
  %arrayidx.i31 = getelementptr ptr, ptr %17, i32 %i.08.i30
  %18 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i31, align 4
  tail call void @bitmap_free(ptr noundef %19) #8
  %inc.i32 = add i32 %i.08.i30, 1
  %20 = ptrtoint ptr %max_order.i28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_order.i28, align 4
  %cmp.not.i33 = icmp sgt i32 %inc.i32, %21
  br i1 %cmp.not.i33, label %for.body.i34.mthca_buddy_cleanup.exit36_crit_edge, label %for.body.i34.for.body.i34_crit_edge

for.body.i34.for.body.i34_crit_edge:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i34

for.body.i34.mthca_buddy_cleanup.exit36_crit_edge: ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %mthca_buddy_cleanup.exit36

mthca_buddy_cleanup.exit36:                       ; preds = %for.body.i34.mthca_buddy_cleanup.exit36_crit_edge, %if.end.mthca_buddy_cleanup.exit36_crit_edge
  %22 = ptrtoint ptr %mtt_buddy2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mtt_buddy2, align 4
  tail call void @kfree(ptr noundef %23) #8
  %num_free.i35 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 1, i32 1
  %24 = ptrtoint ptr %num_free.i35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %num_free.i35, align 4
  tail call void @kfree(ptr noundef %25) #8
  %tavor_fmr4 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 7
  %mtt_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 7, i32 1
  %26 = ptrtoint ptr %mtt_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mtt_base, align 4
  %tobool5.not = icmp eq ptr %27, null
  br i1 %tobool5.not, label %mthca_buddy_cleanup.exit36.if.end10_crit_edge, label %if.then6

mthca_buddy_cleanup.exit36.if.end10_crit_edge:    ; preds = %mthca_buddy_cleanup.exit36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %mthca_buddy_cleanup.exit36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %27) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %mthca_buddy_cleanup.exit36.if.end10_crit_edge
  %28 = ptrtoint ptr %tavor_fmr4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tavor_fmr4, align 8
  %tobool13.not = icmp eq ptr %29, null
  br i1 %tobool13.not, label %if.end10.if.end18_crit_edge, label %if.then14

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %29) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10.if.end18_crit_edge
  %mr_table1 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21
  tail call void @mthca_alloc_cleanup(ptr noundef %mr_table1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_WRITE_MTT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_table_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_table_get_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_mr.c", i32 436, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mthca/mthca_mr.c", i32 491, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mthca_mr_alloc._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @mthca_mr_alloc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/mthca/mthca_mr.c", i32 558, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mthca_free_mr._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @mthca_free_mr._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/mthca/mthca_mr.c", i32 582, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mthca_init_mr_table._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @mthca_init_mr_table._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/mthca/mthca_mr.c", i32 597, i32 4}
!22 = !{ptr @mthca_init_mr_table._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mthca_init_mr_table._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/mthca/mthca_mr.c", i32 618, i32 4}
!26 = !{ptr @mthca_init_mr_table._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mthca_init_mr_table._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/mthca/mthca_mr.c", i32 630, i32 4}
!30 = !{ptr @mthca_init_mr_table._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mthca_init_mr_table._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mthca/mthca_mr.c", i32 657, i32 4}
!34 = !{ptr @mthca_init_mr_table._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mthca_init_mr_table._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/mthca/mthca_mr.c", i32 283, i32 4}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__mthca_write_mtt._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @__mthca_write_mtt._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mthca_buddy_init.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/hw/mthca/mthca_mr.c", i32 145, i32 2}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2158148475, i64 2158148978, i64 2158148512, i64 2158148568, i64 2158148602, i64 2158148626, i64 2158148667, i64 2158148688, i64 2158148716, i64 2158148750}
!56 = !{i64 2158150144, i64 2158150647, i64 2158150181, i64 2158150237, i64 2158150271, i64 2158150295, i64 2158150336, i64 2158150357, i64 2158150385, i64 2158150419}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2158151767, i64 2158152270, i64 2158151804, i64 2158151860, i64 2158151894, i64 2158151918, i64 2158151959, i64 2158151980, i64 2158152008, i64 2158152042}
!59 = !{i64 5406103}
!60 = !{i32 0, i32 33}
