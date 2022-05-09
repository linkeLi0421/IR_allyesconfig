; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_sched.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.19 }
%struct.atomic_t = type { i32 }
%union.anon.19 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lima_sched_task = type { %struct.drm_sched_job, ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.68, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { %struct.irq_work }
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
%struct.lima_vm = type { %struct.mutex, %struct.kref, %struct.drm_mm, ptr, %struct.lima_vm_page, [128 x %struct.lima_vm_page] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lima_vm_page = type { ptr, i32 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon.76 }
%union.anon.76 = type { %struct.spinlock }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.lima_fence = type { %struct.dma_fence, ptr }
%struct.dma_buf_map = type { %union.anon.77, i8 }
%union.anon.77 = type { ptr }
%struct.lima_ctx = type { %struct.kref, ptr, [2 x %struct.lima_sched_context], %struct.atomic_t, [16 x i8], i32 }
%struct.lima_sched_context = type { %struct.drm_sched_entity }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.lima_bo = type { %struct.drm_gem_shmem_object, %struct.mutex, %struct.list_head, i32 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lima_sched_error_task = type { %struct.list_head, ptr, i32 }
%struct.lima_dump_chunk = type { i32, i32, [2 x i32] }
%struct.lima_dump_chunk_pid = type { i32, i32, i32, i32 }
%struct.lima_dump_chunk_buffer = type { i32, i32, i32, i32 }

@lima_fence_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lima_fence\00", [21 x i8] zeroinitializer }, align 32
@lima_fence_slab_refcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lima_sched_timeout_ms = external dso_local local_unnamed_addr global i32, align 4
@lima_sched_pipe_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pipe->fence_lock\00", [46 x i8] zeroinitializer }, align 32
@lima_sched_pipe_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&pipe->recover_work)\00", [57 x i8] zeroinitializer }, align 32
@lima_sched_ops = internal constant { %struct.drm_sched_backend_ops, [16 x i8] } { %struct.drm_sched_backend_ops { ptr null, ptr @lima_sched_run_job, ptr @lima_sched_timedout_job, ptr @lima_sched_free_job }, [16 x i8] zeroinitializer }, align 32
@lima_job_hang_limit = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_lima_task_submit = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/lima/lima_trace.h\00", [62 x i8] zeroinitializer }, align 32
@trace_lima_task_submit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@lima_fence_ops = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @lima_fence_get_driver_name, ptr @lima_fence_get_timeline_name, ptr null, ptr null, ptr null, ptr @lima_fence_release, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lima\00", [27 x i8] zeroinitializer }, align 32
@__tracepoint_lima_task_run = external dso_local global %struct.tracepoint, align 4
@trace_lima_task_run.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lima job timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@lima_max_error_tasks = external dso_local local_unnamed_addr global i32, align 4
@lima_sched_build_error_task_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 294, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"fail to save task state from %s pid %d: error task list is full\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lima_sched_build_error_task_list\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/lima/lima_sched.c\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lima_sched_build_error_task_list._entry_ptr = internal global ptr @lima_sched_build_error_task_list._entry, section ".printk_index", align 4
@lima_sched_build_error_task_list._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.11, i32 317, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fail to alloc task dump buffer of size %x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lima_sched_build_error_task_list._entry_ptr.17 = internal global ptr @lima_sched_build_error_task_list._entry.14, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@lima_sched_build_error_task_list._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.11, i32 393, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"save error task state success\0A\00", [33 x i8] zeroinitializer }, align 32
@lima_sched_build_error_task_list._entry_ptr.20 = internal global ptr @lima_sched_build_error_task_list._entry.18, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"lima_fence_slab\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 24, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 31, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"lima_fence_slab_refcnt\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 25, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 486, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 488, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"lima_sched_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 454, i32 43 }
@___asan_gen_.49 = private unnamed_addr constant [37 x i8] c"../drivers/gpu/drm/lima/lima_trace.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 35, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 108, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"lima_fence_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 81, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 56, i32 9 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 406, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 293, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 316, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [37 x i8] c"../drivers/gpu/drm/lima/lima_sched.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 393, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @lima_sched_build_error_task_list._entry, ptr @lima_sched_build_error_task_list._entry.14, ptr @lima_sched_build_error_task_list._entry.18, ptr @lima_sched_build_error_task_list._entry_ptr, ptr @lima_sched_build_error_task_list._entry_ptr.17, ptr @lima_sched_build_error_task_list._entry_ptr.20, ptr @lima_fence_slab, ptr @.str, ptr @lima_fence_slab_refcnt, ptr @lima_sched_pipe_init.__key, ptr @.str.1, ptr @lima_sched_pipe_init.__key.2, ptr @.str.3, ptr @lima_sched_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lima_fence_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_fence_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_fence_slab_refcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_sched_pipe_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_sched_pipe_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_sched_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_fence_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_sched_build_error_task_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_sched_build_error_task_list._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_sched_build_error_task_list._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_sched_slab_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lima_fence_slab, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %call, ptr @lima_fence_slab, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.return_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %1 = load i32, ptr @lima_fence_slab_refcnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @lima_fence_slab_refcnt, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -12, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_sched_slab_fini() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lima_fence_slab_refcnt, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @lima_fence_slab_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load ptr, ptr @lima_fence_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  store ptr null, ptr @lima_fence_slab, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_sched_task_init(ptr noundef %task, ptr noundef %context, ptr noundef %bos, i32 noundef %num_bos, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %num_bos, 2
  %call = tail call ptr @kmemdup(ptr noundef %bos, i32 noundef %mul, i32 noundef 3264) #10
  %bos1 = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 3
  %0 = ptrtoint ptr %bos1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %bos1, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_bos)
  %cmp37 = icmp sgt i32 %num_bos, 0
  br i1 %cmp37, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %drm_gem_object_get.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %drm_gem_object_get.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %bos, i32 %i.038
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %2, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %2, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.body.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !59

for.body.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !60

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %.sink.i.i.i.i.i) #10
  br label %drm_gem_object_get.exit

drm_gem_object_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %num_bos
  br i1 %exitcond.not, label %drm_gem_object_get.exit.for.end_crit_edge, label %drm_gem_object_get.exit.for.body_crit_edge

drm_gem_object_get.exit.for.body_crit_edge:       ; preds = %drm_gem_object_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

drm_gem_object_get.exit.for.end_crit_edge:        ; preds = %drm_gem_object_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %drm_gem_object_get.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call6 = tail call i32 @drm_sched_job_init(ptr noundef %task, ptr noundef %context, ptr noundef %vm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %bos1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bos1, align 8
  tail call void @kfree(ptr noundef %6) #10
  br label %cleanup

if.end10:                                         ; preds = %for.end
  tail call void @drm_sched_job_arm(ptr noundef %task) #10
  %num_bos12 = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 4
  %7 = ptrtoint ptr %num_bos12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num_bos, ptr %num_bos12, align 4
  %refcount.i = getelementptr inbounds %struct.lima_vm, ptr %vm, i32 0, i32 1
  %call.i.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i30)
  %tobool1.not.i.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i30, 0
  br i1 %tobool1.not.i.i.i.i.i31, label %if.end10.if.end15.sink.split.i.i.i.i.i36_crit_edge, label %if.else.i.i.i.i.i34, !prof !59

if.end10.if.end15.sink.split.i.i.i.i.i36_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i36

if.else.i.i.i.i.i34:                              ; preds = %if.end10
  %add.i.i.i.i.i32 = add i32 %asmresult.i.i.i.i.i.i.i30, 1
  %9 = or i32 %add.i.i.i.i.i32, %asmresult.i.i.i.i.i.i.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i33 = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i33, label %if.else.i.i.i.i.i34.lima_vm_get.exit_crit_edge, label %if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge, !prof !60

if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge: ; preds = %if.else.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i36

if.else.i.i.i.i.i34.lima_vm_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %lima_vm_get.exit

if.end15.sink.split.i.i.i.i.i36:                  ; preds = %if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge, %if.end10.if.end15.sink.split.i.i.i.i.i36_crit_edge
  %.sink.i.i.i.i.i35 = phi i32 [ 2, %if.end10.if.end15.sink.split.i.i.i.i.i36_crit_edge ], [ 1, %if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i35) #10
  br label %lima_vm_get.exit

lima_vm_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i36, %if.else.i.i.i.i.i34.lima_vm_get.exit_crit_edge
  %vm14 = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 1
  %10 = ptrtoint ptr %vm14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vm, ptr %vm14, align 8
  br label %cleanup

cleanup:                                          ; preds = %lima_vm_get.exit, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ 0, %lima_vm_get.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_sched_task_fini(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_job_cleanup(ptr noundef %task) #10
  %bos = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 3
  %0 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bos, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %num_bos = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 4
  %2 = ptrtoint ptr %num_bos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %drm_gem_object_put.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %drm_gem_object_put.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bos, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.015
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.drm_gem_object_put.exit_crit_edge, label %if.then.i

for.body.drm_gem_object_put.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !60

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #10, !callees !64
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %for.body.drm_gem_object_put.exit_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %9 = ptrtoint ptr %num_bos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_bos, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %drm_gem_object_put.exit.for.body_crit_edge, label %drm_gem_object_put.exit.for.end_crit_edge

drm_gem_object_put.exit.for.end_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

drm_gem_object_put.exit.for.body_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %drm_gem_object_put.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bos, align 8
  tail call void @kfree(ptr noundef %12) #10
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %vm = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 1
  %13 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm, align 8
  %tobool.not.i12 = icmp eq ptr %14, null
  br i1 %tobool.not.i12, label %if.end.lima_vm_put.exit_crit_edge, label %if.then.i13

if.end.lima_vm_put.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lima_vm_put.exit

if.then.i13:                                      ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.lima_vm, ptr %14, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !60

if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lima_vm_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %lima_vm_put.exit

if.then.i.i:                                      ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @lima_vm_release(ptr noundef %refcount.i) #10, !callees !64
  br label %lima_vm_put.exit

lima_vm_put.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge, %if.end.lima_vm_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_sched_context_init(ptr noundef %pipe, ptr noundef %context, ptr noundef %guilty) local_unnamed_addr #0 align 64 {
entry:
  %sched = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched) #10
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pipe, ptr %sched, align 4
  %call = call i32 @drm_sched_entity_init(ptr noundef %context, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef %guilty) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_sched_context_fini(ptr nocapture noundef readnone %pipe, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_entity_fini(ptr noundef %context) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lima_sched_context_queue_task(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %task, i32 0, i32 3
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
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !59

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !60

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
  tail call fastcc void @trace_lima_task_submit(ptr noundef %task)
  tail call void @drm_sched_entity_push_job(ptr noundef %task) #10
  ret ptr %finished
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_lima_task_submit(ptr noundef %task) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_lima_task_submit, i32 0, i32 1), ptr blockaddress(@trace_lima_task_submit, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !65

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !48) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !60

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  %call42 = tail call i32 @__traceiter_lima_task_submit(ptr noundef null, ptr noundef %task) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %13 = tail call i32 @llvm.read_register.i32(metadata !48) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !48) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !60

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_lima_task_submit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_lima_task_submit, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_lima_task_submit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_lima_task_submit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 38, ptr noundef nonnull @.str.5) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %31 = tail call i32 @llvm.read_register.i32(metadata !48) #10
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
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_sched_pipe_init(ptr noundef %pipe, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lima_sched_timeout_ms to i32))
  %0 = load i32, ptr @lima_sched_timeout_ms, align 4
  %call = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #10
  %fence_context = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 1
  %1 = ptrtoint ptr %fence_context to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call, ptr %fence_context, align 8
  %fence_lock = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %fence_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lima_sched_pipe_init.__key, i16 noundef signext 3) #10
  %recover_work = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 26
  tail call void @__init_work(ptr noundef %recover_work, i32 noundef 0) #10
  %2 = ptrtoint ptr %recover_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %recover_work, align 4
  %lockdep_map = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 26, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @lima_sched_pipe_init.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry6 = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 26, i32 1
  %3 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 26, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @lima_sched_recover_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lima_job_hang_limit to i32))
  %6 = load i32, ptr @lima_job_hang_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  %spec.select = select i1 %cmp, i32 %0, i32 500
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select) #10
  %call11 = tail call i32 @drm_sched_init(ptr noundef %pipe, ptr noundef nonnull @lima_sched_ops, i32 noundef 1, i32 noundef %6, i32 noundef %call2.i, ptr noundef null, ptr noundef null, ptr noundef %name) #10
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_sched_recover_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -756
  %num_l2_cache = getelementptr i8, ptr %work, i32 -92
  %0 = ptrtoint ptr %num_l2_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_l2_cache, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26 = icmp sgt i32 %1, 0
  br i1 %cmp26, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %l2_cache = getelementptr i8, ptr %work, i32 -100
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %l2_cache, i32 0, i32 %i.027
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @lima_l2_cache_flush(ptr noundef %3) #10
  %inc = add nuw nsw i32 %i.027, 1
  %4 = ptrtoint ptr %num_l2_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_l2_cache, align 8
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %bcast_mmu = getelementptr i8, ptr %work, i32 -48
  %6 = ptrtoint ptr %bcast_mmu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bcast_mmu, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.cond2.preheader, label %if.then

for.cond2.preheader:                              ; preds = %for.end
  %num_mmu = getelementptr i8, ptr %work, i32 -104
  %8 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_mmu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp328 = icmp sgt i32 %9, 0
  br i1 %cmp328, label %for.body4.lr.ph, label %for.cond2.preheader.if.end_crit_edge

for.cond2.preheader.if.end_crit_edge:             ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %mmu = getelementptr i8, ptr %work, i32 -136
  br label %for.body4

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lima_mmu_flush_tlb(ptr noundef nonnull %7) #10
  br label %if.end

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %i.129 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc7, %for.body4.for.body4_crit_edge ]
  %arrayidx5 = getelementptr [8 x ptr], ptr %mmu, i32 0, i32 %i.129
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  tail call void @lima_mmu_flush_tlb(ptr noundef %11) #10
  %inc7 = add nuw nsw i32 %i.129, 1
  %12 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_mmu, align 4
  %cmp3 = icmp slt i32 %inc7, %13
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.if.end_crit_edge

for.body4.if.end_crit_edge:                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

if.end:                                           ; preds = %for.body4.if.end_crit_edge, %if.then, %for.cond2.preheader.if.end_crit_edge
  %task_recover = getelementptr i8, ptr %work, i32 -4
  %14 = ptrtoint ptr %task_recover to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task_recover, align 8
  %call9 = tail call i32 %15(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_sched_fault(ptr noundef %add.ptr) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_sched_pipe_fini(ptr noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_fini(ptr noundef %pipe) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_sched_pipe_task_done(ptr noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_task = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 5
  %0 = ptrtoint ptr %current_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_task, align 4
  %error = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 16
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %error, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %recoverable = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %recoverable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %recoverable, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %recover_work = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %recover_work) #10
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  tail call void @drm_sched_fault(ptr noundef %pipe) #10
  br label %if.end7

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ldev1 = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 4
  %7 = ptrtoint ptr %ldev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ldev1, align 8
  %task_fini = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 22
  %9 = ptrtoint ptr %task_fini to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task_fini, align 4
  tail call void %10(ptr noundef %pipe) #10
  %fence = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fence, align 8
  %call6 = tail call i32 @dma_fence_signal(ptr noundef %12) #10
  %devfreq.i = getelementptr inbounds %struct.lima_device, ptr %8, i32 0, i32 18
  tail call void @lima_devfreq_record_idle(ptr noundef %devfreq.i) #10
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 8
  %call.i.i16 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i.i16, ptr %last_busy.i.i, align 8
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %8, align 8
  %call.i4.i = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #10
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.else, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fault(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_vm_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_lima_task_submit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_l2_cache_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_mmu_flush_tlb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lima_sched_run_job(ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched, align 4
  %ldev2 = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ldev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ldev2, align 8
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %4 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fence, align 8
  %error = getelementptr inbounds %struct.drm_sched_fence, ptr %5, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr @lima_fence_slab, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pipe1.i = getelementptr inbounds %struct.lima_fence, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %pipe1.i, align 8
  %fence_lock.i = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 3
  %fence_context.i = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %fence_context.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fence_context.i, align 8
  %fence_seqno.i = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %fence_seqno.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fence_seqno.i, align 8
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %fence_seqno.i, align 8
  %conv.i = zext i32 %inc.i to i64
  tail call void @dma_fence_init(ptr noundef nonnull %call.i.i, ptr noundef nonnull @lima_fence_ops, ptr noundef %fence_lock.i, i64 noundef %11, i64 noundef %conv.i) #10
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %call.i.i68 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp.i.i = icmp slt i32 %call.i.i68, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i76

if.then.i.i:                                      ; preds = %if.end5
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !72
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  br label %if.then.i

if.then.i:                                        ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i71, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !60

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i71:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10, !callees !64
  br label %cleanup

if.then.i76:                                      ; preds = %if.end5
  %devfreq.i = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 18
  tail call void @lima_devfreq_record_busy(ptr noundef %devfreq.i) #10
  %fence11 = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 7
  %18 = ptrtoint ptr %fence11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %fence11, align 8
  %refcount.i74 = getelementptr inbounds %struct.dma_fence, ptr %call.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i74, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i74, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i74, ptr %refcount.i74, i32 1, ptr elementtype(i32) %refcount.i74) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i76.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !59

if.then.i76.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i76
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i77 = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i77, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !60

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i76.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i76.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i74, i32 noundef %.sink.i.i.i.i.i) #10
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge
  %current_task = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %current_task to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %job, ptr %current_task, align 4
  %num_l2_cache = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %num_l2_cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_l2_cache, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp14101 = icmp sgt i32 %23, 0
  br i1 %cmp14101, label %dma_fence_get.exit.for.body_crit_edge, label %dma_fence_get.exit.for.end_crit_edge

dma_fence_get.exit.for.end_crit_edge:             ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

dma_fence_get.exit.for.body_crit_edge:            ; preds = %dma_fence_get.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %dma_fence_get.exit.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %dma_fence_get.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lima_sched_pipe, ptr %1, i32 0, i32 9, i32 %i.0102
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call15 = tail call i32 @lima_l2_cache_flush(ptr noundef %25) #10
  %inc = add nuw nsw i32 %i.0102, 1
  %26 = ptrtoint ptr %num_l2_cache to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_l2_cache, align 8
  %cmp14 = icmp slt i32 %inc, %27
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %dma_fence_get.exit.for.end_crit_edge
  %current_vm = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %current_vm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %current_vm, align 8
  %tobool.not.i79 = icmp eq ptr %29, null
  br i1 %tobool.not.i79, label %for.end.lima_vm_put.exit_crit_edge, label %if.then.i84

for.end.lima_vm_put.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lima_vm_put.exit

if.then.i84:                                      ; preds = %for.end
  %refcount.i80 = getelementptr inbounds %struct.lima_vm, ptr %29, i32 0, i32 1
  %call.i.i.i.i.i.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i80, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refcount.i80, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i80, ptr %refcount.i80, i32 1, ptr elementtype(i32) %refcount.i80) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i82 = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i82)
  %cmp.i.i.i.i.i83 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i82, 1
  br i1 %cmp.i.i.i.i.i83, label %if.then.i.i88, label %if.end5.i.i.i.i.i86

if.end5.i.i.i.i.i86:                              ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i82)
  %.not.i.i.i.i.i85 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i82, 0
  br i1 %.not.i.i.i.i.i85, label %if.end5.i.i.i.i.i86.lima_vm_put.exit_crit_edge, label %if.then10.i.i.i.i.i87, !prof !60

if.end5.i.i.i.i.i86.lima_vm_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %lima_vm_put.exit

if.then10.i.i.i.i.i87:                            ; preds = %if.end5.i.i.i.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i80, i32 noundef 3) #10
  br label %lima_vm_put.exit

if.then.i.i88:                                    ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @lima_vm_release(ptr noundef %refcount.i80) #10, !callees !64
  br label %lima_vm_put.exit

lima_vm_put.exit:                                 ; preds = %if.then.i.i88, %if.then10.i.i.i.i.i87, %if.end5.i.i.i.i.i86.lima_vm_put.exit_crit_edge, %for.end.lima_vm_put.exit_crit_edge
  %vm = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 1
  %31 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vm, align 8
  %refcount.i90 = getelementptr inbounds %struct.lima_vm, ptr %32, i32 0, i32 1
  %call.i.i.i.i.i.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i90, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i90, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i90, ptr %refcount.i90, i32 1, ptr elementtype(i32) %refcount.i90) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i92 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i92)
  %tobool1.not.i.i.i.i.i93 = icmp eq i32 %asmresult.i.i.i.i.i.i.i92, 0
  br i1 %tobool1.not.i.i.i.i.i93, label %lima_vm_put.exit.if.end15.sink.split.i.i.i.i.i98_crit_edge, label %if.else.i.i.i.i.i96, !prof !59

lima_vm_put.exit.if.end15.sink.split.i.i.i.i.i98_crit_edge: ; preds = %lima_vm_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i98

if.else.i.i.i.i.i96:                              ; preds = %lima_vm_put.exit
  %add.i.i.i.i.i94 = add i32 %asmresult.i.i.i.i.i.i.i92, 1
  %34 = or i32 %add.i.i.i.i.i94, %asmresult.i.i.i.i.i.i.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i.i95 = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i.i95, label %if.else.i.i.i.i.i96.lima_vm_get.exit_crit_edge, label %if.else.i.i.i.i.i96.if.end15.sink.split.i.i.i.i.i98_crit_edge, !prof !60

if.else.i.i.i.i.i96.if.end15.sink.split.i.i.i.i.i98_crit_edge: ; preds = %if.else.i.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i98

if.else.i.i.i.i.i96.lima_vm_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %lima_vm_get.exit

if.end15.sink.split.i.i.i.i.i98:                  ; preds = %if.else.i.i.i.i.i96.if.end15.sink.split.i.i.i.i.i98_crit_edge, %lima_vm_put.exit.if.end15.sink.split.i.i.i.i.i98_crit_edge
  %.sink.i.i.i.i.i97 = phi i32 [ 2, %lima_vm_put.exit.if.end15.sink.split.i.i.i.i.i98_crit_edge ], [ 1, %if.else.i.i.i.i.i96.if.end15.sink.split.i.i.i.i.i98_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i90, i32 noundef %.sink.i.i.i.i.i97) #10
  br label %lima_vm_get.exit

lima_vm_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i98, %if.else.i.i.i.i.i96.lima_vm_get.exit_crit_edge
  %35 = ptrtoint ptr %current_vm to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %current_vm, align 8
  %bcast_mmu = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %bcast_mmu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bcast_mmu, align 4
  %tobool18.not = icmp eq ptr %37, null
  br i1 %tobool18.not, label %for.cond22.preheader, label %if.then19

for.cond22.preheader:                             ; preds = %lima_vm_get.exit
  %num_mmu = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_mmu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp23103 = icmp sgt i32 %39, 0
  br i1 %cmp23103, label %for.cond22.preheader.for.body24_crit_edge, label %for.cond22.preheader.if.end30_crit_edge

for.cond22.preheader.if.end30_crit_edge:          ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

for.cond22.preheader.for.body24_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body24

if.then19:                                        ; preds = %lima_vm_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lima_mmu_switch_vm(ptr noundef nonnull %37, ptr noundef %32) #10
  br label %if.end30

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.cond22.preheader.for.body24_crit_edge
  %i.1104 = phi i32 [ %inc28, %for.body24.for.body24_crit_edge ], [ 0, %for.cond22.preheader.for.body24_crit_edge ]
  %arrayidx25 = getelementptr %struct.lima_sched_pipe, ptr %1, i32 0, i32 7, i32 %i.1104
  %40 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx25, align 4
  %42 = ptrtoint ptr %current_vm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %current_vm, align 8
  tail call void @lima_mmu_switch_vm(ptr noundef %41, ptr noundef %43) #10
  %inc28 = add nuw nsw i32 %i.1104, 1
  %44 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_mmu, align 4
  %cmp23 = icmp slt i32 %inc28, %45
  br i1 %cmp23, label %for.body24.for.body24_crit_edge, label %for.body24.if.end30_crit_edge

for.body24.if.end30_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

if.end30:                                         ; preds = %for.body24.if.end30_crit_edge, %if.then19, %for.cond22.preheader.if.end30_crit_edge
  tail call fastcc void @trace_lima_task_run(ptr noundef %job)
  %error31 = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 16
  %46 = ptrtoint ptr %error31 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %error31, align 4
  %task_run = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 21
  %47 = ptrtoint ptr %task_run to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task_run, align 8
  tail call void %48(ptr noundef %1, ptr noundef %job) #10
  %49 = ptrtoint ptr %fence11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fence11, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then.i.i71, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %50, %if.end30 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i.i ], [ null, %if.then.i.i71 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_sched_timedout_job(ptr noundef %job) #0 align 64 {
entry:
  %map.i = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched, align 4
  %ldev2 = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ldev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ldev2, align 8
  %error = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_sched_stop(ptr noundef %1, ptr noundef %job) #10
  tail call void @drm_sched_increase_karma(ptr noundef %job) #10
  %6 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sched, align 4
  %processor.i = getelementptr inbounds %struct.lima_sched_pipe, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %processor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %processor.i, align 4
  %id.i = getelementptr inbounds %struct.lima_ip, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp.i = icmp ne i32 %11, 10
  %cond.i = zext i1 %cmp.i to i32
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %entity.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 8
  %14 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entity.i, align 8
  %.neg.i = select i1 %cmp.i, i32 -192, i32 -8
  %add.ptr5.i = getelementptr i8, ptr %15, i32 %.neg.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map.i) #10
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %map.i, align 8, !annotation !74
  %error_task_list_lock.i = getelementptr inbounds %struct.lima_device, ptr %13, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %error_task_list_lock.i, i32 noundef 0) #10
  %num_tasks.i = getelementptr inbounds %struct.lima_device, ptr %13, i32 0, i32 19, i32 3
  %17 = ptrtoint ptr %num_tasks.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_tasks.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lima_max_error_tasks to i32))
  %19 = load i32, ptr @lima_max_error_tasks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp6.not.i = icmp ult i32 %18, %19
  br i1 %cmp6.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 8
  %pname.i = getelementptr inbounds %struct.lima_ctx, ptr %add.ptr5.i, i32 0, i32 4
  %pid.i = getelementptr inbounds %struct.lima_ctx, ptr %add.ptr5.i, i32 0, i32 5
  %22 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef %pname.i, i32 noundef %23) #13
  br label %lima_sched_build_error_task_list.exit

if.end.i:                                         ; preds = %if.end
  %frame_size.i = getelementptr inbounds %struct.lima_sched_pipe, ptr %7, i32 0, i32 18
  %24 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_size.i, align 4
  %add9.i = add i32 %25, 64
  %num_bos.i = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 4
  %26 = ptrtoint ptr %num_bos.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_bos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10207.i = icmp sgt i32 %27, 0
  br i1 %cmp10207.i, label %for.body.lr.ph.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %bos.i = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 3
  %28 = ptrtoint ptr %bos.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bos.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0209.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cond.end.i.for.body.i_crit_edge ]
  %size.0208.i = phi i32 [ %add9.i, %for.body.lr.ph.i ], [ %add16.i, %cond.end.i.for.body.i_crit_edge ]
  %arrayidx11.i = getelementptr ptr, ptr %29, i32 %i.0209.i
  %30 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx11.i, align 4
  %add12.i = add i32 %size.0208.i, 16
  %heap_size.i = getelementptr inbounds %struct.lima_bo, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %heap_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %heap_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %cond.false.i, label %for.body.i.cond.end.i_crit_edge

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %size.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body.i.cond.end.i_crit_edge
  %cond15.i = phi i32 [ %35, %cond.false.i ], [ %33, %for.body.i.cond.end.i_crit_edge ]
  %add16.i = add i32 %add12.i, %cond15.i
  %inc.i = add nuw nsw i32 %i.0209.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %27
  br i1 %exitcond.not.i, label %cond.end.i.for.end.i_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cond.end.i.for.end.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %cond.end.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %size.0.lcssa.i = phi i32 [ %add9.i, %if.end.i.for.end.i_crit_edge ], [ %add16.i, %cond.end.i.for.end.i_crit_edge ]
  %add18.i = add i32 %size.0.lcssa.i, 32
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add18.i, i32 noundef 3264, i32 noundef -1) #14
  %tobool20.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not.i, label %do.end24.i, label %if.end26.i

do.end24.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.15, i32 noundef %add18.i) #13
  br label %lima_sched_build_error_task_list.exit

if.end26.i:                                       ; preds = %for.end.i
  %add17.i = add i32 %size.0.lcssa.i, 16
  %add.ptr27.i = getelementptr %struct.lima_sched_error_task, ptr %call.i.i, i32 1
  %data.i = getelementptr inbounds %struct.lima_sched_error_task, ptr %call.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr27.i, ptr %data.i, align 4
  %size28.i = getelementptr inbounds %struct.lima_sched_error_task, ptr %call.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %size28.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add17.i, ptr %size28.i, align 4
  %40 = getelementptr %struct.lima_sched_error_task, ptr %call.i.i, i32 1, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %40, align 4
  %42 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond.i, ptr %add.ptr27.i, align 4
  %size31.i = getelementptr %struct.lima_sched_error_task, ptr %call.i.i, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %size31.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %size.0.lcssa.i, ptr %size31.i, align 4
  %add.ptr32.i = getelementptr %struct.lima_sched_error_task, ptr %call.i.i, i32 2
  %44 = call ptr @memset(ptr %add.ptr32.i, i32 0, i32 16)
  %45 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frame_size.i, align 4
  %size35.i = getelementptr %struct.lima_sched_error_task, ptr %call.i.i, i32 2, i32 0, i32 1
  %47 = ptrtoint ptr %size35.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %size35.i, align 4
  %add.ptr36.i = getelementptr %struct.lima_sched_error_task, ptr %call.i.i, i32 3
  %frame.i = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 2
  %48 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %frame.i, align 4
  %50 = load i32, ptr %frame_size.i, align 4
  %51 = call ptr @memcpy(ptr %add.ptr36.i, ptr %49, i32 %50)
  store i32 1, ptr %40, align 4
  %add.ptr41.i = getelementptr i8, ptr %add.ptr36.i, i32 %46
  %52 = getelementptr inbounds i8, ptr %add.ptr41.i, i32 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 0, ptr %52, align 4
  %54 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %add.ptr41.i, align 4
  %size43.i = getelementptr inbounds %struct.lima_dump_chunk, ptr %add.ptr41.i, i32 0, i32 1
  %55 = ptrtoint ptr %size43.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16, ptr %size43.i, align 4
  %add.ptr44.i = getelementptr %struct.lima_dump_chunk, ptr %add.ptr41.i, i32 1
  %pname45.i = getelementptr inbounds %struct.lima_ctx, ptr %add.ptr5.i, i32 0, i32 4
  %56 = call ptr @memcpy(ptr %add.ptr44.i, ptr %pname45.i, i32 16)
  %57 = load i32, ptr %40, align 4
  %inc48.i = add i32 %57, 1
  store i32 %inc48.i, ptr %40, align 4
  %58 = load i32, ptr %size43.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %add.ptr44.i, i32 %58
  %59 = getelementptr inbounds i8, ptr %add.ptr51.i, i32 4
  %60 = call ptr @memset(ptr %59, i32 0, i32 12)
  %61 = ptrtoint ptr %add.ptr51.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %add.ptr51.i, align 4
  %pid53.i = getelementptr inbounds %struct.lima_ctx, ptr %add.ptr5.i, i32 0, i32 5
  %62 = ptrtoint ptr %pid53.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pid53.i, align 4
  %pid54.i = getelementptr inbounds %struct.lima_dump_chunk_pid, ptr %add.ptr51.i, i32 0, i32 2
  %64 = ptrtoint ptr %pid54.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %pid54.i, align 4
  %65 = load i32, ptr %40, align 4
  %inc56.i = add i32 %65, 1
  store i32 %inc56.i, ptr %40, align 4
  %66 = ptrtoint ptr %num_bos.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_bos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp62210.i = icmp sgt i32 %67, 0
  br i1 %cmp62210.i, label %for.body63.lr.ph.i, label %if.end26.i.for.end103.i_crit_edge

if.end26.i.for.end103.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end103.i

for.body63.lr.ph.i:                               ; preds = %if.end26.i
  %add.ptr57.i = getelementptr %struct.lima_dump_chunk_pid, ptr %add.ptr51.i, i32 1
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %59, align 4
  %add.ptr59.i = getelementptr i8, ptr %add.ptr57.i, i32 %69
  %bos65.i = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 3
  %vm.i = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 1
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.inc101.i.for.body63.i_crit_edge, %for.body63.lr.ph.i
  %i.1213.i = phi i32 [ 0, %for.body63.lr.ph.i ], [ %inc102.i, %for.inc101.i.for.body63.i_crit_edge ]
  %buffer_chunk.0211.i = phi ptr [ %add.ptr59.i, %for.body63.lr.ph.i ], [ %add.ptr97.i, %for.inc101.i.for.body63.i_crit_edge ]
  %70 = ptrtoint ptr %bos65.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bos65.i, align 8
  %arrayidx66.i = getelementptr ptr, ptr %71, i32 %i.1213.i
  %72 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx66.i, align 4
  %74 = getelementptr inbounds i8, ptr %buffer_chunk.0211.i, i32 4
  %75 = call ptr @memset(ptr %74, i32 0, i32 12)
  %76 = ptrtoint ptr %buffer_chunk.0211.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %buffer_chunk.0211.i, align 4
  %77 = ptrtoint ptr %vm.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vm.i, align 8
  %call69.i = call i32 @lima_vm_get_va(ptr noundef %78, ptr noundef %73) #10
  %va.i = getelementptr inbounds %struct.lima_dump_chunk_buffer, ptr %buffer_chunk.0211.i, i32 0, i32 2
  %79 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call69.i, ptr %va.i, align 4
  %heap_size70.i = getelementptr inbounds %struct.lima_bo, ptr %73, i32 0, i32 3
  %80 = ptrtoint ptr %heap_size70.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %heap_size70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool71.not.i = icmp eq i32 %81, 0
  br i1 %tobool71.not.i, label %if.else.i, label %if.then72.i

if.then72.i:                                      ; preds = %for.body63.i
  %82 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %74, align 4
  %pages.i = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %73, i32 0, i32 2
  %83 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pages.i, align 4
  %85 = ptrtoint ptr %heap_size70.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %heap_size70.i, align 4
  %shr.i = lshr i32 %86, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %87 = load i32, ptr @pgprot_kernel, align 4
  %or.i = and i32 %87, -573
  %or77.i = or i32 %or.i, 516
  %call78.i = call ptr @vmap(ptr noundef %84, i32 noundef %shr.i, i32 noundef 4, i32 noundef %or77.i) #10
  %tobool79.not.i = icmp eq ptr %call78.i, null
  br i1 %tobool79.not.i, label %if.then80.i, label %if.end81.i

if.then80.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kvfree(ptr noundef nonnull %call.i.i) #10
  br label %lima_sched_build_error_task_list.exit

if.end81.i:                                       ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr82.i = getelementptr %struct.lima_dump_chunk_buffer, ptr %buffer_chunk.0211.i, i32 1
  %88 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %74, align 4
  %90 = call ptr @memcpy(ptr %add.ptr82.i, ptr %call78.i, i32 %89)
  call void @vunmap(ptr noundef nonnull %call78.i) #10
  br label %for.inc101.i

if.else.i:                                        ; preds = %for.body63.i
  %size.i203.i = getelementptr inbounds %struct.drm_gem_object, ptr %73, i32 0, i32 5
  %91 = ptrtoint ptr %size.i203.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %size.i203.i, align 8
  %93 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %74, align 4
  %call87.i = call i32 @drm_gem_shmem_vmap(ptr noundef %73, ptr noundef nonnull %map.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end90.i, label %if.then89.i

if.then89.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kvfree(ptr noundef nonnull %call.i.i) #10
  br label %lima_sched_build_error_task_list.exit

if.end90.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr91.i = getelementptr %struct.lima_dump_chunk_buffer, ptr %buffer_chunk.0211.i, i32 1
  %94 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %map.i, align 8
  %96 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %74, align 4
  %98 = call ptr @memcpy(ptr %add.ptr91.i, ptr %95, i32 %97)
  call void @drm_gem_shmem_vunmap(ptr noundef %73, ptr noundef nonnull %map.i) #10
  br label %for.inc101.i

for.inc101.i:                                     ; preds = %if.end90.i, %if.end81.i
  %add.ptr95.i = getelementptr %struct.lima_dump_chunk_buffer, ptr %buffer_chunk.0211.i, i32 1
  %99 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %74, align 4
  %add.ptr97.i = getelementptr i8, ptr %add.ptr95.i, i32 %100
  %101 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %40, align 4
  %inc99.i = add i32 %102, 1
  store i32 %inc99.i, ptr %40, align 4
  %inc102.i = add nuw nsw i32 %i.1213.i, 1
  %103 = ptrtoint ptr %num_bos.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_bos.i, align 4
  %cmp62.i = icmp slt i32 %inc102.i, %104
  br i1 %cmp62.i, label %for.inc101.i.for.body63.i_crit_edge, label %for.inc101.i.for.end103.i_crit_edge

for.inc101.i.for.end103.i_crit_edge:              ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end103.i

for.inc101.i.for.body63.i_crit_edge:              ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63.i

for.end103.i:                                     ; preds = %for.inc101.i.for.end103.i_crit_edge, %if.end26.i.for.end103.i_crit_edge
  %error_task_list.i = getelementptr inbounds %struct.lima_device, ptr %13, i32 0, i32 20
  %105 = ptrtoint ptr %error_task_list.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %error_task_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %error_task_list.i, ptr noundef %106) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end103.i.list_add.exit.i_crit_edge

for.end103.i.list_add.exit.i_crit_edge:           ; preds = %for.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %for.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i.i, ptr %prev1.i.i.i, align 4
  %108 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %106, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %error_task_list.i, ptr %prev3.i.i.i, align 4
  %110 = ptrtoint ptr %error_task_list.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %call.i.i, ptr %error_task_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %for.end103.i.list_add.exit.i_crit_edge
  %111 = ptrtoint ptr %size28.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size28.i, align 4
  %size106.i = getelementptr inbounds %struct.lima_device, ptr %13, i32 0, i32 19, i32 4
  %113 = ptrtoint ptr %size106.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %size106.i, align 4
  %add107.i = add i32 %114, %112
  store i32 %add107.i, ptr %size106.i, align 4
  %115 = ptrtoint ptr %num_tasks.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_tasks.i, align 8
  %inc110.i = add i32 %116, 1
  store i32 %inc110.i, ptr %num_tasks.i, align 8
  %117 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %13, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %118, ptr noundef nonnull @.str.19) #13
  br label %lima_sched_build_error_task_list.exit

lima_sched_build_error_task_list.exit:            ; preds = %list_add.exit.i, %if.then89.i, %if.then80.i, %do.end24.i, %do.end.i
  call void @mutex_unlock(ptr noundef %error_task_list_lock.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map.i) #10
  %task_error = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 23
  %119 = ptrtoint ptr %task_error to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task_error, align 8
  call void %120(ptr noundef %1) #10
  %bcast_mmu = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 14
  %121 = ptrtoint ptr %bcast_mmu to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bcast_mmu, align 4
  %tobool5.not = icmp eq ptr %122, null
  br i1 %tobool5.not, label %for.cond.preheader, label %if.then6

for.cond.preheader:                               ; preds = %lima_sched_build_error_task_list.exit
  %num_mmu = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 8
  %123 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_mmu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp33 = icmp sgt i32 %124, 0
  br i1 %cmp33, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end8_crit_edge

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then6:                                         ; preds = %lima_sched_build_error_task_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @lima_mmu_page_fault_resume(ptr noundef nonnull %122) #10
  br label %if.end8

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lima_sched_pipe, ptr %1, i32 0, i32 7, i32 %i.034
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx, align 4
  call void @lima_mmu_page_fault_resume(ptr noundef %126) #10
  %inc = add nuw nsw i32 %i.034, 1
  %127 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_mmu, align 4
  %cmp = icmp slt i32 %inc, %128
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end8:                                          ; preds = %for.body.if.end8_crit_edge, %if.then6, %for.cond.preheader.if.end8_crit_edge
  %current_vm = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 6
  %129 = ptrtoint ptr %current_vm to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %current_vm, align 8
  %tobool.not.i30 = icmp eq ptr %130, null
  br i1 %tobool.not.i30, label %if.end8.lima_vm_put.exit_crit_edge, label %if.then.i

if.end8.lima_vm_put.exit_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %lima_vm_put.exit

if.then.i:                                        ; preds = %if.end8
  %refcount.i = getelementptr inbounds %struct.lima_vm, ptr %130, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %131 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %131, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !60

if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lima_vm_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %lima_vm_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @lima_vm_release(ptr noundef %refcount.i) #10, !callees !64
  br label %lima_vm_put.exit

lima_vm_put.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge, %if.end8.lima_vm_put.exit_crit_edge
  %132 = ptrtoint ptr %current_vm to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %current_vm, align 8
  %current_task = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 5
  %133 = ptrtoint ptr %current_task to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %current_task, align 4
  %devfreq.i = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 18
  call void @lima_devfreq_record_idle(ptr noundef %devfreq.i) #10
  %134 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %3, align 8
  %call.i.i32 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %135, i32 0, i32 12, i32 22
  %136 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store volatile i64 %call.i.i32, ptr %last_busy.i.i, align 8
  %137 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %3, align 8
  %call.i4.i = call i32 @__pm_runtime_suspend(ptr noundef %138, i32 noundef 13) #10
  call void @drm_sched_resubmit_jobs(ptr noundef %1) #10
  call void @drm_sched_start(ptr noundef %1, i1 noundef zeroext true) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_sched_free_job(ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched, align 4
  %vm2 = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 1
  %2 = ptrtoint ptr %vm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm2, align 8
  %bos3 = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 3
  %4 = ptrtoint ptr %bos3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bos3, align 8
  %fence = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 7
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.dma_fence_put.exit_crit_edge, label %if.then.i

entry.dma_fence_put.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !60

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10, !callees !64
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %entry.dma_fence_put.exit_crit_edge
  %num_bos = getelementptr inbounds %struct.lima_sched_task, ptr %job, i32 0, i32 4
  %9 = ptrtoint ptr %num_bos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_bos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12 = icmp sgt i32 %10, 0
  br i1 %cmp12, label %dma_fence_put.exit.for.body_crit_edge, label %dma_fence_put.exit.for.end_crit_edge

dma_fence_put.exit.for.end_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

dma_fence_put.exit.for.body_crit_edge:            ; preds = %dma_fence_put.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %dma_fence_put.exit.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %dma_fence_put.exit.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.013
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @lima_vm_bo_del(ptr noundef %3, ptr noundef %12) #10
  %inc = add nuw nsw i32 %i.013, 1
  %13 = ptrtoint ptr %num_bos to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_bos, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %dma_fence_put.exit.for.end_crit_edge
  tail call void @lima_sched_task_fini(ptr noundef %job)
  %task_slab = getelementptr inbounds %struct.lima_sched_pipe, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %task_slab to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task_slab, align 8
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef %job) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_mmu_switch_vm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_lima_task_run(ptr noundef %task) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_lima_task_run, i32 0, i32 1), ptr blockaddress(@trace_lima_task_run, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !65

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !48) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !60

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %call42 = tail call i32 @__traceiter_lima_task_run(ptr noundef null, ptr noundef %task) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %13 = tail call i32 @llvm.read_register.i32(metadata !48) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !48) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !60

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_lima_task_run, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_lima_task_run, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_lima_task_run.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_lima_task_run.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 43, ptr noundef nonnull @.str.5) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %31 = tail call i32 @llvm.read_register.i32(metadata !48) #10
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
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @lima_fence_get_driver_name(ptr nocapture noundef readnone %fence) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @lima_fence_get_timeline_name(ptr nocapture noundef readonly %fence) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.lima_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_fence_release(ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %0, ptr noundef nonnull @lima_fence_release_rcu) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_fence_release_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -8
  %0 = load ptr, ptr @lima_fence_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_devfreq_record_busy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_lima_task_run(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_increase_karma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_mmu_page_fault_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_resubmit_jobs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_start(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_vm_get_va(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_vm_bo_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_devfreq_record_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 31, i32 4}
!2 = !{ptr @lima_sched_pipe_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 486, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @lima_sched_pipe_init.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 488, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @lima_fence_slab, !9, !"lima_fence_slab", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 24, i32 27}
!10 = !{ptr @lima_fence_slab_refcnt, !11, !"lima_fence_slab_refcnt", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 25, i32 12}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/lima/lima_trace.h", i32 35, i32 1}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lima_sched_ops, !21, !"lima_sched_ops", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 454, i32 43}
!22 = !{ptr @lima_fence_ops, !23, !"lima_fence_ops", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 81, i32 35}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 56, i32 9}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/lima/lima_trace.h", i32 40, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 406, i32 3}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 293, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @lima_sched_build_error_task_list._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @lima_sched_build_error_task_list._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 316, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @lima_sched_build_error_task_list._entry.14, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @lima_sched_build_error_task_list._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/lima/lima_sched.c", i32 393, i32 2}
!46 = !{ptr @lima_sched_build_error_task_list._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @lima_sched_build_error_task_list._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148441658, i64 2148441690, i64 2148441719, i64 2148441753, i64 2148441784, i64 2148441807}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2148529659}
!62 = !{i64 2148444123, i64 2148444155, i64 2148444184, i64 2148444218, i64 2148444249, i64 2148444272}
!63 = !{i64 2149694209}
!64 = !{ptr @dma_fence_release, ptr @drm_gem_object_free, ptr @lima_vm_release}
!65 = !{i64 2148171207, i64 2148171212, i64 2148171225, i64 2148171269, i64 2148171303, i64 2148171324}
!66 = !{i64 2154473949}
!67 = !{i64 2154474152}
!68 = !{i64 2149339971}
!69 = !{i64 2149341007}
!70 = !{i8 0, i8 2}
!71 = !{i64 2148439547}
!72 = !{i64 926147, i64 926172, i64 926194, i64 926210, i64 926222, i64 926242, i64 926266, i64 926282, i64 926294}
!73 = !{i64 2148439735}
!74 = !{!"auto-init"}
!75 = !{i64 2154494148}
!76 = !{i64 2154494345}
