; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_object.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.qxl_bo = type <{ %struct.ttm_buffer_object, %struct.list_head, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.dma_buf_map, ptr, i32, i32, i8, [3 x i8], ptr, i8, %struct.qxl_surface, [3 x i8], i32, ptr }>
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.dma_buf_map = type { %union.anon.86, i8 }
%union.anon.86 = type { ptr }
%struct.qxl_surface = type { i32, i32, i32, i32, i64 }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.qxl_mman = type { %struct.ttm_device }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.89] }
%struct.anon.89 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.qxl_gem = type { %struct.mutex, %struct.list_head }
%struct.qxl_memslot = type { i32, ptr, i8, i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qxl_debugfs = type { ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_mapping = type { i32, i32, i32, ptr }

@qxl_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @qxl_gem_object_free, ptr @qxl_gem_object_open, ptr @qxl_gem_object_close, ptr @drm_gem_ttm_print_info, ptr null, ptr @qxl_gem_prime_pin, ptr @qxl_gem_prime_unpin, ptr @qxl_gem_prime_get_sg_table, ptr @qxl_gem_prime_vmap, ptr @qxl_gem_prime_vunmap, ptr @drm_gem_ttm_mmap, ptr null }, [48 x i8] zeroinitializer }, align 32
@qxl_bo_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"object_init failed for (%lu, 0x%08X)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qxl_bo_create\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/qxl/qxl_object.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qxl_bo_create._entry_ptr = internal global ptr @qxl_bo_create._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@qxl_bo_force_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 360, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Userspace still has active objects !\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qxl_bo_force_delete\00", [44 x i8] zeroinitializer }, align 32
@qxl_bo_force_delete._entry_ptr = internal global ptr @qxl_bo_force_delete._entry, section ".printk_index", align 4
@qxl_bo_force_delete._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 364, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%p %p %lu %lu force free\0A\00", [38 x i8] zeroinitializer }, align 32
@qxl_bo_force_delete._entry_ptr.9 = internal global ptr @qxl_bo_force_delete._entry.7, section ".printk_index", align 4
@qxl_ttm_bo_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/drm/ttm/ttm_bo_api.h\00", [35 x i8] zeroinitializer }, align 32
@ttm_bo_pin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@qxl_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qxl_bo_reserve\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/qxl/qxl_object.h\00", [63 x i8] zeroinitializer }, align 32
@qxl_bo_reserve._entry_ptr = internal global ptr @qxl_bo_reserve._entry, section ".printk_index", align 4
@__qxl_bo_pin._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 309, ptr @.str.3, ptr @.str.4 }, align 1
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%p pin failed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__qxl_bo_pin\00", [19 x i8] zeroinitializer }, align 32
@__qxl_bo_pin._entry_ptr = internal global ptr @__qxl_bo_pin._entry, section ".printk_index", align 4
@ttm_bo_unpin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ttm_bo_unpin.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"qxl_object_funcs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 96, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 149, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 360, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 362, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [32 x i8] c"../include/drm/ttm/ttm_bo_api.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 551, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [36 x i8] c"../drivers/gpu/drm/qxl/qxl_object.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 39, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [36 x i8] c"../drivers/gpu/drm/qxl/qxl_object.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 309, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__qxl_bo_pin._entry, ptr @__qxl_bo_pin._entry_ptr, ptr @qxl_bo_create._entry, ptr @qxl_bo_create._entry_ptr, ptr @qxl_bo_force_delete._entry, ptr @qxl_bo_force_delete._entry.7, ptr @qxl_bo_force_delete._entry_ptr, ptr @qxl_bo_force_delete._entry_ptr.9, ptr @qxl_bo_reserve._entry, ptr @qxl_bo_reserve._entry_ptr, ptr @qxl_object_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_bo_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_bo_force_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_bo_force_delete._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qxl_ttm_bo_is_qxl_bo(ptr nocapture noundef readonly %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %destroy = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 4
  %0 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destroy, align 4
  %cmp = icmp eq ptr %1, @qxl_ttm_bo_destroy
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_ttm_bo_destroy(ptr noundef %tbo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %tbo, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void @qxl_surface_evict(ptr noundef %1, ptr noundef %tbo, i1 noundef zeroext false) #9
  %map_count = getelementptr inbounds %struct.qxl_bo, ptr %tbo, i32 0, i32 6
  %2 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end32_crit_edge, label %land.rhs

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %.b53 = load i1, ptr @qxl_ttm_bo_destroy.__already_done, align 1
  br i1 %.b53, label %land.rhs.if.end32_crit_edge, label %if.then, !prof !52

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qxl_ttm_bo_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 44, i32 noundef 9, ptr noundef null) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  %gem = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gem, i32 noundef 0) #9
  %list = getelementptr inbounds %struct.qxl_bo, ptr %tbo, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.list_del_init.exit_crit_edge

if.end32.list_del_init.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.qxl_bo, ptr %tbo, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end32.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.qxl_bo, ptr %tbo, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %gem) #9
  tail call void @drm_gem_object_release(ptr noundef %tbo) #9
  tail call void @kfree(ptr noundef %tbo) #9
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_ttm_placement_from_domain(ptr noundef %qbo, i32 noundef %domain) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %qbo, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %1)
  %cmp = icmp ult i32 %1, 4097
  %spec.select = select i1 %cmp, i32 2, i32 0
  %placements = getelementptr inbounds %struct.qxl_bo, ptr %qbo, i32 0, i32 2
  %placement = getelementptr inbounds %struct.qxl_bo, ptr %qbo, i32 0, i32 3
  %placement1 = getelementptr inbounds %struct.qxl_bo, ptr %qbo, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %placement1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %placements, ptr %placement1, align 4
  %busy_placement = getelementptr inbounds %struct.qxl_bo, ptr %qbo, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %busy_placement to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %placements, ptr %busy_placement, align 4
  %4 = zext i32 %domain to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %domain, label %if.then38 [
    i32 1, label %if.end10.thread
    i32 2, label %if.then12
    i32 0, label %if.then29
  ]

if.end10.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type = getelementptr inbounds %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %mem_type, align 8
  %flags = getelementptr inbounds %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %flags, align 4
  br label %if.end46

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type15 = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %mem_type15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %mem_type15, align 8
  %flags19 = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0, i32 3
  %8 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %flags19, align 4
  %mem_type22 = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 1, i32 2
  %9 = ptrtoint ptr %mem_type22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %mem_type22, align 8
  %flags26 = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 1, i32 3
  %10 = ptrtoint ptr %flags26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %flags26, align 4
  %11 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %placement, align 8
  %num_busy_placement.c = getelementptr inbounds %struct.qxl_bo, ptr %qbo, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %num_busy_placement.c to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %num_busy_placement.c, align 8
  %arrayidx51.c = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0
  %13 = ptrtoint ptr %arrayidx51.c to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx51.c, align 8
  %lpfn.c = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %lpfn.c to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %lpfn.c, align 4
  %arrayidx51.1 = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx51.1, align 8
  %lpfn.1 = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %lpfn.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %lpfn.1, align 4
  br label %for.end

if.then29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type32 = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %mem_type32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mem_type32, align 8
  %flags36 = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0, i32 3
  %18 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %flags36, align 4
  br label %if.end46

if.then38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type41 = getelementptr inbounds %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0, i32 2
  %19 = ptrtoint ptr %mem_type41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %mem_type41, align 8
  %flags45 = getelementptr inbounds %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0, i32 3
  %20 = ptrtoint ptr %flags45 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then38, %if.then29, %if.end10.thread
  %21 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %placement, align 8
  %num_busy_placement = getelementptr inbounds %struct.qxl_bo, ptr %qbo, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %num_busy_placement, align 8
  %arrayidx51 = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0
  %23 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx51, align 8
  %lpfn = getelementptr %struct.qxl_bo, ptr %qbo, i32 0, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lpfn, align 4
  br label %for.end

for.end:                                          ; preds = %if.end46, %if.then12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_bo_create(ptr noundef %qdev, i32 noundef %size, i1 noundef zeroext %kernel, i1 noundef zeroext %pinned, i32 noundef %domain, i32 noundef %priority, ptr noundef readonly %surf, ptr nocapture noundef writeonly %bo_ptr) local_unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #9
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %lnot = xor i1 %kernel, true
  %frombool2 = zext i1 %lnot to i8
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool2, ptr %ctx, align 8
  %. = zext i1 %kernel to i32
  %2 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bo_ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 552) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %add = add i32 %size, 4095
  %div75 = and i32 %add, -4096
  %call6 = tail call i32 @drm_gem_object_init(ptr noundef %qdev, ptr noundef nonnull %call7.i.i, i32 noundef %div75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end12, label %if.then11, !prof !52

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @qxl_object_funcs, ptr %funcs, align 4
  %type15 = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %domain, ptr %type15, align 8
  %surface_id = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 14
  %6 = ptrtoint ptr %surface_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %surface_id, align 8
  %list = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %tobool16.not = icmp eq ptr %surf, null
  br i1 %tobool16.not, label %if.end12.if.end19_crit_edge, label %if.then17

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %surf18 = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 12
  %9 = call ptr @memcpy(ptr %surf18, ptr %surf, i32 24)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end12.if.end19_crit_edge
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %11)
  %cmp.i = icmp ult i32 %11, 4097
  %spec.select.i = select i1 %cmp.i, i32 2, i32 0
  %placements.i = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2
  %placement.i = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 3
  %placement1.i = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %placement1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %placements.i, ptr %placement1.i, align 4
  %busy_placement.i = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %placements.i, ptr %busy_placement.i, align 4
  %14 = zext i32 %domain to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %domain, label %if.then38.i [
    i32 1, label %if.end10.thread.i
    i32 2, label %if.then12.i
    i32 0, label %if.then29.i
  ]

if.end10.thread.i:                                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type.i = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %15 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %mem_type.i, align 8
  %flags.i = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select.i, ptr %flags.i, align 4
  %17 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %placement.i, align 8
  %num_busy_placement.i = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %num_busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %num_busy_placement.i, align 8
  %arrayidx51.i = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0
  %19 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx51.i, align 8
  %lpfn.i = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %lpfn.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %lpfn.i, align 4
  br label %qxl_ttm_placement_from_domain.exit

if.then12.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type15.i = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %mem_type15.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %mem_type15.i, align 8
  %flags19.i = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %22 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i, ptr %flags19.i, align 4
  %mem_type22.i = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 2
  %23 = ptrtoint ptr %mem_type22.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %mem_type22.i, align 8
  %flags26.i = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 3
  %24 = ptrtoint ptr %flags26.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select.i, ptr %flags26.i, align 4
  %25 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %placement.i, align 8
  %num_busy_placement.i.c81 = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %num_busy_placement.i.c81 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %num_busy_placement.i.c81, align 8
  %arrayidx51.i.c82 = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0
  %27 = ptrtoint ptr %arrayidx51.i.c82 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx51.i.c82, align 8
  %lpfn.i.c83 = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %lpfn.i.c83 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %lpfn.i.c83, align 4
  %arrayidx51.i.1 = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx51.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx51.i.1, align 8
  %lpfn.i.1 = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %30 = ptrtoint ptr %lpfn.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %lpfn.i.1, align 4
  br label %qxl_ttm_placement_from_domain.exit

if.then29.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type32.i = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %mem_type32.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %mem_type32.i, align 8
  %flags36.i = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %32 = ptrtoint ptr %flags36.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select.i, ptr %flags36.i, align 4
  %33 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %placement.i, align 8
  %num_busy_placement.i.c78 = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %num_busy_placement.i.c78 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %num_busy_placement.i.c78, align 8
  %arrayidx51.i.c79 = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0
  %35 = ptrtoint ptr %arrayidx51.i.c79 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx51.i.c79, align 8
  %lpfn.i.c80 = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %lpfn.i.c80 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %lpfn.i.c80, align 4
  br label %qxl_ttm_placement_from_domain.exit

if.then38.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type41.i = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %37 = ptrtoint ptr %mem_type41.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %mem_type41.i, align 8
  %flags45.i = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %38 = ptrtoint ptr %flags45.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %flags45.i, align 4
  %39 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %placement.i, align 8
  %num_busy_placement.i.c = getelementptr inbounds %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %num_busy_placement.i.c to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %num_busy_placement.i.c, align 8
  %arrayidx51.i.c = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0
  %41 = ptrtoint ptr %arrayidx51.i.c to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx51.i.c, align 8
  %lpfn.i.c = getelementptr %struct.qxl_bo, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %42 = ptrtoint ptr %lpfn.i.c to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %lpfn.i.c, align 4
  br label %qxl_ttm_placement_from_domain.exit

qxl_ttm_placement_from_domain.exit:               ; preds = %if.then38.i, %if.then29.i, %if.then12.i, %if.end10.thread.i
  %priority21 = getelementptr inbounds %struct.ttm_buffer_object, ptr %call7.i.i, i32 0, i32 12
  %43 = ptrtoint ptr %priority21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %priority, ptr %priority21, align 4
  %mman = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 14
  %call23 = call i32 @ttm_bo_init_reserved(ptr noundef %mman, ptr noundef nonnull %call7.i.i, i32 noundef %div75, i32 noundef %., ptr noundef %placement.i, i32 noundef 0, ptr noundef nonnull %ctx, ptr noundef null, ptr noundef null, ptr noundef nonnull @qxl_ttm_bo_destroy) #9
  %44 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call23, label %do.end [
    i32 0, label %if.end36
    i32 -512, label %qxl_ttm_placement_from_domain.exit.cleanup_crit_edge
  ], !prof !53

qxl_ttm_placement_from_domain.exit.cleanup_crit_edge: ; preds = %qxl_ttm_placement_from_domain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %qxl_ttm_placement_from_domain.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 2
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str, i32 noundef %div75, i32 noundef %domain) #13
  br label %cleanup

if.end36:                                         ; preds = %qxl_ttm_placement_from_domain.exit
  br i1 %pinned, label %if.then38, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %47 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.then38.if.end.i_crit_edge, label %land.rhs.i

if.then38.if.end.i_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then38
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 9
  %48 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %49, i32 0, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !54

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 551, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then38.if.end.i_crit_edge
  %kref.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #9
  %50 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %kref.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool26.not.i = icmp eq i32 %51, 0
  br i1 %tobool26.not.i, label %land.rhs34.i, label %if.end.i.ttm_bo_pin.exit_crit_edge

if.end.i.ttm_bo_pin.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_pin.exit

land.rhs34.i:                                     ; preds = %if.end.i
  %.b85.i = load i1, ptr @ttm_bo_pin.__already_done, align 1
  br i1 %.b85.i, label %land.rhs34.i.ttm_bo_pin.exit_crit_edge, label %if.then45.i, !prof !52

land.rhs34.i.ttm_bo_pin.exit_crit_edge:           ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_pin.exit

if.then45.i:                                      ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 552, i32 noundef 9, ptr noundef null) #9
  br label %ttm_bo_pin.exit

ttm_bo_pin.exit:                                  ; preds = %if.then45.i, %land.rhs34.i.ttm_bo_pin.exit_crit_edge, %if.end.i.ttm_bo_pin.exit_crit_edge
  %pin_count.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call7.i.i, i32 0, i32 13
  %52 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pin_count.i, align 8
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %pin_count.i, align 8
  br label %if.end40

if.end40:                                         ; preds = %ttm_bo_pin.exit, %if.end36.if.end40_crit_edge
  %bdev.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call7.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %55, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #9
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call7.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resource.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %call7.i.i, ptr noundef %57, ptr noundef null) #9
  %58 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %59, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #9
  %resv.i76 = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 9
  %60 = ptrtoint ptr %resv.i76 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %resv.i76, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %61) #9
  call void @ww_mutex_unlock(ptr noundef %61) #9
  %62 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %bo_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end, %qxl_ttm_placement_from_domain.exit.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then11 ], [ 0, %if.end40 ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %qxl_ttm_placement_from_domain.exit.cleanup_crit_edge ], [ %call23, %do.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_init_reserved(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_bo_vmap_locked(ptr noundef %bo, ptr nocapture noundef writeonly %map) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %1 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resv, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %2, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !54

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 165, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %kptr = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 5
  %3 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kptr, align 8
  %tobool25.not = icmp eq ptr %4, null
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %map_count = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 6
  %5 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map_count, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %map_count, align 4
  br label %out

if.end27:                                         ; preds = %if.end
  %map29 = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 4
  %call30 = tail call i32 @ttm_bo_vmap(ptr noundef %bo, ptr noundef %map29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %map_count34 = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 6
  %7 = ptrtoint ptr %map_count34 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %map_count34, align 4
  %8 = ptrtoint ptr %map29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map29, align 8
  %10 = ptrtoint ptr %kptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %kptr, align 8
  br label %out

out:                                              ; preds = %if.end33, %if.then26
  %map43 = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 4
  %11 = ptrtoint ptr %map43 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %map43, align 8
  %13 = ptrtoint ptr %map to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %map, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ %call30, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_bo_vmap(ptr noundef %bo, ptr nocapture noundef writeonly %map) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resv32.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %0 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %2 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %retval.1.i.i, label %if.then3.i [
    i32 0, label %if.end
    i32 -512, label %entry.cleanup_crit_edge
  ], !prof !53

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef %bo) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @__qxl_bo_pin(ptr noundef %bo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bdev.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %7 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %8, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #9
  %resource.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %9 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %bo, ptr noundef %10, ptr noundef null) #9
  %11 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #9
  %13 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %14) #9
  tail call void @ww_mutex_unlock(ptr noundef %14) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end4.if.end.i_crit_edge, label %land.rhs.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end4
  %16 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resv32.i.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %17, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !54

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 165, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end4.if.end.i_crit_edge
  %kptr.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 5
  %18 = ptrtoint ptr %kptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kptr.i, align 8
  %tobool25.not.i = icmp eq ptr %19, null
  br i1 %tobool25.not.i, label %if.end27.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %map_count.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 6
  %20 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %map_count.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %map_count.i, align 4
  br label %out.i

if.end27.i:                                       ; preds = %if.end.i
  %map29.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 4
  %call30.i = tail call i32 @ttm_bo_vmap(ptr noundef %bo, ptr noundef %map29.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end27.i.qxl_bo_vmap_locked.exit_crit_edge

if.end27.i.qxl_bo_vmap_locked.exit_crit_edge:     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_bo_vmap_locked.exit

if.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %map_count34.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 6
  %22 = ptrtoint ptr %map_count34.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %map_count34.i, align 4
  %23 = ptrtoint ptr %map29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map29.i, align 8
  %25 = ptrtoint ptr %kptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %kptr.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.end33.i, %if.then26.i
  %map43.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 4
  %26 = ptrtoint ptr %map43.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %map43.i, align 8
  %28 = ptrtoint ptr %map to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %map, align 4
  br label %qxl_bo_vmap_locked.exit

qxl_bo_vmap_locked.exit:                          ; preds = %out.i, %if.end27.i.qxl_bo_vmap_locked.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %out.i ], [ %call30.i, %if.end27.i.qxl_bo_vmap_locked.exit_crit_edge ]
  %bdev.i.i.i14 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %29 = ptrtoint ptr %bdev.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev.i.i.i14, align 8
  %lru_lock.i.i.i15 = getelementptr inbounds %struct.ttm_device, ptr %30, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i15) #9
  %resource.i.i.i16 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %31 = ptrtoint ptr %resource.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resource.i.i.i16, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %bo, ptr noundef %32, ptr noundef null) #9
  %33 = ptrtoint ptr %bdev.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev.i.i.i14, align 8
  %lru_lock2.i.i.i17 = getelementptr inbounds %struct.ttm_device, ptr %34, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i17) #9
  %35 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %36) #9
  tail call void @ww_mutex_unlock(ptr noundef %36) #9
  br label %cleanup

cleanup:                                          ; preds = %qxl_bo_vmap_locked.exit, %if.then3, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %retval.0.i, %qxl_bo_vmap_locked.exit ], [ %retval.1.i.i, %if.then3.i ], [ %retval.1.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qxl_bo_pin(ptr noundef %bo) unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #9
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 13
  %3 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.rhs.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %7, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !54

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 551, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %kref.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool26.not.i = icmp eq i32 %9, 0
  br i1 %tobool26.not.i, label %land.rhs34.i, label %if.end.i.ttm_bo_pin.exit_crit_edge

if.end.i.ttm_bo_pin.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_pin.exit

land.rhs34.i:                                     ; preds = %if.end.i
  %.b85.i = load i1, ptr @ttm_bo_pin.__already_done, align 1
  br i1 %.b85.i, label %land.rhs34.i.ttm_bo_pin.exit_crit_edge, label %if.then45.i, !prof !52

land.rhs34.i.ttm_bo_pin.exit_crit_edge:           ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_pin.exit

if.then45.i:                                      ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 552, i32 noundef 9, ptr noundef null) #9
  br label %ttm_bo_pin.exit

ttm_bo_pin.exit:                                  ; preds = %if.then45.i, %land.rhs34.i.ttm_bo_pin.exit_crit_edge, %if.end.i.ttm_bo_pin.exit_crit_edge
  %10 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pin_count, align 8
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %pin_count, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 7
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %15)
  %cmp.i = icmp ult i32 %15, 4097
  %spec.select.i = select i1 %cmp.i, i32 2, i32 0
  %placements.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 2
  %placement.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 3
  %placement1.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %placement1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %placements.i, ptr %placement1.i, align 4
  %busy_placement.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %placements.i, ptr %busy_placement.i, align 4
  %18 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %13, label %if.then38.i [
    i32 1, label %if.end10.thread.i
    i32 2, label %if.then12.i
    i32 0, label %if.then29.i
  ]

if.end10.thread.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 2
  %19 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %mem_type.i, align 8
  %flags.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select.i, ptr %flags.i, align 4
  %21 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %placement.i, align 8
  %num_busy_placement.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %num_busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %num_busy_placement.i, align 8
  %arrayidx51.i = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0
  %23 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx51.i, align 8
  %lpfn.i = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %lpfn.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lpfn.i, align 4
  br label %qxl_ttm_placement_from_domain.exit

if.then12.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type15.i = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 2
  %25 = ptrtoint ptr %mem_type15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %mem_type15.i, align 8
  %flags19.i = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 3
  %26 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select.i, ptr %flags19.i, align 4
  %mem_type22.i = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 1, i32 2
  %27 = ptrtoint ptr %mem_type22.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %mem_type22.i, align 8
  %flags26.i = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 1, i32 3
  %28 = ptrtoint ptr %flags26.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select.i, ptr %flags26.i, align 4
  %29 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %placement.i, align 8
  %num_busy_placement.i.c52 = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %num_busy_placement.i.c52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %num_busy_placement.i.c52, align 8
  %arrayidx51.i.c53 = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0
  %31 = ptrtoint ptr %arrayidx51.i.c53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx51.i.c53, align 8
  %lpfn.i.c54 = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %lpfn.i.c54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %lpfn.i.c54, align 4
  %arrayidx51.i.1 = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %arrayidx51.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx51.i.1, align 8
  %lpfn.i.1 = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 1, i32 1
  %34 = ptrtoint ptr %lpfn.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %lpfn.i.1, align 4
  br label %qxl_ttm_placement_from_domain.exit

if.then29.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type32.i = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 2
  %35 = ptrtoint ptr %mem_type32.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mem_type32.i, align 8
  %flags36.i = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 3
  %36 = ptrtoint ptr %flags36.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select.i, ptr %flags36.i, align 4
  %37 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %placement.i, align 8
  %num_busy_placement.i.c49 = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %num_busy_placement.i.c49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %num_busy_placement.i.c49, align 8
  %arrayidx51.i.c50 = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0
  %39 = ptrtoint ptr %arrayidx51.i.c50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx51.i.c50, align 8
  %lpfn.i.c51 = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 1
  %40 = ptrtoint ptr %lpfn.i.c51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %lpfn.i.c51, align 4
  br label %qxl_ttm_placement_from_domain.exit

if.then38.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type41.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 2
  %41 = ptrtoint ptr %mem_type41.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %mem_type41.i, align 8
  %flags45.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 3
  %42 = ptrtoint ptr %flags45.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flags45.i, align 4
  %43 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %placement.i, align 8
  %num_busy_placement.i.c = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %num_busy_placement.i.c to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %num_busy_placement.i.c, align 8
  %arrayidx51.i.c = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0
  %45 = ptrtoint ptr %arrayidx51.i.c to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx51.i.c, align 8
  %lpfn.i.c = getelementptr %struct.qxl_bo, ptr %bo, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %lpfn.i.c to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %lpfn.i.c, align 4
  br label %qxl_ttm_placement_from_domain.exit

qxl_ttm_placement_from_domain.exit:               ; preds = %if.then38.i, %if.then29.i, %if.then12.i, %if.end10.thread.i
  %call = call i32 @ttm_bo_validate(ptr noundef %bo, ptr noundef %placement.i, ptr noundef nonnull %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cond = icmp eq i32 %call, 0
  br i1 %cond, label %if.then6, label %do.end, !prof !52

if.then6:                                         ; preds = %qxl_ttm_placement_from_domain.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %47 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i31 = icmp eq i32 %47, 0
  br i1 %tobool.not.i31, label %if.then6.if.end.i41_crit_edge, label %land.rhs.i36

if.then6.if.end.i41_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i41

land.rhs.i36:                                     ; preds = %if.then6
  %resv.i32 = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %48 = ptrtoint ptr %resv.i32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %resv.i32, align 8
  %dep_map.i33 = getelementptr inbounds %struct.mutex, ptr %49, i32 0, i32 5
  %call.i.i34 = call i32 @lock_is_held_type(ptr noundef %dep_map.i33, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp.not.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %cmp.not.i35, label %do.end.i37, label %land.rhs.i36.if.end.i41_crit_edge, !prof !54

land.rhs.i36.if.end.i41_crit_edge:                ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i41

do.end.i37:                                       ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 551, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i41

if.end.i41:                                       ; preds = %do.end.i37, %land.rhs.i36.if.end.i41_crit_edge, %if.then6.if.end.i41_crit_edge
  %kref.i38 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 5
  %call.i.i.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i38, i32 noundef 4) #9
  %50 = ptrtoint ptr %kref.i38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %kref.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool26.not.i40 = icmp eq i32 %51, 0
  br i1 %tobool26.not.i40, label %land.rhs34.i43, label %if.end.i41.ttm_bo_pin.exit47_crit_edge

if.end.i41.ttm_bo_pin.exit47_crit_edge:           ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_pin.exit47

land.rhs34.i43:                                   ; preds = %if.end.i41
  %.b85.i42 = load i1, ptr @ttm_bo_pin.__already_done, align 1
  br i1 %.b85.i42, label %land.rhs34.i43.ttm_bo_pin.exit47_crit_edge, label %if.then45.i44, !prof !52

land.rhs34.i43.ttm_bo_pin.exit47_crit_edge:       ; preds = %land.rhs34.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_pin.exit47

if.then45.i44:                                    ; preds = %land.rhs34.i43
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 552, i32 noundef 9, ptr noundef null) #9
  br label %ttm_bo_pin.exit47

ttm_bo_pin.exit47:                                ; preds = %if.then45.i44, %land.rhs34.i43.ttm_bo_pin.exit47_crit_edge, %if.end.i41.ttm_bo_pin.exit47_crit_edge
  %52 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pin_count, align 8
  %inc.i46 = add i32 %53, 1
  store i32 %inc.i46, ptr %pin_count, align 8
  br label %cleanup

do.end:                                           ; preds = %qxl_ttm_placement_from_domain.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %54 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.15, ptr noundef %bo) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ttm_bo_pin.exit47, %ttm_bo_pin.exit
  %retval.0 = phi i32 [ 0, %ttm_bo_pin.exit ], [ %call, %do.end ], [ 0, %ttm_bo_pin.exit47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qxl_bo_kmap_atomic_page(ptr nocapture noundef readonly %qdev, ptr noundef %bo, i32 noundef %page_offset) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %3, label %fallback [
    i32 2, label %if.then
    i32 3, label %if.then5
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vram_mapping = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 50
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %surface_mapping = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 51
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then
  %map.0.in = phi ptr [ %vram_mapping, %if.then ], [ %surface_mapping, %if.then5 ]
  %5 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %map.0 = load ptr, ptr %map.0.in, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %shl = shl i32 %7, 12
  %add = add i32 %shl, %page_offset
  %8 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %11, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %12 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i1.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  %iomem.i.i = getelementptr inbounds %struct.io_mapping, ptr %map.0, i32 0, i32 3
  %18 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %add
  br label %cleanup

fallback:                                         ; preds = %entry
  %kptr = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 5
  %20 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kptr, align 8
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %fallback
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %page_offset, 12
  %add.ptr = getelementptr i8, ptr %21, i32 %mul
  br label %cleanup

if.end12:                                         ; preds = %fallback
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end12.if.end27.i_crit_edge, label %land.rhs.i

if.end12.if.end27.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

land.rhs.i:                                       ; preds = %if.end12
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %23 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %24, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !54

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 165, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  %25 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load ptr, ptr %kptr, align 8
  %tobool25.not.i = icmp eq ptr %.pr, null
  br i1 %tobool25.not.i, label %if.end.i.if.end27.i_crit_edge, label %if.then26.i

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %map_count.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 6
  %26 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %map_count.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %map_count.i, align 4
  br label %if.end16

if.end27.i:                                       ; preds = %if.end.i.if.end27.i_crit_edge, %if.end12.if.end27.i_crit_edge
  %map29.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 4
  %call30.i = tail call i32 @ttm_bo_vmap(ptr noundef %bo, ptr noundef %map29.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end27.i.cleanup_crit_edge

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %map_count34.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 6
  %28 = ptrtoint ptr %map_count34.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %map_count34.i, align 4
  %29 = ptrtoint ptr %map29.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map29.i, align 8
  %31 = ptrtoint ptr %kptr to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %kptr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end33.i, %if.then26.i
  %map43.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 4
  %32 = ptrtoint ptr %map43.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %map43.i, align 8
  %34 = inttoptr i32 %33 to ptr
  %mul17 = shl i32 %page_offset, 12
  %add.ptr18 = getelementptr i8, ptr %34, i32 %mul17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end27.i.cleanup_crit_edge, %if.then10, %if.end7
  %retval.0 = phi ptr [ %add.ptr.i.i, %if.end7 ], [ %add.ptr, %if.then10 ], [ %add.ptr18, %if.end16 ], [ null, %if.end27.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_bo_vunmap_locked(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %1 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resv, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %2, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !54

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %kptr = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 5
  %3 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kptr, align 8
  %cmp25 = icmp eq ptr %4, null
  br i1 %cmp25, label %if.end.return_crit_edge, label %if.end27

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end27:                                         ; preds = %if.end
  %map_count = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 6
  %5 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map_count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %map_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp29.not = icmp eq i32 %dec, 0
  br i1 %cmp29.not, label %if.end31, label %if.end27.return_crit_edge

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %kptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %kptr, align 8
  %map = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 4
  tail call void @ttm_bo_vunmap(ptr noundef %bo, ptr noundef %map) #9
  br label %return

return:                                           ; preds = %if.end31, %if.end27.return_crit_edge, %if.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_bo_vunmap(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resv32.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %0 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %2 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %retval.1.i.i, label %if.then3.i [
    i32 0, label %if.end
    i32 -512, label %entry.cleanup_crit_edge
  ], !prof !53

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef %bo) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %8 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv32.i.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %9, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !54

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %kptr.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 5
  %10 = ptrtoint ptr %kptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kptr.i, align 8
  %cmp25.i = icmp eq ptr %11, null
  br i1 %cmp25.i, label %if.end.i.qxl_bo_vunmap_locked.exit_crit_edge, label %if.end27.i

if.end.i.qxl_bo_vunmap_locked.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_bo_vunmap_locked.exit

if.end27.i:                                       ; preds = %if.end.i
  %map_count.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 6
  %12 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %map_count.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %map_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp29.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp29.not.i, label %if.end31.i, label %if.end27.i.qxl_bo_vunmap_locked.exit_crit_edge

if.end27.i.qxl_bo_vunmap_locked.exit_crit_edge:   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_bo_vunmap_locked.exit

if.end31.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %kptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %kptr.i, align 8
  %map.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 4
  tail call void @ttm_bo_vunmap(ptr noundef %bo, ptr noundef %map.i) #9
  br label %qxl_bo_vunmap_locked.exit

qxl_bo_vunmap_locked.exit:                        ; preds = %if.end31.i, %if.end27.i.qxl_bo_vunmap_locked.exit_crit_edge, %if.end.i.qxl_bo_vunmap_locked.exit_crit_edge
  tail call fastcc void @__qxl_bo_unpin(ptr noundef %bo)
  %bdev.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %15 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %16, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #9
  %resource.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %17 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %bo, ptr noundef %18, ptr noundef null) #9
  %19 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #9
  %21 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %22) #9
  tail call void @ww_mutex_unlock(ptr noundef %22) #9
  br label %cleanup

cleanup:                                          ; preds = %qxl_bo_vunmap_locked.exit, %if.then3.i, %entry.cleanup_crit_edge
  ret i32 %retval.1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qxl_bo_unpin(ptr noundef %bo) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %1 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %2, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !54

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 564, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %kref.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool26.not.i = icmp eq i32 %4, 0
  br i1 %tobool26.not.i, label %land.rhs34.i, label %if.end.i.if.end72.i_crit_edge

if.end.i.if.end72.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

land.rhs34.i:                                     ; preds = %if.end.i
  %.b142.i = load i1, ptr @ttm_bo_unpin.__already_done, align 1
  br i1 %.b142.i, label %land.rhs34.i.if.end72.i_crit_edge, label %if.then45.i, !prof !52

land.rhs34.i.if.end72.i_crit_edge:                ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.then45.i:                                      ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ttm_bo_unpin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 565, i32 noundef 9, ptr noundef null) #9
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then45.i, %land.rhs34.i.if.end72.i_crit_edge, %if.end.i.if.end72.i_crit_edge
  %pin_count.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 13
  %5 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pin_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool80.not.i = icmp eq i32 %6, 0
  br i1 %tobool80.not.i, label %land.end89.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %6, -1
  %7 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec.i, ptr %pin_count.i, align 8
  br label %ttm_bo_unpin.exit

land.end89.i:                                     ; preds = %if.end72.i
  %.b140141.i = load i1, ptr @ttm_bo_unpin.__already_done.17, align 1
  br i1 %.b140141.i, label %land.end89.i.ttm_bo_unpin.exit_crit_edge, label %if.then96.i, !prof !52

land.end89.i.ttm_bo_unpin.exit_crit_edge:         ; preds = %land.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_unpin.exit

if.then96.i:                                      ; preds = %land.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ttm_bo_unpin.__already_done.17, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 569, i32 noundef 9, ptr noundef null) #9
  br label %ttm_bo_unpin.exit

ttm_bo_unpin.exit:                                ; preds = %if.then96.i, %land.end89.i.ttm_bo_unpin.exit_crit_edge, %if.then81.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_bo_kunmap_atomic_page(ptr nocapture noundef readnone %qdev, ptr noundef %bo, ptr nocapture noundef readnone %pmap) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %if.end, label %fallback

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %5 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i1.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %10, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %11 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %return

fallback:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %fallback.if.end.i_crit_edge, label %land.rhs.i

fallback.if.end.i_crit_edge:                      ; preds = %fallback
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %fallback
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %16 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %17, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !54

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 241, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %fallback.if.end.i_crit_edge
  %kptr.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 5
  %18 = ptrtoint ptr %kptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kptr.i, align 8
  %cmp25.i = icmp eq ptr %19, null
  br i1 %cmp25.i, label %if.end.i.return_crit_edge, label %if.end27.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end27.i:                                       ; preds = %if.end.i
  %map_count.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 6
  %20 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %map_count.i, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %map_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp29.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp29.not.i, label %if.end31.i, label %if.end27.i.return_crit_edge

if.end27.i.return_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end31.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %kptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %kptr.i, align 8
  %map.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 4
  tail call void @ttm_bo_vunmap(ptr noundef %bo, ptr noundef %map.i) #9
  br label %return

return:                                           ; preds = %if.end31.i, %if.end27.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_bo_unref(ptr nocapture noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.then.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #9, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !52

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #9
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  tail call void @drm_gem_object_free(ptr noundef nonnull %1) #9
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  %3 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bo, align 4
  br label %return

return:                                           ; preds = %drm_gem_object_put.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qxl_bo_ref(ptr noundef returned %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bo, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %bo, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bo, ptr %bo, i32 1, ptr elementtype(i32) %bo) #9, !srcloc !62
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !54

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !52

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %bo, i32 noundef %.sink.i.i.i.i.i) #9
  br label %drm_gem_object_get.exit

drm_gem_object_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge
  ret ptr %bo
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_bo_pin(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resv32.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %0 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %2 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %retval.1.i.i, label %if.then3.i [
    i32 0, label %if.end
    i32 -512, label %entry.cleanup_crit_edge
  ], !prof !53

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef %bo) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc i32 @__qxl_bo_pin(ptr noundef %bo)
  %bdev.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %7 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %8, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #9
  %resource.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %9 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %bo, ptr noundef %10, ptr noundef null) #9
  %11 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #9
  %13 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %14) #9
  tail call void @ww_mutex_unlock(ptr noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %retval.1.i.i, %if.then3.i ], [ %retval.1.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_bo_unpin(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resv32.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %0 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %2 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %retval.1.i.i, label %if.then3.i [
    i32 0, label %if.end
    i32 -512, label %entry.cleanup_crit_edge
  ], !prof !53

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef %bo) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__qxl_bo_unpin(ptr noundef %bo)
  %bdev.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %7 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %8, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #9
  %resource.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %9 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %bo, ptr noundef %10, ptr noundef null) #9
  %11 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #9
  %13 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %14) #9
  tail call void @ww_mutex_unlock(ptr noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  ret i32 %retval.1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_bo_force_delete(ptr noundef %qdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gem = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 15
  %objects = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %objects to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %objects, align 4
  %cmp.i.not = icmp eq ptr %1, %objects
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #13
  %4 = ptrtoint ptr %objects to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %objects, align 4
  %cmp.not46 = icmp eq ptr %5, %objects
  br i1 %cmp.not46, label %do.end.cleanup_crit_edge, label %do.end.do.end12_crit_edge

do.end.do.end12_crit_edge:                        ; preds = %do.end
  br label %do.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end12:                                         ; preds = %drm_gem_object_put.exit.do.end12_crit_edge, %do.end.do.end12_crit_edge
  %.pn.in47 = phi ptr [ %.pn, %drm_gem_object_put.exit.do.end12_crit_edge ], [ %5, %do.end.do.end12_crit_edge ]
  %bo.0 = getelementptr i8, ptr %.pn.in47, i32 -416
  %6 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in47, align 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %size = getelementptr i8, ptr %.pn.in47, i32 -232
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 8
  %11 = ptrtoint ptr %bo.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bo.0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef %bo.0, ptr noundef %bo.0, i32 noundef %10, i32 noundef %12) #13
  tail call void @mutex_lock_nested(ptr noundef %gem, i32 noundef 0) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in47) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end12.list_del_init.exit_crit_edge

do.end12.list_del_init.exit_crit_edge:            ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in47, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end12.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %.pn.in47, ptr %.pn.in47, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.pn.in47, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %gem) #9
  %tobool.not.i = icmp eq ptr %bo.0, null
  br i1 %tobool.not.i, label %list_del_init.exit.drm_gem_object_put.exit_crit_edge, label %if.then.i

list_del_init.exit.drm_gem_object_put.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bo.0, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr nonnull %bo.0, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %bo.0, ptr nonnull %bo.0, i32 1, ptr nonnull elementtype(i32) %bo.0) #9, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !52

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %bo.0, i32 noundef 3) #9
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  tail call void @drm_gem_object_free(ptr noundef nonnull %bo.0) #9
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %list_del_init.exit.drm_gem_object_put.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %objects
  br i1 %cmp.not, label %drm_gem_object_put.exit.cleanup_crit_edge, label %drm_gem_object_put.exit.do.end12_crit_edge

drm_gem_object_put.exit.do.end12_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

drm_gem_object_put.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_put.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_bo_init(ptr noundef %qdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qxl_ttm_init(ptr noundef %qdev) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_ttm_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_bo_fini(ptr noundef %qdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qxl_ttm_fini(ptr noundef %qdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_ttm_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_bo_check_id(ptr noundef %qdev, ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %surface_id = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 14
  %2 = ptrtoint ptr %surface_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %surface_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @qxl_surface_id_alloc(ptr noundef %qdev, ptr noundef %bo) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = tail call i32 @qxl_hw_surface_alloc(ptr noundef %qdev, ptr noundef %bo) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call, %if.then.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_surface_id_alloc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_hw_surface_alloc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_surf_evict(ptr noundef %qdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mman = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 14
  %arrayidx.i = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 14, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %call3 = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %mman, ptr noundef %1) #9
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_vram_evict(ptr noundef %qdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mman = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 14
  %arrayidx.i = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 14, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %call3 = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %mman, ptr noundef %1) #9
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_surface_evict(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_gem_object_free(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_gem_object_open(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_gem_object_close(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_ttm_print_info(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_gem_prime_pin(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_gem_prime_unpin(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_gem_prime_get_sg_table(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_gem_prime_vmap(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_gem_prime_vunmap(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_mmap(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_object.c", i32 149, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qxl_bo_create._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qxl_bo_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/qxl/qxl_object.c", i32 360, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qxl_bo_force_delete._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @qxl_bo_force_delete._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/qxl/qxl_object.c", i32 362, i32 3}
!15 = !{ptr @qxl_bo_force_delete._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @qxl_bo_force_delete._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/qxl/qxl_object.c", i32 44, i32 2}
!19 = !{ptr @qxl_object_funcs, !20, !"qxl_object_funcs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/qxl/qxl_object.c", i32 96, i32 42}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 551, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 552, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/qxl/qxl_object.h", i32 39, i32 4}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qxl_bo_reserve._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @qxl_bo_reserve._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/qxl/qxl_object.c", i32 309, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__qxl_bo_pin._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @__qxl_bo_pin._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 565, i32 2}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 569, i32 3}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2152201975}
!56 = !{i64 2152196154}
!57 = !{i64 2152196361}
!58 = !{i64 2152202301}
!59 = !{i64 2148526557}
!60 = !{i64 2148441021, i64 2148441053, i64 2148441082, i64 2148441116, i64 2148441147, i64 2148441170}
!61 = !{i64 2150051347}
!62 = !{i64 2148438556, i64 2148438588, i64 2148438617, i64 2148438651, i64 2148438682, i64 2148438705}
