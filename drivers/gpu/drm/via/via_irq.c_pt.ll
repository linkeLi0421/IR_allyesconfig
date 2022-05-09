; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/via/via_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/via/via_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.atomic_t = type { i32 }
%struct.anon.72 = type { i32, ptr }
%struct.drm_via_private = type { ptr, ptr, ptr, ptr, i32, [5 x %struct.wait_queue_head], ptr, i32, i32, i32, i32, ptr, ptr, %struct.drm_via_ring_buffer, i64, i32, i64, %struct.atomic_t, %struct.drm_via_state_t, [60000 x i8], [1024 x ptr], i32, i32, [4 x %struct.drm_via_irq], i32, ptr, i32, i32, ptr, i32, i32, %struct.drm_mm, i32, %struct.drm_mm, %struct.idr, i32, i32, [2 x %struct._drm_via_blitq], i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_via_ring_buffer = type { %struct.drm_local_map, ptr }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_via_state_t = type { i32, i32, i32, [2 x [10 x i32]], [2 x [10 x i32]], [2 x [10 x i32]], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_via_irq = type { %struct.atomic_t, i32, i32, %struct.wait_queue_head }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct._drm_via_blitq = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x ptr], %struct.spinlock, [8 x %struct.wait_queue_head], %struct.wait_queue_head, %struct.work_struct, %struct.timer_list }
%struct.timespec64 = type { i64, i32 }
%struct.drm_via_wait_irq_request = type { i32, i32, i32, i32 }
%struct.drm_wait_vblank_reply = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nsec per vblank is: %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s:  bad crtc %u\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.via_enable_vblank = private unnamed_addr constant [18 x i8] c"via_enable_vblank\00", align 1
@__func__.via_disable_vblank = private unnamed_addr constant [19 x i8] c"via_disable_vblank\00", align 1
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dev_priv: %p\0A\00", [18 x i8] zeroinitializer }, align 32
@via_pro_group_a_irqs = internal global { [4 x [5 x i32]], [48 x i8] } { [4 x [5 x i32]] [[5 x i32] [i32 2048, i32 512, i32 976, i32 32784, i32 0], [5 x i32] [i32 33554432, i32 1024, i32 5072, i32 32784, i32 0], [5 x i32] [i32 2097152, i32 32, i32 3728, i32 12, i32 8], [5 x i32] [i32 8388608, i32 128, i32 3732, i32 12, i32 8]], [48 x i8] zeroinitializer }, align 32
@via_irqmap_pro_group_a = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 -1, i32 2, i32 -1, i32 3], [40 x i8] zeroinitializer }, align 32
@via_unichrome_irqs = internal global { [2 x [5 x i32]], [56 x i8] } { [2 x [5 x i32]] [[5 x i32] [i32 2097152, i32 32, i32 3728, i32 12, i32 8], [5 x i32] [i32 8388608, i32 128, i32 3732, i32 12, i32 8]], [56 x i8] zeroinitializer }, align 32
@via_irqmap_unichrome = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 1], [40 x i8] zeroinitializer }, align 32
@via_driver_irq_preinstall.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cur_irq->irq_queue\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Initializing IRQ %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fun: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.via_driver_irq_postinstall = private unnamed_addr constant [27 x i8] c"via_driver_irq_postinstall\00", align 1
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Trying to wait on unknown irq %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Signals on Via IRQs not implemented yet.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"called with no initialization\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Video IRQ %d not available on this hardware.\0A\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 127, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 175, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 264, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"via_pro_group_a_irqs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 70, i32 20 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"via_irqmap_pro_group_a\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 81, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"via_unichrome_irqs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 83, i32 20 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"via_irqmap_unichrome\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 90, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 286, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 291, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 311, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 331, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 355, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 375, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 217, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [33 x i8] c"../drivers/gpu/drm/via/via_irq.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 229, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @via_pro_group_a_irqs, ptr @via_irqmap_pro_group_a, ptr @via_unichrome_irqs, ptr @via_irqmap_unichrome, ptr @via_driver_irq_preinstall.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_pro_group_a_irqs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_irqmap_pro_group_a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_unichrome_irqs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_irqmap_unichrome to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_driver_irq_preinstall.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_get_vblank_counter(ptr nocapture noundef readonly %dev, i32 noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pipe)
  %cmp.not = icmp eq i32 %pipe, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %vbl_received = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vbl_received, i32 noundef 4) #6
  %2 = ptrtoint ptr %vbl_received to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %vbl_received, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_driver_irq_handler(i32 noundef %irq, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %via_irqs = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 23
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 512
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then:                                          ; preds = %entry
  %vbl_received = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vbl_received, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %vbl_received, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vbl_received, ptr %vbl_received, i32 1, ptr elementtype(i32) %vbl_received) #6, !srcloc !58
  %call.i.i69 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vbl_received, i32 noundef 4) #6
  %9 = ptrtoint ptr %vbl_received to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %vbl_received, align 4
  %and3 = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %if.then
  %call6 = tail call i64 @ktime_get() #6
  %last_vblank_valid = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %last_vblank_valid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_vblank_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %if.then5.if.end_crit_edge, label %if.then8

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %last_vblank = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %last_vblank to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %last_vblank, align 8
  %sub = sub i64 %call6, %14
  %shr = ashr i64 %sub, 4
  %nsec_per_vblank = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %nsec_per_vblank to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %shr, ptr %nsec_per_vblank, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then5.if.end_crit_edge
  %last_vblank9 = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %last_vblank9 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call6, ptr %last_vblank9, align 8
  %17 = ptrtoint ptr %last_vblank_valid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %last_vblank_valid, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then.if.end11_crit_edge
  %call.i.i70 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vbl_received, i32 noundef 4) #6
  %18 = ptrtoint ptr %vbl_received to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %vbl_received, align 4
  %and14 = and i32 %19, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %nsec_per_vblank17 = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %nsec_per_vblank17 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %nsec_per_vblank17, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i64 noundef %21) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end11.if.end19_crit_edge
  %call20 = tail call zeroext i1 @drm_handle_vblank(ptr noundef %arg, i32 noundef 0) #6
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %entry.if.end21_crit_edge
  %handled.0 = phi i32 [ 1, %if.end19 ], [ 0, %entry.if.end21_crit_edge ]
  %num_irqs = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 24
  %22 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_irqs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp75.not = icmp eq i32 %23, 0
  br i1 %cmp75.not, label %if.end21.for.end_crit_edge, label %for.body.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %irq_map = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end33.for.body_crit_edge ]
  %cur_irq.077 = phi ptr [ %via_irqs, %for.body.lr.ph ], [ %incdec.ptr, %if.end33.for.body_crit_edge ]
  %handled.176 = phi i32 [ %handled.0, %for.body.lr.ph ], [ %handled.2, %if.end33.for.body_crit_edge ]
  %pending_mask = getelementptr inbounds %struct.drm_via_irq, ptr %cur_irq.077, i32 0, i32 1
  %24 = ptrtoint ptr %pending_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pending_mask, align 4
  %and22 = and i32 %25, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %for.body.if.end33_crit_edge, label %if.then24

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then24:                                        ; preds = %for.body
  %call.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_irq.077, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %cur_irq.077, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cur_irq.077, ptr %cur_irq.077, i32 1, ptr elementtype(i32) %cur_irq.077) #6, !srcloc !58
  %irq_queue = getelementptr inbounds %struct.drm_via_irq, ptr %cur_irq.077, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %27 = ptrtoint ptr %irq_map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_map, align 8
  %arrayidx = getelementptr i32, ptr %28, i32 3
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %i.079)
  %cmp25 = icmp eq i32 %30, %i.079
  br i1 %cmp25, label %if.then24.if.end33.sink.split_crit_edge, label %if.else

if.then24.if.end33.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.sink.split

if.else:                                          ; preds = %if.then24
  %arrayidx28 = getelementptr i32, ptr %28, i32 5
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %i.079)
  %cmp29 = icmp eq i32 %32, %i.079
  br i1 %cmp29, label %if.else.if.end33.sink.split_crit_edge, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else.if.end33.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.else.if.end33.sink.split_crit_edge, %if.then24.if.end33.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then24.if.end33.sink.split_crit_edge ], [ 1, %if.else.if.end33.sink.split_crit_edge ]
  tail call void @via_dmablit_handler(ptr noundef %arg, i32 noundef %.sink, i32 noundef 1) #6
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.else.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %handled.2 = phi i32 [ 1, %if.else.if.end33_crit_edge ], [ %handled.176, %for.body.if.end33_crit_edge ], [ 1, %if.end33.sink.split ]
  %incdec.ptr = getelementptr %struct.drm_via_irq, ptr %cur_irq.077, i32 1
  %inc = add nuw i32 %i.079, 1
  %33 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_irqs, align 8
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %if.end33.for.body_crit_edge, label %if.end33.for.end_crit_edge

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %if.end21.for.end_crit_edge
  %handled.1.lcssa = phi i32 [ %handled.0, %if.end21.for.end_crit_edge ], [ %handled.2, %if.end33.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 4
  %handle.i73 = getelementptr inbounds %struct.drm_local_map, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %handle.i73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %handle.i73, align 4
  %add.ptr.i74 = getelementptr i8, ptr %38, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %6) #6, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1.lcssa)
  %tobool34.not = icmp ne i32 %handled.1.lcssa, 0
  %. = zext i1 %tobool34.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_dmablit_handler(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_enable_vblank(ptr nocapture noundef readonly %dev, i32 noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pipe)
  %cmp.not = icmp eq i32 %pipe, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.via_enable_vblank, i32 noundef %pipe) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 512
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %7 = or i32 %6, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %handle.i7 = getelementptr inbounds %struct.drm_local_map, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handle.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %11, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %7) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %handle.i10 = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %handle.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %15, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11, i8 17) #6, !srcloc !62
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %handle.i13 = getelementptr inbounds %struct.drm_local_map, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %handle.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %19, i32 33749
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %conv4.i = or i8 %20, 48
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %handle6.i = getelementptr inbounds %struct.drm_local_map, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %handle6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %24, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 %conv4.i) #6, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_disable_vblank(ptr nocapture noundef readonly %dev, i32 noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 512
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %7 = and i32 %6, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %handle.i6 = getelementptr inbounds %struct.drm_local_map, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handle.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %11, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %7) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %handle.i9 = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %handle.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %15, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10, i8 17) #6, !srcloc !62
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %handle.i12 = getelementptr inbounds %struct.drm_local_map, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %handle.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %19, i32 33749
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i13) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %21 = and i8 %20, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %handle6.i = getelementptr inbounds %struct.drm_local_map, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %handle6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %25, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 %21) #6, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pipe)
  %cmp.not = icmp eq i32 %pipe, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.via_disable_vblank, i32 noundef %pipe) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_driver_irq_preinstall(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef %1) #6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then:                                          ; preds = %entry
  %via_irqs = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 23
  %irq_enable_mask = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 524288, ptr %irq_enable_mask, align 8
  %irq_pending_mask = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %irq_pending_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %irq_pending_mask, align 4
  %chipset = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipset, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %via_unichrome_irqs.sink = select i1 %switch, ptr @via_pro_group_a_irqs, ptr @via_unichrome_irqs
  %.sink = select i1 %switch, i32 4, i32 2
  %via_irqmap_unichrome.sink = select i1 %switch, ptr @via_irqmap_pro_group_a, ptr @via_irqmap_unichrome
  %6 = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %via_unichrome_irqs.sink, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 28
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %via_irqmap_unichrome.sink, ptr %10, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.059 = phi i32 [ 0, %if.then ], [ %inc, %for.body.for.body_crit_edge ]
  %cur_irq.058 = phi ptr [ %via_irqs, %if.then ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_irq.058, i32 noundef 4) #6
  %12 = ptrtoint ptr %cur_irq.058 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %cur_irq.058, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %arrayidx = getelementptr [5 x i32], ptr %14, i32 %i.059
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %enable_mask = getelementptr inbounds %struct.drm_via_irq, ptr %cur_irq.058, i32 0, i32 2
  %17 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %enable_mask, align 4
  %18 = load ptr, ptr %6, align 4
  %arrayidx13 = getelementptr [5 x i32], ptr %18, i32 %i.059, i32 1
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx13, align 4
  %pending_mask = getelementptr inbounds %struct.drm_via_irq, ptr %cur_irq.058, i32 0, i32 1
  %21 = ptrtoint ptr %pending_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pending_mask, align 4
  %irq_queue = getelementptr inbounds %struct.drm_via_irq, ptr %cur_irq.058, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %irq_queue, ptr noundef nonnull @.str.3, ptr noundef nonnull @via_driver_irq_preinstall.__key) #6
  %22 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enable_mask, align 4
  %24 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_enable_mask, align 8
  %or = or i32 %25, %23
  store i32 %or, ptr %irq_enable_mask, align 8
  %26 = ptrtoint ptr %pending_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pending_mask, align 4
  %28 = ptrtoint ptr %irq_pending_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq_pending_mask, align 4
  %or18 = or i32 %29, %27
  store i32 %or18, ptr %irq_pending_mask, align 4
  %incdec.ptr = getelementptr %struct.drm_via_irq, ptr %cur_irq.058, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %i.059) #6
  %inc = add nuw i32 %i.059, 1
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %8, align 8
  %cmp8 = icmp ult i32 %inc, %31
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %viadrv_acknowledge_irqs.exit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

viadrv_acknowledge_irqs.exit:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %last_vblank_valid = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %last_vblank_valid to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %last_vblank_valid, align 8
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 512
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %39 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_enable_mask, align 8
  %neg = xor i32 %40, -1
  %and = and i32 %38, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %42 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i, align 4
  %handle.i55 = getelementptr inbounds %struct.drm_local_map, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %handle.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handle.i55, align 4
  %add.ptr.i56 = getelementptr i8, ptr %45, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %41) #6, !srcloc !60
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 4
  %handle.i.i = getelementptr inbounds %struct.drm_local_map, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %handle.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 512
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !56
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %52 = ptrtoint ptr %irq_pending_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq_pending_mask, align 4
  %or.i = or i32 %53, %51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %55 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i, align 4
  %handle.i5.i = getelementptr inbounds %struct.drm_local_map, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %handle.i5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %handle.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %58, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %54) #6, !srcloc !60
  br label %if.end20

if.end20:                                         ; preds = %viadrv_acknowledge_irqs.exit, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_driver_irq_postinstall(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.via_driver_irq_postinstall) #6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 512
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %irq_enable_mask = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_enable_mask, align 8
  %9 = or i32 %6, 128
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %or1 = or i32 %10, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or1) #6
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %handle.i9 = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %handle.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %15, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %11) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %handle.i12 = getelementptr inbounds %struct.drm_local_map, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %handle.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %19, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 17) #6, !srcloc !62
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %handle.i15 = getelementptr inbounds %struct.drm_local_map, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %handle.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %23, i32 33749
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i16) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %conv4.i = or i8 %24, 48
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  %handle6.i = getelementptr inbounds %struct.drm_local_map, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %handle6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handle6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %28, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 %conv4.i) #6, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_driver_irq_uninstall(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 17) #6, !srcloc !62
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %handle.i7 = getelementptr inbounds %struct.drm_local_map, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %handle.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %9, i32 33749
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i8) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %11 = and i8 %10, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %handle6.i = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %handle6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %15, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 %11) #6, !srcloc !62
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %handle.i10 = getelementptr inbounds %struct.drm_local_map, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %handle.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %19, i32 512
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #6, !srcloc !56
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %irq_enable_mask = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 26
  %22 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_enable_mask, align 8
  %24 = and i32 %23, -524289
  %neg = xor i32 %24, -524289
  %and = and i32 %neg, %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %handle.i13 = getelementptr inbounds %struct.drm_local_map, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %handle.i13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %29, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %25) #6, !srcloc !60
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_wait_irq(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %now = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #6
  %0 = call ptr @memset(ptr %now, i32 255, i32 16)
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_private, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %num_irqs = getelementptr inbounds %struct.drm_via_private, ptr %2, i32 0, i32 24
  %5 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_irqs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp ult i32 %4, %6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %4) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.drm_via_wait_irq_request, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %and = and i32 %8, 268435455
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %via_irqs = getelementptr inbounds %struct.drm_via_private, ptr %2, i32 0, i32 23
  %add.ptr = getelementptr %struct.drm_via_irq, ptr %via_irqs, i32 %4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #6
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %add.ptr, align 4
  %sequence = getelementptr inbounds %struct.drm_via_wait_irq_request, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sequence, align 4
  %add = add i32 %13, %11
  store i32 %add, ptr %sequence, align 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %and4 = and i32 %15, -2
  store i32 %and4, ptr %type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  %and6 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end8:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %and10 = and i32 %17, 536870912
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  %sequence12 = getelementptr inbounds %struct.drm_via_wait_irq_request, ptr %data, i32 0, i32 2
  %call13 = tail call fastcc i32 @via_driver_irq_wait(ptr noundef %dev, i32 noundef %19, i32 noundef %and10, ptr noundef %sequence12)
  call void @ktime_get_ts64(ptr noundef nonnull %now) #6
  %20 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %now, align 8
  %conv = trunc i64 %21 to i32
  %22 = ptrtoint ptr %sequence12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %sequence12, align 4
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %23 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %24, 1000
  %tval_usec = getelementptr inbounds %struct.drm_wait_vblank_reply, ptr %data, i32 0, i32 3
  %25 = ptrtoint ptr %tval_usec to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div, ptr %tval_usec, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then7 ], [ %call13, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @via_driver_irq_wait(ptr nocapture noundef readonly %dev, i32 noundef %irq, i32 noundef %force_sequence, ptr nocapture noundef %sequence) #0 align 64 {
entry:
  %entry11 = alloca %struct.wait_queue_entry, align 4
  %entry165 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %irq)
  %cmp = icmp ugt i32 %irq, 5
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %irq) #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %irq_map = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %irq_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_map, align 8
  %arrayidx = getelementptr i32, ptr %3, i32 %irq
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %irq) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %irq_masks = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %irq_masks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_masks, align 4
  %via_irqs = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 23
  %add.ptr = getelementptr %struct.drm_via_irq, ptr %via_irqs, i32 %5
  %arrayidx7 = getelementptr [5 x i32], ptr %7, i32 %5, i32 2
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force_sequence)
  %tobool9.not = icmp eq i32 %force_sequence, 0
  %or.cond = and i1 %tobool9.not, %tobool8.not
  br i1 %or.cond, label %do.body, label %do.body164

do.body:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %entry11) #6
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry11, i32 0, i32 1
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry11, i32 0, i32 2
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry11, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %entry11, align 4
  %15 = tail call i32 @llvm.read_register.i32(metadata !46) #6
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %10, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @default_wake_function, ptr %11, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %12, align 4
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %irq_queue = getelementptr %struct.drm_via_irq, ptr %via_irqs, i32 %5, i32 3
  call void @add_wait_queue(ptr noundef %irq_queue, ptr noundef nonnull %entry11) #6
  %arrayidx70 = getelementptr [5 x i32], ptr %7, i32 %irq, i32 2
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %arrayidx73 = getelementptr [5 x i32], ptr %7, i32 %irq, i32 3
  %arrayidx75 = getelementptr [5 x i32], ptr %7, i32 %irq, i32 4
  %add.neg = sub i32 -300, %23
  br label %__here

__here:                                           ; preds = %signal_pending.exit.__here_crit_edge, %do.body
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 212
  %26 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 ptrtoint (ptr blockaddress(@via_driver_irq_wait, %__here) to i32), ptr %task_state_change, align 4
  %27 = load ptr, ptr %task, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %27, align 128
  %29 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx70, align 4
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %30
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  %36 = call i32 @llvm.bswap.i32(i32 %35) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %37 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx73, align 4
  %and = and i32 %38, %36
  %39 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %40)
  %cmp76 = icmp eq i32 %and, %40
  br i1 %cmp76, label %__here.__here139_crit_edge, label %if.end78

__here.__here139_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here139

if.end78:                                         ; preds = %__here
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp79 = icmp sgt i32 %sub, -1
  br i1 %cmp79, label %if.end78.__here139_crit_edge, label %if.end81

if.end78.__here139_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here139

if.end81:                                         ; preds = %if.end78
  %call82 = call i32 @schedule_timeout(i32 noundef 1) #6
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stack.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %48 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end81.__here139_crit_edge, !prof !66

if.end81.__here139_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here139

signal_pending.exit:                              ; preds = %if.end81
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %45, align 4
  %and1.i.i.i.i.i = and i32 %50, 1
  %tobool86.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool86.not, label %signal_pending.exit.__here_crit_edge, label %signal_pending.exit.__here139_crit_edge

signal_pending.exit.__here139_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here139

signal_pending.exit.__here_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here139:                                        ; preds = %signal_pending.exit.__here139_crit_edge, %if.end81.__here139_crit_edge, %if.end78.__here139_crit_edge, %__here.__here139_crit_edge
  %ret.0 = phi i32 [ 0, %__here.__here139_crit_edge ], [ -16, %if.end78.__here139_crit_edge ], [ -4, %signal_pending.exit.__here139_crit_edge ], [ -4, %if.end81.__here139_crit_edge ]
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %task_state_change143 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 212
  %53 = ptrtoint ptr %task_state_change143 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 ptrtoint (ptr blockaddress(@via_driver_irq_wait, %__here139) to i32), ptr %task_state_change143, align 4
  %54 = load ptr, ptr %task, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %54, align 128
  call void @remove_wait_queue(ptr noundef %irq_queue, ptr noundef nonnull %entry11) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %entry11) #6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #6
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %add.ptr, align 4
  br label %if.end341

do.body164:                                       ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %entry165) #6
  %58 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry165, i32 0, i32 1
  %59 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry165, i32 0, i32 2
  %60 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry165, i32 0, i32 3
  %61 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry165, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %entry165 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %entry165, align 4
  %63 = tail call i32 @llvm.read_register.i32(metadata !46) #6
  %and.i378 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i378 to ptr
  %task169 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task169 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task169, align 8
  %67 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %58, align 4
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @default_wake_function, ptr %59, align 4
  %69 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %60, align 4
  %70 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %61, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %irq_queue176 = getelementptr %struct.drm_via_irq, ptr %via_irqs, i32 %5, i32 3
  call void @add_wait_queue(ptr noundef %irq_queue176, ptr noundef nonnull %entry165) #6
  %add175.neg = sub i32 -300, %71
  br label %__here228

__here228:                                        ; preds = %signal_pending.exit384.__here228_crit_edge, %do.body164
  %72 = ptrtoint ptr %task169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task169, align 8
  %task_state_change232 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 212
  %74 = ptrtoint ptr %task_state_change232 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 ptrtoint (ptr blockaddress(@via_driver_irq_wait, %__here228) to i32), ptr %task_state_change232, align 4
  %75 = load ptr, ptr %task169, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 1, ptr %75, align 128
  %call.i.i377 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #6
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %add.ptr, align 4
  %79 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sequence, align 4
  %sub251 = sub i32 %78, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %sub251)
  %cmp252 = icmp ult i32 %sub251, 8388609
  br i1 %cmp252, label %__here228.__here317_crit_edge, label %if.end254

__here228.__here317_crit_edge:                    ; preds = %__here228
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here317

if.end254:                                        ; preds = %__here228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %sub255 = add i32 %add175.neg, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub255)
  %cmp256 = icmp sgt i32 %sub255, -1
  br i1 %cmp256, label %if.end254.__here317_crit_edge, label %if.end258

if.end254.__here317_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here317

if.end258:                                        ; preds = %if.end254
  %call259 = call i32 @schedule_timeout(i32 noundef 1) #6
  %82 = ptrtoint ptr %task169 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task169, align 8
  %stack.i.i379 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %stack.i.i379 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %stack.i.i379, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %85, align 4
  %88 = and i32 %87, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i380 = icmp eq i32 %88, 0
  br i1 %tobool.not.i380, label %signal_pending.exit384, label %if.end258.__here317_crit_edge, !prof !66

if.end258.__here317_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here317

signal_pending.exit384:                           ; preds = %if.end258
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %85, align 4
  %and1.i.i.i.i.i381 = and i32 %90, 1
  %tobool263.not = icmp eq i32 %and1.i.i.i.i.i381, 0
  br i1 %tobool263.not, label %signal_pending.exit384.__here228_crit_edge, label %signal_pending.exit384.__here317_crit_edge

signal_pending.exit384.__here317_crit_edge:       ; preds = %signal_pending.exit384
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here317

signal_pending.exit384.__here228_crit_edge:       ; preds = %signal_pending.exit384
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here228

__here317:                                        ; preds = %signal_pending.exit384.__here317_crit_edge, %if.end258.__here317_crit_edge, %if.end254.__here317_crit_edge, %__here228.__here317_crit_edge
  %ret.1 = phi i32 [ 0, %__here228.__here317_crit_edge ], [ -16, %if.end254.__here317_crit_edge ], [ -4, %signal_pending.exit384.__here317_crit_edge ], [ -4, %if.end258.__here317_crit_edge ]
  %91 = ptrtoint ptr %task169 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task169, align 8
  %task_state_change321 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 212
  %93 = ptrtoint ptr %task_state_change321 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 ptrtoint (ptr blockaddress(@via_driver_irq_wait, %__here317) to i32), ptr %task_state_change321, align 4
  %94 = load ptr, ptr %task169, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 0, ptr %94, align 128
  call void @remove_wait_queue(ptr noundef %irq_queue176, ptr noundef nonnull %entry165) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %entry165) #6
  br label %if.end341

if.end341:                                        ; preds = %__here317, %__here139
  %ret.2 = phi i32 [ %ret.1, %__here317 ], [ %ret.0, %__here139 ]
  %cur_irq_sequence.0 = phi i32 [ %78, %__here317 ], [ %57, %__here139 ]
  %96 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %cur_irq_sequence.0, ptr %sequence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end341, %if.then4, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then1 ], [ -22, %if.then4 ], [ %ret.2, %if.end341 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 127, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 175, i32 3}
!4 = !{ptr @__func__.via_enable_vblank, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.via_disable_vblank, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 200, i32 3}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 264, i32 2}
!9 = !{ptr @via_driver_irq_preinstall.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 286, i32 4}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 291, i32 4}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 311, i32 2}
!16 = !{ptr @__func__.via_driver_irq_postinstall, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 331, i32 2}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 355, i32 3}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 375, i32 3}
!23 = !{ptr @via_pro_group_a_irqs, !24, !"via_pro_group_a_irqs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 70, i32 20}
!25 = distinct !{null, !26, !"via_num_pro_group_a", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 80, i32 12}
!27 = !{ptr @via_irqmap_pro_group_a, !28, !"via_irqmap_pro_group_a", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 81, i32 12}
!29 = !{ptr @via_unichrome_irqs, !30, !"via_unichrome_irqs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 83, i32 20}
!31 = distinct !{null, !32, !"via_num_unichrome", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 89, i32 12}
!33 = !{ptr @via_irqmap_unichrome, !34, !"via_irqmap_unichrome", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 90, i32 12}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 217, i32 3}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 229, i32 3}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 238, i32 3}
!41 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/via/via_irq.c", i32 243, i32 3}
!45 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 6057241}
!57 = !{i64 2154773754}
!58 = !{i64 2148498516, i64 2148498542, i64 2148498571, i64 2148498605, i64 2148498636, i64 2148498659}
!59 = !{i64 2154774166}
!60 = !{i64 6056823}
!61 = !{i64 2154774782}
!62 = !{i64 6056626}
!63 = !{i64 6057021}
!64 = !{i64 2154775323}
!65 = !{i64 2154775566}
!66 = !{!"branch_weights", i32 2000, i32 1}
