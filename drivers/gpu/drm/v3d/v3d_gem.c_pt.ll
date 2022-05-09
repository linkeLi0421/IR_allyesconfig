; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/v3d/v3d_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/v3d/v3d_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.85 = type { i32, ptr }
%struct.v3d_dev = type { %struct.drm_device, i32, i8, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, %struct.drm_mm, %struct.spinlock, %struct.work_struct, ptr, ptr, ptr, ptr, [5 x %struct.v3d_queue_state], %struct.spinlock, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.anon.87 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.v3d_queue_state = type { %struct.drm_gpu_scheduler, i64, i64 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.anon.87 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.drm_v3d_wait_bo = type { i32, i32, i64 }
%struct.v3d_submit_ext = type { i32, i32, i32, i64, i32, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_v3d_submit_cl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.v3d_render_job = type { %struct.v3d_job, i32, i32, i32, i32, %struct.list_head }
%struct.v3d_bin_job = type { %struct.v3d_job, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.drm_v3d_sem = type { i32, i32, i64, [2 x i64] }
%struct.drm_v3d_multi_sync = type { %struct.drm_v3d_extension, i64, i64, i32, i32, i32, i32 }
%struct.drm_v3d_extension = type { i64, i32, i32 }
%struct.v3d_submit_outsync = type { ptr }
%struct.v3d_file_priv = type { ptr, %struct.anon.90, [5 x %struct.drm_sched_entity] }
%struct.anon.90 = type { %struct.idr, %struct.mutex }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_v3d_submit_tfu = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, i32, i64 }
%struct.v3d_tfu_job = type { %struct.v3d_job, %struct.drm_v3d_submit_tfu }
%struct.drm_v3d_submit_csd = type { [7 x i32], [4 x i32], i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.v3d_csd_job = type { %struct.v3d_job, i32, %struct.drm_v3d_submit_csd }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* Resetting GPU for hang.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"*ERROR* V3D_ERR_STAT: 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/v3d/v3d_gem.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Timeout waiting for TMU write combiner flush\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout waiting for L2T clean\0A\00", [33 x i8] zeroinitializer }, align 32
@v3d_submit_cl_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016[drm] invalid flags: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"v3d_submit_cl_ioctl\00", [44 x i8] zeroinitializer }, align 32
@v3d_submit_cl_ioctl._entry_ptr = internal global ptr @v3d_submit_cl_ioctl._entry, section ".printk_index", align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get extensions.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid flags: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to look up GEM BO %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Attempting CSD submit on non-CSD hardware\0A\00", [53 x i8] zeroinitializer }, align 32
@v3d_submit_csd_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.12, ptr @.str.3, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"v3d_submit_csd_ioctl\00", [43 x i8] zeroinitializer }, align 32
@v3d_submit_csd_ioctl._entry_ptr = internal global ptr @v3d_submit_csd_ioctl._entry, section ".printk_index", align 4
@v3d_gem_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&v3d->mm_lock\00", [18 x i8] zeroinitializer }, align 32
@v3d_gem_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&v3d->job_lock\00", [17 x i8] zeroinitializer }, align 32
@v3d_gem_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&v3d->bo_lock\00", [18 x i8] zeroinitializer }, align 32
@v3d_gem_init.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&v3d->reset_lock\00", [47 x i8] zeroinitializer }, align 32
@v3d_gem_init.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&v3d->sched_lock\00", [47 x i8] zeroinitializer }, align 32
@v3d_gem_init.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&v3d->cache_clean_lock\00", [41 x i8] zeroinitializer }, align 32
@v3d_gem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1098, ptr @.str, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Failed to allocate page tables. Please ensure you have CMA enabled.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"v3d_gem_init\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@v3d_gem_init._entry_ptr = internal global ptr @v3d_gem_init._entry, section ".printk_index", align 4
@__tracepoint_v3d_reset_begin = external dso_local global %struct.tracepoint, align 4
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/v3d/v3d_trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_v3d_reset_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to wait for safe GCA shutdown\0A\00", [58 x i8] zeroinitializer }, align 32
@v3d_reset_by_bridge.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_v3d_reset_end = external dso_local global %struct.tracepoint, align 4
@trace_v3d_reset_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_v3d_cache_clean_begin = external dso_local global %struct.tracepoint, align 4
@trace_v3d_cache_clean_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_v3d_cache_clean_end = external dso_local global %struct.tracepoint, align 4
@trace_v3d_cache_clean_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_v3d_submit_cl_ioctl = external dso_local global %struct.tracepoint, align 4
@trace_v3d_submit_cl_ioctl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to copy submit extension\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown extension id: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to copy post dep handles\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot allocate memory for v3d job.\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to copy wait dep handle.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Rendering requires BOs\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate validated BO pointers\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to allocate incoming GEM handles\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to copy in GEM handles\0A\00", [33 x i8] zeroinitializer }, align 32
@__tracepoint_v3d_submit_tfu_ioctl = external dso_local global %struct.tracepoint, align 4
@trace_v3d_submit_tfu_ioctl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_v3d_submit_csd_ioctl = external dso_local global %struct.tracepoint, align 4
@trace_v3d_submit_csd_ioctl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 7]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 114, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 115, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 199, i32 6 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 201, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 211, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 740, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 747, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 884, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 922, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 987, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 992, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1079, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1080, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1081, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1082, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1083, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1084, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1097, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/v3d/v3d_trace.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 260, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 108, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 71, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 684, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 695, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 230, i32 6 }
@___asan_gen_.158 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 214, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 156, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 614, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 466, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 492, i32 6 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 307, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 315, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 322, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [33 x i8] c"../drivers/gpu/drm/v3d/v3d_gem.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 330, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @v3d_gem_init._entry, ptr @v3d_gem_init._entry_ptr, ptr @v3d_submit_cl_ioctl._entry, ptr @v3d_submit_cl_ioctl._entry_ptr, ptr @v3d_submit_csd_ioctl._entry, ptr @v3d_submit_csd_ioctl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @v3d_gem_init.__key, ptr @.str.13, ptr @v3d_gem_init.__key.14, ptr @.str.15, ptr @v3d_gem_init.__key.16, ptr @.str.17, ptr @v3d_gem_init.__key.18, ptr @.str.19, ptr @v3d_gem_init.__key.20, ptr @.str.21, ptr @v3d_gem_init.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_submit_cl_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_submit_csd_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_gem_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_gem_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_gem_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_gem_init.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_gem_init.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_gem_init.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_gem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_reset(ptr noundef %v3d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %v3d, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %core_regs = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 4
  %4 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core_regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 3872
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !117
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %7) #10
  tail call fastcc void @trace_v3d_reset_begin(ptr noundef %v3d)
  %ver.i = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 1
  %8 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %9)
  %cmp.i = icmp sgt i32 %9, 40
  br i1 %cmp.i, label %entry.v3d_idle_gca.exit_crit_edge, label %do.body.i

entry.v3d_idle_gca.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_idle_gca.exit

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @arm_heavy_mb() #10
  %gca_regs.i = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 6
  %10 = ptrtoint ptr %gca_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gca_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #10, !srcloc !120
  %call.i = tail call i64 @ktime_get_raw() #10
  %add.i = add i64 %call.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 70) #10
  %call634.i = tail call i64 @ktime_get_raw() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call634.i, i64 %add.i)
  %cmp3.i.i35.i = icmp sgt i64 %call634.i, %add.i
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %12 = ptrtoint ptr %gca_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gca_regs.i, align 8
  %add.ptr936.i = getelementptr i8, ptr %13, i32 180
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr936.i) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  %15 = and i32 %14, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %15)
  %cmp1237.i = icmp eq i32 %15, 50331648
  %brmerge38.i = select i1 %cmp1237.i, i1 true, i1 %cmp3.i.i35.i
  br i1 %brmerge38.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.cleanup.i_crit_edge

do.body.i.cleanup.i_crit_edge:                    ; preds = %do.body.i
  br label %cleanup.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %do.body.i.cleanup.i_crit_edge
  %wait__.039.i = phi i32 [ %spec.select.i, %cleanup.i.cleanup.i_crit_edge ], [ 10, %do.body.i.cleanup.i_crit_edge ]
  %mul.i = shl i32 %wait__.039.i, 1
  tail call void @usleep_range_state(i32 noundef %wait__.039.i, i32 noundef %mul.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__.039.i)
  %cmp17.i = icmp slt i32 %wait__.039.i, 1000
  %spec.select.i = select i1 %cmp17.i, i32 %mul.i, i32 %wait__.039.i
  %call6.i = tail call i64 @ktime_get_raw() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i, i64 %add.i)
  %cmp3.i.i.i = icmp sgt i64 %call6.i, %add.i
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %16 = ptrtoint ptr %gca_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gca_regs.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %17, i32 180
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  %19 = and i32 %18, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %19)
  %cmp12.i = icmp eq i32 %19, 50331648
  %brmerge.i = select i1 %cmp12.i, i1 true, i1 %cmp3.i.i.i
  br i1 %brmerge.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %cmp12.lcssa.i = phi i1 [ %cmp1237.i, %do.body.i.for.end.i_crit_edge ], [ %cmp12.i, %cleanup.i.for.end.i_crit_edge ]
  br i1 %cmp12.lcssa.i, label %for.end.i.v3d_idle_gca.exit_crit_edge, label %if.then22.i

for.end.i.v3d_idle_gca.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_idle_gca.exit

if.then22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #10
  br label %v3d_idle_gca.exit

v3d_idle_gca.exit:                                ; preds = %if.then22.i, %for.end.i.v3d_idle_gca.exit_crit_edge, %entry.v3d_idle_gca.exit_crit_edge
  %reset.i = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 8
  %20 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %v3d_idle_gca.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i15 = tail call i32 @reset_control_reset(ptr noundef nonnull %21) #10
  br label %if.end.i

if.else.i:                                        ; preds = %v3d_idle_gca.exit
  %bridge_regs.i.i = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 5
  %22 = ptrtoint ptr %bridge_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bridge_regs.i.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !117
  %25 = lshr i32 %24, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %trunc.i.i = trunc i32 %25 to i8
  %26 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i.i, label %land.rhs.i.i [
    i8 2, label %do.body.i.i
    i8 7, label %if.else.i.if.end47.i.i_crit_edge
  ]

if.else.i.if.end47.i.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i.i

do.body.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %bridge_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bridge_regs.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 16777216) #10, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %bridge_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bridge_regs.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 0) #10, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @arm_heavy_mb() #10
  %hub_regs.i.i = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 3
  %31 = ptrtoint ptr %hub_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hub_regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 251658240) #10, !srcloc !120
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b74.i.i = load i1, ptr @v3d_reset_by_bridge.__already_done, align 1
  br i1 %.b74.i.i, label %land.rhs.i.i.if.end47.i.i_crit_edge, label %if.then22.i.i, !prof !127

land.rhs.i.i.if.end47.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i.i

if.then22.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @v3d_reset_by_bridge.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 91, i32 noundef 9, ptr noundef null) #10
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then22.i.i, %land.rhs.i.i.if.end47.i.i_crit_edge, %if.else.i.if.end47.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %bridge_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bridge_regs.i.i, align 4
  %add.ptr59.i.i = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i.i, i32 16777216) #10, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %bridge_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bridge_regs.i.i, align 4
  %add.ptr64.i.i = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i.i, i32 0) #10, !srcloc !120
  br label %if.end.i

if.end.i:                                         ; preds = %if.end47.i.i, %do.body.i.i, %if.then.i
  %37 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %38)
  %cmp.i.i.i = icmp slt i32 %38, 40
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end.i.v3d_reset_v3d.exit_crit_edge

if.end.i.v3d_reset_v3d.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_reset_v3d.exit

do.body.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core_regs, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #10, !srcloc !120
  br label %v3d_reset_v3d.exit

v3d_reset_v3d.exit:                               ; preds = %do.body.i.i.i, %if.end.i.v3d_reset_v3d.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core_regs, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %42, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 0) #10, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %core_regs, align 4
  %add.ptr10.i.i.i = getelementptr i8, ptr %44, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i, i32 -1) #10, !srcloc !120
  %call4 = tail call i32 @v3d_mmu_set_page_table(ptr noundef %v3d) #10
  tail call void @v3d_irq_reset(ptr noundef %v3d) #10
  %active_perfmon = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 24
  %45 = ptrtoint ptr %active_perfmon to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %active_perfmon, align 4
  tail call void @v3d_perfmon_stop(ptr noundef %v3d, ptr noundef %46, i1 noundef zeroext false) #10
  tail call fastcc void @trace_v3d_reset_end(ptr noundef %v3d)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_v3d_reset_begin(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_reset_begin, i32 0, i32 1), ptr blockaddress(@trace_v3d_reset_begin, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  %call42 = tail call i32 @__traceiter_v3d_reset_begin(ptr noundef null, ptr noundef %dev) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !127

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_reset_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_reset_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_v3d_reset_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_v3d_reset_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 274, ptr noundef nonnull @.str.28) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
declare dso_local i32 @v3d_mmu_set_page_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_irq_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_perfmon_stop(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_v3d_reset_end(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_reset_end, i32 0, i32 1), ptr blockaddress(@trace_v3d_reset_end, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !138
  %call42 = tail call i32 @__traceiter_v3d_reset_end(ptr noundef null, ptr noundef %dev) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !127

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_reset_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_reset_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_v3d_reset_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_v3d_reset_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 290, ptr noundef nonnull @.str.28) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_clean_caches(ptr noundef %v3d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_v3d_cache_clean_begin(ptr noundef %v3d)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %core_regs = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 4
  %0 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 65536) #10, !srcloc !120
  %call = tail call i64 @ktime_get_raw() #10
  %add = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 200) #10
  %call7137 = tail call i64 @ktime_get_raw() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call7137, i64 %add)
  %cmp3.i.i138 = icmp sgt i64 %call7137, %add
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !141
  %2 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_regs, align 4
  %add.ptr11139 = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11139) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not140 = icmp eq i32 %5, 0
  %brmerge141 = select i1 %tobool.not140, i1 true, i1 %cmp3.i.i138
  br i1 %brmerge141, label %entry.for.end_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  br label %cleanup

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %wait__.0142 = phi i32 [ %spec.select, %cleanup.cleanup_crit_edge ], [ 10, %entry.cleanup_crit_edge ]
  %mul = shl i32 %wait__.0142, 1
  tail call void @usleep_range_state(i32 noundef %wait__.0142, i32 noundef %mul, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__.0142)
  %cmp = icmp slt i32 %wait__.0142, 1000
  %spec.select = select i1 %cmp, i32 %mul, i32 %wait__.0142
  %call7 = tail call i64 @ktime_get_raw() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %add)
  %cmp3.i.i = icmp sgt i64 %call7, %add
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !141
  %6 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_regs, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp3.i.i
  br i1 %brmerge, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool.not.lcssa = phi i1 [ %tobool.not140, %entry.for.end_crit_edge ], [ %tobool.not, %cleanup.for.end_crit_edge ]
  br i1 %tobool.not.lcssa, label %for.end.if.end22_crit_edge, label %if.then21

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end.if.end22_crit_edge
  %cache_clean_lock = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %cache_clean_lock, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core_regs, align 4
  %add.ptr57 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 83886080) #10, !srcloc !120
  %call59 = tail call i64 @ktime_get_raw() #10
  %add60 = add i64 %call59, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 210) #10
  %call71143 = tail call i64 @ktime_get_raw() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call71143, i64 %add60)
  %cmp3.i.i126144 = icmp sgt i64 %call71143, %add60
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %12 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core_regs, align 4
  %add.ptr78145 = getelementptr i8, ptr %13, i32 48
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78145) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool83.not146 = icmp eq i32 %15, 0
  %brmerge124147 = select i1 %tobool83.not146, i1 true, i1 %cmp3.i.i126144
  br i1 %brmerge124147, label %if.end22.for.end97_crit_edge, label %if.end22.cleanup94_crit_edge

if.end22.cleanup94_crit_edge:                     ; preds = %if.end22
  br label %cleanup94

if.end22.for.end97_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end97

cleanup94:                                        ; preds = %cleanup94.cleanup94_crit_edge, %if.end22.cleanup94_crit_edge
  %wait__61.0148 = phi i32 [ %spec.select122, %cleanup94.cleanup94_crit_edge ], [ 10, %if.end22.cleanup94_crit_edge ]
  %mul89 = shl i32 %wait__61.0148, 1
  tail call void @usleep_range_state(i32 noundef %wait__61.0148, i32 noundef %mul89, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__61.0148)
  %cmp90 = icmp slt i32 %wait__61.0148, 1000
  %spec.select122 = select i1 %cmp90, i32 %mul89, i32 %wait__61.0148
  %call71 = tail call i64 @ktime_get_raw() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call71, i64 %add60)
  %cmp3.i.i126 = icmp sgt i64 %call71, %add60
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %16 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core_regs, align 4
  %add.ptr78 = getelementptr i8, ptr %17, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool83.not = icmp eq i32 %19, 0
  %brmerge124 = select i1 %tobool83.not, i1 true, i1 %cmp3.i.i126
  br i1 %brmerge124, label %cleanup94.for.end97_crit_edge, label %cleanup94.cleanup94_crit_edge

cleanup94.cleanup94_crit_edge:                    ; preds = %cleanup94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

cleanup94.for.end97_crit_edge:                    ; preds = %cleanup94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end97

for.end97:                                        ; preds = %cleanup94.for.end97_crit_edge, %if.end22.for.end97_crit_edge
  %tobool83.not.lcssa = phi i1 [ %tobool83.not146, %if.end22.for.end97_crit_edge ], [ %tobool83.not, %cleanup94.for.end97_crit_edge ]
  br i1 %tobool83.not.lcssa, label %for.end97.if.end101_crit_edge, label %if.then100

for.end97.if.end101_crit_edge:                    ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then100:                                       ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #10
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %for.end97.if.end101_crit_edge
  tail call void @mutex_unlock(ptr noundef %cache_clean_lock) #10
  tail call fastcc void @trace_v3d_cache_clean_end(ptr noundef %v3d)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_v3d_cache_clean_begin(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_cache_clean_begin, i32 0, i32 1), ptr blockaddress(@trace_v3d_cache_clean_begin, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !146
  %call42 = tail call i32 @__traceiter_v3d_cache_clean_begin(ptr noundef null, ptr noundef %dev) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !147
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !127

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_cache_clean_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_cache_clean_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_v3d_cache_clean_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_v3d_cache_clean_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 242, ptr noundef nonnull @.str.28) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_v3d_cache_clean_end(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_cache_clean_end, i32 0, i32 1), ptr blockaddress(@trace_v3d_cache_clean_end, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !148
  %call42 = tail call i32 @__traceiter_v3d_cache_clean_end(ptr noundef null, ptr noundef %dev) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !149
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !127

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_cache_clean_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_cache_clean_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_v3d_cache_clean_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_v3d_cache_clean_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 258, ptr noundef nonnull @.str.28) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_invalidate_caches(ptr noundef %v3d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ver.i = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 1
  %0 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %1)
  %cmp.i = icmp slt i32 %1, 41
  br i1 %cmp.i, label %if.then.i, label %entry.v3d_invalidate_l2c.exit_crit_edge

entry.v3d_invalidate_l2c.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_invalidate_l2c.exit

if.then.i:                                        ; preds = %entry
  %gca_regs.i = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 6
  %2 = ptrtoint ptr %gca_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gca_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !117
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !151
  tail call void @arm_heavy_mb() #10
  %or.i = or i32 %5, 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %7 = ptrtoint ptr %gca_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gca_regs.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %6) #10, !srcloc !120
  %9 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %10)
  %cmp5.i = icmp slt i32 %10, 33
  br i1 %cmp5.i, label %v3d_flush_l3.exit, label %if.then.i.v3d_invalidate_l2c.exit_crit_edge

if.then.i.v3d_invalidate_l2c.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_invalidate_l2c.exit

v3d_flush_l3.exit:                                ; preds = %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void @arm_heavy_mb() #10
  %and.i = and i32 %5, -2
  %11 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %12 = ptrtoint ptr %gca_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gca_regs.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %11) #10, !srcloc !120
  %14 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.pr)
  %cmp.i5 = icmp sgt i32 %.pr, 32
  br i1 %cmp.i5, label %v3d_flush_l3.exit.v3d_invalidate_l2c.exit_crit_edge, label %do.body.i

v3d_flush_l3.exit.v3d_invalidate_l2c.exit_crit_edge: ; preds = %v3d_flush_l3.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_invalidate_l2c.exit

do.body.i:                                        ; preds = %v3d_flush_l3.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %core_regs.i = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 4
  %15 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core_regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 83886080) #10, !srcloc !120
  br label %v3d_invalidate_l2c.exit

v3d_invalidate_l2c.exit:                          ; preds = %do.body.i, %v3d_flush_l3.exit.v3d_invalidate_l2c.exit_crit_edge, %if.then.i.v3d_invalidate_l2c.exit_crit_edge, %entry.v3d_invalidate_l2c.exit_crit_edge
  %cache_clean_lock.i = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %cache_clean_lock.i, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !154
  tail call void @arm_heavy_mb() #10
  %core_regs.i7 = getelementptr inbounds %struct.v3d_dev, ptr %v3d, i32 0, i32 4
  %17 = ptrtoint ptr %core_regs.i7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core_regs.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 16777216) #10, !srcloc !120
  tail call void @mutex_unlock(ptr noundef %cache_clean_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %core_regs.i7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core_regs.i7, align 4
  %add.ptr.i10 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 252645135) #10, !srcloc !120
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_job_cleanup(ptr noundef %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @drm_sched_job_cleanup(ptr noundef nonnull %job) #10
  %refcount.i = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 1
  %free.i = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 8
  %0 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i.i, !prof !127

if.end5.i.i.i.i.i.return_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %return

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void %1(ptr noundef %refcount.i) #10
  br label %return

return:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_job_put(ptr noundef %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 1
  %free = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 8
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !127

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void %1(ptr noundef %refcount) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v3d_wait_bo_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #10
  %timeout_ns = getelementptr inbounds %struct.drm_v3d_wait_bo, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %timeout_ns, align 8
  %call.i = tail call i64 @nsecs_to_jiffies64(i64 noundef %1) #10
  %pad = getelementptr inbounds %struct.drm_v3d_wait_bo, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.i = add i64 %call.i, 1
  %4 = tail call i64 @llvm.umin.i64(i64 %add.i, i64 1073741822) #10
  %5 = trunc i64 %4 to i32
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 8
  %call2 = tail call i32 @drm_gem_dma_resv_wait(ptr noundef %file_priv, i32 noundef %7, i1 noundef zeroext true, i32 noundef %5) #10
  %call3 = tail call i64 @ktime_get() #10
  %sub = sub i64 %call3, %call
  %8 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %timeout_ns, align 8
  %10 = tail call i64 @llvm.usub.sat.i64(i64 %9, i64 %sub)
  %11 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %timeout_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %call2)
  %cmp12 = icmp eq i32 %call2, -62
  br i1 %cmp12, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %sub)
  %tobool.not.not = icmp ugt i64 %9, %sub
  %spec.select = select i1 %tobool.not.not, i32 -11, i32 -62
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dma_resv_wait(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v3d_submit_cl_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %se = alloca %struct.v3d_submit_ext, align 8
  %bin = alloca ptr, align 4
  %render = alloca ptr, align 4
  %clean_job = alloca ptr, align 4
  %acquire_ctx = alloca %struct.ww_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %se) #10
  %2 = call ptr @memset(ptr %se, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bin) #10
  %3 = ptrtoint ptr %bin to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bin, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %render) #10
  %4 = ptrtoint ptr %render to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %render, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clean_job) #10
  %5 = ptrtoint ptr %clean_job to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %clean_job, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %acquire_ctx) #10
  %6 = call ptr @memset(ptr %acquire_ctx, i32 255, i32 64)
  %rcl_start = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %rcl_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rcl_start, align 8
  %rcl_end = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %rcl_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rcl_end, align 4
  tail call fastcc void @trace_v3d_submit_cl_ioctl(ptr noundef %dev, i32 noundef %8, i32 noundef %10)
  %pad = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 14
  %11 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup110_crit_edge

entry.cleanup110_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup110

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 12
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %switch = icmp ult i32 %14, 4
  br i1 %switch, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %14) #13
  br label %cleanup110

if.end7:                                          ; preds = %if.end
  %and9 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end16_crit_edge, label %if.then11

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %if.end7
  %extensions = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 15
  %15 = ptrtoint ptr %extensions to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %extensions, align 8
  %call12 = call fastcc i32 @v3d_get_extensions(ptr noundef %file_priv, i64 noundef %16, ptr noundef nonnull %se)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end16_crit_edge, label %if.then14

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #10
  br label %cleanup110

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %in_sync_rcl = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 5
  %17 = ptrtoint ptr %in_sync_rcl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %in_sync_rcl, align 4
  %call17 = call fastcc i32 @v3d_job_init(ptr noundef %dev, ptr noundef %file_priv, ptr noundef nonnull %render, i32 noundef 184, ptr noundef nonnull @v3d_render_job_free, i32 noundef %18, ptr noundef nonnull %se, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.fail_crit_edge

if.end16.fail_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end20:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %rcl_start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rcl_start, align 8
  %21 = ptrtoint ptr %render to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %render, align 4
  %start = getelementptr inbounds %struct.v3d_render_job, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %start, align 8
  %24 = ptrtoint ptr %rcl_end to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rcl_end, align 4
  %end = getelementptr inbounds %struct.v3d_render_job, ptr %22, i32 0, i32 2
  %26 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %end, align 4
  %unref_list = getelementptr inbounds %struct.v3d_render_job, ptr %22, i32 0, i32 5
  %27 = ptrtoint ptr %unref_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %unref_list, ptr %unref_list, align 4
  %prev.i = getelementptr inbounds %struct.v3d_render_job, ptr %22, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %unref_list, ptr %prev.i, align 4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 8
  %bcl_end = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 1
  %31 = ptrtoint ptr %bcl_end to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bcl_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.not = icmp eq i32 %30, %32
  br i1 %cmp.not, label %if.end20.if.end36_crit_edge, label %if.then23

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then23:                                        ; preds = %if.end20
  %in_sync_bcl = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 4
  %33 = ptrtoint ptr %in_sync_bcl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %in_sync_bcl, align 8
  %call24 = call fastcc i32 @v3d_job_init(ptr noundef %dev, ptr noundef %file_priv, ptr noundef nonnull %bin, i32 noundef 192, ptr noundef nonnull @v3d_job_free, i32 noundef %34, ptr noundef nonnull %se, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then23.fail_crit_edge

if.then23.fail_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end27:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data, align 8
  %37 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bin, align 4
  %start29 = getelementptr inbounds %struct.v3d_bin_job, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %start29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %start29, align 8
  %40 = ptrtoint ptr %bcl_end to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bcl_end, align 4
  %end31 = getelementptr inbounds %struct.v3d_bin_job, ptr %38, i32 0, i32 2
  %42 = ptrtoint ptr %end31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %end31, align 4
  %qma = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 7
  %43 = ptrtoint ptr %qma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qma, align 4
  %qma32 = getelementptr inbounds %struct.v3d_bin_job, ptr %38, i32 0, i32 6
  %45 = ptrtoint ptr %qma32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %qma32, align 4
  %qms = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 8
  %46 = ptrtoint ptr %qms to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qms, align 8
  %qms33 = getelementptr inbounds %struct.v3d_bin_job, ptr %38, i32 0, i32 7
  %48 = ptrtoint ptr %qms33 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %qms33, align 8
  %qts = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 9
  %49 = ptrtoint ptr %qts to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qts, align 4
  %qts34 = getelementptr inbounds %struct.v3d_bin_job, ptr %38, i32 0, i32 8
  %51 = ptrtoint ptr %qts34 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %qts34, align 4
  %render35 = getelementptr inbounds %struct.v3d_bin_job, ptr %38, i32 0, i32 5
  %52 = ptrtoint ptr %render35 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %22, ptr %render35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end27, %if.end20.if.end36_crit_edge
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %and38 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end45_crit_edge, label %if.then40

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then40:                                        ; preds = %if.end36
  %call41 = call fastcc i32 @v3d_job_init(ptr noundef %dev, ptr noundef %file_priv, ptr noundef nonnull %clean_job, i32 noundef 160, ptr noundef nonnull @v3d_job_free, i32 noundef 0, ptr noundef null, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.if.end45_crit_edge, label %if.then40.fail_crit_edge

if.then40.fail_crit_edge:                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.end45:                                         ; preds = %if.then40.if.end45_crit_edge, %if.end36.if.end45_crit_edge
  %last_job.0.in = phi ptr [ %clean_job, %if.then40.if.end45_crit_edge ], [ %render, %if.end36.if.end45_crit_edge ]
  %55 = ptrtoint ptr %last_job.0.in to i32
  call void @__asan_load4_noabort(i32 %55)
  %last_job.0 = load ptr, ptr %last_job.0.in, align 4
  %bo_handles = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 10
  %56 = ptrtoint ptr %bo_handles to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %bo_handles, align 8
  %bo_handle_count = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 11
  %58 = ptrtoint ptr %bo_handle_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bo_handle_count, align 8
  %call46 = call fastcc i32 @v3d_lookup_bos(ptr noundef %file_priv, ptr noundef %last_job.0, i64 noundef %57, i32 noundef %59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.fail_crit_edge

if.end45.fail_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end49:                                         ; preds = %if.end45
  %call50 = call fastcc i32 @v3d_lock_bo_reservations(ptr noundef %last_job.0, ptr noundef nonnull %acquire_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.fail_crit_edge

if.end49.fail_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end53:                                         ; preds = %if.end49
  %perfmon_id = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 13
  %60 = ptrtoint ptr %perfmon_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %perfmon_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool54.not = icmp eq i32 %61, 0
  br i1 %tobool54.not, label %if.end53.if.end64_crit_edge, label %if.then55

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then55:                                        ; preds = %if.end53
  %call57 = call ptr @v3d_perfmon_find(ptr noundef %1, i32 noundef %61) #10
  %perfmon = getelementptr inbounds %struct.v3d_job, ptr %22, i32 0, i32 7
  %62 = ptrtoint ptr %perfmon to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call57, ptr %perfmon, align 8
  %tobool61.not = icmp eq ptr %call57, null
  br i1 %tobool61.not, label %if.then55.fail_crit_edge, label %if.then55.if.end64_crit_edge

if.then55.if.end64_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then55.fail_crit_edge:                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end64:                                         ; preds = %if.then55.if.end64_crit_edge, %if.end53.if.end64_crit_edge
  %sched_lock = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 27
  call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  %63 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bin, align 4
  %tobool65.not = icmp eq ptr %64, null
  br i1 %tobool65.not, label %if.end64.if.end82_crit_edge, label %if.then66

if.end64.if.end82_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then66:                                        ; preds = %if.end64
  %perfmon68 = getelementptr inbounds %struct.v3d_job, ptr %22, i32 0, i32 7
  %65 = ptrtoint ptr %perfmon68 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %perfmon68, align 8
  %perfmon70 = getelementptr inbounds %struct.v3d_job, ptr %64, i32 0, i32 7
  %67 = ptrtoint ptr %perfmon70 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %perfmon70, align 8
  call void @v3d_perfmon_get(ptr noundef %66) #10
  call fastcc void @v3d_push_job(ptr noundef nonnull %64)
  %done_fence = getelementptr inbounds %struct.v3d_job, ptr %64, i32 0, i32 6
  %68 = ptrtoint ptr %done_fence to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %done_fence, align 4
  %call77 = call fastcc ptr @dma_fence_get(ptr noundef %69)
  %call78 = call i32 @drm_sched_job_add_dependency(ptr noundef %22, ptr noundef %69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then66.if.end82_crit_edge, label %if.then66.fail_unreserve_crit_edge

if.then66.fail_unreserve_crit_edge:               ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_unreserve

if.then66.if.end82_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end82:                                         ; preds = %if.then66.if.end82_crit_edge, %if.end64.if.end82_crit_edge
  call fastcc void @v3d_push_job(ptr noundef %22)
  %70 = ptrtoint ptr %clean_job to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clean_job, align 4
  %tobool84.not = icmp eq ptr %71, null
  br i1 %tobool84.not, label %if.end82.if.end98_crit_edge, label %if.then85

if.end82.if.end98_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then85:                                        ; preds = %if.end82
  %done_fence87 = getelementptr inbounds %struct.v3d_job, ptr %22, i32 0, i32 6
  %72 = ptrtoint ptr %done_fence87 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %done_fence87, align 4
  %call88 = call fastcc ptr @dma_fence_get(ptr noundef %73)
  %call90 = call i32 @drm_sched_job_add_dependency(ptr noundef nonnull %71, ptr noundef %73) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %cleanup.thread, label %if.then85.fail_unreserve_crit_edge

if.then85.fail_unreserve_crit_edge:               ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_unreserve

cleanup.thread:                                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  %perfmon95 = getelementptr inbounds %struct.v3d_job, ptr %22, i32 0, i32 7
  %74 = ptrtoint ptr %perfmon95 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %perfmon95, align 8
  %perfmon96 = getelementptr inbounds %struct.v3d_job, ptr %71, i32 0, i32 7
  %76 = ptrtoint ptr %perfmon96 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %perfmon96, align 8
  call void @v3d_perfmon_get(ptr noundef %75) #10
  call fastcc void @v3d_push_job(ptr noundef nonnull %71)
  br label %if.end98

if.end98:                                         ; preds = %cleanup.thread, %if.end82.if.end98_crit_edge
  call void @mutex_unlock(ptr noundef %sched_lock) #10
  %out_sync = getelementptr inbounds %struct.drm_v3d_submit_cl, ptr %data, i32 0, i32 6
  %77 = ptrtoint ptr %out_sync to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %out_sync, align 8
  %done_fence100 = getelementptr inbounds %struct.v3d_job, ptr %last_job.0, i32 0, i32 6
  %79 = ptrtoint ptr %done_fence100 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %done_fence100, align 4
  call fastcc void @v3d_attach_fences_and_unlock_reservation(ptr noundef %file_priv, ptr noundef %last_job.0, ptr noundef nonnull %acquire_ctx, i32 noundef %78, ptr noundef nonnull %se, ptr noundef %80)
  br i1 %tobool65.not, label %if.end98.if.end104_crit_edge, label %if.then102

if.end98.if.end104_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  call void @v3d_job_put(ptr noundef nonnull %64)
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end98.if.end104_crit_edge
  call void @v3d_job_put(ptr noundef %22)
  br i1 %tobool84.not, label %if.end104.cleanup110_crit_edge, label %if.then107

if.end104.cleanup110_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup110

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  call void @v3d_job_put(ptr noundef nonnull %71)
  br label %cleanup110

fail_unreserve:                                   ; preds = %if.then85.fail_unreserve_crit_edge, %if.then66.fail_unreserve_crit_edge
  %ret.0 = phi i32 [ %call78, %if.then66.fail_unreserve_crit_edge ], [ %call90, %if.then85.fail_unreserve_crit_edge ]
  call void @mutex_unlock(ptr noundef %sched_lock) #10
  %bo = getelementptr inbounds %struct.v3d_job, ptr %last_job.0, i32 0, i32 3
  %81 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bo, align 8
  %bo_count = getelementptr inbounds %struct.v3d_job, ptr %last_job.0, i32 0, i32 4
  %83 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bo_count, align 4
  call void @drm_gem_unlock_reservations(ptr noundef %82, i32 noundef %84, ptr noundef nonnull %acquire_ctx) #10
  br label %fail

fail:                                             ; preds = %fail_unreserve, %if.then55.fail_crit_edge, %if.end49.fail_crit_edge, %if.end45.fail_crit_edge, %if.then40.fail_crit_edge, %if.then23.fail_crit_edge, %if.end16.fail_crit_edge
  %ret.1 = phi i32 [ %call17, %if.end16.fail_crit_edge ], [ %call24, %if.then23.fail_crit_edge ], [ %call41, %if.then40.fail_crit_edge ], [ %call46, %if.end45.fail_crit_edge ], [ %call50, %if.end49.fail_crit_edge ], [ %ret.0, %fail_unreserve ], [ -2, %if.then55.fail_crit_edge ]
  %85 = ptrtoint ptr %bin to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bin, align 4
  %tobool.not.i = icmp eq ptr %86, null
  br i1 %tobool.not.i, label %fail.v3d_job_cleanup.exit_crit_edge, label %if.end.i

fail.v3d_job_cleanup.exit_crit_edge:              ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit

if.end.i:                                         ; preds = %fail
  call void @drm_sched_job_cleanup(ptr noundef nonnull %86) #10
  %refcount.i.i = getelementptr inbounds %struct.v3d_job, ptr %86, i32 0, i32 1
  %free.i.i = getelementptr inbounds %struct.v3d_job, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %free.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %89 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.v3d_job_cleanup.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !127

if.end5.i.i.i.i.i.i.v3d_job_cleanup.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %v3d_job_cleanup.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  call void %88(ptr noundef %refcount.i.i) #10
  br label %v3d_job_cleanup.exit

v3d_job_cleanup.exit:                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.v3d_job_cleanup.exit_crit_edge, %fail.v3d_job_cleanup.exit_crit_edge
  %90 = ptrtoint ptr %render to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %render, align 4
  %tobool.not.i175 = icmp eq ptr %91, null
  br i1 %tobool.not.i175, label %v3d_job_cleanup.exit.v3d_job_cleanup.exit186_crit_edge, label %if.end.i181

v3d_job_cleanup.exit.v3d_job_cleanup.exit186_crit_edge: ; preds = %v3d_job_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit186

if.end.i181:                                      ; preds = %v3d_job_cleanup.exit
  call void @drm_sched_job_cleanup(ptr noundef nonnull %91) #10
  %refcount.i.i176 = getelementptr inbounds %struct.v3d_job, ptr %91, i32 0, i32 1
  %free.i.i177 = getelementptr inbounds %struct.v3d_job, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %free.i.i177 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %free.i.i177, align 4
  %call.i.i.i.i.i.i.i.i178 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i176, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  call void @llvm.prefetch.p0(ptr %refcount.i.i176, i32 1, i32 3, i32 1) #10
  %94 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i176, ptr %refcount.i.i176, i32 1, ptr elementtype(i32) %refcount.i.i176) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i.i179 = extractvalue { i32, i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i179)
  %cmp.i.i.i.i.i.i180 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i179, 1
  br i1 %cmp.i.i.i.i.i.i180, label %if.then.i.i.i185, label %if.end5.i.i.i.i.i.i183

if.end5.i.i.i.i.i.i183:                           ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i179)
  %.not.i.i.i.i.i.i182 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i179, 0
  br i1 %.not.i.i.i.i.i.i182, label %if.end5.i.i.i.i.i.i183.v3d_job_cleanup.exit186_crit_edge, label %if.then10.i.i.i.i.i.i184, !prof !127

if.end5.i.i.i.i.i.i183.v3d_job_cleanup.exit186_crit_edge: ; preds = %if.end5.i.i.i.i.i.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit186

if.then10.i.i.i.i.i.i184:                         ; preds = %if.end5.i.i.i.i.i.i183
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i176, i32 noundef 3) #10
  br label %v3d_job_cleanup.exit186

if.then.i.i.i185:                                 ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  call void %93(ptr noundef %refcount.i.i176) #10
  br label %v3d_job_cleanup.exit186

v3d_job_cleanup.exit186:                          ; preds = %if.then.i.i.i185, %if.then10.i.i.i.i.i.i184, %if.end5.i.i.i.i.i.i183.v3d_job_cleanup.exit186_crit_edge, %v3d_job_cleanup.exit.v3d_job_cleanup.exit186_crit_edge
  %95 = ptrtoint ptr %clean_job to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %clean_job, align 4
  %tobool.not.i187 = icmp eq ptr %96, null
  br i1 %tobool.not.i187, label %v3d_job_cleanup.exit186.v3d_job_cleanup.exit198_crit_edge, label %if.end.i193

v3d_job_cleanup.exit186.v3d_job_cleanup.exit198_crit_edge: ; preds = %v3d_job_cleanup.exit186
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit198

if.end.i193:                                      ; preds = %v3d_job_cleanup.exit186
  call void @drm_sched_job_cleanup(ptr noundef nonnull %96) #10
  %refcount.i.i188 = getelementptr inbounds %struct.v3d_job, ptr %96, i32 0, i32 1
  %free.i.i189 = getelementptr inbounds %struct.v3d_job, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %free.i.i189 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %free.i.i189, align 4
  %call.i.i.i.i.i.i.i.i190 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i188, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  call void @llvm.prefetch.p0(ptr %refcount.i.i188, i32 1, i32 3, i32 1) #10
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i188, ptr %refcount.i.i188, i32 1, ptr elementtype(i32) %refcount.i.i188) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i.i191 = extractvalue { i32, i32, i32 } %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i191)
  %cmp.i.i.i.i.i.i192 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i191, 1
  br i1 %cmp.i.i.i.i.i.i192, label %if.then.i.i.i197, label %if.end5.i.i.i.i.i.i195

if.end5.i.i.i.i.i.i195:                           ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i191)
  %.not.i.i.i.i.i.i194 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i191, 0
  br i1 %.not.i.i.i.i.i.i194, label %if.end5.i.i.i.i.i.i195.v3d_job_cleanup.exit198_crit_edge, label %if.then10.i.i.i.i.i.i196, !prof !127

if.end5.i.i.i.i.i.i195.v3d_job_cleanup.exit198_crit_edge: ; preds = %if.end5.i.i.i.i.i.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit198

if.then10.i.i.i.i.i.i196:                         ; preds = %if.end5.i.i.i.i.i.i195
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i188, i32 noundef 3) #10
  br label %v3d_job_cleanup.exit198

if.then.i.i.i197:                                 ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  call void %98(ptr noundef %refcount.i.i188) #10
  br label %v3d_job_cleanup.exit198

v3d_job_cleanup.exit198:                          ; preds = %if.then.i.i.i197, %if.then10.i.i.i.i.i.i196, %if.end5.i.i.i.i.i.i195.v3d_job_cleanup.exit198_crit_edge, %v3d_job_cleanup.exit186.v3d_job_cleanup.exit198_crit_edge
  call fastcc void @v3d_put_multisync_post_deps(ptr noundef nonnull %se)
  br label %cleanup110

cleanup110:                                       ; preds = %v3d_job_cleanup.exit198, %if.then107, %if.end104.cleanup110_crit_edge, %if.then14, %do.end, %entry.cleanup110_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.then14 ], [ %ret.1, %v3d_job_cleanup.exit198 ], [ -22, %entry.cleanup110_crit_edge ], [ 0, %if.then107 ], [ 0, %if.end104.cleanup110_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %acquire_ctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clean_job) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %render) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bin) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %se) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_v3d_submit_cl_ioctl(ptr noundef %dev, i32 noundef %ct1qba, i32 noundef %ct1qea) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_cl_ioctl, i32 0, i32 1), ptr blockaddress(@trace_v3d_submit_cl_ioctl, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !159
  %call42 = tail call i32 @__traceiter_v3d_submit_cl_ioctl(ptr noundef null, ptr noundef %dev, i32 noundef %ct1qba, i32 noundef %ct1qea) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !160
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !127

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_cl_ioctl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_cl_ioctl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_v3d_submit_cl_ioctl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_v3d_submit_cl_ioctl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 35, ptr noundef nonnull @.str.28) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v3d_get_extensions(ptr noundef %file_priv, i64 noundef %ext_handles, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  %out.i.i = alloca %struct.drm_v3d_sem, align 8
  %multisync.i = alloca %struct.drm_v3d_multi_sync, align 8
  %ext = alloca %struct.drm_v3d_extension, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = trunc i64 %ext_handles to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %tobool.not47 = icmp eq i32 %conv2, 0
  br i1 %tobool.not47, label %entry.cleanup16_crit_edge, label %while.body.lr.ph

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup16

while.body.lr.ph:                                 ; preds = %entry
  %0 = getelementptr inbounds %struct.drm_v3d_extension, ptr %ext, i32 0, i32 1
  %pad.i = getelementptr inbounds %struct.drm_v3d_multi_sync, ptr %multisync.i, i32 0, i32 6
  %out_sync_count.i = getelementptr inbounds %struct.drm_v3d_multi_sync, ptr %multisync.i, i32 0, i32 4
  %out_syncs.i = getelementptr inbounds %struct.drm_v3d_multi_sync, ptr %multisync.i, i32 0, i32 2
  %out_syncs.i.i = getelementptr inbounds %struct.v3d_submit_ext, ptr %data, i32 0, i32 5
  %out_sync_count.i.i = getelementptr inbounds %struct.v3d_submit_ext, ptr %data, i32 0, i32 4
  %in_sync_count.i = getelementptr inbounds %struct.drm_v3d_multi_sync, ptr %multisync.i, i32 0, i32 3
  %in_sync_count8.i = getelementptr inbounds %struct.v3d_submit_ext, ptr %data, i32 0, i32 2
  %in_syncs.i = getelementptr inbounds %struct.drm_v3d_multi_sync, ptr %multisync.i, i32 0, i32 1
  %in_syncs9.i = getelementptr inbounds %struct.v3d_submit_ext, ptr %data, i32 0, i32 3
  %wait_stage.i = getelementptr inbounds %struct.drm_v3d_multi_sync, ptr %multisync.i, i32 0, i32 5
  %wait_stage10.i = getelementptr inbounds %struct.v3d_submit_ext, ptr %data, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %user_ext.048.in = phi i32 [ %conv2, %while.body.lr.ph ], [ %conv15, %cleanup.while.body_crit_edge ]
  %user_ext.048 = inttoptr i32 %user_ext.048.in to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ext) #10
  %1 = call ptr @memset(ptr %ext, i32 255, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %while.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

while.body.if.then11.i.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %user_ext.048, i32 16, i32 -1226833920) #14, !srcloc !161
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ext, i32 noundef 16) #10
  %3 = call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !162
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ext, ptr noundef nonnull %user_ext.048, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !127

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %while.body.if.then11.i.i_crit_edge
  %res.0.i.i27 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %while.body.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i27
  %add.ptr.i.i = getelementptr i8, ptr %ext, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i27)
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.31) #10
  br label %cleanup.thread

if.end:                                           ; preds = %if.end.i.i
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cond = icmp eq i32 %8, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %multisync.i) #10
  %9 = call ptr @memset(ptr %multisync.i, i32 255, i32 48)
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #10
  %call.i.i.i22 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i22, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %user_ext.048, i32 48, i32 -1226833920) #14, !srcloc !161
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !127

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %multisync.i, i32 noundef 48) #10
  %11 = call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !162
  %and.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %multisync.i, ptr noundef nonnull %user_ext.048, i32 noundef 48) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !127

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.0.i.i21.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 48, %sw.bb.if.then11.i.i.i_crit_edge ], [ 48, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 48, %res.0.i.i21.i
  %add.ptr.i.i.i = getelementptr i8, ptr %multisync.i, i32 %sub.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i21.i)
  br label %v3d_get_multisync_submit_deps.exit.thread

if.end.i:                                         ; preds = %if.end.i.i.i
  %15 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.v3d_get_multisync_submit_deps.exit.thread_crit_edge

if.end.i.v3d_get_multisync_submit_deps.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_get_multisync_submit_deps.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %out_sync_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out_sync_count.i, align 4
  %19 = ptrtoint ptr %out_syncs.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %out_syncs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end3.i.cleanup_crit_edge, label %if.end.i.i23

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i23:                                     ; preds = %if.end3.i
  %21 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #10
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kvmalloc_array.exit.thread.i.i, label %kvmalloc_array.exit.i.i, !prof !165

kvmalloc_array.exit.thread.i.i:                   ; preds = %if.end.i.i23
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %out_syncs.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %out_syncs.i.i, align 4
  br label %v3d_get_multisync_submit_deps.exit.thread

kvmalloc_array.exit.i.i:                          ; preds = %if.end.i.i23
  %24 = extractvalue { i32, i1 } %21, 0
  %call.i.i51.i.i = call noalias ptr @kvmalloc_node(i32 noundef %24, i32 noundef 3264, i32 noundef -1) #15
  %25 = ptrtoint ptr %out_syncs.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i51.i.i, ptr %out_syncs.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %call.i.i51.i.i, null
  br i1 %tobool2.not.i.i, label %kvmalloc_array.exit.i.i.v3d_get_multisync_submit_deps.exit.thread_crit_edge, label %for.body.preheader.i.i

kvmalloc_array.exit.i.i.v3d_get_multisync_submit_deps.exit.thread_crit_edge: ; preds = %kvmalloc_array.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_get_multisync_submit_deps.exit.thread

for.body.preheader.i.i:                           ; preds = %kvmalloc_array.exit.i.i
  %conv6.i.i = trunc i64 %20 to i32
  %26 = inttoptr i32 %conv6.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %post_deps.069.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %26, %for.body.preheader.i.i ]
  %i.068.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i.i) #10
  %incdec.ptr.i.i = getelementptr %struct.drm_v3d_sem, ptr %post_deps.069.i.i, i32 1
  %27 = call ptr @memset(ptr %out.i.i, i32 255, i32 32)
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #10
  %call.i.i.i18.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i18.i, label %for.body.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.if.then11.i.i.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %post_deps.069.i.i, i32 32, i32 -1226833920) #14, !srcloc !161
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !127

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %out.i.i, i32 noundef 32) #10
  %29 = call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !srcloc !162
  %and.i.i.i.i.i.i24 = and i32 %31, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i24, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #10, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %out.i.i, ptr noundef %post_deps.069.i.i, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #10, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end12.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !127

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %for.body.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i58.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 32, %for.body.i.i.if.then11.i.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 32, %res.0.i.i58.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %out.i.i, i32 %sub.i.i.i.i
  %32 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i58.i.i)
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.36) #10
  br label %cleanup.i.i

if.end12.i.i:                                     ; preds = %if.end.i.i.i.i
  %33 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out.i.i, align 8
  %call13.i.i = call ptr @drm_syncobj_find(ptr noundef %file_priv, i32 noundef %34) #10
  %35 = ptrtoint ptr %out_syncs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %out_syncs.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.v3d_submit_outsync, ptr %36, i32 %i.068.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call13.i.i, ptr %arrayidx.i.i, align 4
  %38 = load ptr, ptr %out_syncs.i.i, align 4
  %arrayidx16.i.i = getelementptr %struct.v3d_submit_outsync, ptr %38, i32 %i.068.i.i
  %39 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx16.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %40, null
  br i1 %tobool18.not.i.i, label %if.end12.i.i.cleanup.i.i_crit_edge, label %for.inc.i.i

if.end12.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end12.i.i.cleanup.i.i_crit_edge, %if.then11.i.i.i.i
  %ret.1.i.i = phi i32 [ -14, %if.then11.i.i.i.i ], [ -22, %if.end12.i.i.cleanup.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i.i) #10
  %i.170.i.i = add i32 %i.068.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.170.i.i)
  %cmp2271.i.i = icmp sgt i32 %i.170.i.i, -1
  br i1 %cmp2271.i.i, label %cleanup.i.i.for.body24.i.i_crit_edge, label %cleanup.i.i.for.end30.i.i_crit_edge

cleanup.i.i.for.end30.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30.i.i

cleanup.i.i.for.body24.i.i_crit_edge:             ; preds = %cleanup.i.i
  br label %for.body24.i.i

for.inc.i.i:                                      ; preds = %if.end12.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i.i) #10
  %inc.i.i = add nuw i32 %i.068.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %18
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %out_sync_count.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %18, ptr %out_sync_count.i.i, align 8
  br label %cleanup

for.body24.i.i:                                   ; preds = %drm_syncobj_put.exit.i.i.for.body24.i.i_crit_edge, %cleanup.i.i.for.body24.i.i_crit_edge
  %i.172.i.i = phi i32 [ %i.1.i.i, %drm_syncobj_put.exit.i.i.for.body24.i.i_crit_edge ], [ %i.170.i.i, %cleanup.i.i.for.body24.i.i_crit_edge ]
  %42 = ptrtoint ptr %out_syncs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %out_syncs.i.i, align 4
  %arrayidx26.i.i = getelementptr %struct.v3d_submit_outsync, ptr %43, i32 %i.172.i.i
  %44 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx26.i.i, align 4
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %45, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  call void @llvm.prefetch.p0(ptr %45, i32 1, i32 3, i32 1) #10
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i52.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.drm_syncobj_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !127

if.end5.i.i.i.i.i.i.i.drm_syncobj_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_syncobj_put.exit.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %45, i32 noundef 3) #10
  br label %drm_syncobj_put.exit.i.i

if.then.i.i52.i.i:                                ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  call void @drm_syncobj_free(ptr noundef %45) #10
  br label %drm_syncobj_put.exit.i.i

drm_syncobj_put.exit.i.i:                         ; preds = %if.then.i.i52.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.drm_syncobj_put.exit.i.i_crit_edge
  %i.1.i.i = add i32 %i.172.i.i, -1
  %cmp22.i.i = icmp sgt i32 %i.1.i.i, -1
  br i1 %cmp22.i.i, label %drm_syncobj_put.exit.i.i.for.body24.i.i_crit_edge, label %drm_syncobj_put.exit.i.i.for.end30.i.i_crit_edge

drm_syncobj_put.exit.i.i.for.end30.i.i_crit_edge: ; preds = %drm_syncobj_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30.i.i

drm_syncobj_put.exit.i.i.for.body24.i.i_crit_edge: ; preds = %drm_syncobj_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24.i.i

for.end30.i.i:                                    ; preds = %drm_syncobj_put.exit.i.i.for.end30.i.i_crit_edge, %cleanup.i.i.for.end30.i.i_crit_edge
  %47 = ptrtoint ptr %out_syncs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %out_syncs.i.i, align 4
  call void @kvfree(ptr noundef %48) #10
  br label %v3d_get_multisync_submit_deps.exit.thread

v3d_get_multisync_submit_deps.exit.thread:        ; preds = %for.end30.i.i, %kvmalloc_array.exit.i.i.v3d_get_multisync_submit_deps.exit.thread_crit_edge, %kvmalloc_array.exit.thread.i.i, %if.end.i.v3d_get_multisync_submit_deps.exit.thread_crit_edge, %if.then11.i.i.i
  %retval.0.i.ph = phi i32 [ %ret.1.i.i, %for.end30.i.i ], [ -12, %kvmalloc_array.exit.thread.i.i ], [ -14, %if.then11.i.i.i ], [ -22, %if.end.i.v3d_get_multisync_submit_deps.exit.thread_crit_edge ], [ -12, %kvmalloc_array.exit.i.i.v3d_get_multisync_submit_deps.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %multisync.i) #10
  br label %cleanup.thread

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef %8) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.default, %v3d_get_multisync_submit_deps.exit.thread, %if.then11.i.i
  %retval.1.ph = phi i32 [ %retval.0.i.ph, %v3d_get_multisync_submit_deps.exit.thread ], [ -14, %if.then11.i.i ], [ -22, %sw.default ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ext) #10
  br label %cleanup16

cleanup:                                          ; preds = %for.end.i.i, %if.end3.i.cleanup_crit_edge
  %49 = ptrtoint ptr %in_sync_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %in_sync_count.i, align 8
  %51 = ptrtoint ptr %in_sync_count8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %in_sync_count8.i, align 8
  %52 = ptrtoint ptr %in_syncs.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %in_syncs.i, align 8
  %54 = ptrtoint ptr %in_syncs9.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %in_syncs9.i, align 8
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data, align 8
  %or.i = or i32 %56, 1
  store i32 %or.i, ptr %data, align 8
  %57 = ptrtoint ptr %wait_stage.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wait_stage.i, align 8
  %59 = ptrtoint ptr %wait_stage10.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %wait_stage10.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %multisync.i) #10
  %60 = ptrtoint ptr %ext to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %ext, align 8
  %conv15 = trunc i64 %61 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ext) #10
  %tobool.not = icmp eq i32 %conv15, 0
  br i1 %tobool.not, label %cleanup.cleanup16_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup16_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup.cleanup16_crit_edge, %cleanup.thread, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %entry.cleanup16_crit_edge ], [ 0, %cleanup.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v3d_job_init(ptr noundef %v3d, ptr noundef %file_priv, ptr nocapture noundef %container, i32 noundef %size, ptr noundef %free, i32 noundef %in_sync, ptr noundef readonly %se, i32 noundef %queue) unnamed_addr #0 align 64 {
entry:
  %in_fence.i81 = alloca ptr, align 4
  %in_fence.i = alloca ptr, align 4
  %in = alloca %struct.drm_v3d_sem, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %tobool.not = icmp eq ptr %se, null
  br i1 %tobool.not, label %entry.if.end7.i.i_crit_edge, label %land.rhs

entry.if.end7.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %se, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %land.rhs, %entry.if.end7.i.i_crit_edge
  %4 = phi i1 [ false, %entry.if.end7.i.i_crit_edge ], [ %tobool1, %land.rhs ]
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3520) #15
  %5 = ptrtoint ptr %container to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %container, align 4
  %tobool2.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #10
  br label %cleanup45

if.end:                                           ; preds = %if.end7.i.i
  %v3d3 = getelementptr inbounds %struct.v3d_job, ptr %call8.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %v3d3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %v3d, ptr %v3d3, align 4
  %free4 = getelementptr inbounds %struct.v3d_job, ptr %call8.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %free4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %free, ptr %free4, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %v3d, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.fail_crit_edge, label %if.end7

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.v3d_file_priv, ptr %1, i32 0, i32 2, i32 %queue
  %call8 = tail call i32 @drm_sched_job_init(ptr noundef nonnull %call8.i.i, ptr noundef %arrayidx, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.fail_job_crit_edge

if.end7.fail_job_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_job

if.end11:                                         ; preds = %if.end7
  br i1 %4, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %in_sync_count = getelementptr inbounds %struct.v3d_submit_ext, ptr %se, i32 0, i32 2
  %10 = ptrtoint ptr %in_sync_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_sync_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %if.then13.if.end40_crit_edge, label %land.lhs.true

if.then13.if.end40_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.lhs.true:                                    ; preds = %if.then13
  %wait_stage = getelementptr inbounds %struct.v3d_submit_ext, ptr %se, i32 0, i32 1
  %12 = ptrtoint ptr %wait_stage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wait_stage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %queue)
  %cmp15 = icmp eq i32 %13, %queue
  br i1 %cmp15, label %if.then16, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then16:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %in_sync_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_sync_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp21115.not = icmp eq i32 %15, 0
  br i1 %cmp21115.not, label %if.then16.if.end40_crit_edge, label %for.body.lr.ph

if.then16.if.end40_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

for.body.lr.ph:                                   ; preds = %if.then16
  %in_syncs = getelementptr inbounds %struct.v3d_submit_ext, ptr %se, i32 0, i32 3
  %16 = ptrtoint ptr %in_syncs to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %in_syncs, align 8
  %conv19 = trunc i64 %17 to i32
  %18 = inttoptr i32 %conv19 to ptr
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %inc = add nuw i32 %i.0116, 1
  %19 = ptrtoint ptr %in_sync_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %in_sync_count, align 8
  %cmp21 = icmp ult i32 %inc, %20
  br i1 %cmp21, label %for.cond.for.body_crit_edge, label %for.cond.if.end40_crit_edge

for.cond.if.end40_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %handle.0117 = phi ptr [ %18, %for.body.lr.ph ], [ %incdec.ptr, %for.cond.for.body_crit_edge ]
  %i.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #10
  %incdec.ptr = getelementptr %struct.drm_v3d_sem, ptr %handle.0117, i32 1
  %21 = call ptr @memset(ptr %in, i32 255, i32 32)
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %for.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.then11.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %handle.0117, i32 32, i32 -1226833920) #14, !srcloc !161
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %in, i32 noundef 32) #10
  %23 = call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !162
  %and.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %in, ptr noundef %handle.0117, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end26, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !127

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %for.body.if.then11.i.i_crit_edge
  %res.0.i.i98 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %for.body.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i98
  %add.ptr.i.i = getelementptr i8, ptr %in, i32 %sub.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i98)
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.38) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #10
  br label %fail_deps

if.end26:                                         ; preds = %if.end.i.i
  %27 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_fence.i) #10
  %29 = ptrtoint ptr %in_fence.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %in_fence.i, align 4
  %call.i80 = call i32 @drm_syncobj_find_fence(ptr noundef %file_priv, i32 noundef %28, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %in_fence.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i80)
  %cmp.i = icmp eq i32 %call.i80, -22
  br i1 %cmp.i, label %cleanup.thread104, label %cleanup

cleanup.thread104:                                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_fence.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #10
  br label %fail_deps

cleanup:                                          ; preds = %if.end26
  %30 = ptrtoint ptr %in_fence.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %in_fence.i, align 4
  %call2.i = call i32 @drm_sched_job_add_dependency(ptr noundef nonnull %call8.i.i, ptr noundef %31) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_fence.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool29.not = icmp eq i32 %call2.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #10
  br i1 %tobool29.not, label %for.cond, label %cleanup.fail_deps_crit_edge

cleanup.fail_deps_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_deps

if.else:                                          ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_fence.i81) #10
  %32 = ptrtoint ptr %in_fence.i81 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %in_fence.i81, align 4
  %call.i82 = call i32 @drm_syncobj_find_fence(ptr noundef %file_priv, i32 noundef %in_sync, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %in_fence.i81) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i82)
  %cmp.i83 = icmp eq i32 %call.i82, -22
  br i1 %cmp.i83, label %v3d_job_add_deps.exit87.thread, label %v3d_job_add_deps.exit87

v3d_job_add_deps.exit87.thread:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_fence.i81) #10
  br label %fail_deps

v3d_job_add_deps.exit87:                          ; preds = %if.else
  %33 = ptrtoint ptr %in_fence.i81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %in_fence.i81, align 4
  %call2.i84 = call i32 @drm_sched_job_add_dependency(ptr noundef nonnull %call8.i.i, ptr noundef %34) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_fence.i81) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i84)
  %tobool37.not = icmp eq i32 %call2.i84, 0
  br i1 %tobool37.not, label %v3d_job_add_deps.exit87.if.end40_crit_edge, label %v3d_job_add_deps.exit87.fail_deps_crit_edge

v3d_job_add_deps.exit87.fail_deps_crit_edge:      ; preds = %v3d_job_add_deps.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_deps

v3d_job_add_deps.exit87.if.end40_crit_edge:       ; preds = %v3d_job_add_deps.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end40:                                         ; preds = %v3d_job_add_deps.exit87.if.end40_crit_edge, %for.cond.if.end40_crit_edge, %if.then16.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %if.then13.if.end40_crit_edge
  %refcount = getelementptr inbounds %struct.v3d_job, ptr %call8.i.i, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %35 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %refcount, align 128
  br label %cleanup45

fail_deps:                                        ; preds = %v3d_job_add_deps.exit87.fail_deps_crit_edge, %v3d_job_add_deps.exit87.thread, %cleanup.fail_deps_crit_edge, %cleanup.thread104, %if.then11.i.i
  %ret.3 = phi i32 [ %call2.i84, %v3d_job_add_deps.exit87.fail_deps_crit_edge ], [ -22, %v3d_job_add_deps.exit87.thread ], [ -22, %cleanup.thread104 ], [ -14, %if.then11.i.i ], [ %call2.i, %cleanup.fail_deps_crit_edge ]
  call void @drm_sched_job_cleanup(ptr noundef nonnull %call8.i.i) #10
  br label %fail_job

fail_job:                                         ; preds = %fail_deps, %if.end7.fail_job_crit_edge
  %ret.4 = phi i32 [ %call8, %if.end7.fail_job_crit_edge ], [ %ret.3, %fail_deps ]
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %call.i88 = call i32 @__pm_runtime_suspend(ptr noundef %37, i32 noundef 13) #10
  br label %fail

fail:                                             ; preds = %fail_job, %if.end.fail_crit_edge
  %ret.5 = phi i32 [ %call.i, %if.end.fail_crit_edge ], [ %ret.4, %fail_job ]
  %38 = ptrtoint ptr %container to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %container, align 4
  call void @kfree(ptr noundef %39) #10
  %40 = ptrtoint ptr %container to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %container, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %fail, %if.end40, %if.then
  %retval.0 = phi i32 [ %ret.5, %fail ], [ 0, %if.end40 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v3d_render_job_free(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %unref_list = getelementptr i8, ptr %ref, i32 48
  %0 = ptrtoint ptr %unref_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unref_list, align 8
  %cmp.not22 = icmp eq ptr %1, %unref_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %drm_gem_object_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in23 = phi ptr [ %.pn, %drm_gem_object_put.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %bo.0 = getelementptr i8, ptr %.pn.in23, i32 -688
  %2 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in23, align 8
  %tobool.not.i = icmp eq ptr %bo.0, null
  br i1 %tobool.not.i, label %for.body.drm_gem_object_put.exit_crit_edge, label %if.then.i

for.body.drm_gem_object_put.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bo.0, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr nonnull %bo.0, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %bo.0, ptr nonnull %bo.0, i32 1, ptr nonnull elementtype(i32) %bo.0) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !127

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %bo.0, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @drm_gem_object_free(ptr noundef nonnull %bo.0) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %for.body.drm_gem_object_put.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %unref_list
  br i1 %cmp.not, label %drm_gem_object_put.exit.for.end_crit_edge, label %drm_gem_object_put.exit.for.body_crit_edge

drm_gem_object_put.exit.for.body_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

drm_gem_object_put.exit.for.end_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %drm_gem_object_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @v3d_job_free(ptr noundef %ref)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v3d_job_free(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bo_count = getelementptr i8, ptr %ref, i32 12
  %0 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bo_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp39.not = icmp eq i32 %1, 0
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bo = getelementptr i8, ptr %ref, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.040
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %for.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !127

if.end5.i.i.i.i.i.i.for.inc_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %for.inc

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.040, 1
  %7 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bo_count, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %bo3 = getelementptr i8, ptr %ref, i32 8
  %9 = ptrtoint ptr %bo3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bo3, align 8
  tail call void @kvfree(ptr noundef %10) #10
  %irq_fence = getelementptr i8, ptr %ref, i32 16
  %11 = ptrtoint ptr %irq_fence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_fence, align 8
  %tobool.not.i25 = icmp eq ptr %12, null
  br i1 %tobool.not.i25, label %for.end.dma_fence_put.exit_crit_edge, label %if.then.i26

for.end.dma_fence_put.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i26:                                      ; preds = %for.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !127

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %for.end.dma_fence_put.exit_crit_edge
  %done_fence = getelementptr i8, ptr %ref, i32 20
  %14 = ptrtoint ptr %done_fence to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %done_fence, align 4
  %tobool.not.i27 = icmp eq ptr %15, null
  br i1 %tobool.not.i27, label %dma_fence_put.exit.dma_fence_put.exit37_crit_edge, label %if.then.i32

dma_fence_put.exit.dma_fence_put.exit37_crit_edge: ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit37

if.then.i32:                                      ; preds = %dma_fence_put.exit
  %refcount.i28 = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 6
  %call.i.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i28, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %refcount.i28, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i28, ptr %refcount.i28, i32 1, ptr elementtype(i32) %refcount.i28) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i30)
  %cmp.i.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i30, 1
  br i1 %cmp.i.i.i.i.i31, label %if.then.i.i36, label %if.end5.i.i.i.i.i34

if.end5.i.i.i.i.i34:                              ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i30)
  %.not.i.i.i.i.i33 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i30, 0
  br i1 %.not.i.i.i.i.i33, label %if.end5.i.i.i.i.i34.dma_fence_put.exit37_crit_edge, label %if.then10.i.i.i.i.i35, !prof !127

if.end5.i.i.i.i.i34.dma_fence_put.exit37_crit_edge: ; preds = %if.end5.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit37

if.then10.i.i.i.i.i35:                            ; preds = %if.end5.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i28, i32 noundef 3) #10
  br label %dma_fence_put.exit37

if.then.i.i36:                                    ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @dma_fence_release(ptr noundef %refcount.i28) #10
  br label %dma_fence_put.exit37

dma_fence_put.exit37:                             ; preds = %if.then.i.i36, %if.then10.i.i.i.i.i35, %if.end5.i.i.i.i.i34.dma_fence_put.exit37_crit_edge, %dma_fence_put.exit.dma_fence_put.exit37_crit_edge
  %v3d = getelementptr i8, ptr %ref, i32 4
  %17 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %v3d, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %v3d, align 4
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev6, align 8
  %call.i38 = tail call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #10
  %perfmon = getelementptr i8, ptr %ref, i32 24
  %26 = ptrtoint ptr %perfmon to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %perfmon, align 8
  %tobool7.not = icmp eq ptr %27, null
  br i1 %tobool7.not, label %dma_fence_put.exit37.if.end10_crit_edge, label %if.then8

dma_fence_put.exit37.if.end10_crit_edge:          ; preds = %dma_fence_put.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %dma_fence_put.exit37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @v3d_perfmon_put(ptr noundef nonnull %27) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %dma_fence_put.exit37.if.end10_crit_edge
  %add.ptr = getelementptr i8, ptr %ref, i32 -128
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v3d_lookup_bos(ptr noundef %file_priv, ptr nocapture noundef %job, i64 noundef %bo_handles, i32 noundef %bo_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bo_count1 = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 4
  %0 = ptrtoint ptr %bo_count1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %bo_count, ptr %bo_count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bo_count)
  %tobool.not = icmp eq i32 %bo_count, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.39) #10
  br label %cleanup30

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %bo_count, i32 4) #10
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !165

kvmalloc_array.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bo8 = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 3
  %3 = ptrtoint ptr %bo8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bo8, align 8
  br label %if.then6

kvmalloc_array.exit:                              ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call.i.i2 = tail call noalias ptr @kvmalloc_node(i32 noundef %4, i32 noundef 3520, i32 noundef -1) #15
  %bo = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 3
  %5 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i2, ptr %bo, align 8
  %tobool5.not = icmp eq ptr %call.i.i2, null
  br i1 %tobool5.not, label %kvmalloc_array.exit.if.then6_crit_edge, label %if.end7

kvmalloc_array.exit.if.then6_crit_edge:           ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %kvmalloc_array.exit.if.then6_crit_edge, %kvmalloc_array.exit.thread
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.40) #10
  br label %cleanup30

if.end7:                                          ; preds = %kvmalloc_array.exit
  %6 = ptrtoint ptr %bo_count1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bo_count1, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #10
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end7.if.then11_crit_edge, label %kvmalloc_array.exit6, !prof !165

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

kvmalloc_array.exit6:                             ; preds = %if.end7
  %10 = extractvalue { i32, i1 } %8, 0
  %call.i.i3 = tail call noalias ptr @kvmalloc_node(i32 noundef %10, i32 noundef 3264, i32 noundef -1) #15
  %tobool10.not = icmp eq ptr %call.i.i3, null
  br i1 %tobool10.not, label %kvmalloc_array.exit6.if.then11_crit_edge, label %if.end12

kvmalloc_array.exit6.if.then11_crit_edge:         ; preds = %kvmalloc_array.exit6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %kvmalloc_array.exit6.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.41) #10
  br label %fail

if.end12:                                         ; preds = %kvmalloc_array.exit6
  %conv = trunc i64 %bo_handles to i32
  %11 = inttoptr i32 %conv to ptr
  %12 = ptrtoint ptr %bo_count1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bo_count1, align 4
  %mul = shl i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end12
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then16_crit_edge, label %if.then27.i.i, !prof !127

land.rhs16.i.i.if.then16_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.then16

if.then.i.i.i:                                    ; preds = %if.end12
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i3, i32 noundef %mul, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 %mul, i32 -1226833920) #14, !srcloc !161
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i3, i32 noundef %mul) #10
  %15 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !162
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i3, ptr noundef %11, i32 noundef %mul) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end17, label %if.then11.i.i, !prof !127

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i3, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then16

if.then16:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then16_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.42) #10
  br label %fail

if.end17:                                         ; preds = %if.end.i.i
  %table_lock = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %table_lock) #10
  %19 = ptrtoint ptr %bo_count1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bo_count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp25.not = icmp eq i32 %20, 0
  br i1 %cmp25.not, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %object_idr = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call.i.i3, i32 %i.026
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %call21 = tail call ptr @idr_find(ptr noundef %object_idr, i32 noundef %22) #10
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %for.body
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call21, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %call21, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call21, ptr nonnull %call21, i32 1, ptr nonnull elementtype(i32) %call21) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end26.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !165

if.end26.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end26
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.inc_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !127

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end26.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end26.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call21, i32 noundef %.sink.i.i.i.i.i) #10
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.le = getelementptr i32, ptr %call.i.i3, i32 %i.026
  %25 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.le, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.026, i32 noundef %26) #10
  tail call void @_raw_spin_unlock(ptr noundef %table_lock) #10
  br label %fail

for.inc:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.inc_crit_edge
  %27 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bo, align 8
  %arrayidx28 = getelementptr ptr, ptr %28, i32 %i.026
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call21, ptr %arrayidx28, align 4
  %inc = add nuw i32 %i.026, 1
  %30 = ptrtoint ptr %bo_count1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bo_count1, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end17.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %table_lock) #10
  br label %fail

fail:                                             ; preds = %for.end, %cleanup, %if.then16, %if.then11
  %retval.0.i513 = phi ptr [ %call.i.i3, %if.then16 ], [ %call.i.i3, %cleanup ], [ %call.i.i3, %for.end ], [ null, %if.then11 ]
  %ret.2 = phi i32 [ -14, %if.then16 ], [ -2, %cleanup ], [ 0, %for.end ], [ -12, %if.then11 ]
  tail call void @kvfree(ptr noundef %retval.0.i513) #10
  br label %cleanup30

cleanup30:                                        ; preds = %fail, %if.then6, %if.then
  %retval.0 = phi i32 [ %ret.2, %fail ], [ -12, %if.then6 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v3d_lock_bo_reservations(ptr noundef %job, ptr noundef %acquire_ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bo = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 3
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 8
  %bo_count = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 4
  %2 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bo_count, align 4
  %call = tail call i32 @drm_gem_lock_reservations(ptr noundef %1, i32 noundef %3, ptr noundef %acquire_ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bo_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22.not = icmp eq i32 %5, 0
  br i1 %cmp22.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.023, 1
  %6 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bo_count, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bo, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.023
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @drm_sched_job_add_implicit_dependencies(ptr noundef %job, ptr noundef %11, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bo, align 8
  %14 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bo_count, align 4
  tail call void @drm_gem_unlock_reservations(ptr noundef %13, i32 noundef %15, ptr noundef %acquire_ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v3d_perfmon_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_perfmon_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @v3d_push_job(ptr noundef %job) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_job_arm(ptr noundef %job) #10
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %0 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %finished, null
  br i1 %tobool.not.i, label %entry.dma_fence_get.exit_crit_edge, label %if.then.i

entry.dma_fence_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 1, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !165

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !127

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %entry.dma_fence_get.exit_crit_edge
  %done_fence = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 6
  %4 = ptrtoint ptr %done_fence to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %finished, ptr %done_fence, align 4
  %refcount = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %dma_fence_get.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !165

dma_fence_get.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %dma_fence_get.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !127

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %dma_fence_get.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %dma_fence_get.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @drm_sched_entity_push_job(ptr noundef %job) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_dependency(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dma_fence_get(ptr noundef returned %fence) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !165

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !127

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %fence
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @v3d_attach_fences_and_unlock_reservation(ptr noundef %file_priv, ptr nocapture noundef readonly %job, ptr noundef %acquire_ctx, i32 noundef %out_sync, ptr noundef readonly %se, ptr noundef %done_fence) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %se, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  %bo_count = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 4
  %3 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bo_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp53.not = icmp eq i32 %4, 0
  br i1 %cmp53.not, label %land.end.for.end_crit_edge, label %for.body.lr.ph

land.end.for.end_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %land.end
  %bo = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 3
  %done_fence2 = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bo, align 8
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.054
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resv, align 8
  %11 = ptrtoint ptr %done_fence2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %done_fence2, align 4
  tail call void @dma_resv_add_excl_fence(ptr noundef %10, ptr noundef %12) #10
  %inc = add nuw i32 %i.054, 1
  %13 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bo_count, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.end.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %land.end.for.end_crit_edge ], [ %14, %for.body.for.end_crit_edge ]
  %bo3 = getelementptr inbounds %struct.v3d_job, ptr %job, i32 0, i32 3
  %15 = ptrtoint ptr %bo3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo3, align 8
  tail call void @drm_gem_unlock_reservations(ptr noundef %16, i32 noundef %.lcssa, ptr noundef %acquire_ctx) #10
  br i1 %2, label %if.end8, label %if.then

if.then:                                          ; preds = %for.end
  %call = tail call ptr @drm_syncobj_find(ptr noundef %file_priv, i32 noundef %out_sync) #10
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.then7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.then
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %call, ptr noundef %done_fence) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !127

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @drm_syncobj_free(ptr noundef nonnull %call) #10
  br label %cleanup

if.end8:                                          ; preds = %for.end
  %out_sync_count = getelementptr inbounds %struct.v3d_submit_ext, ptr %se, i32 0, i32 4
  %18 = ptrtoint ptr %out_sync_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out_sync_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not = icmp eq i32 %19, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %for.cond11.preheader

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond11.preheader:                             ; preds = %if.end8
  %20 = ptrtoint ptr %out_sync_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out_sync_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1355.not = icmp eq i32 %21, 0
  br i1 %cmp1355.not, label %for.cond11.preheader.for.end21_crit_edge, label %for.body14.lr.ph

for.cond11.preheader.for.end21_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.body14.lr.ph:                                 ; preds = %for.cond11.preheader
  %out_syncs = getelementptr inbounds %struct.v3d_submit_ext, ptr %se, i32 0, i32 5
  br label %for.body14

for.body14:                                       ; preds = %drm_syncobj_put.exit52.for.body14_crit_edge, %for.body14.lr.ph
  %i.156 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc20, %drm_syncobj_put.exit52.for.body14_crit_edge ]
  %22 = ptrtoint ptr %out_syncs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out_syncs, align 4
  %arrayidx15 = getelementptr %struct.v3d_submit_outsync, ptr %23, i32 %i.156
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx15, align 4
  tail call void @drm_syncobj_replace_fence(ptr noundef %25, ptr noundef %done_fence) #10
  %26 = ptrtoint ptr %out_syncs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out_syncs, align 4
  %arrayidx17 = getelementptr %struct.v3d_submit_outsync, ptr %27, i32 %i.156
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx17, align 4
  %call.i.i.i.i.i.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %29, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %29, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i46 = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i46)
  %cmp.i.i.i.i.i47 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i46, 1
  br i1 %cmp.i.i.i.i.i47, label %if.then.i.i51, label %if.end5.i.i.i.i.i49

if.end5.i.i.i.i.i49:                              ; preds = %for.body14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i46)
  %.not.i.i.i.i.i48 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i46, 0
  br i1 %.not.i.i.i.i.i48, label %if.end5.i.i.i.i.i49.drm_syncobj_put.exit52_crit_edge, label %if.then10.i.i.i.i.i50, !prof !127

if.end5.i.i.i.i.i49.drm_syncobj_put.exit52_crit_edge: ; preds = %if.end5.i.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_syncobj_put.exit52

if.then10.i.i.i.i.i50:                            ; preds = %if.end5.i.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #10
  br label %drm_syncobj_put.exit52

if.then.i.i51:                                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @drm_syncobj_free(ptr noundef %29) #10
  br label %drm_syncobj_put.exit52

drm_syncobj_put.exit52:                           ; preds = %if.then.i.i51, %if.then10.i.i.i.i.i50, %if.end5.i.i.i.i.i49.drm_syncobj_put.exit52_crit_edge
  %inc20 = add nuw i32 %i.156, 1
  %31 = ptrtoint ptr %out_sync_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out_sync_count, align 8
  %cmp13 = icmp ult i32 %inc20, %32
  br i1 %cmp13, label %drm_syncobj_put.exit52.for.body14_crit_edge, label %drm_syncobj_put.exit52.for.end21_crit_edge

drm_syncobj_put.exit52.for.end21_crit_edge:       ; preds = %drm_syncobj_put.exit52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

drm_syncobj_put.exit52.for.body14_crit_edge:      ; preds = %drm_syncobj_put.exit52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.end21:                                        ; preds = %drm_syncobj_put.exit52.for.end21_crit_edge, %for.cond11.preheader.for.end21_crit_edge
  %out_syncs22 = getelementptr inbounds %struct.v3d_submit_ext, ptr %se, i32 0, i32 5
  %33 = ptrtoint ptr %out_syncs22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %out_syncs22, align 4
  tail call void @kvfree(ptr noundef %34) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end21, %if.end8.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_unlock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @v3d_put_multisync_post_deps(ptr noundef readonly %se) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %se, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %out_sync_count = getelementptr inbounds %struct.v3d_submit_ext, ptr %se, i32 0, i32 4
  %0 = ptrtoint ptr %out_sync_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_sync_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %for.cond.preheader

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %land.lhs.true
  %2 = ptrtoint ptr %out_sync_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_sync_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %out_syncs = getelementptr inbounds %struct.v3d_submit_ext, ptr %se, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %drm_syncobj_put.exit.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %drm_syncobj_put.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %out_syncs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_syncs, align 4
  %arrayidx = getelementptr %struct.v3d_submit_outsync, ptr %5, i32 %i.011
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.drm_syncobj_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !127

if.end5.i.i.i.i.i.drm_syncobj_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_syncobj_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #10
  br label %drm_syncobj_put.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @drm_syncobj_free(ptr noundef %7) #10
  br label %drm_syncobj_put.exit

drm_syncobj_put.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.drm_syncobj_put.exit_crit_edge
  %inc = add nuw i32 %i.011, 1
  %9 = ptrtoint ptr %out_sync_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out_sync_count, align 8
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %drm_syncobj_put.exit.for.body_crit_edge, label %drm_syncobj_put.exit.for.end_crit_edge

drm_syncobj_put.exit.for.end_crit_edge:           ; preds = %drm_syncobj_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

drm_syncobj_put.exit.for.body_crit_edge:          ; preds = %drm_syncobj_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %drm_syncobj_put.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %out_syncs3 = getelementptr inbounds %struct.v3d_submit_ext, ptr %se, i32 0, i32 5
  %11 = ptrtoint ptr %out_syncs3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %out_syncs3, align 4
  tail call void @kvfree(ptr noundef %12) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v3d_submit_tfu_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %se = alloca %struct.v3d_submit_ext, align 8
  %job = alloca ptr, align 4
  %acquire_ctx = alloca %struct.ww_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %se) #10
  %0 = call ptr @memset(ptr %se, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #10
  %1 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %job, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %acquire_ctx) #10
  %2 = call ptr @memset(ptr %acquire_ctx, i32 255, i32 64)
  %iia = getelementptr inbounds %struct.drm_v3d_submit_tfu, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %iia to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iia, align 4
  tail call fastcc void @trace_v3d_submit_tfu_ioctl(ptr noundef %dev, i32 noundef %4)
  %flags = getelementptr inbounds %struct.drm_v3d_submit_tfu, ptr %data, i32 0, i32 11
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp ne i32 %6, 0
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %6) #10
  br label %cleanup66

if.end:                                           ; preds = %entry
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %if.end
  %extensions = getelementptr inbounds %struct.drm_v3d_submit_tfu, ptr %data, i32 0, i32 12
  %7 = ptrtoint ptr %extensions to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %extensions, align 8
  %call8 = call fastcc i32 @v3d_get_extensions(ptr noundef %file_priv, i64 noundef %8, ptr noundef nonnull %se)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #10
  br label %cleanup66

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %in_sync = getelementptr inbounds %struct.drm_v3d_submit_tfu, ptr %data, i32 0, i32 9
  %9 = ptrtoint ptr %in_sync to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_sync, align 4
  %call13 = call fastcc i32 @v3d_job_init(ptr noundef %dev, ptr noundef %file_priv, ptr noundef nonnull %job, i32 noundef 240, ptr noundef nonnull @v3d_job_free, i32 noundef %10, ptr noundef nonnull %se, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.failthread-pre-split_crit_edge

if.end12.failthread-pre-split_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %failthread-pre-split

if.end16:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 16) #16
  %12 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %job, align 4
  %bo = getelementptr inbounds %struct.v3d_job, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %bo, align 8
  %tobool20.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool20.not, label %if.end16.fail_crit_edge, label %if.end22

if.end16.fail_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end22:                                         ; preds = %if.end16
  %args23 = getelementptr inbounds %struct.v3d_tfu_job, ptr %13, i32 0, i32 1
  %15 = call ptr @memcpy(ptr %args23, ptr %data, i32 80)
  %table_lock = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %table_lock) #10
  %bo_count = getelementptr inbounds %struct.v3d_job, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %bo_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bo_count, align 4
  %object_idr = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22
  %storemerge110 = phi i32 [ 0, %if.end22 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_v3d_submit_tfu, ptr %data, i32 0, i32 8, i32 %storemerge110
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %for.body.for.end_crit_edge, label %if.end32

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end32:                                         ; preds = %for.body
  %call37 = call ptr @idr_find(ptr noundef %object_idr, i32 noundef %18) #10
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.end32
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call37, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %call37, i32 1, i32 3, i32 1) #10
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call37, ptr nonnull %call37, i32 1, ptr nonnull elementtype(i32) %call37) #10, !srcloc !166
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end47.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !165

if.end47.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end47
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.inc_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !127

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end47.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end47.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %call37, i32 noundef %.sink.i.i.i.i.i) #10
  br label %for.inc

cleanup:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bo_count, align 4
  %arrayidx45 = getelementptr %struct.drm_v3d_submit_tfu, ptr %data, i32 0, i32 8, i32 %22
  %23 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx45, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %22, i32 noundef %24) #10
  call void @_raw_spin_unlock(ptr noundef %table_lock) #10
  br label %failthread-pre-split

for.inc:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.inc_crit_edge
  %25 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bo, align 8
  %27 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bo_count, align 4
  %arrayidx52 = getelementptr ptr, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call37, ptr %arrayidx52, align 4
  %30 = load i32, ptr %bo_count, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %bo_count, align 4
  %cmp = icmp ult i32 %inc, 4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %table_lock) #10
  %31 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bo, align 8
  %33 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bo_count, align 4
  %call.i = call i32 @drm_gem_lock_reservations(ptr noundef %32, i32 noundef %34, ptr noundef nonnull %acquire_ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %for.end.failthread-pre-split_crit_edge

for.end.failthread-pre-split_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %failthread-pre-split

for.cond.preheader.i:                             ; preds = %for.end
  %35 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bo_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp22.not.i = icmp eq i32 %36, 0
  br i1 %cmp22.not.i, label %for.cond.preheader.i.if.end60_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end60_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.023.i, 1
  %37 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bo_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %38
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end60_crit_edge

for.cond.i.if.end60_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bo, align 8
  %arrayidx.i = getelementptr ptr, ptr %40, i32 %i.023.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %call3.i = call i32 @drm_sched_job_add_implicit_dependencies(ptr noundef %13, ptr noundef %42, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.cond.i, label %if.then5.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bo, align 8
  %45 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bo_count, align 4
  call void @drm_gem_unlock_reservations(ptr noundef %44, i32 noundef %46, ptr noundef nonnull %acquire_ctx) #10
  br label %failthread-pre-split

if.end60:                                         ; preds = %for.cond.i.if.end60_crit_edge, %for.cond.preheader.i.if.end60_crit_edge
  %sched_lock = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 27
  call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  call fastcc void @v3d_push_job(ptr noundef %13)
  call void @mutex_unlock(ptr noundef %sched_lock) #10
  %out_sync = getelementptr inbounds %struct.drm_v3d_submit_tfu, ptr %data, i32 0, i32 10
  %47 = ptrtoint ptr %out_sync to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %out_sync, align 8
  %done_fence = getelementptr inbounds %struct.v3d_job, ptr %13, i32 0, i32 6
  %49 = ptrtoint ptr %done_fence to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %done_fence, align 4
  call fastcc void @v3d_attach_fences_and_unlock_reservation(ptr noundef %file_priv, ptr noundef %13, ptr noundef nonnull %acquire_ctx, i32 noundef %48, ptr noundef nonnull %se, ptr noundef %50)
  call void @v3d_job_put(ptr noundef %13)
  br label %cleanup66

failthread-pre-split:                             ; preds = %if.then5.i, %for.end.failthread-pre-split_crit_edge, %cleanup, %if.end12.failthread-pre-split_crit_edge
  %ret.2.ph = phi i32 [ %call.i, %for.end.failthread-pre-split_crit_edge ], [ %call3.i, %if.then5.i ], [ -2, %cleanup ], [ %call13, %if.end12.failthread-pre-split_crit_edge ]
  %51 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load ptr, ptr %job, align 4
  br label %fail

fail:                                             ; preds = %failthread-pre-split, %if.end16.fail_crit_edge
  %52 = phi ptr [ %.pr, %failthread-pre-split ], [ %13, %if.end16.fail_crit_edge ]
  %ret.2 = phi i32 [ %ret.2.ph, %failthread-pre-split ], [ -12, %if.end16.fail_crit_edge ]
  %tobool.not.i100 = icmp eq ptr %52, null
  br i1 %tobool.not.i100, label %fail.v3d_job_cleanup.exit_crit_edge, label %if.end.i

fail.v3d_job_cleanup.exit_crit_edge:              ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit

if.end.i:                                         ; preds = %fail
  call void @drm_sched_job_cleanup(ptr noundef nonnull %52) #10
  %refcount.i.i = getelementptr inbounds %struct.v3d_job, ptr %52, i32 0, i32 1
  %free.i.i = getelementptr inbounds %struct.v3d_job, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %free.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.v3d_job_cleanup.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !127

if.end5.i.i.i.i.i.i.v3d_job_cleanup.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %v3d_job_cleanup.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  call void %54(ptr noundef %refcount.i.i) #10
  br label %v3d_job_cleanup.exit

v3d_job_cleanup.exit:                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.v3d_job_cleanup.exit_crit_edge, %fail.v3d_job_cleanup.exit_crit_edge
  call fastcc void @v3d_put_multisync_post_deps(ptr noundef nonnull %se)
  br label %cleanup66

cleanup66:                                        ; preds = %v3d_job_cleanup.exit, %if.end60, %if.then10, %if.then
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ %ret.2, %v3d_job_cleanup.exit ], [ 0, %if.end60 ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %acquire_ctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %se) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_v3d_submit_tfu_ioctl(ptr noundef %dev, i32 noundef %iia) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_tfu_ioctl, i32 0, i32 1), ptr blockaddress(@trace_v3d_submit_tfu_ioctl, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !167
  %call42 = tail call i32 @__traceiter_v3d_submit_tfu_ioctl(ptr noundef null, ptr noundef %dev, i32 noundef %iia) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !168
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !127

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_tfu_ioctl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_tfu_ioctl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_v3d_submit_tfu_ioctl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_v3d_submit_tfu_ioctl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 164, ptr noundef nonnull @.str.28) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v3d_submit_csd_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %se = alloca %struct.v3d_submit_ext, align 8
  %job = alloca ptr, align 4
  %clean_job = alloca ptr, align 4
  %acquire_ctx = alloca %struct.ww_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %se) #10
  %2 = call ptr @memset(ptr %se, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #10
  %3 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %job, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clean_job) #10
  %4 = ptrtoint ptr %clean_job to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %clean_job, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %acquire_ctx) #10
  %5 = call ptr @memset(ptr %acquire_ctx, i32 255, i32 64)
  %arrayidx = getelementptr [7 x i32], ptr %data, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [7 x i32], ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 8
  tail call fastcc void @trace_v3d_submit_csd_ioctl(ptr noundef %dev, i32 noundef %7, i32 noundef %9)
  %pad = getelementptr inbounds %struct.drm_v3d_submit_csd, ptr %data, i32 0, i32 9
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ver.i = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %13)
  %cmp.i = icmp sgt i32 %13, 40
  br i1 %cmp.i, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.drm_v3d_submit_csd, ptr %data, i32 0, i32 8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp ne i32 %15, 0
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool6.not, %tobool8.not
  br i1 %or.cond, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %15) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  br i1 %tobool8.not, label %if.end12.if.end21_crit_edge, label %if.then16

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then16:                                        ; preds = %if.end12
  %extensions = getelementptr inbounds %struct.drm_v3d_submit_csd, ptr %data, i32 0, i32 7
  %16 = ptrtoint ptr %extensions to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %extensions, align 8
  %call17 = call fastcc i32 @v3d_get_extensions(ptr noundef %file_priv, i64 noundef %17, ptr noundef nonnull %se)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end21_crit_edge, label %if.then19

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %in_sync = getelementptr inbounds %struct.drm_v3d_submit_csd, ptr %data, i32 0, i32 4
  %18 = ptrtoint ptr %in_sync to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_sync, align 4
  %call22 = call fastcc i32 @v3d_job_init(ptr noundef %dev, ptr noundef %file_priv, ptr noundef nonnull %job, i32 noundef 256, ptr noundef nonnull @v3d_job_free, i32 noundef %19, ptr noundef nonnull %se, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.fail_crit_edge

if.end21.fail_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end25:                                         ; preds = %if.end21
  %call26 = call fastcc i32 @v3d_job_init(ptr noundef %dev, ptr noundef %file_priv, ptr noundef nonnull %clean_job, i32 noundef 160, ptr noundef nonnull @v3d_job_free, i32 noundef 0, ptr noundef null, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.fail_crit_edge

if.end25.fail_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end29:                                         ; preds = %if.end25
  %20 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %job, align 4
  %args30 = getelementptr inbounds %struct.v3d_csd_job, ptr %21, i32 0, i32 2
  %22 = call ptr @memcpy(ptr %args30, ptr %data, i32 88)
  %23 = ptrtoint ptr %clean_job to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clean_job, align 4
  %bo_handles = getelementptr inbounds %struct.drm_v3d_submit_csd, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %bo_handles to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bo_handles, align 8
  %bo_handle_count = getelementptr inbounds %struct.drm_v3d_submit_csd, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %bo_handle_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bo_handle_count, align 8
  %call31 = call fastcc i32 @v3d_lookup_bos(ptr noundef %file_priv, ptr noundef %24, i64 noundef %26, i32 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.fail_crit_edge

if.end29.fail_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end34:                                         ; preds = %if.end29
  %call35 = call fastcc i32 @v3d_lock_bo_reservations(ptr noundef %24, ptr noundef nonnull %acquire_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.fail_crit_edge

if.end34.fail_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end38:                                         ; preds = %if.end34
  %perfmon_id = getelementptr inbounds %struct.drm_v3d_submit_csd, ptr %data, i32 0, i32 6
  %29 = ptrtoint ptr %perfmon_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %perfmon_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool39.not = icmp eq i32 %30, 0
  br i1 %tobool39.not, label %if.end38.if.end48_crit_edge, label %if.then40

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then40:                                        ; preds = %if.end38
  %call42 = call ptr @v3d_perfmon_find(ptr noundef %1, i32 noundef %30) #10
  %perfmon = getelementptr inbounds %struct.v3d_job, ptr %21, i32 0, i32 7
  %31 = ptrtoint ptr %perfmon to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call42, ptr %perfmon, align 8
  %tobool45.not = icmp eq ptr %call42, null
  br i1 %tobool45.not, label %if.then40.fail_crit_edge, label %if.then40.if.end48_crit_edge

if.then40.if.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then40.fail_crit_edge:                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end48:                                         ; preds = %if.then40.if.end48_crit_edge, %if.end38.if.end48_crit_edge
  %sched_lock = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 27
  call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #10
  call fastcc void @v3d_push_job(ptr noundef %21)
  %done_fence = getelementptr inbounds %struct.v3d_job, ptr %21, i32 0, i32 6
  %32 = ptrtoint ptr %done_fence to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %done_fence, align 4
  %call52 = call fastcc ptr @dma_fence_get(ptr noundef %33)
  %call53 = call i32 @drm_sched_job_add_dependency(ptr noundef %24, ptr noundef %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %fail_unreserve

if.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @v3d_push_job(ptr noundef %24)
  call void @mutex_unlock(ptr noundef %sched_lock) #10
  %out_sync = getelementptr inbounds %struct.drm_v3d_submit_csd, ptr %data, i32 0, i32 5
  %34 = ptrtoint ptr %out_sync to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %out_sync, align 8
  %done_fence58 = getelementptr inbounds %struct.v3d_job, ptr %24, i32 0, i32 6
  %36 = ptrtoint ptr %done_fence58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %done_fence58, align 4
  call fastcc void @v3d_attach_fences_and_unlock_reservation(ptr noundef %file_priv, ptr noundef %24, ptr noundef nonnull %acquire_ctx, i32 noundef %35, ptr noundef nonnull %se, ptr noundef %37)
  call void @v3d_job_put(ptr noundef %21)
  call void @v3d_job_put(ptr noundef %24)
  br label %cleanup

fail_unreserve:                                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %sched_lock) #10
  %bo = getelementptr inbounds %struct.v3d_job, ptr %24, i32 0, i32 3
  %38 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bo, align 8
  %bo_count = getelementptr inbounds %struct.v3d_job, ptr %24, i32 0, i32 4
  %40 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bo_count, align 4
  call void @drm_gem_unlock_reservations(ptr noundef %39, i32 noundef %41, ptr noundef nonnull %acquire_ctx) #10
  br label %fail

fail:                                             ; preds = %fail_unreserve, %if.then40.fail_crit_edge, %if.end34.fail_crit_edge, %if.end29.fail_crit_edge, %if.end25.fail_crit_edge, %if.end21.fail_crit_edge
  %ret.0 = phi i32 [ %call22, %if.end21.fail_crit_edge ], [ %call26, %if.end25.fail_crit_edge ], [ %call31, %if.end29.fail_crit_edge ], [ %call35, %if.end34.fail_crit_edge ], [ %call53, %fail_unreserve ], [ -2, %if.then40.fail_crit_edge ]
  %42 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %job, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %fail.v3d_job_cleanup.exit_crit_edge, label %if.end.i

fail.v3d_job_cleanup.exit_crit_edge:              ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit

if.end.i:                                         ; preds = %fail
  call void @drm_sched_job_cleanup(ptr noundef nonnull %43) #10
  %refcount.i.i = getelementptr inbounds %struct.v3d_job, ptr %43, i32 0, i32 1
  %free.i.i = getelementptr inbounds %struct.v3d_job, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %free.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.v3d_job_cleanup.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !127

if.end5.i.i.i.i.i.i.v3d_job_cleanup.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %v3d_job_cleanup.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  call void %45(ptr noundef %refcount.i.i) #10
  br label %v3d_job_cleanup.exit

v3d_job_cleanup.exit:                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.v3d_job_cleanup.exit_crit_edge, %fail.v3d_job_cleanup.exit_crit_edge
  %47 = ptrtoint ptr %clean_job to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clean_job, align 4
  %tobool.not.i102 = icmp eq ptr %48, null
  br i1 %tobool.not.i102, label %v3d_job_cleanup.exit.v3d_job_cleanup.exit113_crit_edge, label %if.end.i108

v3d_job_cleanup.exit.v3d_job_cleanup.exit113_crit_edge: ; preds = %v3d_job_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit113

if.end.i108:                                      ; preds = %v3d_job_cleanup.exit
  call void @drm_sched_job_cleanup(ptr noundef nonnull %48) #10
  %refcount.i.i103 = getelementptr inbounds %struct.v3d_job, ptr %48, i32 0, i32 1
  %free.i.i104 = getelementptr inbounds %struct.v3d_job, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %free.i.i104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %free.i.i104, align 4
  %call.i.i.i.i.i.i.i.i105 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i103, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  call void @llvm.prefetch.p0(ptr %refcount.i.i103, i32 1, i32 3, i32 1) #10
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i103, ptr %refcount.i.i103, i32 1, ptr elementtype(i32) %refcount.i.i103) #10, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i.i106 = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i106)
  %cmp.i.i.i.i.i.i107 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i106, 1
  br i1 %cmp.i.i.i.i.i.i107, label %if.then.i.i.i112, label %if.end5.i.i.i.i.i.i110

if.end5.i.i.i.i.i.i110:                           ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i106)
  %.not.i.i.i.i.i.i109 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i106, 0
  br i1 %.not.i.i.i.i.i.i109, label %if.end5.i.i.i.i.i.i110.v3d_job_cleanup.exit113_crit_edge, label %if.then10.i.i.i.i.i.i111, !prof !127

if.end5.i.i.i.i.i.i110.v3d_job_cleanup.exit113_crit_edge: ; preds = %if.end5.i.i.i.i.i.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_job_cleanup.exit113

if.then10.i.i.i.i.i.i111:                         ; preds = %if.end5.i.i.i.i.i.i110
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i103, i32 noundef 3) #10
  br label %v3d_job_cleanup.exit113

if.then.i.i.i112:                                 ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  call void %50(ptr noundef %refcount.i.i103) #10
  br label %v3d_job_cleanup.exit113

v3d_job_cleanup.exit113:                          ; preds = %if.then.i.i.i112, %if.then10.i.i.i.i.i.i111, %if.end5.i.i.i.i.i.i110.v3d_job_cleanup.exit113_crit_edge, %v3d_job_cleanup.exit.v3d_job_cleanup.exit113_crit_edge
  call fastcc void @v3d_put_multisync_post_deps(ptr noundef nonnull %se)
  br label %cleanup

cleanup:                                          ; preds = %v3d_job_cleanup.exit113, %if.end56, %if.then19, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then19 ], [ %ret.0, %v3d_job_cleanup.exit113 ], [ 0, %if.end56 ], [ -22, %do.end ], [ -22, %if.then4 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %acquire_ctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clean_job) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %se) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_v3d_submit_csd_ioctl(ptr noundef %dev, i32 noundef %cfg5, i32 noundef %cfg6) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_csd_ioctl, i32 0, i32 1), ptr blockaddress(@trace_v3d_submit_csd_ioctl, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !133

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !169
  %call42 = tail call i32 @__traceiter_v3d_submit_csd_ioctl(ptr noundef null, ptr noundef %dev, i32 noundef %cfg5, i32 noundef %cfg6) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !170
  %13 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !127

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !107) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_csd_ioctl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v3d_submit_csd_ioctl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_v3d_submit_csd_ioctl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_v3d_submit_csd_ioctl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 206, ptr noundef nonnull @.str.28) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %31 = tail call i32 @llvm.read_register.i32(metadata !107) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v3d_gem_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #10
  %fence_context = getelementptr %struct.v3d_dev, ptr %dev, i32 0, i32 22, i32 0, i32 1
  %0 = ptrtoint ptr %fence_context to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call1, ptr %fence_context, align 8
  %call1.1 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #10
  %fence_context.1 = getelementptr %struct.v3d_dev, ptr %dev, i32 0, i32 22, i32 1, i32 1
  %1 = ptrtoint ptr %fence_context.1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call1.1, ptr %fence_context.1, align 8
  %call1.2 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #10
  %fence_context.2 = getelementptr %struct.v3d_dev, ptr %dev, i32 0, i32 22, i32 2, i32 1
  %2 = ptrtoint ptr %fence_context.2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call1.2, ptr %fence_context.2, align 8
  %call1.3 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #10
  %fence_context.3 = getelementptr %struct.v3d_dev, ptr %dev, i32 0, i32 22, i32 3, i32 1
  %3 = ptrtoint ptr %fence_context.3 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call1.3, ptr %fence_context.3, align 8
  %call1.4 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #10
  %fence_context.4 = getelementptr %struct.v3d_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1
  %4 = ptrtoint ptr %fence_context.4 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call1.4, ptr %fence_context.4, align 8
  %mm_lock = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %mm_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @v3d_gem_init.__key, i16 noundef signext 3) #10
  %job_lock = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %job_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @v3d_gem_init.__key.14, i16 noundef signext 3) #10
  %bo_lock = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %bo_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @v3d_gem_init.__key.16) #10
  %reset_lock = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %reset_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @v3d_gem_init.__key.18) #10
  %sched_lock = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 27
  tail call void @__mutex_init(ptr noundef %sched_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @v3d_gem_init.__key.20) #10
  %cache_clean_lock = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 28
  tail call void @__mutex_init(ptr noundef %cache_clean_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @v3d_gem_init.__key.22) #10
  %mm = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 15
  tail call void @drm_mm_init(ptr noundef %mm, i64 noundef 1, i64 noundef 1048575) #10
  %dev19 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev19, align 8
  %pt_paddr = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 10
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef 4194304, ptr noundef %pt_paddr, i32 noundef 11712, i32 noundef 260) #10
  %pt = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 9
  %7 = ptrtoint ptr %pt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %pt, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_mm_takedown(ptr noundef %mm) #10
  %8 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ver.i.i = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %ver.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %11)
  %cmp.i.i = icmp slt i32 %11, 40
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.v3d_init_hw_state.exit_crit_edge

if.end.v3d_init_hw_state.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %v3d_init_hw_state.exit

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  tail call void @arm_heavy_mb() #10
  %core_regs.i.i = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %core_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #10, !srcloc !120
  br label %v3d_init_hw_state.exit

v3d_init_hw_state.exit:                           ; preds = %do.body.i.i, %if.end.v3d_init_hw_state.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  tail call void @arm_heavy_mb() #10
  %core_regs3.i.i = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %core_regs3.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core_regs3.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #10, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %core_regs3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core_regs3.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 -1) #10, !srcloc !120
  %call28 = tail call i32 @v3d_mmu_set_page_table(ptr noundef %dev) #10
  %call29 = tail call i32 @v3d_sched_init(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %v3d_init_hw_state.exit.cleanup_crit_edge, label %if.then31

v3d_init_hw_state.exit.cleanup_crit_edge:         ; preds = %v3d_init_hw_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %v3d_init_hw_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_mm_takedown(ptr noundef %mm) #10
  %18 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev19, align 8
  %20 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pt, align 4
  %22 = ptrtoint ptr %pt_paddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pt_paddr, align 8
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef 4194304, ptr noundef %21, i32 noundef %23, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %v3d_init_hw_state.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.then31 ], [ 0, %v3d_init_hw_state.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_sched_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v3d_gem_destroy(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v3d_sched_fini(ptr noundef %dev) #10
  %bin_job = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %bin_job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bin_job, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !127

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1125, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %render_job = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %render_job to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %render_job, align 4
  %tobool21.not = icmp eq ptr %3, null
  br i1 %tobool21.not, label %if.end.if.end43_crit_edge, label %do.end37, !prof !127

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1126, i32 noundef 9, ptr noundef null) #10
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %if.end.if.end43_crit_edge
  %mm = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 15
  tail call void @drm_mm_takedown(ptr noundef %mm) #10
  %dev51 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev51, align 8
  %pt = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pt, align 4
  %pt_paddr = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %pt_paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pt_paddr, align 8
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4194304, ptr noundef %7, i32 noundef %9, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_sched_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v3d_reset_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v3d_reset_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v3d_cache_clean_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v3d_cache_clean_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsecs_to_jiffies64(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v3d_submit_cl_ioctl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_perfmon_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_lock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_implicit_dependencies(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v3d_submit_tfu_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v3d_submit_csd_ioctl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !80, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !106}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 114, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 115, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 199, i32 6}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 201, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 211, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 740, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @v3d_submit_cl_ioctl._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @v3d_submit_cl_ioctl._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 747, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 884, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 922, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 987, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 992, i32 3}
!26 = !{ptr @v3d_submit_csd_ioctl._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @v3d_submit_csd_ioctl._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @v3d_gem_init.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 1079, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @v3d_gem_init.__key.14, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 1080, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @v3d_gem_init.__key.16, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 1081, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @v3d_gem_init.__key.18, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 1082, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @v3d_gem_init.__key.20, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 1083, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @v3d_gem_init.__key.22, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 1084, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 1097, i32 3}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @v3d_gem_init._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @v3d_gem_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/v3d/v3d_trace.h", i32 260, i32 1}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!56 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 71, i32 3}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 90, i32 3}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/v3d/v3d_trace.h", i32 276, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/v3d/v3d_trace.h", i32 228, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/v3d/v3d_trace.h", i32 244, i32 1}
!72 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/v3d/v3d_trace.h", i32 15, i32 1}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 684, i32 4}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 695, i32 4}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 614, i32 4}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 466, i32 3}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 492, i32 6}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 307, i32 3}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 315, i32 3}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 322, i32 3}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/v3d/v3d_gem.c", i32 330, i32 3}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/v3d/v3d_trace.h", i32 147, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/v3d/v3d_trace.h", i32 186, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = !{!"sp"}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 6242805}
!118 = !{i64 2157192483}
!119 = !{i64 2157176025}
!120 = !{i64 6242387}
!121 = !{i64 2157178708}
!122 = !{i64 2157178404}
!123 = !{i64 2157179308}
!124 = !{i64 2157184667}
!125 = !{i64 2157185201}
!126 = !{i64 2157186940}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2157190918}
!129 = !{i64 2157191452}
!130 = !{i64 2157167724}
!131 = !{i64 2157168279}
!132 = !{i64 2157168758}
!133 = !{i64 2148303115, i64 2148303120, i64 2148303133, i64 2148303177, i64 2148303211, i64 2148303232}
!134 = !{i64 2157137488}
!135 = !{i64 2157137687}
!136 = !{i64 2149325795}
!137 = !{i64 2149326831}
!138 = !{i64 2157153456}
!139 = !{i64 2157153651}
!140 = !{i64 2157203917}
!141 = !{i64 2157206829}
!142 = !{i64 2157206503}
!143 = !{i64 2157211774}
!144 = !{i64 2157217608}
!145 = !{i64 2157217282}
!146 = !{i64 2157100647}
!147 = !{i64 2157100858}
!148 = !{i64 2157121228}
!149 = !{i64 2157121435}
!150 = !{i64 2157193039}
!151 = !{i64 2157193467}
!152 = !{i64 2157194185}
!153 = !{i64 2157195046}
!154 = !{i64 2157200306}
!155 = !{i64 2157235836}
!156 = !{i64 2148579253}
!157 = !{i64 2148493717, i64 2148493749, i64 2148493778, i64 2148493812, i64 2148493843, i64 2148493866}
!158 = !{i64 2149625223}
!159 = !{i64 2156927020}
!160 = !{i64 2156927259}
!161 = !{i64 2153238263, i64 2153238288}
!162 = !{i64 5733818}
!163 = !{i64 5734015}
!164 = !{i64 2153219248}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{i64 2148491252, i64 2148491284, i64 2148491313, i64 2148491347, i64 2148491378, i64 2148491401}
!167 = !{i64 2157030080}
!168 = !{i64 2157030299}
!169 = !{i64 2157067530}
!170 = !{i64 2157067763}
