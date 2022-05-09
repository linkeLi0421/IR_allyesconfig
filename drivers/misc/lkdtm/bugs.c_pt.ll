; ModuleID = '/llk/IR_all_yes/drivers/misc/lkdtm/bugs.c_pt.bc'
source_filename = "../drivers/misc/lkdtm/bugs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.36, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.36 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.array_bounds = type { i32, i32, [8 x i8], i32 }
%struct.array_bounds_flex_array = type { i32, i32, [1 x i8] }
%struct.lkdtm_list = type { %struct.list_head }

@recur_count = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dumptest\00", [23 x i8] zeroinitializer }, align 32
@warn_counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/misc/lkdtm/bugs.c\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Warning message trigger count: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lkdtm_EXHAUST_STACK._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016lkdtm: Calling function with %lu frame size to depth %d ...\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lkdtm_EXHAUST_STACK\00", [44 x i8] zeroinitializer }, align 32
@lkdtm_EXHAUST_STACK._entry_ptr = internal global ptr @lkdtm_EXHAUST_STACK._entry, section ".printk_index", align 4
@lkdtm_EXHAUST_STACK._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.1, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016lkdtm: FAIL: survived without exhausting stack?!\0A\00", [44 x i8] zeroinitializer }, align 32
@lkdtm_EXHAUST_STACK._entry_ptr.7 = internal global ptr @lkdtm_EXHAUST_STACK._entry.5, section ".printk_index", align 4
@lkdtm_CORRUPT_STACK._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.1, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016lkdtm: Corrupting stack containing char array ...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lkdtm_CORRUPT_STACK\00", [44 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_STACK._entry_ptr = internal global ptr @lkdtm_CORRUPT_STACK._entry, section ".printk_index", align 4
@lkdtm_CORRUPT_STACK_STRONG._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.1, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016lkdtm: Corrupting stack containing union ...\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lkdtm_CORRUPT_STACK_STRONG\00", [37 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_STACK_STRONG._entry_ptr = internal global ptr @lkdtm_CORRUPT_STACK_STRONG._entry, section ".printk_index", align 4
@stack_pid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lkdtm_REPORT_STACK._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.1, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016lkdtm: Starting stack offset tracking for pid %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lkdtm_REPORT_STACK\00", [45 x i8] zeroinitializer }, align 32
@lkdtm_REPORT_STACK._entry_ptr = internal global ptr @lkdtm_REPORT_STACK._entry, section ".printk_index", align 4
@stack_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lkdtm_REPORT_STACK._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.1, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016lkdtm: Stack offset: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lkdtm_REPORT_STACK._entry_ptr.16 = internal global ptr @lkdtm_REPORT_STACK._entry.14, section ".printk_index", align 4
@lkdtm_UNALIGNED_LOAD_STORE_WRITE.data.0 = internal global { i32, [28 x i8] } { i32 33752069, [28 x i8] zeroinitializer }, align 32
@lkdtm_UNALIGNED_LOAD_STORE_WRITE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.1, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013lkdtm: XFAIL: arch has CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lkdtm_UNALIGNED_LOAD_STORE_WRITE\00", [63 x i8] zeroinitializer }, align 32
@lkdtm_UNALIGNED_LOAD_STORE_WRITE._entry_ptr = internal global ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE._entry, section ".printk_index", align 4
@lock_me_up = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.6 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.108, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@huge = dso_local global { i32, [28 x i8] } { i32 2147483645, [28 x i8] zeroinitializer }, align 32
@lkdtm_OVERFLOW_SIGNED._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.1, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016lkdtm: Normal signed addition ...\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lkdtm_OVERFLOW_SIGNED\00", [42 x i8] zeroinitializer }, align 32
@lkdtm_OVERFLOW_SIGNED._entry_ptr = internal global ptr @lkdtm_OVERFLOW_SIGNED._entry, section ".printk_index", align 4
@ignored = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@lkdtm_OVERFLOW_SIGNED._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.1, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016lkdtm: Overflowing signed addition ...\0A\00", [54 x i8] zeroinitializer }, align 32
@lkdtm_OVERFLOW_SIGNED._entry_ptr.23 = internal global ptr @lkdtm_OVERFLOW_SIGNED._entry.21, section ".printk_index", align 4
@lkdtm_OVERFLOW_UNSIGNED._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.1, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lkdtm: Normal unsigned addition ...\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lkdtm_OVERFLOW_UNSIGNED\00", [40 x i8] zeroinitializer }, align 32
@lkdtm_OVERFLOW_UNSIGNED._entry_ptr = internal global ptr @lkdtm_OVERFLOW_UNSIGNED._entry, section ".printk_index", align 4
@lkdtm_OVERFLOW_UNSIGNED._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.1, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016lkdtm: Overflowing unsigned addition ...\0A\00", [52 x i8] zeroinitializer }, align 32
@lkdtm_OVERFLOW_UNSIGNED._entry_ptr.28 = internal global ptr @lkdtm_OVERFLOW_UNSIGNED._entry.26, section ".printk_index", align 4
@lkdtm_ARRAY_BOUNDS._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.1, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016lkdtm: Array access within bounds ...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lkdtm_ARRAY_BOUNDS\00", [45 x i8] zeroinitializer }, align 32
@lkdtm_ARRAY_BOUNDS._entry_ptr = internal global ptr @lkdtm_ARRAY_BOUNDS._entry, section ".printk_index", align 4
@lkdtm_ARRAY_BOUNDS._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.1, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016lkdtm: Array access beyond bounds ...\0A\00", [55 x i8] zeroinitializer }, align 32
@lkdtm_ARRAY_BOUNDS._entry_ptr.33 = internal global ptr @lkdtm_ARRAY_BOUNDS._entry.31, section ".printk_index", align 4
@lkdtm_ARRAY_BOUNDS._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.1, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013lkdtm: FAIL: survived array bounds overflow!\0A\00", [48 x i8] zeroinitializer }, align 32
@lkdtm_ARRAY_BOUNDS._entry_ptr.36 = internal global ptr @lkdtm_ARRAY_BOUNDS._entry.34, section ".printk_index", align 4
@lkdtm_ARRAY_BOUNDS._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.1, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013lkdtm: Unexpected! This %s was built with CONFIG_UBSAN_BOUNDS=y\0A\00", [61 x i8] zeroinitializer }, align 32
@lkdtm_ARRAY_BOUNDS._entry_ptr.39 = internal global ptr @lkdtm_ARRAY_BOUNDS._entry.37, section ".printk_index", align 4
@lkdtm_kernel_info = external dso_local local_unnamed_addr global ptr, align 4
@lkdtm_CORRUPT_LIST_ADD._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.1, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016lkdtm: attempting good list addition\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lkdtm_CORRUPT_LIST_ADD\00", [41 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_LIST_ADD._entry_ptr = internal global ptr @lkdtm_CORRUPT_LIST_ADD._entry, section ".printk_index", align 4
@lkdtm_CORRUPT_LIST_ADD._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.1, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016lkdtm: attempting corrupted list addition\0A\00", [51 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_LIST_ADD._entry_ptr.44 = internal global ptr @lkdtm_CORRUPT_LIST_ADD._entry.42, section ".printk_index", align 4
@lkdtm_CORRUPT_LIST_ADD._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.1, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013lkdtm: Overwrite did not happen, but no BUG?!\0A\00", [47 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_LIST_ADD._entry_ptr.47 = internal global ptr @lkdtm_CORRUPT_LIST_ADD._entry.45, section ".printk_index", align 4
@lkdtm_CORRUPT_LIST_ADD._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.1, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013lkdtm: list_add() corruption not detected!\0A\00", [50 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_LIST_ADD._entry_ptr.50 = internal global ptr @lkdtm_CORRUPT_LIST_ADD._entry.48, section ".printk_index", align 4
@lkdtm_CORRUPT_LIST_ADD._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.1, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013lkdtm: Unexpected! This %s was built with CONFIG_DEBUG_LIST=y\0A\00", [63 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_LIST_ADD._entry_ptr.53 = internal global ptr @lkdtm_CORRUPT_LIST_ADD._entry.51, section ".printk_index", align 4
@lkdtm_CORRUPT_LIST_DEL._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.1, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lkdtm: attempting good list removal\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lkdtm_CORRUPT_LIST_DEL\00", [41 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_LIST_DEL._entry_ptr = internal global ptr @lkdtm_CORRUPT_LIST_DEL._entry, section ".printk_index", align 4
@lkdtm_CORRUPT_LIST_DEL._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.1, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016lkdtm: attempting corrupted list removal\0A\00", [52 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_LIST_DEL._entry_ptr.58 = internal global ptr @lkdtm_CORRUPT_LIST_DEL._entry.56, section ".printk_index", align 4
@lkdtm_CORRUPT_LIST_DEL._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.55, ptr @.str.1, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_LIST_DEL._entry_ptr.60 = internal global ptr @lkdtm_CORRUPT_LIST_DEL._entry.59, section ".printk_index", align 4
@lkdtm_CORRUPT_LIST_DEL._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.1, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013lkdtm: list_del() corruption not detected!\0A\00", [50 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_LIST_DEL._entry_ptr.63 = internal global ptr @lkdtm_CORRUPT_LIST_DEL._entry.61, section ".printk_index", align 4
@lkdtm_CORRUPT_LIST_DEL._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.55, ptr @.str.1, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_LIST_DEL._entry_ptr.65 = internal global ptr @lkdtm_CORRUPT_LIST_DEL._entry.64, section ".printk_index", align 4
@lkdtm_STACK_GUARD_PAGE_LEADING._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.1, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016lkdtm: attempting bad read from page below current stack\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lkdtm_STACK_GUARD_PAGE_LEADING\00", [33 x i8] zeroinitializer }, align 32
@lkdtm_STACK_GUARD_PAGE_LEADING._entry_ptr = internal global ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry, section ".printk_index", align 4
@lkdtm_STACK_GUARD_PAGE_LEADING._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.1, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013lkdtm: FAIL: accessed page before stack! (byte: %x)\0A\00", [41 x i8] zeroinitializer }, align 32
@lkdtm_STACK_GUARD_PAGE_LEADING._entry_ptr.70 = internal global ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry.68, section ".printk_index", align 4
@lkdtm_STACK_GUARD_PAGE_TRAILING._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.1, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016lkdtm: attempting bad read from page above current stack\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lkdtm_STACK_GUARD_PAGE_TRAILING\00", [32 x i8] zeroinitializer }, align 32
@lkdtm_STACK_GUARD_PAGE_TRAILING._entry_ptr = internal global ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry, section ".printk_index", align 4
@lkdtm_STACK_GUARD_PAGE_TRAILING._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.1, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013lkdtm: FAIL: accessed page after stack! (byte: %x)\0A\00", [42 x i8] zeroinitializer }, align 32
@lkdtm_STACK_GUARD_PAGE_TRAILING._entry_ptr.75 = internal global ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry.73, section ".printk_index", align 4
@lkdtm_UNSET_SMEP._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.1, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013lkdtm: XFAIL: this test is x86_64-only\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lkdtm_UNSET_SMEP\00", [47 x i8] zeroinitializer }, align 32
@lkdtm_UNSET_SMEP._entry_ptr = internal global ptr @lkdtm_UNSET_SMEP._entry, section ".printk_index", align 4
@lkdtm_DOUBLE_FAULT._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.1, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013lkdtm: XFAIL: this test is ia32-only\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lkdtm_DOUBLE_FAULT\00", [45 x i8] zeroinitializer }, align 32
@lkdtm_DOUBLE_FAULT._entry_ptr = internal global ptr @lkdtm_DOUBLE_FAULT._entry, section ".printk_index", align 4
@lkdtm_CORRUPT_PAC._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.1, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013lkdtm: XFAIL: this test is arm64-only\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lkdtm_CORRUPT_PAC\00", [46 x i8] zeroinitializer }, align 32
@lkdtm_CORRUPT_PAC._entry_ptr = internal global ptr @lkdtm_CORRUPT_PAC._entry, section ".printk_index", align 4
@init_task = external dso_local local_unnamed_addr global %struct.task_struct, align 128
@__lkdtm_REPORT_STACK_CANARY._entry = internal constant %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.1, i32 186, ptr null, ptr null }, align 1
@.str.82 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013lkdtm: FAIL: global stack canary found at offset %ld (canary for pid %d matches init_task's)!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__lkdtm_REPORT_STACK_CANARY\00", [36 x i8] zeroinitializer }, align 32
@__lkdtm_REPORT_STACK_CANARY._entry_ptr = internal global ptr @__lkdtm_REPORT_STACK_CANARY._entry, section ".printk_index", align 4
@__lkdtm_REPORT_STACK_CANARY._entry.84 = internal constant %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.1, i32 188, ptr null, ptr null }, align 1
@.str.85 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014lkdtm: FAIL: did not correctly locate stack canary :(\0A\00", [39 x i8] zeroinitializer }, align 32
@__lkdtm_REPORT_STACK_CANARY._entry_ptr.86 = internal global ptr @__lkdtm_REPORT_STACK_CANARY._entry.84, section ".printk_index", align 4
@__lkdtm_REPORT_STACK_CANARY._entry.87 = internal constant %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.1, i32 189, ptr null, ptr null }, align 1
@.str.88 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013lkdtm: Unexpected! This %s was built with CONFIG_STACKPROTECTOR=y\0A\00", [59 x i8] zeroinitializer }, align 32
@__lkdtm_REPORT_STACK_CANARY._entry_ptr.89 = internal global ptr @__lkdtm_REPORT_STACK_CANARY._entry.87, section ".printk_index", align 4
@__lkdtm_REPORT_STACK_CANARY._entry.90 = internal constant %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.1, i32 194, ptr null, ptr null }, align 1
@.str.91 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014lkdtm: WARNING: found both current and init_task canaries nearby?!\0A\00", [58 x i8] zeroinitializer }, align 32
@__lkdtm_REPORT_STACK_CANARY._entry_ptr.92 = internal global ptr @__lkdtm_REPORT_STACK_CANARY._entry.90, section ".printk_index", align 4
@stack_canary_pid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stack_canary = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stack_canary_offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__lkdtm_REPORT_STACK_CANARY._entry.93 = internal constant %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.1, i32 203, ptr null, ptr null }, align 1
@.str.94 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016lkdtm: Recorded stack canary for pid %d at offset %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@__lkdtm_REPORT_STACK_CANARY._entry_ptr.95 = internal global ptr @__lkdtm_REPORT_STACK_CANARY._entry.93, section ".printk_index", align 4
@__lkdtm_REPORT_STACK_CANARY._entry.96 = internal constant %struct.pi_entry { ptr @.str.97, ptr @.str.83, ptr @.str.1, i32 205, ptr null, ptr null }, align 1
@.str.97 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014lkdtm: ERROR: saw pid %d again -- please use a new pid\0A\00", [38 x i8] zeroinitializer }, align 32
@__lkdtm_REPORT_STACK_CANARY._entry_ptr.98 = internal global ptr @__lkdtm_REPORT_STACK_CANARY._entry.96, section ".printk_index", align 4
@__lkdtm_REPORT_STACK_CANARY._entry.99 = internal constant %struct.pi_entry { ptr @.str.100, ptr @.str.83, ptr @.str.1, i32 209, ptr null, ptr null }, align 1
@.str.100 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014lkdtm: ERROR: canary offset changed from %ld to %ld!?\0A\00", [39 x i8] zeroinitializer }, align 32
@__lkdtm_REPORT_STACK_CANARY._entry_ptr.101 = internal global ptr @__lkdtm_REPORT_STACK_CANARY._entry.99, section ".printk_index", align 4
@__lkdtm_REPORT_STACK_CANARY._entry.102 = internal constant %struct.pi_entry { ptr @.str.103, ptr @.str.83, ptr @.str.1, i32 215, ptr null, ptr null }, align 1
@.str.103 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014lkdtm: FAIL: canary identical for pid %d and pid %d at offset %ld!\0A\00", [58 x i8] zeroinitializer }, align 32
@__lkdtm_REPORT_STACK_CANARY._entry_ptr.104 = internal global ptr @__lkdtm_REPORT_STACK_CANARY._entry.102, section ".printk_index", align 4
@__lkdtm_REPORT_STACK_CANARY._entry.105 = internal constant %struct.pi_entry { ptr @.str.106, ptr @.str.83, ptr @.str.1, i32 218, ptr null, ptr null }, align 1
@.str.106 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016lkdtm: ok: stack canaries differ between pid %d and pid %d at offset %ld.\0A\00", [51 x i8] zeroinitializer }, align 32
@__lkdtm_REPORT_STACK_CANARY._entry_ptr.107 = internal global ptr @__lkdtm_REPORT_STACK_CANARY._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lock_me_up\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"recur_count\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 36, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 73, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant [13 x i8] c"warn_counter\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 81, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 85, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 90, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 106, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 109, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 123, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 135, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [10 x i8] c"stack_pid\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 139, i32 14 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 148, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"stack_addr\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 140, i32 22 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 153, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [40 x i8] c"lkdtm_UNALIGNED_LOAD_STORE_WRITE.data.0\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 245, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [11 x i8] c"lock_me_up\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 276, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 284, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 277, i32 23 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 288, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 299, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 303, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 331, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 342, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 348, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 349, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 364, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 375, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 385, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 387, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 388, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 401, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 404, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 412, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 414, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 415, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 426, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 430, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 440, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 444, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 509, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 546, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 586, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 185, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 188, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 189, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 194, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"stack_canary_pid\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 156, i32 14 }
@___asan_gen_.389 = private unnamed_addr constant [13 x i8] c"stack_canary\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 157, i32 22 }
@___asan_gen_.392 = private unnamed_addr constant [20 x i8] c"stack_canary_offset\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 158, i32 22 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 202, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 205, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 208, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 214, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 217, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.411 = private constant [29 x i8] c"../drivers/misc/lkdtm/bugs.c\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 38, i32 8 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__lkdtm_REPORT_STACK_CANARY._entry, ptr @__lkdtm_REPORT_STACK_CANARY._entry.102, ptr @__lkdtm_REPORT_STACK_CANARY._entry.105, ptr @__lkdtm_REPORT_STACK_CANARY._entry.84, ptr @__lkdtm_REPORT_STACK_CANARY._entry.87, ptr @__lkdtm_REPORT_STACK_CANARY._entry.90, ptr @__lkdtm_REPORT_STACK_CANARY._entry.93, ptr @__lkdtm_REPORT_STACK_CANARY._entry.96, ptr @__lkdtm_REPORT_STACK_CANARY._entry.99, ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr, ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.101, ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.104, ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.107, ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.86, ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.89, ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.92, ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.95, ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.98, ptr @lkdtm_ARRAY_BOUNDS._entry, ptr @lkdtm_ARRAY_BOUNDS._entry.31, ptr @lkdtm_ARRAY_BOUNDS._entry.34, ptr @lkdtm_ARRAY_BOUNDS._entry.37, ptr @lkdtm_ARRAY_BOUNDS._entry_ptr, ptr @lkdtm_ARRAY_BOUNDS._entry_ptr.33, ptr @lkdtm_ARRAY_BOUNDS._entry_ptr.36, ptr @lkdtm_ARRAY_BOUNDS._entry_ptr.39, ptr @lkdtm_CORRUPT_LIST_ADD._entry, ptr @lkdtm_CORRUPT_LIST_ADD._entry.42, ptr @lkdtm_CORRUPT_LIST_ADD._entry.45, ptr @lkdtm_CORRUPT_LIST_ADD._entry.48, ptr @lkdtm_CORRUPT_LIST_ADD._entry.51, ptr @lkdtm_CORRUPT_LIST_ADD._entry_ptr, ptr @lkdtm_CORRUPT_LIST_ADD._entry_ptr.44, ptr @lkdtm_CORRUPT_LIST_ADD._entry_ptr.47, ptr @lkdtm_CORRUPT_LIST_ADD._entry_ptr.50, ptr @lkdtm_CORRUPT_LIST_ADD._entry_ptr.53, ptr @lkdtm_CORRUPT_LIST_DEL._entry, ptr @lkdtm_CORRUPT_LIST_DEL._entry.56, ptr @lkdtm_CORRUPT_LIST_DEL._entry.59, ptr @lkdtm_CORRUPT_LIST_DEL._entry.61, ptr @lkdtm_CORRUPT_LIST_DEL._entry.64, ptr @lkdtm_CORRUPT_LIST_DEL._entry_ptr, ptr @lkdtm_CORRUPT_LIST_DEL._entry_ptr.58, ptr @lkdtm_CORRUPT_LIST_DEL._entry_ptr.60, ptr @lkdtm_CORRUPT_LIST_DEL._entry_ptr.63, ptr @lkdtm_CORRUPT_LIST_DEL._entry_ptr.65, ptr @lkdtm_CORRUPT_PAC._entry, ptr @lkdtm_CORRUPT_PAC._entry_ptr, ptr @lkdtm_CORRUPT_STACK._entry, ptr @lkdtm_CORRUPT_STACK._entry_ptr, ptr @lkdtm_CORRUPT_STACK_STRONG._entry, ptr @lkdtm_CORRUPT_STACK_STRONG._entry_ptr, ptr @lkdtm_DOUBLE_FAULT._entry, ptr @lkdtm_DOUBLE_FAULT._entry_ptr, ptr @lkdtm_EXHAUST_STACK._entry, ptr @lkdtm_EXHAUST_STACK._entry.5, ptr @lkdtm_EXHAUST_STACK._entry_ptr, ptr @lkdtm_EXHAUST_STACK._entry_ptr.7, ptr @lkdtm_OVERFLOW_SIGNED._entry, ptr @lkdtm_OVERFLOW_SIGNED._entry.21, ptr @lkdtm_OVERFLOW_SIGNED._entry_ptr, ptr @lkdtm_OVERFLOW_SIGNED._entry_ptr.23, ptr @lkdtm_OVERFLOW_UNSIGNED._entry, ptr @lkdtm_OVERFLOW_UNSIGNED._entry.26, ptr @lkdtm_OVERFLOW_UNSIGNED._entry_ptr, ptr @lkdtm_OVERFLOW_UNSIGNED._entry_ptr.28, ptr @lkdtm_REPORT_STACK._entry, ptr @lkdtm_REPORT_STACK._entry.14, ptr @lkdtm_REPORT_STACK._entry_ptr, ptr @lkdtm_REPORT_STACK._entry_ptr.16, ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry, ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry.68, ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry_ptr, ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry_ptr.70, ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry, ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry.73, ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry_ptr, ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry_ptr.75, ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE._entry, ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE._entry_ptr, ptr @lkdtm_UNSET_SMEP._entry, ptr @lkdtm_UNSET_SMEP._entry_ptr, ptr @recur_count, ptr @.str, ptr @warn_counter, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @stack_pid, ptr @.str.12, ptr @.str.13, ptr @stack_addr, ptr @.str.15, ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE.data.0, ptr @.str.17, ptr @.str.18, ptr @lock_me_up, ptr @huge, ptr @.str.19, ptr @.str.20, ptr @ignored, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.62, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @stack_canary_pid, ptr @stack_canary, ptr @stack_canary_offset, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recur_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_EXHAUST_STACK._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_EXHAUST_STACK._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_STACK._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_STACK_STRONG._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REPORT_STACK._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REPORT_STACK._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE.data.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_me_up to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @huge to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_OVERFLOW_SIGNED._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignored to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_OVERFLOW_SIGNED._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_OVERFLOW_UNSIGNED._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_OVERFLOW_UNSIGNED._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_ARRAY_BOUNDS._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_ARRAY_BOUNDS._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_ARRAY_BOUNDS._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_ARRAY_BOUNDS._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_LIST_ADD._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_LIST_ADD._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_LIST_ADD._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_LIST_ADD._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_LIST_ADD._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_LIST_DEL._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_LIST_DEL._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_LIST_DEL._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_LIST_DEL._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_LIST_DEL._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_UNSET_SMEP._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_DOUBLE_FAULT._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_CORRUPT_PAC._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_canary_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_canary to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_canary_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lkdtm_bugs_init(ptr nocapture noundef %recur_param) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %recur_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %recur_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load i32, ptr @recur_count, align 4
  %3 = ptrtoint ptr %recur_param to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %recur_param, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i32 %1, ptr @recur_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_PANIC() local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #15
  unreachable
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_BUG() local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/lkdtm/bugs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #12, !srcloc !219
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_WARNING() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @warn_counter, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @warn_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool.not = icmp eq i32 %inc, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !220

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_WARNING_MESSAGE() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @warn_counter, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @warn_counter, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %inc) #12
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_EXCEPTION() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 0)
  store volatile i32 0, ptr null, align 2147483648
  ret void
}

; Function Attrs: nofree norecurse noreturn nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_LOOP() local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_EXHAUST_STACK() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @recur_count, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 512, i32 noundef %0) #16
  %1 = load i32, ptr @recur_count, align 4
  %call1 = tail call fastcc i32 @recursive_loop(i32 noundef %1)
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recursive_loop(i32 noundef %remaining) unnamed_addr #9 align 64 {
entry:
  %buf = alloca [512 x i8], align 1
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 512)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret)
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %ret, align 4
  %2 = trunc i32 %remaining to i8
  %3 = zext i8 %2 to i32
  %4 = call ptr @memset(ptr %buf, i32 %3, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining)
  %tobool.not = icmp eq i32 %remaining, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rem = and i32 %remaining, 511
  %arrayidx = getelementptr [512 x i8], ptr %buf, i32 0, i32 %rem
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %sub = add nsw i32 %conv, -1
  %call = tail call fastcc i32 @recursive_loop(i32 noundef %sub)
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %call, ptr %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = call ptr @memset(ptr %buf, i32 0, i32 512)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %buf) #12, !srcloc !221
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %10)
  %ret.0.ret.0.ret.0. = load volatile i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret)
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #12
  ret i32 %ret.0.ret.0.ret.0.
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_CORRUPT_STACK() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_CORRUPT_STACK_STRONG() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REPORT_STACK() local_unnamed_addr #3 align 64 {
entry:
  %magic = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %magic) #12
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %magic, align 4, !annotation !222
  %1 = tail call i32 @llvm.read_register.i32(metadata !209) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid.i, align 8
  %7 = load i32, ptr @stack_pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp.not = icmp eq i32 %6, %7
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = ptrtoint ptr %magic to i32
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %6) #16
  store i32 %6, ptr @stack_pid, align 4
  %8 = ptrtoint ptr %magic to i32
  store i32 %8, ptr @stack_addr, align 4
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %.pre-phi = phi i32 [ %.pre, %entry.do.end5_crit_edge ], [ %8, %do.end ]
  %9 = load i32, ptr @stack_addr, align 4
  %sub = sub i32 %9, %.pre-phi
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %sub) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REPORT_STACK_CANARY() local_unnamed_addr #3 align 64 {
entry:
  %data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data, align 8
  call fastcc void @__lkdtm_REPORT_STACK_CANARY(ptr noundef nonnull %data)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lkdtm_REPORT_STACK_CANARY(ptr nocapture noundef readonly %stack) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !209) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid.i, align 8
  %stack_canary = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 70
  %6 = ptrtoint ptr %stack_canary to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stack_canary, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 70) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 70), align 32
  %add.ptr = getelementptr i32, ptr %stack, i32 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp4 = icmp eq i32 %10, %7
  %spec.select = zext i1 %cmp4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp5 = icmp eq i32 %10, %8
  %init_offset.1 = zext i1 %cmp5 to i32
  %add.ptr.1 = getelementptr i32, ptr %stack, i32 2
  %11 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %7)
  %cmp4.1 = icmp eq i32 %12, %7
  %spec.select.1 = select i1 %cmp4.1, i32 2, i32 %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp5.1 = icmp eq i32 %12, %8
  %init_offset.1.1 = select i1 %cmp5.1, i32 2, i32 %init_offset.1
  %add.ptr.2 = getelementptr i32, ptr %stack, i32 3
  %13 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %7)
  %cmp4.2 = icmp eq i32 %14, %7
  %spec.select.2 = select i1 %cmp4.2, i32 3, i32 %spec.select.1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %8)
  %cmp5.2 = icmp eq i32 %14, %8
  %init_offset.1.2 = select i1 %cmp5.2, i32 3, i32 %init_offset.1.1
  %add.ptr.3 = getelementptr i32, ptr %stack, i32 4
  %15 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %7)
  %cmp4.3 = icmp eq i32 %16, %7
  %spec.select.3 = select i1 %cmp4.3, i32 4, i32 %spec.select.2
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %8)
  %cmp5.3 = icmp eq i32 %16, %8
  %init_offset.1.3 = select i1 %cmp5.3, i32 4, i32 %init_offset.1.2
  %add.ptr.4 = getelementptr i32, ptr %stack, i32 5
  %17 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %7)
  %cmp4.4 = icmp eq i32 %18, %7
  %spec.select.4 = select i1 %cmp4.4, i32 5, i32 %spec.select.3
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %8)
  %cmp5.4 = icmp eq i32 %18, %8
  %init_offset.1.4 = select i1 %cmp5.4, i32 5, i32 %init_offset.1.3
  %add.ptr.5 = getelementptr i32, ptr %stack, i32 6
  %19 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %7)
  %cmp4.5 = icmp eq i32 %20, %7
  %spec.select.5 = select i1 %cmp4.5, i32 6, i32 %spec.select.4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %8)
  %cmp5.5 = icmp eq i32 %20, %8
  %init_offset.1.5 = select i1 %cmp5.5, i32 6, i32 %init_offset.1.4
  %add.ptr.6 = getelementptr i32, ptr %stack, i32 7
  %21 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %7)
  %cmp4.6 = icmp eq i32 %22, %7
  %spec.select.6 = select i1 %cmp4.6, i32 7, i32 %spec.select.5
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %8)
  %cmp5.6 = icmp eq i32 %22, %8
  %init_offset.1.6 = select i1 %cmp5.6, i32 7, i32 %init_offset.1.5
  %add.ptr.7 = getelementptr i32, ptr %stack, i32 8
  %23 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %7)
  %cmp4.7 = icmp eq i32 %24, %7
  %spec.select.7 = select i1 %cmp4.7, i32 8, i32 %spec.select.6
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %8)
  %cmp5.7 = icmp eq i32 %24, %8
  %init_offset.1.7 = select i1 %cmp5.7, i32 8, i32 %init_offset.1.6
  %add.ptr.8 = getelementptr i32, ptr %stack, i32 9
  %25 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %7)
  %cmp4.8 = icmp eq i32 %26, %7
  %spec.select.8 = select i1 %cmp4.8, i32 9, i32 %spec.select.7
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %8)
  %cmp5.8 = icmp eq i32 %26, %8
  %init_offset.1.8 = select i1 %cmp5.8, i32 9, i32 %init_offset.1.7
  %add.ptr.9 = getelementptr i32, ptr %stack, i32 10
  %27 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %7)
  %cmp4.9 = icmp eq i32 %28, %7
  %spec.select.9 = select i1 %cmp4.9, i32 10, i32 %spec.select.8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %8)
  %cmp5.9 = icmp eq i32 %28, %8
  %init_offset.1.9 = select i1 %cmp5.9, i32 10, i32 %init_offset.1.8
  %add.ptr.10 = getelementptr i32, ptr %stack, i32 11
  %29 = ptrtoint ptr %add.ptr.10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %7)
  %cmp4.10 = icmp eq i32 %30, %7
  %spec.select.10 = select i1 %cmp4.10, i32 11, i32 %spec.select.9
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %8)
  %cmp5.10 = icmp eq i32 %30, %8
  %init_offset.1.10 = select i1 %cmp5.10, i32 11, i32 %init_offset.1.9
  %add.ptr.11 = getelementptr i32, ptr %stack, i32 12
  %31 = ptrtoint ptr %add.ptr.11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %7)
  %cmp4.11 = icmp eq i32 %32, %7
  %spec.select.11 = select i1 %cmp4.11, i32 12, i32 %spec.select.10
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %8)
  %cmp5.11 = icmp eq i32 %32, %8
  %init_offset.1.11 = select i1 %cmp5.11, i32 12, i32 %init_offset.1.10
  %add.ptr.12 = getelementptr i32, ptr %stack, i32 13
  %33 = ptrtoint ptr %add.ptr.12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %7)
  %cmp4.12 = icmp eq i32 %34, %7
  %spec.select.12 = select i1 %cmp4.12, i32 13, i32 %spec.select.11
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %8)
  %cmp5.12 = icmp eq i32 %34, %8
  %init_offset.1.12 = select i1 %cmp5.12, i32 13, i32 %init_offset.1.11
  %add.ptr.13 = getelementptr i32, ptr %stack, i32 14
  %35 = ptrtoint ptr %add.ptr.13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %7)
  %cmp4.13 = icmp eq i32 %36, %7
  %spec.select.13 = select i1 %cmp4.13, i32 14, i32 %spec.select.12
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %8)
  %cmp5.13 = icmp eq i32 %36, %8
  %init_offset.1.13 = select i1 %cmp5.13, i32 14, i32 %init_offset.1.12
  %add.ptr.14 = getelementptr i32, ptr %stack, i32 15
  %37 = ptrtoint ptr %add.ptr.14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %7)
  %cmp4.14 = icmp eq i32 %38, %7
  %spec.select.14 = select i1 %cmp4.14, i32 15, i32 %spec.select.13
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %8)
  %cmp5.14 = icmp eq i32 %38, %8
  %init_offset.1.14 = select i1 %cmp5.14, i32 15, i32 %init_offset.1.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.14)
  %cmp8 = icmp eq i32 %spec.select.14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init_offset.1.14)
  %cmp10.not = icmp eq i32 %init_offset.1.14, 0
  br i1 %cmp8, label %if.then9, label %if.else24

if.then9:                                         ; preds = %entry
  br i1 %cmp10.not, label %do.end15, label %do.end

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %init_offset.1.14, i32 noundef %5) #16
  br label %cleanup

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %39 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %39) #16
  br label %cleanup

if.else24:                                        ; preds = %entry
  br i1 %cmp10.not, label %if.else24.if.end33_crit_edge, label %do.end29

if.else24.if.end33_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.end29:                                         ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #16
  br label %if.end33

if.end33:                                         ; preds = %do.end29, %if.else24.if.end33_crit_edge
  %add.ptr34 = getelementptr i32, ptr %stack, i32 %spec.select.14
  %40 = load i32, ptr @stack_canary_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp35 = icmp eq i32 %40, 0
  br i1 %cmp35, label %if.then36, label %if.else42

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr34, align 4
  store i32 %42, ptr @stack_canary, align 4
  store i32 %5, ptr @stack_canary_pid, align 4
  store i32 %spec.select.14, ptr @stack_canary_offset, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %5, i32 noundef %spec.select.14) #16
  br label %cleanup

if.else42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %40)
  %cmp43 = icmp eq i32 %5, %40
  br i1 %cmp43, label %do.end47, label %if.else50

do.end47:                                         ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %5) #16
  br label %cleanup

if.else50:                                        ; preds = %if.else42
  %43 = load i32, ptr @stack_canary_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.14, i32 %43)
  %cmp51.not = icmp eq i32 %spec.select.14, %43
  br i1 %cmp51.not, label %if.end58, label %do.end55

do.end55:                                         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #14
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %43, i32 noundef %spec.select.14) #16
  br label %cleanup

if.end58:                                         ; preds = %if.else50
  %44 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr34, align 4
  %46 = load i32, ptr @stack_canary, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %46)
  %cmp59 = icmp eq i32 %45, %46
  br i1 %cmp59, label %do.end63, label %do.end69

do.end63:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %40, i32 noundef %5, i32 noundef %spec.select.14) #16
  br label %cleanup

do.end69:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %40, i32 noundef %5, i32 noundef %spec.select.14) #16
  store i32 0, ptr @stack_canary_pid, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %do.end63, %do.end55, %do.end47, %if.then36, %do.end15, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_UNALIGNED_LOAD_STORE_WRITE() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE.data.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  %spec.select = select i1 %cmp, i32 -2023406815, i32 305419896
  store i32 %spec.select, ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE.data.0, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #16
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_SOFTLOCKUP() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !209) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !223
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !224
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !225
  br label %for.cond
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_HARDLOCKUP() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !226
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !227
  br i1 %tobool.not, label %if.then, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !229
  br label %for.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_SPINLOCKUP() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @lock_me_up) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_HUNG_TASK() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !209) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@lkdtm_HUNG_TASK, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @schedule() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_OVERFLOW_SIGNED() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @huge, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  %add = add i32 %0, 1
  store volatile i32 %add, ptr @ignored, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  %add6 = add i32 %0, 5
  store volatile i32 %add6, ptr @ignored, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_OVERFLOW_UNSIGNED() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @huge, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  %add = add i32 %0, 1
  store volatile i32 %add, ptr @ignored, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #16
  %add6 = add i32 %0, 5
  store volatile i32 %add6, ptr @ignored, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_ARRAY_BOUNDS() local_unnamed_addr #3 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i)
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 24) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 40) #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %i, align 4
  %i.0.i.0.i.0.46 = load volatile i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i.0.i.0.46)
  %cmp47 = icmp ult i32 %i.0.i.0.i.0.46, 8
  br i1 %cmp47, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %4)
  %i.0.i.0.i.0.34 = load volatile i32, ptr %i, align 4
  %arrayidx = getelementptr %struct.array_bounds, ptr %call7.i45, i32 0, i32 2, i32 %i.0.i.0.i.0.34
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 65, ptr %arrayidx, align 1
  %i.0.i.0.i.0.35 = load volatile i32, ptr %i, align 4
  %inc = add i32 %i.0.i.0.i.0.35, 1
  store volatile i32 %inc, ptr %i, align 4
  %i.0.i.0.i.0. = load volatile i32, ptr %i, align 4
  %cmp = icmp ult i32 %i.0.i.0.i.0., 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %i, align 4
  %i.0.i.0.i.0.3648 = load volatile i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0.i.0.i.0.3648)
  %cmp449 = icmp ult i32 %i.0.i.0.i.0.3648, 2
  br i1 %cmp449, label %for.end.for.body5_crit_edge, label %for.end.do.end13_crit_edge

for.end.do.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

for.end.for.body5_crit_edge:                      ; preds = %for.end
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.end.for.body5_crit_edge
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %i.0.i.0.i.0.37 = load volatile i32, ptr %i, align 4
  %arrayidx7 = getelementptr %struct.array_bounds_flex_array, ptr %call7.i, i32 0, i32 2, i32 %i.0.i.0.i.0.37
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 65, ptr %arrayidx7, align 1
  %i.0.i.0.i.0.38 = load volatile i32, ptr %i, align 4
  %inc9 = add i32 %i.0.i.0.i.0.38, 1
  store volatile i32 %inc9, ptr %i, align 4
  %i.0.i.0.i.0.36 = load volatile i32, ptr %i, align 4
  %cmp4 = icmp ult i32 %i.0.i.0.i.0.36, 2
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.do.end13_crit_edge

for.body5.do.end13_crit_edge:                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5

do.end13:                                         ; preds = %for.body5.do.end13_crit_edge, %for.end.do.end13_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #16
  %9 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %i, align 4
  %i.0.i.0.i.0.3950 = load volatile i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.0.i.0.i.0.3950)
  %cmp1751 = icmp ult i32 %i.0.i.0.i.0.3950, 9
  br i1 %cmp1751, label %do.end13.for.body18_crit_edge, label %do.end13.for.end23_crit_edge

do.end13.for.end23_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23

do.end13.for.body18_crit_edge:                    ; preds = %do.end13
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %do.end13.for.body18_crit_edge
  %10 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %10)
  %i.0.i.0.i.0.40 = load volatile i32, ptr %i, align 4
  %arrayidx20 = getelementptr %struct.array_bounds, ptr %call7.i45, i32 0, i32 2, i32 %i.0.i.0.i.0.40
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 66, ptr %arrayidx20, align 1
  %i.0.i.0.i.0.41 = load volatile i32, ptr %i, align 4
  %inc22 = add i32 %i.0.i.0.i.0.41, 1
  store volatile i32 %inc22, ptr %i, align 4
  %i.0.i.0.i.0.39 = load volatile i32, ptr %i, align 4
  %cmp17 = icmp ult i32 %i.0.i.0.i.0.39, 9
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.body18.for.end23_crit_edge

for.body18.for.end23_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18

for.end23:                                        ; preds = %for.body18.for.end23_crit_edge, %do.end13.for.end23_crit_edge
  tail call void @kfree(ptr noundef %call7.i) #12
  tail call void @kfree(ptr noundef %call7.i45) #12
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %12 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %12) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_CORRUPT_LIST_ADD() local_unnamed_addr #3 align 64 {
entry:
  %test_head = alloca %struct.list_head, align 4
  %good = alloca %struct.lkdtm_list, align 4
  %bad = alloca %struct.lkdtm_list, align 4
  %target = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %test_head) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %test_head, i32 0, i32 1
  %1 = ptrtoint ptr %test_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %test_head, ptr %test_head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test_head, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %good) #12
  %3 = ptrtoint ptr %good to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %good, align 4, !annotation !222
  %4 = getelementptr inbounds %struct.list_head, ptr %good, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bad) #12
  %6 = ptrtoint ptr %bad to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad, align 4, !annotation !222
  %7 = getelementptr inbounds %struct.list_head, ptr %bad, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target) #12
  %9 = ptrtoint ptr %target to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %target, align 8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #16
  %10 = ptrtoint ptr %test_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %test_head, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %good, ptr noundef nonnull %test_head, ptr noundef %11) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %good, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %good to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %good, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %test_head, ptr %4, align 4
  %15 = ptrtoint ptr %test_head to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %good, ptr %test_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #16
  %16 = ptrtoint ptr %test_head to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %target, ptr %test_head, align 4
  %call.i.i25 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %bad, ptr noundef nonnull %test_head, ptr noundef nonnull %target) #12
  br i1 %call.i.i25, label %if.end.i.i28, label %list_add.exit.list_add.exit29_crit_edge

list_add.exit.list_add.exit29_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit29

if.end.i.i28:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i26 = getelementptr inbounds %struct.list_head, ptr %target, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bad, ptr %prev1.i.i26, align 4
  %18 = ptrtoint ptr %bad to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %target, ptr %bad, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %test_head, ptr %7, align 4
  %20 = ptrtoint ptr %test_head to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %bad, ptr %test_head, align 4
  br label %list_add.exit29

list_add.exit29:                                  ; preds = %if.end.i.i28, %list_add.exit.list_add.exit29_crit_edge
  %21 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %target, align 8
  %cmp = icmp eq ptr %22, null
  br i1 %cmp, label %land.lhs.true, label %list_add.exit29.do.end17_crit_edge

list_add.exit29.do.end17_crit_edge:               ; preds = %list_add.exit29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

land.lhs.true:                                    ; preds = %list_add.exit29
  %arrayidx8 = getelementptr inbounds [2 x ptr], ptr %target, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx8, align 4
  %cmp9 = icmp eq ptr %24, null
  br i1 %cmp9, label %do.end12, label %land.lhs.true.do.end17_crit_edge

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.end12:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #16
  br label %if.end

do.end17:                                         ; preds = %land.lhs.true.do.end17_crit_edge, %list_add.exit29.do.end17_crit_edge
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %25 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %25) #16
  br label %if.end

if.end:                                           ; preds = %do.end17, %do.end12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bad) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %good) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %test_head) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_CORRUPT_LIST_DEL() local_unnamed_addr #3 align 64 {
entry:
  %test_head = alloca %struct.list_head, align 4
  %item = alloca %struct.lkdtm_list, align 4
  %target = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %test_head) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %test_head, i32 0, i32 1
  %1 = ptrtoint ptr %test_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %test_head, ptr %test_head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test_head, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %item) #12
  %3 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %item, align 4, !annotation !222
  %4 = getelementptr inbounds %struct.list_head, ptr %item, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target) #12
  %6 = ptrtoint ptr %target to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %target, align 8
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %item, ptr noundef nonnull %test_head, ptr noundef nonnull %test_head) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %item, ptr %0, align 4
  %8 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %test_head, ptr %item, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test_head, ptr %4, align 4
  %10 = ptrtoint ptr %test_head to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %item, ptr %test_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #16
  %call.i.i28 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %item) #12
  br i1 %call.i.i28, label %if.end.i.i29, label %list_add.exit.list_del.exit_crit_edge

list_add.exit.list_del.exit_crit_edge:            ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i29:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %13 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %item, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i29, %list_add.exit.list_del.exit_crit_edge
  %17 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %item, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #16
  %19 = ptrtoint ptr %test_head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %test_head, align 4
  %call.i.i30 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %item, ptr noundef nonnull %test_head, ptr noundef %20) #12
  br i1 %call.i.i30, label %if.end.i.i33, label %list_del.exit.list_add.exit34_crit_edge

list_del.exit.list_add.exit34_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit34

if.end.i.i33:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i31 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %item, ptr %prev1.i.i31, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test_head, ptr %4, align 4
  %23 = ptrtoint ptr %test_head to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %item, ptr %test_head, align 4
  br label %list_add.exit34

list_add.exit34:                                  ; preds = %if.end.i.i33, %list_del.exit.list_add.exit34_crit_edge
  %24 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %target, ptr %item, align 4
  %call.i.i35 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %item) #12
  br i1 %call.i.i35, label %if.end.i.i38, label %list_add.exit34.list_del.exit40_crit_edge

list_add.exit34.list_del.exit40_crit_edge:        ; preds = %list_add.exit34
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit40

if.end.i.i38:                                     ; preds = %list_add.exit34
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 4
  %27 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %item, align 4
  %prev1.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i37, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit40

list_del.exit40:                                  ; preds = %if.end.i.i38, %list_add.exit34.list_del.exit40_crit_edge
  %31 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %item, align 4
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %33 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %target, align 8
  %cmp = icmp eq ptr %34, null
  br i1 %cmp, label %land.lhs.true, label %list_del.exit40.do.end20_crit_edge

list_del.exit40.do.end20_crit_edge:               ; preds = %list_del.exit40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

land.lhs.true:                                    ; preds = %list_del.exit40
  %arrayidx11 = getelementptr inbounds [2 x ptr], ptr %target, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx11, align 4
  %cmp12 = icmp eq ptr %36, null
  br i1 %cmp12, label %do.end15, label %land.lhs.true.do.end20_crit_edge

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

do.end15:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #16
  br label %if.end

do.end20:                                         ; preds = %land.lhs.true.do.end20_crit_edge, %list_del.exit40.do.end20_crit_edge
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %37 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %37) #16
  br label %if.end

if.end:                                           ; preds = %do.end20, %do.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %item) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %test_head) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_STACK_GUARD_PAGE_LEADING() local_unnamed_addr #3 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !209) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte)
  %6 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 -1, ptr %byte, align 1
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #16
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %9 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 %8, ptr %byte, align 1
  %byte.0.byte.0.byte.0. = load volatile i8, ptr %byte, align 1
  %conv = zext i8 %byte.0.byte.0.byte.0. to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %conv) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_STACK_GUARD_PAGE_TRAILING() local_unnamed_addr #3 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !209) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16384
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte)
  %6 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 -1, ptr %byte, align 1
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #16
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %9 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 %8, ptr %byte, align 1
  %byte.0.byte.0.byte.0. = load volatile i8, ptr %byte, align 1
  %conv = zext i8 %byte.0.byte.0.byte.0. to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_UNSET_SMEP() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_DOUBLE_FAULT() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_CORRUPT_PAC() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse noreturn nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !206, !208}
!llvm.named.register.sp = !{!209}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/lkdtm/bugs.c", i32 73, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/lkdtm/bugs.c", i32 85, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/misc/lkdtm/bugs.c", i32 90, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/misc/lkdtm/bugs.c", i32 106, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @lkdtm_EXHAUST_STACK._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @lkdtm_EXHAUST_STACK._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/misc/lkdtm/bugs.c", i32 109, i32 2}
!13 = !{ptr @lkdtm_EXHAUST_STACK._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @lkdtm_EXHAUST_STACK._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/misc/lkdtm/bugs.c", i32 123, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @lkdtm_CORRUPT_STACK._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @lkdtm_CORRUPT_STACK._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/lkdtm/bugs.c", i32 135, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lkdtm_CORRUPT_STACK_STRONG._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @lkdtm_CORRUPT_STACK_STRONG._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/lkdtm/bugs.c", i32 148, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @lkdtm_REPORT_STACK._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @lkdtm_REPORT_STACK._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/lkdtm/bugs.c", i32 153, i32 2}
!32 = !{ptr @lkdtm_REPORT_STACK._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lkdtm_REPORT_STACK._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"data", i1 false, i1 false}
!35 = !{!"../drivers/misc/lkdtm/bugs.c", i32 235, i32 12}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/lkdtm/bugs.c", i32 245, i32 3}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @lkdtm_UNALIGNED_LOAD_STORE_WRITE._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/misc/lkdtm/bugs.c", i32 272, i32 2}
!43 = !{ptr @huge, !44, !"huge", i1 false, i1 false}
!44 = !{!"../drivers/misc/lkdtm/bugs.c", i32 276, i32 23}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/lkdtm/bugs.c", i32 284, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @lkdtm_OVERFLOW_SIGNED._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @lkdtm_OVERFLOW_SIGNED._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/lkdtm/bugs.c", i32 288, i32 2}
!52 = !{ptr @lkdtm_OVERFLOW_SIGNED._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @lkdtm_OVERFLOW_SIGNED._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/lkdtm/bugs.c", i32 299, i32 2}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @lkdtm_OVERFLOW_UNSIGNED._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @lkdtm_OVERFLOW_UNSIGNED._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/misc/lkdtm/bugs.c", i32 303, i32 2}
!61 = !{ptr @lkdtm_OVERFLOW_UNSIGNED._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @lkdtm_OVERFLOW_UNSIGNED._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/lkdtm/bugs.c", i32 331, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @lkdtm_ARRAY_BOUNDS._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @lkdtm_ARRAY_BOUNDS._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/misc/lkdtm/bugs.c", i32 342, i32 2}
!70 = !{ptr @lkdtm_ARRAY_BOUNDS._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @lkdtm_ARRAY_BOUNDS._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/lkdtm/bugs.c", i32 348, i32 2}
!74 = !{ptr @lkdtm_ARRAY_BOUNDS._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @lkdtm_ARRAY_BOUNDS._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/misc/lkdtm/bugs.c", i32 349, i32 2}
!78 = !{ptr @lkdtm_ARRAY_BOUNDS._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @lkdtm_ARRAY_BOUNDS._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/lkdtm/bugs.c", i32 364, i32 2}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @lkdtm_CORRUPT_LIST_ADD._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @lkdtm_CORRUPT_LIST_ADD._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/misc/lkdtm/bugs.c", i32 375, i32 2}
!87 = !{ptr @lkdtm_CORRUPT_LIST_ADD._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @lkdtm_CORRUPT_LIST_ADD._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/misc/lkdtm/bugs.c", i32 385, i32 3}
!91 = !{ptr @lkdtm_CORRUPT_LIST_ADD._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @lkdtm_CORRUPT_LIST_ADD._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/misc/lkdtm/bugs.c", i32 387, i32 3}
!95 = !{ptr @lkdtm_CORRUPT_LIST_ADD._entry.48, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @lkdtm_CORRUPT_LIST_ADD._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/lkdtm/bugs.c", i32 388, i32 3}
!99 = !{ptr @lkdtm_CORRUPT_LIST_ADD._entry.51, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @lkdtm_CORRUPT_LIST_ADD._entry_ptr.53, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/misc/lkdtm/bugs.c", i32 401, i32 2}
!103 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @lkdtm_CORRUPT_LIST_DEL._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @lkdtm_CORRUPT_LIST_DEL._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/misc/lkdtm/bugs.c", i32 404, i32 2}
!108 = !{ptr @lkdtm_CORRUPT_LIST_DEL._entry.56, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @lkdtm_CORRUPT_LIST_DEL._entry_ptr.58, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @lkdtm_CORRUPT_LIST_DEL._entry.59, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/misc/lkdtm/bugs.c", i32 412, i32 3}
!112 = !{ptr @lkdtm_CORRUPT_LIST_DEL._entry_ptr.60, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/misc/lkdtm/bugs.c", i32 414, i32 3}
!115 = !{ptr @lkdtm_CORRUPT_LIST_DEL._entry.61, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @lkdtm_CORRUPT_LIST_DEL._entry_ptr.63, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @lkdtm_CORRUPT_LIST_DEL._entry.64, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/misc/lkdtm/bugs.c", i32 415, i32 3}
!119 = !{ptr @lkdtm_CORRUPT_LIST_DEL._entry_ptr.65, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/misc/lkdtm/bugs.c", i32 426, i32 2}
!122 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/misc/lkdtm/bugs.c", i32 430, i32 2}
!127 = !{ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry.68, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @lkdtm_STACK_GUARD_PAGE_LEADING._entry_ptr.70, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/misc/lkdtm/bugs.c", i32 440, i32 2}
!131 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/misc/lkdtm/bugs.c", i32 444, i32 2}
!136 = !{ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry.73, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @lkdtm_STACK_GUARD_PAGE_TRAILING._entry_ptr.75, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/misc/lkdtm/bugs.c", i32 509, i32 2}
!140 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @lkdtm_UNSET_SMEP._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @lkdtm_UNSET_SMEP._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/misc/lkdtm/bugs.c", i32 546, i32 2}
!145 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @lkdtm_DOUBLE_FAULT._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @lkdtm_DOUBLE_FAULT._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/misc/lkdtm/bugs.c", i32 586, i32 2}
!150 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @lkdtm_CORRUPT_PAC._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @lkdtm_CORRUPT_PAC._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @warn_counter, !154, !"warn_counter", i1 false, i1 false}
!154 = !{!"../drivers/misc/lkdtm/bugs.c", i32 81, i32 12}
!155 = !{ptr @stack_pid, !156, !"stack_pid", i1 false, i1 false}
!156 = !{!"../drivers/misc/lkdtm/bugs.c", i32 139, i32 14}
!157 = !{ptr @stack_addr, !158, !"stack_addr", i1 false, i1 false}
!158 = !{!"../drivers/misc/lkdtm/bugs.c", i32 140, i32 22}
!159 = !{ptr @ignored, !160, !"ignored", i1 false, i1 false}
!160 = !{!"../drivers/misc/lkdtm/bugs.c", i32 277, i32 23}
!161 = !{ptr @recur_count, !162, !"recur_count", i1 false, i1 false}
!162 = !{!"../drivers/misc/lkdtm/bugs.c", i32 36, i32 12}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/misc/lkdtm/bugs.c", i32 185, i32 4}
!165 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/misc/lkdtm/bugs.c", i32 188, i32 4}
!170 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry.84, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.86, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/misc/lkdtm/bugs.c", i32 189, i32 4}
!174 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry.87, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.89, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/misc/lkdtm/bugs.c", i32 194, i32 3}
!178 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry.90, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.92, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/misc/lkdtm/bugs.c", i32 202, i32 3}
!182 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry.93, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.95, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/misc/lkdtm/bugs.c", i32 205, i32 3}
!186 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry.96, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.98, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/misc/lkdtm/bugs.c", i32 208, i32 4}
!190 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry.99, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.101, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/misc/lkdtm/bugs.c", i32 214, i32 4}
!194 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry.102, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.104, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/misc/lkdtm/bugs.c", i32 217, i32 4}
!198 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry.105, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @__lkdtm_REPORT_STACK_CANARY._entry_ptr.107, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @stack_canary_pid, !201, !"stack_canary_pid", i1 false, i1 false}
!201 = !{!"../drivers/misc/lkdtm/bugs.c", i32 156, i32 14}
!202 = !{ptr @stack_canary, !203, !"stack_canary", i1 false, i1 false}
!203 = !{!"../drivers/misc/lkdtm/bugs.c", i32 157, i32 22}
!204 = !{ptr @stack_canary_offset, !205, !"stack_canary_offset", i1 false, i1 false}
!205 = !{!"../drivers/misc/lkdtm/bugs.c", i32 158, i32 22}
!206 = !{ptr @.str.108, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/misc/lkdtm/bugs.c", i32 38, i32 8}
!208 = !{ptr @lock_me_up, !207, !"lock_me_up", i1 false, i1 false}
!209 = !{!"sp"}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{i64 2152344549, i64 2152345038, i64 2152344586, i64 2152344642, i64 2152344676, i64 2152344700, i64 2152344741, i64 2152344762, i64 2152344790, i64 2152344824}
!220 = !{!"branch_weights", i32 2000, i32 1}
!221 = !{i64 2149212816}
!222 = !{!"auto-init"}
!223 = !{i64 2152380829}
!224 = !{i64 2152381058}
!225 = !{i64 2152380900}
!226 = !{i64 623227}
!227 = !{i64 620930}
!228 = !{i64 2152381556}
!229 = !{i64 2152381398}
!230 = !{i64 2152386294}
