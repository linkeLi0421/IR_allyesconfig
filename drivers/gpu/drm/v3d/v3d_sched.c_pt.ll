; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/v3d/v3d_sched.c_pt.bc'
source_filename = "../drivers/gpu/drm/v3d/v3d_sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.v3d_dev = type { %struct.drm_device, i32, i8, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, %struct.drm_mm, %struct.spinlock, %struct.work_struct, ptr, ptr, ptr, ptr, [5 x %struct.v3d_queue_state], %struct.spinlock, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.anon.87 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.85 = type { i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v3d_queue_state = type { %struct.drm_gpu_scheduler, i64, i64 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.87 = type { i32, i32 }
%struct.v3d_job = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.86, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.86 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.v3d_fence = type { %struct.dma_fence, ptr, i64, i32 }
%struct.v3d_bin_job = type { %struct.v3d_job, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v3d_render_job = type { %struct.v3d_job, i32, i32, i32, i32, %struct.list_head }
%struct.v3d_tfu_job = type { %struct.v3d_job, %struct.drm_v3d_submit_tfu }
%struct.drm_v3d_submit_tfu = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, i32, i64 }
%struct.v3d_csd_job = type { %struct.v3d_job, i32, %struct.drm_v3d_submit_csd }
%struct.drm_v3d_submit_csd = type { [7 x i32], [4 x i32], i64, i32, i32, i32, i32, i64, i32, i32 }

@v3d_bin_sched_ops = internal constant { %struct.drm_sched_backend_ops, [16 x i8] } { %struct.drm_sched_backend_ops { ptr null, ptr @v3d_bin_job_run, ptr @v3d_bin_job_timedout, ptr @v3d_sched_job_free }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v3d_bin\00", [24 x i8] zeroinitializer }, align 32
@v3d_sched_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create bin scheduler: %d.\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"v3d_sched_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/v3d/v3d_sched.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@v3d_sched_init._entry_ptr = internal global ptr @v3d_sched_init._entry, section ".printk_index", align 4
@v3d_render_sched_ops = internal constant { %struct.drm_sched_backend_ops, [16 x i8] } { %struct.drm_sched_backend_ops { ptr null, ptr @v3d_render_job_run, ptr @v3d_render_job_timedout, ptr @v3d_sched_job_free }, [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"v3d_render\00", [21 x i8] zeroinitializer }, align 32
@v3d_sched_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create render scheduler: %d.\00", [57 x i8] zeroinitializer }, align 32
@v3d_sched_init._entry_ptr.9 = internal global ptr @v3d_sched_init._entry.7, section ".printk_index", align 4
@v3d_tfu_sched_ops = internal constant { %struct.drm_sched_backend_ops, [16 x i8] } { %struct.drm_sched_backend_ops { ptr null, ptr @v3d_tfu_job_run, ptr @v3d_generic_job_timedout, ptr @v3d_sched_job_free }, [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v3d_tfu\00", [24 x i8] zeroinitializer }, align 32
@v3d_sched_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create TFU scheduler: %d.\00", [60 x i8] zeroinitializer }, align 32
@v3d_sched_init._entry_ptr.13 = internal global ptr @v3d_sched_init._entry.11, section ".printk_index", align 4
@v3d_csd_sched_ops = internal constant { %struct.drm_sched_backend_ops, [16 x i8] } { %struct.drm_sched_backend_ops { ptr null, ptr @v3d_csd_job_run, ptr @v3d_csd_job_timedout, ptr @v3d_sched_job_free }, [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v3d_csd\00", [24 x i8] zeroinitializer }, align 32
@v3d_sched_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create CSD scheduler: %d.\00", [60 x i8] zeroinitializer }, align 32
@v3d_sched_init._entry_ptr.17 = internal global ptr @v3d_sched_init._entry.15, section ".printk_index", align 4
@v3d_cache_clean_sched_ops = internal constant { %struct.drm_sched_backend_ops, [16 x i8] } { %struct.drm_sched_backend_ops { ptr null, ptr @v3d_cache_clean_job_run, ptr @v3d_generic_job_timedout, ptr @v3d_sched_job_free }, [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"v3d_cache_clean\00", [16 x i8] zeroinitializer }, align 32
@v3d_sched_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to create CACHE_CLEAN scheduler: %d.\00", [52 x i8] zeroinitializer }, align 32
@v3d_sched_init._entry_ptr.21 = internal global ptr @v3d_sched_init._entry.19, section ".printk_index", align 4
@__tracepoint_v3d_submit_cl = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/v3d/v3d_trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_v3d_submit_cl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_v3d_submit_tfu = external dso_local global %struct.tracepoint, align 4
@trace_v3d_submit_tfu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_v3d_submit_csd = external dso_local global %struct.tracepoint, align 4
@trace_v3d_submit_csd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"v3d_bin_sched_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 352, i32 43 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 394, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 396, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"v3d_render_sched_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 358, i32 43 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 404, i32 15 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 406, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"v3d_tfu_sched_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 364, i32 43 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 416, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 418, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"v3d_csd_sched_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 370, i32 43 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 429, i32 16 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 431, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"v3d_cache_clean_sched_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 376, i32 43 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 441, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private constant [35 x i8] c"../drivers/gpu/drm/v3d/v3d_sched.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 443, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/v3d/v3d_trace.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 37, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 108, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @v3d_sched_init._entry, ptr @v3d_sched_init._entry.11, ptr @v3d_sched_init._entry.15, ptr @v3d_sched_init._entry.19, ptr @v3d_sched_init._entry.7, ptr @v3d_sched_init._entry_ptr, ptr @v3d_sched_init._entry_ptr.13, ptr @v3d_sched_init._entry_ptr.17, ptr @v3d_sched_init._entry_ptr.21, ptr @v3d_sched_init._entry_ptr.9, ptr @v3d_bin_sched_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @v3d_render_sched_ops, ptr @.str.6, ptr @.str.8, ptr @v3d_tfu_sched_ops, ptr @.str.10, ptr @.str.12, ptr @v3d_csd_sched_ops, ptr @.str.14, ptr @.str.16, ptr @v3d_cache_clean_sched_ops, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_bin_sched_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_sched_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_render_sched_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_sched_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_tfu_sched_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_sched_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_csd_sched_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_sched_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_cache_clean_sched_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_sched_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v3d_sched_init(ptr noundef %v3d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22
  %call1 = tail call i32 @drm_sched_init(ptr noundef %queue, ptr noundef nonnull @v3d_bin_sched_ops, i32 noundef 1, i32 noundef 0, i32 noundef 50, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.drm_device, ptr %v3d, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 1
  %call6 = tail call i32 @drm_sched_init(ptr noundef %arrayidx3, ptr noundef nonnull @v3d_render_sched_ops, i32 noundef 1, i32 noundef 0, i32 noundef 50, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end
  %dev13 = getelementptr inbounds %struct.drm_device, ptr %v3d, i32 0, i32 2
  %2 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %call6) #10
  %ready.i = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 0, i32 0, i32 17
  %4 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ready.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %do.end11.for.inc.i_crit_edge, label %if.then.i

do.end11.for.inc.i_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %queue) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %do.end11.for.inc.i_crit_edge
  %ready.1.i = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 1, i32 0, i32 17
  %6 = ptrtoint ptr %ready.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ready.1.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1.i = icmp eq i8 %7, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %arrayidx3) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %ready.2.i = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 2, i32 0, i32 17
  %8 = ptrtoint ptr %ready.2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ready.2.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.2.i = icmp eq i8 %9, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2.i = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 2
  tail call void @drm_sched_fini(ptr noundef %arrayidx.2.i) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %ready.3.i = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 3, i32 0, i32 17
  %10 = ptrtoint ptr %ready.3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ready.3.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.3.i = icmp eq i8 %11, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3.i = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 3
  tail call void @drm_sched_fini(ptr noundef %arrayidx.3.i) #7
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %ready.4.i = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4, i32 0, i32 17
  %12 = ptrtoint ptr %ready.4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ready.4.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.4.i = icmp eq i8 %13, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.cleanup_crit_edge, label %if.then.4.i

for.inc.3.i.cleanup_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.4.i = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4
  tail call void @drm_sched_fini(ptr noundef %arrayidx.4.i) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %arrayidx16 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 2
  %call19 = tail call i32 @drm_sched_init(ptr noundef %arrayidx16, ptr noundef nonnull @v3d_tfu_sched_ops, i32 noundef 1, i32 noundef 0, i32 noundef 50, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end14
  %dev26 = getelementptr inbounds %struct.drm_device, ptr %v3d, i32 0, i32 2
  %14 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.12, i32 noundef %call19) #10
  %ready.i100 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 0, i32 0, i32 17
  %16 = ptrtoint ptr %ready.i100 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ready.i100, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i101 = icmp eq i8 %17, 0
  br i1 %tobool.not.i101, label %do.end24.for.inc.i106_crit_edge, label %if.then.i103

do.end24.for.inc.i106_crit_edge:                  ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i106

if.then.i103:                                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %queue) #7
  br label %for.inc.i106

for.inc.i106:                                     ; preds = %if.then.i103, %do.end24.for.inc.i106_crit_edge
  %ready.1.i104 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 1, i32 0, i32 17
  %18 = ptrtoint ptr %ready.1.i104 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ready.1.i104, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.1.i105 = icmp eq i8 %19, 0
  br i1 %tobool.not.1.i105, label %for.inc.i106.for.inc.1.i111_crit_edge, label %if.then.1.i108

for.inc.i106.for.inc.1.i111_crit_edge:            ; preds = %for.inc.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i111

if.then.1.i108:                                   ; preds = %for.inc.i106
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %arrayidx3) #7
  br label %for.inc.1.i111

for.inc.1.i111:                                   ; preds = %if.then.1.i108, %for.inc.i106.for.inc.1.i111_crit_edge
  %ready.2.i109 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 2, i32 0, i32 17
  %20 = ptrtoint ptr %ready.2.i109 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ready.2.i109, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.2.i110 = icmp eq i8 %21, 0
  br i1 %tobool.not.2.i110, label %for.inc.1.i111.for.inc.2.i116_crit_edge, label %if.then.2.i113

for.inc.1.i111.for.inc.2.i116_crit_edge:          ; preds = %for.inc.1.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i116

if.then.2.i113:                                   ; preds = %for.inc.1.i111
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %arrayidx16) #7
  br label %for.inc.2.i116

for.inc.2.i116:                                   ; preds = %if.then.2.i113, %for.inc.1.i111.for.inc.2.i116_crit_edge
  %ready.3.i114 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 3, i32 0, i32 17
  %22 = ptrtoint ptr %ready.3.i114 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ready.3.i114, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.3.i115 = icmp eq i8 %23, 0
  br i1 %tobool.not.3.i115, label %for.inc.2.i116.for.inc.3.i121_crit_edge, label %if.then.3.i118

for.inc.2.i116.for.inc.3.i121_crit_edge:          ; preds = %for.inc.2.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i121

if.then.3.i118:                                   ; preds = %for.inc.2.i116
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3.i117 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 3
  tail call void @drm_sched_fini(ptr noundef %arrayidx.3.i117) #7
  br label %for.inc.3.i121

for.inc.3.i121:                                   ; preds = %if.then.3.i118, %for.inc.2.i116.for.inc.3.i121_crit_edge
  %ready.4.i119 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4, i32 0, i32 17
  %24 = ptrtoint ptr %ready.4.i119 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ready.4.i119, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.4.i120 = icmp eq i8 %25, 0
  br i1 %tobool.not.4.i120, label %for.inc.3.i121.cleanup_crit_edge, label %if.then.4.i123

for.inc.3.i121.cleanup_crit_edge:                 ; preds = %for.inc.3.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.4.i123:                                   ; preds = %for.inc.3.i121
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.4.i122 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4
  tail call void @drm_sched_fini(ptr noundef %arrayidx.4.i122) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end14
  %ver.i = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 1
  %26 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %27)
  %cmp.i = icmp sgt i32 %27, 40
  br i1 %cmp.i, label %if.then29, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  %arrayidx31 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 3
  %call34 = tail call i32 @drm_sched_init(ptr noundef %arrayidx31, ptr noundef nonnull @v3d_csd_sched_ops, i32 noundef 1, i32 noundef 0, i32 noundef 50, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.then29
  %dev41 = getelementptr inbounds %struct.drm_device, ptr %v3d, i32 0, i32 2
  %28 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev41, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.16, i32 noundef %call34) #10
  %ready.i125 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 0, i32 0, i32 17
  %30 = ptrtoint ptr %ready.i125 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ready.i125, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i126 = icmp eq i8 %31, 0
  br i1 %tobool.not.i126, label %do.end39.for.inc.i131_crit_edge, label %if.then.i128

do.end39.for.inc.i131_crit_edge:                  ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i131

if.then.i128:                                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %queue) #7
  br label %for.inc.i131

for.inc.i131:                                     ; preds = %if.then.i128, %do.end39.for.inc.i131_crit_edge
  %ready.1.i129 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 1, i32 0, i32 17
  %32 = ptrtoint ptr %ready.1.i129 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ready.1.i129, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.1.i130 = icmp eq i8 %33, 0
  br i1 %tobool.not.1.i130, label %for.inc.i131.for.inc.1.i136_crit_edge, label %if.then.1.i133

for.inc.i131.for.inc.1.i136_crit_edge:            ; preds = %for.inc.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i136

if.then.1.i133:                                   ; preds = %for.inc.i131
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %arrayidx3) #7
  br label %for.inc.1.i136

for.inc.1.i136:                                   ; preds = %if.then.1.i133, %for.inc.i131.for.inc.1.i136_crit_edge
  %ready.2.i134 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 2, i32 0, i32 17
  %34 = ptrtoint ptr %ready.2.i134 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ready.2.i134, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.2.i135 = icmp eq i8 %35, 0
  br i1 %tobool.not.2.i135, label %for.inc.1.i136.for.inc.2.i141_crit_edge, label %if.then.2.i138

for.inc.1.i136.for.inc.2.i141_crit_edge:          ; preds = %for.inc.1.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i141

if.then.2.i138:                                   ; preds = %for.inc.1.i136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %arrayidx16) #7
  br label %for.inc.2.i141

for.inc.2.i141:                                   ; preds = %if.then.2.i138, %for.inc.1.i136.for.inc.2.i141_crit_edge
  %ready.3.i139 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 3, i32 0, i32 17
  %36 = ptrtoint ptr %ready.3.i139 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ready.3.i139, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.3.i140 = icmp eq i8 %37, 0
  br i1 %tobool.not.3.i140, label %for.inc.2.i141.for.inc.3.i146_crit_edge, label %if.then.3.i143

for.inc.2.i141.for.inc.3.i146_crit_edge:          ; preds = %for.inc.2.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i146

if.then.3.i143:                                   ; preds = %for.inc.2.i141
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %arrayidx31) #7
  br label %for.inc.3.i146

for.inc.3.i146:                                   ; preds = %if.then.3.i143, %for.inc.2.i141.for.inc.3.i146_crit_edge
  %ready.4.i144 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4, i32 0, i32 17
  %38 = ptrtoint ptr %ready.4.i144 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ready.4.i144, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.4.i145 = icmp eq i8 %39, 0
  br i1 %tobool.not.4.i145, label %for.inc.3.i146.cleanup_crit_edge, label %if.then.4.i148

for.inc.3.i146.cleanup_crit_edge:                 ; preds = %for.inc.3.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.4.i148:                                   ; preds = %for.inc.3.i146
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.4.i147 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4
  tail call void @drm_sched_fini(ptr noundef %arrayidx.4.i147) #7
  br label %cleanup

if.end42:                                         ; preds = %if.then29
  %arrayidx44 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4
  %call47 = tail call i32 @drm_sched_init(ptr noundef %arrayidx44, ptr noundef nonnull @v3d_cache_clean_sched_ops, i32 noundef 1, i32 noundef 0, i32 noundef 50, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end42.cleanup_crit_edge, label %do.end52

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end52:                                         ; preds = %if.end42
  %dev54 = getelementptr inbounds %struct.drm_device, ptr %v3d, i32 0, i32 2
  %40 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev54, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.20, i32 noundef %call47) #10
  %ready.i150 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 0, i32 0, i32 17
  %42 = ptrtoint ptr %ready.i150 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ready.i150, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i151 = icmp eq i8 %43, 0
  br i1 %tobool.not.i151, label %do.end52.for.inc.i156_crit_edge, label %if.then.i153

do.end52.for.inc.i156_crit_edge:                  ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i156

if.then.i153:                                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %queue) #7
  br label %for.inc.i156

for.inc.i156:                                     ; preds = %if.then.i153, %do.end52.for.inc.i156_crit_edge
  %ready.1.i154 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 1, i32 0, i32 17
  %44 = ptrtoint ptr %ready.1.i154 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ready.1.i154, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.1.i155 = icmp eq i8 %45, 0
  br i1 %tobool.not.1.i155, label %for.inc.i156.for.inc.1.i161_crit_edge, label %if.then.1.i158

for.inc.i156.for.inc.1.i161_crit_edge:            ; preds = %for.inc.i156
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i161

if.then.1.i158:                                   ; preds = %for.inc.i156
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %arrayidx3) #7
  br label %for.inc.1.i161

for.inc.1.i161:                                   ; preds = %if.then.1.i158, %for.inc.i156.for.inc.1.i161_crit_edge
  %ready.2.i159 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 2, i32 0, i32 17
  %46 = ptrtoint ptr %ready.2.i159 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ready.2.i159, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.2.i160 = icmp eq i8 %47, 0
  br i1 %tobool.not.2.i160, label %for.inc.1.i161.for.inc.2.i166_crit_edge, label %if.then.2.i163

for.inc.1.i161.for.inc.2.i166_crit_edge:          ; preds = %for.inc.1.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i166

if.then.2.i163:                                   ; preds = %for.inc.1.i161
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %arrayidx16) #7
  br label %for.inc.2.i166

for.inc.2.i166:                                   ; preds = %if.then.2.i163, %for.inc.1.i161.for.inc.2.i166_crit_edge
  %ready.3.i164 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 3, i32 0, i32 17
  %48 = ptrtoint ptr %ready.3.i164 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ready.3.i164, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.3.i165 = icmp eq i8 %49, 0
  br i1 %tobool.not.3.i165, label %for.inc.2.i166.for.inc.3.i171_crit_edge, label %if.then.3.i168

for.inc.2.i166.for.inc.3.i171_crit_edge:          ; preds = %for.inc.2.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i171

if.then.3.i168:                                   ; preds = %for.inc.2.i166
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %arrayidx31) #7
  br label %for.inc.3.i171

for.inc.3.i171:                                   ; preds = %if.then.3.i168, %for.inc.2.i166.for.inc.3.i171_crit_edge
  %ready.4.i169 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4, i32 0, i32 17
  %50 = ptrtoint ptr %ready.4.i169 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ready.4.i169, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.4.i170 = icmp eq i8 %51, 0
  br i1 %tobool.not.4.i170, label %for.inc.3.i171.cleanup_crit_edge, label %if.then.4.i173

for.inc.3.i171.cleanup_crit_edge:                 ; preds = %for.inc.3.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.4.i173:                                   ; preds = %for.inc.3.i171
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_fini(ptr noundef %arrayidx44) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.4.i173, %for.inc.3.i171.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then.4.i148, %for.inc.3.i146.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then.4.i123, %for.inc.3.i121.cleanup_crit_edge, %if.then.4.i, %for.inc.3.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ %call6, %for.inc.3.i.cleanup_crit_edge ], [ %call6, %if.then.4.i ], [ %call19, %for.inc.3.i121.cleanup_crit_edge ], [ %call19, %if.then.4.i123 ], [ %call34, %for.inc.3.i146.cleanup_crit_edge ], [ %call34, %if.then.4.i148 ], [ %call47, %for.inc.3.i171.cleanup_crit_edge ], [ %call47, %if.then.4.i173 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_sched_fini(ptr noundef %v3d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 0, i32 0, i32 17
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ready, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 0
  tail call void @drm_sched_fini(ptr noundef %arrayidx) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %ready.1 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 1, i32 0, i32 17
  %2 = ptrtoint ptr %ready.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ready.1, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.1 = icmp eq i8 %3, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 1
  tail call void @drm_sched_fini(ptr noundef %arrayidx.1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %ready.2 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 2, i32 0, i32 17
  %4 = ptrtoint ptr %ready.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ready.2, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.2 = icmp eq i8 %5, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 2
  tail call void @drm_sched_fini(ptr noundef %arrayidx.2) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %ready.3 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 3, i32 0, i32 17
  %6 = ptrtoint ptr %ready.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ready.3, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.3 = icmp eq i8 %7, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 3
  tail call void @drm_sched_fini(ptr noundef %arrayidx.3) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %ready.4 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4, i32 0, i32 17
  %8 = ptrtoint ptr %ready.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ready.4, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.4 = icmp eq i8 %9, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.4 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4
  tail call void @drm_sched_fini(ptr noundef %arrayidx.4) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @v3d_bin_job_run(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d1 = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %v3d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d1, align 4
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 3
  %2 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fence, align 8
  %error = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body6, label %entry.cleanup_crit_edge, !prof !69

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body6:                                         ; preds = %entry
  %job_lock = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 23
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #7
  %bin_job = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %bin_job to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sched_job, ptr %bin_job, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %core_regs = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core_regs, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call8) #7
  tail call void @v3d_invalidate_caches(ptr noundef %1) #7
  %call15 = tail call ptr @v3d_fence_create(ptr noundef %1, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body6.cleanup_crit_edge, label %if.end18

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %do.body6
  %irq_fence = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 5
  %9 = ptrtoint ptr %irq_fence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_fence, align 8
  %tobool20.not = icmp eq ptr %10, null
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then.i

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then.i:                                        ; preds = %if.end18
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end24_crit_edge, label %if.then10.i.i.i.i.i, !prof !69

if.end5.i.i.i.i.i.if.end24_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %if.end24

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end24_crit_edge, %if.end18.if.end24_crit_edge
  %tobool.not.i104 = icmp eq ptr %call15, null
  br i1 %tobool.not.i104, label %if.end24.dma_fence_get.exit_crit_edge, label %if.then.i107

if.end24.dma_fence_get.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.then.i107:                                     ; preds = %if.end24
  %refcount.i105 = getelementptr inbounds %struct.dma_fence, ptr %call15, i32 0, i32 6
  %call.i.i.i.i.i.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i105, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i105, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i105, ptr %refcount.i105, i32 1, ptr elementtype(i32) %refcount.i105) #7, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i107.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !76

if.then.i107.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i107
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i108 = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i108, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i107.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i107.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i105, i32 noundef %.sink.i.i.i.i.i) #7
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end24.dma_fence_get.exit_crit_edge
  %14 = ptrtoint ptr %irq_fence to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %irq_fence, align 8
  %seqno = getelementptr inbounds %struct.v3d_fence, ptr %call15, i32 0, i32 2
  %15 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %seqno, align 8
  %start = getelementptr inbounds %struct.v3d_bin_job, ptr %sched_job, i32 0, i32 1
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start, align 8
  %end = getelementptr inbounds %struct.v3d_bin_job, ptr %sched_job, i32 0, i32 2
  %19 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end, align 4
  tail call fastcc void @trace_v3d_submit_cl(ptr noundef %1, i1 noundef zeroext false, i64 noundef %16, i32 noundef %18, i32 noundef %20)
  %perfmon.i = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 7
  %21 = ptrtoint ptr %perfmon.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %perfmon.i, align 8
  %active_perfmon.i = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 24
  %23 = ptrtoint ptr %active_perfmon.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %active_perfmon.i, align 4
  %cmp.not.i = icmp eq ptr %22, %24
  br i1 %cmp.not.i, label %dma_fence_get.exit.if.end.i_crit_edge, label %if.then.i109

dma_fence_get.exit.if.end.i_crit_edge:            ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i109:                                     ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v3d_perfmon_stop(ptr noundef %1, ptr noundef %24, i1 noundef zeroext true) #7
  %25 = ptrtoint ptr %perfmon.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load ptr, ptr %perfmon.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i109, %dma_fence_get.exit.if.end.i_crit_edge
  %26 = phi ptr [ %.pr.i, %if.then.i109 ], [ %22, %dma_fence_get.exit.if.end.i_crit_edge ]
  %tobool.not.i110 = icmp eq ptr %26, null
  br i1 %tobool.not.i110, label %if.end.i.v3d_switch_perfmon.exit_crit_edge, label %land.lhs.true.i

if.end.i.v3d_switch_perfmon.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v3d_switch_perfmon.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %27 = ptrtoint ptr %active_perfmon.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %active_perfmon.i, align 4
  %cmp5.not.i = icmp eq ptr %28, %26
  br i1 %cmp5.not.i, label %land.lhs.true.i.v3d_switch_perfmon.exit_crit_edge, label %if.then6.i

land.lhs.true.i.v3d_switch_perfmon.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v3d_switch_perfmon.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v3d_perfmon_start(ptr noundef %1, ptr noundef nonnull %26) #7
  br label %v3d_switch_perfmon.exit

v3d_switch_perfmon.exit:                          ; preds = %if.then6.i, %land.lhs.true.i.v3d_switch_perfmon.exit_crit_edge, %if.end.i.v3d_switch_perfmon.exit_crit_edge
  %qma = getelementptr inbounds %struct.v3d_bin_job, ptr %sched_job, i32 0, i32 6
  %29 = ptrtoint ptr %qma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool30.not = icmp eq i32 %30, 0
  br i1 %tobool30.not, label %v3d_switch_perfmon.exit.if.end45_crit_edge, label %do.body32

v3d_switch_perfmon.exit.if.end45_crit_edge:       ; preds = %v3d_switch_perfmon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.body32:                                        ; preds = %v3d_switch_perfmon.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %qma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qma, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core_regs, align 8
  %add.ptr38 = getelementptr i8, ptr %35, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %33) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %qms = getelementptr inbounds %struct.v3d_bin_job, ptr %sched_job, i32 0, i32 7
  %36 = ptrtoint ptr %qms to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qms, align 8
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core_regs, align 8
  %add.ptr44 = getelementptr i8, ptr %40, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %38) #7, !srcloc !71
  br label %if.end45

if.end45:                                         ; preds = %do.body32, %v3d_switch_perfmon.exit.if.end45_crit_edge
  %qts = getelementptr inbounds %struct.v3d_bin_job, ptr %sched_job, i32 0, i32 8
  %41 = ptrtoint ptr %qts to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool46.not = icmp eq i32 %42, 0
  br i1 %tobool46.not, label %if.end45.do.body56_crit_edge, label %do.body48

if.end45.do.body56_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

do.body48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %qts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qts, align 4
  %or = or i32 %44, 2
  %45 = tail call i32 @llvm.bswap.i32(i32 %or)
  %46 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core_regs, align 8
  %add.ptr54 = getelementptr i8, ptr %47, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %45) #7, !srcloc !71
  br label %do.body56

do.body56:                                        ; preds = %do.body48, %if.end45.do.body56_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %start, align 8
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %core_regs, align 8
  %add.ptr62 = getelementptr i8, ptr %52, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %50) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %end, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %core_regs, align 8
  %add.ptr69 = getelementptr i8, ptr %57, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %55) #7, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %do.body56, %do.body6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call15, %do.body56 ], [ null, %entry.cleanup_crit_edge ], [ null, %do.body6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3d_bin_job_timedout(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timedout_ctca = getelementptr inbounds %struct.v3d_bin_job, ptr %sched_job, i32 0, i32 3
  %timedout_ctra = getelementptr inbounds %struct.v3d_bin_job, ptr %sched_job, i32 0, i32 4
  %v3d1.i = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %v3d1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d1.i, align 4
  %core_regs.i = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 272
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !82
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %6 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_regs.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %7, i32 280
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !82
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %10 = ptrtoint ptr %timedout_ctca to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timedout_ctca, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp.not.i = icmp eq i32 %11, %5
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %12 = ptrtoint ptr %timedout_ctra to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timedout_ctra, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp14.not.i = icmp eq i32 %13, %9
  br i1 %cmp14.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %14 = ptrtoint ptr %timedout_ctca to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %timedout_ctca, align 4
  %15 = ptrtoint ptr %timedout_ctra to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %timedout_ctra, align 4
  br label %v3d_cl_job_timedout.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @v3d_gpu_reset_for_timeout(ptr noundef %1, ptr noundef %sched_job) #7
  br label %v3d_cl_job_timedout.exit

v3d_cl_job_timedout.exit:                         ; preds = %if.end.i, %if.then.i
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v3d_sched_job_free(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v3d_job_cleanup(ptr noundef %sched_job) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_invalidate_caches(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v3d_fence_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_v3d_submit_cl(ptr noundef %dev, i1 noundef zeroext %is_render, i64 noundef %seqno, i32 noundef %ctnqba, i32 noundef %ctnqea) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_cl, i32 0, i32 1), ptr blockaddress(@trace_v3d_submit_cl, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %call43 = tail call i32 @__traceiter_v3d_submit_cl(ptr noundef null, ptr noundef %dev, i1 noundef zeroext %is_render, i64 noundef %seqno, i32 noundef %ctnqba, i32 noundef %ctnqea) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !69

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_cl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_cl, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_v3d_submit_cl.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_v3d_submit_cl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 65, ptr noundef nonnull @.str.23) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v3d_submit_cl(ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_perfmon_stop(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_perfmon_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @v3d_gpu_reset_for_timeout(ptr noundef %v3d, ptr noundef %sched_job) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_lock = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %reset_lock, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 0
  tail call void @drm_sched_stop(ptr noundef %arrayidx, ptr noundef %sched_job) #7
  %arrayidx.1 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 1
  tail call void @drm_sched_stop(ptr noundef %arrayidx.1, ptr noundef %sched_job) #7
  %arrayidx.2 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 2
  tail call void @drm_sched_stop(ptr noundef %arrayidx.2, ptr noundef %sched_job) #7
  %arrayidx.3 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 3
  tail call void @drm_sched_stop(ptr noundef %arrayidx.3, ptr noundef %sched_job) #7
  %arrayidx.4 = getelementptr %struct.v3d_dev, ptr %v3d, i32 0, i32 22, i32 4
  tail call void @drm_sched_stop(ptr noundef %arrayidx.4, ptr noundef %sched_job) #7
  %tobool.not = icmp eq ptr %sched_job, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_sched_increase_karma(ptr noundef nonnull %sched_job) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @v3d_reset(ptr noundef %v3d) #7
  tail call void @drm_sched_resubmit_jobs(ptr noundef %arrayidx) #7
  tail call void @drm_sched_resubmit_jobs(ptr noundef %arrayidx.1) #7
  tail call void @drm_sched_resubmit_jobs(ptr noundef %arrayidx.2) #7
  tail call void @drm_sched_resubmit_jobs(ptr noundef %arrayidx.3) #7
  tail call void @drm_sched_resubmit_jobs(ptr noundef %arrayidx.4) #7
  tail call void @drm_sched_start(ptr noundef %arrayidx, i1 noundef zeroext true) #7
  tail call void @drm_sched_start(ptr noundef %arrayidx.1, i1 noundef zeroext true) #7
  tail call void @drm_sched_start(ptr noundef %arrayidx.2, i1 noundef zeroext true) #7
  tail call void @drm_sched_start(ptr noundef %arrayidx.3, i1 noundef zeroext true) #7
  tail call void @drm_sched_start(ptr noundef %arrayidx.4, i1 noundef zeroext true) #7
  tail call void @mutex_unlock(ptr noundef %reset_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_increase_karma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_resubmit_jobs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_start(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_job_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @v3d_render_job_run(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d1 = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %v3d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d1, align 4
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 3
  %2 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fence, align 8
  %error = getelementptr inbounds %struct.drm_sched_fence, ptr %3, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !69

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %render_job = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %render_job to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sched_job, ptr %render_job, align 4
  tail call void @v3d_invalidate_caches(ptr noundef %1) #7
  %call6 = tail call ptr @v3d_fence_create(ptr noundef %1, i32 noundef 1) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %irq_fence = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 5
  %7 = ptrtoint ptr %irq_fence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_fence, align 8
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then.i

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then.i:                                        ; preds = %if.end9
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end15_crit_edge, label %if.then10.i.i.i.i.i, !prof !69

if.end5.i.i.i.i.i.if.end15_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %if.end15

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %tobool.not.i51 = icmp eq ptr %call6, null
  br i1 %tobool.not.i51, label %if.end15.dma_fence_get.exit_crit_edge, label %if.then.i54

if.end15.dma_fence_get.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.then.i54:                                      ; preds = %if.end15
  %refcount.i52 = getelementptr inbounds %struct.dma_fence, ptr %call6, i32 0, i32 6
  %call.i.i.i.i.i.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i52, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i52, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i52, ptr %refcount.i52, i32 1, ptr elementtype(i32) %refcount.i52) #7, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i54.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !76

if.then.i54.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i54
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i55 = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i55, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i54.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i54.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i52, i32 noundef %.sink.i.i.i.i.i) #7
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end15.dma_fence_get.exit_crit_edge
  %12 = ptrtoint ptr %irq_fence to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %irq_fence, align 8
  %seqno = getelementptr inbounds %struct.v3d_fence, ptr %call6, i32 0, i32 2
  %13 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %seqno, align 8
  %start = getelementptr inbounds %struct.v3d_render_job, ptr %sched_job, i32 0, i32 1
  %15 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start, align 8
  %end = getelementptr inbounds %struct.v3d_render_job, ptr %sched_job, i32 0, i32 2
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end, align 4
  tail call fastcc void @trace_v3d_submit_cl(ptr noundef %1, i1 noundef zeroext true, i64 noundef %14, i32 noundef %16, i32 noundef %18)
  %perfmon.i = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 7
  %19 = ptrtoint ptr %perfmon.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %perfmon.i, align 8
  %active_perfmon.i = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 24
  %21 = ptrtoint ptr %active_perfmon.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active_perfmon.i, align 4
  %cmp.not.i = icmp eq ptr %20, %22
  br i1 %cmp.not.i, label %dma_fence_get.exit.if.end.i_crit_edge, label %if.then.i56

dma_fence_get.exit.if.end.i_crit_edge:            ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i56:                                      ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v3d_perfmon_stop(ptr noundef %1, ptr noundef %22, i1 noundef zeroext true) #7
  %23 = ptrtoint ptr %perfmon.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load ptr, ptr %perfmon.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i56, %dma_fence_get.exit.if.end.i_crit_edge
  %24 = phi ptr [ %.pr.i, %if.then.i56 ], [ %20, %dma_fence_get.exit.if.end.i_crit_edge ]
  %tobool.not.i57 = icmp eq ptr %24, null
  br i1 %tobool.not.i57, label %if.end.i.v3d_switch_perfmon.exit_crit_edge, label %land.lhs.true.i

if.end.i.v3d_switch_perfmon.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v3d_switch_perfmon.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %25 = ptrtoint ptr %active_perfmon.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %active_perfmon.i, align 4
  %cmp5.not.i = icmp eq ptr %26, %24
  br i1 %cmp5.not.i, label %land.lhs.true.i.v3d_switch_perfmon.exit_crit_edge, label %if.then6.i

land.lhs.true.i.v3d_switch_perfmon.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v3d_switch_perfmon.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v3d_perfmon_start(ptr noundef %1, ptr noundef nonnull %24) #7
  br label %v3d_switch_perfmon.exit

v3d_switch_perfmon.exit:                          ; preds = %if.then6.i, %land.lhs.true.i.v3d_switch_perfmon.exit_crit_edge, %if.end.i.v3d_switch_perfmon.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %core_regs = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %core_regs, align 8
  %add.ptr = getelementptr i8, ptr %31, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core_regs, align 8
  %add.ptr28 = getelementptr i8, ptr %36, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %34) #7, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %v3d_switch_perfmon.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %v3d_switch_perfmon.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3d_render_job_timedout(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timedout_ctca = getelementptr inbounds %struct.v3d_render_job, ptr %sched_job, i32 0, i32 3
  %timedout_ctra = getelementptr inbounds %struct.v3d_render_job, ptr %sched_job, i32 0, i32 4
  %v3d1.i = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %v3d1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d1.i, align 4
  %core_regs.i = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 276
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !82
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %6 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_regs.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %7, i32 284
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !82
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %10 = ptrtoint ptr %timedout_ctca to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timedout_ctca, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp.not.i = icmp eq i32 %11, %5
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %12 = ptrtoint ptr %timedout_ctra to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timedout_ctra, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp14.not.i = icmp eq i32 %13, %9
  br i1 %cmp14.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %14 = ptrtoint ptr %timedout_ctca to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %timedout_ctca, align 4
  %15 = ptrtoint ptr %timedout_ctra to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %timedout_ctra, align 4
  br label %v3d_cl_job_timedout.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @v3d_gpu_reset_for_timeout(ptr noundef %1, ptr noundef %sched_job) #7
  br label %v3d_cl_job_timedout.exit

v3d_cl_job_timedout.exit:                         ; preds = %if.end.i, %if.then.i
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @v3d_tfu_job_run(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d1 = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %v3d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d1, align 4
  %call2 = tail call ptr @v3d_fence_create(ptr noundef %1, i32 noundef 2) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tfu_job = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %tfu_job to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sched_job, ptr %tfu_job, align 8
  %irq_fence = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 5
  %3 = ptrtoint ptr %irq_fence to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_fence, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end8_crit_edge, label %if.then10.i.i.i.i.i, !prof !69

if.end5.i.i.i.i.i.if.end8_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %if.end8

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %tobool.not.i120 = icmp eq ptr %call2, null
  br i1 %tobool.not.i120, label %if.end8.dma_fence_get.exit_crit_edge, label %if.then.i123

if.end8.dma_fence_get.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.then.i123:                                     ; preds = %if.end8
  %refcount.i121 = getelementptr inbounds %struct.dma_fence, ptr %call2, i32 0, i32 6
  %call.i.i.i.i.i.i.i122 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i121, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i121, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i121, ptr %refcount.i121, i32 1, ptr elementtype(i32) %refcount.i121) #7, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i123.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !76

if.then.i123.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i123
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i124 = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i124, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i123.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i123.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i121, i32 noundef %.sink.i.i.i.i.i) #7
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end8.dma_fence_get.exit_crit_edge
  %8 = ptrtoint ptr %irq_fence to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %irq_fence, align 8
  %seqno = getelementptr inbounds %struct.v3d_fence, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %seqno, align 8
  tail call fastcc void @trace_v3d_submit_tfu(ptr noundef %1, i64 noundef %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %args = getelementptr inbounds %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1
  %iia = getelementptr inbounds %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %iia to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iia, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %hub_regs = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hub_regs, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %iis = getelementptr inbounds %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %iis to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iis, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hub_regs, align 4
  %add.ptr18 = getelementptr i8, ptr %20, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %18) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %ica = getelementptr inbounds %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %ica to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ica, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hub_regs, align 4
  %add.ptr24 = getelementptr i8, ptr %25, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %23) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %iua = getelementptr inbounds %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %iua to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iua, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hub_regs, align 4
  %add.ptr30 = getelementptr i8, ptr %30, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %28) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %ioa = getelementptr inbounds %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %ioa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ioa, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hub_regs, align 4
  %add.ptr36 = getelementptr i8, ptr %35, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %33) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %ios = getelementptr inbounds %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1, i32 6
  %36 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ios, align 8
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hub_regs, align 4
  %add.ptr42 = getelementptr i8, ptr %40, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %38) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %coef = getelementptr inbounds %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1, i32 7
  %41 = ptrtoint ptr %coef to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %coef, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hub_regs, align 4
  %add.ptr48 = getelementptr i8, ptr %45, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %43) #7, !srcloc !71
  %46 = ptrtoint ptr %coef to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %coef, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %tobool52.not = icmp sgt i32 %47, -1
  br i1 %tobool52.not, label %dma_fence_get.exit.do.body79_crit_edge, label %do.body54

dma_fence_get.exit.do.body79_crit_edge:           ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

do.body54:                                        ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %arrayidx59 = getelementptr %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1, i32 7, i32 1
  %48 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx59, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hub_regs, align 4
  %add.ptr61 = getelementptr i8, ptr %52, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %50) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %arrayidx67 = getelementptr %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1, i32 7, i32 2
  %53 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx67, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hub_regs, align 4
  %add.ptr69 = getelementptr i8, ptr %57, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %55) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %arrayidx75 = getelementptr %struct.v3d_tfu_job, ptr %sched_job, i32 0, i32 1, i32 7, i32 3
  %58 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx75, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hub_regs, align 4
  %add.ptr77 = getelementptr i8, ptr %62, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %60) #7, !srcloc !71
  br label %do.body79

do.body79:                                        ; preds = %do.body54, %dma_fence_get.exit.do.body79_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %63 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %args, align 8
  %or = or i32 %64, 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %or)
  %66 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hub_regs, align 4
  %add.ptr84 = getelementptr i8, ptr %67, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %65) #7, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %do.body79, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %do.body79 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3d_generic_job_timedout(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d, align 4
  tail call fastcc void @v3d_gpu_reset_for_timeout(ptr noundef %1, ptr noundef %sched_job)
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_v3d_submit_tfu(ptr noundef %dev, i64 noundef %seqno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_tfu, i32 0, i32 1), ptr blockaddress(@trace_v3d_submit_tfu, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !103
  %call42 = tail call i32 @__traceiter_v3d_submit_tfu(ptr noundef null, ptr noundef %dev, i64 noundef %seqno) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !104
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_tfu, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_tfu, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_v3d_submit_tfu.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_v3d_submit_tfu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 184, ptr noundef nonnull @.str.23) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v3d_submit_tfu(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @v3d_csd_job_run(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d1 = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %v3d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d1, align 4
  %csd_job = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %csd_job to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sched_job, ptr %csd_job, align 4
  tail call void @v3d_invalidate_caches(ptr noundef %1) #7
  %call2 = tail call ptr @v3d_fence_create(ptr noundef %1, i32 noundef 3) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_fence = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 5
  %3 = ptrtoint ptr %irq_fence to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_fence, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !73
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end8_crit_edge, label %if.then10.i.i.i.i.i, !prof !69

if.end5.i.i.i.i.i.if.end8_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %if.end8

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %tobool.not.i48 = icmp eq ptr %call2, null
  br i1 %tobool.not.i48, label %if.end8.dma_fence_get.exit_crit_edge, label %if.then.i51

if.end8.dma_fence_get.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.then.i51:                                      ; preds = %if.end8
  %refcount.i49 = getelementptr inbounds %struct.dma_fence, ptr %call2, i32 0, i32 6
  %call.i.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i49, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i49, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i49, ptr %refcount.i49, i32 1, ptr elementtype(i32) %refcount.i49) #7, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i51.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !76

if.then.i51.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i51
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i52 = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i52, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i51.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i51.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i49, i32 noundef %.sink.i.i.i.i.i) #7
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end8.dma_fence_get.exit_crit_edge
  %8 = ptrtoint ptr %irq_fence to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %irq_fence, align 8
  %seqno = getelementptr inbounds %struct.v3d_fence, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %seqno, align 8
  tail call fastcc void @trace_v3d_submit_csd(ptr noundef %1, i64 noundef %10)
  %perfmon.i = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 7
  %11 = ptrtoint ptr %perfmon.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %perfmon.i, align 8
  %active_perfmon.i = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %active_perfmon.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %active_perfmon.i, align 4
  %cmp.not.i = icmp eq ptr %12, %14
  br i1 %cmp.not.i, label %dma_fence_get.exit.if.end.i_crit_edge, label %if.then.i53

dma_fence_get.exit.if.end.i_crit_edge:            ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i53:                                      ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v3d_perfmon_stop(ptr noundef %1, ptr noundef %14, i1 noundef zeroext true) #7
  %15 = ptrtoint ptr %perfmon.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load ptr, ptr %perfmon.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i53, %dma_fence_get.exit.if.end.i_crit_edge
  %16 = phi ptr [ %.pr.i, %if.then.i53 ], [ %12, %dma_fence_get.exit.if.end.i_crit_edge ]
  %tobool.not.i54 = icmp eq ptr %16, null
  br i1 %tobool.not.i54, label %if.end.i.v3d_switch_perfmon.exit_crit_edge, label %land.lhs.true.i

if.end.i.v3d_switch_perfmon.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v3d_switch_perfmon.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %17 = ptrtoint ptr %active_perfmon.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %active_perfmon.i, align 4
  %cmp5.not.i = icmp eq ptr %18, %16
  br i1 %cmp5.not.i, label %land.lhs.true.i.v3d_switch_perfmon.exit_crit_edge, label %if.then6.i

land.lhs.true.i.v3d_switch_perfmon.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v3d_switch_perfmon.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v3d_perfmon_start(ptr noundef %1, ptr noundef nonnull %16) #7
  br label %v3d_switch_perfmon.exit

v3d_switch_perfmon.exit:                          ; preds = %if.then6.i, %land.lhs.true.i.v3d_switch_perfmon.exit_crit_edge, %if.end.i.v3d_switch_perfmon.exit_crit_edge
  %args = getelementptr inbounds %struct.v3d_csd_job, ptr %sched_job, i32 0, i32 2
  %core_regs = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %arrayidx = getelementptr %struct.v3d_csd_job, ptr %sched_job, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core_regs, align 8
  %add.ptr15 = getelementptr i8, ptr %23, i32 2312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %21) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %arrayidx.1 = getelementptr %struct.v3d_csd_job, ptr %sched_job, i32 0, i32 2, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core_regs, align 8
  %add.ptr15.1 = getelementptr i8, ptr %28, i32 2316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.1, i32 %26) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %arrayidx.2 = getelementptr %struct.v3d_csd_job, ptr %sched_job, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.2, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core_regs, align 8
  %add.ptr15.2 = getelementptr i8, ptr %33, i32 2320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.2, i32 %31) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %arrayidx.3 = getelementptr %struct.v3d_csd_job, ptr %sched_job, i32 0, i32 2, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.3, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core_regs, align 8
  %add.ptr15.3 = getelementptr i8, ptr %38, i32 2324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.3, i32 %36) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %arrayidx.4 = getelementptr %struct.v3d_csd_job, ptr %sched_job, i32 0, i32 2, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.4, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %core_regs, align 8
  %add.ptr15.4 = getelementptr i8, ptr %43, i32 2328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.4, i32 %41) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %arrayidx.5 = getelementptr %struct.v3d_csd_job, ptr %sched_job, i32 0, i32 2, i32 0, i32 6
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.5, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %core_regs, align 8
  %add.ptr15.5 = getelementptr i8, ptr %48, i32 2332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.5, i32 %46) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %args, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %core_regs, align 8
  %add.ptr24 = getelementptr i8, ptr %53, i32 2308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %51) #7, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %v3d_switch_perfmon.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %v3d_switch_perfmon.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3d_csd_job_timedout(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d1 = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %v3d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d1, align 4
  %core_regs = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 2352
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !82
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %timedout_batches = getelementptr inbounds %struct.v3d_csd_job, ptr %sched_job, i32 0, i32 1
  %6 = ptrtoint ptr %timedout_batches to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timedout_batches, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not = icmp eq i32 %7, %5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %timedout_batches to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %timedout_batches, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @v3d_gpu_reset_for_timeout(ptr noundef %1, ptr noundef %sched_job)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_v3d_submit_csd(ptr noundef %dev, i64 noundef %seqno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_csd, i32 0, i32 1), ptr blockaddress(@trace_v3d_submit_csd, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !108
  %call42 = tail call i32 @__traceiter_v3d_submit_csd(ptr noundef null, ptr noundef %dev, i64 noundef %seqno) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_csd, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_csd, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_v3d_submit_csd.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_v3d_submit_csd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 226, ptr noundef nonnull @.str.23) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v3d_submit_csd(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @v3d_cache_clean_job_run(ptr nocapture noundef readonly %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d1 = getelementptr inbounds %struct.v3d_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %v3d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d1, align 4
  tail call void @v3d_clean_caches(ptr noundef %1) #7
  ret ptr null
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_clean_caches(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !48, !50, !51, !53, !55, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 394, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 396, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @v3d_sched_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @v3d_sched_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 404, i32 15}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 406, i32 3}
!14 = !{ptr @v3d_sched_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @v3d_sched_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 416, i32 15}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 418, i32 3}
!20 = !{ptr @v3d_sched_init._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @v3d_sched_init._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 429, i32 16}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 431, i32 4}
!26 = !{ptr @v3d_sched_init._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @v3d_sched_init._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 441, i32 16}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 443, i32 4}
!32 = !{ptr @v3d_sched_init._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @v3d_sched_init._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @v3d_bin_sched_ops, !35, !"v3d_bin_sched_ops", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 352, i32 43}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/v3d/v3d_trace.h", i32 37, i32 1}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @v3d_render_sched_ops, !45, !"v3d_render_sched_ops", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 358, i32 43}
!46 = !{ptr @v3d_tfu_sched_ops, !47, !"v3d_tfu_sched_ops", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 364, i32 43}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/v3d/v3d_trace.h", i32 166, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = !{ptr @v3d_csd_sched_ops, !52, !"v3d_csd_sched_ops", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 370, i32 43}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/v3d/v3d_trace.h", i32 208, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = !{ptr @v3d_cache_clean_sched_ops, !57, !"v3d_cache_clean_sched_ops", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/v3d/v3d_sched.c", i32 376, i32 43}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i8 0, i8 2}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2157038251}
!71 = !{i64 6917559}
!72 = !{i64 2148537626}
!73 = !{i64 2148452090, i64 2148452122, i64 2148452151, i64 2148452185, i64 2148452216, i64 2148452239}
!74 = !{i64 2149573112}
!75 = !{i64 2148449625, i64 2148449657, i64 2148449686, i64 2148449720, i64 2148449751, i64 2148449774}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2157038745}
!78 = !{i64 2157039248}
!79 = !{i64 2157039913}
!80 = !{i64 2157040540}
!81 = !{i64 2157041049}
!82 = !{i64 6917977}
!83 = !{i64 2157050266}
!84 = !{i64 2157050941}
!85 = !{i64 2148261488, i64 2148261493, i64 2148261506, i64 2148261550, i64 2148261584, i64 2148261605}
!86 = !{i64 2156804563}
!87 = !{i64 2156804826}
!88 = !{i64 2149273684}
!89 = !{i64 2149274720}
!90 = !{i64 2157041646}
!91 = !{i64 2157042155}
!92 = !{i64 2157042665}
!93 = !{i64 2157043172}
!94 = !{i64 2157043679}
!95 = !{i64 2157044186}
!96 = !{i64 2157044693}
!97 = !{i64 2157045200}
!98 = !{i64 2157045715}
!99 = !{i64 2157046326}
!100 = !{i64 2157046853}
!101 = !{i64 2157047380}
!102 = !{i64 2157048043}
!103 = !{i64 2156910760}
!104 = !{i64 2156910971}
!105 = !{i64 2157048692}
!106 = !{i64 2157049243}
!107 = !{i64 2157051530}
!108 = !{i64 2156944227}
!109 = !{i64 2156944438}
