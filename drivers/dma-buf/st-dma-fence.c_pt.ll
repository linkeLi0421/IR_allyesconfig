; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/st-dma-fence.c_pt.bc'
source_filename = "../drivers/dma-buf/st-dma-fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.subtest = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mock_fence = type { %struct.dma_fence, %struct.spinlock }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.simple_cb = type { %struct.dma_fence_cb, i8 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_timer = type { %struct.timer_list, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.race_thread = type { ptr, ptr, i8, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.36, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.36 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_cb = type { %struct.dma_fence_cb, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@dma_fence.tests = internal constant { [12 x %struct.subtest], [32 x i8] } { [12 x %struct.subtest] [%struct.subtest { ptr @sanitycheck, ptr @.str }, %struct.subtest { ptr @test_signaling, ptr @.str.1 }, %struct.subtest { ptr @test_add_callback, ptr @.str.2 }, %struct.subtest { ptr @test_late_add_callback, ptr @.str.3 }, %struct.subtest { ptr @test_rm_callback, ptr @.str.4 }, %struct.subtest { ptr @test_late_rm_callback, ptr @.str.5 }, %struct.subtest { ptr @test_status, ptr @.str.6 }, %struct.subtest { ptr @test_error, ptr @.str.7 }, %struct.subtest { ptr @test_wait, ptr @.str.8 }, %struct.subtest { ptr @test_wait_timeout, ptr @.str.9 }, %struct.subtest { ptr @test_stub, ptr @.str.10 }, %struct.subtest { ptr @race_signal_callback, ptr @.str.11 }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sanitycheck\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_signaling\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_add_callback\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_late_add_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_rm_callback\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_late_rm_callback\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_status\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_error\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"test_wait\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_wait_timeout\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"test_stub\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"race_signal_callback\00", [43 x i8] zeroinitializer }, align 32
@dma_fence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016sizeof(dma_fence)=%zu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma_fence\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/dma-buf/st-dma-fence.c\00", [33 x i8] zeroinitializer }, align 32
@dma_fence._entry_ptr = internal global ptr @dma_fence._entry, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mock_fence\00", [21 x i8] zeroinitializer }, align 32
@slab_fences = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mock_fence.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&f->lock\00", [23 x i8] zeroinitializer }, align 32
@mock_ops = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @mock_name, ptr @mock_name, ptr null, ptr null, ptr @mock_wait, ptr @mock_fence_release, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mock\00", [27 x i8] zeroinitializer }, align 32
@test_signaling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.14, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Fence unexpectedly signaled on creation\0A\00", [53 x i8] zeroinitializer }, align 32
@test_signaling._entry_ptr = internal global ptr @test_signaling._entry, section ".printk_index", align 4
@test_signaling._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.14, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Fence reported being already signaled\0A\00", [55 x i8] zeroinitializer }, align 32
@test_signaling._entry_ptr.22 = internal global ptr @test_signaling._entry.20, section ".printk_index", align 4
@test_signaling._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.14, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Fence not reporting signaled\0A\00", [32 x i8] zeroinitializer }, align 32
@test_signaling._entry_ptr.25 = internal global ptr @test_signaling._entry.23, section ".printk_index", align 4
@test_signaling._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.14, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Fence reported not being already signaled\0A\00", [51 x i8] zeroinitializer }, align 32
@test_signaling._entry_ptr.28 = internal global ptr @test_signaling._entry.26, section ".printk_index", align 4
@test_add_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.14, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Failed to add callback, fence already signaled!\0A\00", [45 x i8] zeroinitializer }, align 32
@test_add_callback._entry_ptr = internal global ptr @test_add_callback._entry, section ".printk_index", align 4
@test_add_callback._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.14, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013Callback failed!\0A\00", [44 x i8] zeroinitializer }, align 32
@test_add_callback._entry_ptr.32 = internal global ptr @test_add_callback._entry.30, section ".printk_index", align 4
@test_late_add_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.14, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Added callback, but fence was already signaled!\0A\00", [45 x i8] zeroinitializer }, align 32
@test_late_add_callback._entry_ptr = internal global ptr @test_late_add_callback._entry, section ".printk_index", align 4
@test_late_add_callback._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.14, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Callback called after failed attachment !\0A\00", [51 x i8] zeroinitializer }, align 32
@test_late_add_callback._entry_ptr.36 = internal global ptr @test_late_add_callback._entry.34, section ".printk_index", align 4
@test_rm_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.14, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_rm_callback._entry_ptr = internal global ptr @test_rm_callback._entry, section ".printk_index", align 4
@test_rm_callback._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.14, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Failed to remove callback!\0A\00", [34 x i8] zeroinitializer }, align 32
@test_rm_callback._entry_ptr.39 = internal global ptr @test_rm_callback._entry.37, section ".printk_index", align 4
@test_rm_callback._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.4, ptr @.str.14, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Callback still signaled after removal!\0A\00", [54 x i8] zeroinitializer }, align 32
@test_rm_callback._entry_ptr.42 = internal global ptr @test_rm_callback._entry.40, section ".printk_index", align 4
@test_late_rm_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.14, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_late_rm_callback._entry_ptr = internal global ptr @test_late_rm_callback._entry, section ".printk_index", align 4
@test_late_rm_callback._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.5, ptr @.str.14, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_late_rm_callback._entry_ptr.44 = internal global ptr @test_late_rm_callback._entry.43, section ".printk_index", align 4
@test_late_rm_callback._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.5, ptr @.str.14, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Callback removal succeed after being executed!\0A\00", [46 x i8] zeroinitializer }, align 32
@test_late_rm_callback._entry_ptr.47 = internal global ptr @test_late_rm_callback._entry.45, section ".printk_index", align 4
@test_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.6, ptr @.str.14, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Fence unexpectedly has signaled status on creation\0A\00", [42 x i8] zeroinitializer }, align 32
@test_status._entry_ptr = internal global ptr @test_status._entry, section ".printk_index", align 4
@test_status._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.6, ptr @.str.14, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Fence not reporting signaled status\0A\00", [57 x i8] zeroinitializer }, align 32
@test_status._entry_ptr.51 = internal global ptr @test_status._entry.49, section ".printk_index", align 4
@test_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.7, ptr @.str.14, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Fence unexpectedly has error status before signal\0A\00", [43 x i8] zeroinitializer }, align 32
@test_error._entry_ptr = internal global ptr @test_error._entry, section ".printk_index", align 4
@test_error._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.7, ptr @.str.14, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Fence not reporting error status, got %d\0A\00", [52 x i8] zeroinitializer }, align 32
@test_error._entry_ptr.55 = internal global ptr @test_error._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@test_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.8, ptr @.str.14, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Wait reported complete before being signaled\0A\00", [48 x i8] zeroinitializer }, align 32
@test_wait._entry_ptr = internal global ptr @test_wait._entry, section ".printk_index", align 4
@test_wait._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.8, ptr @.str.14, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Wait reported incomplete after being signaled\0A\00", [47 x i8] zeroinitializer }, align 32
@test_wait._entry_ptr.60 = internal global ptr @test_wait._entry.58, section ".printk_index", align 4
@test_wait_timeout.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&wt.timer)\00", [20 x i8] zeroinitializer }, align 32
@test_wait_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.9, ptr @.str.14, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_wait_timeout._entry_ptr = internal global ptr @test_wait_timeout._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@test_wait_timeout._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.9, ptr @.str.14, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015Timer did not fire within the jiffie!\0A\00", [55 x i8] zeroinitializer }, align 32
@test_wait_timeout._entry_ptr.64 = internal global ptr @test_wait_timeout._entry.62, section ".printk_index", align 4
@test_wait_timeout._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.9, ptr @.str.14, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Wait reported incomplete after timeout\0A\00", [54 x i8] zeroinitializer }, align 32
@test_wait_timeout._entry_ptr.67 = internal global ptr @test_wait_timeout._entry.65, section ".printk_index", align 4
@test_stub._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.10, ptr @.str.14, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Obtained unsignaled stub fence!\0A\00", [61 x i8] zeroinitializer }, align 32
@test_stub._entry_ptr = internal global ptr @test_stub._entry, section ".printk_index", align 4
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-fence:%d\00", [19 x i8] zeroinitializer }, align 32
@thread_signal_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.14, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\013Callback not seen on thread %d, pass %lu (%lu misses), signaling %s add_callback; fence signaled? %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"thread_signal_callback\00", [41 x i8] zeroinitializer }, align 32
@thread_signal_callback._entry_ptr = internal global ptr @thread_signal_callback._entry, section ".printk_index", align 4
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"before\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"after\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@thread_signal_callback._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.71, ptr @.str.14, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s[%d] completed %lu passes, %lu misses\0A\00", [53 x i8] zeroinitializer }, align 32
@thread_signal_callback._entry_ptr.78 = internal global ptr @thread_signal_callback._entry.76, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@dma_fence_get_rcu_safe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.81 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.82 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"tests\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 548, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 549, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 550, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 551, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 552, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 553, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 554, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 555, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 556, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 557, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 558, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 559, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 560, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 564, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 566, i32 16 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"slab_fences\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 17, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 91, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [9 x i8] c"mock_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 76, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 28, i32 9 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 121, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 126, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 131, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 136, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 167, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 173, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 196, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 202, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 223, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 228, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 234, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 255, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 261, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 266, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 286, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 292, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 314, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 320, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 545, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 341, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 348, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 376, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 383, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 391, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 394, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 417, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 525, i32 16 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 489, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.321 = private constant [34 x i8] c"../drivers/dma-buf/st-dma-fence.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 506, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 695, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 329, i32 11 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 723, i32 2 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @dma_fence._entry, ptr @dma_fence._entry_ptr, ptr @test_add_callback._entry, ptr @test_add_callback._entry.30, ptr @test_add_callback._entry_ptr, ptr @test_add_callback._entry_ptr.32, ptr @test_error._entry, ptr @test_error._entry.53, ptr @test_error._entry_ptr, ptr @test_error._entry_ptr.55, ptr @test_late_add_callback._entry, ptr @test_late_add_callback._entry.34, ptr @test_late_add_callback._entry_ptr, ptr @test_late_add_callback._entry_ptr.36, ptr @test_late_rm_callback._entry, ptr @test_late_rm_callback._entry.43, ptr @test_late_rm_callback._entry.45, ptr @test_late_rm_callback._entry_ptr, ptr @test_late_rm_callback._entry_ptr.44, ptr @test_late_rm_callback._entry_ptr.47, ptr @test_rm_callback._entry, ptr @test_rm_callback._entry.37, ptr @test_rm_callback._entry.40, ptr @test_rm_callback._entry_ptr, ptr @test_rm_callback._entry_ptr.39, ptr @test_rm_callback._entry_ptr.42, ptr @test_signaling._entry, ptr @test_signaling._entry.20, ptr @test_signaling._entry.23, ptr @test_signaling._entry.26, ptr @test_signaling._entry_ptr, ptr @test_signaling._entry_ptr.22, ptr @test_signaling._entry_ptr.25, ptr @test_signaling._entry_ptr.28, ptr @test_status._entry, ptr @test_status._entry.49, ptr @test_status._entry_ptr, ptr @test_status._entry_ptr.51, ptr @test_stub._entry, ptr @test_stub._entry_ptr, ptr @test_wait._entry, ptr @test_wait._entry.58, ptr @test_wait._entry_ptr, ptr @test_wait._entry_ptr.60, ptr @test_wait_timeout._entry, ptr @test_wait_timeout._entry.62, ptr @test_wait_timeout._entry.65, ptr @test_wait_timeout._entry_ptr, ptr @test_wait_timeout._entry_ptr.64, ptr @test_wait_timeout._entry_ptr.67, ptr @thread_signal_callback._entry, ptr @thread_signal_callback._entry.76, ptr @thread_signal_callback._entry_ptr, ptr @thread_signal_callback._entry_ptr.78, ptr @dma_fence.tests, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @slab_fences, ptr @mock_fence.__key, ptr @.str.16, ptr @mock_ops, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @test_wait_timeout.__key, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_fence.tests to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_fence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slab_fences to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_fence.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_signaling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_signaling._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_signaling._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_signaling._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_add_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_add_callback._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_late_add_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_late_add_callback._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rm_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rm_callback._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rm_callback._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_late_rm_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_late_rm_callback._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_late_rm_callback._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_status._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_error._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wait._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wait_timeout.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wait_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wait_timeout._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_wait_timeout._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_stub._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_signal_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_signal_callback._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_fence() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 48) #11
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.15, i32 noundef 96, i32 noundef 8, i32 noundef 532480, ptr noundef null) #8
  store ptr %call1, ptr @slab_fences, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @__subtests(ptr noundef nonnull @.str.13, ptr noundef nonnull @dma_fence.tests, i32 noundef 12, ptr noundef null) #8
  %0 = load ptr, ptr @slab_fences, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sanitycheck(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  %call1 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_signaling(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 8
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i37 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i37, label %if.end.i, label %if.end.if.then.i.sink.split_crit_edge

if.end.if.then.i.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end.i:                                         ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4_crit_edge, label %land.lhs.true.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %6(ptr noundef nonnull %call.i) #8
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.end4_crit_edge

land.lhs.true.i.if.end4_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  br label %if.then.i.sink.split

if.end4:                                          ; preds = %land.lhs.true.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %call5 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %if.end4.if.then.i.sink.split_crit_edge

if.end4.if.then.i.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end13:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 8
  %and1.i.i39 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i39)
  %tobool.not.i40 = icmp eq i32 %and1.i.i39, 0
  br i1 %tobool.not.i40, label %if.end.i44, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end.i44:                                       ; preds = %if.end13
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %signaled.i42 = getelementptr inbounds %struct.dma_fence_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %signaled.i42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signaled.i42, align 4
  %tobool1.not.i43 = icmp eq ptr %12, null
  br i1 %tobool1.not.i43, label %if.end.i44.if.then.i.sink.split_crit_edge, label %land.lhs.true.i46

if.end.i44.if.then.i.sink.split_crit_edge:        ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

land.lhs.true.i46:                                ; preds = %if.end.i44
  %call4.i45 = tail call zeroext i1 %12(ptr noundef nonnull %call.i) #8
  br i1 %call4.i45, label %if.then5.i48, label %land.lhs.true.i46.if.then.i.sink.split_crit_edge

land.lhs.true.i46.if.then.i.sink.split_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.then5.i48:                                     ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i47 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then5.i48, %if.end13.if.end21_crit_edge
  %call22 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.if.then.i.sink.split_crit_edge, label %if.end21.if.then.i_crit_edge

if.end21.if.then.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end21.if.then.i.sink.split_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.then.i.sink.split:                             ; preds = %if.end21.if.then.i.sink.split_crit_edge, %land.lhs.true.i46.if.then.i.sink.split_crit_edge, %if.end.i44.if.then.i.sink.split_crit_edge, %if.end4.if.then.i.sink.split_crit_edge, %if.then5.i, %if.end.if.then.i.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.19, %if.then5.i ], [ @.str.19, %if.end.if.then.i.sink.split_crit_edge ], [ @.str.21, %if.end4.if.then.i.sink.split_crit_edge ], [ @.str.24, %land.lhs.true.i46.if.then.i.sink.split_crit_edge ], [ @.str.24, %if.end.i44.if.then.i.sink.split_crit_edge ], [ @.str.27, %if.end21.if.then.i.sink.split_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19.sink) #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.sink.split, %if.end21.if.then.i_crit_edge
  %err.0 = phi i32 [ 0, %if.end21.if.then.i_crit_edge ], [ -22, %if.then.i.sink.split ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_add_callback(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %cb = alloca %struct.simple_cb, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cb) #8
  %0 = call ptr @memset(ptr %cb, i32 0, i32 16)
  %1 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  %call2 = call i32 @dma_fence_add_callback(ptr noundef nonnull %call.i, ptr noundef nonnull %cb, ptr noundef nonnull @simple_callback) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.if.then.i.sink.split_crit_edge

if.end.if.then.i.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  %seen = getelementptr inbounds %struct.simple_cb, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %seen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seen, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %if.end6.if.then.i.sink.split_crit_edge, label %if.end6.if.then.i_crit_edge

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end6.if.then.i.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.then.i.sink.split:                             ; preds = %if.end6.if.then.i.sink.split_crit_edge, %if.end.if.then.i.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.29, %if.end.if.then.i.sink.split_crit_edge ], [ @.str.31, %if.end6.if.then.i.sink.split_crit_edge ]
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.29.sink) #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.sink.split, %if.end6.if.then.i_crit_edge
  %err.0 = phi i32 [ 0, %if.end6.if.then.i_crit_edge ], [ -22, %if.then.i.sink.split ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %4 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_late_add_callback(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %cb = alloca %struct.simple_cb, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cb) #8
  %0 = call ptr @memset(ptr %cb, i32 0, i32 16)
  %1 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  %call1 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  %call3 = call i32 @dma_fence_add_callback(ptr noundef nonnull %call.i, ptr noundef nonnull %cb, ptr noundef nonnull @simple_callback) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.then.i.sink.split_crit_edge, label %if.end7

if.end.if.then.i.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  %seen = getelementptr inbounds %struct.simple_cb, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %seen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seen, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool9.not = icmp eq i8 %3, 0
  br i1 %tobool9.not, label %if.end7.if.then.i_crit_edge, label %if.end7.if.then.i.sink.split_crit_edge

if.end7.if.then.i.sink.split_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i.sink.split:                             ; preds = %if.end7.if.then.i.sink.split_crit_edge, %if.end.if.then.i.sink.split_crit_edge
  %.str.33.sink = phi ptr [ @.str.33, %if.end.if.then.i.sink.split_crit_edge ], [ @.str.35, %if.end7.if.then.i.sink.split_crit_edge ]
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.33.sink) #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.sink.split, %if.end7.if.then.i_crit_edge
  %err.0 = phi i32 [ 0, %if.end7.if.then.i_crit_edge ], [ -22, %if.then.i.sink.split ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %4 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_rm_callback(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %cb = alloca %struct.simple_cb, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cb) #8
  %0 = call ptr @memset(ptr %cb, i32 0, i32 16)
  %1 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  %call2 = call i32 @dma_fence_add_callback(ptr noundef nonnull %call.i, ptr noundef nonnull %cb, ptr noundef nonnull @simple_callback) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.if.then.i.sink.split_crit_edge

if.end.if.then.i.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end6:                                          ; preds = %if.end
  %call8 = call zeroext i1 @dma_fence_remove_callback(ptr noundef nonnull %call.i, ptr noundef nonnull %cb) #8
  br i1 %call8, label %if.end15, label %if.end6.if.then.i.sink.split_crit_edge

if.end6.if.then.i.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end15:                                         ; preds = %if.end6
  %call16 = call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  %seen = getelementptr inbounds %struct.simple_cb, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %seen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seen, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool17.not = icmp eq i8 %3, 0
  br i1 %tobool17.not, label %if.end15.if.then.i_crit_edge, label %if.end15.if.then.i.sink.split_crit_edge

if.end15.if.then.i.sink.split_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end15.if.then.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i.sink.split:                             ; preds = %if.end15.if.then.i.sink.split_crit_edge, %if.end6.if.then.i.sink.split_crit_edge, %if.end.if.then.i.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.29, %if.end.if.then.i.sink.split_crit_edge ], [ @.str.38, %if.end6.if.then.i.sink.split_crit_edge ], [ @.str.41, %if.end15.if.then.i.sink.split_crit_edge ]
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.29.sink) #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.sink.split, %if.end15.if.then.i_crit_edge
  %err.0 = phi i32 [ 0, %if.end15.if.then.i_crit_edge ], [ -22, %if.then.i.sink.split ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %4 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_late_rm_callback(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %cb = alloca %struct.simple_cb, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cb) #8
  %0 = call ptr @memset(ptr %cb, i32 0, i32 16)
  %1 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  %call2 = call i32 @dma_fence_add_callback(ptr noundef nonnull %call.i, ptr noundef nonnull %cb, ptr noundef nonnull @simple_callback) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.if.then.i.sink.split_crit_edge

if.end.if.then.i.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  %seen = getelementptr inbounds %struct.simple_cb, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %seen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seen, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %if.end6.if.then.i.sink.split_crit_edge, label %if.end15

if.end6.if.then.i.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end15:                                         ; preds = %if.end6
  %call17 = call zeroext i1 @dma_fence_remove_callback(ptr noundef nonnull %call.i, ptr noundef nonnull %cb) #8
  br i1 %call17, label %if.end15.if.then.i.sink.split_crit_edge, label %if.end15.if.then.i_crit_edge

if.end15.if.then.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end15.if.then.i.sink.split_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.then.i.sink.split:                             ; preds = %if.end15.if.then.i.sink.split_crit_edge, %if.end6.if.then.i.sink.split_crit_edge, %if.end.if.then.i.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.29, %if.end.if.then.i.sink.split_crit_edge ], [ @.str.31, %if.end6.if.then.i.sink.split_crit_edge ], [ @.str.46, %if.end15.if.then.i.sink.split_crit_edge ]
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.29.sink) #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.sink.split, %if.end15.if.then.i_crit_edge
  %err.0 = phi i32 [ 0, %if.end15.if.then.i_crit_edge ], [ -22, %if.then.i.sink.split ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %4 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_status(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  %call1 = tail call i32 @dma_fence_get_status(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.end.if.then.i.sink.split_crit_edge

if.end.if.then.i.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  %call7 = tail call i32 @dma_fence_get_status(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.if.then.i.sink.split_crit_edge, label %if.end5.if.then.i_crit_edge

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end5.if.then.i.sink.split_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.then.i.sink.split:                             ; preds = %if.end5.if.then.i.sink.split_crit_edge, %if.end.if.then.i.sink.split_crit_edge
  %.str.48.sink = phi ptr [ @.str.48, %if.end.if.then.i.sink.split_crit_edge ], [ @.str.50, %if.end5.if.then.i.sink.split_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.48.sink) #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.sink.split, %if.end5.if.then.i_crit_edge
  %err.0 = phi i32 [ 0, %if.end5.if.then.i_crit_edge ], [ -22, %if.then.i.sink.split ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_error(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 8
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i23 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i23, label %if.end.dma_fence_set_error.exit_crit_edge, label %do.end.i, !prof !181

if.end.dma_fence_set_error.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_set_error.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 545, i32 noundef 9, ptr noundef null) #8
  br label %dma_fence_set_error.exit

dma_fence_set_error.exit:                         ; preds = %do.end.i, %if.end.dma_fence_set_error.exit_crit_edge
  %error51.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %error51.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -5, ptr %error51.i, align 8
  %call1 = tail call i32 @dma_fence_get_status(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %dma_fence_set_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #11
  br label %if.then.i

if.end5:                                          ; preds = %dma_fence_set_error.exit
  %call6 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  %call7 = tail call i32 @dma_fence_get_status(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call7)
  %cmp.not = icmp eq i32 %call7, -5
  br i1 %cmp.not, label %if.end5.if.then.i_crit_edge, label %do.end11

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @dma_fence_get_status(ptr noundef nonnull %call.i) #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call13) #11
  br label %if.then.i

if.then.i:                                        ; preds = %do.end11, %if.end5.if.then.i_crit_edge, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ 0, %if.end5.if.then.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_wait(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  %call1 = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %call.i, i1 noundef zeroext false, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %call1)
  %cmp.not = icmp eq i32 %call1, -62
  br i1 %cmp.not, label %if.end4, label %if.end.if.then.i.sink.split_crit_edge

if.end.if.then.i.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  %call6 = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %call.i, i1 noundef zeroext false, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end4.if.then.i_crit_edge, label %if.end4.if.then.i.sink.split_crit_edge

if.end4.if.then.i.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.sink.split

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i.sink.split:                             ; preds = %if.end4.if.then.i.sink.split_crit_edge, %if.end.if.then.i.sink.split_crit_edge
  %.str.57.sink = phi ptr [ @.str.57, %if.end.if.then.i.sink.split_crit_edge ], [ @.str.59, %if.end4.if.then.i.sink.split_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.57.sink) #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.sink.split, %if.end4.if.then.i_crit_edge
  %err.0 = phi i32 [ 0, %if.end4.if.then.i_crit_edge ], [ -22, %if.then.i.sink.split ]
  %call15 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #8
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_wait_timeout(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %wt = alloca %struct.wait_timer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wt) #8
  %0 = call ptr @memset(ptr %wt, i32 255, i32 52)
  call void @init_timer_on_stack_key(ptr noundef nonnull %wt, ptr noundef nonnull @wait_timer, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @test_wait_timeout.__key) #8
  %1 = load ptr, ptr @slab_fences, align 4
  %call.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  %f = getelementptr inbounds %struct.wait_timer, ptr %wt, i32 0, i32 1
  %2 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %f, align 4
  %call3 = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %call.i, i1 noundef zeroext false, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %call3)
  %cmp.not = icmp eq i32 %call3, -62
  br i1 %cmp.not, label %if.end9, label %if.end.err_free.sink.split_crit_edge

if.end.err_free.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free.sink.split

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 1
  %call11 = call i32 @mod_timer(ptr noundef nonnull %wt, i32 noundef %add) #8
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f, align 4
  %call13 = call i32 @dma_fence_wait_timeout(ptr noundef %5, i1 noundef zeroext false, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %call13)
  %cmp14 = icmp eq i32 %call13, -62
  br i1 %cmp14, label %if.then15, label %if.end9.err_free_crit_edge

if.end9.err_free_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %wt, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %7, null
  %.str.66..str.63 = select i1 %tobool.not.i.i.not, ptr @.str.66, ptr @.str.63
  %. = select i1 %tobool.not.i.i.not, i32 -22, i32 0
  br label %err_free.sink.split

err_free.sink.split:                              ; preds = %if.then15, %if.end.err_free.sink.split_crit_edge
  %.str.63.sink = phi ptr [ @.str.57, %if.end.err_free.sink.split_crit_edge ], [ %.str.66..str.63, %if.then15 ]
  %err.0.ph = phi i32 [ -22, %if.end.err_free.sink.split_crit_edge ], [ %., %if.then15 ]
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.63.sink) #11
  br label %err_free

err_free:                                         ; preds = %err_free.sink.split, %if.end9.err_free_crit_edge
  %err.0 = phi i32 [ 0, %if.end9.err_free_crit_edge ], [ %err.0.ph, %err_free.sink.split ]
  %call33 = call i32 @del_timer_sync(ptr noundef nonnull %wt) #8
  call void @destroy_timer_on_stack(ptr noundef nonnull %wt) #8
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f, align 4
  %call36 = call i32 @dma_fence_signal(ptr noundef %9) #8
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f, align 4
  %tobool.not.i39 = icmp eq ptr %11, null
  br i1 %tobool.not.i39, label %err_free.cleanup_crit_edge, label %if.then.i

err_free.cleanup_crit_edge:                       ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %err_free
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %err_free.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_free.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wt) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_stub(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %f = alloca [64 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %f) #8
  %0 = call ptr @memset(ptr %f, i32 255, i32 256)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call ptr @dma_fence_get_stub() #8
  %arrayidx = getelementptr [64 x ptr], ptr %f, i32 0, i32 %i.016
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %arrayidx, align 4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.err4_crit_edge, label %land.lhs.true.i

if.end.i.err4_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err4

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %7(ptr noundef %call) #8
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.err4_crit_edge

land.lhs.true.i.err4_crit_edge:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err4

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %call) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then5.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.while.body.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.while.body.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

err4:                                             ; preds = %land.lhs.true.i.err4_crit_edge, %if.end.i.err4_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.016)
  %tobool.not18 = icmp eq i32 %i.016, 0
  br i1 %tobool.not18, label %err4.while.end_crit_edge, label %err4.while.body.preheader_crit_edge

err4.while.body.preheader_crit_edge:              ; preds = %err4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

err4.while.end_crit_edge:                         ; preds = %err4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %err4.while.body.preheader_crit_edge, %for.inc.while.body.preheader_crit_edge
  %err.025 = phi i32 [ -22, %err4.while.body.preheader_crit_edge ], [ 0, %for.inc.while.body.preheader_crit_edge ]
  %i.01524 = phi i32 [ %i.016, %err4.while.body.preheader_crit_edge ], [ 64, %for.inc.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %dma_fence_put.exit.while.body_crit_edge, %while.body.preheader
  %i.119 = phi i32 [ %dec, %dma_fence_put.exit.while.body_crit_edge ], [ %i.01524, %while.body.preheader ]
  %dec = add nsw i32 %i.119, -1
  %arrayidx5 = getelementptr [64 x ptr], ptr %f, i32 0, i32 %dec
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %tobool.not.i11 = icmp eq ptr %9, null
  br i1 %tobool.not.i11, label %while.body.dma_fence_put.exit_crit_edge, label %if.then.i

while.body.dma_fence_put.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %while.body
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %while.body.dma_fence_put.exit_crit_edge
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %dma_fence_put.exit.while.end_crit_edge, label %dma_fence_put.exit.while.body_crit_edge

dma_fence_put.exit.while.body_crit_edge:          ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

dma_fence_put.exit.while.end_crit_edge:           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %dma_fence_put.exit.while.end_crit_edge, %err4.while.end_crit_edge
  %err.026 = phi i32 [ -22, %err4.while.end_crit_edge ], [ %err.025, %dma_fence_put.exit.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %f) #8
  ret i32 %err.026
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @race_signal_callback(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %f = alloca [2 x ptr], align 8
  %t = alloca [2 x %struct.race_thread], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f) #8
  %0 = ptrtoint ptr %f to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %f, align 8
  %1 = getelementptr inbounds i8, ptr %t, i32 4
  %id = getelementptr inbounds [2 x %struct.race_thread], ptr %t, i32 0, i32 0, i32 3
  %before = getelementptr inbounds [2 x %struct.race_thread], ptr %t, i32 0, i32 0, i32 2
  %task = getelementptr inbounds [2 x %struct.race_thread], ptr %t, i32 0, i32 0, i32 1
  %arrayidx.1 = getelementptr inbounds [2 x %struct.race_thread], ptr %t, i32 0, i32 1
  %id.1 = getelementptr inbounds [2 x %struct.race_thread], ptr %t, i32 0, i32 1, i32 3
  %before.1 = getelementptr inbounds [2 x %struct.race_thread], ptr %t, i32 0, i32 1, i32 2
  %task.1 = getelementptr inbounds [2 x %struct.race_thread], ptr %t, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %put_task_struct.exit.1.for.body_crit_edge, %entry
  %tobool5 = phi i1 [ false, %entry ], [ true, %put_task_struct.exit.1.for.body_crit_edge ]
  %cmp = phi i1 [ true, %entry ], [ false, %put_task_struct.exit.1.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #8
  %2 = call ptr @memset(ptr %1, i32 255, i32 28)
  %frombool = zext i1 %tobool5 to i8
  %3 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %f, ptr %t, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %id, align 4
  %5 = ptrtoint ptr %before to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %before, align 4
  %call = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @thread_signal_callback, ptr noundef nonnull %t, i32 noundef -1, ptr noundef nonnull @.str.69, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 @wake_up_process(ptr noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %6 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %task, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %7 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !184
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !185

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !181

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #8
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %f, ptr %arrayidx.1, align 4
  %10 = ptrtoint ptr %id.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %id.1, align 4
  %11 = ptrtoint ptr %before.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %before.1, align 4
  %call.1 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @thread_signal_callback, ptr noundef %arrayidx.1, i32 noundef -1, ptr noundef nonnull @.str.69, i32 noundef 1) #8
  %cmp.i.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %get_task_struct.exit.if.end.1_crit_edge, label %if.then.1

get_task_struct.exit.if.end.1_crit_edge:          ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

if.then.1:                                        ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call9.1 = call i32 @wake_up_process(ptr noundef %call.1) #8
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %get_task_struct.exit.if.end.1_crit_edge
  %12 = ptrtoint ptr %task.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.1, ptr %task.1, align 4
  %usage.i.1 = getelementptr inbounds %struct.task_struct, ptr %call.1, i32 0, i32 2
  %call.i.i.i.i.i.i.1 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.1, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage.i.1, i32 1, i32 3, i32 1) #8
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.1, ptr %usage.i.1, i32 1, ptr elementtype(i32) %usage.i.1) #8, !srcloc !184
  %asmresult.i.i.i.i.i.i.1 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.1)
  %tobool1.not.i.i.i.i.1 = icmp eq i32 %asmresult.i.i.i.i.i.i.1, 0
  br i1 %tobool1.not.i.i.i.i.1, label %if.end.1.if.end15.sink.split.i.i.i.i.1_crit_edge, label %if.else.i.i.i.i.1, !prof !185

if.end.1.if.end15.sink.split.i.i.i.i.1_crit_edge: ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.1

if.else.i.i.i.i.1:                                ; preds = %if.end.1
  %add.i.i.i.i.1 = add i32 %asmresult.i.i.i.i.i.i.1, 1
  %14 = or i32 %add.i.i.i.i.1, %asmresult.i.i.i.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.1 = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.1, label %if.else.i.i.i.i.1.get_task_struct.exit.1_crit_edge, label %if.else.i.i.i.i.1.if.end15.sink.split.i.i.i.i.1_crit_edge, !prof !181

if.else.i.i.i.i.1.if.end15.sink.split.i.i.i.i.1_crit_edge: ; preds = %if.else.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.1

if.else.i.i.i.i.1.get_task_struct.exit.1_crit_edge: ; preds = %if.else.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_task_struct.exit.1

if.end15.sink.split.i.i.i.i.1:                    ; preds = %if.else.i.i.i.i.1.if.end15.sink.split.i.i.i.i.1_crit_edge, %if.end.1.if.end15.sink.split.i.i.i.i.1_crit_edge
  %.sink.i.i.i.i.1 = phi i32 [ 2, %if.end.1.if.end15.sink.split.i.i.i.i.1_crit_edge ], [ 1, %if.else.i.i.i.i.1.if.end15.sink.split.i.i.i.i.1_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.1, i32 noundef %.sink.i.i.i.i.1) #8
  br label %get_task_struct.exit.1

get_task_struct.exit.1:                           ; preds = %if.end15.sink.split.i.i.i.i.1, %if.else.i.i.i.i.1.get_task_struct.exit.1_crit_edge
  call void @msleep(i32 noundef 50) #8
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 4
  %call19 = call i32 @kthread_stop(ptr noundef %16) #8
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 4
  %usage.i53 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 2
  %call.i.i.i.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i53, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @llvm.prefetch.p0(ptr %usage.i53, i32 1, i32 3, i32 1) #8
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i53, ptr %usage.i53, i32 1, ptr elementtype(i32) %usage.i53) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %get_task_struct.exit.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i55 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i55, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !181

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %usage.i53, i32 noundef 3) #8
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %get_task_struct.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @__put_task_struct(ptr noundef %18) #8
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %20 = ptrtoint ptr %task.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.1, align 4
  %call19.1 = call i32 @kthread_stop(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1)
  %tobool20.not.1 = icmp ne i32 %call19.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not.1 = icmp eq i32 %call19, 0
  %or.cond52.1 = select i1 %tobool20.not.1, i1 %tobool21.not.1, i1 false
  %ret.2.1 = select i1 %or.cond52.1, i32 %call19.1, i32 %call19
  %22 = ptrtoint ptr %task.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.1, align 4
  %usage.i53.1 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 2
  %call.i.i.i.i.i.i54.1 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i53.1, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @llvm.prefetch.p0(ptr %usage.i53.1, i32 1, i32 3, i32 1) #8
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i53.1, ptr %usage.i53.1, i32 1, ptr elementtype(i32) %usage.i53.1) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.1 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.1)
  %cmp.i.i.i.i.1 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.1, 1
  br i1 %cmp.i.i.i.i.1, label %if.then.i.1, label %if.end5.i.i.i.i.1

if.end5.i.i.i.i.1:                                ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.1)
  %.not.i.i.i.i55.1 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.1, 0
  br i1 %.not.i.i.i.i55.1, label %if.end5.i.i.i.i.1.put_task_struct.exit.1_crit_edge, label %if.then10.i.i.i.i.1, !prof !181

if.end5.i.i.i.i.1.put_task_struct.exit.1_crit_edge: ; preds = %if.end5.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_task_struct.exit.1

if.then10.i.i.i.i.1:                              ; preds = %if.end5.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %usage.i53.1, i32 noundef 3) #8
  br label %put_task_struct.exit.1

if.then.i.1:                                      ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @__put_task_struct(ptr noundef %23) #8
  br label %put_task_struct.exit.1

put_task_struct.exit.1:                           ; preds = %if.then.i.1, %if.then10.i.i.i.i.1, %if.end5.i.i.i.i.1.put_task_struct.exit.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.1)
  %tobool.not = icmp eq i32 %ret.2.1, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %put_task_struct.exit.1.for.body_crit_edge, label %for.end31

put_task_struct.exit.1.for.body_crit_edge:        ; preds = %put_task_struct.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end31:                                        ; preds = %put_task_struct.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f) #8
  ret i32 %ret.2.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__subtests(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @mock_name(ptr nocapture noundef readnone %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mock_wait(ptr noundef %f, i1 noundef zeroext %intr, i32 noundef %timeout) #0 align 64 {
entry:
  %cb = alloca %struct.wait_cb, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %intr, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cb) #8
  %0 = getelementptr inbounds %struct.wait_cb, ptr %cb, i32 0, i32 1
  %1 = call ptr @memset(ptr %cb, i32 0, i32 12)
  %2 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task2 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task2, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %0, align 4
  %call4 = call i32 @dma_fence_add_callback(ptr noundef %f, ptr noundef nonnull %cb, ptr noundef nonnull @mock_wakeup) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool6.not207 = icmp eq i32 %timeout, 0
  br i1 %tobool6.not207, label %while.cond.preheader.__here136_crit_edge, label %__here.lr.ph

while.cond.preheader.__here136_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here136

__here.lr.ph:                                     ; preds = %while.cond.preheader
  %flags = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 5
  %and.i180 = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool.not.i = icmp eq i32 %and.i180, 0
  br label %__here

__here:                                           ; preds = %if.end84.__here_crit_edge, %__here.lr.ph
  %timeout.addr.0208 = phi i32 [ %timeout, %__here.lr.ph ], [ %call85, %if.end84.__here_crit_edge ]
  %7 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task2, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@mock_wait, %__here) to i32), ptr %task_state_change, align 4
  %10 = load ptr, ptr %task2, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %cond, ptr %10, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !186
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool76.not = icmp eq i32 %and1.i, 0
  br i1 %tobool76.not, label %if.end78, label %__here.__here136_crit_edge

__here.__here136_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here136

if.end78:                                         ; preds = %__here
  br i1 %tobool.not.i, label %if.end78.if.end84_crit_edge, label %if.end.i

if.end78.if.end84_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.end.i:                                         ; preds = %if.end78
  %14 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task2, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stack.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end.i.__here136_crit_edge, !prof !181

if.end.i.__here136_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here136

signal_pending.exit.i:                            ; preds = %if.end.i
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %17, align 4
  %and1.i.i.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %signal_pending.exit.i.if.end84_crit_edge, label %signal_pending.exit.i.__here136_crit_edge

signal_pending.exit.i.__here136_crit_edge:        ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here136

signal_pending.exit.i.if.end84_crit_edge:         ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.end84:                                         ; preds = %signal_pending.exit.i.if.end84_crit_edge, %if.end78.if.end84_crit_edge
  %call85 = call i32 @schedule_timeout(i32 noundef %timeout.addr.0208) #8
  %tobool6.not = icmp eq i32 %call85, 0
  br i1 %tobool6.not, label %if.end84.__here136_crit_edge, label %if.end84.__here_crit_edge

if.end84.__here_crit_edge:                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.end84.__here136_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here136

__here136:                                        ; preds = %if.end84.__here136_crit_edge, %signal_pending.exit.i.__here136_crit_edge, %if.end.i.__here136_crit_edge, %__here.__here136_crit_edge, %while.cond.preheader.__here136_crit_edge
  %timeout.addr.0.lcssa = phi i32 [ 0, %while.cond.preheader.__here136_crit_edge ], [ %timeout.addr.0208, %if.end.i.__here136_crit_edge ], [ %timeout.addr.0208, %signal_pending.exit.i.__here136_crit_edge ], [ %timeout.addr.0208, %__here.__here136_crit_edge ], [ 0, %if.end84.__here136_crit_edge ]
  %23 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task2, align 8
  %task_state_change140 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change140 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@mock_wait, %__here136) to i32), ptr %task_state_change140, align 4
  %26 = load ptr, ptr %task2, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %26, align 128
  %call158 = call zeroext i1 @dma_fence_remove_callback(ptr noundef %f, ptr noundef nonnull %cb) #8
  br i1 %call158, label %if.end160, label %__here136.cleanup_crit_edge

__here136.cleanup_crit_edge:                      ; preds = %__here136
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end160:                                        ; preds = %__here136
  %and.i181 = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181)
  %tobool.not.i182 = icmp eq i32 %and.i181, 0
  br i1 %tobool.not.i182, label %if.end160.signal_pending_state.exit196.thread_crit_edge, label %if.end.i185

if.end160.signal_pending_state.exit196.thread_crit_edge: ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %signal_pending_state.exit196.thread

if.end.i185:                                      ; preds = %if.end160
  %28 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task2, align 8
  %stack.i.i.i183 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %stack.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stack.i.i.i183, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i184 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i184, label %signal_pending.exit.i188, label %if.end.i185.cleanup_crit_edge, !prof !181

if.end.i185.cleanup_crit_edge:                    ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit.i188:                         ; preds = %if.end.i185
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %31, align 4
  %and1.i.i.i.i.i.i186 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i186)
  %tobool1.not.i187 = icmp eq i32 %and1.i.i.i.i.i.i186, 0
  br i1 %tobool1.not.i187, label %signal_pending.exit.i188.signal_pending_state.exit196.thread_crit_edge, label %signal_pending.exit.i188.cleanup_crit_edge

signal_pending.exit.i188.cleanup_crit_edge:       ; preds = %signal_pending.exit.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit.i188.signal_pending_state.exit196.thread_crit_edge: ; preds = %signal_pending.exit.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %signal_pending_state.exit196.thread

signal_pending_state.exit196.thread:              ; preds = %signal_pending.exit.i188.signal_pending_state.exit196.thread_crit_edge, %if.end160.signal_pending_state.exit196.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %signal_pending_state.exit196.thread, %signal_pending.exit.i188.cleanup_crit_edge, %if.end.i185.cleanup_crit_edge, %__here136.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %timeout, %entry.cleanup_crit_edge ], [ %timeout.addr.0.lcssa, %__here136.cleanup_crit_edge ], [ -62, %signal_pending_state.exit196.thread ], [ -512, %signal_pending.exit.i188.cleanup_crit_edge ], [ -512, %if.end.i185.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mock_fence_release(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @slab_fences, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %f) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mock_wakeup(ptr nocapture noundef readnone %f, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.wait_cb, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_callback(ptr nocapture noundef readnone %f, ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %seen = getelementptr inbounds %struct.simple_cb, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %seen to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 1, ptr %seen, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !187
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_get_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_on_stack_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wait_timer(ptr nocapture noundef readonly %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f = getelementptr inbounds %struct.wait_timer, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  %call = tail call i32 @dma_fence_signal(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_timer_on_stack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_fence_get_stub() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thread_signal_callback(ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %old.i.i.i.i.i.i = alloca i32, align 4
  %cb = alloca %struct.simple_cb, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id25 = getelementptr inbounds %struct.race_thread, ptr %arg, i32 0, i32 3
  %before = getelementptr inbounds %struct.race_thread, ptr %arg, i32 0, i32 2
  %seen = getelementptr inbounds %struct.simple_cb, ptr %cb, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %entry
  %pass.0260 = phi i32 [ 0, %entry ], [ %inc166, %cleanup.land.rhs_crit_edge ]
  %miss.0258 = phi i32 [ 0, %entry ], [ %miss.1, %cleanup.land.rhs_crit_edge ]
  %call = call zeroext i1 @kthread_should_stop() #8
  br i1 %call, label %land.rhs.do.end171_crit_edge, label %while.body

land.rhs.do.end171_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end171

while.body:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cb) #8
  %0 = call ptr @memset(ptr %cb, i32 255, i32 16)
  %1 = load ptr, ptr @slab_fences, align 4
  %call.i208 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #8
  %tobool.not.i209 = icmp eq ptr %call.i208, null
  br i1 %tobool.not.i209, label %cleanup.thread, label %do.body

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cb) #8
  br label %do.end171

do.body:                                          ; preds = %while.body
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i208, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #8
  call void @dma_fence_init(ptr noundef nonnull %call.i208, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %4 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id25, align 4
  %arrayidx26 = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call.i208, ptr %arrayidx26, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !189
  %7 = call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !190
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %do.body.do.body44.preheader_crit_edge, label %land.lhs.true.i

do.body.do.body44.preheader_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44.preheader

land.lhs.true.i:                                  ; preds = %do.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body44.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body44.preheader_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body44.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body44.preheader_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.79, i32 noundef 696, ptr noundef nonnull @.str.80) #8
  br label %do.body44.preheader

do.body44.preheader:                              ; preds = %if.then.i, %land.lhs.true2.i.do.body44.preheader_crit_edge, %land.lhs.true.i.do.body44.preheader_crit_edge, %do.body.do.body44.preheader_crit_edge
  br label %do.body44

do.body44:                                        ; preds = %land.rhs53.do.body44_crit_edge, %do.body44.preheader
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 4
  %13 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool47.not = icmp eq i32 %14, 0
  %lnot.ext = zext i1 %tobool47.not to i32
  %arrayidx49 = getelementptr ptr, ptr %12, i32 %lnot.ext
  br label %do.body.i212

do.body.i212:                                     ; preds = %do.body.i212.backedge, %do.body44
  %15 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx49, align 4
  %call.i210 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool.not.i211 = icmp eq i32 %call.i210, 0
  br i1 %tobool.not.i211, label %land.lhs.true.i213, label %do.body.i212.do.end8.i_crit_edge

do.body.i212.do.end8.i_crit_edge:                 ; preds = %do.body.i212
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

land.lhs.true.i213:                               ; preds = %do.body.i212
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i213.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i213.do.end8.i_crit_edge:           ; preds = %land.lhs.true.i213
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i213
  %.b31.i = load i1, ptr @dma_fence_get_rcu_safe.__warned, align 1
  br i1 %.b31.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i214

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

if.then.i214:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dma_fence_get_rcu_safe.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 329, ptr noundef nonnull @.str.81) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i214, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i213.do.end8.i_crit_edge, %do.body.i212.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %16, null
  br i1 %tobool10.not.i, label %land.rhs53, label %if.end12.i

if.end12.i:                                       ; preds = %do.end8.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #8
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #8
  %17 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcount.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.end12.i
  %19 = phi i32 [ %18, %if.end12.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %20 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %19, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #8
  %21 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %23 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %22, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !191
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %22
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !181

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %24 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %25, 1
  %26 = or i32 %add5.i.i.i.i.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !181

if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get_rcu.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 0) #8
  %27 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr.i = load i32, ptr %old.i.i.i.i.i.i, align 4
  br label %dma_fence_get_rcu.exit.i

dma_fence_get_rcu.exit.i:                         ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge
  %28 = phi i32 [ %25, %if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.i.i.i.i.not.i.i = icmp eq i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not.i.i, label %dma_fence_get_rcu.exit.i.do.body.i212.backedge_crit_edge, label %if.end16.i

dma_fence_get_rcu.exit.i.do.body.i212.backedge_crit_edge: ; preds = %dma_fence_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i212.backedge

if.end16.i:                                       ; preds = %dma_fence_get_rcu.exit.i
  %29 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx49, align 4
  %cmp.i = icmp eq ptr %16, %30
  br i1 %cmp.i, label %if.end16.i.do.end58_crit_edge, label %if.then.i.i

if.end16.i.do.end58_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58

if.then.i.i:                                      ; preds = %if.end16.i
  %call.i.i.i.i.i.i.i33.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i34.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i34.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i34.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i34.i)
  %.not.i.i.i.i.i35.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i34.i, 0
  br i1 %.not.i.i.i.i.i35.i, label %if.end5.i.i.i.i.i.i.do.body.i212.backedge_crit_edge, label %if.then10.i.i.i.i.i36.i, !prof !181

if.end5.i.i.i.i.i.i.do.body.i212.backedge_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i212.backedge

if.then10.i.i.i.i.i36.i:                          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #8
  br label %do.body.i212.backedge

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @dma_fence_release(ptr noundef %refcount.i.i) #8
  br label %do.body.i212.backedge

do.body.i212.backedge:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i36.i, %if.end5.i.i.i.i.i.i.do.body.i212.backedge_crit_edge, %dma_fence_get_rcu.exit.i.do.body.i212.backedge_crit_edge
  br label %do.body.i212

land.rhs53:                                       ; preds = %do.end8.i
  %call54 = call zeroext i1 @kthread_should_stop() #8
  br i1 %call54, label %land.rhs53.do.end58_crit_edge, label %land.rhs53.do.body44_crit_edge

land.rhs53.do.body44_crit_edge:                   ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

land.rhs53.do.end58_crit_edge:                    ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58

do.end58:                                         ; preds = %land.rhs53.do.end58_crit_edge, %if.end16.i.do.end58_crit_edge
  %call.i215 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i215, label %do.end58.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i218

do.end58.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i218:                               ; preds = %do.end58
  %call1.i216 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i216)
  %tobool.not.i217 = icmp eq i32 %call1.i216, 0
  br i1 %tobool.not.i217, label %land.lhs.true.i218.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i220

land.lhs.true.i218.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i218
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i220:                              ; preds = %land.lhs.true.i218
  %.b4.i219 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i219, label %land.lhs.true2.i220.rcu_read_unlock.exit_crit_edge, label %if.then.i221

land.lhs.true2.i220.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i220
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i221:                                     ; preds = %land.lhs.true2.i220
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.79, i32 noundef 724, ptr noundef nonnull @.str.82) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i221, %land.lhs.true2.i220.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i218.rcu_read_unlock.exit_crit_edge, %do.end58.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  %32 = call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i.i.i.i.i222 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i222 to ptr
  %preempt_count.i.i.i.i223 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i223, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i223, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %36 = ptrtoint ptr %before to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %before, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool59.not = icmp eq i8 %37, 0
  br i1 %tobool59.not, label %rcu_read_unlock.exit.do.body72_crit_edge, label %if.then60

rcu_read_unlock.exit.do.body72_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72

if.then60:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = call i32 @dma_fence_signal(ptr noundef nonnull %call.i208) #8
  br label %do.body72

do.body72:                                        ; preds = %if.then60, %rcu_read_unlock.exit.do.body72_crit_edge
  %38 = ptrtoint ptr %seen to i32
  call void @__asan_store1_noabort(i32 %38)
  store volatile i8 0, ptr %seen, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !193
  br i1 %tobool10.not.i, label %do.body72.if.then85_crit_edge, label %lor.lhs.false

do.body72.if.then85_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

lor.lhs.false:                                    ; preds = %do.body72
  %call83 = call i32 @dma_fence_add_callback(ptr noundef nonnull %16, ptr noundef nonnull %cb, ptr noundef nonnull @simple_callback) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %lor.lhs.false.if.end87_crit_edge, label %lor.lhs.false.if.then85_crit_edge

lor.lhs.false.if.then85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

lor.lhs.false.if.end87_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then85:                                        ; preds = %lor.lhs.false.if.then85_crit_edge, %do.body72.if.then85_crit_edge
  %inc = add i32 %miss.0258, 1
  %39 = ptrtoint ptr %seen to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %seen, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %lor.lhs.false.if.end87_crit_edge
  %miss.1 = phi i32 [ %inc, %if.then85 ], [ %miss.0258, %lor.lhs.false.if.end87_crit_edge ]
  %40 = ptrtoint ptr %before to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %before, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool89.not = icmp eq i8 %41, 0
  br i1 %tobool89.not, label %if.then90, label %if.end87.if.end92_crit_edge

if.end87.if.end92_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %call91 = call i32 @dma_fence_signal(ptr noundef nonnull %call.i208) #8
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end87.if.end92_crit_edge
  %42 = ptrtoint ptr %seen to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %seen, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool94.not = icmp eq i8 %43, 0
  br i1 %tobool94.not, label %if.then95, label %if.end92.do.end100_crit_edge

if.end92.do.end100_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end100

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %call.i224 = call i32 @dma_fence_wait_timeout(ptr noundef %16, i1 noundef zeroext false, i32 noundef 2147483647) #8
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %16, align 8
  call void @_raw_spin_lock_irq(ptr noundef %45) #8
  %46 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %16, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %47) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then95, %if.end92.do.end100_crit_edge
  %48 = ptrtoint ptr %seen to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %seen, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool102.not = icmp eq i8 %49, 0
  br i1 %tobool102.not, label %do.end107, label %do.end100.if.end115_crit_edge

do.end100.if.end115_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

do.end107:                                        ; preds = %do.end100
  %50 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id25, align 4
  %52 = ptrtoint ptr %before to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %before, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool111.not = icmp eq i8 %53, 0
  %cond = select i1 %tobool111.not, ptr @.str.73, ptr @.str.72
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 5
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i225 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i225, label %if.end.i, label %do.end107.dma_fence_is_signaled.exit_crit_edge

do.end107.dma_fence_is_signaled.exit_crit_edge:   ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_is_signaled.exit

if.end.i:                                         ; preds = %do.end107
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 1
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i, label %if.end.i.dma_fence_is_signaled.exit_crit_edge, label %land.lhs.true.i226

if.end.i.dma_fence_is_signaled.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_is_signaled.exit

land.lhs.true.i226:                               ; preds = %if.end.i
  %call4.i = call zeroext i1 %59(ptr noundef %16) #8
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i226.dma_fence_is_signaled.exit_crit_edge

land.lhs.true.i226.dma_fence_is_signaled.exit_crit_edge: ; preds = %land.lhs.true.i226
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_is_signaled.exit

if.then5.i:                                       ; preds = %land.lhs.true.i226
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 @dma_fence_signal(ptr noundef %16) #8
  br label %dma_fence_is_signaled.exit

dma_fence_is_signaled.exit:                       ; preds = %if.then5.i, %land.lhs.true.i226.dma_fence_is_signaled.exit_crit_edge, %if.end.i.dma_fence_is_signaled.exit_crit_edge, %do.end107.dma_fence_is_signaled.exit_crit_edge
  %60 = phi ptr [ @.str.75, %if.end.i.dma_fence_is_signaled.exit_crit_edge ], [ @.str.75, %land.lhs.true.i226.dma_fence_is_signaled.exit_crit_edge ], [ @.str.74, %if.then5.i ], [ @.str.74, %do.end107.dma_fence_is_signaled.exit_crit_edge ]
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %51, i32 noundef %pass.0260, i32 noundef %miss.1, ptr noundef nonnull %cond, ptr noundef nonnull %60) #11
  br label %if.end115

if.end115:                                        ; preds = %dma_fence_is_signaled.exit, %do.end100.if.end115_crit_edge
  %err.1 = phi i32 [ 0, %do.end100.if.end115_crit_edge ], [ -22, %dma_fence_is_signaled.exit ]
  br i1 %tobool10.not.i, label %if.end115.if.then.i236_crit_edge, label %if.then.i228

if.end115.if.then.i236_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i236

if.then.i228:                                     ; preds = %if.end115
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i229, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then.i236_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.if.then.i236_crit_edge:         ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i236

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %if.then.i236

if.then.i.i229:                                   ; preds = %if.then.i228
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %if.then.i236

if.then.i236:                                     ; preds = %if.then.i.i229, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then.i236_crit_edge, %if.end115.if.then.i236_crit_edge
  %62 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arg, align 4
  %64 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id25, align 4
  %arrayidx127 = getelementptr ptr, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr null, ptr %arrayidx127, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !194
  %refcount.i232 = getelementptr inbounds %struct.dma_fence, ptr %call.i208, i32 0, i32 6
  %call.i.i.i.i.i.i.i233 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i232, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @llvm.prefetch.p0(ptr %refcount.i232, i32 1, i32 3, i32 1) #8
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i232, ptr %refcount.i232, i32 1, ptr elementtype(i32) %refcount.i232) #8, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i234 = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i234)
  %cmp.i.i.i.i.i235 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i234, 1
  br i1 %cmp.i.i.i.i.i235, label %if.then.i.i240, label %if.end5.i.i.i.i.i238

if.end5.i.i.i.i.i238:                             ; preds = %if.then.i236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i234)
  %.not.i.i.i.i.i237 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i234, 0
  br i1 %.not.i.i.i.i.i237, label %if.end5.i.i.i.i.i238.cleanup_crit_edge, label %if.then10.i.i.i.i.i239, !prof !181

if.end5.i.i.i.i.i238.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i238
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i239:                           ; preds = %if.end5.i.i.i.i.i238
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i232, i32 noundef 3) #8
  br label %cleanup

if.then.i.i240:                                   ; preds = %if.then.i236
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @dma_fence_release(ptr noundef %refcount.i232) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i240, %if.then10.i.i.i.i.i239, %if.end5.i.i.i.i.i238.cleanup_crit_edge
  %inc166 = add i32 %pass.0260, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cb) #8
  br i1 %tobool102.not, label %cleanup.do.end171_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

cleanup.do.end171_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end171

do.end171:                                        ; preds = %cleanup.do.end171_crit_edge, %cleanup.thread, %land.rhs.do.end171_crit_edge
  %miss.0257 = phi i32 [ %miss.0258, %cleanup.thread ], [ %miss.1, %cleanup.do.end171_crit_edge ], [ %miss.0258, %land.rhs.do.end171_crit_edge ]
  %pass.0255 = phi i32 [ %pass.0260, %cleanup.thread ], [ %inc166, %cleanup.do.end171_crit_edge ], [ %pass.0260, %land.rhs.do.end171_crit_edge ]
  %err.3 = phi i32 [ -12, %cleanup.thread ], [ %err.1, %cleanup.do.end171_crit_edge ], [ 0, %land.rhs.do.end171_crit_edge ]
  %68 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id25, align 4
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.71, i32 noundef %69, i32 noundef %pass.0255, i32 noundef %miss.0257) #11
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !149, !150, !151, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !168}
!llvm.named.register.sp = !{!169}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 549, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 550, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 551, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 552, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 553, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 554, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 555, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 556, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 557, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 558, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 559, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 560, i32 3}
!24 = !{ptr @dma_fence.tests, !25, !"tests", i1 false, i1 false}
!25 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 548, i32 30}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 564, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dma_fence._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @dma_fence._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 566, i32 16}
!34 = !{ptr @slab_fences, !35, !"slab_fences", i1 false, i1 false}
!35 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 17, i32 27}
!36 = !{ptr @mock_fence.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 91, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mock_ops, !40, !"mock_ops", i1 false, i1 false}
!40 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 76, i32 35}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 28, i32 9}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 55, i32 3}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 65, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 121, i32 3}
!49 = !{ptr @test_signaling._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @test_signaling._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 126, i32 3}
!53 = !{ptr @test_signaling._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @test_signaling._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 131, i32 3}
!57 = !{ptr @test_signaling._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @test_signaling._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 136, i32 3}
!61 = !{ptr @test_signaling._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @test_signaling._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 167, i32 3}
!65 = !{ptr @test_add_callback._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @test_add_callback._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 173, i32 3}
!69 = !{ptr @test_add_callback._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @test_add_callback._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 196, i32 3}
!73 = !{ptr @test_late_add_callback._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @test_late_add_callback._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 202, i32 3}
!77 = !{ptr @test_late_add_callback._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @test_late_add_callback._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @test_rm_callback._entry, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 223, i32 3}
!81 = !{ptr @test_rm_callback._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 228, i32 3}
!84 = !{ptr @test_rm_callback._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @test_rm_callback._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 234, i32 3}
!88 = !{ptr @test_rm_callback._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @test_rm_callback._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @test_late_rm_callback._entry, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 255, i32 3}
!92 = !{ptr @test_late_rm_callback._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @test_late_rm_callback._entry.43, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 261, i32 3}
!95 = !{ptr @test_late_rm_callback._entry_ptr.44, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 266, i32 3}
!98 = !{ptr @test_late_rm_callback._entry.45, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @test_late_rm_callback._entry_ptr.47, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 286, i32 3}
!102 = !{ptr @test_status._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @test_status._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 292, i32 3}
!106 = !{ptr @test_status._entry.49, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @test_status._entry_ptr.51, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 314, i32 3}
!110 = !{ptr @test_error._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @test_error._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 320, i32 3}
!114 = !{ptr @test_error._entry.53, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @test_error._entry_ptr.55, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/dma-fence.h", i32 545, i32 2}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 341, i32 3}
!120 = !{ptr @test_wait._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @test_wait._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 348, i32 3}
!124 = !{ptr @test_wait._entry.58, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @test_wait._entry_ptr.60, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @test_wait_timeout.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 376, i32 2}
!128 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @test_wait_timeout._entry, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 383, i32 3}
!131 = !{ptr @test_wait_timeout._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 391, i32 4}
!134 = !{ptr @test_wait_timeout._entry.62, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @test_wait_timeout._entry_ptr.64, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 394, i32 4}
!138 = !{ptr @test_wait_timeout._entry.65, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @test_wait_timeout._entry_ptr.67, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 417, i32 4}
!142 = !{ptr @test_stub._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @test_stub._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 525, i32 16}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 489, i32 4}
!148 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @thread_signal_callback._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @thread_signal_callback._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/dma-buf/st-dma-fence.c", i32 506, i32 2}
!157 = !{ptr @thread_signal_callback._entry.76, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @thread_signal_callback._entry_ptr.78, !156, !"_entry_ptr", i1 false, i1 false}
!159 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!160 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!161 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!163 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!164 = !{!"../include/linux/dma-fence.h", i32 329, i32 11}
!165 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!168 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!169 = !{!"sp"}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i64 2148287266}
!180 = !{i64 2148201730, i64 2148201762, i64 2148201791, i64 2148201825, i64 2148201856, i64 2148201879}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{i64 2149565984}
!183 = !{i8 0, i8 2}
!184 = !{i64 2148199265, i64 2148199297, i64 2148199326, i64 2148199360, i64 2148199391, i64 2148199414}
!185 = !{!"branch_weights", i32 1, i32 2000}
!186 = !{i64 2152382316}
!187 = !{i64 2152406389}
!188 = !{i64 2152446718}
!189 = !{i64 2152449378}
!190 = !{i64 2149257997}
!191 = !{i64 681471, i64 681495, i64 681516, i64 681533, i64 681550}
!192 = !{i64 2149258263}
!193 = !{i64 2152451598}
!194 = !{i64 2152464775}
