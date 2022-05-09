; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.etnaviv_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.etnaviv_cmdbuf, i8, i32, i32, i32, ptr, i32, [0 x %struct.etnaviv_gem_submit_bo] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.79, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.79 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_gem_submit_bo = type { i32, i64, ptr, ptr, ptr, i32, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.80, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.80 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.drm_etnaviv_gem_submit = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i32, i32 }
%struct.etnaviv_drm_private = type { i32, [4 x ptr], i32, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.90 }
%union.anon.90 = type { %struct.anon.92 }
%struct.anon.92 = type { ptr, i32, %struct.spinlock, [16 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.etnaviv_file_private = type { ptr, [4 x %struct.drm_sched_entity] }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.drm_etnaviv_gem_submit_bo = type { i32, i32, i64 }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.drm_etnaviv_gem_submit_reloc = type { i32, i32, i64, i32 }
%struct.drm_etnaviv_gem_submit_pmr = type { i32, i8, i8, i16, i32, i32, i32 }
%struct.etnaviv_perfmon_request = type { i32, i8, i8, i32, ptr, i32 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"non-aligned cmdstream buffer size: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid exec_state: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid flags: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"softpin requested on incompatible MMU\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"submit arguments out of size limits\0A\00", [59 x i8] zeroinitializer }, align 32
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid flags: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid softpin address\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid handle %u at index %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid reloc flags\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"non-aligned reloc offset: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid offset %u at reloc %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"relocation %u outside object\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid buffer index: %u (out of %u)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"perfmon request: offset is 0\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"perfmon request: offset %u outside object\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"perfmon request: flags are not valid\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"perfmon request: domain or signal not valid\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BO at index %u already on submit list\0A\00", [57 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/ww_mutex.h\00", [39 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ctx->done_acquire\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!ctx->contending_lock\00", [42 x i8] zeroinitializer }, align 32
@dma_resv_excl_fence.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/dma-resv.h\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx->acquired\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 449, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 457, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 462, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 468, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 474, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 230, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 214, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 156, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 69, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 77, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 89, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 288, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 293, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 303, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 312, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 259, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 340, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 345, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 350, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 355, i32 4 }
@___asan_gen_.89 = private constant [48 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 138, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 171, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 173, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 333, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [28 x i8] c"../include/linux/dma-resv.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 440, i32 9 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"../include/linux/ww_mutex.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 191, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_submit_put(ptr noundef %submit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !68

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %runtime_resumed.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 11
  %1 = ptrtoint ptr %runtime_resumed.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %runtime_resumed.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i1

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i1:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %gpu.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 3
  %3 = ptrtoint ptr %gpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpu.i, align 8
  %dev.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i1, %if.then.i.if.end.i_crit_edge
  %cmdbuf.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 10
  %7 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmdbuf.i, align 8
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @etnaviv_cmdbuf_free(ptr noundef %cmdbuf.i) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %mmu_context.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 4
  %9 = ptrtoint ptr %mmu_context.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmu_context.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then6.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %10) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  %prev_mmu_context.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 5
  %11 = ptrtoint ptr %prev_mmu_context.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev_mmu_context.i, align 8
  %tobool9.not.i = icmp eq ptr %12, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then10.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %12) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end12.i_crit_edge
  %nr_bos.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 16
  %13 = ptrtoint ptr %nr_bos.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_bos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp91.not.i = icmp eq i32 %14, 0
  br i1 %cmp91.not.i, label %if.end12.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end12.i
  %bos.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %drm_gem_object_put.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %drm_gem_object_put.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x %struct.etnaviv_gem_submit_bo], ptr %bos.i, i32 0, i32 %i.092.i
  %obj.i = getelementptr inbounds %struct.etnaviv_gem_submit_bo, ptr %arrayidx.i, i32 0, i32 2
  %15 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %obj.i, align 8
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %for.body.i.if.end26.i_crit_edge, label %if.then16.i

for.body.i.if.end26.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then16.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %mapping.i = getelementptr inbounds %struct.etnaviv_gem_submit_bo, ptr %arrayidx.i, i32 0, i32 3
  %19 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapping.i, align 4
  tail call void @etnaviv_gem_mapping_unreference(ptr noundef %20) #9
  %gpu_active.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %16, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gpu_active.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %gpu_active.i, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gpu_active.i, ptr %gpu_active.i, i32 1, ptr elementtype(i32) %gpu_active.i) #9, !srcloc !71
  %22 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %mapping.i, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 8
  %and25.i = and i32 %24, -8193
  store i32 %and25.i, ptr %arrayidx.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then16.i, %for.body.i.if.end26.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.092.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 8
  %and.i.i = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end26.i.submit_unlock_object.exit.i_crit_edge, label %if.then.i.i

if.end26.i.submit_unlock_object.exit.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %submit_unlock_object.exit.i

if.then.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %obj3.i.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.092.i, i32 2
  %27 = ptrtoint ptr %obj3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %obj3.i.i, align 8
  %resv.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %30) #9
  tail call void @ww_mutex_unlock(ptr noundef %30) #9
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 8
  %and7.i.i = and i32 %32, -16385
  store i32 %and7.i.i, ptr %arrayidx.i.i, align 8
  br label %submit_unlock_object.exit.i

submit_unlock_object.exit.i:                      ; preds = %if.then.i.i, %if.end26.i.submit_unlock_object.exit.i_crit_edge
  %tobool.not.i76.i = icmp eq ptr %16, null
  br i1 %tobool.not.i76.i, label %submit_unlock_object.exit.i.drm_gem_object_put.exit.i_crit_edge, label %if.then.i77.i

submit_unlock_object.exit.i.drm_gem_object_put.exit.i_crit_edge: ; preds = %submit_unlock_object.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit.i

if.then.i77.i:                                    ; preds = %submit_unlock_object.exit.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %16, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr nonnull %16, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #9
  br label %drm_gem_object_put.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @drm_gem_object_free(ptr noundef nonnull %16) #9, !callees !72
  br label %drm_gem_object_put.exit.i

drm_gem_object_put.exit.i:                        ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, %submit_unlock_object.exit.i.drm_gem_object_put.exit.i_crit_edge
  %inc.i = add nuw i32 %i.092.i, 1
  %34 = ptrtoint ptr %nr_bos.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_bos.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %35
  br i1 %cmp.i, label %drm_gem_object_put.exit.i.for.body.i_crit_edge, label %drm_gem_object_put.exit.i.for.end.i_crit_edge

drm_gem_object_put.exit.i.for.end.i_crit_edge:    ; preds = %drm_gem_object_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

drm_gem_object_put.exit.i.for.body.i_crit_edge:   ; preds = %drm_gem_object_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %drm_gem_object_put.exit.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %gpu27.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 3
  %36 = ptrtoint ptr %gpu27.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gpu27.i, align 8
  %fence_event.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %37, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %fence_event.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  %in_fence.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 7
  %38 = ptrtoint ptr %in_fence.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %in_fence.i, align 8
  %tobool28.not.i = icmp eq ptr %39, null
  br i1 %tobool28.not.i, label %for.end.i.if.end31.i_crit_edge, label %if.then.i79.i

for.end.i.if.end31.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then.i79.i:                                    ; preds = %for.end.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %39, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i79.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end31.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.i.if.end31.i_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %if.end31.i

if.then.i.i.i:                                    ; preds = %if.then.i79.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @dma_fence_release(ptr noundef %refcount.i.i) #9, !callees !72
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end31.i_crit_edge, %for.end.i.if.end31.i_crit_edge
  %out_fence.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 6
  %41 = ptrtoint ptr %out_fence.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %out_fence.i, align 4
  %tobool32.not.i = icmp eq ptr %42, null
  br i1 %tobool32.not.i, label %if.end31.i.submit_cleanup.exit_crit_edge, label %if.then33.i

if.end31.i.submit_cleanup.exit_crit_edge:         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %submit_cleanup.exit

if.then33.i:                                      ; preds = %if.end31.i
  %43 = ptrtoint ptr %gpu27.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpu27.i, align 8
  %fence_lock.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %44, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %fence_lock.i, i32 noundef 0) #9
  %45 = ptrtoint ptr %gpu27.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gpu27.i, align 8
  %fence_idr.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %46, i32 0, i32 18
  %out_fence_id.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 8
  %47 = ptrtoint ptr %out_fence_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %out_fence_id.i, align 4
  %call36.i = tail call ptr @idr_remove(ptr noundef %fence_idr.i, i32 noundef %48) #9
  %49 = ptrtoint ptr %gpu27.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gpu27.i, align 8
  %fence_lock38.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %50, i32 0, i32 17
  tail call void @mutex_unlock(ptr noundef %fence_lock38.i) #9
  %51 = ptrtoint ptr %out_fence.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %out_fence.i, align 4
  %tobool.not.i80.i = icmp eq ptr %52, null
  br i1 %tobool.not.i80.i, label %if.then33.i.submit_cleanup.exit_crit_edge, label %if.then.i85.i

if.then33.i.submit_cleanup.exit_crit_edge:        ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %submit_cleanup.exit

if.then.i85.i:                                    ; preds = %if.then33.i
  %refcount.i81.i = getelementptr inbounds %struct.dma_fence, ptr %52, i32 0, i32 6
  %call.i.i.i.i.i.i.i82.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i81.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %refcount.i81.i, i32 1, i32 3, i32 1) #9
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i81.i, ptr %refcount.i81.i, i32 1, ptr elementtype(i32) %refcount.i81.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i83.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i83.i)
  %cmp.i.i.i.i.i84.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i83.i, 1
  br i1 %cmp.i.i.i.i.i84.i, label %if.then.i.i89.i, label %if.end5.i.i.i.i.i87.i

if.end5.i.i.i.i.i87.i:                            ; preds = %if.then.i85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i83.i)
  %.not.i.i.i.i.i86.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i83.i, 0
  br i1 %.not.i.i.i.i.i86.i, label %if.end5.i.i.i.i.i87.i.submit_cleanup.exit_crit_edge, label %if.then10.i.i.i.i.i88.i, !prof !68

if.end5.i.i.i.i.i87.i.submit_cleanup.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %submit_cleanup.exit

if.then10.i.i.i.i.i88.i:                          ; preds = %if.end5.i.i.i.i.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i81.i, i32 noundef 3) #9
  br label %submit_cleanup.exit

if.then.i.i89.i:                                  ; preds = %if.then.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @dma_fence_release(ptr noundef %refcount.i81.i) #9, !callees !72
  br label %submit_cleanup.exit

submit_cleanup.exit:                              ; preds = %if.then.i.i89.i, %if.then10.i.i.i.i.i88.i, %if.end5.i.i.i.i.i87.i.submit_cleanup.exit_crit_edge, %if.then33.i.submit_cleanup.exit_crit_edge, %if.end31.i.submit_cleanup.exit_crit_edge
  %pmrs.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 15
  %54 = ptrtoint ptr %pmrs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pmrs.i, align 4
  tail call void @kfree(ptr noundef %55) #9
  tail call void @kfree(ptr noundef %submit) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %submit_cleanup.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_ioctl_gem_submit(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  %ticket = alloca %struct.ww_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ticket) #9
  %4 = call ptr @memset(ptr %ticket, i32 255, i32 64)
  %pipe = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ugt i32 %6, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.etnaviv_drm_private, ptr %3, i32 0, i32 1, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %stream_size = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 5
  %9 = ptrtoint ptr %stream_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream_size, align 4
  %rem = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool5.not = icmp eq i32 %rem, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %10) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %exec_state = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %exec_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %exec_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %switch = icmp ult i32 %12, 3
  br i1 %switch, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %12) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %flags = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 9
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %tobool18.not = icmp ult i32 %14, 16
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %14) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %and23 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end28_crit_edge, label %land.lhs.true25

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true25:                                  ; preds = %if.end21
  %mmu_global = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %mmu_global to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmu_global, align 4
  %version = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp26.not = icmp eq i32 %18, 1
  br i1 %cmp26.not, label %land.lhs.true25.if.end28_crit_edge, label %if.then27

land.lhs.true25.if.end28_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true25.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %10)
  %cmp30 = icmp ugt i32 %10, 131072
  br i1 %cmp30, label %if.end28.if.then36_crit_edge, label %lor.lhs.false

if.end28.if.then36_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end28
  %nr_relocs = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 4
  %19 = ptrtoint ptr %nr_relocs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_relocs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %20)
  %cmp31 = icmp ugt i32 %20, 131072
  br i1 %cmp31, label %lor.lhs.false.if.then36_crit_edge, label %lor.lhs.false32

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %nr_bos = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 3
  %21 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_bos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %22)
  %cmp33 = icmp ugt i32 %22, 131072
  br i1 %cmp33, label %lor.lhs.false32.if.then36_crit_edge, label %lor.lhs.false34

lor.lhs.false32.if.then36_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false34:                                  ; preds = %lor.lhs.false32
  %nr_pmrs = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 12
  %23 = ptrtoint ptr %nr_pmrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_pmrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %24)
  %cmp35 = icmp ugt i32 %24, 128
  br i1 %cmp35, label %lor.lhs.false34.if.then36_crit_edge, label %if.end.i

lor.lhs.false34.if.then36_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false34.if.then36_crit_edge, %lor.lhs.false32.if.then36_crit_edge, %lor.lhs.false.if.then36_crit_edge, %if.end28.if.then36_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false34
  %25 = shl nuw nsw i32 %22, 4
  %call.i.i435 = tail call noalias ptr @kvmalloc_node(i32 noundef %25, i32 noundef 3264, i32 noundef -1) #12
  %26 = ptrtoint ptr %nr_relocs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_relocs, align 8
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 24) #9
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %if.end.i.kvmalloc_array.exit439_crit_edge, label %if.end.i437, !prof !73

if.end.i.kvmalloc_array.exit439_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvmalloc_array.exit439

if.end.i437:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = extractvalue { i32, i1 } %28, 0
  %call.i.i436 = tail call noalias ptr @kvmalloc_node(i32 noundef %30, i32 noundef 3264, i32 noundef -1) #12
  br label %kvmalloc_array.exit439

kvmalloc_array.exit439:                           ; preds = %if.end.i437, %if.end.i.kvmalloc_array.exit439_crit_edge
  %retval.0.i438 = phi ptr [ %call.i.i436, %if.end.i437 ], [ null, %if.end.i.kvmalloc_array.exit439_crit_edge ]
  %31 = ptrtoint ptr %nr_pmrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_pmrs, align 8
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 20) #9
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %kvmalloc_array.exit439.if.end.i445_crit_edge, label %if.end.i441, !prof !73

kvmalloc_array.exit439.if.end.i445_crit_edge:     ; preds = %kvmalloc_array.exit439
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i445

if.end.i441:                                      ; preds = %kvmalloc_array.exit439
  call void @__sanitizer_cov_trace_pc() #11
  %35 = extractvalue { i32, i1 } %33, 0
  %call.i.i440 = tail call noalias ptr @kvmalloc_node(i32 noundef %35, i32 noundef 3264, i32 noundef -1) #12
  br label %if.end.i445

if.end.i445:                                      ; preds = %if.end.i441, %kvmalloc_array.exit439.if.end.i445_crit_edge
  %retval.0.i442 = phi ptr [ %call.i.i440, %if.end.i441 ], [ null, %kvmalloc_array.exit439.if.end.i445_crit_edge ]
  %36 = ptrtoint ptr %stream_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stream_size, align 4
  %call.i.i444 = tail call noalias ptr @kvmalloc_node(i32 noundef %37, i32 noundef 3264, i32 noundef -1) #12
  %tobool45.not = icmp eq ptr %call.i.i435, null
  %tobool47.not = icmp eq ptr %retval.0.i438, null
  %or.cond = select i1 %tobool45.not, i1 true, i1 %tobool47.not
  %tobool49.not = icmp eq ptr %retval.0.i442, null
  %or.cond333 = select i1 %or.cond, i1 true, i1 %tobool49.not
  %tobool51.not = icmp eq ptr %call.i.i444, null
  %or.cond334 = select i1 %or.cond333, i1 true, i1 %tobool51.not
  br i1 %or.cond334, label %if.end.i445.if.end208_crit_edge, label %if.end53

if.end.i445.if.end208_crit_edge:                  ; preds = %if.end.i445
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.end53:                                         ; preds = %if.end.i445
  %bos56 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 6
  %38 = ptrtoint ptr %bos56 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %bos56, align 8
  %conv57 = trunc i64 %39 to i32
  %40 = inttoptr i32 %conv57 to ptr
  %41 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_bos, align 4
  %mul = shl i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end53
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.end208_crit_edge, label %if.then27.i.i, !prof !68

land.rhs16.i.i.if.end208_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.end208

if.then.i.i.i:                                    ; preds = %if.end53
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i435, i32 noundef %mul, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %40, i32 %mul, i32 -1226833920) #13, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !68

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i435, i32 noundef %mul) #9
  %44 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !75
  %and.i.i.i.i = and i32 %46, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i435, ptr noundef %40, i32 noundef %mul) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end62, label %if.then11.i.i, !prof !68

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i435, i32 %sub.i.i
  %47 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.end208

if.end62:                                         ; preds = %if.end.i.i
  %relocs69 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 7
  %48 = ptrtoint ptr %relocs69 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %relocs69, align 8
  %conv70 = trunc i64 %49 to i32
  %50 = inttoptr i32 %conv70 to ptr
  %51 = ptrtoint ptr %nr_relocs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_relocs, align 8
  %mul72 = mul i32 %52, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul72)
  %cmp9.i.i342 = icmp slt i32 %mul72, 0
  br i1 %cmp9.i.i342, label %land.rhs16.i.i345, label %if.then.i.i.i348

land.rhs16.i.i345:                                ; preds = %if.end62
  %.b1.i.i344 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i344, label %land.rhs16.i.i345.if.end208_crit_edge, label %if.then27.i.i346, !prof !68

land.rhs16.i.i345.if.end208_crit_edge:            ; preds = %land.rhs16.i.i345
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then27.i.i346:                                 ; preds = %land.rhs16.i.i345
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.end208

if.then.i.i.i348:                                 ; preds = %if.end62
  tail call void @__check_object_size(ptr noundef nonnull %retval.0.i438, i32 noundef %mul72, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #9
  %call.i.i349 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i349, label %if.then.i.i.i348.if.end.i.i363_crit_edge, label %land.lhs.true.i.i353

if.then.i.i.i348.if.end.i.i363_crit_edge:         ; preds = %if.then.i.i.i348
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i363

land.lhs.true.i.i353:                             ; preds = %if.then.i.i.i348
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %50, i32 %mul72, i32 -1226833920) #13, !srcloc !74
  %asmresult.i.i351 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i351)
  %cmp.i6.i352 = icmp eq i32 %asmresult.i.i351, 0
  br i1 %cmp.i6.i352, label %if.then.i7.i360, label %land.lhs.true.i.i353.if.end.i.i363_crit_edge, !prof !68

land.lhs.true.i.i353.if.end.i.i363_crit_edge:     ; preds = %land.lhs.true.i.i353
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i363

if.then.i7.i360:                                  ; preds = %land.lhs.true.i.i353
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i354 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i438, i32 noundef %mul72) #9
  %54 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i.i355 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i355 to ptr
  %cpu_domain.i.i.i.i.i356 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i356) #7, !srcloc !75
  %and.i.i.i.i357 = and i32 %56, -13
  %or.i.i.i.i358 = or i32 %and.i.i.i.i357, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i358) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i359 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %retval.0.i438, ptr noundef %50, i32 noundef %mul72) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  br label %if.end.i.i363

if.end.i.i363:                                    ; preds = %if.then.i7.i360, %land.lhs.true.i.i353.if.end.i.i363_crit_edge, %if.then.i.i.i348.if.end.i.i363_crit_edge
  %res.0.i.i361 = phi i32 [ %mul72, %if.then.i.i.i348.if.end.i.i363_crit_edge ], [ %call1.i.i.i359, %if.then.i7.i360 ], [ %mul72, %land.lhs.true.i.i353.if.end.i.i363_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i361)
  %tobool4.not.i.i362 = icmp eq i32 %res.0.i.i361, 0
  br i1 %tobool4.not.i.i362, label %if.end76, label %if.then11.i.i366, !prof !68

if.then11.i.i366:                                 ; preds = %if.end.i.i363
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i364 = sub i32 %mul72, %res.0.i.i361
  %add.ptr.i.i365 = getelementptr i8, ptr %retval.0.i438, i32 %sub.i.i364
  %57 = call ptr @memset(ptr %add.ptr.i.i365, i32 0, i32 %res.0.i.i361)
  br label %if.end208

if.end76:                                         ; preds = %if.end.i.i363
  %pmrs83 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 11
  %58 = ptrtoint ptr %pmrs83 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %pmrs83, align 8
  %conv84 = trunc i64 %59 to i32
  %60 = inttoptr i32 %conv84 to ptr
  %61 = ptrtoint ptr %nr_pmrs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_pmrs, align 8
  %mul86 = mul i32 %62, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul86)
  %cmp9.i.i375 = icmp slt i32 %mul86, 0
  br i1 %cmp9.i.i375, label %land.rhs16.i.i378, label %if.then.i.i.i381

land.rhs16.i.i378:                                ; preds = %if.end76
  %.b1.i.i377 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i377, label %land.rhs16.i.i378.if.end208_crit_edge, label %if.then27.i.i379, !prof !68

land.rhs16.i.i378.if.end208_crit_edge:            ; preds = %land.rhs16.i.i378
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then27.i.i379:                                 ; preds = %land.rhs16.i.i378
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.end208

if.then.i.i.i381:                                 ; preds = %if.end76
  tail call void @__check_object_size(ptr noundef nonnull %retval.0.i442, i32 noundef %mul86, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #9
  %call.i.i382 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i382, label %if.then.i.i.i381.if.end.i.i396_crit_edge, label %land.lhs.true.i.i386

if.then.i.i.i381.if.end.i.i396_crit_edge:         ; preds = %if.then.i.i.i381
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i396

land.lhs.true.i.i386:                             ; preds = %if.then.i.i.i381
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %60, i32 %mul86, i32 -1226833920) #13, !srcloc !74
  %asmresult.i.i384 = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i384)
  %cmp.i6.i385 = icmp eq i32 %asmresult.i.i384, 0
  br i1 %cmp.i6.i385, label %if.then.i7.i393, label %land.lhs.true.i.i386.if.end.i.i396_crit_edge, !prof !68

land.lhs.true.i.i386.if.end.i.i396_crit_edge:     ; preds = %land.lhs.true.i.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i396

if.then.i7.i393:                                  ; preds = %land.lhs.true.i.i386
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i387 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i442, i32 noundef %mul86) #9
  %64 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i.i388 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i388 to ptr
  %cpu_domain.i.i.i.i.i389 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i389) #7, !srcloc !75
  %and.i.i.i.i390 = and i32 %66, -13
  %or.i.i.i.i391 = or i32 %and.i.i.i.i390, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i391) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i392 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %retval.0.i442, ptr noundef %60, i32 noundef %mul86) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  br label %if.end.i.i396

if.end.i.i396:                                    ; preds = %if.then.i7.i393, %land.lhs.true.i.i386.if.end.i.i396_crit_edge, %if.then.i.i.i381.if.end.i.i396_crit_edge
  %res.0.i.i394 = phi i32 [ %mul86, %if.then.i.i.i381.if.end.i.i396_crit_edge ], [ %call1.i.i.i392, %if.then.i7.i393 ], [ %mul86, %land.lhs.true.i.i386.if.end.i.i396_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i394)
  %tobool4.not.i.i395 = icmp eq i32 %res.0.i.i394, 0
  br i1 %tobool4.not.i.i395, label %if.end90, label %if.then11.i.i399, !prof !68

if.then11.i.i399:                                 ; preds = %if.end.i.i396
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i397 = sub i32 %mul86, %res.0.i.i394
  %add.ptr.i.i398 = getelementptr i8, ptr %retval.0.i442, i32 %sub.i.i397
  %67 = call ptr @memset(ptr %add.ptr.i.i398, i32 0, i32 %res.0.i.i394)
  br label %if.end208

if.end90:                                         ; preds = %if.end.i.i396
  %stream97 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 8
  %68 = ptrtoint ptr %stream97 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %stream97, align 8
  %conv98 = trunc i64 %69 to i32
  %70 = inttoptr i32 %conv98 to ptr
  %71 = ptrtoint ptr %stream_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stream_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp9.i.i408 = icmp slt i32 %72, 0
  br i1 %cmp9.i.i408, label %land.rhs16.i.i411, label %if.then.i.i.i414

land.rhs16.i.i411:                                ; preds = %if.end90
  %.b1.i.i410 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i410, label %land.rhs16.i.i411.if.end208_crit_edge, label %if.then27.i.i412, !prof !68

land.rhs16.i.i411.if.end208_crit_edge:            ; preds = %land.rhs16.i.i411
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then27.i.i412:                                 ; preds = %land.rhs16.i.i411
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.end208

if.then.i.i.i414:                                 ; preds = %if.end90
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i444, i32 noundef %72, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #9
  %call.i.i415 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i415, label %if.then.i.i.i414.if.end.i.i429_crit_edge, label %land.lhs.true.i.i419

if.then.i.i.i414.if.end.i.i429_crit_edge:         ; preds = %if.then.i.i.i414
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i429

land.lhs.true.i.i419:                             ; preds = %if.then.i.i.i414
  %73 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %70, i32 %72, i32 -1226833920) #13, !srcloc !74
  %asmresult.i.i417 = extractvalue { i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i417)
  %cmp.i6.i418 = icmp eq i32 %asmresult.i.i417, 0
  br i1 %cmp.i6.i418, label %if.then.i7.i426, label %land.lhs.true.i.i419.if.end.i.i429_crit_edge, !prof !68

land.lhs.true.i.i419.if.end.i.i429_crit_edge:     ; preds = %land.lhs.true.i.i419
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i429

if.then.i7.i426:                                  ; preds = %land.lhs.true.i.i419
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i420 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i444, i32 noundef %72) #9
  %74 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i.i421 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i.i421 to ptr
  %cpu_domain.i.i.i.i.i422 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 4
  %76 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i422) #7, !srcloc !75
  %and.i.i.i.i423 = and i32 %76, -13
  %or.i.i.i.i424 = or i32 %and.i.i.i.i423, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i424) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %call1.i.i.i425 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i444, ptr noundef %70, i32 noundef %72) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  br label %if.end.i.i429

if.end.i.i429:                                    ; preds = %if.then.i7.i426, %land.lhs.true.i.i419.if.end.i.i429_crit_edge, %if.then.i.i.i414.if.end.i.i429_crit_edge
  %res.0.i.i427 = phi i32 [ %72, %if.then.i.i.i414.if.end.i.i429_crit_edge ], [ %call1.i.i.i425, %if.then.i7.i426 ], [ %72, %land.lhs.true.i.i419.if.end.i.i429_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i427)
  %tobool4.not.i.i428 = icmp eq i32 %res.0.i.i427, 0
  br i1 %tobool4.not.i.i428, label %if.end103, label %if.then11.i.i432, !prof !68

if.then11.i.i432:                                 ; preds = %if.end.i.i429
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i430 = sub i32 %72, %res.0.i.i427
  %add.ptr.i.i431 = getelementptr i8, ptr %call.i.i444, i32 %sub.i.i430
  %77 = call ptr @memset(ptr %add.ptr.i.i431, i32 0, i32 %res.0.i.i427)
  br label %if.end208

if.end103:                                        ; preds = %if.end.i.i429
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 8
  %and105 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end103.if.end113_crit_edge, label %if.then107

if.end103.if.end113_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then107:                                       ; preds = %if.end103
  %call108 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then107.if.end208_crit_edge, label %if.then107.if.end113_crit_edge

if.then107.if.end113_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then107.if.end208_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.end113:                                        ; preds = %if.then107.if.end113_crit_edge, %if.end103.if.end113_crit_edge
  %out_fence_fd.0 = phi i32 [ %call108, %if.then107.if.end113_crit_edge ], [ -1, %if.end103.if.end113_crit_edge ]
  call fastcc void @ww_acquire_init(ptr noundef nonnull %ticket)
  %80 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_bos, align 4
  %82 = ptrtoint ptr %nr_pmrs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr_pmrs, align 8
  %call116 = call fastcc ptr @submit_create(ptr noundef nonnull %8, i32 noundef %81, i32 noundef %83)
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %if.end113.err_submit_cmds_crit_edge, label %if.end119

if.end113.err_submit_cmds_crit_edge:              ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_cmds

if.end119:                                        ; preds = %if.end113
  %cmdbuf_suballoc = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 3
  %84 = ptrtoint ptr %cmdbuf_suballoc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cmdbuf_suballoc, align 4
  %cmdbuf = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call116, i32 0, i32 10
  %86 = ptrtoint ptr %stream_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %stream_size, align 4
  %88 = add i32 %87, 15
  %add122 = and i32 %88, -8
  %call123 = call i32 @etnaviv_cmdbuf_init(ptr noundef %85, ptr noundef %cmdbuf, i32 noundef %add122) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end119.err_submit_objects_crit_edge

if.end119.err_submit_objects_crit_edge:           ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

if.end126:                                        ; preds = %if.end119
  %89 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %driver_priv, align 4
  %ctx128 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call116, i32 0, i32 2
  %91 = ptrtoint ptr %ctx128 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %ctx128, align 4
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %90, align 8
  %call130 = call fastcc ptr @etnaviv_iommu_context_get(ptr noundef %93)
  %mmu_context = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call116, i32 0, i32 4
  %94 = ptrtoint ptr %mmu_context to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %mmu_context, align 4
  %95 = ptrtoint ptr %exec_state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %exec_state, align 8
  %exec_state132 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call116, i32 0, i32 12
  %97 = ptrtoint ptr %exec_state132 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %exec_state132, align 8
  %98 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags, align 8
  %flags134 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call116, i32 0, i32 13
  %100 = ptrtoint ptr %flags134 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %flags134, align 4
  %101 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nr_bos, align 4
  %call136 = call fastcc i32 @submit_lookup_objects(ptr noundef nonnull %call116, ptr noundef %file, ptr noundef nonnull %call.i.i435, i32 noundef %102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end126.err_submit_objects_crit_edge

if.end126.err_submit_objects_crit_edge:           ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

if.end139:                                        ; preds = %if.end126
  %mmu_global140 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 4
  %103 = ptrtoint ptr %mmu_global140 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmu_global140, align 4
  %version141 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %version141 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %version141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp142.not = icmp eq i32 %106, 1
  br i1 %cmp142.not, label %if.end139.if.end149_crit_edge, label %land.lhs.true144

if.end139.if.end149_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

land.lhs.true144:                                 ; preds = %if.end139
  %107 = ptrtoint ptr %stream_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %stream_size, align 4
  %div332 = lshr i32 %108, 2
  %109 = ptrtoint ptr %nr_relocs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nr_relocs, align 8
  %call147 = call zeroext i1 @etnaviv_cmd_validate_one(ptr noundef nonnull %8, ptr noundef nonnull %call.i.i444, i32 noundef %div332, ptr noundef nonnull %retval.0.i438, i32 noundef %110) #9
  br i1 %call147, label %land.lhs.true144.if.end149_crit_edge, label %land.lhs.true144.err_submit_objects_crit_edge

land.lhs.true144.err_submit_objects_crit_edge:    ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

land.lhs.true144.if.end149_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.end149:                                        ; preds = %land.lhs.true144.if.end149_crit_edge, %if.end139.if.end149_crit_edge
  %111 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags, align 8
  %and151 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end149.if.end159_crit_edge, label %if.then153

if.end149.if.end159_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.then153:                                       ; preds = %if.end149
  %fence_fd = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 10
  %113 = ptrtoint ptr %fence_fd to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fence_fd, align 4
  %call154 = call ptr @sync_file_get_fence(i32 noundef %114) #9
  %in_fence = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call116, i32 0, i32 7
  %115 = ptrtoint ptr %in_fence to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call154, ptr %in_fence, align 8
  %tobool156.not = icmp eq ptr %call154, null
  br i1 %tobool156.not, label %if.then153.err_submit_objects_crit_edge, label %if.then153.if.end159_crit_edge

if.then153.if.end159_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.then153.err_submit_objects_crit_edge:          ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

if.end159:                                        ; preds = %if.then153.if.end159_crit_edge, %if.end149.if.end159_crit_edge
  %call160 = call fastcc i32 @submit_pin_objects(ptr noundef nonnull %call116)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end159.err_submit_objects_crit_edge

if.end159.err_submit_objects_crit_edge:           ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

if.end163:                                        ; preds = %if.end159
  %116 = ptrtoint ptr %stream_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %stream_size, align 4
  %div165331 = lshr i32 %117, 2
  %118 = ptrtoint ptr %nr_relocs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nr_relocs, align 8
  %call167 = call fastcc i32 @submit_reloc(ptr noundef nonnull %call116, ptr noundef nonnull %call.i.i444, i32 noundef %div165331, ptr noundef nonnull %retval.0.i438, i32 noundef %119)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end170, label %if.end163.err_submit_objects_crit_edge

if.end163.err_submit_objects_crit_edge:           ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

if.end170:                                        ; preds = %if.end163
  %120 = ptrtoint ptr %exec_state to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %exec_state, align 8
  %call172 = call fastcc i32 @submit_perfmon_validate(ptr noundef nonnull %call116, i32 noundef %121, ptr noundef nonnull %retval.0.i442)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %if.end170.err_submit_objects_crit_edge

if.end170.err_submit_objects_crit_edge:           ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

if.end175:                                        ; preds = %if.end170
  %vaddr = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call116, i32 0, i32 10, i32 2
  %122 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %vaddr, align 8
  %124 = ptrtoint ptr %stream_size to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %stream_size, align 4
  %126 = call ptr @memcpy(ptr %123, ptr %call.i.i444, i32 %125)
  %call178 = call fastcc i32 @submit_lock_objects(ptr noundef nonnull %call116, ptr noundef nonnull %ticket)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end181, label %if.end175.err_submit_objects_crit_edge

if.end175.err_submit_objects_crit_edge:           ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

if.end181:                                        ; preds = %if.end175
  %call182 = call fastcc i32 @submit_fence_sync(ptr noundef nonnull %call116)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185, label %if.end181.err_submit_objects_crit_edge

if.end181.err_submit_objects_crit_edge:           ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

if.end185:                                        ; preds = %if.end181
  %127 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pipe, align 4
  %arrayidx187 = getelementptr %struct.etnaviv_file_private, ptr %1, i32 0, i32 1, i32 %128
  %call188 = call i32 @etnaviv_sched_push_job(ptr noundef %arrayidx187, ptr noundef nonnull %call116) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end191, label %if.end185.err_submit_objects_crit_edge

if.end185.err_submit_objects_crit_edge:           ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

if.end191:                                        ; preds = %if.end185
  call fastcc void @submit_attach_object_fences(ptr noundef nonnull %call116)
  %129 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags, align 8
  %and193 = and i32 %130, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.end191.if.end201_crit_edge, label %if.then195

if.end191.if.end201_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end201

if.then195:                                       ; preds = %if.end191
  %out_fence = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call116, i32 0, i32 6
  %131 = ptrtoint ptr %out_fence to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %out_fence, align 4
  %call196 = call ptr @sync_file_create(ptr noundef %132) #9
  %tobool197.not = icmp eq ptr %call196, null
  br i1 %tobool197.not, label %if.then195.err_submit_objects_crit_edge, label %if.end199

if.then195.err_submit_objects_crit_edge:          ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_submit_objects

if.end199:                                        ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %call196 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call196, align 4
  call void @fd_install(i32 noundef %out_fence_fd.0, ptr noundef %134) #9
  br label %if.end201

if.end201:                                        ; preds = %if.end199, %if.end191.if.end201_crit_edge
  %fence_fd202 = getelementptr inbounds %struct.drm_etnaviv_gem_submit, ptr %data, i32 0, i32 10
  %135 = ptrtoint ptr %fence_fd202 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %out_fence_fd.0, ptr %fence_fd202, align 4
  %out_fence_id = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call116, i32 0, i32 8
  %136 = ptrtoint ptr %out_fence_id to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %out_fence_id, align 4
  %138 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %data, align 8
  br label %err_submit_objects

err_submit_objects:                               ; preds = %if.end201, %if.then195.err_submit_objects_crit_edge, %if.end185.err_submit_objects_crit_edge, %if.end181.err_submit_objects_crit_edge, %if.end175.err_submit_objects_crit_edge, %if.end170.err_submit_objects_crit_edge, %if.end163.err_submit_objects_crit_edge, %if.end159.err_submit_objects_crit_edge, %if.then153.err_submit_objects_crit_edge, %land.lhs.true144.err_submit_objects_crit_edge, %if.end126.err_submit_objects_crit_edge, %if.end119.err_submit_objects_crit_edge
  %ret.0 = phi i32 [ %call123, %if.end119.err_submit_objects_crit_edge ], [ %call136, %if.end126.err_submit_objects_crit_edge ], [ %call160, %if.end159.err_submit_objects_crit_edge ], [ %call167, %if.end163.err_submit_objects_crit_edge ], [ %call172, %if.end170.err_submit_objects_crit_edge ], [ %call178, %if.end175.err_submit_objects_crit_edge ], [ %call182, %if.end181.err_submit_objects_crit_edge ], [ %call188, %if.end185.err_submit_objects_crit_edge ], [ 0, %if.end201 ], [ -22, %land.lhs.true144.err_submit_objects_crit_edge ], [ -22, %if.then153.err_submit_objects_crit_edge ], [ -12, %if.then195.err_submit_objects_crit_edge ]
  call void @etnaviv_submit_put(ptr noundef nonnull %call116)
  br label %err_submit_cmds

err_submit_cmds:                                  ; preds = %err_submit_objects, %if.end113.err_submit_cmds_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_submit_objects ], [ -12, %if.end113.err_submit_cmds_crit_edge ]
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ticket)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool203.not = icmp ne i32 %ret.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %out_fence_fd.0)
  %cmp205 = icmp sgt i32 %out_fence_fd.0, -1
  %or.cond335 = select i1 %tobool203.not, i1 %cmp205, i1 false
  br i1 %or.cond335, label %if.then207, label %err_submit_cmds.if.end208_crit_edge

err_submit_cmds.if.end208_crit_edge:              ; preds = %err_submit_cmds
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then207:                                       ; preds = %err_submit_cmds
  call void @__sanitizer_cov_trace_pc() #11
  call void @put_unused_fd(i32 noundef %out_fence_fd.0) #9
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %err_submit_cmds.if.end208_crit_edge, %if.then107.if.end208_crit_edge, %if.then11.i.i432, %if.then27.i.i412, %land.rhs16.i.i411.if.end208_crit_edge, %if.then11.i.i399, %if.then27.i.i379, %land.rhs16.i.i378.if.end208_crit_edge, %if.then11.i.i366, %if.then27.i.i346, %land.rhs16.i.i345.if.end208_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.end208_crit_edge, %if.end.i445.if.end208_crit_edge
  %ret.2461 = phi i32 [ %ret.1, %if.then207 ], [ %ret.1, %err_submit_cmds.if.end208_crit_edge ], [ %call108, %if.then107.if.end208_crit_edge ], [ -12, %if.end.i445.if.end208_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end208_crit_edge ], [ -14, %if.then11.i.i366 ], [ -14, %if.then27.i.i346 ], [ -14, %land.rhs16.i.i345.if.end208_crit_edge ], [ -14, %if.then11.i.i399 ], [ -14, %if.then27.i.i379 ], [ -14, %land.rhs16.i.i378.if.end208_crit_edge ], [ -14, %if.then11.i.i432 ], [ -14, %if.then27.i.i412 ], [ -14, %land.rhs16.i.i411.if.end208_crit_edge ]
  call void @kvfree(ptr noundef %call.i.i444) #9
  call void @kvfree(ptr noundef %call.i.i435) #9
  call void @kvfree(ptr noundef %retval.0.i438) #9
  call void @kvfree(ptr noundef %retval.0.i442) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end208, %if.then36, %if.then27, %if.then19, %if.then15, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -22, %if.then15 ], [ -22, %if.then19 ], [ -22, %if.then27 ], [ -22, %if.then36 ], [ %ret.2461, %if.end208 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ticket) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_init(ptr noundef %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ctx, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @reservation_ww_class, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @reservation_ww_class, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #9, !srcloc !78
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %stamp3 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %stamp3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %asmresult.i.i.i.i, ptr %stamp3, align 4
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %7 = ptrtoint ptr %acquired to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %acquired, align 4
  %wounded = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 3
  %8 = ptrtoint ptr %wounded to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %wounded, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %conv = trunc i32 %9 to i16
  %is_wait_die4 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 4
  %10 = ptrtoint ptr %is_wait_die4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %is_wait_die4, align 2
  %ww_class5 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 6
  %11 = ptrtoint ptr %ww_class5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @reservation_ww_class, ptr %ww_class5, align 4
  %done_acquire = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 5
  %12 = ptrtoint ptr %done_acquire to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %done_acquire, align 4
  %contending_lock = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %contending_lock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %contending_lock, align 4
  tail call void @debug_check_no_locks_freed(ptr noundef %ctx, i32 noundef 64) #9
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3), align 4
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %14, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %15 = tail call ptr @llvm.returnaddress(i32 0)
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %16) #9
  %deadlock_inject_interval = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 9
  %17 = ptrtoint ptr %deadlock_inject_interval to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %deadlock_inject_interval, align 4
  %18 = ptrtoint ptr %stamp3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stamp3, align 4
  %and = and i32 %19, 15
  %deadlock_inject_countdown = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 10
  %20 = ptrtoint ptr %deadlock_inject_countdown to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %deadlock_inject_countdown, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @submit_create(ptr noundef %gpu, i32 noundef %nr_bos, i32 noundef %nr_pmrs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 107374176, i32 %nr_bos)
  %cmp.i = icmp ugt i32 %nr_bos, 107374176
  %mul.i = mul i32 %nr_bos, 40
  %add.i = add i32 %mul.i, 216
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_pmrs, i32 20) #9
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !73

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pmrs9 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call9.i.i, i32 0, i32 15
  %2 = ptrtoint ptr %pmrs9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pmrs9, align 4
  br label %if.then5

if.end7.i.i:                                      ; preds = %if.end
  %3 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #12
  %pmrs = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call9.i.i, i32 0, i32 15
  %4 = ptrtoint ptr %pmrs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %pmrs, align 4
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.if.then5_crit_edge, label %if.end6

if.end7.i.i.if.then5_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %if.end7.i.i.if.then5_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %nr_pmrs7 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call9.i.i, i32 0, i32 14
  %5 = ptrtoint ptr %nr_pmrs7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nr_pmrs, ptr %nr_pmrs7, align 8
  %gpu8 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call9.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %gpu8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %gpu, ptr %gpu8, align 8
  %refcount = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %call9.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %refcount, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end6 ], [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @etnaviv_iommu_context_get(ptr noundef returned %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ctx, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ctx, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ctx, ptr %ctx, i32 1, ptr elementtype(i32) %ctx) #9, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !73

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ctx, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret ptr %ctx
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_lookup_objects(ptr nocapture noundef %submit, ptr noundef %file, ptr nocapture noundef readonly %submit_bos, i32 noundef %nr_bos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %table_lock = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %table_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bos)
  %cmp57.not = icmp eq i32 %nr_bos, 0
  br i1 %cmp57.not, label %entry.cleanup25_crit_edge, label %for.body.lr.ph

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup25

for.body.lr.ph:                                   ; preds = %entry
  %flags4 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 13
  %object_idr = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %bo.058 = phi ptr [ %submit_bos, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %bo.058 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bo.058, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %tobool.not = icmp ult i32 %1, 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %1) #9
  br label %cleanup25

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.059
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx, align 8
  %3 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags4, align 4
  %and5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %presumed = getelementptr inbounds %struct.drm_etnaviv_gem_submit_bo, ptr %bo.058, i32 0, i32 2
  %5 = ptrtoint ptr %presumed to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %presumed, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194304, i64 %6)
  %cmp8 = icmp ult i64 %6, 4194304
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #9
  br label %cleanup25

if.end10:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %va = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.059, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %va, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.end.if.end14_crit_edge
  %handle = getelementptr inbounds %struct.drm_etnaviv_gem_submit_bo, ptr %bo.058, i32 0, i32 1
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle, align 4
  %call = tail call ptr @idr_find(ptr noundef %object_idr, i32 noundef %9) #9
  %tobool15.not = icmp eq ptr %call, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %handle.le = getelementptr inbounds %struct.drm_etnaviv_gem_submit_bo, ptr %bo.058, i32 0, i32 1
  %10 = ptrtoint ptr %handle.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle.le, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %11, i32 noundef %i.059) #9
  br label %cleanup25

if.end18:                                         ; preds = %if.end14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #9, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end18.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !73

if.end18.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end18
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.inc_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end18.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end18.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef %.sink.i.i.i.i.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.inc_crit_edge
  %obj22 = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.059, i32 2
  %14 = ptrtoint ptr %obj22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %obj22, align 8
  %inc = add nuw i32 %i.059, 1
  %incdec.ptr = getelementptr %struct.drm_etnaviv_gem_submit_bo, ptr %bo.058, i32 1
  %exitcond.not = icmp eq i32 %inc, %nr_bos
  br i1 %exitcond.not, label %for.inc.cleanup25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup25

cleanup25:                                        ; preds = %for.inc.cleanup25_crit_edge, %if.then16, %if.then9, %if.then, %entry.cleanup25_crit_edge
  %i.054 = phi i32 [ %i.059, %if.then ], [ %i.059, %if.then9 ], [ %i.059, %if.then16 ], [ 0, %entry.cleanup25_crit_edge ], [ %nr_bos, %for.inc.cleanup25_crit_edge ]
  %ret.2 = phi i32 [ -22, %if.then ], [ -22, %if.then9 ], [ -22, %if.then16 ], [ 0, %entry.cleanup25_crit_edge ], [ 0, %for.inc.cleanup25_crit_edge ]
  %nr_bos23 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 16
  %15 = ptrtoint ptr %nr_bos23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.054, ptr %nr_bos23, align 8
  tail call void @_raw_spin_unlock(ptr noundef %table_lock) #9
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @etnaviv_cmd_validate_one(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_get_fence(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_pin_objects(ptr nocapture noundef %submit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_bos = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 16
  %0 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp46.not = icmp eq i32 %1, 0
  br i1 %cmp46.not, label %entry.cleanup19_crit_edge, label %for.body.lr.ph

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %entry
  %mmu_context = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 4
  %flags = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.047
  %obj = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.047, i32 2
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %obj, align 8
  %4 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmu_context, align 4
  %va = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.047, i32 1
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %va, align 8
  %call = tail call ptr @etnaviv_gem_mapping_get(ptr noundef %3, ptr noundef %5, i64 noundef %7) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %va to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %va, align 8
  %iova = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %call, i32 0, i32 7
  %12 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iova, align 4
  %conv = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv)
  %cmp8.not = icmp eq i64 %11, %conv
  br i1 %cmp8.not, label %land.lhs.true.for.inc_crit_edge, label %cleanup.thread

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @etnaviv_gem_mapping_unreference(ptr noundef %call) #9
  br label %cleanup19

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call to i32
  br label %cleanup19

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %gpu_active = getelementptr inbounds %struct.etnaviv_gem_object, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gpu_active, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %gpu_active, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gpu_active, ptr %gpu_active, i32 1, ptr elementtype(i32) %gpu_active) #9, !srcloc !80
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 8
  %or = or i32 %17, 8192
  store i32 %or, ptr %arrayidx, align 8
  %mapping17 = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.047, i32 3
  %18 = ptrtoint ptr %mapping17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %mapping17, align 4
  %inc = add nuw i32 %i.047, 1
  %19 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup19_crit_edge

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup19:                                        ; preds = %for.inc.cleanup19_crit_edge, %cleanup, %cleanup.thread, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup.thread ], [ %14, %cleanup ], [ 0, %entry.cleanup19_crit_edge ], [ 0, %for.inc.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_reloc(ptr noundef %submit, ptr nocapture noundef writeonly %stream, i32 noundef %size, ptr nocapture noundef readonly %relocs, i32 noundef %nr_relocs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_relocs)
  %cmp.not = icmp eq i32 %nr_relocs, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = or i1 %cmp.not, %tobool.not.not
  %.mux = select i1 %or.cond, i32 0, i32 -22
  br i1 %brmerge, label %entry.cleanup30_crit_edge, label %for.body.lr.ph

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

for.body.lr.ph:                                   ; preds = %entry
  %nr_bos.i = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %last_offset.076 = phi i32 [ 0, %for.body.lr.ph ], [ %div51, %for.inc.for.body_crit_edge ]
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %flags2 = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %relocs, i32 %i.075, i32 3
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end7, label %if.then6, !prof !68

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #9
  br label %cleanup30

if.end7:                                          ; preds = %for.body
  %add.ptr = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %relocs, i32 %i.075
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %rem = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool8.not = icmp eq i32 %rem, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %5) #9
  br label %cleanup30

if.end11:                                         ; preds = %if.end7
  %div51 = lshr i32 %5, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div51, i32 %size)
  %cmp13.not = icmp uge i32 %div51, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %div51, i32 %last_offset.076)
  %cmp14 = icmp ult i32 %div51, %last_offset.076
  %or.cond52 = or i1 %cmp13.not, %cmp14
  br i1 %or.cond52, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %div51, i32 noundef %i.075) #9
  br label %cleanup30

if.end16:                                         ; preds = %if.end11
  %reloc_idx = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %relocs, i32 %i.075, i32 1
  %6 = ptrtoint ptr %reloc_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reloc_idx, align 4
  %8 = ptrtoint ptr %nr_bos.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_bos.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i = icmp ugt i32 %9, %7
  br i1 %cmp.not.i, label %if.end19, label %submit_bo.exit

submit_bo.exit:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef %9) #9
  br label %cleanup30

if.end19:                                         ; preds = %if.end16
  %reloc_offset = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %relocs, i32 %i.075, i32 2
  %10 = ptrtoint ptr %reloc_offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %reloc_offset, align 8
  %obj = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %7, i32 2
  %12 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %obj, align 8
  %size20 = getelementptr inbounds %struct.drm_gem_object, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %size20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size20, align 8
  %sub = add i32 %15, -4
  %conv = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv)
  %cmp21 = icmp ugt i64 %11, %conv
  br i1 %cmp21, label %if.then23, label %for.inc

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %i.075) #9
  br label %cleanup30

for.inc:                                          ; preds = %if.end19
  %mapping = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %7, i32 3
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping, align 4
  %iova = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iova, align 4
  %20 = trunc i64 %11 to i32
  %conv27 = add i32 %19, %20
  %arrayidx = getelementptr i32, ptr %stream, i32 %div51
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv27, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %nr_relocs
  br i1 %exitcond.not, label %for.inc.cleanup30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

cleanup30:                                        ; preds = %for.inc.cleanup30_crit_edge, %if.then23, %submit_bo.exit, %if.then15, %if.then9, %if.then6, %entry.cleanup30_crit_edge
  %retval.2 = phi i32 [ %.mux, %entry.cleanup30_crit_edge ], [ -22, %if.then6 ], [ -22, %if.then9 ], [ -22, %if.then15 ], [ -22, %if.then23 ], [ -22, %submit_bo.exit ], [ 0, %for.inc.cleanup30_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_perfmon_validate(ptr noundef %submit, i32 noundef %exec_state, ptr noundef %pmrs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_pmrs = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 14
  %0 = ptrtoint ptr %nr_pmrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pmrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp85.not = icmp eq i32 %1, 0
  br i1 %cmp85.not, label %entry.cleanup37_crit_edge, label %for.body.lr.ph

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

for.body.lr.ph:                                   ; preds = %entry
  %nr_bos.i = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 16
  %pmrs16 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %pmrs, i32 %i.086
  %read_idx = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %pmrs, i32 %i.086, i32 6
  %2 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_idx, align 4
  %4 = ptrtoint ptr %nr_bos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_bos.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i = icmp ugt i32 %5, %3
  br i1 %cmp.not.i, label %if.end, label %submit_bo.exit

submit_bo.exit:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %3, i32 noundef %5) #9
  br label %cleanup37

if.end:                                           ; preds = %for.body
  %read_offset = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %pmrs, i32 %i.086, i32 5
  %6 = ptrtoint ptr %read_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #9
  br label %cleanup37

if.end3:                                          ; preds = %if.end
  %obj = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %3, i32 2
  %8 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %obj, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 8
  %sub = add i32 %11, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp5.not = icmp ult i32 %7, %sub
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %i.086) #9
  br label %cleanup37

if.end7:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %tobool8.not = icmp ult i32 %13, 4
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #9
  br label %cleanup37

if.end10:                                         ; preds = %if.end7
  %call11 = tail call i32 @etnaviv_pm_req_validate(ptr noundef %add.ptr, i32 noundef %exec_state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #9
  br label %cleanup37

for.inc:                                          ; preds = %if.end10
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  %16 = ptrtoint ptr %pmrs16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pmrs16, align 4
  %arrayidx = getelementptr %struct.etnaviv_perfmon_request, ptr %17, i32 %i.086
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx, align 4
  %domain = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %pmrs, i32 %i.086, i32 1
  %19 = ptrtoint ptr %domain to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %domain, align 4
  %21 = load ptr, ptr %pmrs16, align 4
  %domain20 = getelementptr %struct.etnaviv_perfmon_request, ptr %21, i32 %i.086, i32 1
  %22 = ptrtoint ptr %domain20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %20, ptr %domain20, align 4
  %signal = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %pmrs, i32 %i.086, i32 3
  %23 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %signal, align 2
  %conv = trunc i16 %24 to i8
  %25 = load ptr, ptr %pmrs16, align 4
  %signal23 = getelementptr %struct.etnaviv_perfmon_request, ptr %25, i32 %i.086, i32 2
  %26 = ptrtoint ptr %signal23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %signal23, align 1
  %sequence = getelementptr %struct.drm_etnaviv_gem_submit_pmr, ptr %pmrs, i32 %i.086, i32 4
  %27 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sequence, align 4
  %29 = load ptr, ptr %pmrs16, align 4
  %sequence26 = getelementptr %struct.etnaviv_perfmon_request, ptr %29, i32 %i.086, i32 3
  %30 = ptrtoint ptr %sequence26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %sequence26, align 4
  %31 = ptrtoint ptr %read_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %read_offset, align 4
  %33 = load ptr, ptr %pmrs16, align 4
  %offset = getelementptr %struct.etnaviv_perfmon_request, ptr %33, i32 %i.086, i32 5
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %offset, align 4
  %35 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %obj, align 8
  %call32 = tail call ptr @etnaviv_gem_vmap(ptr noundef %36) #9
  %37 = ptrtoint ptr %pmrs16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pmrs16, align 4
  %bo_vma = getelementptr %struct.etnaviv_perfmon_request, ptr %38, i32 %i.086, i32 4
  %39 = ptrtoint ptr %bo_vma to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call32, ptr %bo_vma, align 4
  %inc = add nuw i32 %i.086, 1
  %40 = ptrtoint ptr %nr_pmrs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_pmrs, align 8
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup37_crit_edge

for.inc.cleanup37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup37:                                        ; preds = %for.inc.cleanup37_crit_edge, %if.then13, %if.then9, %if.then6, %if.then2, %submit_bo.exit, %entry.cleanup37_crit_edge
  %retval.2 = phi i32 [ -22, %if.then2 ], [ -22, %if.then6 ], [ -22, %if.then9 ], [ -22, %if.then13 ], [ -22, %submit_bo.exit ], [ 0, %entry.cleanup37_crit_edge ], [ 0, %for.inc.cleanup37_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_lock_objects(ptr nocapture noundef %submit, ptr noundef %ticket) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_bos = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 16
  %0 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp104111.not = icmp eq i32 %1, 0
  br i1 %cmp104111.not, label %entry.for.end_crit_edge, label %for.body.lr.ph.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph.lr.ph:                             ; preds = %entry
  %contending_lock.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph.lr.ph ], [ %i.0106.be, %for.body.backedge ]
  %slow_locked.1105 = phi i32 [ -1, %for.body.lr.ph.lr.ph ], [ %slow_locked.1105.be, %for.body.backedge ]
  %arrayidx = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.0106
  call void @__sanitizer_cov_trace_cmp4(i32 %slow_locked.1105, i32 %i.0106)
  %cmp2 = icmp eq i32 %slow_locked.1105, %i.0106
  %spec.store.select = select i1 %cmp2, i32 -1, i32 %slow_locked.1105
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %obj1 = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.0106, i32 2
  %4 = ptrtoint ptr %obj1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %obj1, align 8
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv, align 8
  %call.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %7, ptr noundef %ticket) #9
  %8 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.then5.cleanup_crit_edge [
    i32 -114, label %if.then7
    i32 0, label %if.end11
  ]

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %i.0106) #9
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  %or = or i32 %10, 16384
  store i32 %or, ptr %arrayidx, align 8
  br label %for.inc

cleanup:                                          ; preds = %if.then7, %if.then5.cleanup_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0106)
  %cmp17108 = icmp sgt i32 %i.0106, -1
  br i1 %cmp17108, label %cleanup.for.body18_crit_edge, label %cleanup.for.end20_crit_edge

cleanup.for.end20_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end20

cleanup.for.body18_crit_edge:                     ; preds = %cleanup
  br label %for.body18

for.inc:                                          ; preds = %if.end11, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0106, 1
  %11 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %12)
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body.backedge_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.backedge

for.body.backedge:                                ; preds = %cleanup40.for.body.backedge_crit_edge, %for.inc.for.body.backedge_crit_edge
  %i.0106.be = phi i32 [ %inc, %for.inc.for.body.backedge_crit_edge ], [ 0, %cleanup40.for.body.backedge_crit_edge ]
  %slow_locked.1105.be = phi i32 [ %spec.store.select, %for.inc.for.body.backedge_crit_edge ], [ %i.0106, %cleanup40.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %cleanup40.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.end.if.end.i_crit_edge, label %land.rhs.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %for.end
  %dep_map.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 8
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !73

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 171, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %for.end.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %14 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool24.not.i = icmp eq i32 %14, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i, label %if.end.i.ww_acquire_done.exit_crit_edge

if.end.i.ww_acquire_done.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ww_acquire_done.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %done_acquire.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 5
  %15 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %done_acquire.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool25.not.i = icmp eq i32 %16, 0
  br i1 %tobool25.not.i, label %land.lhs.true.i.ww_acquire_done.exit_crit_edge, label %do.end35.i, !prof !68

land.lhs.true.i.ww_acquire_done.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ww_acquire_done.exit

do.end35.i:                                       ; preds = %land.lhs.true.i
  %call36.i = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.end35.i.ww_acquire_done.exit_crit_edge, label %land.lhs.true38.i

do.end35.i.ww_acquire_done.exit_crit_edge:        ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ww_acquire_done.exit

land.lhs.true38.i:                                ; preds = %do.end35.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %17 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool39.not.i = icmp eq i32 %17, 0
  br i1 %tobool39.not.i, label %do.end53.i, label %land.lhs.true38.i.ww_acquire_done.exit_crit_edge

land.lhs.true38.i.ww_acquire_done.exit_crit_edge: ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ww_acquire_done.exit

do.end53.i:                                       ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #9
  br label %ww_acquire_done.exit

ww_acquire_done.exit:                             ; preds = %do.end53.i, %land.lhs.true38.i.ww_acquire_done.exit_crit_edge, %do.end35.i.ww_acquire_done.exit_crit_edge, %land.lhs.true.i.ww_acquire_done.exit_crit_edge, %if.end.i.ww_acquire_done.exit_crit_edge
  %done_acquire73.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 5
  %18 = ptrtoint ptr %done_acquire73.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %done_acquire73.i, align 4
  br label %cleanup44

for.body18:                                       ; preds = %submit_unlock_object.exit.for.body18_crit_edge, %cleanup.for.body18_crit_edge
  %i.1109 = phi i32 [ %dec, %submit_unlock_object.exit.for.body18_crit_edge ], [ %i.0106, %cleanup.for.body18_crit_edge ]
  %arrayidx.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.1109
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i76 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i76, label %for.body18.submit_unlock_object.exit_crit_edge, label %if.then.i

for.body18.submit_unlock_object.exit_crit_edge:   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %submit_unlock_object.exit

if.then.i:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  %obj3.i = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.1109, i32 2
  %21 = ptrtoint ptr %obj3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %obj3.i, align 8
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %24) #9
  tail call void @ww_mutex_unlock(ptr noundef %24) #9
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 8
  %and7.i = and i32 %26, -16385
  store i32 %and7.i, ptr %arrayidx.i, align 8
  br label %submit_unlock_object.exit

submit_unlock_object.exit:                        ; preds = %if.then.i, %for.body18.submit_unlock_object.exit_crit_edge
  %dec = add nsw i32 %i.1109, -1
  %cmp17 = icmp sgt i32 %i.1109, 0
  br i1 %cmp17, label %submit_unlock_object.exit.for.body18_crit_edge, label %submit_unlock_object.exit.for.end20_crit_edge

submit_unlock_object.exit.for.end20_crit_edge:    ; preds = %submit_unlock_object.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end20

submit_unlock_object.exit.for.body18_crit_edge:   ; preds = %submit_unlock_object.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.end20:                                        ; preds = %submit_unlock_object.exit.for.end20_crit_edge, %cleanup.for.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp21 = icmp sgt i32 %spec.store.select, 0
  br i1 %cmp21, label %if.then22, label %for.end20.if.end23_crit_edge

for.end20.if.end23_crit_edge:                     ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %for.end20
  %arrayidx.i78 = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %spec.store.select
  %27 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i78, align 8
  %and.i79 = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i80 = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i80, label %if.then22.if.end23_crit_edge, label %if.then.i84

if.then22.if.end23_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then.i84:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %obj3.i81 = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %spec.store.select, i32 2
  %29 = ptrtoint ptr %obj3.i81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %obj3.i81, align 8
  %resv.i82 = getelementptr inbounds %struct.drm_gem_object, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %resv.i82 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resv.i82, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %32) #9
  tail call void @ww_mutex_unlock(ptr noundef %32) #9
  %33 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i78, align 8
  %and7.i83 = and i32 %34, -16385
  store i32 %and7.i83, ptr %arrayidx.i78, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then.i84, %if.then22.if.end23_crit_edge, %for.end20.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call.i)
  %cmp24 = icmp eq i32 %call.i, -35
  br i1 %cmp24, label %if.then25, label %if.end23.cleanup44_crit_edge

if.end23.cleanup44_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.then25:                                        ; preds = %if.end23
  %35 = ptrtoint ptr %obj1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %obj1, align 8
  %resv31 = getelementptr inbounds %struct.drm_gem_object, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %resv31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resv31, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %39 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then25.dma_resv_lock_slow_interruptible.exit_crit_edge

if.then25.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_lock_slow_interruptible.exit

land.lhs.true.i.i:                                ; preds = %if.then25
  %40 = ptrtoint ptr %contending_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %contending_lock.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, !prof !73

land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_lock_slow_interruptible.exit

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i87 = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87)
  %tobool5.not.i.i = icmp eq i32 %call.i.i87, 0
  br i1 %tobool5.not.i.i, label %do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, label %land.lhs.true6.i.i

do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_lock_slow_interruptible.exit

land.lhs.true6.i.i:                               ; preds = %do.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %42 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool7.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool7.not.i.i, label %do.end20.i.i, label %land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge

land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_lock_slow_interruptible.exit

do.end20.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 333, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #9
  br label %dma_resv_lock_slow_interruptible.exit

dma_resv_lock_slow_interruptible.exit:            ; preds = %do.end20.i.i, %land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %if.then25.dma_resv_lock_slow_interruptible.exit_crit_edge
  %call38.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %38, ptr noundef %ticket) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool33.not = icmp eq i32 %call38.i.i, 0
  br i1 %tobool33.not, label %cleanup40, label %dma_resv_lock_slow_interruptible.exit.cleanup44_crit_edge

dma_resv_lock_slow_interruptible.exit.cleanup44_crit_edge: ; preds = %dma_resv_lock_slow_interruptible.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

cleanup40:                                        ; preds = %dma_resv_lock_slow_interruptible.exit
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 8
  %or38 = or i32 %44, 16384
  store i32 %or38, ptr %arrayidx, align 8
  %45 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp104.not = icmp eq i32 %46, 0
  br i1 %cmp104.not, label %cleanup40.for.end_crit_edge, label %cleanup40.for.body.backedge_crit_edge

cleanup40.for.body.backedge_crit_edge:            ; preds = %cleanup40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.backedge

cleanup40.for.end_crit_edge:                      ; preds = %cleanup40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup44:                                        ; preds = %dma_resv_lock_slow_interruptible.exit.cleanup44_crit_edge, %if.end23.cleanup44_crit_edge, %ww_acquire_done.exit
  %retval.0 = phi i32 [ 0, %ww_acquire_done.exit ], [ %call38.i.i, %dma_resv_lock_slow_interruptible.exit.cleanup44_crit_edge ], [ %call.i, %if.end23.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_fence_sync(ptr noundef %submit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_bos = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 16
  %0 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp43.not = icmp eq i32 %1, 0
  br i1 %cmp43.not, label %entry.cleanup21_crit_edge, label %for.body.lr.ph

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

for.body.lr.ph:                                   ; preds = %entry
  %flags4 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.044
  %obj = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.044, i32 2
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %obj, align 8
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end3_crit_edge

for.body.if.end3_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %for.body
  %call = tail call i32 @dma_resv_reserve_shared(ptr noundef %5, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup21_crit_edge

if.then.cleanup21_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %for.body.if.end3_crit_edge
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags4, align 4
  %and5 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.for.inc_crit_edge

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %if.end3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %and10 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  %nr_shared = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.044, i32 5
  %shared = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.044, i32 6
  %call13 = tail call i32 @dma_resv_get_fences(ptr noundef %5, ptr noundef null, ptr noundef %nr_shared, ptr noundef %shared) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.for.inc_crit_edge, label %if.then12.cleanup21_crit_edge

if.then12.cleanup21_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else:                                          ; preds = %if.end8
  %fence_excl.i = getelementptr inbounds %struct.dma_resv, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fence_excl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %fence_excl.i, align 4
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %5, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.else.dma_resv_excl_fence.exit_crit_edge

if.else.dma_resv_excl_fence.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

lor.lhs.false.i:                                  ; preds = %if.else
  %call2.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge

lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @dma_resv_excl_fence.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, label %if.then.i

land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @dma_resv_excl_fence.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 440, ptr noundef nonnull @.str.26) #9
  br label %dma_resv_excl_fence.exit

dma_resv_excl_fence.exit:                         ; preds = %if.then.i, %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, %land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge, %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge, %if.else.dma_resv_excl_fence.exit_crit_edge
  %tobool.not.i38 = icmp eq ptr %13, null
  br i1 %tobool.not.i38, label %dma_resv_excl_fence.exit.dma_fence_get.exit_crit_edge, label %if.then.i39

dma_resv_excl_fence.exit.dma_fence_get.exit_crit_edge: ; preds = %dma_resv_excl_fence.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.then.i39:                                      ; preds = %dma_resv_excl_fence.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i39.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !73

if.then.i39.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i39
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i39.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i39.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %dma_resv_excl_fence.exit.dma_fence_get.exit_crit_edge
  %excl = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.044, i32 4
  %16 = ptrtoint ptr %excl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %excl, align 8
  br label %for.inc

for.inc:                                          ; preds = %dma_fence_get.exit, %if.then12.for.inc_crit_edge, %if.end3.for.inc_crit_edge
  %inc = add nuw i32 %i.044, 1
  %17 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup21_crit_edge

for.inc.cleanup21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup21:                                        ; preds = %for.inc.cleanup21_crit_edge, %if.then12.cleanup21_crit_edge, %if.then.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup21_crit_edge ], [ %call13, %if.then12.cleanup21_crit_edge ], [ %call, %if.then.cleanup21_crit_edge ], [ 0, %for.inc.cleanup21_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_sched_push_job(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @submit_attach_object_fences(ptr nocapture noundef %submit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_bos = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 16
  %0 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %out_fence = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %submit_unlock_object.exit.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %submit_unlock_object.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.017
  %obj1 = getelementptr %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 17, i32 %i.017, i32 2
  %2 = ptrtoint ptr %obj1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %obj1, align 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %resv4 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %resv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv4, align 8
  %8 = ptrtoint ptr %out_fence to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out_fence, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_resv_add_excl_fence(ptr noundef %7, ptr noundef %9) #9
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_resv_add_shared_fence(ptr noundef %7, ptr noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %and.i = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.submit_unlock_object.exit_crit_edge, label %if.then.i

if.end.submit_unlock_object.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %submit_unlock_object.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %obj1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %obj1, align 8
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %15) #9
  tail call void @ww_mutex_unlock(ptr noundef %15) #9
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 8
  %and7.i = and i32 %17, -16385
  store i32 %and7.i, ptr %arrayidx, align 8
  br label %submit_unlock_object.exit

submit_unlock_object.exit:                        ; preds = %if.then.i, %if.end.submit_unlock_object.exit_crit_edge
  %inc = add nuw i32 %i.017, 1
  %18 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %submit_unlock_object.exit.for.body_crit_edge, label %submit_unlock_object.exit.for.end_crit_edge

submit_unlock_object.exit.for.end_crit_edge:      ; preds = %submit_unlock_object.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

submit_unlock_object.exit.for.body_crit_edge:     ; preds = %submit_unlock_object.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %submit_unlock_object.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_fini(ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@ww_acquire_fini, %__here) to i32)) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %acquired, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !68

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27) #9
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_cmdbuf_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gem_mapping_unreference(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_mapping_get(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_pm_req_validate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_vmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_get_fences(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !53, !54}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 449, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 457, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 462, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 468, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 474, i32 3}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 69, i32 4}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 77, i32 5}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 89, i32 4}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 288, i32 4}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 293, i32 4}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 303, i32 4}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 312, i32 4}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 259, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 340, i32 4}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 345, i32 4}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 350, i32 4}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 355, i32 4}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c", i32 138, i32 5}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/ww_mutex.h", i32 171, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/ww_mutex.h", i32 173, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/ww_mutex.h", i32 333, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/dma-resv.h", i32 440, i32 9}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/ww_mutex.h", i32 191, i32 2}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148606339}
!67 = !{i64 2148520779, i64 2148520811, i64 2148520840, i64 2148520874, i64 2148520905, i64 2148520928}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2149910721}
!70 = !{i8 0, i8 2}
!71 = !{i64 2148519249, i64 2148519275, i64 2148519304, i64 2148519338, i64 2148519369, i64 2148519392}
!72 = distinct !{ptr @dma_fence_release, ptr @drm_gem_object_free, null}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2152909737, i64 2152909762}
!75 = !{i64 5405292}
!76 = !{i64 5405489}
!77 = !{i64 2152890722}
!78 = !{i64 2148517504, i64 2148517536, i64 2148517565, i64 2148517599, i64 2148517630, i64 2148517653}
!79 = !{i64 2148518314, i64 2148518346, i64 2148518375, i64 2148518409, i64 2148518440, i64 2148518463}
!80 = !{i64 2148516784, i64 2148516810, i64 2148516839, i64 2148516873, i64 2148516904, i64 2148516927}
