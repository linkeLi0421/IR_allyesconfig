; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_profile.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_profile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mthca_resource = type { i64, i64, i32, i32, i32 }
%struct.mthca_dev_lim = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.181 }
%union.anon.181 = type { %struct.anon.183 }
%struct.anon.183 = type { i32, i32, i8, i32, i32, i64 }
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
%struct.mthca_profile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.mthca_init_hca_param = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@mthca_make_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Profile requires 0x%llx bytes; won't fit in 0x%llx bytes of context memory.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mthca_make_profile\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/infiniband/hw/mthca/mthca_profile.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_make_profile._entry_ptr = internal global ptr @mthca_make_profile._entry, section ".printk_index", align 4
@mthca_debug_level = external dso_local local_unnamed_addr global i32, align 4
@mthca_make_profile._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 161, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"profile[%2d]--%2d/%2d @ 0x%16llx (size 0x%8llx)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mthca_make_profile._entry_ptr.8 = internal global ptr @mthca_make_profile._entry.5, section ".printk_index", align 4
@mthca_make_profile._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 166, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HCA context memory: reserving %d KB\0A\00", [59 x i8] zeroinitializer }, align 32
@mthca_make_profile._entry_ptr.11 = internal global ptr @mthca_make_profile._entry.9, section ".printk_index", align 4
@mthca_make_profile._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 170, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"HCA memory: allocated %d KB/%d KB (%d KB free)\0A\00", [48 x i8] zeroinitializer }, align 32
@mthca_make_profile._entry_ptr.14 = internal global ptr @mthca_make_profile._entry.12, section ".printk_index", align 4
@mthca_make_profile._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 262, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MPT table too large (requested size 2^%d >= 2^24)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mthca_make_profile._entry_ptr.18 = internal global ptr @mthca_make_profile._entry.15, section ".printk_index", align 4
@mthca_make_profile._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 263, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Disabling memory key throughput optimization.\0A\00", [49 x i8] zeroinitializer }, align 32
@mthca_make_profile._entry_ptr.21 = internal global ptr @mthca_make_profile._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 148, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 157, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 165, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 168, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 261, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [47 x i8] c"../drivers/infiniband/hw/mthca/mthca_profile.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 263, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @mthca_make_profile._entry, ptr @mthca_make_profile._entry.12, ptr @mthca_make_profile._entry.15, ptr @mthca_make_profile._entry.19, ptr @mthca_make_profile._entry.5, ptr @mthca_make_profile._entry.9, ptr @mthca_make_profile._entry_ptr, ptr @mthca_make_profile._entry_ptr.11, ptr @mthca_make_profile._entry_ptr.14, ptr @mthca_make_profile._entry_ptr.18, ptr @mthca_make_profile._entry_ptr.21, ptr @mthca_make_profile._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_make_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_make_profile._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_make_profile._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_make_profile._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_make_profile._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_make_profile._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @mthca_make_profile(ptr noundef %dev, ptr nocapture noundef readonly %request, ptr nocapture noundef readonly %dev_lim, ptr noundef %init_hca) local_unnamed_addr #0 align 64 {
entry:
  %__tmp = alloca %struct.mthca_resource, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 448) #9
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %qpc_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 43
  %1 = ptrtoint ptr %qpc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %qpc_entry_sz, align 4
  %conv = sext i32 %2 to i64
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %call7.i.i.i, align 8
  %eec_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 42
  %4 = ptrtoint ptr %eec_entry_sz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eec_entry_sz, align 8
  %conv1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv1, ptr %arrayidx2, align 8
  %srq_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 48
  %7 = ptrtoint ptr %srq_entry_sz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %srq_entry_sz, align 8
  %conv4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 2
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv4, ptr %arrayidx5, align 8
  %cqc_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 47
  %10 = ptrtoint ptr %cqc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cqc_entry_sz, align 4
  %conv7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv7, ptr %arrayidx8, align 8
  %eqpc_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 45
  %13 = ptrtoint ptr %eqpc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eqpc_entry_sz, align 4
  %conv10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 4
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv10, ptr %arrayidx11, align 8
  %eeec_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 44
  %16 = ptrtoint ptr %eeec_entry_sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eeec_entry_sz, align 8
  %conv13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 5
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv13, ptr %arrayidx14, align 8
  %eqc_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 46
  %19 = ptrtoint ptr %eqc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eqc_entry_sz, align 8
  %conv16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 6
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv16, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 7
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 32, ptr %arrayidx19, align 8
  %arrayidx21 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 8
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 256, ptr %arrayidx21, align 8
  %mpt_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 50
  %24 = ptrtoint ptr %mpt_entry_sz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mpt_entry_sz, align 8
  %conv23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 9
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv23, ptr %arrayidx24, align 8
  %mtt_seg_size = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 26
  %27 = ptrtoint ptr %mtt_seg_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mtt_seg_size, align 8
  %conv26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 10
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv26, ptr %arrayidx27, align 8
  %uar_scratch_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 49
  %30 = ptrtoint ptr %uar_scratch_entry_sz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %uar_scratch_entry_sz, align 4
  %conv29 = sext i32 %31 to i64
  %arrayidx30 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 11
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv29, ptr %arrayidx30, align 8
  %arrayidx32 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 12
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 32, ptr %arrayidx32, align 8
  %uarc_size = getelementptr inbounds %struct.mthca_profile, ptr %request, i32 0, i32 9
  %34 = ptrtoint ptr %uarc_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %uarc_size, align 4
  %conv34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 13
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv34, ptr %arrayidx35, align 8
  %37 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %request, align 4
  %num = getelementptr inbounds %struct.mthca_resource, ptr %call7.i.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %num, align 4
  %num_srq = getelementptr inbounds %struct.mthca_profile, ptr %request, i32 0, i32 2
  %40 = ptrtoint ptr %num_srq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_srq, align 4
  %num39 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 2, i32 3
  %42 = ptrtoint ptr %num39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %num39, align 4
  %num42 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 4, i32 3
  %43 = ptrtoint ptr %num42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %num42, align 4
  %rdb_per_qp = getelementptr inbounds %struct.mthca_profile, ptr %request, i32 0, i32 1
  %44 = ptrtoint ptr %rdb_per_qp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rdb_per_qp, align 4
  %mul = mul i32 %45, %38
  %num45 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 7, i32 3
  %46 = ptrtoint ptr %num45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul, ptr %num45, align 4
  %num_cq = getelementptr inbounds %struct.mthca_profile, ptr %request, i32 0, i32 3
  %47 = ptrtoint ptr %num_cq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_cq, align 4
  %num47 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 3, i32 3
  %49 = ptrtoint ptr %num47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %num47, align 4
  %num49 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 6, i32 3
  %50 = ptrtoint ptr %num49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 32, ptr %num49, align 4
  %num_mcg = getelementptr inbounds %struct.mthca_profile, ptr %request, i32 0, i32 4
  %51 = ptrtoint ptr %num_mcg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_mcg, align 4
  %num51 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 8, i32 3
  %53 = ptrtoint ptr %num51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %num51, align 4
  %num_mpt = getelementptr inbounds %struct.mthca_profile, ptr %request, i32 0, i32 5
  %54 = ptrtoint ptr %num_mpt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_mpt, align 4
  %num53 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 9, i32 3
  %56 = ptrtoint ptr %num53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %num53, align 4
  %num_mtt = getelementptr inbounds %struct.mthca_profile, ptr %request, i32 0, i32 6
  %57 = ptrtoint ptr %num_mtt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_mtt, align 4
  %num55 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 10, i32 3
  %59 = ptrtoint ptr %num55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %num55, align 4
  %num_uar = getelementptr inbounds %struct.mthca_profile, ptr %request, i32 0, i32 8
  %60 = ptrtoint ptr %num_uar to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_uar, align 4
  %num57 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 11, i32 3
  %62 = ptrtoint ptr %num57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %num57, align 4
  %num60 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 13, i32 3
  %63 = ptrtoint ptr %num60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %61, ptr %num60, align 4
  %num_udav = getelementptr inbounds %struct.mthca_profile, ptr %request, i32 0, i32 7
  %64 = ptrtoint ptr %num_udav to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_udav, align 4
  %num62 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 12, i32 3
  %66 = ptrtoint ptr %num62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %num62, align 4
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %67 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %68, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool77.not = icmp eq i32 %and.i, 0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0676 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx64 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.0676
  %type = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.0676, i32 2
  %69 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %i.0676, ptr %type, align 8
  %num66 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.0676, i32 3
  %70 = ptrtoint ptr %num66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num66, align 4
  %72 = tail call i32 @llvm.cttz.i32(i32 %71, i1 true), !range !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %iszero = icmp eq i32 %71, 0
  %73 = select i1 %iszero, i32 0, i32 %72
  %log_num = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.0676, i32 4
  %74 = ptrtoint ptr %log_num to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %log_num, align 8
  %conv72 = sext i32 %71 to i64
  %75 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx64, align 8
  %mul75 = mul i64 %76, %conv72
  %77 = tail call i64 @llvm.umax.i64(i64 %mul75, i64 4096)
  %spec.select = select i1 %tobool77.not, i64 %mul75, i64 %77
  %78 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %spec.select, ptr %arrayidx64, align 8
  %inc = add nuw nsw i32 %i.0676, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %79 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mthca_flags.i, align 8
  %and.i669 = and i32 %80, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i669)
  %tobool92.not = icmp eq i32 %and.i669, 0
  br i1 %tobool92.not, label %if.else, label %if.then93

if.then93:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %max_icm_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 51, i32 0, i32 5
  %81 = ptrtoint ptr %max_icm_sz to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %max_icm_sz, align 8
  br label %if.end96

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %ddr_start = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 9
  %83 = ptrtoint ptr %ddr_start to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %ddr_start, align 8
  %fw = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 8
  %85 = ptrtoint ptr %fw to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %fw, align 8
  %sub95 = sub i64 %86, %84
  br label %if.end96

if.end96:                                         ; preds = %if.else, %if.then93
  %mem_avail.0 = phi i64 [ %82, %if.then93 ], [ %sub95, %if.else ]
  %mem_base.0 = phi i64 [ 0, %if.then93 ], [ %84, %if.else ]
  br label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %for.inc123.for.cond101.preheader_crit_edge, %if.end96
  %i.1679 = phi i32 [ 14, %if.end96 ], [ %dec, %for.inc123.for.cond101.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1679)
  %cmp102677 = icmp ugt i32 %i.1679, 1
  br i1 %cmp102677, label %for.cond101.preheader.for.body104_crit_edge, label %for.cond101.preheader.for.cond125.preheader_crit_edge

for.cond101.preheader.for.cond125.preheader_crit_edge: ; preds = %for.cond101.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond125.preheader

for.cond101.preheader.for.body104_crit_edge:      ; preds = %for.cond101.preheader
  br label %for.body104

for.cond125.preheader:                            ; preds = %for.inc123.for.cond125.preheader_crit_edge, %for.cond101.preheader.for.cond125.preheader_crit_edge
  %pdev156 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  br label %for.body128

for.body104:                                      ; preds = %for.inc120.for.body104_crit_edge, %for.cond101.preheader.for.body104_crit_edge
  %j.0678 = phi i32 [ %inc121, %for.inc120.for.body104_crit_edge ], [ 1, %for.cond101.preheader.for.body104_crit_edge ]
  %arrayidx105 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %j.0678
  %87 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx105, align 8
  %sub107 = add nsw i32 %j.0678, -1
  %arrayidx108 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %sub107
  %89 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx108, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %90)
  %cmp110 = icmp ugt i64 %88, %90
  br i1 %cmp110, label %do.body, label %for.body104.for.inc120_crit_edge

for.body104.for.inc120_crit_edge:                 ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc120

do.body:                                          ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__tmp)
  %91 = call ptr @memcpy(ptr %__tmp, ptr %arrayidx105, i32 32)
  %92 = call ptr @memcpy(ptr %arrayidx105, ptr %arrayidx108, i32 32)
  %93 = call ptr @memcpy(ptr %arrayidx108, ptr %__tmp, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__tmp)
  br label %for.inc120

for.inc120:                                       ; preds = %do.body, %for.body104.for.inc120_crit_edge
  %inc121 = add nuw nsw i32 %j.0678, 1
  %exitcond688.not = icmp eq i32 %inc121, %i.1679
  br i1 %exitcond688.not, label %for.inc123, label %for.inc120.for.body104_crit_edge

for.inc120.for.body104_crit_edge:                 ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body104

for.inc123:                                       ; preds = %for.inc120
  %dec = add nsw i32 %i.1679, -1
  br i1 %cmp102677, label %for.inc123.for.cond101.preheader_crit_edge, label %for.inc123.for.cond125.preheader_crit_edge

for.inc123.for.cond125.preheader_crit_edge:       ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond125.preheader

for.inc123.for.cond101.preheader_crit_edge:       ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond101.preheader

for.body128:                                      ; preds = %for.inc170.for.body128_crit_edge, %for.cond125.preheader
  %i.2681 = phi i32 [ 0, %for.cond125.preheader ], [ %inc171, %for.inc170.for.body128_crit_edge ]
  %total_size.0680 = phi i64 [ 0, %for.cond125.preheader ], [ %total_size.1, %for.inc170.for.body128_crit_edge ]
  %arrayidx129 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.2681
  %94 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx129, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %tobool131.not = icmp eq i64 %95, 0
  br i1 %tobool131.not, label %for.body128.if.end137_crit_edge, label %if.then132

for.body128.if.end137_crit_edge:                  ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then132:                                       ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i64 %total_size.0680, %mem_base.0
  %start = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.2681, i32 1
  %96 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %add, ptr %start, align 8
  %add136 = add i64 %95, %total_size.0680
  br label %if.end137

if.end137:                                        ; preds = %if.then132, %for.body128.if.end137_crit_edge
  %total_size.1 = phi i64 [ %add136, %if.then132 ], [ %total_size.0680, %for.body128.if.end137_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %mem_avail.0, i64 %total_size.1)
  %cmp138 = icmp ult i64 %mem_avail.0, %total_size.1
  br i1 %cmp138, label %do.end143, label %if.end145

do.end143:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %pdev156 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev156, align 8
  %dev144 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev144, ptr noundef nonnull @.str, i64 noundef %total_size.1, i64 noundef %mem_avail.0) #10
  tail call void @kfree(ptr noundef %call7.i.i.i) #6
  br label %cleanup

if.end145:                                        ; preds = %if.end137
  %99 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx129, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %100)
  %tobool148.not = icmp eq i64 %100, 0
  br i1 %tobool148.not, label %if.end145.for.inc170_crit_edge, label %do.body150

if.end145.for.inc170_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc170

do.body150:                                       ; preds = %if.end145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %101 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool151.not = icmp eq i32 %101, 0
  br i1 %tobool151.not, label %do.body150.for.inc170_crit_edge, label %do.end155

do.body150.for.inc170_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc170

do.end155:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %pdev156 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev156, align 8
  %dev157 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %type159 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.2681, i32 2
  %104 = ptrtoint ptr %type159 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %type159, align 8
  %log_num161 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.2681, i32 4
  %106 = ptrtoint ptr %log_num161 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %log_num161, align 8
  %start163 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.2681, i32 1
  %108 = ptrtoint ptr %start163 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %start163, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev157, ptr noundef nonnull @.str.6, i32 noundef %i.2681, i32 noundef %105, i32 noundef %107, i64 noundef %109, i64 noundef %100) #10
  br label %for.inc170

for.inc170:                                       ; preds = %do.end155, %do.body150.for.inc170_crit_edge, %if.end145.for.inc170_crit_edge
  %inc171 = add nuw nsw i32 %i.2681, 1
  %exitcond689.not = icmp eq i32 %inc171, 14
  br i1 %exitcond689.not, label %for.end172, label %for.inc170.for.body128_crit_edge

for.inc170.for.body128_crit_edge:                 ; preds = %for.inc170
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body128

for.end172:                                       ; preds = %for.inc170
  %110 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mthca_flags.i, align 8
  %and.i671 = and i32 %111, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i671)
  %tobool174.not = icmp eq i32 %and.i671, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %112 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool190.not = icmp eq i32 %112, 0
  br i1 %tobool174.not, label %do.body189, label %do.body176

do.body176:                                       ; preds = %for.end172
  br i1 %tobool190.not, label %do.body176.if.end207_crit_edge, label %do.end181

do.body176.if.end207_crit_edge:                   ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

do.end181:                                        ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %pdev156 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev156, align 8
  %dev183 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %115 = lshr i64 %total_size.1, 10
  %conv184 = trunc i64 %115 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev183, ptr noundef nonnull @.str.10, i32 noundef %conv184) #10
  br label %if.end207

do.body189:                                       ; preds = %for.end172
  br i1 %tobool190.not, label %do.body189.if.end207_crit_edge, label %do.end194

do.body189.if.end207_crit_edge:                   ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

do.end194:                                        ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %pdev156 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev156, align 8
  %dev196 = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  %118 = lshr i64 %total_size.1, 10
  %conv198 = trunc i64 %118 to i32
  %shr199 = lshr i64 %mem_avail.0, 10
  %conv200 = trunc i64 %shr199 to i32
  %sub201 = sub i64 %mem_avail.0, %total_size.1
  %shr202 = lshr i64 %sub201, 10
  %conv203 = trunc i64 %shr202 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev196, ptr noundef nonnull @.str.13, i32 noundef %conv198, i32 noundef %conv200, i32 noundef %conv203) #10
  br label %if.end207

if.end207:                                        ; preds = %do.end194, %do.body189.if.end207_crit_edge, %do.end181, %do.body176.if.end207_crit_edge
  %uarc_size347 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 2
  %uarc_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 19, i32 1
  %uarc_base353 = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 12
  %log_uarc_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 24
  %log_uar_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 23
  %ddr_av_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 2
  %num_ddr_avs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 26, i32 1
  %num_uars = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 6
  %uar_scratch_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 11
  %num_mtt_segs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 25
  %mtt_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 3
  %mtt_base326 = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 10
  %mtt_seg_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 21
  %num_mpts = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 24
  %mpt_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 21, i32 4
  %mpt_base313 = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 9
  %log_mpt_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 22
  %num_mgms = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 31
  %num_amgms = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 32
  %mc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 8
  %log_mc_entry_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 13
  %log_mc_table_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 20
  %mc_hash_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 14
  %rdb_shift = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 2
  %rdb_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 1
  %rdb_base285 = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 7
  %num_eqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 22
  %eqc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 6
  %log_num_eqs = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 19
  %eeec_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 5
  %eqpc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 4
  %num_cqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 19
  %cqc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 3
  %log_num_cqs = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 18
  %num_srqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 13
  %srqc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 2
  %log_num_srqs = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 17
  %num_eecs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 17
  %eec_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 1
  %log_num_eecs = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 16
  %num_qps = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 8
  %log_num_qps = getelementptr inbounds %struct.mthca_init_hca_param, ptr %init_hca, i32 0, i32 15
  br label %for.body211

for.body211:                                      ; preds = %for.inc364.for.body211_crit_edge, %if.end207
  %i.3684 = phi i32 [ 0, %if.end207 ], [ %inc365, %for.inc364.for.body211_crit_edge ]
  %type213 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 2
  %119 = ptrtoint ptr %type213 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %type213, align 8
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values)
  switch i32 %120, label %for.body211.for.inc364_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb222
    i32 2, label %sw.bb231
    i32 3, label %sw.bb240
    i32 4, label %sw.bb249
    i32 5, label %sw.bb252
    i32 6, label %sw.bb255
    i32 7, label %sw.bb264
    i32 8, label %sw.bb286
    i32 9, label %sw.bb305
    i32 10, label %sw.bb317
    i32 11, label %sw.bb333
    i32 12, label %sw.bb339
    i32 13, label %sw.bb345
  ]

for.body211.for.inc364_crit_edge:                 ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc364

sw.bb:                                            ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %num215 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %122 = ptrtoint ptr %num215 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num215, align 4
  %124 = ptrtoint ptr %num_qps to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %num_qps, align 8
  %start218 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %125 = ptrtoint ptr %start218 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %start218, align 8
  %127 = ptrtoint ptr %init_hca to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %init_hca, align 8
  %log_num220 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 4
  %128 = ptrtoint ptr %log_num220 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %log_num220, align 8
  %conv221 = trunc i32 %129 to i8
  %130 = ptrtoint ptr %log_num_qps to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv221, ptr %log_num_qps, align 4
  br label %for.inc364

sw.bb222:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %num224 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %131 = ptrtoint ptr %num224 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num224, align 4
  %133 = ptrtoint ptr %num_eecs to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %num_eecs, align 4
  %start227 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %134 = ptrtoint ptr %start227 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %start227, align 8
  %136 = ptrtoint ptr %eec_base to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %eec_base, align 8
  %log_num229 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 4
  %137 = ptrtoint ptr %log_num229 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %log_num229, align 8
  %conv230 = trunc i32 %138 to i8
  %139 = ptrtoint ptr %log_num_eecs to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv230, ptr %log_num_eecs, align 1
  br label %for.inc364

sw.bb231:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %num233 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %140 = ptrtoint ptr %num233 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num233, align 4
  %142 = ptrtoint ptr %num_srqs to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %num_srqs, align 4
  %start236 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %143 = ptrtoint ptr %start236 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %start236, align 8
  %145 = ptrtoint ptr %srqc_base to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %srqc_base, align 8
  %log_num238 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 4
  %146 = ptrtoint ptr %log_num238 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %log_num238, align 8
  %conv239 = trunc i32 %147 to i8
  %148 = ptrtoint ptr %log_num_srqs to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv239, ptr %log_num_srqs, align 2
  br label %for.inc364

sw.bb240:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %num242 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %149 = ptrtoint ptr %num242 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %num242, align 4
  %151 = ptrtoint ptr %num_cqs to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %num_cqs, align 4
  %start245 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %152 = ptrtoint ptr %start245 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %start245, align 8
  %154 = ptrtoint ptr %cqc_base to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %153, ptr %cqc_base, align 8
  %log_num247 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 4
  %155 = ptrtoint ptr %log_num247 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %log_num247, align 8
  %conv248 = trunc i32 %156 to i8
  %157 = ptrtoint ptr %log_num_cqs to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv248, ptr %log_num_cqs, align 1
  br label %for.inc364

sw.bb249:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %start251 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %158 = ptrtoint ptr %start251 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %start251, align 8
  %160 = ptrtoint ptr %eqpc_base to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %159, ptr %eqpc_base, align 8
  br label %for.inc364

sw.bb252:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %start254 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %161 = ptrtoint ptr %start254 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %start254, align 8
  %163 = ptrtoint ptr %eeec_base to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %eeec_base, align 8
  br label %for.inc364

sw.bb255:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %num257 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %164 = ptrtoint ptr %num257 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %num257, align 4
  %166 = ptrtoint ptr %num_eqs to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %num_eqs, align 8
  %start260 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %167 = ptrtoint ptr %start260 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %start260, align 8
  %169 = ptrtoint ptr %eqc_base to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %168, ptr %eqc_base, align 8
  %log_num262 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 4
  %170 = ptrtoint ptr %log_num262 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %log_num262, align 8
  %conv263 = trunc i32 %171 to i8
  %172 = ptrtoint ptr %log_num_eqs to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv263, ptr %log_num_eqs, align 8
  br label %for.inc364

sw.bb264:                                         ; preds = %for.body211
  %num270 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %173 = ptrtoint ptr %num270 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %num270, align 4
  br label %for.cond265

for.cond265:                                      ; preds = %for.cond265.for.cond265_crit_edge, %sw.bb264
  %storemerge = phi i32 [ 0, %sw.bb264 ], [ %inc277, %for.cond265.for.cond265_crit_edge ]
  %175 = ptrtoint ptr %rdb_shift to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %storemerge, ptr %rdb_shift, align 4
  %176 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %request, align 4
  %shl = shl i32 %177, %storemerge
  %cmp271 = icmp slt i32 %shl, %174
  %inc277 = add i32 %storemerge, 1
  br i1 %cmp271, label %for.cond265.for.cond265_crit_edge, label %for.end278

for.cond265.for.cond265_crit_edge:                ; preds = %for.cond265
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond265

for.end278:                                       ; preds = %for.cond265
  call void @__sanitizer_cov_trace_pc() #8
  %start280 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %178 = ptrtoint ptr %start280 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %start280, align 8
  %conv281 = trunc i64 %179 to i32
  %180 = ptrtoint ptr %rdb_base to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv281, ptr %rdb_base, align 8
  %181 = ptrtoint ptr %rdb_base285 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %179, ptr %rdb_base285, align 8
  br label %for.inc364

sw.bb286:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %num288 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %182 = ptrtoint ptr %num288 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %num288, align 4
  %shr289 = ashr i32 %183, 1
  %184 = ptrtoint ptr %num_mgms to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %shr289, ptr %num_mgms, align 4
  %185 = ptrtoint ptr %num_amgms to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %shr289, ptr %num_amgms, align 8
  %start296 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %186 = ptrtoint ptr %start296 to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %start296, align 8
  %188 = ptrtoint ptr %mc_base to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %187, ptr %mc_base, align 8
  %189 = ptrtoint ptr %log_mc_entry_sz to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 8, ptr %log_mc_entry_sz, align 8
  %log_num298 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 4
  %190 = ptrtoint ptr %log_num298 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %log_num298, align 8
  %conv299 = trunc i32 %191 to i8
  %192 = ptrtoint ptr %log_mc_table_sz to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv299, ptr %log_mc_table_sz, align 1
  %sub302 = add i32 %191, -1
  %shl303 = shl nuw i32 1, %sub302
  %conv304 = trunc i32 %shl303 to i16
  %193 = ptrtoint ptr %mc_hash_sz to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv304, ptr %mc_hash_sz, align 2
  br label %for.inc364

sw.bb305:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %num307 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %194 = ptrtoint ptr %num307 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %num307, align 4
  %196 = ptrtoint ptr %num_mpts to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %num_mpts, align 8
  %start310 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %197 = ptrtoint ptr %start310 to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %start310, align 8
  %199 = ptrtoint ptr %mpt_base to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %198, ptr %mpt_base, align 8
  %200 = ptrtoint ptr %mpt_base313 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %198, ptr %mpt_base313, align 8
  %log_num315 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 4
  %201 = ptrtoint ptr %log_num315 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %log_num315, align 8
  %conv316 = trunc i32 %202 to i8
  %203 = ptrtoint ptr %log_mpt_sz to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv316, ptr %log_mpt_sz, align 1
  br label %for.inc364

sw.bb317:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %num319 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %204 = ptrtoint ptr %num319 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %num319, align 4
  %206 = ptrtoint ptr %num_mtt_segs to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %num_mtt_segs, align 4
  %start322 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %207 = ptrtoint ptr %start322 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %start322, align 8
  %209 = ptrtoint ptr %mtt_base to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %208, ptr %mtt_base, align 8
  %210 = ptrtoint ptr %mtt_base326 to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %208, ptr %mtt_base326, align 8
  %211 = ptrtoint ptr %mtt_seg_size to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %mtt_seg_size, align 8
  %213 = tail call i32 @llvm.cttz.i32(i32 %212, i1 true), !range !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %iszero329 = icmp eq i32 %212, 0
  %214 = trunc i32 %213 to i8
  %215 = add nsw i8 %214, -6
  %conv332 = select i1 %iszero329, i8 -7, i8 %215
  %216 = ptrtoint ptr %mtt_seg_sz to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv332, ptr %mtt_seg_sz, align 2
  br label %for.inc364

sw.bb333:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %num335 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %217 = ptrtoint ptr %num335 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %num335, align 4
  %219 = ptrtoint ptr %num_uars to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %num_uars, align 8
  %start338 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %220 = ptrtoint ptr %start338 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %start338, align 8
  %222 = ptrtoint ptr %uar_scratch_base to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %221, ptr %uar_scratch_base, align 8
  br label %for.inc364

sw.bb339:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %start341 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %223 = ptrtoint ptr %start341 to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %start341, align 8
  %225 = ptrtoint ptr %ddr_av_base to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 %224, ptr %ddr_av_base, align 8
  %num343 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 3
  %226 = ptrtoint ptr %num343 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %num343, align 4
  %228 = ptrtoint ptr %num_ddr_avs to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %num_ddr_avs, align 4
  br label %for.inc364

sw.bb345:                                         ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #8
  %229 = ptrtoint ptr %uarc_size to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %uarc_size, align 4
  %231 = ptrtoint ptr %uarc_size347 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %uarc_size347, align 8
  %start349 = getelementptr %struct.mthca_resource, ptr %call7.i.i.i, i32 %i.3684, i32 1
  %232 = ptrtoint ptr %start349 to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %start349, align 8
  %234 = ptrtoint ptr %uarc_base to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %233, ptr %uarc_base, align 8
  %235 = ptrtoint ptr %uarc_base353 to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %233, ptr %uarc_base353, align 8
  %236 = load i32, ptr %uarc_size, align 4
  %237 = tail call i32 @llvm.cttz.i32(i32 %236, i1 true), !range !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %iszero355 = icmp eq i32 %236, 0
  %238 = trunc i32 %237 to i8
  %239 = add nsw i8 %238, -12
  %conv358 = select i1 %iszero355, i8 -13, i8 %239
  %240 = ptrtoint ptr %log_uarc_sz to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv358, ptr %log_uarc_sz, align 1
  %241 = ptrtoint ptr %num_uar to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %num_uar, align 4
  %243 = tail call i32 @llvm.cttz.i32(i32 %242, i1 true), !range !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %iszero360 = icmp eq i32 %242, 0
  %244 = trunc i32 %243 to i8
  %conv363 = select i1 %iszero360, i8 -1, i8 %244
  %245 = ptrtoint ptr %log_uar_sz to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv363, ptr %log_uar_sz, align 4
  br label %for.inc364

for.inc364:                                       ; preds = %sw.bb345, %sw.bb339, %sw.bb333, %sw.bb317, %sw.bb305, %sw.bb286, %for.end278, %sw.bb255, %sw.bb252, %sw.bb249, %sw.bb240, %sw.bb231, %sw.bb222, %sw.bb, %for.body211.for.inc364_crit_edge
  %inc365 = add nuw nsw i32 %i.3684, 1
  %exitcond690.not = icmp eq i32 %inc365, 14
  br i1 %exitcond690.not, label %for.end366, label %for.inc364.for.body211_crit_edge

for.inc364.for.body211_crit_edge:                 ; preds = %for.inc364
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body211

for.end366:                                       ; preds = %for.inc364
  %num_pds = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 34
  %246 = ptrtoint ptr %num_pds to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 32768, ptr %num_pds, align 8
  %247 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %mthca_flags.i, align 8
  %and = and i32 %248, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool368.not = icmp eq i32 %and, 0
  br i1 %tobool368.not, label %for.end366.if.end388_crit_edge, label %land.lhs.true

for.end366.if.end388_crit_edge:                   ; preds = %for.end366
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end388

land.lhs.true:                                    ; preds = %for.end366
  %249 = ptrtoint ptr %log_mpt_sz to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %log_mpt_sz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %250)
  %cmp371 = icmp ugt i8 %250, 23
  br i1 %cmp371, label %do.end376, label %land.lhs.true.if.end388_crit_edge

land.lhs.true.if.end388_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end388

do.end376:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv370 = zext i8 %250 to i32
  %251 = ptrtoint ptr %pdev156 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %pdev156, align 8
  %dev378 = getelementptr inbounds %struct.pci_dev, ptr %252, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev378, ptr noundef nonnull @.str.16, i32 noundef %conv370) #10
  %253 = ptrtoint ptr %pdev156 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %pdev156, align 8
  %dev385 = getelementptr inbounds %struct.pci_dev, ptr %254, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev385, ptr noundef nonnull @.str.20) #10
  %255 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %mthca_flags.i, align 8
  %and387 = and i32 %256, -257
  store i32 %and387, ptr %mthca_flags.i, align 8
  br label %if.end388

if.end388:                                        ; preds = %do.end376, %land.lhs.true.if.end388_crit_edge, %for.end366.if.end388_crit_edge
  %257 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %mthca_flags.i, align 8
  %and.i673 = and i32 %258, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i673)
  %tobool390.not = icmp eq i32 %and.i673, 0
  br i1 %tobool390.not, label %if.else393, label %if.end388.if.end397_crit_edge

if.end388.if.end397_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end397

if.else393:                                       ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #8
  %fmr_reserved_mtts394 = getelementptr inbounds %struct.mthca_profile, ptr %request, i32 0, i32 10
  %259 = ptrtoint ptr %fmr_reserved_mtts394 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %fmr_reserved_mtts394, align 4
  br label %if.end397

if.end397:                                        ; preds = %if.else393, %if.end388.if.end397_crit_edge
  %.sink = phi i32 [ %260, %if.else393 ], [ 0, %if.end388.if.end397_crit_edge ]
  %261 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 27
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %.sink, ptr %261, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end397, %do.end143, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ -12, %do.end143 ], [ %total_size.1, %if.end397 ], [ -12, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_profile.c", i32 148, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mthca_make_profile._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mthca_make_profile._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mthca/mthca_profile.c", i32 157, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mthca_make_profile._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mthca_make_profile._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/mthca/mthca_profile.c", i32 165, i32 3}
!15 = !{ptr @mthca_make_profile._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @mthca_make_profile._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/mthca/mthca_profile.c", i32 168, i32 3}
!19 = !{ptr @mthca_make_profile._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mthca_make_profile._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/mthca/mthca_profile.c", i32 261, i32 3}
!23 = !{ptr @.str.17, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mthca_make_profile._entry.15, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @mthca_make_profile._entry_ptr.18, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mthca/mthca_profile.c", i32 263, i32 3}
!28 = !{ptr @mthca_make_profile._entry.19, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mthca_make_profile._entry_ptr.21, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i32 0, i32 33}
