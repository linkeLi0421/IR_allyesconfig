; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/st-dma-fence-chain.c_pt.bc'
source_filename = "../drivers/dma-buf/st-dma-fence-chain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.subtest = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mock_fence = type { %struct.dma_fence, %struct.spinlock }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fence_chains = type { i32, ptr, ptr, ptr }
%struct.find_race = type { %struct.fence_chains, %struct.atomic_t }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@dma_fence_chain.tests = internal constant { [11 x %struct.subtest], [40 x i8] } { [11 x %struct.subtest] [%struct.subtest { ptr @sanitycheck, ptr @.str }, %struct.subtest { ptr @find_seqno, ptr @.str.1 }, %struct.subtest { ptr @find_signaled, ptr @.str.2 }, %struct.subtest { ptr @find_out_of_order, ptr @.str.3 }, %struct.subtest { ptr @find_gap, ptr @.str.4 }, %struct.subtest { ptr @find_race, ptr @.str.5 }, %struct.subtest { ptr @signal_forward, ptr @.str.6 }, %struct.subtest { ptr @signal_backward, ptr @.str.7 }, %struct.subtest { ptr @wait_forward, ptr @.str.8 }, %struct.subtest { ptr @wait_backward, ptr @.str.9 }, %struct.subtest { ptr @wait_random, ptr @.str.10 }], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sanitycheck\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"find_seqno\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"find_signaled\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"find_out_of_order\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"find_gap\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"find_race\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"signal_forward\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"signal_backward\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wait_forward\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wait_backward\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wait_random\00", [20 x i8] zeroinitializer }, align 32
@dma_fence_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016sizeof(dma_fence_chain)=%zu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma_fence_chain\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/dma-buf/st-dma-fence-chain.c\00", [59 x i8] zeroinitializer }, align 32
@dma_fence_chain._entry_ptr = internal global ptr @dma_fence_chain._entry, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mock_fence\00", [21 x i8] zeroinitializer }, align 32
@slab_fences = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mock_fence.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&f->lock\00", [23 x i8] zeroinitializer }, align 32
@mock_ops = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @mock_name, ptr @mock_name, ptr null, ptr null, ptr null, ptr @mock_fence_release, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mock\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@find_seqno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.13, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Reported %d for find_seqno(0)!\0A\00", [62 x i8] zeroinitializer }, align 32
@find_seqno._entry_ptr = internal global ptr @find_seqno._entry, section ".printk_index", align 4
@find_seqno._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.13, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Reported %d for find_seqno(%d:%d)!\0A\00", [58 x i8] zeroinitializer }, align 32
@find_seqno._entry_ptr.20 = internal global ptr @find_seqno._entry.18, section ".printk_index", align 4
@find_seqno._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.13, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Incorrect fence reported by find_seqno(%d:%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@find_seqno._entry_ptr.23 = internal global ptr @find_seqno._entry.21, section ".printk_index", align 4
@find_seqno._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.13, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Error reported for finding self\0A\00", [61 x i8] zeroinitializer }, align 32
@find_seqno._entry_ptr.26 = internal global ptr @find_seqno._entry.24, section ".printk_index", align 4
@find_seqno._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.13, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Incorrect fence reported by find self\0A\00", [55 x i8] zeroinitializer }, align 32
@find_seqno._entry_ptr.29 = internal global ptr @find_seqno._entry.27, section ".printk_index", align 4
@find_seqno._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.13, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013Error not reported for future fence: find_seqno(%d:%d)!\0A\00", [37 x i8] zeroinitializer }, align 32
@find_seqno._entry_ptr.32 = internal global ptr @find_seqno._entry.30, section ".printk_index", align 4
@find_seqno._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.13, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Error reported for previous fence!\0A\00", [58 x i8] zeroinitializer }, align 32
@find_seqno._entry_ptr.35 = internal global ptr @find_seqno._entry.33, section ".printk_index", align 4
@find_seqno._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.13, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@find_seqno._entry_ptr.37 = internal global ptr @find_seqno._entry.36, section ".printk_index", align 4
@find_signaled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.13, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Reported %d for find_seqno()!\0A\00", [63 x i8] zeroinitializer }, align 32
@find_signaled._entry_ptr = internal global ptr @find_signaled._entry, section ".printk_index", align 4
@find_signaled._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.13, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013Incorrect chain-fence.seqno:%lld reported for completed seqno:1\0A\00", [61 x i8] zeroinitializer }, align 32
@find_signaled._entry_ptr.41 = internal global ptr @find_signaled._entry.39, section ".printk_index", align 4
@find_signaled._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.13, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Reported %d for finding self!\0A\00", [63 x i8] zeroinitializer }, align 32
@find_signaled._entry_ptr.44 = internal global ptr @find_signaled._entry.42, section ".printk_index", align 4
@find_out_of_order._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.13, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@find_out_of_order._entry_ptr = internal global ptr @find_out_of_order._entry, section ".printk_index", align 4
@find_out_of_order._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.3, ptr @.str.13, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013Incorrect chain-fence.seqno:%lld reported for completed seqno:2\0A\00", [61 x i8] zeroinitializer }, align 32
@find_out_of_order._entry_ptr.47 = internal global ptr @find_out_of_order._entry.45, section ".printk_index", align 4
@find_gap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.13, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@find_gap._entry_ptr = internal global ptr @find_gap._entry, section ".printk_index", align 4
@find_gap._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.4, ptr @.str.13, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013Incorrect fence.seqno:%lld reported by find_seqno(%d:%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@find_gap._entry_ptr.50 = internal global ptr @find_gap._entry.48, section ".printk_index", align 4
@find_gap._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.13, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@find_gap._entry_ptr.52 = internal global ptr @find_gap._entry.51, section ".printk_index", align 4
@find_gap._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.13, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@find_gap._entry_ptr.54 = internal global ptr @find_gap._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmabuf/%d\00", [22 x i8] zeroinitializer }, align 32
@find_race._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.5, ptr @.str.13, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016Completed %lu cycles\0A\00", [40 x i8] zeroinitializer }, align 32
@find_race._entry_ptr = internal global ptr @find_race._entry, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__find_race._entry = internal constant %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.13, i32 404, ptr null, ptr null }, align 1
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Failed to find fence seqno:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__find_race\00", [20 x i8] zeroinitializer }, align 32
@__find_race._entry_ptr = internal global ptr @__find_race._entry, section ".printk_index", align 4
@__find_race._entry.59 = internal constant %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.13, i32 419, ptr null, ptr null }, align 1
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Reported an invalid fence for find-self:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@__find_race._entry_ptr.61 = internal global ptr @__find_race._entry.59, section ".printk_index", align 4
@signal_forward._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.6, ptr @.str.13, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013chain[%d] not signaled!\0A\00", [37 x i8] zeroinitializer }, align 32
@signal_forward._entry_ptr = internal global ptr @signal_forward._entry, section ".printk_index", align 4
@signal_forward._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.6, ptr @.str.13, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013chain[%d] is signaled!\0A\00", [38 x i8] zeroinitializer }, align 32
@signal_forward._entry_ptr.65 = internal global ptr @signal_forward._entry.63, section ".printk_index", align 4
@signal_backward._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.7, ptr @.str.13, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@signal_backward._entry_ptr = internal global ptr @signal_backward._entry, section ".printk_index", align 4
@signal_backward._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.7, ptr @.str.13, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013chain[%d] was not signaled!\0A\00", [33 x i8] zeroinitializer }, align 32
@signal_backward._entry_ptr.68 = internal global ptr @signal_backward._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dmabuf/wait\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"tests\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 678, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 679, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 680, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 681, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 682, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 683, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 684, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 685, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 686, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 687, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 688, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 689, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 693, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 696, i32 16 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"slab_fences\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 22, i32 27 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 55, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [9 x i8] c"mock_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 41, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 33, i32 9 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 192, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 201, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 206, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 216, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 220, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 229, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 239, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 243, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 271, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 276, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 283, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 309, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 321, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 353, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 358, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 370, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 374, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 459, i32 16 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 486, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 403, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 418, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 507, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 514, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 539, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 547, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private constant [40 x i8] c"../drivers/dma-buf/st-dma-fence-chain.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 579, i32 8 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__find_race._entry, ptr @__find_race._entry.59, ptr @__find_race._entry_ptr, ptr @__find_race._entry_ptr.61, ptr @dma_fence_chain._entry, ptr @dma_fence_chain._entry_ptr, ptr @find_gap._entry, ptr @find_gap._entry.48, ptr @find_gap._entry.51, ptr @find_gap._entry.53, ptr @find_gap._entry_ptr, ptr @find_gap._entry_ptr.50, ptr @find_gap._entry_ptr.52, ptr @find_gap._entry_ptr.54, ptr @find_out_of_order._entry, ptr @find_out_of_order._entry.45, ptr @find_out_of_order._entry_ptr, ptr @find_out_of_order._entry_ptr.47, ptr @find_race._entry, ptr @find_race._entry_ptr, ptr @find_seqno._entry, ptr @find_seqno._entry.18, ptr @find_seqno._entry.21, ptr @find_seqno._entry.24, ptr @find_seqno._entry.27, ptr @find_seqno._entry.30, ptr @find_seqno._entry.33, ptr @find_seqno._entry.36, ptr @find_seqno._entry_ptr, ptr @find_seqno._entry_ptr.20, ptr @find_seqno._entry_ptr.23, ptr @find_seqno._entry_ptr.26, ptr @find_seqno._entry_ptr.29, ptr @find_seqno._entry_ptr.32, ptr @find_seqno._entry_ptr.35, ptr @find_seqno._entry_ptr.37, ptr @find_signaled._entry, ptr @find_signaled._entry.39, ptr @find_signaled._entry.42, ptr @find_signaled._entry_ptr, ptr @find_signaled._entry_ptr.41, ptr @find_signaled._entry_ptr.44, ptr @signal_backward._entry, ptr @signal_backward._entry.66, ptr @signal_backward._entry_ptr, ptr @signal_backward._entry_ptr.68, ptr @signal_forward._entry, ptr @signal_forward._entry.63, ptr @signal_forward._entry_ptr, ptr @signal_forward._entry_ptr.65, ptr @dma_fence_chain.tests, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @slab_fences, ptr @mock_fence.__key, ptr @.str.15, ptr @mock_ops, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_fence_chain.tests to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_fence_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slab_fences to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_fence.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_seqno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_seqno._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_seqno._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_seqno._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_seqno._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_seqno._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_seqno._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_seqno._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_signaled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_signaled._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_signaled._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_out_of_order._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_out_of_order._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_gap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_gap._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_gap._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_gap._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_race._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_forward._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_forward._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_backward._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_backward._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_fence_chain() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 128) #13
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.14, i32 noundef 96, i32 noundef 8, i32 noundef 532480, ptr noundef null) #10
  store ptr %call1, ptr @slab_fences, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @__subtests(ptr noundef nonnull @.str.12, ptr noundef nonnull @dma_fence_chain.tests, i32 noundef 11, ptr noundef null) #10
  %0 = load ptr, ptr @slab_fences, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sanitycheck(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #10
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 128) #14
  %tobool.not.i12 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i12, label %if.end.if.then.i_crit_edge, label %if.then.i10.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i10.i:                                    ; preds = %if.end
  %refcount.i6.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i6.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i6.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i6.i, ptr %refcount.i6.i, i32 1, ptr elementtype(i32) %refcount.i6.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i8.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i8.i)
  %tobool1.not.i.i.i.i.i9.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i8.i, 0
  br i1 %tobool1.not.i.i.i.i.i9.i, label %if.then.i10.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge, label %if.else.i.i.i.i.i13.i, !prof !146

if.then.i10.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge: ; preds = %if.then.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i15.i

if.else.i.i.i.i.i13.i:                            ; preds = %if.then.i10.i
  %add.i.i.i.i.i11.i = add i32 %asmresult.i.i.i.i.i.i.i8.i, 1
  %3 = or i32 %add.i.i.i.i.i11.i, %asmresult.i.i.i.i.i.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i12.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i12.i, label %if.else.i.i.i.i.i13.i.dma_fence_get.exit16.i_crit_edge, label %if.else.i.i.i.i.i13.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge, !prof !147

if.else.i.i.i.i.i13.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge: ; preds = %if.else.i.i.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i15.i

if.else.i.i.i.i.i13.i.dma_fence_get.exit16.i_crit_edge: ; preds = %if.else.i.i.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit16.i

if.end15.sink.split.i.i.i.i.i15.i:                ; preds = %if.else.i.i.i.i.i13.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge, %if.then.i10.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge
  %.sink.i.i.i.i.i14.i = phi i32 [ 2, %if.then.i10.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge ], [ 1, %if.else.i.i.i.i.i13.i.if.end15.sink.split.i.i.i.i.i15.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i6.i, i32 noundef %.sink.i.i.i.i.i14.i) #10
  br label %dma_fence_get.exit16.i

dma_fence_get.exit16.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i15.i, %if.else.i.i.i.i.i13.i.dma_fence_get.exit16.i_crit_edge
  tail call void @dma_fence_chain_init(ptr noundef nonnull %call7.i.i.i, ptr noundef null, ptr noundef nonnull %call.i, i64 noundef 1) #10
  br label %if.then.i

if.then.i:                                        ; preds = %dma_fence_get.exit16.i, %if.end.if.then.i_crit_edge
  %call5 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call.i) #10
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge
  br i1 %tobool.not.i12, label %dma_fence_put.exit.cleanup_crit_edge, label %if.then.i20

dma_fence_put.exit.cleanup_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i20:                                      ; preds = %dma_fence_put.exit
  %refcount.i16 = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i16, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %refcount.i16, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i16, ptr %refcount.i16, i32 1, ptr elementtype(i32) %refcount.i16) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i18 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i18)
  %cmp.i.i.i.i.i19 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i18, 1
  br i1 %cmp.i.i.i.i.i19, label %if.then.i.i24, label %if.end5.i.i.i.i.i22

if.end5.i.i.i.i.i22:                              ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i18)
  %.not.i.i.i.i.i21 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i18, 0
  br i1 %.not.i.i.i.i.i21, label %if.end5.i.i.i.i.i22.cleanup_crit_edge, label %if.then10.i.i.i.i.i23, !prof !147

if.end5.i.i.i.i.i22.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i23:                            ; preds = %if.end5.i.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i16, i32 noundef 3) #10
  br label %cleanup

if.then.i.i24:                                    ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @dma_fence_release(ptr noundef %refcount.i16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i24, %if.then10.i.i.i.i.i23, %if.end5.i.i.i.i.i22.cleanup_crit_edge, %dma_fence_put.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %dma_fence_put.exit.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i22.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i23 ], [ 0, %if.then.i.i24 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @find_seqno(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %fc = alloca %struct.fence_chains, align 4
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fc) #10
  %0 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 3
  %2 = call ptr @memset(ptr %fc, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #10
  %call = call fastcc i32 @fence_chains_init(ptr noundef nonnull %fc, i32 noundef 64, ptr noundef nonnull @seqno_inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.dma_fence_get.exit_crit_edge, label %if.then.i

if.end.dma_fence_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !146

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !147

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

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end.dma_fence_get.exit_crit_edge
  %7 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %fence, align 4
  %call2 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef 0) #10
  %8 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fence, align 4
  %tobool.not.i124 = icmp eq ptr %9, null
  br i1 %tobool.not.i124, label %dma_fence_get.exit.dma_fence_put.exit_crit_edge, label %if.then.i127

dma_fence_get.exit.dma_fence_put.exit_crit_edge:  ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i127:                                     ; preds = %dma_fence_get.exit
  %refcount.i125 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 6
  %call.i.i.i.i.i.i.i126 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i125, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i125, i32 1, i32 3, i32 1) #10
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i125, ptr %refcount.i125, i32 1, ptr elementtype(i32) %refcount.i125) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i128 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i128, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i125, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i125) #10
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %dma_fence_get.exit.dma_fence_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %dma_fence_put.exit
  %11 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp254.not = icmp eq i32 %12, 0
  br i1 %cmp254.not, label %for.cond.preheader.err95_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.err95_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %err95

do.end:                                           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call2) #13
  br label %err95

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %13 = phi i32 [ %54, %for.inc.for.body_crit_edge ], [ %12, %for.cond.preheader.for.body_crit_edge ]
  %i.0255 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %tobool.not.i129 = icmp eq ptr %15, null
  br i1 %tobool.not.i129, label %for.body.dma_fence_get.exit140_crit_edge, label %if.then.i134

for.body.dma_fence_get.exit140_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit140

if.then.i134:                                     ; preds = %for.body
  %refcount.i130 = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 6
  %call.i.i.i.i.i.i.i131 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i130, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount.i130, i32 1, i32 3, i32 1) #10
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i130, ptr %refcount.i130, i32 1, ptr elementtype(i32) %refcount.i130) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i132 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i132)
  %tobool1.not.i.i.i.i.i133 = icmp eq i32 %asmresult.i.i.i.i.i.i.i132, 0
  br i1 %tobool1.not.i.i.i.i.i133, label %if.then.i134.if.end15.sink.split.i.i.i.i.i139_crit_edge, label %if.else.i.i.i.i.i137, !prof !146

if.then.i134.if.end15.sink.split.i.i.i.i.i139_crit_edge: ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i139

if.else.i.i.i.i.i137:                             ; preds = %if.then.i134
  %add.i.i.i.i.i135 = add i32 %asmresult.i.i.i.i.i.i.i132, 1
  %17 = or i32 %add.i.i.i.i.i135, %asmresult.i.i.i.i.i.i.i132
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i136 = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i136, label %if.else.i.i.i.i.i137.dma_fence_get.exit140_crit_edge, label %if.else.i.i.i.i.i137.if.end15.sink.split.i.i.i.i.i139_crit_edge, !prof !147

if.else.i.i.i.i.i137.if.end15.sink.split.i.i.i.i.i139_crit_edge: ; preds = %if.else.i.i.i.i.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i139

if.else.i.i.i.i.i137.dma_fence_get.exit140_crit_edge: ; preds = %if.else.i.i.i.i.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit140

if.end15.sink.split.i.i.i.i.i139:                 ; preds = %if.else.i.i.i.i.i137.if.end15.sink.split.i.i.i.i.i139_crit_edge, %if.then.i134.if.end15.sink.split.i.i.i.i.i139_crit_edge
  %.sink.i.i.i.i.i138 = phi i32 [ 2, %if.then.i134.if.end15.sink.split.i.i.i.i.i139_crit_edge ], [ 1, %if.else.i.i.i.i.i137.if.end15.sink.split.i.i.i.i.i139_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i130, i32 noundef %.sink.i.i.i.i.i138) #10
  br label %dma_fence_get.exit140

dma_fence_get.exit140:                            ; preds = %if.end15.sink.split.i.i.i.i.i139, %if.else.i.i.i.i.i137.dma_fence_get.exit140_crit_edge, %for.body.dma_fence_get.exit140_crit_edge
  %18 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %fence, align 4
  %add = add nuw i32 %i.0255, 1
  %conv = sext i32 %add to i64
  %call9 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef %conv) #10
  %19 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fence, align 4
  %tobool.not.i141 = icmp eq ptr %20, null
  br i1 %tobool.not.i141, label %dma_fence_get.exit140.dma_fence_put.exit151_crit_edge, label %if.then.i146

dma_fence_get.exit140.dma_fence_put.exit151_crit_edge: ; preds = %dma_fence_get.exit140
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit151

if.then.i146:                                     ; preds = %dma_fence_get.exit140
  %refcount.i142 = getelementptr inbounds %struct.dma_fence, ptr %20, i32 0, i32 6
  %call.i.i.i.i.i.i.i143 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i142, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i142, i32 1, i32 3, i32 1) #10
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i142, ptr %refcount.i142, i32 1, ptr elementtype(i32) %refcount.i142) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i144 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i144)
  %cmp.i.i.i.i.i145 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i144, 1
  br i1 %cmp.i.i.i.i.i145, label %if.then.i.i150, label %if.end5.i.i.i.i.i148

if.end5.i.i.i.i.i148:                             ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i144)
  %.not.i.i.i.i.i147 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i144, 0
  br i1 %.not.i.i.i.i.i147, label %if.end5.i.i.i.i.i148.dma_fence_put.exit151_crit_edge, label %if.then10.i.i.i.i.i149, !prof !147

if.end5.i.i.i.i.i148.dma_fence_put.exit151_crit_edge: ; preds = %if.end5.i.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit151

if.then10.i.i.i.i.i149:                           ; preds = %if.end5.i.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i142, i32 noundef 3) #10
  br label %dma_fence_put.exit151

if.then.i.i150:                                   ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i142) #10
  br label %dma_fence_put.exit151

dma_fence_put.exit151:                            ; preds = %if.then.i.i150, %if.then10.i.i.i.i.i149, %if.end5.i.i.i.i.i148.dma_fence_put.exit151_crit_edge, %dma_fence_get.exit140.dma_fence_put.exit151_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end20, label %do.end14

do.end14:                                         ; preds = %dma_fence_put.exit151
  call void @__sanitizer_cov_trace_pc() #12
  %add17 = add i32 %13, 1
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call9, i32 noundef %add17, i32 noundef %add) #13
  br label %err95

if.end20:                                         ; preds = %dma_fence_put.exit151
  %22 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fence, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr ptr, ptr %25, i32 %i.0255
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %cmp21.not = icmp eq ptr %23, %27
  br i1 %cmp21.not, label %if.end32, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %add29 = add i32 %13, 1
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %add29, i32 noundef %add) #13
  br label %err95

if.end32:                                         ; preds = %if.end20
  %tobool.not.i152 = icmp eq ptr %23, null
  br i1 %tobool.not.i152, label %if.end32.dma_fence_get.exit163_crit_edge, label %if.then.i157

if.end32.dma_fence_get.exit163_crit_edge:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit163

if.then.i157:                                     ; preds = %if.end32
  %refcount.i153 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 6
  %call.i.i.i.i.i.i.i154 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i153, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount.i153, i32 1, i32 3, i32 1) #10
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i153, ptr %refcount.i153, i32 1, ptr elementtype(i32) %refcount.i153) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i155 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i155)
  %tobool1.not.i.i.i.i.i156 = icmp eq i32 %asmresult.i.i.i.i.i.i.i155, 0
  br i1 %tobool1.not.i.i.i.i.i156, label %if.then.i157.if.end15.sink.split.i.i.i.i.i162_crit_edge, label %if.else.i.i.i.i.i160, !prof !146

if.then.i157.if.end15.sink.split.i.i.i.i.i162_crit_edge: ; preds = %if.then.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i162

if.else.i.i.i.i.i160:                             ; preds = %if.then.i157
  %add.i.i.i.i.i158 = add i32 %asmresult.i.i.i.i.i.i.i155, 1
  %29 = or i32 %add.i.i.i.i.i158, %asmresult.i.i.i.i.i.i.i155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i.i159 = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i.i159, label %if.else.i.i.i.i.i160.dma_fence_get.exit163_crit_edge, label %if.else.i.i.i.i.i160.if.end15.sink.split.i.i.i.i.i162_crit_edge, !prof !147

if.else.i.i.i.i.i160.if.end15.sink.split.i.i.i.i.i162_crit_edge: ; preds = %if.else.i.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i162

if.else.i.i.i.i.i160.dma_fence_get.exit163_crit_edge: ; preds = %if.else.i.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit163

if.end15.sink.split.i.i.i.i.i162:                 ; preds = %if.else.i.i.i.i.i160.if.end15.sink.split.i.i.i.i.i162_crit_edge, %if.then.i157.if.end15.sink.split.i.i.i.i.i162_crit_edge
  %.sink.i.i.i.i.i161 = phi i32 [ 2, %if.then.i157.if.end15.sink.split.i.i.i.i.i162_crit_edge ], [ 1, %if.else.i.i.i.i.i160.if.end15.sink.split.i.i.i.i.i162_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i153, i32 noundef %.sink.i.i.i.i.i161) #10
  br label %dma_fence_get.exit163

dma_fence_get.exit163:                            ; preds = %if.end15.sink.split.i.i.i.i.i162, %if.else.i.i.i.i.i160.dma_fence_get.exit163_crit_edge, %if.end32.dma_fence_get.exit163_crit_edge
  %call36 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef %conv) #10
  %30 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fence, align 4
  %tobool.not.i164 = icmp eq ptr %31, null
  br i1 %tobool.not.i164, label %dma_fence_get.exit163.dma_fence_put.exit174_crit_edge, label %if.then.i169

dma_fence_get.exit163.dma_fence_put.exit174_crit_edge: ; preds = %dma_fence_get.exit163
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit174

if.then.i169:                                     ; preds = %dma_fence_get.exit163
  %refcount.i165 = getelementptr inbounds %struct.dma_fence, ptr %31, i32 0, i32 6
  %call.i.i.i.i.i.i.i166 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i165, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i165, i32 1, i32 3, i32 1) #10
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i165, ptr %refcount.i165, i32 1, ptr elementtype(i32) %refcount.i165) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i167 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i167)
  %cmp.i.i.i.i.i168 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i167, 1
  br i1 %cmp.i.i.i.i.i168, label %if.then.i.i173, label %if.end5.i.i.i.i.i171

if.end5.i.i.i.i.i171:                             ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i167)
  %.not.i.i.i.i.i170 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i167, 0
  br i1 %.not.i.i.i.i.i170, label %if.end5.i.i.i.i.i171.dma_fence_put.exit174_crit_edge, label %if.then10.i.i.i.i.i172, !prof !147

if.end5.i.i.i.i.i171.dma_fence_put.exit174_crit_edge: ; preds = %if.end5.i.i.i.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit174

if.then10.i.i.i.i.i172:                           ; preds = %if.end5.i.i.i.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i165, i32 noundef 3) #10
  br label %dma_fence_put.exit174

if.then.i.i173:                                   ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i165) #10
  br label %dma_fence_put.exit174

dma_fence_put.exit174:                            ; preds = %if.then.i.i173, %if.then10.i.i.i.i.i172, %if.end5.i.i.i.i.i171.dma_fence_put.exit174_crit_edge, %dma_fence_get.exit163.dma_fence_put.exit174_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %dma_fence_put.exit174
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %err95

if.end44:                                         ; preds = %dma_fence_put.exit174
  %33 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fence, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %cmp47.not = icmp eq ptr %34, %36
  br i1 %cmp47.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %err95

if.end55:                                         ; preds = %if.end44
  %tobool.not.i175 = icmp eq ptr %34, null
  br i1 %tobool.not.i175, label %if.end55.dma_fence_get.exit186_crit_edge, label %if.then.i180

if.end55.dma_fence_get.exit186_crit_edge:         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit186

if.then.i180:                                     ; preds = %if.end55
  %refcount.i176 = getelementptr inbounds %struct.dma_fence, ptr %34, i32 0, i32 6
  %call.i.i.i.i.i.i.i177 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i176, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount.i176, i32 1, i32 3, i32 1) #10
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i176, ptr %refcount.i176, i32 1, ptr elementtype(i32) %refcount.i176) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i178 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i178)
  %tobool1.not.i.i.i.i.i179 = icmp eq i32 %asmresult.i.i.i.i.i.i.i178, 0
  br i1 %tobool1.not.i.i.i.i.i179, label %if.then.i180.if.end15.sink.split.i.i.i.i.i185_crit_edge, label %if.else.i.i.i.i.i183, !prof !146

if.then.i180.if.end15.sink.split.i.i.i.i.i185_crit_edge: ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i185

if.else.i.i.i.i.i183:                             ; preds = %if.then.i180
  %add.i.i.i.i.i181 = add i32 %asmresult.i.i.i.i.i.i.i178, 1
  %38 = or i32 %add.i.i.i.i.i181, %asmresult.i.i.i.i.i.i.i178
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i.i182 = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i.i182, label %if.else.i.i.i.i.i183.dma_fence_get.exit186_crit_edge, label %if.else.i.i.i.i.i183.if.end15.sink.split.i.i.i.i.i185_crit_edge, !prof !147

if.else.i.i.i.i.i183.if.end15.sink.split.i.i.i.i.i185_crit_edge: ; preds = %if.else.i.i.i.i.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i185

if.else.i.i.i.i.i183.dma_fence_get.exit186_crit_edge: ; preds = %if.else.i.i.i.i.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit186

if.end15.sink.split.i.i.i.i.i185:                 ; preds = %if.else.i.i.i.i.i183.if.end15.sink.split.i.i.i.i.i185_crit_edge, %if.then.i180.if.end15.sink.split.i.i.i.i.i185_crit_edge
  %.sink.i.i.i.i.i184 = phi i32 [ 2, %if.then.i180.if.end15.sink.split.i.i.i.i.i185_crit_edge ], [ 1, %if.else.i.i.i.i.i183.if.end15.sink.split.i.i.i.i.i185_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i176, i32 noundef %.sink.i.i.i.i.i184) #10
  br label %dma_fence_get.exit186

dma_fence_get.exit186:                            ; preds = %if.end15.sink.split.i.i.i.i.i185, %if.else.i.i.i.i.i183.dma_fence_get.exit186_crit_edge, %if.end55.dma_fence_get.exit186_crit_edge
  %add57 = add i32 %i.0255, 2
  %conv58 = sext i32 %add57 to i64
  %call59 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef %conv58) #10
  %39 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fence, align 4
  %tobool.not.i187 = icmp eq ptr %40, null
  br i1 %tobool.not.i187, label %dma_fence_get.exit186.dma_fence_put.exit197_crit_edge, label %if.then.i192

dma_fence_get.exit186.dma_fence_put.exit197_crit_edge: ; preds = %dma_fence_get.exit186
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit197

if.then.i192:                                     ; preds = %dma_fence_get.exit186
  %refcount.i188 = getelementptr inbounds %struct.dma_fence, ptr %40, i32 0, i32 6
  %call.i.i.i.i.i.i.i189 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i188, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i188, i32 1, i32 3, i32 1) #10
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i188, ptr %refcount.i188, i32 1, ptr elementtype(i32) %refcount.i188) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i190 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i190)
  %cmp.i.i.i.i.i191 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i190, 1
  br i1 %cmp.i.i.i.i.i191, label %if.then.i.i196, label %if.end5.i.i.i.i.i194

if.end5.i.i.i.i.i194:                             ; preds = %if.then.i192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i190)
  %.not.i.i.i.i.i193 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i190, 0
  br i1 %.not.i.i.i.i.i193, label %if.end5.i.i.i.i.i194.dma_fence_put.exit197_crit_edge, label %if.then10.i.i.i.i.i195, !prof !147

if.end5.i.i.i.i.i194.dma_fence_put.exit197_crit_edge: ; preds = %if.end5.i.i.i.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit197

if.then10.i.i.i.i.i195:                           ; preds = %if.end5.i.i.i.i.i194
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i188, i32 noundef 3) #10
  br label %dma_fence_put.exit197

if.then.i.i196:                                   ; preds = %if.then.i192
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i188) #10
  br label %dma_fence_put.exit197

dma_fence_put.exit197:                            ; preds = %if.then.i.i196, %if.then10.i.i.i.i.i195, %if.end5.i.i.i.i.i194.dma_fence_put.exit197_crit_edge, %dma_fence_get.exit186.dma_fence_put.exit197_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.end64, label %if.end69

do.end64:                                         ; preds = %dma_fence_put.exit197
  call void @__sanitizer_cov_trace_pc() #12
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %add, i32 noundef %add57) #13
  br label %err95

if.end69:                                         ; preds = %dma_fence_put.exit197
  %42 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fence, align 4
  %tobool.not.i198 = icmp eq ptr %43, null
  br i1 %tobool.not.i198, label %if.end69.dma_fence_get.exit209_crit_edge, label %if.then.i203

if.end69.dma_fence_get.exit209_crit_edge:         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit209

if.then.i203:                                     ; preds = %if.end69
  %refcount.i199 = getelementptr inbounds %struct.dma_fence, ptr %43, i32 0, i32 6
  %call.i.i.i.i.i.i.i200 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i199, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount.i199, i32 1, i32 3, i32 1) #10
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i199, ptr %refcount.i199, i32 1, ptr elementtype(i32) %refcount.i199) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i201 = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i201)
  %tobool1.not.i.i.i.i.i202 = icmp eq i32 %asmresult.i.i.i.i.i.i.i201, 0
  br i1 %tobool1.not.i.i.i.i.i202, label %if.then.i203.if.end15.sink.split.i.i.i.i.i208_crit_edge, label %if.else.i.i.i.i.i206, !prof !146

if.then.i203.if.end15.sink.split.i.i.i.i.i208_crit_edge: ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i208

if.else.i.i.i.i.i206:                             ; preds = %if.then.i203
  %add.i.i.i.i.i204 = add i32 %asmresult.i.i.i.i.i.i.i201, 1
  %45 = or i32 %add.i.i.i.i.i204, %asmresult.i.i.i.i.i.i.i201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i.i205 = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i.i205, label %if.else.i.i.i.i.i206.dma_fence_get.exit209_crit_edge, label %if.else.i.i.i.i.i206.if.end15.sink.split.i.i.i.i.i208_crit_edge, !prof !147

if.else.i.i.i.i.i206.if.end15.sink.split.i.i.i.i.i208_crit_edge: ; preds = %if.else.i.i.i.i.i206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i208

if.else.i.i.i.i.i206.dma_fence_get.exit209_crit_edge: ; preds = %if.else.i.i.i.i.i206
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit209

if.end15.sink.split.i.i.i.i.i208:                 ; preds = %if.else.i.i.i.i.i206.if.end15.sink.split.i.i.i.i.i208_crit_edge, %if.then.i203.if.end15.sink.split.i.i.i.i.i208_crit_edge
  %.sink.i.i.i.i.i207 = phi i32 [ 2, %if.then.i203.if.end15.sink.split.i.i.i.i.i208_crit_edge ], [ 1, %if.else.i.i.i.i.i206.if.end15.sink.split.i.i.i.i.i208_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i199, i32 noundef %.sink.i.i.i.i.i207) #10
  br label %dma_fence_get.exit209

dma_fence_get.exit209:                            ; preds = %if.end15.sink.split.i.i.i.i.i208, %if.else.i.i.i.i.i206.dma_fence_get.exit209_crit_edge, %if.end69.dma_fence_get.exit209_crit_edge
  %conv71 = sext i32 %i.0255 to i64
  %call72 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef %conv71) #10
  %46 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fence, align 4
  %tobool.not.i210 = icmp eq ptr %47, null
  br i1 %tobool.not.i210, label %dma_fence_get.exit209.dma_fence_put.exit220_crit_edge, label %if.then.i215

dma_fence_get.exit209.dma_fence_put.exit220_crit_edge: ; preds = %dma_fence_get.exit209
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit220

if.then.i215:                                     ; preds = %dma_fence_get.exit209
  %refcount.i211 = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 6
  %call.i.i.i.i.i.i.i212 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i211, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i211, i32 1, i32 3, i32 1) #10
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i211, ptr %refcount.i211, i32 1, ptr elementtype(i32) %refcount.i211) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i213 = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i213)
  %cmp.i.i.i.i.i214 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i213, 1
  br i1 %cmp.i.i.i.i.i214, label %if.then.i.i219, label %if.end5.i.i.i.i.i217

if.end5.i.i.i.i.i217:                             ; preds = %if.then.i215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i213)
  %.not.i.i.i.i.i216 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i213, 0
  br i1 %.not.i.i.i.i.i216, label %if.end5.i.i.i.i.i217.dma_fence_put.exit220_crit_edge, label %if.then10.i.i.i.i.i218, !prof !147

if.end5.i.i.i.i.i217.dma_fence_put.exit220_crit_edge: ; preds = %if.end5.i.i.i.i.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit220

if.then10.i.i.i.i.i218:                           ; preds = %if.end5.i.i.i.i.i217
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i211, i32 noundef 3) #10
  br label %dma_fence_put.exit220

if.then.i.i219:                                   ; preds = %if.then.i215
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i211) #10
  br label %dma_fence_put.exit220

dma_fence_put.exit220:                            ; preds = %if.then.i.i219, %if.then10.i.i.i.i.i218, %if.end5.i.i.i.i.i217.dma_fence_put.exit220_crit_edge, %dma_fence_get.exit209.dma_fence_put.exit220_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end80, label %do.end77

do.end77:                                         ; preds = %dma_fence_put.exit220
  call void @__sanitizer_cov_trace_pc() #12
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %err95

if.end80:                                         ; preds = %dma_fence_put.exit220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0255)
  %cmp81 = icmp sgt i32 %i.0255, 0
  br i1 %cmp81, label %land.lhs.true, label %if.end80.for.inc_crit_edge

if.end80.for.inc_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end80
  %49 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fence, align 4
  %sub = add nsw i32 %i.0255, -1
  %arrayidx84 = getelementptr ptr, ptr %25, i32 %sub
  %51 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx84, align 4
  %cmp85.not = icmp eq ptr %50, %52
  br i1 %cmp85.not, label %land.lhs.true.for.inc_crit_edge, label %do.end90

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end90:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %add, i32 noundef %i.0255) #13
  br label %err95

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end80.for.inc_crit_edge
  %53 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fc, align 4
  %cmp = icmp ult i32 %add, %54
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.err95_crit_edge

for.inc.err95_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %err95

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

err95:                                            ; preds = %for.inc.err95_crit_edge, %do.end90, %do.end77, %do.end64, %do.end52, %do.end41, %do.end26, %do.end14, %do.end, %for.cond.preheader.err95_crit_edge
  %err.1 = phi i32 [ %call2, %do.end ], [ %call9, %do.end14 ], [ -22, %do.end26 ], [ %call36, %do.end41 ], [ -22, %do.end52 ], [ %call72, %do.end77 ], [ -22, %do.end90 ], [ -22, %do.end64 ], [ 0, %for.cond.preheader.err95_crit_edge ], [ 0, %for.inc.err95_crit_edge ]
  call fastcc void @fence_chains_fini(ptr noundef nonnull %fc)
  br label %cleanup

cleanup:                                          ; preds = %err95, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err95 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @find_signaled(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %fc = alloca %struct.fence_chains, align 4
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fc) #10
  %0 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 2
  %1 = call ptr @memset(ptr %fc, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #10
  %call = call fastcc i32 @fence_chains_init(ptr noundef nonnull %fc, i32 noundef 2, ptr noundef nonnull @seqno_inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1 = tail call i32 @dma_fence_signal(ptr noundef %7) #10
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.dma_fence_get.exit_crit_edge, label %if.then.i

if.end.dma_fence_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !146

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !147

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

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end.dma_fence_get.exit_crit_edge
  %12 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %fence, align 4
  %call3 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef 1) #10
  %13 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fence, align 4
  %tobool.not.i36 = icmp eq ptr %14, null
  br i1 %tobool.not.i36, label %dma_fence_get.exit.dma_fence_put.exit_crit_edge, label %if.then.i39

dma_fence_get.exit.dma_fence_put.exit_crit_edge:  ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i39:                                      ; preds = %dma_fence_get.exit
  %refcount.i37 = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 6
  %call.i.i.i.i.i.i.i38 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i37, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i37, i32 1, i32 3, i32 1) #10
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i37, ptr %refcount.i37, i32 1, ptr elementtype(i32) %refcount.i37) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i40 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i40, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i37, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i37) #10
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %dma_fence_get.exit.dma_fence_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %call3) #13
  br label %err27

if.end7:                                          ; preds = %dma_fence_put.exit
  %16 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fence, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %if.end7.err27_crit_edge, label %land.lhs.true

if.end7.err27_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %err27

land.lhs.true:                                    ; preds = %if.end7
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %cmp.not = icmp eq ptr %17, %21
  br i1 %cmp.not, label %land.lhs.true.err27_crit_edge, label %do.end13

land.lhs.true.err27_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %err27

do.end13:                                         ; preds = %land.lhs.true
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 4
  %22 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %seqno, align 8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i64 noundef %23) #13
  %24 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fence, align 4
  %call16 = call fastcc ptr @dma_fence_get(ptr noundef %25)
  %call17 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef 1) #10
  %26 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fence, align 4
  call fastcc void @dma_fence_put(ptr noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end13.err27_crit_edge, label %do.end22

do.end13.err27_crit_edge:                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %err27

do.end22:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call17) #13
  br label %err27

err27:                                            ; preds = %do.end22, %do.end13.err27_crit_edge, %land.lhs.true.err27_crit_edge, %if.end7.err27_crit_edge, %do.end
  %err.0 = phi i32 [ %call3, %do.end ], [ 0, %land.lhs.true.err27_crit_edge ], [ 0, %if.end7.err27_crit_edge ], [ -22, %do.end22 ], [ -22, %do.end13.err27_crit_edge ]
  call fastcc void @fence_chains_fini(ptr noundef nonnull %fc)
  br label %cleanup

cleanup:                                          ; preds = %err27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err27 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @find_out_of_order(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %fc = alloca %struct.fence_chains, align 4
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fc) #10
  %0 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 2
  %1 = call ptr @memset(ptr %fc, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #10
  %call = call fastcc i32 @fence_chains_init(ptr noundef nonnull %fc, i32 noundef 3, ptr noundef nonnull @seqno_inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @dma_fence_signal(ptr noundef %7) #10
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.dma_fence_get.exit_crit_edge, label %if.then.i

if.end.dma_fence_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !146

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !147

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

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end.dma_fence_get.exit_crit_edge
  %12 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %fence, align 4
  %call3 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef 2) #10
  %13 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fence, align 4
  %tobool.not.i24 = icmp eq ptr %14, null
  br i1 %tobool.not.i24, label %dma_fence_get.exit.dma_fence_put.exit_crit_edge, label %if.then.i27

dma_fence_get.exit.dma_fence_put.exit_crit_edge:  ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i27:                                      ; preds = %dma_fence_get.exit
  %refcount.i25 = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 6
  %call.i.i.i.i.i.i.i26 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i25, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i25, i32 1, i32 3, i32 1) #10
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i25, ptr %refcount.i25, i32 1, ptr elementtype(i32) %refcount.i25) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i28 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i28, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i25, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i25) #10
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %dma_fence_get.exit.dma_fence_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %call3) #13
  br label %err17

if.end7:                                          ; preds = %dma_fence_put.exit
  %16 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fence, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %cmp.not = icmp eq ptr %17, %21
  br i1 %cmp.not, label %if.end7.err17_crit_edge, label %do.end12

if.end7.err17_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %err17

do.end12:                                         ; preds = %if.end7
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %do.end12.cond.end_crit_edge, label %cond.true

do.end12.cond.end_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 4
  %22 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %seqno, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end12.cond.end_crit_edge
  %cond = phi i64 [ %23, %cond.true ], [ 0, %do.end12.cond.end_crit_edge ]
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i64 noundef %cond) #13
  br label %err17

err17:                                            ; preds = %cond.end, %if.end7.err17_crit_edge, %do.end
  %err.0 = phi i32 [ %call3, %do.end ], [ -22, %cond.end ], [ 0, %if.end7.err17_crit_edge ]
  call fastcc void @fence_chains_fini(ptr noundef nonnull %fc)
  br label %cleanup

cleanup:                                          ; preds = %err17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err17 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @find_gap(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %fc = alloca %struct.fence_chains, align 4
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fc) #10
  %0 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 3
  %2 = call ptr @memset(ptr %fc, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #10
  %3 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !151
  %call = call fastcc i32 @fence_chains_init(ptr noundef nonnull %fc, i32 noundef 64, ptr noundef nonnull @seqno_inc2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp106.not = icmp eq i32 %5, 0
  br i1 %cmp106.not, label %for.cond.preheader.err48_crit_edge, label %for.body.lr.ph

for.cond.preheader.err48_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %err48

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %if.end36
  %inc = add nuw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.err48_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.err48_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %err48

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  br i1 %tobool.not.i, label %for.body.dma_fence_get.exit_crit_edge, label %if.then.i

for.body.dma_fence_get.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !146

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !147

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %for.body.dma_fence_get.exit_crit_edge
  %10 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %fence, align 4
  %mul = shl i32 %i.0107, 1
  %add = or i32 %mul, 1
  %conv = sext i32 %add to i64
  %call2 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef %conv) #10
  %11 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fence, align 4
  %tobool.not.i64 = icmp eq ptr %12, null
  br i1 %tobool.not.i64, label %dma_fence_get.exit.dma_fence_put.exit_crit_edge, label %if.then.i67

dma_fence_get.exit.dma_fence_put.exit_crit_edge:  ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i67:                                      ; preds = %dma_fence_get.exit
  %refcount.i65 = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 6
  %call.i.i.i.i.i.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i65, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i65, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i65, ptr %refcount.i65, i32 1, ptr elementtype(i32) %refcount.i65) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i68 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i68, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i65, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i65) #10
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %dma_fence_get.exit.dma_fence_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end

do.end:                                           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add6 = add i32 %5, 1
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2, i32 noundef %add6, i32 noundef %add) #13
  br label %err48

if.end10:                                         ; preds = %dma_fence_put.exit
  %14 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fence, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.0107
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %cmp11.not = icmp eq ptr %15, %19
  br i1 %cmp11.not, label %if.end23, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %seqno, align 8
  %add19 = add i32 %5, 1
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i64 noundef %21, i32 noundef %add19, i32 noundef %add) #13
  br label %err48

if.end23:                                         ; preds = %if.end10
  %tobool.not.i69 = icmp eq ptr %15, null
  br i1 %tobool.not.i69, label %if.end23.dma_fence_get.exit80_crit_edge, label %if.then.i74

if.end23.dma_fence_get.exit80_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit80

if.then.i74:                                      ; preds = %if.end23
  %refcount.i70 = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 6
  %call.i.i.i.i.i.i.i71 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i70, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount.i70, i32 1, i32 3, i32 1) #10
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i70, ptr %refcount.i70, i32 1, ptr elementtype(i32) %refcount.i70) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i72 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i72)
  %tobool1.not.i.i.i.i.i73 = icmp eq i32 %asmresult.i.i.i.i.i.i.i72, 0
  br i1 %tobool1.not.i.i.i.i.i73, label %if.then.i74.if.end15.sink.split.i.i.i.i.i79_crit_edge, label %if.else.i.i.i.i.i77, !prof !146

if.then.i74.if.end15.sink.split.i.i.i.i.i79_crit_edge: ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i79

if.else.i.i.i.i.i77:                              ; preds = %if.then.i74
  %add.i.i.i.i.i75 = add i32 %asmresult.i.i.i.i.i.i.i72, 1
  %23 = or i32 %add.i.i.i.i.i75, %asmresult.i.i.i.i.i.i.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i.i76 = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i.i76, label %if.else.i.i.i.i.i77.dma_fence_get.exit80_crit_edge, label %if.else.i.i.i.i.i77.if.end15.sink.split.i.i.i.i.i79_crit_edge, !prof !147

if.else.i.i.i.i.i77.if.end15.sink.split.i.i.i.i.i79_crit_edge: ; preds = %if.else.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i79

if.else.i.i.i.i.i77.dma_fence_get.exit80_crit_edge: ; preds = %if.else.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit80

if.end15.sink.split.i.i.i.i.i79:                  ; preds = %if.else.i.i.i.i.i77.if.end15.sink.split.i.i.i.i.i79_crit_edge, %if.then.i74.if.end15.sink.split.i.i.i.i.i79_crit_edge
  %.sink.i.i.i.i.i78 = phi i32 [ 2, %if.then.i74.if.end15.sink.split.i.i.i.i.i79_crit_edge ], [ 1, %if.else.i.i.i.i.i77.if.end15.sink.split.i.i.i.i.i79_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i70, i32 noundef %.sink.i.i.i.i.i78) #10
  br label %dma_fence_get.exit80

dma_fence_get.exit80:                             ; preds = %if.end15.sink.split.i.i.i.i.i79, %if.else.i.i.i.i.i77.dma_fence_get.exit80_crit_edge, %if.end23.dma_fence_get.exit80_crit_edge
  %add26 = add i32 %mul, 2
  %conv27 = sext i32 %add26 to i64
  %call28 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef %conv27) #10
  %24 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fence, align 4
  %tobool.not.i81 = icmp eq ptr %25, null
  br i1 %tobool.not.i81, label %dma_fence_get.exit80.dma_fence_put.exit91_crit_edge, label %if.then.i86

dma_fence_get.exit80.dma_fence_put.exit91_crit_edge: ; preds = %dma_fence_get.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit91

if.then.i86:                                      ; preds = %dma_fence_get.exit80
  %refcount.i82 = getelementptr inbounds %struct.dma_fence, ptr %25, i32 0, i32 6
  %call.i.i.i.i.i.i.i83 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i82, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i82, i32 1, i32 3, i32 1) #10
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i82, ptr %refcount.i82, i32 1, ptr elementtype(i32) %refcount.i82) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i84 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i84)
  %cmp.i.i.i.i.i85 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i84, 1
  br i1 %cmp.i.i.i.i.i85, label %if.then.i.i90, label %if.end5.i.i.i.i.i88

if.end5.i.i.i.i.i88:                              ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i84)
  %.not.i.i.i.i.i87 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i84, 0
  br i1 %.not.i.i.i.i.i87, label %if.end5.i.i.i.i.i88.dma_fence_put.exit91_crit_edge, label %if.then10.i.i.i.i.i89, !prof !147

if.end5.i.i.i.i.i88.dma_fence_put.exit91_crit_edge: ; preds = %if.end5.i.i.i.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit91

if.then10.i.i.i.i.i89:                            ; preds = %if.end5.i.i.i.i.i88
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i82, i32 noundef 3) #10
  br label %dma_fence_put.exit91

if.then.i.i90:                                    ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i82) #10
  br label %dma_fence_put.exit91

dma_fence_put.exit91:                             ; preds = %if.then.i.i90, %if.then10.i.i.i.i.i89, %if.end5.i.i.i.i.i88.dma_fence_put.exit91_crit_edge, %dma_fence_get.exit80.dma_fence_put.exit91_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %dma_fence_put.exit91
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %err48

if.end36:                                         ; preds = %dma_fence_put.exit91
  %27 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fence, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %cmp39.not = icmp eq ptr %28, %30
  br i1 %cmp39.not, label %for.cond, label %do.end44

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %err48

err48:                                            ; preds = %do.end44, %do.end33, %do.end16, %do.end, %for.cond.err48_crit_edge, %for.cond.preheader.err48_crit_edge
  %err.1 = phi i32 [ %call2, %do.end ], [ -22, %do.end16 ], [ %call28, %do.end33 ], [ -22, %do.end44 ], [ 0, %for.cond.preheader.err48_crit_edge ], [ 0, %for.cond.err48_crit_edge ]
  call fastcc void @fence_chains_fini(ptr noundef nonnull %fc)
  br label %cleanup

cleanup:                                          ; preds = %err48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err48 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @find_race(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %data = alloca %struct.find_race, align 4
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data) #10
  %0 = getelementptr inbounds %struct.fence_chains, ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.find_race, ptr %data, i32 0, i32 1
  %2 = call ptr @memset(ptr %data, i32 255, i32 20)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %call1 = call fastcc i32 @fence_chains_init(ptr noundef nonnull %data, i32 noundef 4096, ptr noundef nonnull @seqno_inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup101_crit_edge

entry.cleanup101_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

if.end:                                           ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #10
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end.err99_crit_edge, label %if.end7.i, !prof !146

if.end.err99_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err99

if.end7.i:                                        ; preds = %if.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #15
  %tobool3.not = icmp eq ptr %call8.i, null
  br i1 %tobool3.not, label %if.end7.i.err99_crit_edge, label %if.end5

if.end7.i.err99_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err99

if.end5:                                          ; preds = %if.end7.i
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp169.not = icmp eq i32 %3, 0
  br i1 %cmp169.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %get_task_struct.exit.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.0170 = phi i32 [ %inc, %get_task_struct.exit.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %call6 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @__find_race, ptr noundef nonnull %data, i32 noundef -1, ptr noundef nonnull @.str.55, i32 noundef %i.0170) #10
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end10.thread, label %if.end14

if.end10.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx161 = getelementptr ptr, ptr %call8.i, i32 %i.0170
  %8 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %arrayidx161, align 4
  br label %for.end

if.end14:                                         ; preds = %for.body
  %call9 = call i32 @wake_up_process(ptr noundef %call6) #10
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %i.0170
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %arrayidx, align 4
  %call.i.i144 = call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #10
  %10 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #10, !srcloc !152
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end14.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !146

if.end14.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end14
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !147

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end14.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end14.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %inc = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %get_task_struct.exit.for.end_crit_edge, label %get_task_struct.exit.for.body_crit_edge

get_task_struct.exit.for.body_crit_edge:          ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

get_task_struct.exit.for.end_crit_edge:           ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %get_task_struct.exit.for.end_crit_edge, %if.end10.thread, %if.end5.for.end_crit_edge
  %ncpus.0 = phi i32 [ %i.0170, %if.end10.thread ], [ 0, %if.end5.for.end_crit_edge ], [ %3, %get_task_struct.exit.for.end_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 470) #10
  %call.i.i145 = call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4) #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  br i1 %tobool23.not, label %for.end.if.end65_crit_edge, label %if.then33

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then33:                                        ; preds = %for.end
  %call35 = call ptr @__var_waitqueue(ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #10
  %17 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %18 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %1, i32 noundef 0) #10
  %call39171 = call i32 @prepare_to_wait_event(ptr noundef %call35, ptr noundef %17, i32 noundef 2) #10
  %call.i.i146172 = call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4) #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool43.not173 = icmp eq i32 %20, 0
  br i1 %tobool43.not173, label %if.then33.for.end62_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  br label %cleanup

if.then33.for.end62_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end62

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then33.cleanup_crit_edge
  %__ret36.1174 = phi i32 [ %__ret36.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then33.cleanup_crit_edge ]
  %call61 = call i32 @schedule_timeout(i32 noundef %__ret36.1174) #10
  %call39 = call i32 @prepare_to_wait_event(ptr noundef %call35, ptr noundef %17, i32 noundef 2) #10
  %call.i.i146 = call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4) #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool43.not = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool48.not = icmp eq i32 %call61, 0
  %23 = select i1 %tobool43.not, i1 %tobool48.not, i1 false
  %__ret36.1 = select i1 %23, i32 1, i32 %call61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret36.1)
  %tobool54.not = icmp eq i32 %__ret36.1, 0
  %24 = select i1 %tobool43.not, i1 true, i1 %tobool54.not
  br i1 %24, label %cleanup.for.end62_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end62_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end62

for.end62:                                        ; preds = %cleanup.for.end62_crit_edge, %if.then33.for.end62_crit_edge
  call void @finish_wait(ptr noundef %call35, ptr noundef %17) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #10
  br label %if.end65

if.end65:                                         ; preds = %for.end62, %for.end.if.end65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncpus.0)
  %cmp68175 = icmp sgt i32 %ncpus.0, 0
  br i1 %cmp68175, label %if.end65.for.body69_crit_edge, label %if.end65.for.end80_crit_edge

if.end65.for.end80_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end80

if.end65.for.body69_crit_edge:                    ; preds = %if.end65
  br label %for.body69

for.body69:                                       ; preds = %put_task_struct.exit.for.body69_crit_edge, %if.end65.for.body69_crit_edge
  %err.0177 = phi i32 [ %err.1, %put_task_struct.exit.for.body69_crit_edge ], [ 0, %if.end65.for.body69_crit_edge ]
  %i.1176 = phi i32 [ %inc79, %put_task_struct.exit.for.body69_crit_edge ], [ 0, %if.end65.for.body69_crit_edge ]
  %arrayidx70 = getelementptr ptr, ptr %call8.i, i32 %i.1176
  %25 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx70, align 4
  %call71 = call i32 @kthread_stop(ptr noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp ne i32 %call71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0177)
  %tobool74.not = icmp eq i32 %err.0177, 0
  %or.cond = select i1 %tobool72.not, i1 %tobool74.not, i1 false
  %err.1 = select i1 %or.cond, i32 %call71, i32 %err.0177
  %27 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx70, align 4
  %usage.i148 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 2
  %call.i.i.i.i.i.i149 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i148, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %usage.i148, i32 1, i32 3, i32 1) #10
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i148, ptr %usage.i148, i32 1, ptr elementtype(i32) %usage.i148) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i150 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i150, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !147

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %usage.i148, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @__put_task_struct(ptr noundef %28) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %inc79 = add nuw nsw i32 %i.1176, 1
  %exitcond185.not = icmp eq i32 %inc79, %ncpus.0
  br i1 %exitcond185.not, label %put_task_struct.exit.for.end80_crit_edge, label %put_task_struct.exit.for.body69_crit_edge

put_task_struct.exit.for.body69_crit_edge:        ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body69

put_task_struct.exit.for.end80_crit_edge:         ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end80

for.end80:                                        ; preds = %put_task_struct.exit.for.end80_crit_edge, %if.end65.for.end80_crit_edge
  %err.0.lcssa = phi i32 [ 0, %if.end65.for.end80_crit_edge ], [ %err.1, %put_task_struct.exit.for.end80_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i) #10
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp83178.not = icmp eq i32 %31, 0
  br i1 %cmp83178.not, label %for.end80.do.end96_crit_edge, label %for.end80.for.body84_crit_edge

for.end80.for.body84_crit_edge:                   ; preds = %for.end80
  br label %for.body84

for.end80.do.end96_crit_edge:                     ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

for.body84:                                       ; preds = %dma_fence_is_signaled.exit.for.body84_crit_edge, %for.end80.for.body84_crit_edge
  %count.0180 = phi i32 [ %43, %dma_fence_is_signaled.exit.for.body84_crit_edge ], [ 0, %for.end80.for.body84_crit_edge ]
  %i.2179 = phi i32 [ %inc92, %dma_fence_is_signaled.exit.for.body84_crit_edge ], [ 0, %for.end80.for.body84_crit_edge ]
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %0, align 4
  %arrayidx86 = getelementptr ptr, ptr %33, i32 %i.2179
  %34 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx86, align 4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i152, label %for.body84._crit_edge

for.body84._crit_edge:                            ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #12
  br label %42

if.end.i152:                                      ; preds = %for.body84
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i, label %if.end.i152.dma_fence_is_signaled.exit_crit_edge, label %land.lhs.true.i

if.end.i152.dma_fence_is_signaled.exit_crit_edge: ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_is_signaled.exit

land.lhs.true.i:                                  ; preds = %if.end.i152
  %call4.i = call zeroext i1 %41(ptr noundef %35) #10
  br i1 %call4.i, label %if.then5.i153, label %land.lhs.true.i.dma_fence_is_signaled.exit_crit_edge

land.lhs.true.i.dma_fence_is_signaled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_is_signaled.exit

if.then5.i153:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = call i32 @dma_fence_signal(ptr noundef %35) #10
  br label %42

42:                                               ; preds = %if.then5.i153, %for.body84._crit_edge
  %inc89166 = add i32 %count.0180, 1
  br label %dma_fence_is_signaled.exit

dma_fence_is_signaled.exit:                       ; preds = %42, %land.lhs.true.i.dma_fence_is_signaled.exit_crit_edge, %if.end.i152.dma_fence_is_signaled.exit_crit_edge
  %43 = phi i32 [ %inc89166, %42 ], [ %count.0180, %if.end.i152.dma_fence_is_signaled.exit_crit_edge ], [ %count.0180, %land.lhs.true.i.dma_fence_is_signaled.exit_crit_edge ]
  %inc92 = add nuw i32 %i.2179, 1
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data, align 4
  %cmp83 = icmp ult i32 %inc92, %45
  br i1 %cmp83, label %dma_fence_is_signaled.exit.for.body84_crit_edge, label %dma_fence_is_signaled.exit.do.end96_crit_edge

dma_fence_is_signaled.exit.do.end96_crit_edge:    ; preds = %dma_fence_is_signaled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

dma_fence_is_signaled.exit.for.body84_crit_edge:  ; preds = %dma_fence_is_signaled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body84

do.end96:                                         ; preds = %dma_fence_is_signaled.exit.do.end96_crit_edge, %for.end80.do.end96_crit_edge
  %count.0.lcssa = phi i32 [ 0, %for.end80.do.end96_crit_edge ], [ %43, %dma_fence_is_signaled.exit.do.end96_crit_edge ]
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %count.0.lcssa) #13
  br label %err99

err99:                                            ; preds = %do.end96, %if.end7.i.err99_crit_edge, %if.end.err99_crit_edge
  %err.2 = phi i32 [ %err.0.lcssa, %do.end96 ], [ -12, %if.end7.i.err99_crit_edge ], [ -12, %if.end.err99_crit_edge ]
  call fastcc void @fence_chains_fini(ptr noundef nonnull %data)
  br label %cleanup101

cleanup101:                                       ; preds = %err99, %entry.cleanup101_crit_edge
  %retval.0 = phi i32 [ %err.2, %err99 ], [ %call1, %entry.cleanup101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @signal_forward(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %fc = alloca %struct.fence_chains, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fc) #10
  %0 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 2
  %2 = call ptr @memset(ptr %fc, i32 255, i32 16)
  %call = call fastcc i32 @fence_chains_init(ptr noundef nonnull %fc, i32 noundef 64, ptr noundef nonnull @seqno_inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp52.not = icmp eq i32 %4, 0
  br i1 %cmp52.not, label %for.cond.preheader.err20_crit_edge, label %for.body.lr.ph

for.cond.preheader.err20_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %err20

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.053
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @dma_fence_signal(ptr noundef %8) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %arrayidx2 = getelementptr ptr, ptr %10, i32 %i.053
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx2, align 4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end.i:                                         ; preds = %for.body
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %if.end.i.err20.sink.split_crit_edge, label %land.lhs.true.i

if.end.i.err20.sink.split_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err20.sink.split

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %18(ptr noundef %12) #10
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.err20.sink.split_crit_edge

land.lhs.true.i.err20.sink.split_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err20.sink.split

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %12) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then5.i, %for.body.if.end6_crit_edge
  %add = add nuw i32 %i.053, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp8 = icmp ult i32 %add, %4
  br i1 %cmp8, label %land.lhs.true, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end6
  %arrayidx11 = getelementptr ptr, ptr %10, i32 %add
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  %flags.i32 = getelementptr inbounds %struct.dma_fence, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i32, align 4
  %and1.i.i33 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i33)
  %tobool.not.i34 = icmp eq i32 %and1.i.i33, 0
  br i1 %tobool.not.i34, label %if.end.i38, label %land.lhs.true.err20.sink.split_crit_edge

land.lhs.true.err20.sink.split_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %err20.sink.split

if.end.i38:                                       ; preds = %land.lhs.true
  %ops.i35 = getelementptr inbounds %struct.dma_fence, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i35, align 4
  %signaled.i36 = getelementptr inbounds %struct.dma_fence_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %signaled.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %signaled.i36, align 4
  %tobool1.not.i37 = icmp eq ptr %26, null
  br i1 %tobool1.not.i37, label %if.end.i38.for.inc_crit_edge, label %land.lhs.true.i40

if.end.i38.for.inc_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i40:                                ; preds = %if.end.i38
  %call4.i39 = tail call zeroext i1 %26(ptr noundef %20) #10
  br i1 %call4.i39, label %if.then5.i42, label %land.lhs.true.i40.for.inc_crit_edge

land.lhs.true.i40.for.inc_crit_edge:              ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then5.i42:                                     ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i41 = tail call i32 @dma_fence_signal(ptr noundef %20) #10
  br label %err20.sink.split

for.inc:                                          ; preds = %land.lhs.true.i40.for.inc_crit_edge, %if.end.i38.for.inc_crit_edge, %if.end6.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add, %4
  br i1 %exitcond.not, label %for.inc.err20_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.err20_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %err20

err20.sink.split:                                 ; preds = %if.then5.i42, %land.lhs.true.err20.sink.split_crit_edge, %land.lhs.true.i.err20.sink.split_crit_edge, %if.end.i.err20.sink.split_crit_edge
  %.str.64.sink = phi ptr [ @.str.64, %if.then5.i42 ], [ @.str.64, %land.lhs.true.err20.sink.split_crit_edge ], [ @.str.62, %if.end.i.err20.sink.split_crit_edge ], [ @.str.62, %land.lhs.true.i.err20.sink.split_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.64.sink, i32 noundef %i.053) #13
  br label %err20

err20:                                            ; preds = %err20.sink.split, %for.inc.err20_crit_edge, %for.cond.preheader.err20_crit_edge
  %err.0 = phi i32 [ 0, %for.cond.preheader.err20_crit_edge ], [ -22, %err20.sink.split ], [ 0, %for.inc.err20_crit_edge ]
  call fastcc void @fence_chains_fini(ptr noundef nonnull %fc)
  br label %cleanup

cleanup:                                          ; preds = %err20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err20 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @signal_backward(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %fc = alloca %struct.fence_chains, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fc) #10
  %0 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 2
  %2 = call ptr @memset(ptr %fc, i32 255, i32 16)
  %call = call fastcc i32 @fence_chains_init(ptr noundef nonnull %fc, i32 noundef 64, ptr noundef nonnull @seqno_inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not57 = icmp eq i32 %4, 0
  br i1 %tobool1.not57, label %if.end.err23_crit_edge, label %for.body.lr.ph

if.end.err23_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err23

for.body.lr.ph:                                   ; preds = %if.end
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  br label %for.body

for.cond8.preheader:                              ; preds = %if.end7
  br i1 %tobool1.not57, label %for.cond8.preheader.err23_crit_edge, label %for.body11.lr.ph

for.cond8.preheader.err23_crit_edge:              ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %err23

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  br label %for.body11

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %dec58.in = phi i32 [ %4, %for.body.lr.ph ], [ %dec58, %if.end7.for.body_crit_edge ]
  %dec58 = add i32 %dec58.in, -1
  %arrayidx = getelementptr ptr, ptr %6, i32 %dec58
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @dma_fence_signal(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec58)
  %cmp = icmp sgt i32 %dec58, 0
  br i1 %cmp, label %land.lhs.true, label %for.body.if.end7_crit_edge

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %for.body
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %arrayidx3 = getelementptr ptr, ptr %12, i32 %dec58
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3, align 4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %land.lhs.true
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %if.end.i.if.end7_crit_edge, label %land.lhs.true.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %20(ptr noundef %14) #10
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.end7_crit_edge

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %14) #10
  br label %do.end

do.end:                                           ; preds = %if.then5.i, %land.lhs.true.do.end_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %dec58) #13
  br label %err23

if.end7:                                          ; preds = %land.lhs.true.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %for.body.if.end7_crit_edge
  %tobool1.not = icmp eq i32 %dec58, 0
  br i1 %tobool1.not, label %for.cond8.preheader, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body11.lr.ph
  %i.160 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc, %for.inc.for.body11_crit_edge ]
  %arrayidx13 = getelementptr ptr, ptr %8, i32 %i.160
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx13, align 4
  %flags.i36 = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i36, align 4
  %and1.i.i37 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i37)
  %tobool.not.i38 = icmp eq i32 %and1.i.i37, 0
  br i1 %tobool.not.i38, label %if.end.i42, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i42:                                       ; preds = %for.body11
  %ops.i39 = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %ops.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i39, align 4
  %signaled.i40 = getelementptr inbounds %struct.dma_fence_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %signaled.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %signaled.i40, align 4
  %tobool1.not.i41 = icmp eq ptr %28, null
  br i1 %tobool1.not.i41, label %if.end.i42.do.end18_crit_edge, label %land.lhs.true.i44

if.end.i42.do.end18_crit_edge:                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

land.lhs.true.i44:                                ; preds = %if.end.i42
  %call4.i43 = tail call zeroext i1 %28(ptr noundef %22) #10
  br i1 %call4.i43, label %if.then5.i46, label %land.lhs.true.i44.do.end18_crit_edge

land.lhs.true.i44.do.end18_crit_edge:             ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

if.then5.i46:                                     ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i45 = tail call i32 @dma_fence_signal(ptr noundef %22) #10
  br label %for.inc

do.end18:                                         ; preds = %land.lhs.true.i44.do.end18_crit_edge, %if.end.i42.do.end18_crit_edge
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %i.160) #13
  br label %err23

for.inc:                                          ; preds = %if.then5.i46, %for.body11.for.inc_crit_edge
  %inc = add nuw i32 %i.160, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.err23_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.inc.err23_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %err23

err23:                                            ; preds = %for.inc.err23_crit_edge, %do.end18, %do.end, %for.cond8.preheader.err23_crit_edge, %if.end.err23_crit_edge
  %err.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ 0, %for.cond8.preheader.err23_crit_edge ], [ 0, %if.end.err23_crit_edge ], [ 0, %for.inc.err23_crit_edge ]
  call fastcc void @fence_chains_fini(ptr noundef nonnull %fc)
  br label %cleanup

cleanup:                                          ; preds = %err23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err23 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wait_forward(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %fc = alloca %struct.fence_chains, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fc) #10
  %0 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 1
  %1 = call ptr @memset(ptr %fc, i32 255, i32 16)
  %call = call fastcc i32 @fence_chains_init(ptr noundef nonnull %fc, i32 noundef 4096, ptr noundef nonnull @seqno_inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @__wait_fence_chains, ptr noundef nonnull %fc, i32 noundef -1, ptr noundef nonnull @.str.69) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call1 to i32
  br label %err14

if.end9:                                          ; preds = %if.end
  %call4 = call i32 @wake_up_process(ptr noundef %call1) #10
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end9.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !146

if.end9.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end9
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !147

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end9.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end9.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %call11 = call i32 @yield_to(ptr noundef %call1, i1 noundef zeroext true) #10
  %5 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp33.not = icmp eq i32 %6, 0
  br i1 %cmp33.not, label %get_task_struct.exit.for.end_crit_edge, label %get_task_struct.exit.for.body_crit_edge

get_task_struct.exit.for.body_crit_edge:          ; preds = %get_task_struct.exit
  br label %for.body

get_task_struct.exit.for.end_crit_edge:           ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %get_task_struct.exit.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %get_task_struct.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %i.034
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call12 = call i32 @dma_fence_signal(ptr noundef %10) #10
  %inc = add nuw i32 %i.034, 1
  %11 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fc, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %get_task_struct.exit.for.end_crit_edge
  %call13 = call i32 @kthread_stop(ptr noundef %call1) #10
  %call.i.i.i.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i.err14_crit_edge, label %if.then10.i.i.i.i, !prof !147

if.end5.i.i.i.i.err14_crit_edge:                  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err14

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %err14

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @__put_task_struct(ptr noundef %call1) #10
  br label %err14

err14:                                            ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.err14_crit_edge, %if.then7
  %err.0 = phi i32 [ %2, %if.then7 ], [ %call13, %if.end5.i.i.i.i.err14_crit_edge ], [ %call13, %if.then10.i.i.i.i ], [ %call13, %if.then.i ]
  call fastcc void @fence_chains_fini(ptr noundef nonnull %fc)
  br label %cleanup

cleanup:                                          ; preds = %err14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err14 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wait_backward(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %fc = alloca %struct.fence_chains, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fc) #10
  %0 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 1
  %1 = call ptr @memset(ptr %fc, i32 255, i32 16)
  %call = call fastcc i32 @fence_chains_init(ptr noundef nonnull %fc, i32 noundef 4096, ptr noundef nonnull @seqno_inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @__wait_fence_chains, ptr noundef nonnull %fc, i32 noundef -1, ptr noundef nonnull @.str.69) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call1 to i32
  br label %err15

if.end9:                                          ; preds = %if.end
  %call4 = call i32 @wake_up_process(ptr noundef %call1) #10
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end9.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !146

if.end9.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end9
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !147

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end9.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end9.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %call11 = call i32 @yield_to(ptr noundef %call1, i1 noundef zeroext true) #10
  %5 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not33 = icmp eq i32 %6, 0
  br i1 %tobool12.not33, label %get_task_struct.exit.for.end_crit_edge, label %get_task_struct.exit.for.body_crit_edge

get_task_struct.exit.for.body_crit_edge:          ; preds = %get_task_struct.exit
  br label %for.body

get_task_struct.exit.for.end_crit_edge:           ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %get_task_struct.exit.for.body_crit_edge
  %i.034 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %6, %get_task_struct.exit.for.body_crit_edge ]
  %dec = add i32 %i.034, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %dec
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call13 = call i32 @dma_fence_signal(ptr noundef %10) #10
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %get_task_struct.exit.for.end_crit_edge
  %call14 = call i32 @kthread_stop(ptr noundef %call1) #10
  %call.i.i.i.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i.err15_crit_edge, label %if.then10.i.i.i.i, !prof !147

if.end5.i.i.i.i.err15_crit_edge:                  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err15

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %err15

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @__put_task_struct(ptr noundef %call1) #10
  br label %err15

err15:                                            ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.err15_crit_edge, %if.then7
  %err.0 = phi i32 [ %2, %if.then7 ], [ %call14, %if.end5.i.i.i.i.err15_crit_edge ], [ %call14, %if.then10.i.i.i.i ], [ %call14, %if.then.i ]
  call fastcc void @fence_chains_fini(ptr noundef nonnull %fc)
  br label %cleanup

cleanup:                                          ; preds = %err15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err15 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wait_random(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %fc = alloca %struct.fence_chains, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fc) #10
  %0 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 1
  %1 = call ptr @memset(ptr %fc, i32 255, i32 16)
  %call = call fastcc i32 @fence_chains_init(ptr noundef nonnull %fc, i32 noundef 4096, ptr noundef nonnull @seqno_inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fc, align 4
  %dec17.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec17.i)
  %tobool.not18.i = icmp eq i32 %dec17.i, 0
  br i1 %tobool.not18.i, label %if.end.randomise_fences.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.randomise_fences.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %randomise_fences.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %dec20.i = phi i32 [ %dec.i, %cleanup.i.while.body.i_crit_edge ], [ %dec17.i, %if.end.while.body.i_crit_edge ]
  %count.019.i = phi i32 [ %dec20.i, %cleanup.i.while.body.i_crit_edge ], [ %3, %if.end.while.body.i_crit_edge ]
  %call.i.i = tail call i32 @prandom_u32() #10
  %conv.i.i = zext i32 %call.i.i to i64
  %conv1.i.i = zext i32 %count.019.i to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec20.i, i32 %conv2.i.i)
  %cmp.i = icmp eq i32 %dec20.i, %conv2.i.i
  br i1 %cmp.i, label %while.body.i.cleanup.i_crit_edge, label %do.body.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

do.body.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %dec20.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %5, i32 %conv2.i.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  store ptr %9, ptr %arrayidx.i, align 4
  %10 = load ptr, ptr %0, align 4
  %arrayidx6.i = getelementptr ptr, ptr %10, i32 %conv2.i.i
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %arrayidx6.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body.i, %while.body.i.cleanup.i_crit_edge
  %dec.i = add i32 %dec20.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %cleanup.i.randomise_fences.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.randomise_fences.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %randomise_fences.exit

randomise_fences.exit:                            ; preds = %cleanup.i.randomise_fences.exit_crit_edge, %if.end.randomise_fences.exit_crit_edge
  %call1 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @__wait_fence_chains, ptr noundef nonnull %fc, i32 noundef -1, ptr noundef nonnull @.str.69) #10
  %cmp.i29 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %if.then7, label %if.end9

if.then7:                                         ; preds = %randomise_fences.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call1 to i32
  br label %err14

if.end9:                                          ; preds = %randomise_fences.exit
  %call4 = call i32 @wake_up_process(ptr noundef %call1) #10
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end9.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !146

if.end9.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end9
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !147

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end9.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end9.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %call11 = call i32 @yield_to(ptr noundef %call1, i1 noundef zeroext true) #10
  %15 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp34.not = icmp eq i32 %16, 0
  br i1 %cmp34.not, label %get_task_struct.exit.for.end_crit_edge, label %get_task_struct.exit.for.body_crit_edge

get_task_struct.exit.for.body_crit_edge:          ; preds = %get_task_struct.exit
  br label %for.body

get_task_struct.exit.for.end_crit_edge:           ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %get_task_struct.exit.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %get_task_struct.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr ptr, ptr %18, i32 %i.035
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call12 = call i32 @dma_fence_signal(ptr noundef %20) #10
  %inc = add nuw i32 %i.035, 1
  %21 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fc, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %get_task_struct.exit.for.end_crit_edge
  %call13 = call i32 @kthread_stop(ptr noundef %call1) #10
  %call.i.i.i.i.i.i32 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i33 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i33, label %if.end5.i.i.i.i.err14_crit_edge, label %if.then10.i.i.i.i, !prof !147

if.end5.i.i.i.i.err14_crit_edge:                  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err14

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %err14

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @__put_task_struct(ptr noundef %call1) #10
  br label %err14

err14:                                            ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.err14_crit_edge, %if.then7
  %err.0 = phi i32 [ %12, %if.then7 ], [ %call13, %if.end5.i.i.i.i.err14_crit_edge ], [ %call13, %if.then10.i.i.i.i ], [ %call13, %if.then.i ]
  call fastcc void @fence_chains_fini(ptr noundef nonnull %fc)
  br label %cleanup

cleanup:                                          ; preds = %err14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err14 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fc) #10
  ret i32 %retval.0
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mock_chain(ptr noundef %prev, ptr noundef %fence, i64 noundef %seqno) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 128) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %prev, null
  br i1 %tobool.not.i, label %if.end.dma_fence_get.exit_crit_edge, label %if.then.i

if.end.dma_fence_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %prev, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !146

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !147

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

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end.dma_fence_get.exit_crit_edge
  %tobool.not.i5 = icmp eq ptr %fence, null
  br i1 %tobool.not.i5, label %dma_fence_get.exit.dma_fence_get.exit16_crit_edge, label %if.then.i10

dma_fence_get.exit.dma_fence_get.exit16_crit_edge: ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit16

if.then.i10:                                      ; preds = %dma_fence_get.exit
  %refcount.i6 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i6, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i6, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i6, ptr %refcount.i6, i32 1, ptr elementtype(i32) %refcount.i6) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i8 = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i8)
  %tobool1.not.i.i.i.i.i9 = icmp eq i32 %asmresult.i.i.i.i.i.i.i8, 0
  br i1 %tobool1.not.i.i.i.i.i9, label %if.then.i10.if.end15.sink.split.i.i.i.i.i15_crit_edge, label %if.else.i.i.i.i.i13, !prof !146

if.then.i10.if.end15.sink.split.i.i.i.i.i15_crit_edge: ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i15

if.else.i.i.i.i.i13:                              ; preds = %if.then.i10
  %add.i.i.i.i.i11 = add i32 %asmresult.i.i.i.i.i.i.i8, 1
  %4 = or i32 %add.i.i.i.i.i11, %asmresult.i.i.i.i.i.i.i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i12 = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i12, label %if.else.i.i.i.i.i13.dma_fence_get.exit16_crit_edge, label %if.else.i.i.i.i.i13.if.end15.sink.split.i.i.i.i.i15_crit_edge, !prof !147

if.else.i.i.i.i.i13.if.end15.sink.split.i.i.i.i.i15_crit_edge: ; preds = %if.else.i.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i15

if.else.i.i.i.i.i13.dma_fence_get.exit16_crit_edge: ; preds = %if.else.i.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit16

if.end15.sink.split.i.i.i.i.i15:                  ; preds = %if.else.i.i.i.i.i13.if.end15.sink.split.i.i.i.i.i15_crit_edge, %if.then.i10.if.end15.sink.split.i.i.i.i.i15_crit_edge
  %.sink.i.i.i.i.i14 = phi i32 [ 2, %if.then.i10.if.end15.sink.split.i.i.i.i.i15_crit_edge ], [ 1, %if.else.i.i.i.i.i13.if.end15.sink.split.i.i.i.i.i15_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i6, i32 noundef %.sink.i.i.i.i.i14) #10
  br label %dma_fence_get.exit16

dma_fence_get.exit16:                             ; preds = %if.end15.sink.split.i.i.i.i.i15, %if.else.i.i.i.i.i13.dma_fence_get.exit16_crit_edge, %dma_fence_get.exit.dma_fence_get.exit16_crit_edge
  tail call void @dma_fence_chain_init(ptr noundef nonnull %call7.i.i, ptr noundef %prev, ptr noundef %fence, i64 noundef %seqno) #10
  br label %cleanup

cleanup:                                          ; preds = %dma_fence_get.exit16, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %fence) unnamed_addr #4 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !147

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @dma_fence_release(ptr noundef %refcount) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @mock_name(ptr nocapture noundef readnone %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mock_fence_release(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @slab_fences, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %f) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_chain_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

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
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !146

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !147

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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fence_chains_init(ptr nocapture noundef %fc, i32 noundef %count, ptr nocapture noundef readonly %seqno_fn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 4) #10
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !146

kvmalloc_array.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %chains95 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 2
  %2 = ptrtoint ptr %chains95 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %chains95, align 4
  br label %cleanup

kvmalloc_array.exit:                              ; preds = %entry
  %3 = extractvalue { i32, i1 } %0, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 3520, i32 noundef -1) #15
  %chains = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 2
  %4 = ptrtoint ptr %chains to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %chains, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %kvmalloc_array.exit.cleanup_crit_edge, label %kvmalloc_array.exit79

kvmalloc_array.exit.cleanup_crit_edge:            ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

kvmalloc_array.exit79:                            ; preds = %kvmalloc_array.exit
  %call.i.i76 = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 3520, i32 noundef -1) #15
  %fences = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 1
  %5 = ptrtoint ptr %fences to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i76, ptr %fences, align 4
  %tobool4.not = icmp eq ptr %call.i.i76, null
  br i1 %tobool4.not, label %kvmalloc_array.exit79.err_chains_crit_edge, label %if.end6

kvmalloc_array.exit79.err_chains_crit_edge:       ; preds = %kvmalloc_array.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_chains

if.end6:                                          ; preds = %kvmalloc_array.exit79
  %tail = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 3
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp100.not = icmp eq i32 %count, 0
  br i1 %cmp100.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.0101 = phi i32 [ %inc, %if.end25.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %7 = load ptr, ptr @slab_fences, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.mock_fence.exit_crit_edge, label %do.body.i

for.body.mock_fence.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %mock_fence.exit

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.mock_fence, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @mock_fence.__key, i16 noundef signext 3) #10
  tail call void @dma_fence_init(ptr noundef nonnull %call.i, ptr noundef nonnull @mock_ops, ptr noundef %lock.i, i64 noundef 0, i64 noundef 0) #10
  br label %mock_fence.exit

mock_fence.exit:                                  ; preds = %do.body.i, %for.body.mock_fence.exit_crit_edge
  %8 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fences, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.0101
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %arrayidx, align 4
  %11 = load ptr, ptr %fences, align 4
  %arrayidx10 = getelementptr ptr, ptr %11, i32 %i.0101
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %mock_fence.exit.for.body31.preheader_crit_edge, label %if.end13

mock_fence.exit.for.body31.preheader_crit_edge:   ; preds = %mock_fence.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31.preheader

if.end13:                                         ; preds = %mock_fence.exit
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail, align 4
  %call17 = tail call i64 %seqno_fn(i32 noundef %i.0101) #10, !callees !153
  %call18 = tail call fastcc ptr @mock_chain(ptr noundef %15, ptr noundef nonnull %13, i64 noundef %call17)
  %16 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chains, align 4
  %arrayidx20 = getelementptr ptr, ptr %17, i32 %i.0101
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call18, ptr %arrayidx20, align 4
  %19 = load ptr, ptr %chains, align 4
  %arrayidx22 = getelementptr ptr, ptr %19, i32 %i.0101
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %if.end13.for.body31.preheader_crit_edge, label %if.end25

if.end13.for.body31.preheader_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31.preheader

if.end25:                                         ; preds = %if.end13
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %tail, align 4
  %inc = add nuw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %if.end6.for.end_crit_edge
  %23 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %count, ptr %fc, align 4
  br label %cleanup

for.body31.preheader:                             ; preds = %if.end13.for.body31.preheader_crit_edge, %mock_fence.exit.for.body31.preheader_crit_edge
  %umax = call i32 @llvm.umax.i32(i32 %count, i32 1)
  br label %for.body31

for.body31:                                       ; preds = %dma_fence_put.exit93.for.body31_crit_edge, %for.body31.preheader
  %i.1103 = phi i32 [ %inc37, %dma_fence_put.exit93.for.body31_crit_edge ], [ 0, %for.body31.preheader ]
  %24 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fences, align 4
  %arrayidx33 = getelementptr ptr, ptr %25, i32 %i.1103
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx33, align 4
  %tobool.not.i80 = icmp eq ptr %27, null
  br i1 %tobool.not.i80, label %for.body31.dma_fence_put.exit_crit_edge, label %if.then.i

for.body31.dma_fence_put.exit_crit_edge:          ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %for.body31
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %27, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %for.body31.dma_fence_put.exit_crit_edge
  %29 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chains, align 4
  %arrayidx35 = getelementptr ptr, ptr %30, i32 %i.1103
  %31 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx35, align 4
  %tobool.not.i82 = icmp eq ptr %32, null
  br i1 %tobool.not.i82, label %dma_fence_put.exit.dma_fence_put.exit93_crit_edge, label %if.then.i87

dma_fence_put.exit.dma_fence_put.exit93_crit_edge: ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit93

if.then.i87:                                      ; preds = %dma_fence_put.exit
  %refcount.i83 = getelementptr inbounds %struct.dma_fence, ptr %32, i32 0, i32 6
  %call.i.i.i.i.i.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i83, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %refcount.i83, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i83, ptr %refcount.i83, i32 1, ptr elementtype(i32) %refcount.i83) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i85 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i85)
  %cmp.i.i.i.i.i86 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i85, 1
  br i1 %cmp.i.i.i.i.i86, label %if.then.i.i91, label %if.end5.i.i.i.i.i89

if.end5.i.i.i.i.i89:                              ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i85)
  %.not.i.i.i.i.i88 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i85, 0
  br i1 %.not.i.i.i.i.i88, label %if.end5.i.i.i.i.i89.dma_fence_put.exit93_crit_edge, label %if.then10.i.i.i.i.i90, !prof !147

if.end5.i.i.i.i.i89.dma_fence_put.exit93_crit_edge: ; preds = %if.end5.i.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit93

if.then10.i.i.i.i.i90:                            ; preds = %if.end5.i.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i83, i32 noundef 3) #10
  br label %dma_fence_put.exit93

if.then.i.i91:                                    ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @dma_fence_release(ptr noundef %refcount.i83) #10
  br label %dma_fence_put.exit93

dma_fence_put.exit93:                             ; preds = %if.then.i.i91, %if.then10.i.i.i.i.i90, %if.end5.i.i.i.i.i89.dma_fence_put.exit93_crit_edge, %dma_fence_put.exit.dma_fence_put.exit93_crit_edge
  %inc37 = add nuw i32 %i.1103, 1
  %exitcond104.not = icmp eq i32 %inc37, %umax
  br i1 %exitcond104.not, label %for.end38, label %dma_fence_put.exit93.for.body31_crit_edge

dma_fence_put.exit93.for.body31_crit_edge:        ; preds = %dma_fence_put.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31

for.end38:                                        ; preds = %dma_fence_put.exit93
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fences, align 4
  tail call void @kvfree(ptr noundef %35) #10
  br label %err_chains

err_chains:                                       ; preds = %for.end38, %kvmalloc_array.exit79.err_chains_crit_edge
  %36 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chains, align 4
  tail call void @kvfree(ptr noundef %37) #10
  br label %cleanup

cleanup:                                          ; preds = %err_chains, %for.end, %kvmalloc_array.exit.cleanup_crit_edge, %kvmalloc_array.exit.thread
  %retval.0 = phi i32 [ -12, %err_chains ], [ 0, %for.end ], [ -12, %kvmalloc_array.exit.cleanup_crit_edge ], [ -12, %kvmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @seqno_inc(i32 noundef %i) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %i, 1
  %conv = zext i32 %add to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_chain_find_seqno(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fence_chains_fini(ptr nocapture noundef readonly %fc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp36.not = icmp eq i32 %1, 0
  br i1 %cmp36.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fences = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %dma_fence_put.exit.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dma_fence_put.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fences, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.037
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @dma_fence_signal(ptr noundef %5) #10
  %6 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fences, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %i.037
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.dma_fence_put.exit_crit_edge, label %if.then.i

for.body.dma_fence_put.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %for.body
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %for.body.dma_fence_put.exit_crit_edge
  %inc = add nuw i32 %i.037, 1
  %11 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fc, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %dma_fence_put.exit.for.body_crit_edge, label %dma_fence_put.exit.for.end_crit_edge

dma_fence_put.exit.for.end_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

dma_fence_put.exit.for.body_crit_edge:            ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %dma_fence_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %fences3 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 1
  %13 = ptrtoint ptr %fences3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fences3, align 4
  tail call void @kvfree(ptr noundef %14) #10
  %15 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp638.not = icmp eq i32 %16, 0
  br i1 %cmp638.not, label %for.end.for.end11_crit_edge, label %for.body7.lr.ph

for.end.for.end11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end11

for.body7.lr.ph:                                  ; preds = %for.end
  %chains = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 2
  br label %for.body7

for.body7:                                        ; preds = %dma_fence_put.exit35.for.body7_crit_edge, %for.body7.lr.ph
  %i.139 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc10, %dma_fence_put.exit35.for.body7_crit_edge ]
  %17 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chains, align 4
  %arrayidx8 = getelementptr ptr, ptr %18, i32 %i.139
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx8, align 4
  %tobool.not.i25 = icmp eq ptr %20, null
  br i1 %tobool.not.i25, label %for.body7.dma_fence_put.exit35_crit_edge, label %if.then.i30

for.body7.dma_fence_put.exit35_crit_edge:         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit35

if.then.i30:                                      ; preds = %for.body7
  %refcount.i26 = getelementptr inbounds %struct.dma_fence, ptr %20, i32 0, i32 6
  %call.i.i.i.i.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i26, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %refcount.i26, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i26, ptr %refcount.i26, i32 1, ptr elementtype(i32) %refcount.i26) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i28 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i28)
  %cmp.i.i.i.i.i29 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i28, 1
  br i1 %cmp.i.i.i.i.i29, label %if.then.i.i34, label %if.end5.i.i.i.i.i32

if.end5.i.i.i.i.i32:                              ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i28)
  %.not.i.i.i.i.i31 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i28, 0
  br i1 %.not.i.i.i.i.i31, label %if.end5.i.i.i.i.i32.dma_fence_put.exit35_crit_edge, label %if.then10.i.i.i.i.i33, !prof !147

if.end5.i.i.i.i.i32.dma_fence_put.exit35_crit_edge: ; preds = %if.end5.i.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit35

if.then10.i.i.i.i.i33:                            ; preds = %if.end5.i.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i26, i32 noundef 3) #10
  br label %dma_fence_put.exit35

if.then.i.i34:                                    ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @dma_fence_release(ptr noundef %refcount.i26) #10
  br label %dma_fence_put.exit35

dma_fence_put.exit35:                             ; preds = %if.then.i.i34, %if.then10.i.i.i.i.i33, %if.end5.i.i.i.i.i32.dma_fence_put.exit35_crit_edge, %for.body7.dma_fence_put.exit35_crit_edge
  %inc10 = add nuw i32 %i.139, 1
  %22 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fc, align 4
  %cmp6 = icmp ult i32 %inc10, %23
  br i1 %cmp6, label %dma_fence_put.exit35.for.body7_crit_edge, label %dma_fence_put.exit35.for.end11_crit_edge

dma_fence_put.exit35.for.end11_crit_edge:         ; preds = %dma_fence_put.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end11

dma_fence_put.exit35.for.body7_crit_edge:         ; preds = %dma_fence_put.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.end11:                                        ; preds = %dma_fence_put.exit35.for.end11_crit_edge, %for.end.for.end11_crit_edge
  %chains12 = getelementptr inbounds %struct.fence_chains, ptr %fc, i32 0, i32 2
  %24 = ptrtoint ptr %chains12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chains12, align 4
  tail call void @kvfree(ptr noundef %25) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @seqno_inc2(i32 noundef %i) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %i, 1
  %add = add i32 %mul, 2
  %conv = zext i32 %add to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__find_race(ptr noundef %arg) #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call89 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call89, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tail = getelementptr inbounds %struct.fence_chains, ptr %arg, i32 0, i32 3
  %fences = getelementptr inbounds %struct.fence_chains, ptr %arg, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #10
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !151
  %1 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tail, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %while.body.dma_fence_get.exit_crit_edge, label %if.then.i

while.body.dma_fence_get.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %while.body
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !145
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !146

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !147

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %while.body.dma_fence_get.exit_crit_edge
  %5 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %fence, align 4
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arg, align 4
  %call.i = call i32 @prandom_u32() #10
  %conv.i = zext i32 %call.i to i64
  %conv1.i = zext i32 %7 to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %add = add nuw i32 %conv2.i, 1
  %conv = sext i32 %add to i64
  %call4 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %dma_fence_get.exit
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %add) #13
  %8 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fence, align 4
  %tobool.not.i50 = icmp eq ptr %9, null
  br i1 %tobool.not.i50, label %do.end.cleanup.thread_crit_edge, label %if.then.i53

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then.i53:                                      ; preds = %do.end
  %refcount.i51 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 6
  %call.i.i.i.i.i.i.i52 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i51, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i51, i32 1, i32 3, i32 1) #10
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i51, ptr %refcount.i51, i32 1, ptr elementtype(i32) %refcount.i51) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i54 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i54, label %if.end5.i.i.i.i.i.cleanup.thread_crit_edge, label %if.then10.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.cleanup.thread_crit_edge:       ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i51, i32 noundef 3) #10
  br label %cleanup.thread

if.then.i.i:                                      ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i51) #10
  br label %cleanup.thread

if.end:                                           ; preds = %dma_fence_get.exit
  %11 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fence, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %seqno9 = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %seqno9 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %seqno9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv)
  %cmp = icmp eq i64 %14, %conv
  br i1 %cmp, label %if.then12, label %if.end8.if.end23_crit_edge

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then12:                                        ; preds = %if.end8
  %call14 = call i32 @dma_fence_chain_find_seqno(ptr noundef nonnull %fence, i64 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.if.end23_crit_edge, label %do.end19

if.then12.if.end23_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end19:                                         ; preds = %if.then12
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %add) #13
  %15 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fence, align 4
  %tobool.not.i55 = icmp eq ptr %16, null
  br i1 %tobool.not.i55, label %do.end19.cleanup.thread_crit_edge, label %if.then.i60

do.end19.cleanup.thread_crit_edge:                ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then.i60:                                      ; preds = %do.end19
  %refcount.i56 = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 6
  %call.i.i.i.i.i.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i56, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i56, i32 1, i32 3, i32 1) #10
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i56, ptr %refcount.i56, i32 1, ptr elementtype(i32) %refcount.i56) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i58 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i58)
  %cmp.i.i.i.i.i59 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i58, 1
  br i1 %cmp.i.i.i.i.i59, label %if.then.i.i64, label %if.end5.i.i.i.i.i62

if.end5.i.i.i.i.i62:                              ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i58)
  %.not.i.i.i.i.i61 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i58, 0
  br i1 %.not.i.i.i.i.i61, label %if.end5.i.i.i.i.i62.cleanup.thread_crit_edge, label %if.then10.i.i.i.i.i63, !prof !147

if.end5.i.i.i.i.i62.cleanup.thread_crit_edge:     ; preds = %if.end5.i.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then10.i.i.i.i.i63:                            ; preds = %if.end5.i.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i56, i32 noundef 3) #10
  br label %cleanup.thread

if.then.i.i64:                                    ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i56) #10
  br label %cleanup.thread

if.end23:                                         ; preds = %if.then12.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  %18 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fence, align 4
  %tobool.not.i66 = icmp eq ptr %19, null
  br i1 %tobool.not.i66, label %if.end23.cleanup_crit_edge, label %if.then.i71

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i71:                                      ; preds = %if.end23
  %refcount.i67 = getelementptr inbounds %struct.dma_fence, ptr %19, i32 0, i32 6
  %call.i.i.i.i.i.i.i68 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i67, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i67, i32 1, i32 3, i32 1) #10
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i67, ptr %refcount.i67, i32 1, ptr elementtype(i32) %refcount.i67) #10, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i69 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i69)
  %cmp.i.i.i.i.i70 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i69, 1
  br i1 %cmp.i.i.i.i.i70, label %if.then.i.i75, label %if.end5.i.i.i.i.i73

if.end5.i.i.i.i.i73:                              ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i69)
  %.not.i.i.i.i.i72 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i69, 0
  br i1 %.not.i.i.i.i.i72, label %if.end5.i.i.i.i.i73.cleanup_crit_edge, label %if.then10.i.i.i.i.i74, !prof !147

if.end5.i.i.i.i.i73.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i74:                            ; preds = %if.end5.i.i.i.i.i73
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i67, i32 noundef 3) #10
  br label %cleanup

if.then.i.i75:                                    ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i67) #10
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then.i.i64, %if.then10.i.i.i.i.i63, %if.end5.i.i.i.i.i62.cleanup.thread_crit_edge, %do.end19.cleanup.thread_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup.thread_crit_edge, %do.end.cleanup.thread_crit_edge
  %err.3.ph = phi i32 [ %call14, %if.then.i.i64 ], [ %call14, %if.then10.i.i.i.i.i63 ], [ %call14, %if.end5.i.i.i.i.i62.cleanup.thread_crit_edge ], [ %call14, %do.end19.cleanup.thread_crit_edge ], [ %call4, %if.then.i.i ], [ %call4, %if.then10.i.i.i.i.i ], [ %call4, %if.end5.i.i.i.i.i.cleanup.thread_crit_edge ], [ %call4, %do.end.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #10
  br label %while.end

cleanup:                                          ; preds = %if.then.i.i75, %if.then10.i.i.i.i.i74, %if.end5.i.i.i.i.i73.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arg, align 4
  %sub = add i32 %22, -1
  %call.i77 = call i32 @prandom_u32() #10
  %conv.i78 = zext i32 %call.i77 to i64
  %conv1.i79 = zext i32 %sub to i64
  %mul.i80 = mul nuw i64 %conv.i78, %conv1.i79
  %shr.i81 = lshr i64 %mul.i80, 32
  %conv2.i82 = trunc i64 %shr.i81 to i32
  %23 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fences, align 4
  %arrayidx = getelementptr ptr, ptr %24, i32 %conv2.i82
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %call28 = call i32 @dma_fence_signal(ptr noundef %26) #10
  call void @__might_resched(ptr noundef nonnull @.str.13, i32 noundef 430, i32 noundef 0) #10
  %call.i83 = call i32 @__cond_resched() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #10
  %call = call zeroext i1 @kthread_should_stop() #10
  br i1 %call, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  %err.4 = phi i32 [ %err.3.ph, %cleanup.thread ], [ 0, %entry.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %children = getelementptr inbounds %struct.find_race, ptr %arg, i32 0, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %children, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !154
  call void @llvm.prefetch.p0(ptr %children, i32 1, i32 3, i32 1) #10
  %27 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %children, ptr %children, i32 1, ptr elementtype(i32) %children) #10, !srcloc !155
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then33, label %while.end.if.end35_crit_edge

while.end.if.end35_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @wake_up_var(ptr noundef %children) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %while.end.if.end35_crit_edge
  ret i32 %err.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__wait_fence_chains(ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.fence_chains, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 4
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef %1, i1 noundef zeroext false, i32 noundef 2147483647) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.inv = icmp slt i32 %call.i, 0
  %. = select i1 %tobool.not.inv, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @yield_to(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !103, !104, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 679, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 680, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 681, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 682, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 683, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 684, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 685, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 686, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 687, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 688, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 689, i32 3}
!22 = !{ptr @dma_fence_chain.tests, !23, !"tests", i1 false, i1 false}
!23 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 678, i32 30}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 693, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dma_fence_chain._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @dma_fence_chain._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 696, i32 16}
!32 = !{ptr @slab_fences, !33, !"slab_fences", i1 false, i1 false}
!33 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 22, i32 27}
!34 = !{ptr @mock_fence.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 55, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mock_ops, !38, !"mock_ops", i1 false, i1 false}
!38 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 41, i32 35}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 33, i32 9}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 192, i32 3}
!43 = !{ptr @find_seqno._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @find_seqno._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 201, i32 4}
!47 = !{ptr @find_seqno._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @find_seqno._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 206, i32 4}
!51 = !{ptr @find_seqno._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @find_seqno._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 216, i32 4}
!55 = !{ptr @find_seqno._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @find_seqno._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 220, i32 4}
!59 = !{ptr @find_seqno._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @find_seqno._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 229, i32 4}
!63 = !{ptr @find_seqno._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @find_seqno._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 239, i32 4}
!67 = !{ptr @find_seqno._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @find_seqno._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @find_seqno._entry.36, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 243, i32 4}
!71 = !{ptr @find_seqno._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 271, i32 3}
!74 = !{ptr @find_signaled._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @find_signaled._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 276, i32 3}
!78 = !{ptr @find_signaled._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @find_signaled._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 283, i32 4}
!82 = !{ptr @find_signaled._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @find_signaled._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @find_out_of_order._entry, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 309, i32 3}
!86 = !{ptr @find_out_of_order._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 321, i32 3}
!89 = !{ptr @find_out_of_order._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @find_out_of_order._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @find_gap._entry, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 353, i32 4}
!93 = !{ptr @find_gap._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 358, i32 4}
!96 = !{ptr @find_gap._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @find_gap._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @find_gap._entry.51, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 370, i32 4}
!100 = !{ptr @find_gap._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @find_gap._entry.53, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 374, i32 4}
!103 = !{ptr @find_gap._entry_ptr.54, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 459, i32 16}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 486, i32 2}
!108 = !{ptr @find_race._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @find_race._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 403, i32 4}
!112 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @__find_race._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @__find_race._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 418, i32 5}
!117 = !{ptr @__find_race._entry.59, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @__find_race._entry_ptr.61, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 507, i32 4}
!121 = !{ptr @signal_forward._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @signal_forward._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 514, i32 4}
!125 = !{ptr @signal_forward._entry.63, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @signal_forward._entry_ptr.65, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @signal_backward._entry, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 539, i32 4}
!129 = !{ptr @signal_backward._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 547, i32 4}
!132 = !{ptr @signal_backward._entry.66, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @signal_backward._entry_ptr.68, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma-buf/st-dma-fence-chain.c", i32 579, i32 8}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2148202310, i64 2148202342, i64 2148202371, i64 2148202405, i64 2148202436, i64 2148202459}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{i64 2148290311}
!149 = !{i64 2148204775, i64 2148204807, i64 2148204836, i64 2148204870, i64 2148204901, i64 2148204924}
!150 = !{i64 2149569029}
!151 = !{!"auto-init"}
!152 = !{i64 2148200780, i64 2148200806, i64 2148200835, i64 2148200869, i64 2148200900, i64 2148200923}
!153 = !{ptr @seqno_inc, ptr @seqno_inc2}
!154 = !{i64 2148289232}
!155 = !{i64 2148203965, i64 2148203997, i64 2148204026, i64 2148204060, i64 2148204091, i64 2148204114}
!156 = !{i64 2148289461}
