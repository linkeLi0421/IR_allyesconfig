; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [32 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.amdgpu_sa_bo = type { %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@amdgpu_sa_bo_manager_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sa_manager->wq\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_sa_bo_manager_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 69, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: (%d) failed to allocate bo for manager\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_sa_bo_manager_init\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_sa_bo_manager_init._entry_ptr = internal global ptr @amdgpu_sa_bo_manager_init._entry, section ".printk_index", align 4
@amdgpu_sa_bo_manager_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: no bo for sa manager\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_sa_bo_manager_fini\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_sa_bo_manager_fini._entry_ptr = internal global ptr @amdgpu_sa_bo_manager_fini._entry, section ".printk_index", align 4
@amdgpu_sa_bo_manager_fini._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: sa_manager is not empty, clearing anyway\0A\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_sa_bo_manager_fini._entry_ptr.10 = internal global ptr @amdgpu_sa_bo_manager_fini._entry.8, section ".printk_index", align 4
@amdgpu_sa_bo_new.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_sa_bo_new.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c">\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[0x%010llx 0x%010llx] size %8lld\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" protected by 0x%016llx on context %llu\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 56, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 69, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 83, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 91, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 383, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 385, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 387, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 391, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 394, i32 17 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @amdgpu_sa_bo_manager_fini._entry, ptr @amdgpu_sa_bo_manager_fini._entry.8, ptr @amdgpu_sa_bo_manager_fini._entry_ptr, ptr @amdgpu_sa_bo_manager_fini._entry_ptr.10, ptr @amdgpu_sa_bo_manager_init._entry, ptr @amdgpu_sa_bo_manager_init._entry_ptr, ptr @amdgpu_sa_bo_manager_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_sa_bo_manager_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_sa_bo_manager_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_sa_bo_manager_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_sa_bo_manager_fini._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_sa_bo_manager_init(ptr noundef %adev, ptr noundef %sa_manager, i32 noundef %size, i32 noundef %align, i32 noundef %domain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__init_waitqueue_head(ptr noundef %sa_manager, ptr noundef nonnull @.str, ptr noundef nonnull @amdgpu_sa_bo_manager_init.__key) #8
  %bo = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 1
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bo, align 4
  %size1 = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 5
  %1 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size1, align 4
  %domain2 = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 8
  %2 = ptrtoint ptr %domain2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %domain, ptr %domain2, align 4
  %align3 = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 9
  %3 = ptrtoint ptr %align3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %align, ptr %align3, align 8
  %olist = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 4
  %hole = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 2
  %4 = ptrtoint ptr %hole to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %olist, ptr %hole, align 8
  %5 = ptrtoint ptr %olist to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %olist, ptr %olist, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %olist, ptr %prev.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 %i.035
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i34 = getelementptr %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 %i.035, i32 1
  %8 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %prev.i34, align 4
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %gpu_addr = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 6
  %cpu_ptr = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 7
  %call = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %size, i32 noundef %align, i32 noundef %domain, ptr noundef %bo, ptr noundef %gpu_addr, ptr noundef %cpu_ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end8

do.end8:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_ptr, align 8
  %13 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size1, align 4
  %15 = call ptr @memset(ptr %12, i32 0, i32 %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end8
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_sa_bo_manager_fini(ptr nocapture noundef readonly %adev, ptr noundef %sa_manager) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bo = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 1
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %olist = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 4
  %4 = ptrtoint ptr %olist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %olist, align 4
  %cmp.i = icmp eq ptr %5, %olist
  br i1 %cmp.i, label %if.end.if.end12_crit_edge, label %if.then1

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then1:                                         ; preds = %if.end
  %hole = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 2
  %6 = ptrtoint ptr %hole to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %olist, ptr %hole, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %if.then1
  %sa_bo.034.i = phi ptr [ %tmp.035.i, %if.end15.i.for.body.i_crit_edge ], [ %5, %if.then1 ]
  %7 = ptrtoint ptr %sa_bo.034.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.035.i = load ptr, ptr %sa_bo.034.i, align 4
  %fence.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %sa_bo.034.i, i32 0, i32 5
  %8 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fence.i, align 4
  %cmp12.i = icmp eq ptr %9, null
  br i1 %cmp12.i, label %for.body.i.amdgpu_sa_bo_try_free.exit_crit_edge, label %lor.lhs.false.i

for.body.i.amdgpu_sa_bo_try_free.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_try_free.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %flags.i.i = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.if.end15.i_crit_edge

lor.lhs.false.i.if.end15.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i
  %ops.i.i = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %signaled.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %signaled.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signaled.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.amdgpu_sa_bo_try_free.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.i.amdgpu_sa_bo_try_free.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_try_free.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call4.i.i = tail call zeroext i1 %15(ptr noundef nonnull %9) #8
  br i1 %call4.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.amdgpu_sa_bo_try_free.exit_crit_edge

land.lhs.true.i.i.amdgpu_sa_bo_try_free.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_try_free.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call i32 @dma_fence_signal(ptr noundef nonnull %9) #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then5.i.i, %lor.lhs.false.i.if.end15.i_crit_edge
  tail call fastcc void @amdgpu_sa_bo_remove_locked(ptr noundef %sa_bo.034.i) #8
  %cmp11.not.i = icmp eq ptr %tmp.035.i, %olist
  br i1 %cmp11.not.i, label %if.end15.i.amdgpu_sa_bo_try_free.exit_crit_edge, label %if.end15.i.for.body.i_crit_edge

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end15.i.amdgpu_sa_bo_try_free.exit_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_try_free.exit

amdgpu_sa_bo_try_free.exit:                       ; preds = %if.end15.i.amdgpu_sa_bo_try_free.exit_crit_edge, %land.lhs.true.i.i.amdgpu_sa_bo_try_free.exit_crit_edge, %if.end.i.i.amdgpu_sa_bo_try_free.exit_crit_edge, %for.body.i.amdgpu_sa_bo_try_free.exit_crit_edge
  %16 = ptrtoint ptr %olist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %olist, align 4
  %cmp.i46.not = icmp eq ptr %17, %olist
  br i1 %cmp.i46.not, label %amdgpu_sa_bo_try_free.exit.if.end12_crit_edge, label %do.end9

amdgpu_sa_bo_try_free.exit.if.end12_crit_edge:    ; preds = %amdgpu_sa_bo_try_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end9:                                          ; preds = %amdgpu_sa_bo_try_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.9) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %amdgpu_sa_bo_try_free.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %20 = ptrtoint ptr %olist to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %olist, align 4
  %cmp22.not48 = icmp eq ptr %21, %olist
  br i1 %cmp22.not48, label %if.end12.for.end_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end12.for.body_crit_edge
  %sa_bo.049 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %21, %if.end12.for.body_crit_edge ]
  %22 = ptrtoint ptr %sa_bo.049 to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.0 = load ptr, ptr %sa_bo.049, align 4
  tail call fastcc void @amdgpu_sa_bo_remove_locked(ptr noundef %sa_bo.049)
  %cmp22.not = icmp eq ptr %tmp.0, %olist
  br i1 %cmp22.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end12.for.end_crit_edge
  %gpu_addr = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 6
  %cpu_ptr = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 7
  tail call void @amdgpu_bo_free_kernel(ptr noundef %bo, ptr noundef %gpu_addr, ptr noundef %cpu_ptr) #8
  %size = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 5
  %23 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_sa_bo_remove_locked(ptr noundef %sa_bo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %manager = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %sa_bo, i32 0, i32 2
  %0 = ptrtoint ptr %manager to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %manager, align 4
  %hole = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hole to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hole, align 8
  %cmp = icmp eq ptr %3, %sa_bo
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev = getelementptr inbounds %struct.list_head, ptr %sa_bo, i32 0, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %6 = ptrtoint ptr %hole to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %hole, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sa_bo) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sa_bo, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sa_bo, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %sa_bo to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %sa_bo, ptr %sa_bo, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %sa_bo, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sa_bo, ptr %prev.i3.i, align 4
  %flist = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %sa_bo, i32 0, i32 1
  %call.i.i11 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %flist) #8
  br i1 %call.i.i11, label %if.end.i.i14, label %list_del_init.exit.list_del_init.exit16_crit_edge

list_del_init.exit.list_del_init.exit16_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit16

if.end.i.i14:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i12 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %sa_bo, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i.i12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i12, align 4
  %17 = ptrtoint ptr %flist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %flist, align 4
  %prev1.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i13, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit16

list_del_init.exit16:                             ; preds = %if.end.i.i14, %list_del_init.exit.list_del_init.exit16_crit_edge
  %21 = ptrtoint ptr %flist to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %flist, ptr %flist, align 4
  %prev.i3.i15 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %sa_bo, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i3.i15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %flist, ptr %prev.i3.i15, align 4
  %fence = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %sa_bo, i32 0, i32 5
  %23 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %list_del_init.exit16.dma_fence_put.exit_crit_edge, label %if.then.i

list_del_init.exit16.dma_fence_put.exit_crit_edge: ; preds = %list_del_init.exit16
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %list_del_init.exit16
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %24, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !48

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %list_del_init.exit16.dma_fence_put.exit_crit_edge
  tail call void @kfree(ptr noundef %sa_bo) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_sa_bo_new(ptr noundef %sa_manager, ptr nocapture noundef %sa_bo, i32 noundef %size, i32 noundef %align) #0 align 64 {
entry:
  %fences = alloca [32 x ptr], align 4
  %tries = alloca [32 x i32], align 4
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %fences) #8
  %0 = call ptr @memset(ptr %fences, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tries) #8
  %align1 = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 9
  %1 = ptrtoint ptr %align1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %align1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %align)
  %cmp = icmp ult i32 %2, %align
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %entry
  %.b296 = load i1, ptr @amdgpu_sa_bo_new.__already_done, align 1
  br i1 %.b296, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !48

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @amdgpu_sa_bo_new.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 285, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end38:                                         ; preds = %entry
  %size40 = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 5
  %3 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %size)
  %cmp41 = icmp ult i32 %4, %size
  br i1 %cmp41, label %land.rhs48, label %if.end96

land.rhs48:                                       ; preds = %if.end38
  %.b294295 = load i1, ptr @amdgpu_sa_bo_new.__already_done.11, align 1
  br i1 %.b294295, label %land.rhs48.cleanup_crit_edge, label %if.then59, !prof !48

land.rhs48.cleanup_crit_edge:                     ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then59:                                        ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @amdgpu_sa_bo_new.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 288, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end96:                                         ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 32) #12
  %6 = ptrtoint ptr %sa_bo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %sa_bo, align 4
  %tobool97.not = icmp eq ptr %call7.i, null
  br i1 %tobool97.not, label %if.end96.cleanup_crit_edge, label %if.end99

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end99:                                         ; preds = %if.end96
  %manager = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %manager to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sa_manager, ptr %manager, align 8
  %fence = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fence, align 4
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %prev.i, align 4
  %flist = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %flist to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %flist, ptr %flist, align 8
  %prev.i299 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %call7.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i299 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %flist, ptr %prev.i299, align 4
  tail call void @_raw_spin_lock(ptr noundef %sa_manager) #8
  %hole.i = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 2
  %olist.i = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 4
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %17 = getelementptr inbounds i8, ptr %__wait, i32 4
  br label %do.body100

do.body100:                                       ; preds = %do.cond233.do.body100_crit_edge, %if.end99
  %18 = call ptr @memset(ptr %tries, i32 0, i32 128)
  br label %do.body102

do.body102:                                       ; preds = %do.body102.backedge, %do.body100
  %19 = ptrtoint ptr %hole.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hole.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %cmp.i = icmp eq ptr %22, %olist.i
  br i1 %cmp.i, label %do.body102.amdgpu_sa_bo_try_free.exit_crit_edge, label %do.body102.for.body.i_crit_edge

do.body102.for.body.i_crit_edge:                  ; preds = %do.body102
  br label %for.body.i

do.body102.amdgpu_sa_bo_try_free.exit_crit_edge:  ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_try_free.exit

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %do.body102.for.body.i_crit_edge
  %sa_bo.034.i = phi ptr [ %tmp.035.i, %if.end15.i.for.body.i_crit_edge ], [ %22, %do.body102.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %sa_bo.034.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.035.i = load ptr, ptr %sa_bo.034.i, align 4
  %fence.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %sa_bo.034.i, i32 0, i32 5
  %24 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fence.i, align 4
  %cmp12.i = icmp eq ptr %25, null
  br i1 %cmp12.i, label %for.body.i.amdgpu_sa_bo_try_free.exit_crit_edge, label %lor.lhs.false.i

for.body.i.amdgpu_sa_bo_try_free.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_try_free.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %flags.i.i = getelementptr inbounds %struct.dma_fence, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.if.end15.i_crit_edge

lor.lhs.false.i.if.end15.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i
  %ops.i.i = getelementptr inbounds %struct.dma_fence, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i, align 4
  %signaled.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %signaled.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %signaled.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.amdgpu_sa_bo_try_free.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.i.amdgpu_sa_bo_try_free.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_try_free.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call4.i.i = call zeroext i1 %31(ptr noundef nonnull %25) #8
  br i1 %call4.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.amdgpu_sa_bo_try_free.exit_crit_edge

land.lhs.true.i.i.amdgpu_sa_bo_try_free.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_try_free.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = call i32 @dma_fence_signal(ptr noundef nonnull %25) #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then5.i.i, %lor.lhs.false.i.if.end15.i_crit_edge
  call fastcc void @amdgpu_sa_bo_remove_locked(ptr noundef %sa_bo.034.i) #8
  %cmp11.not.i = icmp eq ptr %tmp.035.i, %olist.i
  br i1 %cmp11.not.i, label %if.end15.i.amdgpu_sa_bo_try_free.exit_crit_edge, label %if.end15.i.for.body.i_crit_edge

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end15.i.amdgpu_sa_bo_try_free.exit_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_try_free.exit

amdgpu_sa_bo_try_free.exit:                       ; preds = %if.end15.i.amdgpu_sa_bo_try_free.exit_crit_edge, %land.lhs.true.i.i.amdgpu_sa_bo_try_free.exit_crit_edge, %if.end.i.i.amdgpu_sa_bo_try_free.exit_crit_edge, %for.body.i.amdgpu_sa_bo_try_free.exit_crit_edge, %do.body102.amdgpu_sa_bo_try_free.exit_crit_edge
  %32 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sa_bo, align 4
  %34 = ptrtoint ptr %hole.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hole.i, align 8
  %cmp.not.i.i = icmp eq ptr %35, %olist.i
  br i1 %cmp.not.i.i, label %amdgpu_sa_bo_try_free.exit.amdgpu_sa_bo_hole_soffset.exit.i_crit_edge, label %if.then.i.i

amdgpu_sa_bo_try_free.exit.amdgpu_sa_bo_hole_soffset.exit.i_crit_edge: ; preds = %amdgpu_sa_bo_try_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_hole_soffset.exit.i

if.then.i.i:                                      ; preds = %amdgpu_sa_bo_try_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  %eoffset.i.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %eoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %eoffset.i.i, align 4
  br label %amdgpu_sa_bo_hole_soffset.exit.i

amdgpu_sa_bo_hole_soffset.exit.i:                 ; preds = %if.then.i.i, %amdgpu_sa_bo_try_free.exit.amdgpu_sa_bo_hole_soffset.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %37, %if.then.i.i ], [ 0, %amdgpu_sa_bo_try_free.exit.amdgpu_sa_bo_hole_soffset.exit.i_crit_edge ]
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %cmp.not.i31.i = icmp eq ptr %39, %olist.i
  %soffset.i.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %39, i32 0, i32 3
  %retval.0.in.i.i = select i1 %cmp.not.i31.i, ptr %size40, ptr %soffset.i.i
  %40 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i32.i = load i32, ptr %retval.0.in.i.i, align 4
  %rem.i = urem i32 %retval.0.i.i, %align
  %sub.i = sub i32 %align, %rem.i
  %rem2.i = urem i32 %sub.i, %align
  %sub3.i = sub i32 %retval.0.i32.i, %retval.0.i.i
  %add.i = add i32 %rem2.i, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3.i, i32 %add.i)
  %cmp.not.i = icmp ult i32 %sub3.i, %add.i
  br i1 %cmp.not.i, label %do.cond108, label %if.then.i

if.then.i:                                        ; preds = %amdgpu_sa_bo_hole_soffset.exit.i
  %add4.i = add i32 %rem2.i, %retval.0.i.i
  %manager.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %33, i32 0, i32 2
  %41 = ptrtoint ptr %manager.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sa_manager, ptr %manager.i, align 4
  %soffset5.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %33, i32 0, i32 3
  %42 = ptrtoint ptr %soffset5.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add4.i, ptr %soffset5.i, align 4
  %add6.i = add i32 %add4.i, %size
  %eoffset7.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %33, i32 0, i32 4
  %43 = ptrtoint ptr %eoffset7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add6.i, ptr %eoffset7.i, align 4
  %44 = ptrtoint ptr %hole.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hole.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %33, ptr noundef %45, ptr noundef %47) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.if.then104_crit_edge

if.then.i.if.then104_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then104

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %33, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %45, ptr %prev3.i.i.i, align 4
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %33, ptr %45, align 4
  br label %if.then104

if.then104:                                       ; preds = %if.end.i.i.i, %if.then.i.if.then104_crit_edge
  %flist.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %33, i32 0, i32 1
  %52 = ptrtoint ptr %flist.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %flist.i, ptr %flist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %33, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %flist.i, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %hole.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %33, ptr %hole.i, align 8
  call void @_raw_spin_unlock(ptr noundef %sa_manager) #8
  br label %cleanup

do.cond108:                                       ; preds = %amdgpu_sa_bo_hole_soffset.exit.i
  %55 = ptrtoint ptr %hole.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hole.i, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %cmp.i302 = icmp eq ptr %58, %olist.i
  br i1 %cmp.i302, label %if.then.i303, label %if.end.i

if.then.i303:                                     ; preds = %do.cond108
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %hole.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %olist.i, ptr %hole.i, align 8
  br label %do.body102.backedge

do.body102.backedge:                              ; preds = %if.then30.i, %if.then.i303
  br label %do.body102

if.end.i:                                         ; preds = %do.cond108
  %cmp.not.i.i304 = icmp eq ptr %56, %olist.i
  br i1 %cmp.not.i.i304, label %if.end.i.amdgpu_sa_bo_hole_soffset.exit.i308_crit_edge, label %if.then.i.i306

if.end.i.amdgpu_sa_bo_hole_soffset.exit.i308_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_bo_hole_soffset.exit.i308

if.then.i.i306:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %eoffset.i.i305 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %56, i32 0, i32 4
  %60 = ptrtoint ptr %eoffset.i.i305 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %eoffset.i.i305, align 4
  br label %amdgpu_sa_bo_hole_soffset.exit.i308

amdgpu_sa_bo_hole_soffset.exit.i308:              ; preds = %if.then.i.i306, %if.end.i.amdgpu_sa_bo_hole_soffset.exit.i308_crit_edge
  %retval.0.i.i307 = phi i32 [ %61, %if.then.i.i306 ], [ 0, %if.end.i.amdgpu_sa_bo_hole_soffset.exit.i308_crit_edge ]
  %62 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size40, align 4
  %mul.i = shl i32 %63, 1
  br label %for.body.i309

for.body.i309:                                    ; preds = %cleanup.i.for.body.i309_crit_edge, %amdgpu_sa_bo_hole_soffset.exit.i308
  %best_bo.078.i = phi ptr [ null, %amdgpu_sa_bo_hole_soffset.exit.i308 ], [ %best_bo.2.i, %cleanup.i.for.body.i309_crit_edge ]
  %i.077.i = phi i32 [ 0, %amdgpu_sa_bo_hole_soffset.exit.i308 ], [ %inc.i, %cleanup.i.for.body.i309_crit_edge ]
  %best.075.i = phi i32 [ %mul.i, %amdgpu_sa_bo_hole_soffset.exit.i308 ], [ %best.2.i, %cleanup.i.for.body.i309_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %fences, i32 %i.077.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 %i.077.i
  %65 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %arrayidx4.i, align 4
  %cmp.i.not.i = icmp eq ptr %66, %arrayidx4.i
  br i1 %cmp.i.not.i, label %for.body.i309.cleanup.i_crit_edge, label %if.end7.i

for.body.i309.cleanup.i_crit_edge:                ; preds = %for.body.i309
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end7.i:                                        ; preds = %for.body.i309
  %add.ptr.i = getelementptr i8, ptr %66, i32 -8
  %fence.i310 = getelementptr i8, ptr %66, i32 20
  %67 = ptrtoint ptr %fence.i310 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fence.i310, align 4
  %flags.i.i311 = getelementptr inbounds %struct.dma_fence, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %flags.i.i311 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags.i.i311, align 4
  %and1.i.i.i312 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i312)
  %tobool.not.i.i313 = icmp eq i32 %and1.i.i.i312, 0
  br i1 %tobool.not.i.i313, label %if.end.i.i317, label %if.end7.i.if.end16.i_crit_edge

if.end7.i.if.end16.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.end.i.i317:                                    ; preds = %if.end7.i
  %ops.i.i314 = getelementptr inbounds %struct.dma_fence, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %ops.i.i314 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i.i314, align 4
  %signaled.i.i315 = getelementptr inbounds %struct.dma_fence_ops, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %signaled.i.i315 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %signaled.i.i315, align 4
  %tobool1.not.i.i316 = icmp eq ptr %74, null
  br i1 %tobool1.not.i.i316, label %if.end.i.i317.if.then13.i_crit_edge, label %land.lhs.true.i.i319

if.end.i.i317.if.then13.i_crit_edge:              ; preds = %if.end.i.i317
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

land.lhs.true.i.i319:                             ; preds = %if.end.i.i317
  %call4.i.i318 = call zeroext i1 %74(ptr noundef %68) #8
  br i1 %call4.i.i318, label %if.then5.i.i321, label %land.lhs.true.i.i319.if.then13.i_crit_edge

land.lhs.true.i.i319.if.then13.i_crit_edge:       ; preds = %land.lhs.true.i.i319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

if.then5.i.i321:                                  ; preds = %land.lhs.true.i.i319
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i320 = call i32 @dma_fence_signal(ptr noundef %68) #8
  br label %if.end16.i

if.then13.i:                                      ; preds = %land.lhs.true.i.i319.if.then13.i_crit_edge, %if.end.i.i317.if.then13.i_crit_edge
  %75 = ptrtoint ptr %fence.i310 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fence.i310, align 4
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %arrayidx.i, align 4
  br label %cleanup.i

if.end16.i:                                       ; preds = %if.then5.i.i321, %if.end7.i.if.end16.i_crit_edge
  %arrayidx17.i = getelementptr i32, ptr %tries, i32 %i.077.i
  %78 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp18.i = icmp ugt i32 %79, 2
  br i1 %cmp18.i, label %if.end16.i.cleanup.i_crit_edge, label %if.end20.i

if.end16.i.cleanup.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end20.i:                                       ; preds = %if.end16.i
  %soffset21.i = getelementptr i8, ptr %66, i32 12
  %80 = ptrtoint ptr %soffset21.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %soffset21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %retval.0.i.i307)
  %cmp22.i = icmp ult i32 %81, %retval.0.i.i307
  br i1 %cmp22.i, label %if.then23.i, label %if.end20.i.if.end25.i_crit_edge

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size40, align 4
  %add.i322 = add i32 %83, %81
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end25.i_crit_edge
  %tmp.0.i = phi i32 [ %add.i322, %if.then23.i ], [ %81, %if.end20.i.if.end25.i_crit_edge ]
  %sub.i323 = sub i32 %tmp.0.i, %retval.0.i.i307
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i323, i32 %best.075.i)
  %cmp26.i = icmp ult i32 %sub.i323, %best.075.i
  %84 = call i32 @llvm.umin.i32(i32 %sub.i323, i32 %best.075.i) #8
  %spec.select72.i = select i1 %cmp26.i, ptr %add.ptr.i, ptr %best_bo.078.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end25.i, %if.end16.i.cleanup.i_crit_edge, %if.then13.i, %for.body.i309.cleanup.i_crit_edge
  %best.2.i = phi i32 [ %84, %if.end25.i ], [ %best.075.i, %if.then13.i ], [ %best.075.i, %for.body.i309.cleanup.i_crit_edge ], [ %best.075.i, %if.end16.i.cleanup.i_crit_edge ]
  %best_bo.2.i = phi ptr [ %spec.select72.i, %if.end25.i ], [ %best_bo.078.i, %if.then13.i ], [ %best_bo.078.i, %for.body.i309.cleanup.i_crit_edge ], [ %best_bo.078.i, %if.end16.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup.i.for.body.i309_crit_edge

cleanup.i.for.body.i309_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i309

for.end.i:                                        ; preds = %cleanup.i
  %tobool29.not.i = icmp eq ptr %best_bo.2.i, null
  br i1 %tobool29.not.i, label %for.end.i.for.body114_crit_edge, label %if.then30.i

for.end.i.for.body114_crit_edge:                  ; preds = %for.end.i
  br label %for.body114

if.then30.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %fence31.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %best_bo.2.i, i32 0, i32 5
  %85 = ptrtoint ptr %fence31.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fence31.i, align 4
  %context.i = getelementptr inbounds %struct.dma_fence, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %context.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %context.i, align 8
  %conv.i = trunc i64 %88 to i32
  %rem.i324 = and i32 %conv.i, 31
  %arrayidx32.i = getelementptr i32, ptr %tries, i32 %rem.i324
  %89 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx32.i, align 4
  %inc33.i = add i32 %90, 1
  store i32 %inc33.i, ptr %arrayidx32.i, align 4
  %prev.i325 = getelementptr inbounds %struct.list_head, ptr %best_bo.2.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i325 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i325, align 4
  %93 = ptrtoint ptr %hole.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %hole.i, align 8
  call fastcc void @amdgpu_sa_bo_remove_locked(ptr noundef nonnull %best_bo.2.i) #8
  br label %do.body102.backedge

for.body114:                                      ; preds = %for.inc123.for.body114_crit_edge, %for.end.i.for.body114_crit_edge
  %count.0400 = phi i32 [ %count.1, %for.inc123.for.body114_crit_edge ], [ 0, %for.end.i.for.body114_crit_edge ]
  %i.1399 = phi i32 [ %inc124, %for.inc123.for.body114_crit_edge ], [ 0, %for.end.i.for.body114_crit_edge ]
  %arrayidx115 = getelementptr [32 x ptr], ptr %fences, i32 0, i32 %i.1399
  %94 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx115, align 4
  %tobool116.not = icmp eq ptr %95, null
  br i1 %tobool116.not, label %for.body114.for.inc123_crit_edge, label %if.then.i326

for.body114.for.inc123_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123

if.then.i326:                                     ; preds = %for.body114
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %95, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i326.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !51

if.then.i326.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i326
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %97 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %.not.i.i.i.i.i = icmp sgt i32 %97, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !48

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i326.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i326.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge
  %inc120 = add i32 %count.0400, 1
  %arrayidx121 = getelementptr [32 x ptr], ptr %fences, i32 0, i32 %count.0400
  %98 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %arrayidx121, align 4
  br label %for.inc123

for.inc123:                                       ; preds = %dma_fence_get.exit, %for.body114.for.inc123_crit_edge
  %count.1 = phi i32 [ %inc120, %dma_fence_get.exit ], [ %count.0400, %for.body114.for.inc123_crit_edge ]
  %inc124 = add nuw nsw i32 %i.1399, 1
  %exitcond.not = icmp eq i32 %inc124, 32
  br i1 %exitcond.not, label %for.end125, label %for.inc123.for.body114_crit_edge

for.inc123.for.body114_crit_edge:                 ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body114

for.end125:                                       ; preds = %for.inc123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool126.not = icmp eq i32 %count.1, 0
  br i1 %tobool126.not, label %for.end125.for.body.i339_crit_edge, label %if.then127

for.end125.for.body.i339_crit_edge:               ; preds = %for.end125
  br label %for.body.i339

if.then127:                                       ; preds = %for.end125
  call void @_raw_spin_unlock(ptr noundef %sa_manager) #8
  %call131 = call i32 @dma_fence_wait_any_timeout(ptr noundef nonnull %fences, i32 noundef %count.1, i1 noundef zeroext false, i32 noundef 2147483647, ptr noundef null) #8
  br label %for.body134

for.body134:                                      ; preds = %dma_fence_put.exit.for.body134_crit_edge, %if.then127
  %i.2402 = phi i32 [ 0, %if.then127 ], [ %inc137, %dma_fence_put.exit.for.body134_crit_edge ]
  %arrayidx135 = getelementptr [32 x ptr], ptr %fences, i32 0, i32 %i.2402
  %99 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx135, align 4
  %tobool.not.i328 = icmp eq ptr %100, null
  br i1 %tobool.not.i328, label %for.body134.dma_fence_put.exit_crit_edge, label %if.then.i331

for.body134.dma_fence_put.exit_crit_edge:         ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then.i331:                                     ; preds = %for.body134
  %refcount.i329 = getelementptr inbounds %struct.dma_fence, ptr %100, i32 0, i32 6
  %call.i.i.i.i.i.i.i330 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i329, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  call void @llvm.prefetch.p0(ptr %refcount.i329, i32 1, i32 3, i32 1) #8
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i329, ptr %refcount.i329, i32 1, ptr elementtype(i32) %refcount.i329) #8, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i333, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i332 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i332, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !48

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i329, i32 noundef 3) #8
  br label %dma_fence_put.exit

if.then.i.i333:                                   ; preds = %if.then.i331
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  call void @dma_fence_release(ptr noundef %refcount.i329) #8
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i333, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %for.body134.dma_fence_put.exit_crit_edge
  %inc137 = add nuw i32 %i.2402, 1
  %exitcond409.not = icmp eq i32 %inc137, %count.1
  br i1 %exitcond409.not, label %for.end138, label %dma_fence_put.exit.for.body134_crit_edge

dma_fence_put.exit.for.body134_crit_edge:         ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body134

for.end138:                                       ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock(ptr noundef %sa_manager) #8
  %102 = call i32 @llvm.smin.i32(i32 %call131, i32 0)
  br label %do.cond233

for.cond.i:                                       ; preds = %for.body.i339
  %inc.i335 = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i336 = icmp eq i32 %inc.i335, 32
  br i1 %exitcond.not.i336, label %for.end.i343, label %for.cond.i.for.body.i339_crit_edge

for.cond.i.for.body.i339_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i339

for.body.i339:                                    ; preds = %for.cond.i.for.body.i339_crit_edge, %for.end125.for.body.i339_crit_edge
  %i.022.i = phi i32 [ %inc.i335, %for.cond.i.for.body.i339_crit_edge ], [ 0, %for.end125.for.body.i339_crit_edge ]
  %arrayidx.i337 = getelementptr %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 %i.022.i
  %103 = ptrtoint ptr %arrayidx.i337 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %arrayidx.i337, align 4
  %cmp.i.not.i338 = icmp eq ptr %104, %arrayidx.i337
  br i1 %cmp.i.not.i338, label %for.cond.i, label %for.body.i339.do.cond233_crit_edge

for.body.i339.do.cond233_crit_edge:               ; preds = %for.body.i339
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond233

for.end.i343:                                     ; preds = %for.cond.i
  %105 = ptrtoint ptr %hole.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hole.i, align 8
  %cmp.not.i.i342 = icmp eq ptr %106, %olist.i
  br i1 %cmp.not.i.i342, label %for.end.i343.amdgpu_sa_event.exit_crit_edge, label %if.then.i.i345

for.end.i343.amdgpu_sa_event.exit_crit_edge:      ; preds = %for.end.i343
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_event.exit

if.then.i.i345:                                   ; preds = %for.end.i343
  call void @__sanitizer_cov_trace_pc() #10
  %eoffset.i.i344 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %eoffset.i.i344 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %eoffset.i.i344, align 4
  br label %amdgpu_sa_event.exit

amdgpu_sa_event.exit:                             ; preds = %if.then.i.i345, %for.end.i343.amdgpu_sa_event.exit_crit_edge
  %retval.0.i.i346 = phi i32 [ %108, %if.then.i.i345 ], [ 0, %for.end.i343.amdgpu_sa_event.exit_crit_edge ]
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %106, align 4
  %cmp.not.i20.i = icmp eq ptr %110, %olist.i
  %soffset.i.i347 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %110, i32 0, i32 3
  %retval.0.in.i.i349 = select i1 %cmp.not.i20.i, ptr %size40, ptr %soffset.i.i347
  %111 = ptrtoint ptr %retval.0.in.i.i349 to i32
  call void @__asan_load4_noabort(i32 %111)
  %retval.0.i21.i = load i32, ptr %retval.0.in.i.i349, align 4
  %rem.i350 = urem i32 %retval.0.i.i346, %align
  %sub.i351 = sub i32 %align, %rem.i350
  %rem3.i = urem i32 %sub.i351, %align
  %sub4.i = sub i32 %retval.0.i21.i, %retval.0.i.i346
  %add.i352 = add i32 %rem3.i, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i, i32 %add.i352)
  %cmp5.not.i.not = icmp ult i32 %sub4.i, %add.i352
  br i1 %cmp5.not.i.not, label %cond.false144, label %amdgpu_sa_event.exit.do.cond233_crit_edge

amdgpu_sa_event.exit.do.cond233_crit_edge:        ; preds = %amdgpu_sa_event.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond233

cond.false144:                                    ; preds = %amdgpu_sa_event.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #8
  %112 = call ptr @memset(ptr %17, i32 255, i32 16)
  %113 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %__wait, align 4
  %114 = call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task, align 8
  %118 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %13, align 4
  %119 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @autoremove_wake_function, ptr %14, align 4
  %120 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %15, ptr %15, align 4
  %121 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %15, ptr %16, align 4
  br label %do.body149

do.body149:                                       ; preds = %amdgpu_sa_event.exit384.do.body149_crit_edge, %cond.false144
  %call151 = call i32 @do_wait_intr(ptr noundef %sa_manager, ptr noundef nonnull %__wait) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %do.body149.for.body.i362_crit_edge, label %do.body149.do.end159_crit_edge

do.body149.do.end159_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end159

do.body149.for.body.i362_crit_edge:               ; preds = %do.body149
  br label %for.body.i362

for.cond.i358:                                    ; preds = %for.body.i362
  %inc.i356 = add nuw nsw i32 %i.022.i359, 1
  %exitcond.not.i357 = icmp eq i32 %inc.i356, 32
  br i1 %exitcond.not.i357, label %for.end.i366, label %for.cond.i358.for.body.i362_crit_edge

for.cond.i358.for.body.i362_crit_edge:            ; preds = %for.cond.i358
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i362

for.body.i362:                                    ; preds = %for.cond.i358.for.body.i362_crit_edge, %do.body149.for.body.i362_crit_edge
  %i.022.i359 = phi i32 [ %inc.i356, %for.cond.i358.for.body.i362_crit_edge ], [ 0, %do.body149.for.body.i362_crit_edge ]
  %arrayidx.i360 = getelementptr %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 3, i32 %i.022.i359
  %122 = ptrtoint ptr %arrayidx.i360 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %arrayidx.i360, align 4
  %cmp.i.not.i361 = icmp eq ptr %123, %arrayidx.i360
  br i1 %cmp.i.not.i361, label %for.cond.i358, label %for.body.i362.do.end159_crit_edge

for.body.i362.do.end159_crit_edge:                ; preds = %for.body.i362
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end159

for.end.i366:                                     ; preds = %for.cond.i358
  %124 = ptrtoint ptr %hole.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hole.i, align 8
  %cmp.not.i.i365 = icmp eq ptr %125, %olist.i
  br i1 %cmp.not.i.i365, label %for.end.i366.amdgpu_sa_event.exit384_crit_edge, label %if.then.i.i368

for.end.i366.amdgpu_sa_event.exit384_crit_edge:   ; preds = %for.end.i366
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_sa_event.exit384

if.then.i.i368:                                   ; preds = %for.end.i366
  call void @__sanitizer_cov_trace_pc() #10
  %eoffset.i.i367 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %eoffset.i.i367 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %eoffset.i.i367, align 4
  br label %amdgpu_sa_event.exit384

amdgpu_sa_event.exit384:                          ; preds = %if.then.i.i368, %for.end.i366.amdgpu_sa_event.exit384_crit_edge
  %retval.0.i.i369 = phi i32 [ %127, %if.then.i.i368 ], [ 0, %for.end.i366.amdgpu_sa_event.exit384_crit_edge ]
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %125, align 4
  %cmp.not.i20.i370 = icmp eq ptr %129, %olist.i
  %soffset.i.i371 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %129, i32 0, i32 3
  %retval.0.in.i.i373 = select i1 %cmp.not.i20.i370, ptr %size40, ptr %soffset.i.i371
  %130 = ptrtoint ptr %retval.0.in.i.i373 to i32
  call void @__asan_load4_noabort(i32 %130)
  %retval.0.i21.i374 = load i32, ptr %retval.0.in.i.i373, align 4
  %rem.i375 = urem i32 %retval.0.i.i369, %align
  %sub.i376 = sub i32 %align, %rem.i375
  %rem3.i377 = urem i32 %sub.i376, %align
  %sub4.i378 = sub i32 %retval.0.i21.i374, %retval.0.i.i369
  %add.i379 = add i32 %rem3.i377, %size
  %cmp5.not.i380.not = icmp ult i32 %sub4.i378, %add.i379
  br i1 %cmp5.not.i380.not, label %amdgpu_sa_event.exit384.do.body149_crit_edge, label %amdgpu_sa_event.exit384.do.end159_crit_edge

amdgpu_sa_event.exit384.do.end159_crit_edge:      ; preds = %amdgpu_sa_event.exit384
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end159

amdgpu_sa_event.exit384.do.body149_crit_edge:     ; preds = %amdgpu_sa_event.exit384
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body149

do.end159:                                        ; preds = %amdgpu_sa_event.exit384.do.end159_crit_edge, %for.body.i362.do.end159_crit_edge, %do.body149.do.end159_crit_edge
  %call151408 = phi i32 [ 0, %for.body.i362.do.end159_crit_edge ], [ %call151, %do.body149.do.end159_crit_edge ], [ 0, %amdgpu_sa_event.exit384.do.end159_crit_edge ]
  %call.i.i.i385 = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #8
  br i1 %call.i.i.i385, label %if.end.i.i.i386, label %do.end159.__remove_wait_queue.exit_crit_edge

do.end159.__remove_wait_queue.exit_crit_edge:     ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %__remove_wait_queue.exit

if.end.i.i.i386:                                  ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %16, align 4
  %133 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %132, ptr %prev1.i.i.i.i, align 4
  %136 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %134, ptr %132, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i386, %do.end159.__remove_wait_queue.exit_crit_edge
  %137 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %138 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  br label %__here

__here:                                           ; preds = %__remove_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 212
  %141 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 ptrtoint (ptr blockaddress(@amdgpu_sa_bo_new, %__here) to i32), ptr %task_state_change, align 4
  %142 = load ptr, ptr %task, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile i32 0, ptr %142, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #8
  br label %do.cond233

do.cond233:                                       ; preds = %__here, %amdgpu_sa_event.exit.do.cond233_crit_edge, %for.body.i339.do.cond233_crit_edge, %for.end138
  %r.0 = phi i32 [ %call151408, %__here ], [ 0, %amdgpu_sa_event.exit.do.cond233_crit_edge ], [ %102, %for.end138 ], [ 0, %for.body.i339.do.cond233_crit_edge ]
  %tobool234.not = icmp eq i32 %r.0, 0
  br i1 %tobool234.not, label %do.cond233.do.body100_crit_edge, label %do.end237

do.cond233.do.body100_crit_edge:                  ; preds = %do.cond233
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body100

do.end237:                                        ; preds = %do.cond233
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %sa_manager) #8
  %144 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sa_bo, align 4
  call void @kfree(ptr noundef %145) #8
  %146 = ptrtoint ptr %sa_bo to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %sa_bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end237, %if.then104, %if.end96.cleanup_crit_edge, %if.then59, %land.rhs48.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then104 ], [ %r.0, %do.end237 ], [ -22, %if.then ], [ -22, %if.then59 ], [ -12, %if.end96.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %land.rhs48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tries) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %fences) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_any_timeout(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_sa_bo_free(ptr nocapture noundef readnone %adev, ptr noundef %sa_bo, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sa_bo, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sa_bo, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %manager = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %manager to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %manager, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 5
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end.i:                                         ; preds = %land.lhs.true
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.if.then.i_crit_edge, label %land.lhs.true.i

if.end.i.if.then.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %9(ptr noundef nonnull %fence) #8
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef nonnull %fence) #8
  br label %if.else

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %if.end.i.if.then.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !51

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !48

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge
  %12 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sa_bo, align 4
  %fence4 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %fence4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fence, ptr %fence4, align 4
  %context = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 3
  %15 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %context, align 8
  %17 = trunc i64 %16 to i32
  %conv = and i32 %17, 31
  %18 = load ptr, ptr %sa_bo, align 4
  %flist = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %18, i32 0, i32 1
  %arrayidx = getelementptr %struct.amdgpu_sa_manager, ptr %3, i32 0, i32 3, i32 %conv
  %prev.i = getelementptr %struct.amdgpu_sa_manager, ptr %3, i32 0, i32 3, i32 %conv, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %flist, ptr noundef %20, ptr noundef %arrayidx) #8
  br i1 %call.i.i, label %if.end.i.i, label %dma_fence_get.exit.if.end6_crit_edge

dma_fence_get.exit.if.end6_crit_edge:             ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i.i:                                       ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %flist, ptr %prev.i, align 4
  %22 = ptrtoint ptr %flist to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx, ptr %flist, align 4
  %prev3.i.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %18, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %flist, ptr %20, align 4
  br label %if.end6

if.else:                                          ; preds = %if.then5.i, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %25 = ptrtoint ptr %sa_bo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sa_bo, align 4
  tail call fastcc void @amdgpu_sa_bo_remove_locked(ptr noundef %26)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.i.i, %dma_fence_get.exit.if.end6_crit_edge
  tail call void @__wake_up_locked(ptr noundef %3, i32 noundef 3, i32 noundef 0) #8
  tail call void @_raw_spin_unlock(ptr noundef %3) #8
  %27 = ptrtoint ptr %sa_bo to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %sa_bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_sa_bo_dump_debug_info(ptr noundef %sa_manager, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %sa_manager) #8
  %olist = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 4
  %0 = ptrtoint ptr %olist to i32
  call void @__asan_load4_noabort(i32 %0)
  %i.041 = load ptr, ptr %olist, align 4
  %cmp.not42 = icmp eq ptr %i.041, %olist
  br i1 %cmp.not42, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %gpu_addr = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 6
  %hole = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %sa_manager, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi ptr [ %i.041, %for.body.lr.ph ], [ %i.0, %if.end14.for.body_crit_edge ]
  %soffset3 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %i.043, i32 0, i32 3
  %1 = ptrtoint ptr %soffset3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %soffset3, align 4
  %conv = zext i32 %2 to i64
  %3 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %gpu_addr, align 8
  %add = add i64 %4, %conv
  %eoffset4 = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %i.043, i32 0, i32 4
  %5 = ptrtoint ptr %eoffset4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eoffset4, align 4
  %conv5 = zext i32 %6 to i64
  %add7 = add i64 %4, %conv5
  %7 = ptrtoint ptr %hole to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hole, align 8
  %cmp9 = icmp eq ptr %i.043, %8
  %.str.13..str.14 = select i1 %cmp9, ptr @.str.13, ptr @.str.14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.13..str.14) #8
  %sub = sub i64 %add7, %add
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i64 noundef %add, i64 noundef %add7, i64 noundef %sub) #8
  %fence = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %i.043, i32 0, i32 5
  %9 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fence, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.if.end14_crit_edge, label %if.then11

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %seqno, align 8
  %context = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %context, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, i64 noundef %12, i64 noundef %14) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.body.if.end14_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17) #8
  %15 = ptrtoint ptr %i.043 to i32
  call void @__asan_load4_noabort(i32 %15)
  %i.0 = load ptr, ptr %i.043, align 4
  %cmp.not = icmp eq ptr %i.0, %olist
  br i1 %cmp.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sa_manager) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @amdgpu_sa_bo_manager_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 56, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 69, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @amdgpu_sa_bo_manager_init._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @amdgpu_sa_bo_manager_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 83, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @amdgpu_sa_bo_manager_fini._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @amdgpu_sa_bo_manager_fini._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 91, i32 4}
!18 = !{ptr @amdgpu_sa_bo_manager_fini._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @amdgpu_sa_bo_manager_fini._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 285, i32 6}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 288, i32 6}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 332, i32 8}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 383, i32 18}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 385, i32 18}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 387, i32 17}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 391, i32 18}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c", i32 394, i32 17}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148450434}
!47 = !{i64 2148364898, i64 2148364930, i64 2148364959, i64 2148364993, i64 2148365024, i64 2148365047}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2149534059}
!50 = !{i64 2148362433, i64 2148362465, i64 2148362494, i64 2148362528, i64 2148362559, i64 2148362582}
!51 = !{!"branch_weights", i32 1, i32 2000}
