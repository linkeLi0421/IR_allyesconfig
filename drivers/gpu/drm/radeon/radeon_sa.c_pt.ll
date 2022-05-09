; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_sa.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_sa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radeon_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [8 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.radeon_sa_bo = type { %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.88] }
%struct.anon.88 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
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
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@radeon_sa_bo_manager_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sa_manager->wq\00", [16 x i8] zeroinitializer }, align 32
@radeon_sa_bo_manager_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 70, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(%d) failed to allocate bo for manager\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"radeon_sa_bo_manager_init\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/radeon/radeon_sa.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_sa_bo_manager_init._entry_ptr = internal global ptr @radeon_sa_bo_manager_init._entry, section ".printk_index", align 4
@radeon_sa_bo_manager_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 86, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sa_manager is not empty, clearing anyway\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"radeon_sa_bo_manager_fini\00", [38 x i8] zeroinitializer }, align 32
@radeon_sa_bo_manager_fini._entry_ptr = internal global ptr @radeon_sa_bo_manager_fini._entry, section ".printk_index", align 4
@radeon_sa_bo_manager_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no bo for sa manager\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeon_sa_bo_manager_start\00", [37 x i8] zeroinitializer }, align 32
@radeon_sa_bo_manager_start._entry_ptr = internal global ptr @radeon_sa_bo_manager_start._entry, section ".printk_index", align 4
@radeon_sa_bo_manager_start._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(%d) failed to reserve manager bo\0A\00", [61 x i8] zeroinitializer }, align 32
@radeon_sa_bo_manager_start._entry_ptr.12 = internal global ptr @radeon_sa_bo_manager_start._entry.10, section ".printk_index", align 4
@radeon_sa_bo_manager_start._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(%d) failed to pin manager bo\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_sa_bo_manager_start._entry_ptr.15 = internal global ptr @radeon_sa_bo_manager_start._entry.13, section ".printk_index", align 4
@radeon_sa_bo_manager_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.16, ptr @.str.3, i32 129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"radeon_sa_bo_manager_suspend\00", [35 x i8] zeroinitializer }, align 32
@radeon_sa_bo_manager_suspend._entry_ptr = internal global ptr @radeon_sa_bo_manager_suspend._entry, section ".printk_index", align 4
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c">\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[0x%010llx 0x%010llx] size %8lld\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" protected by 0x%016llx on ring %d\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 71, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 56, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 70, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 86, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 102, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 109, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 115, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 129, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 410, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 412, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 414, i32 17 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 417, i32 18 }
@___asan_gen_.100 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/radeon_sa.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 420, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 71, i32 4 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_sa_bo_manager_fini._entry, ptr @radeon_sa_bo_manager_fini._entry_ptr, ptr @radeon_sa_bo_manager_init._entry, ptr @radeon_sa_bo_manager_init._entry_ptr, ptr @radeon_sa_bo_manager_start._entry, ptr @radeon_sa_bo_manager_start._entry.10, ptr @radeon_sa_bo_manager_start._entry.13, ptr @radeon_sa_bo_manager_start._entry_ptr, ptr @radeon_sa_bo_manager_start._entry_ptr.12, ptr @radeon_sa_bo_manager_start._entry_ptr.15, ptr @radeon_sa_bo_manager_suspend._entry, ptr @radeon_sa_bo_manager_suspend._entry_ptr, ptr @radeon_sa_bo_manager_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_sa_bo_manager_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_sa_bo_manager_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_sa_bo_manager_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_sa_bo_manager_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_sa_bo_manager_start._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_sa_bo_manager_start._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_sa_bo_manager_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_sa_bo_manager_init(ptr noundef %rdev, ptr noundef %sa_manager, i32 noundef %size, i32 noundef %align, i32 noundef %domain, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__init_waitqueue_head(ptr noundef %sa_manager, ptr noundef nonnull @.str, ptr noundef nonnull @radeon_sa_bo_manager_init.__key) #7
  %bo = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 1
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bo, align 4
  %size1 = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 5
  %1 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size1, align 4
  %domain2 = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 8
  %2 = ptrtoint ptr %domain2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %domain, ptr %domain2, align 4
  %align3 = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 9
  %3 = ptrtoint ptr %align3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %align, ptr %align3, align 8
  %olist = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 4
  %hole = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 2
  %4 = ptrtoint ptr %hole to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %olist, ptr %hole, align 8
  %5 = ptrtoint ptr %olist to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %olist, ptr %olist, align 4
  %prev.i = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %olist, ptr %prev.i, align 4
  %arrayidx = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i28 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %prev.i28, align 4
  %arrayidx.1 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i28.1 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i28.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.1, ptr %prev.i28.1, align 4
  %arrayidx.2 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i28.2 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i28.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.2, ptr %prev.i28.2, align 4
  %arrayidx.3 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i28.3 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i28.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.3, ptr %prev.i28.3, align 4
  %arrayidx.4 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 4
  %prev.i28.4 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i28.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.4, ptr %prev.i28.4, align 4
  %arrayidx.5 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx.5, ptr %arrayidx.5, align 4
  %prev.i28.5 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 5, i32 1
  %18 = ptrtoint ptr %prev.i28.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.5, ptr %prev.i28.5, align 4
  %arrayidx.6 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx.6, ptr %arrayidx.6, align 4
  %prev.i28.6 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 6, i32 1
  %20 = ptrtoint ptr %prev.i28.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.6, ptr %prev.i28.6, align 4
  %arrayidx.7 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %arrayidx.7, ptr %arrayidx.7, align 4
  %prev.i28.7 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 7, i32 1
  %22 = ptrtoint ptr %prev.i28.7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.7, ptr %prev.i28.7, align 4
  %call = tail call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %size, i32 noundef %align, i1 noundef zeroext true, i32 noundef %domain, i32 noundef %flags, ptr noundef null, ptr noundef null, ptr noundef %bo) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_sa_bo_manager_fini(ptr nocapture noundef readonly %rdev, ptr noundef %sa_manager) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %olist = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 4
  %0 = ptrtoint ptr %olist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %olist, align 4
  %cmp.i.not = icmp eq ptr %1, %olist
  br i1 %cmp.i.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %hole = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 2
  %2 = ptrtoint ptr %hole to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %olist, ptr %hole, align 8
  tail call fastcc void @radeon_sa_bo_try_free(ptr noundef %sa_manager)
  %3 = ptrtoint ptr %olist to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %olist, align 4
  %cmp.i32.not = icmp eq ptr %4, %olist
  br i1 %cmp.i32.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %7 = ptrtoint ptr %olist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %olist, align 4
  %cmp.not35 = icmp eq ptr %8, %olist
  br i1 %cmp.not35, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %radeon_sa_bo_remove_locked.exit.for.body_crit_edge, %if.end6.for.body_crit_edge
  %sa_bo.036 = phi ptr [ %tmp.0, %radeon_sa_bo_remove_locked.exit.for.body_crit_edge ], [ %8, %if.end6.for.body_crit_edge ]
  %9 = ptrtoint ptr %sa_bo.036 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.0 = load ptr, ptr %sa_bo.036, align 4
  %manager.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %sa_bo.036, i32 0, i32 2
  %10 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %manager.i, align 4
  %hole.i = getelementptr inbounds %struct.radeon_sa_manager, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %hole.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hole.i, align 8
  %cmp.i34 = icmp eq ptr %13, %sa_bo.036
  br i1 %cmp.i34, label %if.then.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sa_bo.036, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %16 = ptrtoint ptr %hole.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %hole.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sa_bo.036) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %sa_bo.036, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %sa_bo.036 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sa_bo.036, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %23 = ptrtoint ptr %sa_bo.036 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %sa_bo.036, ptr %sa_bo.036, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %sa_bo.036, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sa_bo.036, ptr %prev.i3.i.i, align 4
  %flist.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %sa_bo.036, i32 0, i32 1
  %call.i.i11.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %flist.i) #7
  br i1 %call.i.i11.i, label %if.end.i.i14.i, label %list_del_init.exit.i.radeon_sa_bo_remove_locked.exit_crit_edge

list_del_init.exit.i.radeon_sa_bo_remove_locked.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_sa_bo_remove_locked.exit

if.end.i.i14.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i12.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %sa_bo.036, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i12.i, align 4
  %27 = ptrtoint ptr %flist.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %flist.i, align 4
  %prev1.i.i.i13.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i13.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %radeon_sa_bo_remove_locked.exit

radeon_sa_bo_remove_locked.exit:                  ; preds = %if.end.i.i14.i, %list_del_init.exit.i.radeon_sa_bo_remove_locked.exit_crit_edge
  %31 = ptrtoint ptr %flist.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %flist.i, ptr %flist.i, align 4
  %prev.i3.i15.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %sa_bo.036, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i3.i15.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %flist.i, ptr %prev.i3.i15.i, align 4
  %fence.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %sa_bo.036, i32 0, i32 5
  tail call void @radeon_fence_unref(ptr noundef %fence.i) #7
  tail call void @kfree(ptr noundef %sa_bo.036) #7
  %cmp.not = icmp eq ptr %tmp.0, %olist
  br i1 %cmp.not, label %radeon_sa_bo_remove_locked.exit.for.end_crit_edge, label %radeon_sa_bo_remove_locked.exit.for.body_crit_edge

radeon_sa_bo_remove_locked.exit.for.body_crit_edge: ; preds = %radeon_sa_bo_remove_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

radeon_sa_bo_remove_locked.exit.for.end_crit_edge: ; preds = %radeon_sa_bo_remove_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %radeon_sa_bo_remove_locked.exit.for.end_crit_edge, %if.end6.for.end_crit_edge
  %bo = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 1
  tail call void @radeon_bo_unref(ptr noundef %bo) #7
  %size = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 5
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_sa_bo_try_free(ptr noundef readonly %sa_manager) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hole = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 2
  %0 = ptrtoint ptr %hole to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hole, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %olist = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 4
  %cmp = icmp eq ptr %3, %olist
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %radeon_sa_bo_remove_locked.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %sa_bo.033 = phi ptr [ %tmp.037, %radeon_sa_bo_remove_locked.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %sa_bo.033 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.037 = load ptr, ptr %sa_bo.033, align 4
  %fence = getelementptr inbounds %struct.radeon_sa_bo, ptr %sa_bo.033, i32 0, i32 5
  %5 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fence, align 4
  %cmp12 = icmp eq ptr %6, null
  br i1 %cmp12, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %call = tail call zeroext i1 @radeon_fence_signaled(ptr noundef nonnull %6) #7
  br i1 %call, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %manager.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %sa_bo.033, i32 0, i32 2
  %7 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %manager.i, align 4
  %hole.i = getelementptr inbounds %struct.radeon_sa_manager, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %hole.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hole.i, align 8
  %cmp.i = icmp eq ptr %10, %sa_bo.033
  br i1 %cmp.i, label %if.then.i, label %if.end15.if.end.i_crit_edge

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sa_bo.033, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %13 = ptrtoint ptr %hole.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %hole.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sa_bo.033) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %sa_bo.033, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %sa_bo.033 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sa_bo.033, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %20 = ptrtoint ptr %sa_bo.033 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %sa_bo.033, ptr %sa_bo.033, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %sa_bo.033, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sa_bo.033, ptr %prev.i3.i.i, align 4
  %flist.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %sa_bo.033, i32 0, i32 1
  %call.i.i11.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %flist.i) #7
  br i1 %call.i.i11.i, label %if.end.i.i14.i, label %list_del_init.exit.i.radeon_sa_bo_remove_locked.exit_crit_edge

list_del_init.exit.i.radeon_sa_bo_remove_locked.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_sa_bo_remove_locked.exit

if.end.i.i14.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i12.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %sa_bo.033, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i12.i, align 4
  %24 = ptrtoint ptr %flist.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %flist.i, align 4
  %prev1.i.i.i13.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i13.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %radeon_sa_bo_remove_locked.exit

radeon_sa_bo_remove_locked.exit:                  ; preds = %if.end.i.i14.i, %list_del_init.exit.i.radeon_sa_bo_remove_locked.exit_crit_edge
  %28 = ptrtoint ptr %flist.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %flist.i, ptr %flist.i, align 4
  %prev.i3.i15.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %sa_bo.033, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i3.i15.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %flist.i, ptr %prev.i3.i15.i, align 4
  tail call void @radeon_fence_unref(ptr noundef %fence) #7
  tail call void @kfree(ptr noundef %sa_bo.033) #7
  %cmp11.not = icmp eq ptr %tmp.037, %olist
  br i1 %cmp11.not, label %radeon_sa_bo_remove_locked.exit.cleanup_crit_edge, label %radeon_sa_bo_remove_locked.exit.for.body_crit_edge

radeon_sa_bo_remove_locked.exit.for.body_crit_edge: ; preds = %radeon_sa_bo_remove_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

radeon_sa_bo_remove_locked.exit.cleanup_crit_edge: ; preds = %radeon_sa_bo_remove_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %radeon_sa_bo_remove_locked.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_sa_bo_manager_start(ptr nocapture noundef readonly %rdev, ptr noundef %sa_manager) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bo = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 1
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %5, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %6 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end7
    i32 -512, label %if.end.do.end5_crit_edge
  ], !prof !63

if.end.do.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef nonnull %1) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end.i, %if.end.do.end5_crit_edge
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11, i32 noundef %retval.1.i.i) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo, align 4
  %domain = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 8
  %15 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %domain, align 4
  %gpu_addr = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 6
  %call9 = tail call i32 @radeon_bo_pin(ptr noundef %14, i32 noundef %16, ptr noundef %gpu_addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %17 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bo, align 4
  br i1 %tobool10.not, label %if.end17, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %18, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %18, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %18, i32 0, i32 4, i32 6
  %21 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %22, ptr noundef null) #7
  %23 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %18, i32 0, i32 4, i32 0, i32 9
  %25 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %26) #7
  tail call void @ww_mutex_unlock(ptr noundef %26) #7
  %27 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14, i32 noundef %call9) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %cpu_ptr = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 7
  %call19 = tail call i32 @radeon_bo_kmap(ptr noundef %18, ptr noundef %cpu_ptr) #7
  %29 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bo, align 4
  %tbo.i37 = getelementptr inbounds %struct.radeon_bo, ptr %30, i32 0, i32 4
  %bdev.i.i.i38 = getelementptr inbounds %struct.radeon_bo, ptr %30, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %bdev.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev.i.i.i38, align 8
  %lru_lock.i.i.i39 = getelementptr inbounds %struct.ttm_device, ptr %32, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i39) #7
  %resource.i.i.i40 = getelementptr inbounds %struct.radeon_bo, ptr %30, i32 0, i32 4, i32 6
  %33 = ptrtoint ptr %resource.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resource.i.i.i40, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i37, ptr noundef %34, ptr noundef null) #7
  %35 = ptrtoint ptr %bdev.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bdev.i.i.i38, align 8
  %lru_lock2.i.i.i41 = getelementptr inbounds %struct.ttm_device, ptr %36, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i41) #7
  %resv.i.i42 = getelementptr inbounds %struct.radeon_bo, ptr %30, i32 0, i32 4, i32 0, i32 9
  %37 = ptrtoint ptr %resv.i.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resv.i.i42, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %38) #7
  tail call void @ww_mutex_unlock(ptr noundef %38) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then11, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.1.i.i, %do.end5 ], [ %call9, %if.then11 ], [ %call19, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_sa_bo_manager_suspend(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %sa_manager) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bo = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 1
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %5, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %6 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then2
    i32 -512, label %if.end.cleanup_crit_edge
  ], !prof !63

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef nonnull %1) #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo, align 4
  tail call void @radeon_bo_kunmap(ptr noundef %12) #7
  %13 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo, align 4
  tail call void @radeon_bo_unpin(ptr noundef %14) #7
  %15 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %20, ptr noundef null) #7
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 0, i32 9
  %23 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %24) #7
  tail call void @ww_mutex_unlock(ptr noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %do.end.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then2 ], [ %retval.1.i.i, %do.end.i ], [ %retval.1.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_sa_bo_new(ptr noundef %rdev, ptr noundef %sa_manager, ptr nocapture noundef %sa_bo, i32 noundef %size, i32 noundef %align) #0 align 64 {
entry:
  %fences = alloca [8 x ptr], align 4
  %tries = alloca [8 x i32], align 4
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fences) #7
  %0 = getelementptr inbounds [8 x ptr], ptr %fences, i32 0, i32 1
  %1 = getelementptr inbounds [8 x ptr], ptr %fences, i32 0, i32 2
  %2 = getelementptr inbounds [8 x ptr], ptr %fences, i32 0, i32 3
  %3 = getelementptr inbounds [8 x ptr], ptr %fences, i32 0, i32 4
  %4 = getelementptr inbounds [8 x ptr], ptr %fences, i32 0, i32 5
  %5 = getelementptr inbounds [8 x ptr], ptr %fences, i32 0, i32 6
  %6 = getelementptr inbounds [8 x ptr], ptr %fences, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tries) #7
  %align1 = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 9
  %7 = ptrtoint ptr %align1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %align)
  %cmp = icmp ult i32 %8, %align
  br i1 %cmp, label %do.body3, label %do.body9, !prof !64

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon_sa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 321, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

do.body9:                                         ; preds = %entry
  %size10 = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 5
  %9 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %size)
  %cmp11 = icmp ult i32 %10, %size
  br i1 %cmp11, label %do.body19, label %do.end27, !prof !64

do.body19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon_sa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 322, 0\0A.popsection", ""() #7, !srcloc !66
  unreachable

do.end27:                                         ; preds = %do.body9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 32) #11
  %12 = ptrtoint ptr %sa_bo to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %sa_bo, align 4
  %cmp28 = icmp eq ptr %call7.i, null
  br i1 %cmp28, label %do.end27.cleanup_crit_edge, label %if.end30

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %do.end27
  %manager = getelementptr inbounds %struct.radeon_sa_bo, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %manager to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sa_manager, ptr %manager, align 8
  %fence = getelementptr inbounds %struct.radeon_sa_bo, ptr %call7.i, i32 0, i32 5
  %14 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %fence, align 4
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %prev.i, align 4
  %flist = getelementptr inbounds %struct.radeon_sa_bo, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %flist to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %flist, ptr %flist, align 8
  %prev.i201 = getelementptr inbounds %struct.radeon_sa_bo, ptr %call7.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i201 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %flist, ptr %prev.i201, align 4
  tail call void @_raw_spin_lock(ptr noundef %sa_manager) #7
  %hole1.i.i = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 2
  %olist.i.i = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 4
  %arrayidx.i211 = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 0
  %arrayidx.1.i = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 1
  %arrayidx.2.i = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 2
  %arrayidx.3.i = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 3
  %arrayidx.4.i = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 4
  %arrayidx.5.i = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 5
  %arrayidx.6.i = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 6
  %arrayidx.7.i = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 7
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %22 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %23 = getelementptr inbounds i8, ptr %__wait, i32 4
  br label %do.body31

do.body31:                                        ; preds = %do.cond149.do.body31_crit_edge, %if.end30
  %24 = call ptr @memset(ptr %fences, i32 0, i32 32)
  %25 = call ptr @memset(ptr %tries, i32 0, i32 32)
  br label %do.body34

do.body34:                                        ; preds = %do.body34.backedge, %do.body31
  call fastcc void @radeon_sa_bo_try_free(ptr noundef %sa_manager)
  %26 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sa_bo, align 4
  %28 = ptrtoint ptr %hole1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hole1.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %29, %olist.i.i
  br i1 %cmp.not.i.i, label %do.body34.radeon_sa_bo_hole_soffset.exit.i_crit_edge, label %if.then.i.i

do.body34.radeon_sa_bo_hole_soffset.exit.i_crit_edge: ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_sa_bo_hole_soffset.exit.i

if.then.i.i:                                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %eoffset.i.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %eoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %eoffset.i.i, align 4
  br label %radeon_sa_bo_hole_soffset.exit.i

radeon_sa_bo_hole_soffset.exit.i:                 ; preds = %if.then.i.i, %do.body34.radeon_sa_bo_hole_soffset.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %31, %if.then.i.i ], [ 0, %do.body34.radeon_sa_bo_hole_soffset.exit.i_crit_edge ]
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %cmp.not.i31.i = icmp eq ptr %33, %olist.i.i
  %soffset.i.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %33, i32 0, i32 3
  %retval.0.in.i.i = select i1 %cmp.not.i31.i, ptr %size10, ptr %soffset.i.i
  %34 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %retval.0.i32.i = load i32, ptr %retval.0.in.i.i, align 4
  %rem.i = urem i32 %retval.0.i.i, %align
  %sub.i = sub i32 %align, %rem.i
  %rem2.i = urem i32 %sub.i, %align
  %sub3.i = sub i32 %retval.0.i32.i, %retval.0.i.i
  %add.i = add i32 %rem2.i, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3.i, i32 %add.i)
  %cmp.not.i = icmp ult i32 %sub3.i, %add.i
  br i1 %cmp.not.i, label %do.cond40, label %if.then.i

if.then.i:                                        ; preds = %radeon_sa_bo_hole_soffset.exit.i
  %add4.i = add i32 %rem2.i, %retval.0.i.i
  %manager.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %27, i32 0, i32 2
  %35 = ptrtoint ptr %manager.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sa_manager, ptr %manager.i, align 4
  %soffset5.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %27, i32 0, i32 3
  %36 = ptrtoint ptr %soffset5.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add4.i, ptr %soffset5.i, align 4
  %add6.i = add i32 %add4.i, %size
  %eoffset7.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %27, i32 0, i32 4
  %37 = ptrtoint ptr %eoffset7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add6.i, ptr %eoffset7.i, align 4
  %38 = ptrtoint ptr %hole1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hole1.i.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %27, ptr noundef %39, ptr noundef %41) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.if.then36_crit_edge

if.then.i.if.then36_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %27, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %39, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %27, ptr %39, align 4
  br label %if.then36

if.then36:                                        ; preds = %if.end.i.i.i, %if.then.i.if.then36_crit_edge
  %flist.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %27, i32 0, i32 1
  %46 = ptrtoint ptr %flist.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %flist.i, ptr %flist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %27, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %flist.i, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %hole1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %27, ptr %hole1.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %sa_manager) #7
  br label %cleanup

do.cond40:                                        ; preds = %radeon_sa_bo_hole_soffset.exit.i
  %49 = ptrtoint ptr %hole1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hole1.i.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %cmp.i = icmp eq ptr %52, %olist.i.i
  br i1 %cmp.i, label %if.then.i202, label %if.end.i

if.then.i202:                                     ; preds = %do.cond40
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %hole1.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %olist.i.i, ptr %hole1.i.i, align 8
  br label %do.body34.backedge

do.body34.backedge:                               ; preds = %radeon_sa_bo_remove_locked.exit.i, %if.then.i202
  br label %do.body34

if.end.i:                                         ; preds = %do.cond40
  %cmp.not.i.i203 = icmp eq ptr %50, %olist.i.i
  br i1 %cmp.not.i.i203, label %if.end.i.radeon_sa_bo_hole_soffset.exit.i207_crit_edge, label %if.then.i.i205

if.end.i.radeon_sa_bo_hole_soffset.exit.i207_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_sa_bo_hole_soffset.exit.i207

if.then.i.i205:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %eoffset.i.i204 = getelementptr inbounds %struct.radeon_sa_bo, ptr %50, i32 0, i32 4
  %54 = ptrtoint ptr %eoffset.i.i204 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %eoffset.i.i204, align 4
  br label %radeon_sa_bo_hole_soffset.exit.i207

radeon_sa_bo_hole_soffset.exit.i207:              ; preds = %if.then.i.i205, %if.end.i.radeon_sa_bo_hole_soffset.exit.i207_crit_edge
  %retval.0.i.i206 = phi i32 [ %55, %if.then.i.i205 ], [ 0, %if.end.i.radeon_sa_bo_hole_soffset.exit.i207_crit_edge ]
  %56 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size10, align 4
  %mul.i = shl i32 %57, 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %radeon_sa_bo_hole_soffset.exit.i207
  %best_bo.072.i = phi ptr [ null, %radeon_sa_bo_hole_soffset.exit.i207 ], [ %best_bo.2.i, %cleanup.i.for.body.i_crit_edge ]
  %best.071.i = phi i32 [ %mul.i, %radeon_sa_bo_hole_soffset.exit.i207 ], [ %best.2.i, %cleanup.i.for.body.i_crit_edge ]
  %i.070.i = phi i32 [ 0, %radeon_sa_bo_hole_soffset.exit.i207 ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 %i.070.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %59, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end6.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end6.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %59, i32 -8
  %fence.i = getelementptr i8, ptr %59, i32 20
  %60 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fence.i, align 4
  %call11.i = call zeroext i1 @radeon_fence_signaled(ptr noundef %61) #7
  br i1 %call11.i, label %if.end15.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fence.i, align 4
  %arrayidx14.i = getelementptr ptr, ptr %fences, i32 %i.070.i
  %64 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %arrayidx14.i, align 4
  br label %cleanup.i

if.end15.i:                                       ; preds = %if.end6.i
  %arrayidx16.i = getelementptr i32, ptr %tries, i32 %i.070.i
  %65 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp17.i = icmp ugt i32 %66, 2
  br i1 %cmp17.i, label %if.end15.i.cleanup.i_crit_edge, label %if.end19.i

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end19.i:                                       ; preds = %if.end15.i
  %soffset20.i = getelementptr i8, ptr %59, i32 12
  %67 = ptrtoint ptr %soffset20.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %soffset20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %retval.0.i.i206)
  %cmp21.i = icmp ult i32 %68, %retval.0.i.i206
  br i1 %cmp21.i, label %if.then22.i, label %if.end19.i.if.end24.i_crit_edge

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size10, align 4
  %add.i208 = add i32 %70, %68
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end24.i_crit_edge
  %tmp.0.i = phi i32 [ %add.i208, %if.then22.i ], [ %68, %if.end19.i.if.end24.i_crit_edge ]
  %sub.i209 = sub i32 %tmp.0.i, %retval.0.i.i206
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i209, i32 %best.071.i)
  %cmp25.i = icmp ult i32 %sub.i209, %best.071.i
  %71 = call i32 @llvm.umin.i32(i32 %sub.i209, i32 %best.071.i) #7
  %spec.select67.i = select i1 %cmp25.i, ptr %add.ptr.i, ptr %best_bo.072.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end24.i, %if.end15.i.cleanup.i_crit_edge, %if.then12.i, %for.body.i.cleanup.i_crit_edge
  %best.2.i = phi i32 [ %71, %if.end24.i ], [ %best.071.i, %if.then12.i ], [ %best.071.i, %for.body.i.cleanup.i_crit_edge ], [ %best.071.i, %if.end15.i.cleanup.i_crit_edge ]
  %best_bo.2.i = phi ptr [ %spec.select67.i, %if.end24.i ], [ %best_bo.072.i, %if.then12.i ], [ %best_bo.072.i, %for.body.i.cleanup.i_crit_edge ], [ %best_bo.072.i, %if.end15.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  %tobool28.not.i = icmp eq ptr %best_bo.2.i, null
  br i1 %tobool28.not.i, label %for.body46.preheader, label %if.then29.i

for.body46.preheader:                             ; preds = %for.end.i
  %72 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fences, align 4
  %call48 = call ptr @radeon_fence_ref(ptr noundef %73) #7
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %0, align 4
  %call48.1 = call ptr @radeon_fence_ref(ptr noundef %75) #7
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %call48.2 = call ptr @radeon_fence_ref(ptr noundef %77) #7
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %2, align 4
  %call48.3 = call ptr @radeon_fence_ref(ptr noundef %79) #7
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %3, align 4
  %call48.4 = call ptr @radeon_fence_ref(ptr noundef %81) #7
  %82 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %4, align 4
  %call48.5 = call ptr @radeon_fence_ref(ptr noundef %83) #7
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %5, align 4
  %call48.6 = call ptr @radeon_fence_ref(ptr noundef %85) #7
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %6, align 4
  %call48.7 = call ptr @radeon_fence_ref(ptr noundef %87) #7
  call void @_raw_spin_unlock(ptr noundef %sa_manager) #7
  %call55 = call i32 @radeon_fence_wait_any(ptr noundef %rdev, ptr noundef nonnull %fences, i1 noundef zeroext false) #7
  call void @radeon_fence_unref(ptr noundef nonnull %fences) #7
  call void @radeon_fence_unref(ptr noundef %0) #7
  call void @radeon_fence_unref(ptr noundef %1) #7
  call void @radeon_fence_unref(ptr noundef %2) #7
  call void @radeon_fence_unref(ptr noundef %3) #7
  call void @radeon_fence_unref(ptr noundef %4) #7
  call void @radeon_fence_unref(ptr noundef %5) #7
  call void @radeon_fence_unref(ptr noundef %6) #7
  call void @_raw_spin_lock(ptr noundef %sa_manager) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call55)
  %cmp65 = icmp eq i32 %call55, -2
  br i1 %cmp65, label %if.then66, label %for.body46.preheader.do.cond149_crit_edge

for.body46.preheader.do.cond149_crit_edge:        ; preds = %for.body46.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond149

if.then29.i:                                      ; preds = %for.end.i
  %fence30.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %best_bo.2.i, i32 0, i32 5
  %88 = ptrtoint ptr %fence30.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fence30.i, align 4
  %ring.i = getelementptr inbounds %struct.radeon_fence, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ring.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %tries, i32 %91
  %92 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx31.i, align 4
  %inc32.i = add i32 %93, 1
  store i32 %inc32.i, ptr %arrayidx31.i, align 4
  %prev.i210 = getelementptr inbounds %struct.list_head, ptr %best_bo.2.i, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i210, align 4
  %96 = ptrtoint ptr %hole1.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %hole1.i.i, align 8
  %manager.i.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %best_bo.2.i, i32 0, i32 2
  %97 = ptrtoint ptr %manager.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %manager.i.i, align 4
  %hole.i.i = getelementptr inbounds %struct.radeon_sa_manager, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %hole.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hole.i.i, align 8
  %cmp.i68.i = icmp eq ptr %100, %best_bo.2.i
  br i1 %cmp.i68.i, label %if.then.i69.i, label %if.then29.i.if.end.i.i_crit_edge

if.then29.i.if.end.i.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i69.i:                                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i210, align 4
  %103 = ptrtoint ptr %hole.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %hole.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i69.i, %if.then29.i.if.end.i.i_crit_edge
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %best_bo.2.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del_init.exit.i.i_crit_edge

if.end.i.i.list_del_init.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i210, align 4
  %106 = ptrtoint ptr %best_bo.2.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %best_bo.2.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev1.i.i.i.i.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %105, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del_init.exit.i.i_crit_edge
  %110 = ptrtoint ptr %best_bo.2.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %best_bo.2.i, ptr %best_bo.2.i, align 4
  %111 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %best_bo.2.i, ptr %prev.i210, align 4
  %flist.i.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %best_bo.2.i, i32 0, i32 1
  %call.i.i11.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %flist.i.i) #7
  br i1 %call.i.i11.i.i, label %if.end.i.i14.i.i, label %list_del_init.exit.i.i.radeon_sa_bo_remove_locked.exit.i_crit_edge

list_del_init.exit.i.i.radeon_sa_bo_remove_locked.exit.i_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_sa_bo_remove_locked.exit.i

if.end.i.i14.i.i:                                 ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i12.i.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %best_bo.2.i, i32 0, i32 1, i32 1
  %112 = ptrtoint ptr %prev.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i12.i.i, align 4
  %114 = ptrtoint ptr %flist.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %flist.i.i, align 4
  %prev1.i.i.i13.i.i = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i13.i.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %radeon_sa_bo_remove_locked.exit.i

radeon_sa_bo_remove_locked.exit.i:                ; preds = %if.end.i.i14.i.i, %list_del_init.exit.i.i.radeon_sa_bo_remove_locked.exit.i_crit_edge
  %118 = ptrtoint ptr %flist.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %flist.i.i, ptr %flist.i.i, align 4
  %prev.i3.i15.i.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %best_bo.2.i, i32 0, i32 1, i32 1
  %119 = ptrtoint ptr %prev.i3.i15.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %flist.i.i, ptr %prev.i3.i15.i.i, align 4
  call void @radeon_fence_unref(ptr noundef %fence30.i) #7
  call void @kfree(ptr noundef nonnull %best_bo.2.i) #7
  br label %do.body34.backedge

if.then66:                                        ; preds = %for.body46.preheader
  %120 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile ptr, ptr %arrayidx.i211, align 4
  %cmp.i.not.i212 = icmp eq ptr %121, %arrayidx.i211
  br i1 %cmp.i.not.i212, label %for.cond.i, label %if.then66.do.cond149_crit_edge

if.then66.do.cond149_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond149

for.cond.i:                                       ; preds = %if.then66
  %122 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.not.1.i = icmp eq ptr %123, %arrayidx.1.i
  br i1 %cmp.i.not.1.i, label %for.cond.1.i, label %for.cond.i.do.cond149_crit_edge

for.cond.i.do.cond149_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond149

for.cond.1.i:                                     ; preds = %for.cond.i
  %124 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.not.2.i = icmp eq ptr %125, %arrayidx.2.i
  br i1 %cmp.i.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.cond149_crit_edge

for.cond.1.i.do.cond149_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond149

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %126 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile ptr, ptr %arrayidx.3.i, align 4
  %cmp.i.not.3.i = icmp eq ptr %127, %arrayidx.3.i
  br i1 %cmp.i.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.cond149_crit_edge

for.cond.2.i.do.cond149_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond149

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %128 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile ptr, ptr %arrayidx.4.i, align 4
  %cmp.i.not.4.i = icmp eq ptr %129, %arrayidx.4.i
  br i1 %cmp.i.not.4.i, label %for.cond.4.i, label %for.cond.3.i.do.cond149_crit_edge

for.cond.3.i.do.cond149_crit_edge:                ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond149

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %130 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile ptr, ptr %arrayidx.5.i, align 4
  %cmp.i.not.5.i = icmp eq ptr %131, %arrayidx.5.i
  br i1 %cmp.i.not.5.i, label %for.cond.5.i, label %for.cond.4.i.do.cond149_crit_edge

for.cond.4.i.do.cond149_crit_edge:                ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond149

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %132 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile ptr, ptr %arrayidx.6.i, align 4
  %cmp.i.not.6.i = icmp eq ptr %133, %arrayidx.6.i
  br i1 %cmp.i.not.6.i, label %for.cond.6.i, label %for.cond.5.i.do.cond149_crit_edge

for.cond.5.i.do.cond149_crit_edge:                ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond149

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %134 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile ptr, ptr %arrayidx.7.i, align 4
  %cmp.i.not.7.i = icmp eq ptr %135, %arrayidx.7.i
  br i1 %cmp.i.not.7.i, label %for.cond.7.i, label %for.cond.6.i.do.cond149_crit_edge

for.cond.6.i.do.cond149_crit_edge:                ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond149

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %136 = ptrtoint ptr %hole1.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hole1.i.i, align 8
  %cmp.not.i.i215 = icmp eq ptr %137, %olist.i.i
  br i1 %cmp.not.i.i215, label %for.cond.7.i.radeon_sa_event.exit_crit_edge, label %if.then.i.i217

for.cond.7.i.radeon_sa_event.exit_crit_edge:      ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_sa_event.exit

if.then.i.i217:                                   ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %eoffset.i.i216 = getelementptr inbounds %struct.radeon_sa_bo, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %eoffset.i.i216 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %eoffset.i.i216, align 4
  br label %radeon_sa_event.exit

radeon_sa_event.exit:                             ; preds = %if.then.i.i217, %for.cond.7.i.radeon_sa_event.exit_crit_edge
  %retval.0.i.i218 = phi i32 [ %139, %if.then.i.i217 ], [ 0, %for.cond.7.i.radeon_sa_event.exit_crit_edge ]
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %137, align 4
  %cmp.not.i20.i = icmp eq ptr %141, %olist.i.i
  %soffset.i.i219 = getelementptr inbounds %struct.radeon_sa_bo, ptr %141, i32 0, i32 3
  %retval.0.in.i.i221 = select i1 %cmp.not.i20.i, ptr %size10, ptr %soffset.i.i219
  %142 = ptrtoint ptr %retval.0.in.i.i221 to i32
  call void @__asan_load4_noabort(i32 %142)
  %retval.0.i21.i = load i32, ptr %retval.0.in.i.i221, align 4
  %rem.i222 = urem i32 %retval.0.i.i218, %align
  %sub.i223 = sub i32 %align, %rem.i222
  %rem3.i = urem i32 %sub.i223, %align
  %sub4.i = sub i32 %retval.0.i21.i, %retval.0.i.i218
  %add.i224 = add i32 %rem3.i, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i, i32 %add.i224)
  %cmp5.not.i.not = icmp ult i32 %sub4.i, %add.i224
  br i1 %cmp5.not.i.not, label %cond.false, label %radeon_sa_event.exit.do.cond149_crit_edge

radeon_sa_event.exit.do.cond149_crit_edge:        ; preds = %radeon_sa_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond149

cond.false:                                       ; preds = %radeon_sa_event.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #7
  %143 = call ptr @memset(ptr %23, i32 255, i32 16)
  %144 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %__wait, align 4
  %145 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i = and i32 %145, -16384
  %146 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %task, align 8
  %149 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %19, align 4
  %150 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @autoremove_wake_function, ptr %20, align 4
  %151 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %21, ptr %21, align 4
  %152 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %21, ptr %22, align 4
  br label %do.body72

do.body72:                                        ; preds = %radeon_sa_event.exit272.do.body72_crit_edge, %cond.false
  %call74 = call i32 @do_wait_intr(ptr noundef %sa_manager, ptr noundef nonnull %__wait) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.cond78, label %do.body72.do.end82_crit_edge

do.body72.do.end82_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

do.cond78:                                        ; preds = %do.body72
  %153 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile ptr, ptr %arrayidx.i211, align 4
  %cmp.i.not.i229 = icmp eq ptr %154, %arrayidx.i211
  br i1 %cmp.i.not.i229, label %for.cond.i232, label %do.cond78.do.end82_crit_edge

do.cond78.do.end82_crit_edge:                     ; preds = %do.cond78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

for.cond.i232:                                    ; preds = %do.cond78
  %155 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.not.1.i231 = icmp eq ptr %156, %arrayidx.1.i
  br i1 %cmp.i.not.1.i231, label %for.cond.1.i235, label %for.cond.i232.do.end82_crit_edge

for.cond.i232.do.end82_crit_edge:                 ; preds = %for.cond.i232
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

for.cond.1.i235:                                  ; preds = %for.cond.i232
  %157 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.not.2.i234 = icmp eq ptr %158, %arrayidx.2.i
  br i1 %cmp.i.not.2.i234, label %for.cond.2.i238, label %for.cond.1.i235.do.end82_crit_edge

for.cond.1.i235.do.end82_crit_edge:               ; preds = %for.cond.1.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

for.cond.2.i238:                                  ; preds = %for.cond.1.i235
  %159 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile ptr, ptr %arrayidx.3.i, align 4
  %cmp.i.not.3.i237 = icmp eq ptr %160, %arrayidx.3.i
  br i1 %cmp.i.not.3.i237, label %for.cond.3.i241, label %for.cond.2.i238.do.end82_crit_edge

for.cond.2.i238.do.end82_crit_edge:               ; preds = %for.cond.2.i238
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

for.cond.3.i241:                                  ; preds = %for.cond.2.i238
  %161 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile ptr, ptr %arrayidx.4.i, align 4
  %cmp.i.not.4.i240 = icmp eq ptr %162, %arrayidx.4.i
  br i1 %cmp.i.not.4.i240, label %for.cond.4.i244, label %for.cond.3.i241.do.end82_crit_edge

for.cond.3.i241.do.end82_crit_edge:               ; preds = %for.cond.3.i241
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

for.cond.4.i244:                                  ; preds = %for.cond.3.i241
  %163 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile ptr, ptr %arrayidx.5.i, align 4
  %cmp.i.not.5.i243 = icmp eq ptr %164, %arrayidx.5.i
  br i1 %cmp.i.not.5.i243, label %for.cond.5.i247, label %for.cond.4.i244.do.end82_crit_edge

for.cond.4.i244.do.end82_crit_edge:               ; preds = %for.cond.4.i244
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

for.cond.5.i247:                                  ; preds = %for.cond.4.i244
  %165 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile ptr, ptr %arrayidx.6.i, align 4
  %cmp.i.not.6.i246 = icmp eq ptr %166, %arrayidx.6.i
  br i1 %cmp.i.not.6.i246, label %for.cond.6.i250, label %for.cond.5.i247.do.end82_crit_edge

for.cond.5.i247.do.end82_crit_edge:               ; preds = %for.cond.5.i247
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

for.cond.6.i250:                                  ; preds = %for.cond.5.i247
  %167 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile ptr, ptr %arrayidx.7.i, align 4
  %cmp.i.not.7.i249 = icmp eq ptr %168, %arrayidx.7.i
  br i1 %cmp.i.not.7.i249, label %for.cond.7.i254, label %for.cond.6.i250.do.end82_crit_edge

for.cond.6.i250.do.end82_crit_edge:               ; preds = %for.cond.6.i250
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

for.cond.7.i254:                                  ; preds = %for.cond.6.i250
  %169 = ptrtoint ptr %hole1.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hole1.i.i, align 8
  %cmp.not.i.i253 = icmp eq ptr %170, %olist.i.i
  br i1 %cmp.not.i.i253, label %for.cond.7.i254.radeon_sa_event.exit272_crit_edge, label %if.then.i.i256

for.cond.7.i254.radeon_sa_event.exit272_crit_edge: ; preds = %for.cond.7.i254
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_sa_event.exit272

if.then.i.i256:                                   ; preds = %for.cond.7.i254
  call void @__sanitizer_cov_trace_pc() #9
  %eoffset.i.i255 = getelementptr inbounds %struct.radeon_sa_bo, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %eoffset.i.i255 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %eoffset.i.i255, align 4
  br label %radeon_sa_event.exit272

radeon_sa_event.exit272:                          ; preds = %if.then.i.i256, %for.cond.7.i254.radeon_sa_event.exit272_crit_edge
  %retval.0.i.i257 = phi i32 [ %172, %if.then.i.i256 ], [ 0, %for.cond.7.i254.radeon_sa_event.exit272_crit_edge ]
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %170, align 4
  %cmp.not.i20.i258 = icmp eq ptr %174, %olist.i.i
  %soffset.i.i259 = getelementptr inbounds %struct.radeon_sa_bo, ptr %174, i32 0, i32 3
  %retval.0.in.i.i261 = select i1 %cmp.not.i20.i258, ptr %size10, ptr %soffset.i.i259
  %175 = ptrtoint ptr %retval.0.in.i.i261 to i32
  call void @__asan_load4_noabort(i32 %175)
  %retval.0.i21.i262 = load i32, ptr %retval.0.in.i.i261, align 4
  %rem.i263 = urem i32 %retval.0.i.i257, %align
  %sub.i264 = sub i32 %align, %rem.i263
  %rem3.i265 = urem i32 %sub.i264, %align
  %sub4.i266 = sub i32 %retval.0.i21.i262, %retval.0.i.i257
  %add.i267 = add i32 %rem3.i265, %size
  %cmp5.not.i268.not = icmp ult i32 %sub4.i266, %add.i267
  br i1 %cmp5.not.i268.not, label %radeon_sa_event.exit272.do.body72_crit_edge, label %radeon_sa_event.exit272.do.end82_crit_edge

radeon_sa_event.exit272.do.end82_crit_edge:       ; preds = %radeon_sa_event.exit272
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

radeon_sa_event.exit272.do.body72_crit_edge:      ; preds = %radeon_sa_event.exit272
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body72

do.end82:                                         ; preds = %radeon_sa_event.exit272.do.end82_crit_edge, %for.cond.6.i250.do.end82_crit_edge, %for.cond.5.i247.do.end82_crit_edge, %for.cond.4.i244.do.end82_crit_edge, %for.cond.3.i241.do.end82_crit_edge, %for.cond.2.i238.do.end82_crit_edge, %for.cond.1.i235.do.end82_crit_edge, %for.cond.i232.do.end82_crit_edge, %do.cond78.do.end82_crit_edge, %do.body72.do.end82_crit_edge
  %call.i.i.i273 = call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #7
  br i1 %call.i.i.i273, label %if.end.i.i.i274, label %do.end82.__remove_wait_queue.exit_crit_edge

do.end82.__remove_wait_queue.exit_crit_edge:      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %__remove_wait_queue.exit

if.end.i.i.i274:                                  ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %22, align 4
  %178 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %177, ptr %prev1.i.i.i.i, align 4
  %181 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %179, ptr %177, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i274, %do.end82.__remove_wait_queue.exit_crit_edge
  %182 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %183 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  br label %__here

__here:                                           ; preds = %__remove_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  %184 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %185, i32 0, i32 212
  %186 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 ptrtoint (ptr blockaddress(@radeon_sa_bo_new, %__here) to i32), ptr %task_state_change, align 4
  %187 = load ptr, ptr %task, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile i32 0, ptr %187, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #7
  br label %do.cond149

do.cond149:                                       ; preds = %__here, %radeon_sa_event.exit.do.cond149_crit_edge, %for.cond.6.i.do.cond149_crit_edge, %for.cond.5.i.do.cond149_crit_edge, %for.cond.4.i.do.cond149_crit_edge, %for.cond.3.i.do.cond149_crit_edge, %for.cond.2.i.do.cond149_crit_edge, %for.cond.1.i.do.cond149_crit_edge, %for.cond.i.do.cond149_crit_edge, %if.then66.do.cond149_crit_edge, %for.body46.preheader.do.cond149_crit_edge
  %r.0 = phi i32 [ %call55, %for.body46.preheader.do.cond149_crit_edge ], [ %call74, %__here ], [ 0, %radeon_sa_event.exit.do.cond149_crit_edge ], [ 0, %for.cond.6.i.do.cond149_crit_edge ], [ 0, %for.cond.5.i.do.cond149_crit_edge ], [ 0, %for.cond.4.i.do.cond149_crit_edge ], [ 0, %for.cond.3.i.do.cond149_crit_edge ], [ 0, %for.cond.2.i.do.cond149_crit_edge ], [ 0, %for.cond.1.i.do.cond149_crit_edge ], [ 0, %for.cond.i.do.cond149_crit_edge ], [ 0, %if.then66.do.cond149_crit_edge ]
  %tobool150.not = icmp eq i32 %r.0, 0
  br i1 %tobool150.not, label %do.cond149.do.body31_crit_edge, label %do.end153

do.cond149.do.body31_crit_edge:                   ; preds = %do.cond149
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

do.end153:                                        ; preds = %do.cond149
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %sa_manager) #7
  %189 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %sa_bo, align 4
  call void @kfree(ptr noundef %190) #7
  %191 = ptrtoint ptr %sa_bo to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %sa_bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end153, %if.then36, %do.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then36 ], [ %r.0, %do.end153 ], [ -12, %do.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tries) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fences) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_fence_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait_any(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_sa_bo_free(ptr nocapture noundef readnone %rdev, ptr noundef %sa_bo, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sa_bo, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sa_bo, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %manager = getelementptr inbounds %struct.radeon_sa_bo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %manager to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %manager, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i1 @radeon_fence_signaled(ptr noundef nonnull %fence) #7
  br i1 %call, label %land.lhs.true.if.else_crit_edge, label %if.then2

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then2:                                         ; preds = %land.lhs.true
  %call3 = tail call ptr @radeon_fence_ref(ptr noundef nonnull %fence) #7
  %4 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sa_bo, align 4
  %fence4 = getelementptr inbounds %struct.radeon_sa_bo, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %fence4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %fence4, align 4
  %7 = load ptr, ptr %sa_bo, align 4
  %flist = getelementptr inbounds %struct.radeon_sa_bo, ptr %7, i32 0, i32 1
  %ring = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %8 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ring, align 8
  %arrayidx = getelementptr %struct.radeon_sa_manager, ptr %3, i32 0, i32 3, i32 %9
  %prev.i = getelementptr %struct.radeon_sa_manager, ptr %3, i32 0, i32 3, i32 %9, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %flist, ptr noundef %11, ptr noundef %arrayidx) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %flist, ptr %prev.i, align 4
  %13 = ptrtoint ptr %flist to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %flist, align 4
  %prev3.i.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %7, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %flist, ptr %11, align 4
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %16 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sa_bo, align 4
  %manager.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %manager.i, align 4
  %hole.i = getelementptr inbounds %struct.radeon_sa_manager, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %hole.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hole.i, align 8
  %cmp.i = icmp eq ptr %21, %17
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i22 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i22, align 4
  %24 = ptrtoint ptr %hole.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %hole.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %17, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %31 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %17, ptr %17, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %17, ptr %prev.i3.i.i, align 4
  %flist.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %17, i32 0, i32 1
  %call.i.i11.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %flist.i) #7
  br i1 %call.i.i11.i, label %if.end.i.i14.i, label %list_del_init.exit.i.radeon_sa_bo_remove_locked.exit_crit_edge

list_del_init.exit.i.radeon_sa_bo_remove_locked.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_sa_bo_remove_locked.exit

if.end.i.i14.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i12.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %17, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i12.i, align 4
  %35 = ptrtoint ptr %flist.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %flist.i, align 4
  %prev1.i.i.i13.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i13.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %radeon_sa_bo_remove_locked.exit

radeon_sa_bo_remove_locked.exit:                  ; preds = %if.end.i.i14.i, %list_del_init.exit.i.radeon_sa_bo_remove_locked.exit_crit_edge
  %39 = ptrtoint ptr %flist.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %flist.i, ptr %flist.i, align 4
  %prev.i3.i15.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %17, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i3.i15.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %flist.i, ptr %prev.i3.i15.i, align 4
  %fence.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %17, i32 0, i32 5
  tail call void @radeon_fence_unref(ptr noundef %fence.i) #7
  tail call void @kfree(ptr noundef %17) #7
  br label %if.end6

if.end6:                                          ; preds = %radeon_sa_bo_remove_locked.exit, %if.end.i.i, %if.then2.if.end6_crit_edge
  tail call void @__wake_up_locked(ptr noundef %3, i32 noundef 3, i32 noundef 0) #7
  tail call void @_raw_spin_unlock(ptr noundef %3) #7
  %41 = ptrtoint ptr %sa_bo to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %sa_bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_fence_signaled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_sa_bo_dump_debug_info(ptr noundef %sa_manager, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %sa_manager) #7
  %olist = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 4
  %0 = ptrtoint ptr %olist to i32
  call void @__asan_load4_noabort(i32 %0)
  %i.041 = load ptr, ptr %olist, align 4
  %cmp.not42 = icmp eq ptr %i.041, %olist
  br i1 %cmp.not42, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %gpu_addr = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 6
  %hole = getelementptr inbounds %struct.radeon_sa_manager, ptr %sa_manager, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi ptr [ %i.041, %for.body.lr.ph ], [ %i.0, %if.end14.for.body_crit_edge ]
  %soffset3 = getelementptr inbounds %struct.radeon_sa_bo, ptr %i.043, i32 0, i32 3
  %1 = ptrtoint ptr %soffset3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %soffset3, align 4
  %conv = zext i32 %2 to i64
  %3 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %gpu_addr, align 8
  %add = add i64 %4, %conv
  %eoffset4 = getelementptr inbounds %struct.radeon_sa_bo, ptr %i.043, i32 0, i32 4
  %5 = ptrtoint ptr %eoffset4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eoffset4, align 4
  %conv5 = zext i32 %6 to i64
  %add7 = add i64 %4, %conv5
  %7 = ptrtoint ptr %hole to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hole, align 8
  %cmp9 = icmp eq ptr %i.043, %8
  %.str.17..str.18 = select i1 %cmp9, ptr @.str.17, ptr @.str.18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.17..str.18) #7
  %sub = sub i64 %add7, %add
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, i64 noundef %add, i64 noundef %add7, i64 noundef %sub) #7
  %fence = getelementptr inbounds %struct.radeon_sa_bo, ptr %i.043, i32 0, i32 5
  %9 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fence, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.if.end14_crit_edge, label %if.then11

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %seq, align 8
  %ring = getelementptr inbounds %struct.radeon_fence, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ring, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i64 noundef %12, i32 noundef %14) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.body.if.end14_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21) #7
  %15 = ptrtoint ptr %i.043 to i32
  call void @__asan_load4_noabort(i32 %15)
  %i.0 = load ptr, ptr %i.043, align 4
  %cmp.not = icmp eq ptr %i.0, %olist
  br i1 %cmp.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sa_manager) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @radeon_sa_bo_manager_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 56, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 70, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @radeon_sa_bo_manager_init._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @radeon_sa_bo_manager_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 86, i32 4}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @radeon_sa_bo_manager_fini._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @radeon_sa_bo_manager_fini._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 102, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @radeon_sa_bo_manager_start._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @radeon_sa_bo_manager_start._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 109, i32 3}
!23 = !{ptr @radeon_sa_bo_manager_start._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @radeon_sa_bo_manager_start._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 115, i32 3}
!27 = !{ptr @radeon_sa_bo_manager_start._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @radeon_sa_bo_manager_start._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 129, i32 3}
!31 = !{ptr @radeon_sa_bo_manager_suspend._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @radeon_sa_bo_manager_suspend._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 362, i32 8}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 410, i32 18}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 412, i32 18}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 414, i32 17}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 417, i32 18}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/radeon_sa.c", i32 420, i32 17}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @radeon_bo_reserve._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @radeon_bo_reserve._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 2157591427, i64 2157591926, i64 2157591464, i64 2157591520, i64 2157591554, i64 2157591578, i64 2157591619, i64 2157591640, i64 2157591668, i64 2157591702}
!66 = !{i64 2157593074, i64 2157593573, i64 2157593111, i64 2157593167, i64 2157593201, i64 2157593225, i64 2157593266, i64 2157593287, i64 2157593315, i64 2157593349}
