; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panfrost/panfrost_job.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_job.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panfrost_job = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, i64, i32, i32, ptr, ptr, i32, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.83, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.83 = type { %struct.irq_work }
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
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.90, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.anon.90 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
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
%struct.panfrost_gem_mapping = type { %struct.list_head, %struct.kref, ptr, %struct.drm_mm_node, ptr, i8 }
%struct.panfrost_gem_object = type { %struct.drm_gem_shmem_object, ptr, %struct.anon.99, %struct.atomic_t, i8 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.anon.99 = type { %struct.list_head, %struct.mutex }
%struct.panfrost_job_slot = type { [3 x %struct.panfrost_queue_state], %struct.spinlock, i32 }
%struct.panfrost_queue_state = type { %struct.drm_gpu_scheduler, i64, i64 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.panfrost_file_priv = type { ptr, [3 x %struct.drm_sched_entity], ptr }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.panfrost_fence = type { %struct.dma_fence, ptr, i64, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@panfrost_job_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&pfdev->reset.work)\00", [58 x i8] zeroinitializer }, align 32
@panfrost_job_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&js->job_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"job\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panfrost-job\00", [19 x i8] zeroinitializer }, align 32
@panfrost_job_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 799, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request job irq\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"panfrost_job_init\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/panfrost/panfrost_job.c\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@panfrost_job_init._entry_ptr = internal global ptr @panfrost_job_init._entry, section ".printk_index", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"panfrost-reset\00", [17 x i8] zeroinitializer }, align 32
@panfrost_sched_ops = internal constant { %struct.drm_sched_backend_ops, [16 x i8] } { %struct.drm_sched_backend_ops { ptr null, ptr @panfrost_job_run, ptr @panfrost_job_timedout, ptr @panfrost_job_free }, [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pan_js\00", [25 x i8] zeroinitializer }, align 32
@panfrost_job_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.7, i32 817, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create scheduler: %d.\00", [32 x i8] zeroinitializer }, align 32
@panfrost_job_init._entry_ptr.14 = internal global ptr @panfrost_job_init._entry.12, section ".printk_index", align 4
@panfrost_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 649, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Soft-stop failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"panfrost_reset\00", [17 x i8] zeroinitializer }, align 32
@panfrost_reset._entry_ptr = internal global ptr @panfrost_reset._entry, section ".printk_index", align 4
@panfrost_job_handle_err.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.7, ptr @.str.19, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"panfrost\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"panfrost_job_handle_err\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"js event, js=%d, status=%s, head=0x%x, tail=0x%x\00", [47 x i8] zeroinitializer }, align 32
@panfrost_job_handle_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.7, i32 411, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"js fault, js=%d, status=%s, head=0x%x, tail=0x%x\00", [47 x i8] zeroinitializer }, align 32
@panfrost_job_handle_err._entry_ptr = internal global ptr @panfrost_job_handle_err._entry, section ".printk_index", align 4
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@panfrost_fence_ops = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @panfrost_fence_get_driver_name, ptr @panfrost_fence_get_timeline_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"panfrost-js-0\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"panfrost-js-1\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"panfrost-js-2\00", [18 x i8] zeroinitializer }, align 32
@panfrost_job_hw_submit.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.25, ptr @.str.7, ptr @.str.26, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panfrost_job_hw_submit\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"JS: Submitting atom %p to js[%d][%d] with head=0x%llx AS %d\00", [36 x i8] zeroinitializer }, align 32
@panfrost_job_timedout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.7, i32 724, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"gpu sched timeout, js=%d, config=0x%x, status=0x%x, head=0x%x, tail=0x%x, sched_job=%p\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panfrost_job_timedout\00", [42 x i8] zeroinitializer }, align 32
@panfrost_job_timedout._entry_ptr = internal global ptr @panfrost_job_timedout._entry, section ".printk_index", align 4
@switch.table.panfrost_fence_get_timeline_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 50331648, i64 67108864]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 786, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 787, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 789, i32 68 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 796, i32 19 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 799, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 803, i32 20 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"panfrost_sched_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 740, i32 43 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 815, i32 16 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 817, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 649, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 403, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 408, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 545, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"panfrost_fence_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 82, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 72, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 74, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 76, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 236, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [43 x i8] c"../drivers/gpu/drm/panfrost/panfrost_job.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 718, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [46 x i8] c"switch.table.panfrost_fence_get_timeline_name\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @panfrost_job_handle_err._entry, ptr @panfrost_job_handle_err._entry_ptr, ptr @panfrost_job_init._entry, ptr @panfrost_job_init._entry.12, ptr @panfrost_job_init._entry_ptr, ptr @panfrost_job_init._entry_ptr.14, ptr @panfrost_job_timedout._entry, ptr @panfrost_job_timedout._entry_ptr, ptr @panfrost_reset._entry, ptr @panfrost_reset._entry_ptr, ptr @panfrost_job_init.__key, ptr @.str, ptr @panfrost_job_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @panfrost_sched_ops, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @panfrost_fence_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @switch.table.panfrost_fence_get_timeline_name], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_job_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_job_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_job_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_sched_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_job_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_job_handle_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_fence_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_job_timedout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.panfrost_fence_get_timeline_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @panfrost_job_get_slot(ptr nocapture noundef readonly %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %requirements = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 6
  %0 = ptrtoint ptr %requirements to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requirements, align 8
  %and = and i32 %1, 1
  %2 = xor i32 %and, 1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_job_push(ptr noundef %job) local_unnamed_addr #1 align 64 {
entry:
  %acquire_ctx = alloca %struct.ww_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pfdev1 = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 2
  %0 = ptrtoint ptr %pfdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfdev1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %acquire_ctx) #9
  %2 = call ptr @memset(ptr %acquire_ctx, i32 255, i32 64)
  %bos = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 9
  %3 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bos, align 4
  %bo_count = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 10
  %5 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bo_count, align 8
  %call = call i32 @drm_gem_lock_reservations(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %acquire_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sched_lock = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 22
  call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #9
  call void @drm_sched_job_arm(ptr noundef %job) #9
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %7 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %8, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %finished, null
  br i1 %tobool.not.i, label %if.end.dma_fence_get.exit_crit_edge, label %if.then.i

if.end.dma_fence_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.drm_sched_fence, ptr %8, i32 0, i32 1, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !70
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !71

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !72

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end.dma_fence_get.exit_crit_edge
  %render_done_fence = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 11
  %11 = ptrtoint ptr %render_done_fence to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %finished, ptr %render_done_fence, align 4
  %12 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bos, align 4
  %14 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bo_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.i = icmp sgt i32 %15, 0
  br i1 %cmp5.i, label %dma_fence_get.exit.for.body.i_crit_edge, label %dma_fence_get.exit.if.end11_crit_edge

dma_fence_get.exit.if.end11_crit_edge:            ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

dma_fence_get.exit.for.body.i_crit_edge:          ; preds = %dma_fence_get.exit
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.cond.i.if.end11_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.if.end11_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %dma_fence_get.exit.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %dma_fence_get.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %i.06.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @drm_sched_job_add_implicit_dependencies(ptr noundef %job, ptr noundef %17, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i41 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i41, label %for.cond.i, label %if.then9

if.then9:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %sched_lock) #9
  br label %unlock

if.end11:                                         ; preds = %for.cond.i.if.end11_crit_edge, %dma_fence_get.exit.if.end11_crit_edge
  %refcount = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end11.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !71

if.end11.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end11
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !72

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  call void @drm_sched_entity_push_job(ptr noundef %job) #9
  call void @mutex_unlock(ptr noundef %sched_lock) #9
  %20 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bos, align 4
  %22 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bo_count, align 8
  %24 = ptrtoint ptr %render_done_fence to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %render_done_fence, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp3.i = icmp sgt i32 %23, 0
  br i1 %cmp3.i, label %kref_get.exit.for.body.i45_crit_edge, label %kref_get.exit.unlock_crit_edge

kref_get.exit.unlock_crit_edge:                   ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

kref_get.exit.for.body.i45_crit_edge:             ; preds = %kref_get.exit
  br label %for.body.i45

for.body.i45:                                     ; preds = %for.body.i45.for.body.i45_crit_edge, %kref_get.exit.for.body.i45_crit_edge
  %i.04.i = phi i32 [ %inc.i43, %for.body.i45.for.body.i45_crit_edge ], [ 0, %kref_get.exit.for.body.i45_crit_edge ]
  %arrayidx.i42 = getelementptr ptr, ptr %21, i32 %i.04.i
  %26 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i42, align 4
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resv.i, align 8
  call void @dma_resv_add_excl_fence(ptr noundef %29, ptr noundef %25) #9
  %inc.i43 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, %23
  br i1 %exitcond.not.i44, label %for.body.i45.unlock_crit_edge, label %for.body.i45.for.body.i45_crit_edge

for.body.i45.for.body.i45_crit_edge:              ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i45

for.body.i45.unlock_crit_edge:                    ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

unlock:                                           ; preds = %for.body.i45.unlock_crit_edge, %kref_get.exit.unlock_crit_edge, %if.then9
  %retval.0.i48 = phi i32 [ %call.i, %if.then9 ], [ 0, %kref_get.exit.unlock_crit_edge ], [ 0, %for.body.i45.unlock_crit_edge ]
  %30 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bos, align 4
  %32 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bo_count, align 8
  call void @drm_gem_unlock_reservations(ptr noundef %31, i32 noundef %33, ptr noundef nonnull %acquire_ctx) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i48, %unlock ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %acquire_ctx) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_lock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_unlock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_job_put(ptr noundef %job) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !72

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  %done_fence.i = getelementptr %struct.panfrost_job, ptr %job, i32 0, i32 4
  %1 = ptrtoint ptr %done_fence.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %done_fence.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.dma_fence_put.exit.i_crit_edge, label %if.then.i.i

if.then.i.dma_fence_put.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !72

if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %dma_fence_put.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @dma_fence_release(ptr noundef %refcount.i.i) #9, !callees !76
  br label %dma_fence_put.exit.i

dma_fence_put.exit.i:                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge, %if.then.i.dma_fence_put.exit.i_crit_edge
  %render_done_fence.i = getelementptr %struct.panfrost_job, ptr %job, i32 0, i32 11
  %4 = ptrtoint ptr %render_done_fence.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %render_done_fence.i, align 4
  %tobool.not.i42.i = icmp eq ptr %5, null
  br i1 %tobool.not.i42.i, label %dma_fence_put.exit.i.dma_fence_put.exit52.i_crit_edge, label %if.then.i47.i

dma_fence_put.exit.i.dma_fence_put.exit52.i_crit_edge: ; preds = %dma_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit52.i

if.then.i47.i:                                    ; preds = %dma_fence_put.exit.i
  %refcount.i43.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  %call.i.i.i.i.i.i.i44.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i43.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %refcount.i43.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i43.i, ptr %refcount.i43.i, i32 1, ptr elementtype(i32) %refcount.i43.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i45.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i45.i)
  %cmp.i.i.i.i.i46.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i45.i, 1
  br i1 %cmp.i.i.i.i.i46.i, label %if.then.i.i51.i, label %if.end5.i.i.i.i.i49.i

if.end5.i.i.i.i.i49.i:                            ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i45.i)
  %.not.i.i.i.i.i48.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i45.i, 0
  br i1 %.not.i.i.i.i.i48.i, label %if.end5.i.i.i.i.i49.i.dma_fence_put.exit52.i_crit_edge, label %if.then10.i.i.i.i.i50.i, !prof !72

if.end5.i.i.i.i.i49.i.dma_fence_put.exit52.i_crit_edge: ; preds = %if.end5.i.i.i.i.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit52.i

if.then10.i.i.i.i.i50.i:                          ; preds = %if.end5.i.i.i.i.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i43.i, i32 noundef 3) #9
  br label %dma_fence_put.exit52.i

if.then.i.i51.i:                                  ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @dma_fence_release(ptr noundef %refcount.i43.i) #9, !callees !76
  br label %dma_fence_put.exit52.i

dma_fence_put.exit52.i:                           ; preds = %if.then.i.i51.i, %if.then10.i.i.i.i.i50.i, %if.end5.i.i.i.i.i49.i.dma_fence_put.exit52.i_crit_edge, %dma_fence_put.exit.i.dma_fence_put.exit52.i_crit_edge
  %mappings.i = getelementptr %struct.panfrost_job, ptr %job, i32 0, i32 8
  %7 = ptrtoint ptr %mappings.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mappings.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %dma_fence_put.exit52.i.if.end9.i_crit_edge, label %for.cond.preheader.i

dma_fence_put.exit52.i.if.end9.i_crit_edge:       ; preds = %dma_fence_put.exit52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

for.cond.preheader.i:                             ; preds = %dma_fence_put.exit52.i
  %bo_count.i = getelementptr %struct.panfrost_job, ptr %job, i32 0, i32 10
  %9 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bo_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp55.not.i = icmp eq i32 %10, 0
  br i1 %cmp55.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.056.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %mappings.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mappings.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %i.056.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %obj.i = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %obj.i, align 4
  %gpu_usecount.i = getelementptr inbounds %struct.panfrost_gem_object, ptr %16, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gpu_usecount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %gpu_usecount.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gpu_usecount.i, ptr %gpu_usecount.i, i32 1, ptr elementtype(i32) %gpu_usecount.i) #9, !srcloc !77
  %18 = ptrtoint ptr %mappings.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mappings.i, align 8
  %arrayidx7.i = getelementptr ptr, ptr %19, i32 %i.056.i
  %20 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7.i, align 4
  tail call void @panfrost_gem_mapping_put(ptr noundef %21) #9
  %inc.i = add nuw i32 %i.056.i, 1
  %22 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bo_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %24 = ptrtoint ptr %mappings.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mappings.i, align 8
  tail call void @kvfree(ptr noundef %25) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.end.i, %dma_fence_put.exit52.i.if.end9.i_crit_edge
  %bos.i = getelementptr %struct.panfrost_job, ptr %job, i32 0, i32 9
  %26 = ptrtoint ptr %bos.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bos.i, align 4
  %tobool10.not.i = icmp eq ptr %27, null
  br i1 %tobool10.not.i, label %if.end9.i.panfrost_job_cleanup.exit_crit_edge, label %for.cond12.preheader.i

if.end9.i.panfrost_job_cleanup.exit_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_job_cleanup.exit

for.cond12.preheader.i:                           ; preds = %if.end9.i
  %bo_count13.i = getelementptr %struct.panfrost_job, ptr %job, i32 0, i32 10
  %28 = ptrtoint ptr %bo_count13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bo_count13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1457.not.i = icmp eq i32 %29, 0
  br i1 %cmp1457.not.i, label %for.cond12.preheader.i.for.end20.i_crit_edge, label %for.cond12.preheader.i.for.body15.i_crit_edge

for.cond12.preheader.i.for.body15.i_crit_edge:    ; preds = %for.cond12.preheader.i
  br label %for.body15.i

for.cond12.preheader.i.for.end20.i_crit_edge:     ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end20.i

for.body15.i:                                     ; preds = %drm_gem_object_put.exit.i.for.body15.i_crit_edge, %for.cond12.preheader.i.for.body15.i_crit_edge
  %i.158.i = phi i32 [ %inc19.i, %drm_gem_object_put.exit.i.for.body15.i_crit_edge ], [ 0, %for.cond12.preheader.i.for.body15.i_crit_edge ]
  %30 = ptrtoint ptr %bos.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bos.i, align 4
  %arrayidx17.i = getelementptr ptr, ptr %31, i32 %i.158.i
  %32 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx17.i, align 4
  %tobool.not.i53.i = icmp eq ptr %33, null
  br i1 %tobool.not.i53.i, label %for.body15.i.drm_gem_object_put.exit.i_crit_edge, label %if.then.i54.i

for.body15.i.drm_gem_object_put.exit.i_crit_edge: ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit.i

if.then.i54.i:                                    ; preds = %for.body15.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %33, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr nonnull %33, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !72

if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %33, i32 noundef 3) #9
  br label %drm_gem_object_put.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @drm_gem_object_free(ptr noundef nonnull %33) #9, !callees !76
  br label %drm_gem_object_put.exit.i

drm_gem_object_put.exit.i:                        ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, %for.body15.i.drm_gem_object_put.exit.i_crit_edge
  %inc19.i = add nuw i32 %i.158.i, 1
  %35 = ptrtoint ptr %bo_count13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bo_count13.i, align 8
  %cmp14.i = icmp ult i32 %inc19.i, %36
  br i1 %cmp14.i, label %drm_gem_object_put.exit.i.for.body15.i_crit_edge, label %drm_gem_object_put.exit.i.for.end20.i_crit_edge

drm_gem_object_put.exit.i.for.end20.i_crit_edge:  ; preds = %drm_gem_object_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end20.i

drm_gem_object_put.exit.i.for.body15.i_crit_edge: ; preds = %drm_gem_object_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i

for.end20.i:                                      ; preds = %drm_gem_object_put.exit.i.for.end20.i_crit_edge, %for.cond12.preheader.i.for.end20.i_crit_edge
  %37 = ptrtoint ptr %bos.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bos.i, align 4
  tail call void @kvfree(ptr noundef %38) #9
  br label %panfrost_job_cleanup.exit

panfrost_job_cleanup.exit:                        ; preds = %for.end20.i, %if.end9.i.panfrost_job_cleanup.exit_crit_edge
  tail call void @kfree(ptr noundef %job) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %panfrost_job_cleanup.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_job_enable_interrupts(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @arm_heavy_mb() #9
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117442304) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 117442304) #9, !srcloc !79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_job_init(ptr noundef %pfdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 23
  %0 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hw_features.i, align 4
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  %spec.select = select i1 %tobool.i.not, i32 1, i32 2
  %3 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pfdev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 1752, i32 noundef 3520) #9
  %js2 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 18
  %5 = ptrtoint ptr %js2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %js2, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %reset = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23
  %work = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %6 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @panfrost_job_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry11 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 1, i32 1
  %7 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 1, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @panfrost_reset_work, ptr %func, align 4
  %job_lock = getelementptr inbounds %struct.panfrost_job_slot, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %job_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @panfrost_job_init.__key.1, i16 noundef signext 3) #9
  %10 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pfdev, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 -16
  %call19 = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.3) #9
  %irq = getelementptr inbounds %struct.panfrost_job_slot, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call19, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp = icmp slt i32 %call19, 1
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end22

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %do.body
  %13 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pfdev, align 8
  %call25 = tail call i32 @devm_request_threaded_irq(ptr noundef %14, i32 noundef %call19, ptr noundef nonnull @panfrost_job_irq_handler, ptr noundef nonnull @panfrost_job_irq_handler_thread, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %pfdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %call33 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.10, i32 noundef 655362, i32 noundef 1) #9
  %17 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call33, ptr %reset, align 8
  %tobool37.not = icmp eq ptr %call33, null
  br i1 %tobool37.not, label %if.end32.cleanup_crit_edge, label %for.body.preheader

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end32
  %call41 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #9
  %fence_context = getelementptr [3 x %struct.panfrost_queue_state], ptr %call.i, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %fence_context to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call41, ptr %fence_context, align 8
  %19 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset, align 8
  %call47 = tail call i32 @drm_sched_init(ptr noundef nonnull %call.i, ptr noundef nonnull @panfrost_sched_ops, i32 noundef %spec.select, i32 noundef 0, i32 noundef 50, ptr noundef %20, ptr noundef null, ptr noundef nonnull @.str.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %for.inc, label %do.end52

do.end52:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef %call47) #12
  br label %for.end63

for.body57.preheader:                             ; preds = %for.inc.1.for.body57.preheader_crit_edge, %for.inc.for.body57.preheader_crit_edge
  %j.0105.lcssa.ph = phi i32 [ 1, %for.inc.1.for.body57.preheader_crit_edge ], [ 0, %for.inc.for.body57.preheader_crit_edge ]
  %call47.lcssa.ph = phi i32 [ %call47.2, %for.inc.1.for.body57.preheader_crit_edge ], [ %call47.1, %for.inc.for.body57.preheader_crit_edge ]
  %23 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef %call47.lcssa.ph) #12
  %arrayidx59 = getelementptr [3 x %struct.panfrost_queue_state], ptr %call.i, i32 0, i32 %j.0105.lcssa.ph
  tail call void @drm_sched_fini(ptr noundef %arrayidx59) #9
  br i1 %tobool48.not.1, label %for.body57.1, label %for.body57.preheader.for.end63_crit_edge

for.body57.preheader.for.end63_crit_edge:         ; preds = %for.body57.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end63

for.inc:                                          ; preds = %for.body.preheader
  %call41.1 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #9
  %arrayidx.1 = getelementptr [3 x %struct.panfrost_queue_state], ptr %call.i, i32 0, i32 1
  %fence_context.1 = getelementptr [3 x %struct.panfrost_queue_state], ptr %call.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %fence_context.1 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call41.1, ptr %fence_context.1, align 8
  %26 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reset, align 8
  %call47.1 = tail call i32 @drm_sched_init(ptr noundef %arrayidx.1, ptr noundef nonnull @panfrost_sched_ops, i32 noundef %spec.select, i32 noundef 0, i32 noundef 50, ptr noundef %27, ptr noundef null, ptr noundef nonnull @.str.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.1)
  %tobool48.not.1 = icmp eq i32 %call47.1, 0
  br i1 %tobool48.not.1, label %for.inc.1, label %for.inc.for.body57.preheader_crit_edge

for.inc.for.body57.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.preheader

for.inc.1:                                        ; preds = %for.inc
  %call41.2 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #9
  %arrayidx.2 = getelementptr [3 x %struct.panfrost_queue_state], ptr %call.i, i32 0, i32 2
  %fence_context.2 = getelementptr [3 x %struct.panfrost_queue_state], ptr %call.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %fence_context.2 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call41.2, ptr %fence_context.2, align 8
  %29 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reset, align 8
  %call47.2 = tail call i32 @drm_sched_init(ptr noundef %arrayidx.2, ptr noundef nonnull @panfrost_sched_ops, i32 noundef %spec.select, i32 noundef 0, i32 noundef 50, ptr noundef %30, ptr noundef null, ptr noundef nonnull @.str.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.2)
  %tobool48.not.2 = icmp eq i32 %call47.2, 0
  br i1 %tobool48.not.2, label %for.inc.2, label %for.inc.1.for.body57.preheader_crit_edge

for.inc.1.for.body57.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.preheader

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @arm_heavy_mb() #9
  %iomem.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %31 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117442304) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iomem.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %34, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 117442304) #9, !srcloc !79
  br label %cleanup

for.body57.1:                                     ; preds = %for.body57.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %j.1 = add nsw i32 %j.0105.lcssa.ph, -1
  %arrayidx59.1 = getelementptr [3 x %struct.panfrost_queue_state], ptr %call.i, i32 0, i32 %j.1
  tail call void @drm_sched_fini(ptr noundef %arrayidx59.1) #9
  br label %for.end63

for.end63:                                        ; preds = %for.body57.1, %for.body57.preheader.for.end63_crit_edge, %do.end52
  %call47.lcssa114 = phi i32 [ %call47, %do.end52 ], [ %call47.lcssa.ph, %for.body57.1 ], [ %call47.lcssa.ph, %for.body57.preheader.for.end63_crit_edge ]
  %35 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reset, align 8
  tail call void @destroy_workqueue(ptr noundef %36) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end63, %for.inc.2, %if.end32.cleanup_crit_edge, %do.end30, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %do.end30 ], [ %call47.lcssa114, %for.end63 ], [ 0, %for.inc.2 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %do.body.cleanup_crit_edge ], [ -12, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panfrost_reset_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -468
  tail call fastcc void @panfrost_reset(ptr noundef %add.ptr, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_job_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iomem, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #9, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_job_irq_handler_thread(i32 noundef %irq, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @panfrost_job_handle_irqs(ptr noundef %data)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117442304) #9, !srcloc !79
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_job_fini(ptr noundef %pfdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 18
  %0 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %js1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !79
  tail call void @drm_sched_fini(ptr noundef %1) #9
  %arrayidx.1 = getelementptr [3 x %struct.panfrost_queue_state], ptr %1, i32 0, i32 1
  tail call void @drm_sched_fini(ptr noundef %arrayidx.1) #9
  %arrayidx.2 = getelementptr [3 x %struct.panfrost_queue_state], ptr %1, i32 0, i32 2
  tail call void @drm_sched_fini(ptr noundef %arrayidx.2) #9
  %reset = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23
  %work = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 1
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #9
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 8
  tail call void @destroy_workqueue(ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_job_open(ptr noundef %panfrost_priv) local_unnamed_addr #1 align 64 {
entry:
  %sched = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %panfrost_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panfrost_priv, align 8
  %js2 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %js2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %js2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched) #9
  %4 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sched, align 4
  %arrayidx4 = getelementptr %struct.panfrost_file_priv, ptr %panfrost_priv, i32 0, i32 1, i32 0
  %call = call i32 @drm_sched_entity_init(ptr noundef %arrayidx4, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.do.end_crit_edge, !prof !72

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr [3 x %struct.panfrost_queue_state], ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.1, ptr %sched, align 4
  %arrayidx4.1 = getelementptr %struct.panfrost_file_priv, ptr %panfrost_priv, i32 0, i32 1, i32 1
  %call.1 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx4.1, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.do.end_crit_edge, !prof !72

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr [3 x %struct.panfrost_queue_state], ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.2, ptr %sched, align 4
  %arrayidx4.2 = getelementptr %struct.panfrost_file_priv, ptr %panfrost_priv, i32 0, i32 1, i32 2
  %call.2 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx4.2, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.1.do.end_crit_edge, !prof !72

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %for.cond.do.end_crit_edge ], [ %call.2, %for.cond.1.do.end_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 861, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %do.end ], [ 0, %for.cond.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_job_close(ptr noundef %panfrost_priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %panfrost_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panfrost_priv, align 8
  %arrayidx = getelementptr %struct.panfrost_file_priv, ptr %panfrost_priv, i32 0, i32 1, i32 0
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx) #9
  %arrayidx.1 = getelementptr %struct.panfrost_file_priv, ptr %panfrost_priv, i32 0, i32 1, i32 1
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx.1) #9
  %arrayidx.2 = getelementptr %struct.panfrost_file_priv, ptr %panfrost_priv, i32 0, i32 1, i32 2
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx.2) #9
  %js = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %js, align 4
  %job_lock = getelementptr inbounds %struct.panfrost_job_slot, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %job_lock) #9
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 3
  %hw_features.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 23
  br label %for.body4

for.body4:                                        ; preds = %cleanup.1.for.body4_crit_edge, %entry
  %i.164 = phi i32 [ 0, %entry ], [ %inc34, %cleanup.1.for.body4_crit_edge ]
  %arrayidx6 = getelementptr %struct.panfrost_file_priv, ptr %panfrost_priv, i32 0, i32 1, i32 %i.164
  %mul = shl i32 %i.164, 7
  %add16 = add nuw nsw i32 %mul, 6240
  %add28 = add nuw nsw i32 %mul, 6176
  %arrayidx11 = getelementptr %struct.panfrost_device, ptr %1, i32 0, i32 19, i32 %i.164, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx11, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body4.cleanup_crit_edge, label %lor.lhs.false

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body4
  %entity12 = getelementptr inbounds %struct.drm_sched_job, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %entity12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity12, align 8
  %cmp13.not = icmp eq ptr %7, %arrayidx6
  br i1 %cmp13.not, label %if.end17, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !79
  %jc = getelementptr inbounds %struct.panfrost_job, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %jc to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %jc, align 8
  %11 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %hw_features.i, align 4
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.end17.do.body22_crit_edge, label %if.then18

if.end17.do.body22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

if.then18:                                        ; preds = %if.end17
  %done_fence.i = getelementptr inbounds %struct.panfrost_job, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %done_fence.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %done_fence.i, align 4
  %pfdev.i = getelementptr inbounds %struct.panfrost_job, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %pfdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pfdev.i, align 4
  %hw_features.i.i = getelementptr inbounds %struct.panfrost_device, ptr %17, i32 0, i32 11, i32 23
  %18 = ptrtoint ptr %hw_features.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %hw_features.i.i, align 4
  %20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %if.then18.panfrost_get_job_chain_flag.exit.thread_crit_edge, label %panfrost_get_job_chain_flag.exit

if.then18.panfrost_get_job_chain_flag.exit.thread_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_get_job_chain_flag.exit.thread

panfrost_get_job_chain_flag.exit:                 ; preds = %if.then18
  %seqno.i = getelementptr inbounds %struct.panfrost_fence, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %seqno.i, align 8
  %23 = and i64 %22, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool20.not = icmp eq i64 %23, 0
  br i1 %tobool20.not, label %panfrost_get_job_chain_flag.exit.panfrost_get_job_chain_flag.exit.thread_crit_edge, label %panfrost_get_job_chain_flag.exit.do.body22_crit_edge

panfrost_get_job_chain_flag.exit.do.body22_crit_edge: ; preds = %panfrost_get_job_chain_flag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

panfrost_get_job_chain_flag.exit.panfrost_get_job_chain_flag.exit.thread_crit_edge: ; preds = %panfrost_get_job_chain_flag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_get_job_chain_flag.exit.thread

panfrost_get_job_chain_flag.exit.thread:          ; preds = %panfrost_get_job_chain_flag.exit.panfrost_get_job_chain_flag.exit.thread_crit_edge, %if.then18.panfrost_get_job_chain_flag.exit.thread_crit_edge
  br label %do.body22

do.body22:                                        ; preds = %panfrost_get_job_chain_flag.exit.thread, %panfrost_get_job_chain_flag.exit.do.body22_crit_edge, %if.end17.do.body22_crit_edge
  %cmd.0 = phi i32 [ 50331648, %if.end17.do.body22_crit_edge ], [ 83886080, %panfrost_get_job_chain_flag.exit.thread ], [ 117440512, %panfrost_get_job_chain_flag.exit.do.body22_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iomem, align 4
  %add.ptr29 = getelementptr i8, ptr %25, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %cmd.0) #9, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %do.body22, %lor.lhs.false.cleanup_crit_edge, %for.body4.cleanup_crit_edge
  %arrayidx11.1 = getelementptr %struct.panfrost_device, ptr %1, i32 0, i32 19, i32 %i.164, i32 0
  %26 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx11.1, align 4
  %tobool.not.1 = icmp eq ptr %27, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %lor.lhs.false.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

lor.lhs.false.1:                                  ; preds = %cleanup
  %entity12.1 = getelementptr inbounds %struct.drm_sched_job, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %entity12.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %entity12.1, align 8
  %cmp13.not.1 = icmp eq ptr %29, %arrayidx6
  br i1 %cmp13.not.1, label %if.end17.1, label %lor.lhs.false.1.cleanup.1_crit_edge

lor.lhs.false.1.cleanup.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

if.end17.1:                                       ; preds = %lor.lhs.false.1
  %30 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %hw_features.i, align 4
  %32 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.1 = icmp eq i32 %32, 0
  br i1 %tobool.i.not.1, label %if.end17.1.do.body22.1_crit_edge, label %if.then18.1

if.end17.1.do.body22.1_crit_edge:                 ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.1

if.then18.1:                                      ; preds = %if.end17.1
  %done_fence.i.1 = getelementptr inbounds %struct.panfrost_job, ptr %27, i32 0, i32 4
  %33 = ptrtoint ptr %done_fence.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %done_fence.i.1, align 4
  %pfdev.i.1 = getelementptr inbounds %struct.panfrost_job, ptr %27, i32 0, i32 2
  %35 = ptrtoint ptr %pfdev.i.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pfdev.i.1, align 4
  %hw_features.i.i.1 = getelementptr inbounds %struct.panfrost_device, ptr %36, i32 0, i32 11, i32 23
  %37 = ptrtoint ptr %hw_features.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %hw_features.i.i.1, align 4
  %39 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i.1 = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i.1, label %if.then18.1.panfrost_get_job_chain_flag.exit.thread.1_crit_edge, label %panfrost_get_job_chain_flag.exit.1

if.then18.1.panfrost_get_job_chain_flag.exit.thread.1_crit_edge: ; preds = %if.then18.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_get_job_chain_flag.exit.thread.1

panfrost_get_job_chain_flag.exit.1:               ; preds = %if.then18.1
  %seqno.i.1 = getelementptr inbounds %struct.panfrost_fence, ptr %34, i32 0, i32 2
  %40 = ptrtoint ptr %seqno.i.1 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %seqno.i.1, align 8
  %42 = and i64 %41, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool20.not.1 = icmp eq i64 %42, 0
  br i1 %tobool20.not.1, label %panfrost_get_job_chain_flag.exit.1.panfrost_get_job_chain_flag.exit.thread.1_crit_edge, label %panfrost_get_job_chain_flag.exit.1.do.body22.1_crit_edge

panfrost_get_job_chain_flag.exit.1.do.body22.1_crit_edge: ; preds = %panfrost_get_job_chain_flag.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.1

panfrost_get_job_chain_flag.exit.1.panfrost_get_job_chain_flag.exit.thread.1_crit_edge: ; preds = %panfrost_get_job_chain_flag.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_get_job_chain_flag.exit.thread.1

panfrost_get_job_chain_flag.exit.thread.1:        ; preds = %panfrost_get_job_chain_flag.exit.1.panfrost_get_job_chain_flag.exit.thread.1_crit_edge, %if.then18.1.panfrost_get_job_chain_flag.exit.thread.1_crit_edge
  br label %do.body22.1

do.body22.1:                                      ; preds = %panfrost_get_job_chain_flag.exit.thread.1, %panfrost_get_job_chain_flag.exit.1.do.body22.1_crit_edge, %if.end17.1.do.body22.1_crit_edge
  %cmd.0.1 = phi i32 [ 50331648, %if.end17.1.do.body22.1_crit_edge ], [ 83886080, %panfrost_get_job_chain_flag.exit.thread.1 ], [ 117440512, %panfrost_get_job_chain_flag.exit.1.do.body22.1_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iomem, align 4
  %add.ptr29.1 = getelementptr i8, ptr %44, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.1, i32 %cmd.0.1) #9, !srcloc !79
  br label %cleanup.1

cleanup.1:                                        ; preds = %do.body22.1, %lor.lhs.false.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %inc34 = add nuw nsw i32 %i.164, 1
  %exitcond.not = icmp eq i32 %inc34, 3
  br i1 %exitcond.not, label %for.end35, label %cleanup.1.for.body4_crit_edge

cleanup.1.for.body4_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.end35:                                        ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %js, align 4
  %job_lock37 = getelementptr inbounds %struct.panfrost_job_slot, ptr %46, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %job_lock37) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_job_is_idle(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 18
  %0 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %js1, align 4
  %hw_rq_count = getelementptr [3 x %struct.panfrost_queue_state], ptr %1, i32 0, i32 0, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count, i32 noundef 4) #9
  %2 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %hw_rq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %entry
  %hw_rq_count.1 = getelementptr [3 x %struct.panfrost_queue_state], ptr %1, i32 0, i32 1, i32 0, i32 7
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count.1, i32 noundef 4) #9
  %4 = ptrtoint ptr %hw_rq_count.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %hw_rq_count.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1 = icmp eq i32 %5, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %hw_rq_count.2 = getelementptr [3 x %struct.panfrost_queue_state], ptr %1, i32 0, i32 2, i32 0, i32 7
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw_rq_count.2, i32 noundef 4) #9
  %6 = ptrtoint ptr %hw_rq_count.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %hw_rq_count.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.2 = icmp eq i32 %7, 0
  %spec.select = zext i1 %tobool.not.2 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.1, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %spec.select, %for.cond.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_implicit_dependencies(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_mapping_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @panfrost_reset(ptr noundef %pfdev, ptr noundef %bad) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pending = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending, i32 noundef 4) #9
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %js = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 18
  %2 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %js, align 4
  tail call void @drm_sched_stop(ptr noundef %3, ptr noundef %bad) #9
  %4 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %js, align 4
  %arrayidx.1 = getelementptr [3 x %struct.panfrost_queue_state], ptr %5, i32 0, i32 1
  tail call void @drm_sched_stop(ptr noundef %arrayidx.1, ptr noundef %bad) #9
  %6 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %js, align 4
  %arrayidx.2 = getelementptr [3 x %struct.panfrost_queue_state], ptr %7, i32 0, i32 2
  tail call void @drm_sched_stop(ptr noundef %arrayidx.2, ptr noundef %bad) #9
  %call1 = tail call zeroext i1 @dma_fence_begin_signalling() #9
  %tobool2.not = icmp eq ptr %bad, null
  br i1 %tobool2.not, label %for.cond.preheader.do.body_crit_edge, label %if.then3

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then3:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_sched_increase_karma(ptr noundef nonnull %bad) #9
  br label %do.body

do.body:                                          ; preds = %if.then3, %for.cond.preheader.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !79
  %10 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %js, align 4
  %irq = getelementptr inbounds %struct.panfrost_job_slot, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem, align 4
  %add.ptr14 = getelementptr i8, ptr %15, i32 6240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 6176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 33554432) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem, align 4
  %add.ptr14.1 = getelementptr i8, ptr %19, i32 6368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.1, i32 0) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem, align 4
  %add.ptr22.1 = getelementptr i8, ptr %21, i32 6304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.1, i32 33554432) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem, align 4
  %add.ptr14.2 = getelementptr i8, ptr %23, i32 6496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.2, i32 0) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iomem, align 4
  %add.ptr22.2 = getelementptr i8, ptr %25, i32 6432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.2, i32 33554432) #9, !srcloc !79
  %call26 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call26, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 646) #9
  %26 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iomem, align 4
  %add.ptr42233 = getelementptr i8, ptr %27, i32 4112
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42233) #9, !srcloc !81
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i234 = icmp eq i32 %28, 0
  br i1 %tobool.not.i234, label %do.body.for.end66_crit_edge, label %do.body.if.end.i_crit_edge

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  br label %if.end.i

do.body.for.end66_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end66

if.end.i:                                         ; preds = %if.then63.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  %30 = phi i32 [ %42, %if.then63.if.end.i_crit_edge ], [ %29, %do.body.if.end.i_crit_edge ]
  %js_state_mask.0235 = phi i32 [ %js_state_mask.3, %if.then63.if.end.i_crit_edge ], [ -1, %do.body.if.end.i_crit_edge ]
  %31 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iomem, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 4096
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i = icmp eq i32 %33, 0
  br i1 %tobool2.not.i, label %if.end.i.panfrost_active_slots.exit_crit_edge, label %for.body.preheader.i

if.end.i.panfrost_active_slots.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_active_slots.exit

for.body.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %and4.i = and i32 %34, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %and8.i = and i32 %js_state_mask.0235, -65538
  %spec.select = select i1 %tobool5.not.i, i32 %js_state_mask.0235, i32 %and8.i
  %and4.1.i = and i32 %34, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1.i)
  %tobool5.not.1.i = icmp eq i32 %and4.1.i, 0
  %and8.1.i = and i32 %spec.select, -131075
  %js_state_mask.2 = select i1 %tobool5.not.1.i, i32 %spec.select, i32 %and8.1.i
  %and4.2.i = and i32 %34, 262148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.2.i)
  %tobool5.not.2.i = icmp eq i32 %and4.2.i, 0
  %and8.2.i = and i32 %js_state_mask.2, -262149
  %spec.select228 = select i1 %tobool5.not.2.i, i32 %js_state_mask.2, i32 %and8.2.i
  br label %panfrost_active_slots.exit

panfrost_active_slots.exit:                       ; preds = %for.body.preheader.i, %if.end.i.panfrost_active_slots.exit_crit_edge
  %js_state_mask.3 = phi i32 [ %js_state_mask.0235, %if.end.i.panfrost_active_slots.exit_crit_edge ], [ %spec.select228, %for.body.preheader.i ]
  %and11.i = and i32 %js_state_mask.3, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool46.not = icmp eq i32 %and11.i, 0
  br i1 %tobool46.not, label %panfrost_active_slots.exit.for.end66_crit_edge, label %land.lhs.true

panfrost_active_slots.exit.for.end66_crit_edge:   ; preds = %panfrost_active_slots.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end66

land.lhs.true:                                    ; preds = %panfrost_active_slots.exit
  %call50 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call50, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call50, %add.i
  br i1 %cmp3.i, label %if.then53, label %if.then63

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomem, align 4
  %add.ptr57 = getelementptr i8, ptr %36, i32 4112
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #9, !srcloc !81
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  br label %for.end66

if.then63:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %39 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iomem, align 4
  %add.ptr42 = getelementptr i8, ptr %40, i32 4112
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #9, !srcloc !81
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  %and.i = and i32 %42, %js_state_mask.3
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then63.for.end66_crit_edge, label %if.then63.if.end.i_crit_edge

if.then63.if.end.i_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then63.for.end66_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end66

for.end66:                                        ; preds = %if.then63.for.end66_crit_edge, %if.then53, %panfrost_active_slots.exit.for.end66_crit_edge, %do.body.for.end66_crit_edge
  %js_state_mask.4224 = phi i32 [ %js_state_mask.3, %if.then53 ], [ -1, %do.body.for.end66_crit_edge ], [ %js_state_mask.3, %if.then63.for.end66_crit_edge ], [ %js_state_mask.3, %panfrost_active_slots.exit.for.end66_crit_edge ]
  %js_state.0 = phi i32 [ %38, %if.then53 ], [ %29, %do.body.for.end66_crit_edge ], [ %30, %panfrost_active_slots.exit.for.end66_crit_edge ], [ %42, %if.then63.for.end66_crit_edge ]
  %and.i187 = and i32 %js_state.0, %js_state_mask.4224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool.not.i188 = icmp eq i32 %and.i187, 0
  br i1 %tobool.not.i188, label %for.end66.if.end75_crit_edge, label %if.end.i192

for.end66.if.end75_crit_edge:                     ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end.i192:                                      ; preds = %for.end66
  %43 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iomem, align 4
  %add.ptr.i190 = getelementptr i8, ptr %44, i32 4096
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool2.not.i191 = icmp eq i32 %45, 0
  br i1 %tobool2.not.i191, label %if.end.i192.do.end74_crit_edge, label %panfrost_active_slots.exit211

if.end.i192.do.end74_crit_edge:                   ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

panfrost_active_slots.exit211:                    ; preds = %if.end.i192
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %and4.i193 = and i32 %46, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i193)
  %tobool5.not.i194 = icmp eq i32 %and4.i193, 0
  %and8.i196 = and i32 %js_state_mask.4224, -65538
  %spec.select227 = select i1 %tobool5.not.i194, i32 %js_state_mask.4224, i32 %and8.i196
  %and4.1.i198 = and i32 %46, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1.i198)
  %tobool5.not.1.i199 = icmp eq i32 %and4.1.i198, 0
  %and8.1.i201 = and i32 %spec.select227, -131075
  %js_state_mask.6 = select i1 %tobool5.not.1.i199, i32 %spec.select227, i32 %and8.1.i201
  %and4.2.i203 = and i32 %46, 262148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.2.i203)
  %tobool5.not.2.i204 = icmp eq i32 %and4.2.i203, 0
  %and8.2.i206 = and i32 %js_state_mask.6, -262149
  %spec.select229 = select i1 %tobool5.not.2.i204, i32 %js_state_mask.6, i32 %and8.2.i206
  %.pre = and i32 %spec.select229, %js_state.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br i1 %phi.cmp, label %panfrost_active_slots.exit211.if.end75_crit_edge, label %panfrost_active_slots.exit211.do.end74_crit_edge

panfrost_active_slots.exit211.do.end74_crit_edge: ; preds = %panfrost_active_slots.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

panfrost_active_slots.exit211.if.end75_crit_edge: ; preds = %panfrost_active_slots.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.end74:                                         ; preds = %panfrost_active_slots.exit211.do.end74_crit_edge, %if.end.i192.do.end74_crit_edge
  %47 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pfdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.15) #12
  br label %if.end75

if.end75:                                         ; preds = %do.end74, %panfrost_active_slots.exit211.if.end75_crit_edge, %for.end66.if.end75_crit_edge
  tail call fastcc void @panfrost_job_handle_irqs(ptr noundef %pfdev)
  %49 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %js, align 4
  %job_lock = getelementptr inbounds %struct.panfrost_job_slot, ptr %50, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %job_lock) #9
  %pfdevfreq = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27
  br label %for.cond80.preheader

for.cond80.preheader:                             ; preds = %for.inc90.for.cond80.preheader_crit_edge, %if.end75
  %i.2240 = phi i32 [ 0, %if.end75 ], [ %inc91, %for.inc90.for.cond80.preheader_crit_edge ]
  %arrayidx83 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %i.2240, i32 0
  %51 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx83, align 4
  %tobool84.not = icmp eq ptr %52, null
  br i1 %tobool84.not, label %for.cond80.preheader.for.inc90_crit_edge, label %for.body85

for.cond80.preheader.for.inc90_crit_edge:         ; preds = %for.cond80.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90

for.body85:                                       ; preds = %for.cond80.preheader
  %53 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pfdev, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !95
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %for.body85.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

for.body85.pm_runtime_put_noidle.exit_crit_edge:  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %for.body85.pm_runtime_put_noidle.exit_crit_edge
  tail call void @panfrost_devfreq_record_idle(ptr noundef %pfdevfreq) #9
  %arrayidx83.1 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %i.2240, i32 1
  %56 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx83.1, align 4
  %tobool84.not.1 = icmp eq ptr %57, null
  br i1 %tobool84.not.1, label %pm_runtime_put_noidle.exit.for.inc90_crit_edge, label %for.body85.1

pm_runtime_put_noidle.exit.for.inc90_crit_edge:   ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90

for.body85.1:                                     ; preds = %pm_runtime_put_noidle.exit
  %58 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pfdev, align 8
  %usage_count.i.1 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 12, i32 13
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.1, i32 1, i32 3, i32 1) #9
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.1, ptr %usage_count.i.1, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.1) #9, !srcloc !95
  %asmresult.i.i.i.i.1 = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.1)
  %cmp.not.i.i.i.i.1 = icmp eq i32 %asmresult.i.i.i.i.1, 0
  br i1 %cmp.not.i.i.i.i.1, label %for.body85.1.pm_runtime_put_noidle.exit.1_crit_edge, label %do.end11.i.i.i.i.1

for.body85.1.pm_runtime_put_noidle.exit.1_crit_edge: ; preds = %for.body85.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit.1

do.end11.i.i.i.i.1:                               ; preds = %for.body85.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  br label %pm_runtime_put_noidle.exit.1

pm_runtime_put_noidle.exit.1:                     ; preds = %do.end11.i.i.i.i.1, %for.body85.1.pm_runtime_put_noidle.exit.1_crit_edge
  tail call void @panfrost_devfreq_record_idle(ptr noundef %pfdevfreq) #9
  br label %for.inc90

for.inc90:                                        ; preds = %pm_runtime_put_noidle.exit.1, %pm_runtime_put_noidle.exit.for.inc90_crit_edge, %for.cond80.preheader.for.inc90_crit_edge
  %inc91 = add nuw nsw i32 %i.2240, 1
  %exitcond.not = icmp eq i32 %inc91, 3
  br i1 %exitcond.not, label %for.end92, label %for.inc90.for.cond80.preheader_crit_edge

for.inc90.for.cond80.preheader_crit_edge:         ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond80.preheader

for.end92:                                        ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #11
  %jobs93 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 19
  %61 = call ptr @memset(ptr %jobs93, i32 0, i32 24)
  %62 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %js, align 4
  %job_lock95 = getelementptr inbounds %struct.panfrost_job_slot, ptr %63, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %job_lock95) #9
  tail call void @panfrost_device_reset(ptr noundef %pfdev) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iomem, align 4
  %add.ptr100 = getelementptr i8, ptr %65, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 0) #9, !srcloc !79
  %call.i.i185 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending, i32 noundef 4) #9
  %66 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %pending, align 4
  tail call void @dma_fence_end_signalling(i1 noundef zeroext %call1) #9
  %67 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %js, align 4
  tail call void @drm_sched_resubmit_jobs(ptr noundef %68) #9
  %69 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %js, align 4
  %arrayidx109.1 = getelementptr [3 x %struct.panfrost_queue_state], ptr %70, i32 0, i32 1
  tail call void @drm_sched_resubmit_jobs(ptr noundef %arrayidx109.1) #9
  %71 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %js, align 4
  %arrayidx109.2 = getelementptr [3 x %struct.panfrost_queue_state], ptr %72, i32 0, i32 2
  tail call void @drm_sched_resubmit_jobs(ptr noundef %arrayidx109.2) #9
  %call114 = tail call zeroext i1 @dma_fence_begin_signalling() #9
  %73 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %js, align 4
  tail call void @drm_sched_start(ptr noundef %74, i1 noundef zeroext true) #9
  %75 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %js, align 4
  %arrayidx121.1 = getelementptr [3 x %struct.panfrost_queue_state], ptr %76, i32 0, i32 1
  tail call void @drm_sched_start(ptr noundef %arrayidx121.1, i1 noundef zeroext true) #9
  %77 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %js, align 4
  %arrayidx121.2 = getelementptr [3 x %struct.panfrost_queue_state], ptr %78, i32 0, i32 2
  tail call void @drm_sched_start(ptr noundef %arrayidx121.2, i1 noundef zeroext true) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %79 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iomem, align 4
  %add.ptr130 = getelementptr i8, ptr %80, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 117442304) #9, !srcloc !79
  tail call void @dma_fence_end_signalling(i1 noundef zeroext %call114) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end92, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_stop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_begin_signalling() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_increase_karma(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @panfrost_job_handle_irqs(ptr noundef %pfdev) unnamed_addr #1 align 64 {
entry:
  %done.i = alloca [3 x [2 x ptr]], align 4
  %failed.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4096
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not20 = icmp eq i32 %2, 0
  br i1 %tobool.not20, label %entry.while.end_crit_edge, label %for.cond.preheader.lr.ph.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.cond.preheader.lr.ph.i.lr.ph:                 ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %js = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 18
  %pfdevfreq.i.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27
  %pending.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 2
  br label %for.cond.preheader.lr.ph.i

for.cond.preheader.lr.ph.i:                       ; preds = %panfrost_job_handle_irq.exit.for.cond.preheader.lr.ph.i_crit_edge, %for.cond.preheader.lr.ph.i.lr.ph
  %status.021 = phi i32 [ %3, %for.cond.preheader.lr.ph.i.lr.ph ], [ %111, %panfrost_job_handle_irq.exit.for.cond.preheader.lr.ph.i_crit_edge ]
  %4 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfdev, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %7 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %js, align 4
  %job_lock = getelementptr inbounds %struct.panfrost_job_slot, ptr %8, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %job_lock) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %done.i) #9
  %9 = call ptr @memset(ptr %done.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %failed.i) #9
  %10 = call ptr @memset(ptr %failed.i, i32 0, i32 12)
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.body26.i.for.cond.preheader.i_crit_edge, %for.cond.preheader.lr.ph.i
  %status.addr.0267.i = phi i32 [ %status.021, %for.cond.preheader.lr.ph.i ], [ %40, %do.body26.i.for.cond.preheader.i_crit_edge ]
  %js_state.0266.i = phi i32 [ 0, %for.cond.preheader.lr.ph.i ], [ %or37.i, %do.body26.i.for.cond.preheader.i_crit_edge ]
  %js_events.0265.i = phi i32 [ 0, %for.cond.preheader.lr.ph.i ], [ %or38.i, %do.body26.i.for.cond.preheader.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %j.0262.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %js_state_mask.0261.i = phi i32 [ 0, %for.cond.preheader.i ], [ %spec.select.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 65537, %j.0262.i
  %and.i = and i32 %shl.i, %status.addr.0267.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %or.i = select i1 %tobool1.not.i, i32 0, i32 %shl.i
  %spec.select.i = or i32 %or.i, %js_state_mask.0261.i
  %shl3.i = shl nuw nsw i32 1, %j.0262.i
  %and4.i = and i32 %shl3.i, %status.addr.0267.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %for.body.i.if.end16.i_crit_edge, label %if.then6.i

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then6.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr [3 x [2 x ptr]], ptr %done.i, i32 0, i32 %j.0262.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %12, null
  %arrayidx.i231.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %j.0262.i
  %13 = ptrtoint ptr %arrayidx.i231.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i231.i, align 8
  %tobool.not.i232.i = icmp eq ptr %14, null
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then6.i
  br i1 %tobool.not.i232.i, label %do.end.i.i, label %if.then9.i.panfrost_dequeue_job.exit.i_crit_edge, !prof !71

if.then9.i.panfrost_dequeue_job.exit.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_dequeue_job.exit.i

do.end.i.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %panfrost_dequeue_job.exit.i

panfrost_dequeue_job.exit.i:                      ; preds = %do.end.i.i, %if.then9.i.panfrost_dequeue_job.exit.i_crit_edge
  %arrayidx24.i.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %j.0262.i, i32 1
  %15 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx24.i.i, align 4
  %17 = ptrtoint ptr %arrayidx.i231.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %arrayidx.i231.i, align 8
  store ptr null, ptr %arrayidx24.i.i, align 4
  %arrayidx11.i = getelementptr [3 x [2 x ptr]], ptr %done.i, i32 0, i32 %j.0262.i, i32 1
  br label %if.end16.sink.split.i

if.else.i:                                        ; preds = %if.then6.i
  br i1 %tobool.not.i232.i, label %do.end.i233.i, label %if.else.i.panfrost_dequeue_job.exit235.i_crit_edge, !prof !71

if.else.i.panfrost_dequeue_job.exit235.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_dequeue_job.exit235.i

do.end.i233.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %panfrost_dequeue_job.exit235.i

panfrost_dequeue_job.exit235.i:                   ; preds = %do.end.i233.i, %if.else.i.panfrost_dequeue_job.exit235.i_crit_edge
  %arrayidx24.i234.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %j.0262.i, i32 1
  %18 = ptrtoint ptr %arrayidx24.i234.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx24.i234.i, align 4
  %20 = ptrtoint ptr %arrayidx.i231.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx.i231.i, align 8
  store ptr null, ptr %arrayidx24.i234.i, align 4
  br label %if.end16.sink.split.i

if.end16.sink.split.i:                            ; preds = %panfrost_dequeue_job.exit235.i, %panfrost_dequeue_job.exit.i
  %arrayidx11.sink.i = phi ptr [ %arrayidx11.i, %panfrost_dequeue_job.exit.i ], [ %arrayidx.i, %panfrost_dequeue_job.exit235.i ]
  %21 = ptrtoint ptr %arrayidx11.sink.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %14, ptr %arrayidx11.sink.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.sink.split.i, %for.body.i.if.end16.i_crit_edge
  %shl17.i = shl i32 65536, %j.0262.i
  %and18.i = and i32 %shl17.i, %status.addr.0267.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.for.inc.i_crit_edge, label %do.body.i

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.body.i:                                        ; preds = %if.end16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem, align 4
  %mul.i = shl nuw nsw i32 %j.0262.i, 7
  %add22.i = add nuw nsw i32 %mul.i, 6240
  %add.ptr.i = getelementptr i8, ptr %23, i32 %add22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !79
  %arrayidx.i236.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %j.0262.i
  %24 = ptrtoint ptr %arrayidx.i236.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i236.i, align 8
  %tobool.not.i237.i = icmp eq ptr %25, null
  br i1 %tobool.not.i237.i, label %do.end.i238.i, label %do.body.i.panfrost_dequeue_job.exit240.i_crit_edge, !prof !71

do.body.i.panfrost_dequeue_job.exit240.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_dequeue_job.exit240.i

do.end.i238.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %panfrost_dequeue_job.exit240.i

panfrost_dequeue_job.exit240.i:                   ; preds = %do.end.i238.i, %do.body.i.panfrost_dequeue_job.exit240.i_crit_edge
  %arrayidx24.i239.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %j.0262.i, i32 1
  %26 = ptrtoint ptr %arrayidx24.i239.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx24.i239.i, align 4
  %28 = ptrtoint ptr %arrayidx.i236.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx.i236.i, align 8
  store ptr null, ptr %arrayidx24.i239.i, align 4
  %arrayidx24.i = getelementptr [3 x ptr], ptr %failed.i, i32 0, i32 %j.0262.i
  %29 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %25, ptr %arrayidx24.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %panfrost_dequeue_job.exit240.i, %if.end16.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %j.0262.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %do.body26.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.body26.i:                                      ; preds = %for.inc.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %status.addr.0267.i) #9
  %31 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iomem, align 4
  %add.ptr30.i = getelementptr i8, ptr %32, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %30) #9, !srcloc !79
  %neg.i = xor i32 %spec.select.i, -1
  %and31.i = and i32 %js_state.0266.i, %neg.i
  %33 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iomem, align 4
  %add.ptr33.i = getelementptr i8, ptr %34, i32 4112
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #9, !srcloc !81
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %and36.i = and i32 %36, %spec.select.i
  %or37.i = or i32 %and36.i, %and31.i
  %or38.i = or i32 %js_events.0265.i, %status.addr.0267.i
  %37 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iomem, align 4
  %add.ptr42.i = getelementptr i8, ptr %38, i32 4096
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #9, !srcloc !81
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %do.body26.i.for.body48.i_crit_edge, label %do.body26.i.for.cond.preheader.i_crit_edge

do.body26.i.for.cond.preheader.i_crit_edge:       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

do.body26.i.for.body48.i_crit_edge:               ; preds = %do.body26.i
  br label %for.body48.i

for.body48.i:                                     ; preds = %for.inc118.i.for.body48.i_crit_edge, %do.body26.i.for.body48.i_crit_edge
  %j.1270.i = phi i32 [ %inc119.i, %for.inc118.i.for.body48.i_crit_edge ], [ 0, %do.body26.i.for.body48.i_crit_edge ]
  %shl49.i = shl nuw nsw i32 65537, %j.1270.i
  %and50.i = and i32 %shl49.i, %or38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %for.body48.i.for.inc118.i_crit_edge, label %if.end53.i

for.body48.i.for.inc118.i_crit_edge:              ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc118.i

if.end53.i:                                       ; preds = %for.body48.i
  %arrayidx54.i = getelementptr [3 x ptr], ptr %failed.i, i32 0, i32 %j.1270.i
  %41 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx54.i, align 4
  %tobool55.not.i = icmp eq ptr %42, null
  br i1 %tobool55.not.i, label %if.else58.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @panfrost_job_handle_err(ptr noundef %pfdev, ptr noundef nonnull %42, i32 noundef %j.1270.i) #9
  br label %if.end106.i

if.else58.i:                                      ; preds = %if.end53.i
  %arrayidx59.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %j.1270.i
  %43 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx59.i, align 8
  %tobool61.not.i = icmp ne ptr %44, null
  %and63.i = and i32 %shl49.i, %or37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  %or.cond.i = select i1 %tobool61.not.i, i1 %tobool64.not.i, i1 false
  br i1 %or.cond.i, label %if.then65.i, label %if.else58.i.if.end106.i_crit_edge

if.else58.i.if.end106.i_crit_edge:                ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i

if.then65.i:                                      ; preds = %if.else58.i
  %arrayidx66.i = getelementptr [3 x [2 x ptr]], ptr %done.i, i32 0, i32 %j.1270.i
  %45 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx66.i, align 4
  %tobool68.not.i = icmp eq ptr %46, null
  br i1 %tobool68.not.i, label %do.end81.i, label %panfrost_dequeue_job.exit245.i, !prof !71

do.end81.i:                                       ; preds = %if.then65.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 530, i32 noundef 9, ptr noundef null) #9
  %47 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx59.i, align 8
  %tobool.not.i18 = icmp eq ptr %48, null
  br i1 %tobool.not.i18, label %do.end.i, label %do.end81.i.panfrost_dequeue_job.exit_crit_edge, !prof !71

do.end81.i.panfrost_dequeue_job.exit_crit_edge:   ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_dequeue_job.exit

do.end.i:                                         ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %panfrost_dequeue_job.exit

panfrost_dequeue_job.exit:                        ; preds = %do.end.i, %do.end81.i.panfrost_dequeue_job.exit_crit_edge
  %arrayidx24.i19 = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %j.1270.i, i32 1
  %49 = ptrtoint ptr %arrayidx24.i19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx24.i19, align 4
  %51 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %arrayidx59.i, align 8
  store ptr null, ptr %arrayidx24.i19, align 4
  %52 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %48, ptr %arrayidx66.i, align 4
  br label %if.end106.i

panfrost_dequeue_job.exit245.i:                   ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24.i244.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %j.1270.i, i32 1
  %53 = ptrtoint ptr %arrayidx24.i244.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx24.i244.i, align 4
  %55 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %arrayidx59.i, align 8
  store ptr null, ptr %arrayidx24.i244.i, align 4
  %arrayidx103.i = getelementptr [3 x [2 x ptr]], ptr %done.i, i32 0, i32 %j.1270.i, i32 1
  %56 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %44, ptr %arrayidx103.i, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %panfrost_dequeue_job.exit245.i, %panfrost_dequeue_job.exit, %if.else58.i.if.end106.i_crit_edge, %if.then56.i
  %arrayidx110.i = getelementptr [3 x [2 x ptr]], ptr %done.i, i32 0, i32 %j.1270.i, i32 0
  %57 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx110.i, align 4
  %tobool111.not.i = icmp eq ptr %58, null
  br i1 %tobool111.not.i, label %if.end106.i.for.inc118.i_crit_edge, label %for.body112.i

if.end106.i.for.inc118.i_crit_edge:               ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc118.i

for.body112.i:                                    ; preds = %if.end106.i
  %jc.i.i = getelementptr inbounds %struct.panfrost_job, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %jc.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %jc.i.i, align 8
  %file_priv.i.i = getelementptr inbounds %struct.panfrost_job, ptr %58, i32 0, i32 3
  %60 = ptrtoint ptr %file_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %file_priv.i.i, align 8
  %mmu.i.i = getelementptr inbounds %struct.panfrost_file_priv, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmu.i.i, align 8
  tail call void @panfrost_mmu_as_put(ptr noundef %pfdev, ptr noundef %63) #9
  tail call void @panfrost_devfreq_record_idle(ptr noundef %pfdevfreq.i.i) #9
  %done_fence.i.i = getelementptr inbounds %struct.panfrost_job, ptr %58, i32 0, i32 4
  %64 = ptrtoint ptr %done_fence.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %done_fence.i.i, align 4
  %call.i.i = tail call i32 @dma_fence_signal_locked(ptr noundef %65) #9
  %66 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pfdev, align 8
  %call.i.i246.i = tail call i32 @__pm_runtime_suspend(ptr noundef %67, i32 noundef 13) #9
  %arrayidx110.1.i = getelementptr [3 x [2 x ptr]], ptr %done.i, i32 0, i32 %j.1270.i, i32 1
  %68 = ptrtoint ptr %arrayidx110.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx110.1.i, align 4
  %tobool111.not.1.i = icmp eq ptr %69, null
  br i1 %tobool111.not.1.i, label %for.body112.i.for.inc118.i_crit_edge, label %for.body112.1.i

for.body112.i.for.inc118.i_crit_edge:             ; preds = %for.body112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc118.i

for.body112.1.i:                                  ; preds = %for.body112.i
  call void @__sanitizer_cov_trace_pc() #11
  %jc.i.1.i = getelementptr inbounds %struct.panfrost_job, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %jc.i.1.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 0, ptr %jc.i.1.i, align 8
  %file_priv.i.1.i = getelementptr inbounds %struct.panfrost_job, ptr %69, i32 0, i32 3
  %71 = ptrtoint ptr %file_priv.i.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %file_priv.i.1.i, align 8
  %mmu.i.1.i = getelementptr inbounds %struct.panfrost_file_priv, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %mmu.i.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmu.i.1.i, align 8
  tail call void @panfrost_mmu_as_put(ptr noundef %pfdev, ptr noundef %74) #9
  tail call void @panfrost_devfreq_record_idle(ptr noundef %pfdevfreq.i.i) #9
  %done_fence.i.1.i = getelementptr inbounds %struct.panfrost_job, ptr %69, i32 0, i32 4
  %75 = ptrtoint ptr %done_fence.i.1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %done_fence.i.1.i, align 4
  %call.i.1.i = tail call i32 @dma_fence_signal_locked(ptr noundef %76) #9
  %77 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pfdev, align 8
  %call.i.i246.1.i = tail call i32 @__pm_runtime_suspend(ptr noundef %78, i32 noundef 13) #9
  br label %for.inc118.i

for.inc118.i:                                     ; preds = %for.body112.1.i, %for.body112.i.for.inc118.i_crit_edge, %if.end106.i.for.inc118.i_crit_edge, %for.body48.i.for.inc118.i_crit_edge
  %inc119.i = add nuw nsw i32 %j.1270.i, 1
  %exitcond276.not.i = icmp eq i32 %inc119.i, 3
  br i1 %exitcond276.not.i, label %for.inc118.i.for.body123.i_crit_edge, label %for.inc118.i.for.body48.i_crit_edge

for.inc118.i.for.body48.i_crit_edge:              ; preds = %for.inc118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body48.i

for.inc118.i.for.body123.i_crit_edge:             ; preds = %for.inc118.i
  br label %for.body123.i

for.body123.i:                                    ; preds = %for.inc157.i.for.body123.i_crit_edge, %for.inc118.i.for.body123.i_crit_edge
  %j.2274.i = phi i32 [ %inc158.i, %for.inc157.i.for.body123.i_crit_edge ], [ 0, %for.inc118.i.for.body123.i_crit_edge ]
  %shl124.i = shl nuw nsw i32 65537, %j.2274.i
  %and125.i = and i32 %shl124.i, %or38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %for.body123.i.for.inc157.i_crit_edge, label %if.end128.i

for.body123.i.for.inc157.i_crit_edge:             ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157.i

if.end128.i:                                      ; preds = %for.body123.i
  %arrayidx129.i = getelementptr [3 x ptr], ptr %failed.i, i32 0, i32 %j.2274.i
  %79 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx129.i, align 4
  %tobool130.not.i = icmp eq ptr %80, null
  br i1 %tobool130.not.i, label %if.end128.i.for.inc157.i_crit_edge, label %lor.lhs.false.i

if.end128.i.for.inc157.i_crit_edge:               ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157.i

lor.lhs.false.i:                                  ; preds = %if.end128.i
  %arrayidx132.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %j.2274.i
  %81 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx132.i, align 8
  %tobool134.not.i = icmp eq ptr %82, null
  br i1 %tobool134.not.i, label %lor.lhs.false.i.for.inc157.i_crit_edge, label %if.end136.i

lor.lhs.false.i.for.inc157.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157.i

if.end136.i:                                      ; preds = %lor.lhs.false.i
  %jc.i = getelementptr inbounds %struct.panfrost_job, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %jc.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %jc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %cmp140.i = icmp eq i64 %84, 0
  br i1 %cmp140.i, label %panfrost_dequeue_job.exit251.i, label %if.else143.i

panfrost_dequeue_job.exit251.i:                   ; preds = %if.end136.i
  %arrayidx24.i250.i = getelementptr %struct.panfrost_device, ptr %pfdev, i32 0, i32 19, i32 %j.2274.i, i32 1
  %85 = ptrtoint ptr %arrayidx24.i250.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx24.i250.i, align 4
  %87 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %arrayidx132.i, align 8
  store ptr null, ptr %arrayidx24.i250.i, align 4
  %done_fence.i = getelementptr inbounds %struct.panfrost_job, ptr %82, i32 0, i32 4
  %88 = ptrtoint ptr %done_fence.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %done_fence.i, align 4
  %flags.i.i = getelementptr inbounds %struct.dma_fence, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i252.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i252.i, label %panfrost_dequeue_job.exit251.i.dma_fence_set_error.exit.i_crit_edge, label %do.end.i253.i, !prof !72

panfrost_dequeue_job.exit251.i.dma_fence_set_error.exit.i_crit_edge: ; preds = %panfrost_dequeue_job.exit251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_set_error.exit.i

do.end.i253.i:                                    ; preds = %panfrost_dequeue_job.exit251.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %dma_fence_set_error.exit.i

dma_fence_set_error.exit.i:                       ; preds = %do.end.i253.i, %panfrost_dequeue_job.exit251.i.dma_fence_set_error.exit.i_crit_edge
  %error51.i.i = getelementptr inbounds %struct.dma_fence, ptr %89, i32 0, i32 7
  %92 = ptrtoint ptr %error51.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -125, ptr %error51.i.i, align 8
  %93 = ptrtoint ptr %jc.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %jc.i, align 8
  %file_priv.i255.i = getelementptr inbounds %struct.panfrost_job, ptr %82, i32 0, i32 3
  %94 = ptrtoint ptr %file_priv.i255.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %file_priv.i255.i, align 8
  %mmu.i256.i = getelementptr inbounds %struct.panfrost_file_priv, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %mmu.i256.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmu.i256.i, align 8
  tail call void @panfrost_mmu_as_put(ptr noundef %pfdev, ptr noundef %97) #9
  tail call void @panfrost_devfreq_record_idle(ptr noundef %pfdevfreq.i.i) #9
  %98 = ptrtoint ptr %done_fence.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %done_fence.i, align 4
  %call.i259.i = tail call i32 @dma_fence_signal_locked(ptr noundef %99) #9
  %100 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pfdev, align 8
  %call.i.i260.i = tail call i32 @__pm_runtime_suspend(ptr noundef %101, i32 noundef 13) #9
  br label %for.inc157.i

if.else143.i:                                     ; preds = %if.end136.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending.i, i32 noundef 4) #9
  %102 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool145.not.i = icmp eq i32 %103, 0
  br i1 %tobool145.not.i, label %do.body147.i, label %if.else143.i.for.inc157.i_crit_edge

if.else143.i.for.inc157.i_crit_edge:              ; preds = %if.else143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157.i

do.body147.i:                                     ; preds = %if.else143.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %104 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %iomem, align 4
  %mul151.i = shl nuw nsw i32 %j.2274.i, 7
  %add153.i = add nuw nsw i32 %mul151.i, 6240
  %add.ptr154.i = getelementptr i8, ptr %105, i32 %add153.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154.i, i32 16777216) #9, !srcloc !79
  br label %for.inc157.i

for.inc157.i:                                     ; preds = %do.body147.i, %if.else143.i.for.inc157.i_crit_edge, %dma_fence_set_error.exit.i, %lor.lhs.false.i.for.inc157.i_crit_edge, %if.end128.i.for.inc157.i_crit_edge, %for.body123.i.for.inc157.i_crit_edge
  %inc158.i = add nuw nsw i32 %j.2274.i, 1
  %exitcond277.not.i = icmp eq i32 %inc158.i, 3
  br i1 %exitcond277.not.i, label %panfrost_job_handle_irq.exit, label %for.inc157.i.for.body123.i_crit_edge

for.inc157.i.for.body123.i_crit_edge:             ; preds = %for.inc157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body123.i

panfrost_job_handle_irq.exit:                     ; preds = %for.inc157.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %failed.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %done.i) #9
  %106 = ptrtoint ptr %js to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %js, align 4
  %job_lock3 = getelementptr inbounds %struct.panfrost_job_slot, ptr %107, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %job_lock3) #9
  %108 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %iomem, align 4
  %add.ptr7 = getelementptr i8, ptr %109, i32 4096
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !81
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  %tobool.not = icmp eq i32 %110, 0
  br i1 %tobool.not, label %panfrost_job_handle_irq.exit.while.end_crit_edge, label %panfrost_job_handle_irq.exit.for.cond.preheader.lr.ph.i_crit_edge

panfrost_job_handle_irq.exit.for.cond.preheader.lr.ph.i_crit_edge: ; preds = %panfrost_job_handle_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.lr.ph.i

panfrost_job_handle_irq.exit.while.end_crit_edge: ; preds = %panfrost_job_handle_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %panfrost_job_handle_irq.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_devfreq_record_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_device_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_end_signalling(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_resubmit_jobs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_start(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @panfrost_job_handle_err(ptr noundef %pfdev, ptr nocapture noundef %job, i32 noundef %js) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %mul = shl i32 %js, 7
  %add = add i32 %mul, 6144
  %add1 = add i32 %mul, 6180
  %add.ptr = getelementptr i8, ptr %1, i32 %add1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  %call3 = tail call ptr @panfrost_exception_name(i32 noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %3)
  %cmp.i = icmp ugt i32 %3, 63
  br i1 %cmp.i, label %do.end32, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @panfrost_job_handle_err.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@panfrost_job_handle_err, %if.then9)) #9
          to label %if.end54 [label %if.then9], !srcloc !107

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfdev, align 8
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %add.ptr16 = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !81
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %10 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem, align 4
  %add25 = add i32 %mul, 6152
  %add.ptr26 = getelementptr i8, ptr %11, i32 %add25
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #9, !srcloc !81
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @panfrost_job_handle_err.__UNIQUE_ID_ddebug305, ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %js, ptr noundef %call3, i32 noundef %9, i32 noundef %13) #9
  br label %if.end54

do.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pfdev, align 8
  %16 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem, align 4
  %add.ptr40 = getelementptr i8, ptr %17, i32 %add
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #9, !srcloc !81
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  %20 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem, align 4
  %add49 = add i32 %mul, 6152
  %add.ptr50 = getelementptr i8, ptr %21, i32 %add49
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #9, !srcloc !81
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.20, i32 noundef %js, ptr noundef %call3, i32 noundef %19, i32 noundef %23) #12
  br label %if.end54

if.end54:                                         ; preds = %do.end32, %if.then9, %do.body
  %24 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.else82 [
    i32 50331648, label %if.then55
    i32 67108864, label %if.then80
  ]

if.then55:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem, align 4
  %add61 = add i32 %mul, 6152
  %add.ptr62 = getelementptr i8, ptr %26, i32 %add61
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  %28 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iomem, align 4
  %add71 = add i32 %mul, 6156
  %add.ptr72 = getelementptr i8, ptr %29, i32 %add71
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  %31 = zext i32 %30 to i64
  %32 = zext i32 %27 to i64
  %33 = shl nuw i64 %32, 32
  %34 = or i64 %33, %31
  %35 = tail call i64 @llvm.bswap.i64(i64 %34)
  %jc = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 5
  %36 = ptrtoint ptr %jc to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %jc, align 8
  %file_priv.c144 = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 3
  %37 = ptrtoint ptr %file_priv.c144 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %file_priv.c144, align 8
  %mmu.c145 = getelementptr inbounds %struct.panfrost_file_priv, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %mmu.c145 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmu.c145, align 8
  tail call void @panfrost_mmu_as_put(ptr noundef %pfdev, ptr noundef %40) #9
  %pfdevfreq.c146 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27
  tail call void @panfrost_devfreq_record_idle(ptr noundef %pfdevfreq.c146) #9
  br label %if.end94

if.then80:                                        ; preds = %if.end54
  %done_fence = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 4
  %41 = ptrtoint ptr %done_fence to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %done_fence, align 4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then80.if.then91.sink.split_crit_edge, label %if.then80.if.then91.sink.split.sink.split_crit_edge, !prof !72

if.then80.if.then91.sink.split.sink.split_crit_edge: ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91.sink.split.sink.split

if.then80.if.then91.sink.split_crit_edge:         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91.sink.split

if.else82:                                        ; preds = %if.end54
  br i1 %cmp.i, label %if.then84, label %if.else82.if.then91_crit_edge

if.else82.if.then91_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

if.then84:                                        ; preds = %if.else82
  %done_fence85 = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 4
  %45 = ptrtoint ptr %done_fence85 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %done_fence85, align 4
  %flags.i148 = getelementptr inbounds %struct.dma_fence, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %flags.i148 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags.i148, align 4
  %and1.i.i149 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i149)
  %tobool.not.i150 = icmp eq i32 %and1.i.i149, 0
  br i1 %tobool.not.i150, label %if.then84.if.then91.sink.split_crit_edge, label %if.then84.if.then91.sink.split.sink.split_crit_edge, !prof !72

if.then84.if.then91.sink.split.sink.split_crit_edge: ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91.sink.split.sink.split

if.then84.if.then91.sink.split_crit_edge:         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91.sink.split

if.then91.sink.split.sink.split:                  ; preds = %if.then84.if.then91.sink.split.sink.split_crit_edge, %if.then80.if.then91.sink.split.sink.split_crit_edge
  %.sink155.ph = phi ptr [ %42, %if.then80.if.then91.sink.split.sink.split_crit_edge ], [ %46, %if.then84.if.then91.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i32 [ -125, %if.then80.if.then91.sink.split.sink.split_crit_edge ], [ -22, %if.then84.if.then91.sink.split.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %if.then91.sink.split

if.then91.sink.split:                             ; preds = %if.then91.sink.split.sink.split, %if.then84.if.then91.sink.split_crit_edge, %if.then80.if.then91.sink.split_crit_edge
  %.sink155 = phi ptr [ %42, %if.then80.if.then91.sink.split_crit_edge ], [ %46, %if.then84.if.then91.sink.split_crit_edge ], [ %.sink155.ph, %if.then91.sink.split.sink.split ]
  %.sink = phi i32 [ -125, %if.then80.if.then91.sink.split_crit_edge ], [ -22, %if.then84.if.then91.sink.split_crit_edge ], [ %.sink.ph, %if.then91.sink.split.sink.split ]
  %error51.i152 = getelementptr inbounds %struct.dma_fence, ptr %.sink155, i32 0, i32 7
  %49 = ptrtoint ptr %error51.i152 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %error51.i152, align 8
  %jc86 = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 5
  %50 = ptrtoint ptr %jc86 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %jc86, align 8
  br label %if.then91

if.then91:                                        ; preds = %if.then91.sink.split, %if.else82.if.then91_crit_edge
  %file_priv.c141 = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 3
  %51 = ptrtoint ptr %file_priv.c141 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %file_priv.c141, align 8
  %mmu.c142 = getelementptr inbounds %struct.panfrost_file_priv, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %mmu.c142 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmu.c142, align 8
  tail call void @panfrost_mmu_as_put(ptr noundef %pfdev, ptr noundef %54) #9
  %pfdevfreq.c143 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27
  tail call void @panfrost_devfreq_record_idle(ptr noundef %pfdevfreq.c143) #9
  %done_fence92 = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 4
  %55 = ptrtoint ptr %done_fence92 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %done_fence92, align 4
  %call93 = tail call i32 @dma_fence_signal_locked(ptr noundef %56) #9
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.then55
  %57 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pfdev, align 8
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %58, i32 noundef 13) #9
  %call97 = tail call zeroext i1 @panfrost_exception_needs_reset(ptr noundef %pfdev, i32 noundef %3) #9
  br i1 %call97, label %if.then98, label %if.end94.if.end100_crit_edge

if.end94.if.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %pending = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 23, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending, i32 noundef 4) #9
  %59 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 1, ptr %pending, align 4
  %js99 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 18
  %60 = ptrtoint ptr %js99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %js99, align 4
  %arrayidx = getelementptr [3 x %struct.panfrost_queue_state], ptr %61, i32 0, i32 %js
  tail call void @drm_sched_fault(ptr noundef %arrayidx) #9
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end94.if.end100_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_exception_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_as_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @panfrost_exception_needs_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fault(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @panfrost_job_run(ptr noundef %sched_job) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pfdev1 = getelementptr inbounds %struct.panfrost_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %pfdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfdev1, align 4
  %requirements.i = getelementptr inbounds %struct.panfrost_job, ptr %sched_job, i32 0, i32 6
  %2 = ptrtoint ptr %requirements.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requirements.i, align 8
  %and.i = and i32 %3, 1
  %4 = xor i32 %and.i, 1
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 3
  %5 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fence, align 8
  %error = getelementptr inbounds %struct.drm_sched_fence, ptr %6, i32 0, i32 1, i32 7
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !72

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %jc = getelementptr inbounds %struct.panfrost_job, ptr %sched_job, i32 0, i32 5
  %9 = ptrtoint ptr %jc to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %jc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool5.not = icmp eq i64 %10, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %js1.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %js1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %js1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 72) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %panfrost_fence_create.exit

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

panfrost_fence_create.exit:                       ; preds = %if.end7
  %ddev.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddev.i, align 4
  %dev.i = getelementptr inbounds %struct.panfrost_fence, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dev.i, align 8
  %queue.i = getelementptr inbounds %struct.panfrost_fence, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %4, ptr %queue.i, align 8
  %emit_seqno.i = getelementptr [3 x %struct.panfrost_queue_state], ptr %12, i32 0, i32 %4, i32 2
  %18 = ptrtoint ptr %emit_seqno.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %emit_seqno.i, align 8
  %inc.i = add i64 %19, 1
  store i64 %inc.i, ptr %emit_seqno.i, align 8
  %seqno.i = getelementptr inbounds %struct.panfrost_fence, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %seqno.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %inc.i, ptr %seqno.i, align 8
  %job_lock.i = getelementptr inbounds %struct.panfrost_job_slot, ptr %12, i32 0, i32 1
  %fence_context.i = getelementptr [3 x %struct.panfrost_queue_state], ptr %12, i32 0, i32 %4, i32 1
  %21 = ptrtoint ptr %fence_context.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fence_context.i, align 8
  tail call void @dma_fence_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @panfrost_fence_ops, ptr noundef %job_lock.i, i64 noundef %22, i64 noundef %inc.i) #9
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %panfrost_fence_create.exit.cleanup_crit_edge, label %if.end11

panfrost_fence_create.exit.cleanup_crit_edge:     ; preds = %panfrost_fence_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %panfrost_fence_create.exit
  %done_fence = getelementptr inbounds %struct.panfrost_job, ptr %sched_job, i32 0, i32 4
  %23 = ptrtoint ptr %done_fence to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %done_fence, align 4
  %tobool12.not = icmp eq ptr %24, null
  br i1 %tobool12.not, label %if.end11.if.then.i37_crit_edge, label %if.then.i

if.end11.if.then.i37_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i37

if.then.i:                                        ; preds = %if.end11
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %24, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then.i37_crit_edge, label %if.then10.i.i.i.i.i, !prof !72

if.end5.i.i.i.i.i.if.then.i37_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i37

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.then.i37

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @dma_fence_release(ptr noundef %refcount.i) #9, !callees !76
  br label %if.then.i37

if.then.i37:                                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then.i37_crit_edge, %if.end11.if.then.i37_crit_edge
  %refcount.i35 = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i35, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i35, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i35, ptr %refcount.i35, i32 1, ptr elementtype(i32) %refcount.i35) #9, !srcloc !70
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i37.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !71

if.then.i37.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i37
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i38 = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i38, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !72

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i37.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i37.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i35, i32 noundef %.sink.i.i.i.i.i) #9
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge
  %28 = ptrtoint ptr %done_fence to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i, ptr %done_fence, align 4
  tail call fastcc void @panfrost_job_hw_submit(ptr noundef %sched_job, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %dma_fence_get.exit, %panfrost_fence_create.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %dma_fence_get.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i.i, %panfrost_fence_create.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_job_timedout(ptr noundef %sched_job) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pfdev1 = getelementptr inbounds %struct.panfrost_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %pfdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfdev1, align 4
  %requirements.i = getelementptr inbounds %struct.panfrost_job, ptr %sched_job, i32 0, i32 6
  %2 = ptrtoint ptr %requirements.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requirements.i, align 8
  %and.i = and i32 %3, 1
  %4 = xor i32 %and.i, 1
  %done_fence = getelementptr inbounds %struct.panfrost_job, ptr %sched_job, i32 0, i32 4
  %5 = ptrtoint ptr %done_fence to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %done_fence, align 4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end.i.do.end_crit_edge, label %land.lhs.true.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %12(ptr noundef %6) #9
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.do.end_crit_edge

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %6) #9
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomem, align 4
  %mul = shl nuw nsw i32 %4, 7
  %add = or i32 %mul, 6144
  %add4 = or i32 %mul, 6168
  %add.ptr = getelementptr i8, ptr %16, i32 %add4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !81
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %19 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iomem, align 4
  %add12 = or i32 %mul, 6180
  %add.ptr13 = getelementptr i8, ptr %20, i32 %add12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !81
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %23 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem, align 4
  %add.ptr23 = getelementptr i8, ptr %24, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #9, !srcloc !81
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  %27 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomem, align 4
  %add32 = or i32 %mul, 6152
  %add.ptr33 = getelementptr i8, ptr %28, i32 %add32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #9, !srcloc !81
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.27, i32 noundef %4, i32 noundef %18, i32 noundef %22, i32 noundef %26, i32 noundef %30, ptr noundef %sched_job) #12
  %pending = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 23, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending, i32 noundef 4) #9
  %31 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 1, ptr %pending, align 4
  tail call fastcc void @panfrost_reset(ptr noundef %1, ptr noundef %sched_job)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then5.i, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panfrost_job_free(ptr noundef %sched_job) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_job_cleanup(ptr noundef %sched_job) #9
  tail call void @panfrost_job_put(ptr noundef %sched_job)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @panfrost_job_hw_submit(ptr noundef %job, i32 noundef %js) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pfdev1 = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 2
  %0 = ptrtoint ptr %pfdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfdev1, align 4
  %jc = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 5
  %2 = ptrtoint ptr %jc to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %jc, align 8
  %pfdevfreq = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 27
  tail call void @panfrost_devfreq_record_busy(ptr noundef %pfdevfreq) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %mul = shl i32 %js, 7
  %add2 = add i32 %mul, 6240
  %add.ptr = getelementptr i8, ptr %7, i32 %add2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end29, label %do.end, !prof !72

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 200, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %file_priv = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 3
  %9 = ptrtoint ptr %file_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %file_priv, align 8
  %mmu = getelementptr inbounds %struct.panfrost_file_priv, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmu, align 8
  %call30 = tail call i32 @panfrost_mmu_as_get(ptr noundef %1, ptr noundef %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %conv = trunc i64 %3 to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %14 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem, align 4
  %add37 = add i32 %mul, 6208
  %add.ptr38 = getelementptr i8, ptr %15, i32 %add37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %13) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %shr = lshr i64 %3, 32
  %conv43 = trunc i64 %shr to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv43)
  %17 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem, align 4
  %add47 = add i32 %mul, 6212
  %add.ptr48 = getelementptr i8, ptr %18, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %16) #9, !srcloc !79
  %shader_present.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 2
  %19 = ptrtoint ptr %shader_present.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %shader_present.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %conv.i = trunc i64 %20 to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  %22 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem, align 4
  %add1.i = add i32 %mul, 6224
  %add.ptr.i = getelementptr i8, ptr %23, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %20, 32
  %conv6.i = trunc i64 %shr.i to i32
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #9
  %25 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem, align 4
  %add10.i = add i32 %mul, 6228
  %add.ptr11.i = getelementptr i8, ptr %26, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %24) #9, !srcloc !79
  %done_fence.i = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 4
  %27 = ptrtoint ptr %done_fence.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %done_fence.i, align 4
  %29 = ptrtoint ptr %pfdev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pfdev1, align 4
  %hw_features.i.i = getelementptr inbounds %struct.panfrost_device, ptr %30, i32 0, i32 11, i32 23
  %31 = ptrtoint ptr %hw_features.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %hw_features.i.i, align 4
  %33 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i, label %if.end29.panfrost_get_job_chain_flag.exit_crit_edge, label %if.end.i

if.end29.panfrost_get_job_chain_flag.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_get_job_chain_flag.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %seqno.i = getelementptr inbounds %struct.panfrost_fence, ptr %28, i32 0, i32 2
  %34 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %seqno.i, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 11
  %38 = and i32 %37, 2048
  %phi.bo = or i32 %38, 537344
  br label %panfrost_get_job_chain_flag.exit

panfrost_get_job_chain_flag.exit:                 ; preds = %if.end.i, %if.end29.panfrost_get_job_chain_flag.exit_crit_edge
  %retval.0.i153 = phi i32 [ %phi.bo, %if.end.i ], [ 537344, %if.end29.panfrost_get_job_chain_flag.exit_crit_edge ]
  %or50 = or i32 %retval.0.i153, %call30
  %hw_features.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 23
  %39 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %hw_features.i, align 4
  %41 = lshr i32 %40, 8
  %42 = and i32 %41, 16384
  %43 = or i32 %or50, %42
  %hw_issues.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 24
  %44 = ptrtoint ptr %hw_issues.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %hw_issues.i, align 4
  %46 = lshr i32 %45, 4
  %47 = and i32 %46, 1024
  %48 = or i32 %43, %47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomem, align 4
  %add65 = add i32 %mul, 6232
  %add.ptr66 = getelementptr i8, ptr %51, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %49) #9, !srcloc !79
  %52 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %hw_features.i, align 4
  %54 = and i32 %53, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i156.not = icmp eq i32 %54, 0
  br i1 %tobool.i156.not, label %panfrost_get_job_chain_flag.exit.if.end77_crit_edge, label %do.body69

panfrost_get_job_chain_flag.exit.if.end77_crit_edge: ; preds = %panfrost_get_job_chain_flag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

do.body69:                                        ; preds = %panfrost_get_job_chain_flag.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %flush_id = getelementptr inbounds %struct.panfrost_job, ptr %job, i32 0, i32 7
  %55 = ptrtoint ptr %flush_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flush_id, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iomem, align 4
  %add75 = add i32 %mul, 6256
  %add.ptr76 = getelementptr i8, ptr %59, i32 %add75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %57) #9, !srcloc !79
  br label %if.end77

if.end77:                                         ; preds = %do.body69, %panfrost_get_job_chain_flag.exit.if.end77_crit_edge
  %js78 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 18
  %60 = ptrtoint ptr %js78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %js78, align 4
  %job_lock = getelementptr inbounds %struct.panfrost_job_slot, ptr %61, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %job_lock) #9
  %tobool.not.i = icmp eq ptr %job, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !71

do.end.i:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 171, i32 noundef 9, ptr noundef null) #9
  br label %panfrost_enqueue_job.exit

if.end23.i:                                       ; preds = %if.end77
  %arrayidx.i = getelementptr %struct.panfrost_device, ptr %1, i32 0, i32 19, i32 %js
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 8
  %tobool25.not.i = icmp eq ptr %63, null
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end30.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %job, ptr %arrayidx.i, align 8
  br label %panfrost_enqueue_job.exit

if.end30.i:                                       ; preds = %if.end23.i
  %arrayidx34.i = getelementptr %struct.panfrost_device, ptr %1, i32 0, i32 19, i32 %js, i32 1
  %65 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx34.i, align 4
  %tobool35.not.i = icmp eq ptr %66, null
  br i1 %tobool35.not.i, label %if.end30.i.if.end57.i_crit_edge, label %do.end51.i, !prof !72

if.end30.i.if.end57.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

do.end51.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 179, i32 noundef 9, ptr noundef null) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end51.i, %if.end30.i.if.end57.i_crit_edge
  %67 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %job, ptr %arrayidx34.i, align 4
  %68 = ptrtoint ptr %done_fence.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %done_fence.i, align 4
  %70 = ptrtoint ptr %pfdev1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pfdev1, align 4
  %hw_features.i.i.i = getelementptr inbounds %struct.panfrost_device, ptr %71, i32 0, i32 11, i32 23
  %72 = ptrtoint ptr %hw_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %hw_features.i.i.i, align 4
  %74 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool.i.not.i.i, label %if.end57.i.panfrost_get_job_chain_flag.exit.i_crit_edge, label %if.end.i.i

if.end57.i.panfrost_get_job_chain_flag.exit.i_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_get_job_chain_flag.exit.i

if.end.i.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %seqno.i.i = getelementptr inbounds %struct.panfrost_fence, ptr %69, i32 0, i32 2
  %75 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %seqno.i.i, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 11
  %79 = and i32 %78, 2048
  br label %panfrost_get_job_chain_flag.exit.i

panfrost_get_job_chain_flag.exit.i:               ; preds = %if.end.i.i, %if.end57.i.panfrost_get_job_chain_flag.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %79, %if.end.i.i ], [ 0, %if.end57.i.panfrost_get_job_chain_flag.exit.i_crit_edge ]
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i, align 8
  %done_fence.i116.i = getelementptr inbounds %struct.panfrost_job, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %done_fence.i116.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %done_fence.i116.i, align 4
  %pfdev.i117.i = getelementptr inbounds %struct.panfrost_job, ptr %81, i32 0, i32 2
  %84 = ptrtoint ptr %pfdev.i117.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pfdev.i117.i, align 4
  %hw_features.i.i118.i = getelementptr inbounds %struct.panfrost_device, ptr %85, i32 0, i32 11, i32 23
  %86 = ptrtoint ptr %hw_features.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %hw_features.i.i118.i, align 4
  %88 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.i.not.i119.i = icmp eq i32 %88, 0
  br i1 %tobool.i.not.i119.i, label %panfrost_get_job_chain_flag.exit.i.panfrost_get_job_chain_flag.exit123.i_crit_edge, label %if.end.i121.i

panfrost_get_job_chain_flag.exit.i.panfrost_get_job_chain_flag.exit123.i_crit_edge: ; preds = %panfrost_get_job_chain_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_get_job_chain_flag.exit123.i

if.end.i121.i:                                    ; preds = %panfrost_get_job_chain_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %seqno.i120.i = getelementptr inbounds %struct.panfrost_fence, ptr %83, i32 0, i32 2
  %89 = ptrtoint ptr %seqno.i120.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %seqno.i120.i, align 8
  %91 = trunc i64 %90 to i32
  %92 = shl i32 %91, 11
  %93 = and i32 %92, 2048
  br label %panfrost_get_job_chain_flag.exit123.i

panfrost_get_job_chain_flag.exit123.i:            ; preds = %if.end.i121.i, %panfrost_get_job_chain_flag.exit.i.panfrost_get_job_chain_flag.exit123.i_crit_edge
  %retval.0.i122.i = phi i32 [ %93, %if.end.i121.i ], [ 0, %panfrost_get_job_chain_flag.exit.i.panfrost_get_job_chain_flag.exit123.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %retval.0.i122.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, %retval.0.i122.i
  br i1 %cmp.i, label %do.end88.i, label %panfrost_get_job_chain_flag.exit123.i.panfrost_enqueue_job.exit_crit_edge, !prof !71

panfrost_get_job_chain_flag.exit123.i.panfrost_enqueue_job.exit_crit_edge: ; preds = %panfrost_get_job_chain_flag.exit123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %panfrost_enqueue_job.exit

do.end88.i:                                       ; preds = %panfrost_get_job_chain_flag.exit123.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 182, i32 noundef 9, ptr noundef null) #9
  br label %panfrost_enqueue_job.exit

panfrost_enqueue_job.exit:                        ; preds = %do.end88.i, %panfrost_get_job_chain_flag.exit123.i.panfrost_enqueue_job.exit_crit_edge, %if.then26.i, %do.end.i
  %retval.0.i157 = phi i32 [ 0, %do.end.i ], [ 0, %if.then26.i ], [ 1, %do.end88.i ], [ 1, %panfrost_get_job_chain_flag.exit123.i.panfrost_enqueue_job.exit_crit_edge ]
  %pending = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 23, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending, i32 noundef 4) #9
  %94 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool81.not = icmp eq i32 %95, 0
  br i1 %tobool81.not, label %do.body83, label %panfrost_enqueue_job.exit.if.end107_crit_edge

panfrost_enqueue_job.exit.if.end107_crit_edge:    ; preds = %panfrost_enqueue_job.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

do.body83:                                        ; preds = %panfrost_enqueue_job.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %iomem, align 4
  %add.ptr90 = getelementptr i8, ptr %97, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 16777216) #9, !srcloc !79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @panfrost_job_hw_submit.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@panfrost_job_hw_submit, %if.then101)) #9
          to label %if.end107 [label %if.then101], !srcloc !107

if.then101:                                       ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 8
  %and103 = and i32 %call30, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @panfrost_job_hw_submit.__UNIQUE_ID_ddebug304, ptr noundef %99, ptr noundef nonnull @.str.26, ptr noundef %job, i32 noundef %js, i32 noundef %retval.0.i157, i64 noundef %3, i32 noundef %and103) #9
  br label %if.end107

if.end107:                                        ; preds = %if.then101, %do.body83, %panfrost_enqueue_job.exit.if.end107_crit_edge
  %100 = ptrtoint ptr %js78 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %js78, align 4
  %job_lock109 = getelementptr inbounds %struct.panfrost_job_slot, ptr %101, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %job_lock109) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @panfrost_fence_get_driver_name(ptr nocapture noundef readnone %fence) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @panfrost_fence_get_timeline_name(ptr nocapture noundef readonly %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.panfrost_fence, ptr %fence, i32 0, i32 3
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.panfrost_fence_get_timeline_name, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_devfreq_record_busy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_mmu_as_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @panfrost_job_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 786, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @panfrost_job_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 787, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 789, i32 68}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 796, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 799, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @panfrost_job_init._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @panfrost_job_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 803, i32 20}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 815, i32 16}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 817, i32 4}
!24 = !{ptr @panfrost_job_init._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @panfrost_job_init._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 649, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @panfrost_reset._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @panfrost_reset._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 403, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @panfrost_job_handle_err.__UNIQUE_ID_ddebug305, !32, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 408, i32 3}
!38 = !{ptr @panfrost_job_handle_err._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @panfrost_job_handle_err._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/dma-fence.h", i32 545, i32 2}
!42 = !{ptr @panfrost_sched_ops, !43, !"panfrost_sched_ops", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 740, i32 43}
!44 = !{ptr @panfrost_fence_ops, !45, !"panfrost_fence_ops", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 82, i32 35}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 72, i32 10}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 74, i32 10}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 76, i32 10}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 236, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @panfrost_job_hw_submit.__UNIQUE_ID_ddebug304, !53, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panfrost/panfrost_job.c", i32 718, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @panfrost_job_timedout._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @panfrost_job_timedout._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148213102, i64 2148213134, i64 2148213163, i64 2148213197, i64 2148213228, i64 2148213251}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2148301103}
!74 = !{i64 2148215567, i64 2148215599, i64 2148215628, i64 2148215662, i64 2148215693, i64 2148215716}
!75 = !{i64 2149579821}
!76 = distinct !{ptr @dma_fence_release, ptr @drm_gem_object_free, null}
!77 = !{i64 2148214037, i64 2148214063, i64 2148214092, i64 2148214126, i64 2148214157, i64 2148214180}
!78 = !{i64 2155706491}
!79 = !{i64 4228346}
!80 = !{i64 2155706980}
!81 = !{i64 4228764}
!82 = !{i64 2155746465}
!83 = !{i64 2155746741}
!84 = !{i64 2155743883}
!85 = !{i64 2155753102}
!86 = !{i64 2155754585}
!87 = !{i64 2155755182}
!88 = !{i64 2155723206}
!89 = !{i64 2155723761}
!90 = !{i64 2155724350}
!91 = !{i64 2155726367}
!92 = !{i64 2155722888}
!93 = !{i64 2155726869}
!94 = !{i64 2148210991}
!95 = !{i64 695814, i64 695839, i64 695861, i64 695877, i64 695889, i64 695909, i64 695933, i64 695949, i64 695961}
!96 = !{i64 2148211179}
!97 = !{i64 2155729108}
!98 = !{i64 2155732226}
!99 = !{i64 2155721752}
!100 = !{i64 2155717846}
!101 = !{i64 2155718346}
!102 = !{i64 2155719107}
!103 = !{i64 2155719675}
!104 = !{i64 2155720970}
!105 = !{i64 2155722320}
!106 = !{i64 2155707922}
!107 = !{i64 2148779237, i64 2148779242, i64 2148779255, i64 2148779299, i64 2148779333, i64 2148779354}
!108 = !{i64 2155711516}
!109 = !{i64 2155712259}
!110 = !{i64 2155715007}
!111 = !{i64 2155715750}
!112 = !{i64 2155716493}
!113 = !{i64 2155717236}
!114 = !{i64 2155737456}
!115 = !{i64 2155738199}
!116 = !{i64 2155738942}
!117 = !{i64 2155739685}
!118 = !{i64 2155698184}
!119 = !{i64 2155699020}
!120 = !{i64 2155699790}
!121 = !{i64 2155693718}
!122 = !{i64 2155694494}
!123 = !{i64 2155700669}
!124 = !{i64 2155701272}
!125 = !{i64 2155701892}
