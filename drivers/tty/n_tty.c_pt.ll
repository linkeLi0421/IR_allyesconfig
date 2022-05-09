; ModuleID = '/llk/IR_all_yes/drivers/tty/n_tty.c_pt.bc'
source_filename = "../drivers/tty/n_tty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+n_tty_inherit_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_n_tty_inherit_ops\09\09\09\09"
module asm "\09.long\09__crc_n_tty_inherit_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_n_tty_inherit_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22n_tty_inherit_ops\22\09\09\09\09\09"
module asm "__kstrtabns_n_tty_inherit_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.n_tty_data = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i8, i8, [4096 x i8], [128 x i32], [4096 x i8], i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.68, %struct.anon.69, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.68 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.69 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.67, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.67 = type { ptr }

@n_tty_ops = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str, i32 0, ptr @n_tty_open, ptr @n_tty_close, ptr @n_tty_flush_buffer, ptr @n_tty_read, ptr @n_tty_write, ptr @n_tty_ioctl, ptr null, ptr @n_tty_set_termios, ptr @n_tty_poll, ptr null, ptr @n_tty_receive_buf, ptr @n_tty_write_wakeup, ptr null, ptr @n_tty_receive_buf2, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_n_tty_inherit_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_n_tty_inherit_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_n_tty_inherit_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @n_tty_inherit_ops to i32), ptr @__kstrtab_n_tty_inherit_ops, ptr @__kstrtabns_n_tty_inherit_ops }, section "___ksymtab_gpl+n_tty_inherit_ops", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"n_tty\00", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@n_tty_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ldata->atomic_read_lock\00", [39 x i8] zeroinitializer }, align 32
@n_tty_open.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ldata->output_lock\00", [44 x i8] zeroinitializer }, align 32
@n_tty_kick_worker._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.n_tty_kick_worker = private unnamed_addr constant [18 x i8] c"n_tty_kick_worker\00", align 1
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/tty/n_tty.c\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scheduling with invalid itty\0A\00", [34 x i8] zeroinitializer }, align 32
@n_tty_kick_worker._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"scheduling buffer work for halted ldisc\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0D\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"        \00", [23 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@n_tty_receive_char_flagged._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s %s: unknown flag %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"n_tty_receive_char_flagged\00", [37 x i8] zeroinitializer }, align 32
@n_tty_receive_char_flagged._entry_ptr = internal global ptr @n_tty_receive_char_flagged._entry, section ".printk_index", align 4
@n_tty_receive_overrun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s %s: %d input overrun(s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"n_tty_receive_overrun\00", [42 x i8] zeroinitializer }, align 32
@n_tty_receive_overrun._entry_ptr = internal global ptr @n_tty_receive_overrun._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 9, i64 10, i64 13]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 21521, i64 21531]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 8, i64 128, i64 129, i64 130, i64 255]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 9, i64 10, i64 13]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 13]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"n_tty_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 2385, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 2388, i32 21 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1818, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1819, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 207, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 213, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 435, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 457, i32 25 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1426, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [23 x i8] c"../drivers/tty/n_tty.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1176, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_n_tty_inherit_ops, ptr @n_tty_receive_char_flagged._entry, ptr @n_tty_receive_char_flagged._entry_ptr, ptr @n_tty_receive_overrun._entry, ptr @n_tty_receive_overrun._entry_ptr, ptr @n_tty_ops, ptr @.str, ptr @n_tty_open.__key, ptr @.str.1, ptr @n_tty_open.__key.2, ptr @.str.3, ptr @n_tty_kick_worker._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @n_tty_kick_worker._rs.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_tty_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_tty_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_tty_open.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_tty_kick_worker._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_tty_kick_worker._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_tty_receive_char_flagged._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_tty_receive_overrun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @n_tty_inherit_ops(ptr nocapture noundef writeonly %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %ops, ptr @n_tty_ops, i32 64)
  %owner = getelementptr inbounds %struct.tty_ldisc_ops, ptr %ops, i32 0, i32 16
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %owner, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @n_tty_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @n_tty_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_tty_open(ptr noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vzalloc(i32 noundef 8976) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %overrun_time = getelementptr inbounds %struct.n_tty_data, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %overrun_time to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %overrun_time, align 4
  %atomic_read_lock = getelementptr inbounds %struct.n_tty_data, ptr %call, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %atomic_read_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @n_tty_open.__key) #9
  %output_lock = getelementptr inbounds %struct.n_tty_data, ptr %call, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %output_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @n_tty_open.__key.2) #9
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %2 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %disc_data, align 4
  %closing = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 33
  %3 = ptrtoint ptr %closing to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %closing, align 4
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %flags) #9
  tail call void @n_tty_set_termios(ptr noundef %tty, ptr noundef null)
  tail call void @tty_unthrottle(ptr noundef %tty) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n_tty_close(ptr noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %packet.i = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 20, i32 4
  %4 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %packet.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl2.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl2.i) #9
  %pktstatus.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 3
  %6 = ptrtoint ptr %pktstatus.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pktstatus.i, align 4
  %8 = or i8 %7, 1
  store i8 %8, ptr %pktstatus.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl2.i, i32 noundef %call3.i) #9
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link, align 4
  %read_wait.i = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.body1.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @down_write(ptr noundef %termios_rwsem) #9
  tail call void @vfree(ptr noundef %1) #9
  %11 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %disc_data, align 4
  tail call void @up_write(ptr noundef %termios_rwsem) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n_tty_flush_buffer(ptr noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @down_write(ptr noundef %termios_rwsem) #9
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %read_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %read_tail.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %read_tail.i, align 4
  %canon_head.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %canon_head.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %canon_head.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %commit_head.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %commit_head.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %commit_head.i, align 4
  %line_start.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %line_start.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %line_start.i, align 4
  %erasing.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %erasing.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %erasing.i, align 1
  %read_flags.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 12
  %8 = call ptr @memset(ptr %read_flags.i, i32 0, i32 512)
  %bf.clear2.i = and i8 %bf.load.i, -69
  store i8 %bf.clear2.i, ptr %erasing.i, align 1
  tail call fastcc void @n_tty_kick_worker(ptr noundef %tty)
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %packet.i = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 20, i32 4
  %11 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %packet.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl2.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl2.i) #9
  %pktstatus.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 3
  %13 = ptrtoint ptr %pktstatus.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pktstatus.i, align 4
  %15 = or i8 %14, 1
  store i8 %15, ptr %pktstatus.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl2.i, i32 noundef %call3.i) #9
  %16 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link, align 4
  %read_wait.i = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.body1.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %termios_rwsem) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_tty_read(ptr noundef %tty, ptr noundef %file, ptr noundef %kbuf, i32 noundef %nr, ptr noundef %cookie, i32 noundef %offset) #3 align 64 {
entry:
  %nr.addr = alloca i32, align 4
  %kb = alloca ptr, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %nr, ptr %nr.addr, align 4
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %1 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disc_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kb) #9
  %3 = ptrtoint ptr %kb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %kbuf, ptr %kb, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @woken_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %6, ptr %7, align 4
  %17 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cookie, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  %icanon = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 10
  %19 = ptrtoint ptr %icanon to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %icanon, align 1
  %20 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not = icmp eq i8 %20, 0
  br i1 %tobool5.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %21 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c_lflag, align 4
  %and = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call fastcc zeroext i1 @canon_copy_from_read_buf(ptr noundef %tty, ptr noundef nonnull %kb, ptr noundef nonnull %nr.addr)
  br i1 %call8, label %if.then9, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kb, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %kbuf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup195

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %commit_head.i = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 1
  %25 = ptrtoint ptr %commit_head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %commit_head.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  %read_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 14
  %27 = ptrtoint ptr %read_tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_tail.i, align 4
  %and.i274 = and i32 %28, 4095
  %sub.i = sub i32 %26, %28
  %sub6.i = sub nuw nsw i32 4096, %and.i274
  %29 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub6.i) #9
  %30 = call i32 @llvm.umin.i32(i32 %nr, i32 %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.else.if.end16_crit_edge, label %if.then.i

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then.i:                                        ; preds = %if.else
  %arrayidx.i.i = getelementptr %struct.n_tty_data, ptr %2, i32 0, i32 11, i32 %and.i274
  %31 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %kb, align 4
  %33 = call ptr @memcpy(ptr %32, ptr %arrayidx.i.i, i32 %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp14.i = icmp eq i32 %30, 1
  br i1 %cmp14.i, label %land.rhs.i, label %if.then.i.land.end.i_crit_edge

if.then.i.land.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp16.i = icmp ne i8 %35, %37
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.then.i.land.end.i_crit_edge
  %38 = phi i1 [ true, %if.then.i.land.end.i_crit_edge ], [ %cmp16.i, %land.rhs.i ]
  call void @tty_audit_add_data(ptr noundef %tty, ptr noundef %arrayidx.i.i, i32 noundef %30) #9
  %c_lflag.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %39 = ptrtoint ptr %c_lflag.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %c_lflag.i.i, align 4
  %41 = and i32 %40, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %if.then.i.i, label %land.end.i.zero_buffer.exit.i_crit_edge

land.end.i.zero_buffer.exit.i_crit_edge:          ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zero_buffer.exit.i

if.then.i.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 %30)
  br label %zero_buffer.exit.i

zero_buffer.exit.i:                               ; preds = %if.then.i.i, %land.end.i.zero_buffer.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  %44 = ptrtoint ptr %read_tail.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_tail.i, align 4
  %add.i = add i32 %45, %30
  store volatile i32 %add.i, ptr %read_tail.i, align 4
  %46 = ptrtoint ptr %c_lflag.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %c_lflag.i.i, align 4
  %and42.i = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %zero_buffer.exit.i.copy_from_read_buf.exit_crit_edge, label %land.lhs.true.i

zero_buffer.exit.i.copy_from_read_buf.exit_crit_edge: ; preds = %zero_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_read_buf.exit

land.lhs.true.i:                                  ; preds = %zero_buffer.exit.i
  %48 = ptrtoint ptr %icanon to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %icanon, align 1
  %49 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool45.not.i = icmp eq i8 %49, 0
  %brmerge.i = select i1 %tobool45.not.i, i1 true, i1 %38
  %brmerge.not.i = xor i1 %brmerge.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add.i)
  %cmp51.i = icmp eq i32 %26, %add.i
  %or.cond.i = select i1 %brmerge.not.i, i1 %cmp51.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.if.end16_crit_edge, label %land.lhs.true.i.copy_from_read_buf.exit_crit_edge

land.lhs.true.i.copy_from_read_buf.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_read_buf.exit

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

copy_from_read_buf.exit:                          ; preds = %land.lhs.true.i.copy_from_read_buf.exit_crit_edge, %zero_buffer.exit.i.copy_from_read_buf.exit_crit_edge
  %50 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %kb, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 %30
  store ptr %add.ptr.i, ptr %kb, align 4
  %sub54.i = sub i32 %nr, %30
  %52 = ptrtoint ptr %nr.addr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub54.i, ptr %nr.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add.i)
  %cmp56.i.not = icmp eq i32 %26, %add.i
  br i1 %cmp56.i.not, label %copy_from_read_buf.exit.if.end16_crit_edge, label %if.then11

copy_from_read_buf.exit.if.end16_crit_edge:       ; preds = %copy_from_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %copy_from_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %kb, align 4
  %sub.ptr.lhs.cast12 = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast13 = ptrtoint ptr %kbuf to i32
  %sub.ptr.sub14 = sub i32 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  br label %cleanup195

if.end16:                                         ; preds = %copy_from_read_buf.exit.if.end16_crit_edge, %land.lhs.true.i.if.end16_crit_edge, %if.else.if.end16_crit_edge, %if.then7.if.end16_crit_edge
  call fastcc void @n_tty_kick_worker(ptr noundef %tty)
  call fastcc void @n_tty_check_unthrottle(ptr noundef %tty)
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  call void @up_read(ptr noundef %termios_rwsem) #9
  %atomic_read_lock = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 19
  call void @mutex_unlock(ptr noundef %atomic_read_lock) #9
  %55 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %cookie, align 4
  %56 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %kb, align 4
  %sub.ptr.lhs.cast17 = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast18 = ptrtoint ptr %kbuf to i32
  %sub.ptr.sub19 = sub i32 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  br label %cleanup195

if.end20:                                         ; preds = %entry
  %f_op.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %58 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %f_op.i, align 4
  %write_iter.i = getelementptr inbounds %struct.file_operations, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %write_iter.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_iter.i, align 4
  %cmp.i = icmp eq ptr %61, @redirected_tty_write
  br i1 %cmp.i, label %if.end20.if.end24_crit_edge, label %job_control.exit

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

job_control.exit:                                 ; preds = %if.end20
  %call.i = call i32 @__tty_check_change(ptr noundef %tty, i32 noundef 21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %job_control.exit.cleanup195_crit_edge, label %job_control.exit.if.end24_crit_edge

job_control.exit.if.end24_crit_edge:              ; preds = %job_control.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

job_control.exit.cleanup195_crit_edge:            ; preds = %job_control.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.end24:                                         ; preds = %job_control.exit.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %62 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %f_flags, align 4
  %and25 = and i32 %63, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %atomic_read_lock34 = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 19
  br i1 %tobool26.not, label %if.else33, label %if.then27

if.then27:                                        ; preds = %if.end24
  %call29 = call i32 @mutex_trylock(ptr noundef %atomic_read_lock34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then27.cleanup195_crit_edge, label %if.then27.if.end39_crit_edge

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then27.cleanup195_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.else33:                                        ; preds = %if.end24
  %call35 = call i32 @mutex_lock_interruptible_nested(ptr noundef %atomic_read_lock34, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else33.if.end39_crit_edge, label %if.else33.cleanup195_crit_edge

if.else33.cleanup195_crit_edge:                   ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.else33.if.end39_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end39:                                         ; preds = %if.else33.if.end39_crit_edge, %if.then27.if.end39_crit_edge
  %termios_rwsem40 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  call void @down_read(ptr noundef %termios_rwsem40) #9
  %icanon41 = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 10
  %64 = ptrtoint ptr %icanon41 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load42 = load i8, ptr %icanon41, align 1
  %65 = and i8 %bf.load42, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool45.not = icmp eq i8 %65, 0
  br i1 %tobool45.not, label %if.then46, label %if.end39.if.end62_crit_edge

if.end39.if.end62_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then46:                                        ; preds = %if.end39
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 6
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool49.not = icmp eq i8 %67, 0
  br i1 %tobool49.not, label %if.else55, label %if.then50

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %conv48 = zext i8 %67 to i32
  %arrayidx53 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 5
  %68 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %69 to i32
  %mul = mul nuw nsw i32 %conv54, 10
  br label %if.end62

if.else55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx58 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 5
  %70 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %71 to i32
  %mul60 = mul nuw nsw i32 %conv59, 10
  br label %if.end62

if.end62:                                         ; preds = %if.else55, %if.then50, %if.end39.if.end62_crit_edge
  %minimum.0 = phi i32 [ 0, %if.end39.if.end62_crit_edge ], [ %conv48, %if.then50 ], [ 1, %if.else55 ]
  %time.0 = phi i32 [ 0, %if.end39.if.end62_crit_edge ], [ %mul, %if.then50 ], [ 0, %if.else55 ]
  %timeout.0 = phi i32 [ 2147483647, %if.end39.if.end62_crit_edge ], [ 2147483647, %if.then50 ], [ %mul60, %if.else55 ]
  %packet63 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 4
  %72 = ptrtoint ptr %packet63 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %packet63, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool64.not = icmp eq i8 %73, 0
  %read_tail = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 14
  %74 = ptrtoint ptr %read_tail to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %read_tail, align 4
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 27
  call void @add_wait_queue(ptr noundef %read_wait, ptr noundef nonnull %wait) #9
  %76 = ptrtoint ptr %nr.addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool65.not353 = icmp eq i32 %77, 0
  br i1 %tobool65.not353, label %if.end62.while.end_crit_edge, label %while.body.lr.ph

if.end62.while.end_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end62
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %c_lflag.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %port = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 37
  %flags97 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %arrayidx.i321 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 4
  %sub.ptr.rhs.cast157 = ptrtoint ptr %kbuf to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time.0)
  %tobool175.not = icmp eq i32 %time.0, 0
  %incdec.ptr150 = getelementptr i8, ptr %kbuf, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %78 = phi i32 [ %77, %while.body.lr.ph ], [ %145, %while.cond.backedge.while.body_crit_edge ]
  %timeout.1354 = phi i32 [ %timeout.0, %while.body.lr.ph ], [ %timeout.1.be, %while.cond.backedge.while.body_crit_edge ]
  br i1 %tobool64.not, label %while.body.if.end88_crit_edge, label %land.lhs.true68

while.body.if.end88_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

land.lhs.true68:                                  ; preds = %while.body
  %79 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %link, align 4
  %pktstatus = getelementptr inbounds %struct.tty_struct, ptr %80, i32 0, i32 20, i32 3
  %81 = ptrtoint ptr %pktstatus to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %pktstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool71.not = icmp eq i8 %82, 0
  br i1 %tobool71.not, label %land.lhs.true68.if.end88_crit_edge, label %if.then72

land.lhs.true68.if.end88_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then72:                                        ; preds = %land.lhs.true68
  %83 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %kb, align 4
  %cmp73.not = icmp eq ptr %84, %kbuf
  br i1 %cmp73.not, label %if.end76, label %if.then72.while.end_crit_edge

if.then72.while.end_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end76:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl69.le = getelementptr inbounds %struct.tty_struct, ptr %80, i32 0, i32 20
  call void @_raw_spin_lock_irq(ptr noundef %ctrl69.le) #9
  %85 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %link, align 4
  %pktstatus81 = getelementptr inbounds %struct.tty_struct, ptr %86, i32 0, i32 20, i32 3
  %87 = ptrtoint ptr %pktstatus81 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pktstatus81, align 4
  store i8 0, ptr %pktstatus81, align 4
  %89 = load ptr, ptr %link, align 4
  %ctrl86 = getelementptr inbounds %struct.tty_struct, ptr %89, i32 0, i32 20
  call void @_raw_spin_unlock_irq(ptr noundef %ctrl86) #9
  %90 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %kb, align 4
  %incdec.ptr = getelementptr i8, ptr %91, i32 1
  store ptr %incdec.ptr, ptr %kb, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %88, ptr %91, align 1
  %dec = add i32 %78, -1
  %93 = ptrtoint ptr %nr.addr to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %dec, ptr %nr.addr, align 4
  br label %while.end

if.end88:                                         ; preds = %land.lhs.true68.if.end88_crit_edge, %while.body.if.end88_crit_edge
  %94 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %disc_data, align 4
  %icanon.i277 = getelementptr inbounds %struct.n_tty_data, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %icanon.i277 to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i278 = load i8, ptr %icanon.i277, align 1
  %97 = and i8 %bf.load.i278, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool12.not.i = icmp eq i8 %97, 0
  br i1 %tobool12.not.i, label %if.end88.if.else.i_crit_edge, label %land.lhs.true13.i

if.end88.if.else.i_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true13.i:                                ; preds = %if.end88
  %98 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %c_lflag.i, align 4
  %and.i279 = and i32 %99, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i279)
  %tobool15.not.i = icmp eq i32 %and.i279, 0
  br i1 %tobool15.not.i, label %input_available_p.exit, label %land.lhs.true13.i.if.else.i_crit_edge

land.lhs.true13.i.if.else.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true13.i.if.else.i_crit_edge, %if.end88.if.else.i_crit_edge
  %commit_head.i283 = getelementptr inbounds %struct.n_tty_data, ptr %95, i32 0, i32 1
  %100 = ptrtoint ptr %commit_head.i283 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %commit_head.i283, align 4
  %read_tail17.i = getelementptr inbounds %struct.n_tty_data, ptr %95, i32 0, i32 14
  %102 = ptrtoint ptr %read_tail17.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %read_tail17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp18.i.not = icmp eq i32 %101, %103
  br i1 %cmp18.i.not, label %if.else.i.if.then91_crit_edge, label %if.else.i.if.end127_crit_edge

if.else.i.if.end127_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.else.i.if.then91_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

input_available_p.exit:                           ; preds = %land.lhs.true13.i
  %canon_head.i = getelementptr inbounds %struct.n_tty_data, ptr %95, i32 0, i32 2
  %104 = ptrtoint ptr %canon_head.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %canon_head.i, align 4
  %read_tail.i280 = getelementptr inbounds %struct.n_tty_data, ptr %95, i32 0, i32 14
  %106 = ptrtoint ptr %read_tail.i280 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %read_tail.i280, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp.i281.not = icmp eq i32 %105, %107
  br i1 %cmp.i281.not, label %input_available_p.exit.if.then91_crit_edge, label %input_available_p.exit.if.end127_crit_edge

input_available_p.exit.if.end127_crit_edge:       ; preds = %input_available_p.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

input_available_p.exit.if.then91_crit_edge:       ; preds = %input_available_p.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

if.then91:                                        ; preds = %input_available_p.exit.if.then91_crit_edge, %if.else.i.if.then91_crit_edge
  call void @up_read(ptr noundef %termios_rwsem40) #9
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port, align 4
  call void @tty_buffer_flush_work(ptr noundef %109) #9
  call void @down_read(ptr noundef %termios_rwsem40) #9
  %110 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %disc_data, align 4
  %icanon.i287 = getelementptr inbounds %struct.n_tty_data, ptr %111, i32 0, i32 10
  %112 = ptrtoint ptr %icanon.i287 to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load.i288 = load i8, ptr %icanon.i287, align 1
  %113 = and i8 %bf.load.i288, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool12.not.i289 = icmp eq i8 %113, 0
  br i1 %tobool12.not.i289, label %if.then91.if.else.i302_crit_edge, label %land.lhs.true13.i293

if.then91.if.else.i302_crit_edge:                 ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i302

land.lhs.true13.i293:                             ; preds = %if.then91
  %114 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %c_lflag.i, align 4
  %and.i291 = and i32 %115, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i291)
  %tobool15.not.i292 = icmp eq i32 %and.i291, 0
  br i1 %tobool15.not.i292, label %input_available_p.exit305, label %land.lhs.true13.i293.if.else.i302_crit_edge

land.lhs.true13.i293.if.else.i302_crit_edge:      ; preds = %land.lhs.true13.i293
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i302

if.else.i302:                                     ; preds = %land.lhs.true13.i293.if.else.i302_crit_edge, %if.then91.if.else.i302_crit_edge
  %commit_head.i298 = getelementptr inbounds %struct.n_tty_data, ptr %111, i32 0, i32 1
  %116 = ptrtoint ptr %commit_head.i298 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %commit_head.i298, align 4
  %read_tail17.i299 = getelementptr inbounds %struct.n_tty_data, ptr %111, i32 0, i32 14
  %118 = ptrtoint ptr %read_tail17.i299 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %read_tail17.i299, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp18.i301.not = icmp eq i32 %117, %119
  br i1 %cmp18.i301.not, label %if.else.i302.if.then96_crit_edge, label %if.else.i302.if.end127_crit_edge

if.else.i302.if.end127_crit_edge:                 ; preds = %if.else.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.else.i302.if.then96_crit_edge:                 ; preds = %if.else.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

input_available_p.exit305:                        ; preds = %land.lhs.true13.i293
  %canon_head.i294 = getelementptr inbounds %struct.n_tty_data, ptr %111, i32 0, i32 2
  %120 = ptrtoint ptr %canon_head.i294 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %canon_head.i294, align 4
  %read_tail.i295 = getelementptr inbounds %struct.n_tty_data, ptr %111, i32 0, i32 14
  %122 = ptrtoint ptr %read_tail.i295 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %read_tail.i295, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %123)
  %cmp.i296.not = icmp eq i32 %121, %123
  br i1 %cmp.i296.not, label %input_available_p.exit305.if.then96_crit_edge, label %input_available_p.exit305.if.end127_crit_edge

input_available_p.exit305.if.end127_crit_edge:    ; preds = %input_available_p.exit305
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

input_available_p.exit305.if.then96_crit_edge:    ; preds = %input_available_p.exit305
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

if.then96:                                        ; preds = %input_available_p.exit305.if.then96_crit_edge, %if.else.i302.if.then96_crit_edge
  %124 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %flags97, align 4
  %126 = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool99.not = icmp eq i32 %126, 0
  br i1 %tobool99.not, label %if.end101, label %if.then96.while.end_crit_edge

if.then96.while.end_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end101:                                        ; preds = %if.then96
  %call102 = call i32 @tty_hung_up_p(ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end101.while.end_crit_edge

if.end101.while.end_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end105:                                        ; preds = %if.end101
  %127 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %flags97, align 4
  %129 = and i32 %128, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool108.not = icmp ne i32 %129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1354)
  %tobool111.not = icmp eq i32 %timeout.1354, 0
  %or.cond = select i1 %tobool108.not, i1 true, i1 %tobool111.not
  br i1 %or.cond, label %if.end105.while.end_crit_edge, label %if.end113

if.end105.while.end_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end113:                                        ; preds = %if.end105
  %130 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %f_flags, align 4
  %and.i306 = and i32 %131, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i306)
  %tobool.not.i307 = icmp eq i32 %and.i306, 0
  br i1 %tobool.not.i307, label %tty_io_nonblock.exit, label %if.end113.while.end_crit_edge

if.end113.while.end_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

tty_io_nonblock.exit:                             ; preds = %if.end113
  %132 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %flags97, align 4
  %134 = and i32 %133, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool1.i.not = icmp eq i32 %134, 0
  br i1 %tobool1.i.not, label %if.end116, label %tty_io_nonblock.exit.while.end_crit_edge

tty_io_nonblock.exit.while.end_crit_edge:         ; preds = %tty_io_nonblock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end116:                                        ; preds = %tty_io_nonblock.exit
  %135 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %stack.i.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %138, align 4
  %141 = and i32 %140, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i308 = icmp eq i32 %141, 0
  br i1 %tobool.not.i308, label %signal_pending.exit, label %if.end116.while.end_crit_edge, !prof !48

if.end116.while.end_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

signal_pending.exit:                              ; preds = %if.end116
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %138, align 4
  %and1.i.i.i.i.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool120.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool120.not, label %if.end122, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end122:                                        ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @up_read(ptr noundef %termios_rwsem40) #9
  %call124 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeout.1354) #9
  call void @down_read(ptr noundef %termios_rwsem40) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end174, %if.end122
  %timeout.1.be = phi i32 [ %spec.select, %if.end174 ], [ %call124, %if.end122 ]
  %144 = ptrtoint ptr %nr.addr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nr.addr, align 4
  %tobool65.not = icmp eq i32 %145, 0
  br i1 %tobool65.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end127:                                        ; preds = %input_available_p.exit305.if.end127_crit_edge, %if.else.i302.if.end127_crit_edge, %input_available_p.exit.if.end127_crit_edge, %if.else.i.if.end127_crit_edge
  %146 = ptrtoint ptr %icanon41 to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load129 = load i8, ptr %icanon41, align 1
  %147 = and i8 %bf.load129, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool133.not = icmp eq i8 %147, 0
  br i1 %tobool133.not, label %if.end127.if.else143_crit_edge, label %land.lhs.true134

if.end127.if.else143_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else143

land.lhs.true134:                                 ; preds = %if.end127
  %148 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %c_lflag.i, align 4
  %and137 = and i32 %149, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.then139, label %land.lhs.true134.if.else143_crit_edge

land.lhs.true134.if.else143_crit_edge:            ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else143

if.then139:                                       ; preds = %land.lhs.true134
  %call140 = call fastcc zeroext i1 @canon_copy_from_read_buf(ptr noundef %tty, ptr noundef nonnull %kb, ptr noundef nonnull %nr.addr)
  br i1 %call140, label %if.then139.more_to_be_read_crit_edge, label %if.then139.if.end167_crit_edge

if.then139.if.end167_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.then139.more_to_be_read_crit_edge:             ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %more_to_be_read

if.else143:                                       ; preds = %land.lhs.true134.if.else143_crit_edge, %if.end127.if.else143_crit_edge
  br i1 %tobool64.not, label %if.else143.if.end152_crit_edge, label %land.lhs.true146

if.else143.if.end152_crit_edge:                   ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

land.lhs.true146:                                 ; preds = %if.else143
  %150 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %kb, align 4
  %cmp147 = icmp eq ptr %151, %kbuf
  br i1 %cmp147, label %if.then149, label %land.lhs.true146.if.end152_crit_edge

land.lhs.true146.if.end152_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.then149:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %kb to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %incdec.ptr150, ptr %kb, align 4
  %153 = ptrtoint ptr %kbuf to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %kbuf, align 1
  %dec151 = add i32 %78, -1
  %154 = ptrtoint ptr %nr.addr to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %dec151, ptr %nr.addr, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %land.lhs.true146.if.end152_crit_edge, %if.else143.if.end152_crit_edge
  %155 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %disc_data, align 4
  %commit_head.i312 = getelementptr inbounds %struct.n_tty_data, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %commit_head.i312 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %commit_head.i312, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  %read_tail.i313 = getelementptr inbounds %struct.n_tty_data, ptr %156, i32 0, i32 14
  %159 = ptrtoint ptr %read_tail.i313 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %read_tail.i313, align 4
  %and.i314 = and i32 %160, 4095
  %sub.i315 = sub i32 %158, %160
  %sub6.i316 = sub nuw nsw i32 4096, %and.i314
  %161 = call i32 @llvm.umin.i32(i32 %sub.i315, i32 %sub6.i316) #9
  %162 = ptrtoint ptr %nr.addr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %nr.addr, align 4
  %164 = call i32 @llvm.umin.i32(i32 %163, i32 %161) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i317 = icmp eq i32 %164, 0
  br i1 %tobool.not.i317, label %if.end152.if.end167_crit_edge, label %if.then.i320

if.end152.if.end167_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.then.i320:                                     ; preds = %if.end152
  %arrayidx.i.i318 = getelementptr %struct.n_tty_data, ptr %156, i32 0, i32 11, i32 %and.i314
  %165 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %kb, align 4
  %167 = call ptr @memcpy(ptr %166, ptr %arrayidx.i.i318, i32 %164)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp14.i319 = icmp eq i32 %164, 1
  br i1 %cmp14.i319, label %land.rhs.i323, label %if.then.i320.land.end.i325_crit_edge

if.then.i320.land.end.i325_crit_edge:             ; preds = %if.then.i320
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i325

land.rhs.i323:                                    ; preds = %if.then.i320
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %arrayidx.i.i318 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i.i318, align 1
  %170 = ptrtoint ptr %arrayidx.i321 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx.i321, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %169, i8 %171)
  %cmp16.i322 = icmp ne i8 %169, %171
  br label %land.end.i325

land.end.i325:                                    ; preds = %land.rhs.i323, %if.then.i320.land.end.i325_crit_edge
  %172 = phi i1 [ true, %if.then.i320.land.end.i325_crit_edge ], [ %cmp16.i322, %land.rhs.i323 ]
  call void @tty_audit_add_data(ptr noundef %tty, ptr noundef %arrayidx.i.i318, i32 noundef %164) #9
  %173 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %c_lflag.i, align 4
  %175 = and i32 %174, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %175)
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %if.then.i.i326, label %land.end.i325.zero_buffer.exit.i330_crit_edge

land.end.i325.zero_buffer.exit.i330_crit_edge:    ; preds = %land.end.i325
  call void @__sanitizer_cov_trace_pc() #11
  br label %zero_buffer.exit.i330

if.then.i.i326:                                   ; preds = %land.end.i325
  call void @__sanitizer_cov_trace_pc() #11
  %177 = call ptr @memset(ptr %arrayidx.i.i318, i32 0, i32 %164)
  br label %zero_buffer.exit.i330

zero_buffer.exit.i330:                            ; preds = %if.then.i.i326, %land.end.i325.zero_buffer.exit.i330_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  %178 = ptrtoint ptr %read_tail.i313 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %read_tail.i313, align 4
  %add.i327 = add i32 %179, %164
  store volatile i32 %add.i327, ptr %read_tail.i313, align 4
  %180 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %c_lflag.i, align 4
  %and42.i328 = and i32 %181, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i328)
  %tobool43.not.i329 = icmp eq i32 %and42.i328, 0
  br i1 %tobool43.not.i329, label %zero_buffer.exit.i330.copy_from_read_buf.exit344_crit_edge, label %land.lhs.true.i338

zero_buffer.exit.i330.copy_from_read_buf.exit344_crit_edge: ; preds = %zero_buffer.exit.i330
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_read_buf.exit344

land.lhs.true.i338:                               ; preds = %zero_buffer.exit.i330
  %icanon.i331 = getelementptr inbounds %struct.n_tty_data, ptr %156, i32 0, i32 10
  %182 = ptrtoint ptr %icanon.i331 to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load.i332 = load i8, ptr %icanon.i331, align 1
  %183 = and i8 %bf.load.i332, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool45.not.i333 = icmp eq i8 %183, 0
  %brmerge.i334 = select i1 %tobool45.not.i333, i1 true, i1 %172
  %brmerge.not.i335 = xor i1 %brmerge.i334, true
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %add.i327)
  %cmp51.i336 = icmp eq i32 %158, %add.i327
  %or.cond.i337 = select i1 %brmerge.not.i335, i1 %cmp51.i336, i1 false
  br i1 %or.cond.i337, label %land.lhs.true.i338.if.end167_crit_edge, label %land.lhs.true.i338.copy_from_read_buf.exit344_crit_edge

land.lhs.true.i338.copy_from_read_buf.exit344_crit_edge: ; preds = %land.lhs.true.i338
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_read_buf.exit344

land.lhs.true.i338.if.end167_crit_edge:           ; preds = %land.lhs.true.i338
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

copy_from_read_buf.exit344:                       ; preds = %land.lhs.true.i338.copy_from_read_buf.exit344_crit_edge, %zero_buffer.exit.i330.copy_from_read_buf.exit344_crit_edge
  %184 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %kb, align 4
  %add.ptr.i339 = getelementptr i8, ptr %185, i32 %164
  store ptr %add.ptr.i339, ptr %kb, align 4
  %sub54.i340 = sub i32 %163, %164
  %186 = ptrtoint ptr %nr.addr to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %sub54.i340, ptr %nr.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %add.i327)
  %cmp56.i341.not = icmp eq i32 %158, %add.i327
  br i1 %cmp56.i341.not, label %copy_from_read_buf.exit344.if.end167_crit_edge, label %land.lhs.true155

copy_from_read_buf.exit344.if.end167_crit_edge:   ; preds = %copy_from_read_buf.exit344
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

land.lhs.true155:                                 ; preds = %copy_from_read_buf.exit344
  %187 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %kb, align 4
  %sub.ptr.lhs.cast156 = ptrtoint ptr %188 to i32
  %sub.ptr.sub158 = sub i32 %sub.ptr.lhs.cast156, %sub.ptr.rhs.cast157
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub158, i32 %minimum.0)
  %cmp159.not = icmp slt i32 %sub.ptr.sub158, %minimum.0
  br i1 %cmp159.not, label %land.lhs.true155.if.end167_crit_edge, label %land.lhs.true155.more_to_be_read_crit_edge

land.lhs.true155.more_to_be_read_crit_edge:       ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #11
  br label %more_to_be_read

land.lhs.true155.if.end167_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

more_to_be_read:                                  ; preds = %land.lhs.true155.more_to_be_read_crit_edge, %if.then139.more_to_be_read_crit_edge
  call void @remove_wait_queue(ptr noundef %read_wait, ptr noundef nonnull %wait) #9
  %189 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %cookie, ptr %cookie, align 4
  %190 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %kb, align 4
  %sub.ptr.lhs.cast163 = ptrtoint ptr %191 to i32
  %sub.ptr.sub165 = sub i32 %sub.ptr.lhs.cast163, %sub.ptr.rhs.cast157
  br label %cleanup195

if.end167:                                        ; preds = %land.lhs.true155.if.end167_crit_edge, %copy_from_read_buf.exit344.if.end167_crit_edge, %land.lhs.true.i338.if.end167_crit_edge, %if.end152.if.end167_crit_edge, %if.then139.if.end167_crit_edge
  call fastcc void @n_tty_check_unthrottle(ptr noundef %tty)
  %192 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %kb, align 4
  %sub.ptr.lhs.cast168 = ptrtoint ptr %193 to i32
  %sub.ptr.sub170 = sub i32 %sub.ptr.lhs.cast168, %sub.ptr.rhs.cast157
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub170, i32 %minimum.0)
  %cmp171.not = icmp slt i32 %sub.ptr.sub170, %minimum.0
  br i1 %cmp171.not, label %if.end174, label %if.end167.while.end_crit_edge

if.end167.while.end_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end174:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select = select i1 %tobool175.not, i32 %timeout.1354, i32 %time.0
  br label %while.cond.backedge

while.end:                                        ; preds = %if.end167.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end116.while.end_crit_edge, %tty_io_nonblock.exit.while.end_crit_edge, %if.end113.while.end_crit_edge, %if.end105.while.end_crit_edge, %if.end101.while.end_crit_edge, %if.then96.while.end_crit_edge, %if.end76, %if.then72.while.end_crit_edge, %if.end62.while.end_crit_edge
  %retval4.0 = phi i32 [ 0, %if.then72.while.end_crit_edge ], [ 0, %if.end76 ], [ 0, %if.end62.while.end_crit_edge ], [ 0, %while.cond.backedge.while.end_crit_edge ], [ 0, %if.end101.while.end_crit_edge ], [ 0, %if.end105.while.end_crit_edge ], [ 0, %if.end167.while.end_crit_edge ], [ -5, %if.then96.while.end_crit_edge ], [ -11, %tty_io_nonblock.exit.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ -11, %if.end113.while.end_crit_edge ], [ -512, %if.end116.while.end_crit_edge ]
  %194 = ptrtoint ptr %read_tail to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %read_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %195)
  %cmp179.not = icmp eq i32 %75, %195
  br i1 %cmp179.not, label %while.end.if.end182_crit_edge, label %if.then181

while.end.if.end182_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

if.then181:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @n_tty_kick_worker(ptr noundef %tty)
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %while.end.if.end182_crit_edge
  call void @up_read(ptr noundef %termios_rwsem40) #9
  call void @remove_wait_queue(ptr noundef %read_wait, ptr noundef nonnull %wait) #9
  %atomic_read_lock185 = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 19
  call void @mutex_unlock(ptr noundef %atomic_read_lock185) #9
  %196 = ptrtoint ptr %kb to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %kb, align 4
  %sub.ptr.lhs.cast186 = ptrtoint ptr %197 to i32
  %sub.ptr.rhs.cast187 = ptrtoint ptr %kbuf to i32
  %sub.ptr.sub188 = sub i32 %sub.ptr.lhs.cast186, %sub.ptr.rhs.cast187
  %tobool189.not = icmp eq ptr %197, %kbuf
  %spec.select271 = select i1 %tobool189.not, i32 %retval4.0, i32 %sub.ptr.sub188
  br label %cleanup195

cleanup195:                                       ; preds = %if.end182, %more_to_be_read, %if.else33.cleanup195_crit_edge, %if.then27.cleanup195_crit_edge, %job_control.exit.cleanup195_crit_edge, %if.end16, %if.then11, %if.then9
  %retval.0 = phi i32 [ %sub.ptr.sub14, %if.then11 ], [ %sub.ptr.sub19, %if.end16 ], [ %sub.ptr.sub, %if.then9 ], [ %spec.select271, %if.end182 ], [ %sub.ptr.sub165, %more_to_be_read ], [ %call.i, %job_control.exit.cleanup195_crit_edge ], [ -11, %if.then27.cleanup195_crit_edge ], [ -512, %if.else33.cleanup195_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_tty_write(ptr noundef %tty, ptr noundef %file, ptr noundef %buf, i32 noundef %nr) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %13 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %c_lflag, align 4
  %and = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %15 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_op, align 4
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_iter, align 4
  %cmp.not = icmp eq ptr %18, @redirected_tty_write
  br i1 %cmp.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i32 @tty_check_change(ptr noundef %tty) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup94_crit_edge

if.then.cleanup94_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  call void @down_read(ptr noundef %termios_rwsem) #9
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %19 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disc_data.i, align 4
  %echo_mark.i = getelementptr inbounds %struct.n_tty_data, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %echo_mark.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %echo_mark.i, align 4
  %echo_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %20, i32 0, i32 18
  %23 = ptrtoint ptr %echo_tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %echo_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i = icmp eq i32 %22, %24
  br i1 %cmp.i, label %if.end8.process_echoes.exit_crit_edge, label %if.end.i

if.end8.process_echoes.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_echoes.exit

if.end.i:                                         ; preds = %if.end8
  %output_lock.i = getelementptr inbounds %struct.n_tty_data, ptr %20, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %output_lock.i, i32 noundef 0) #9
  %25 = ptrtoint ptr %echo_mark.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %echo_mark.i, align 4
  %echo_commit.i = getelementptr inbounds %struct.n_tty_data, ptr %20, i32 0, i32 4
  %27 = ptrtoint ptr %echo_commit.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %echo_commit.i, align 4
  %call.i = call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  call void @mutex_unlock(ptr noundef %output_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.process_echoes.exit_crit_edge, label %land.lhs.true.i

if.end.i.process_echoes.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_echoes.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %flush_chars.i = getelementptr inbounds %struct.tty_operations, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %flush_chars.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %flush_chars.i, align 4
  %tobool3.not.i = icmp eq ptr %31, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.process_echoes.exit_crit_edge, label %if.then4.i

land.lhs.true.i.process_echoes.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_echoes.exit

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %31(ptr noundef %tty) #9
  br label %process_echoes.exit

process_echoes.exit:                              ; preds = %if.then4.i, %land.lhs.true.i.process_echoes.exit_crit_edge, %if.end.i.process_echoes.exit_crit_edge, %if.end8.process_echoes.exit_crit_edge
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  call void @add_wait_queue(ptr noundef %write_wait, ptr noundef nonnull %wait) #9
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %stack.i.i233 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %stack.i.i233 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stack.i.i233, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i154234 = icmp eq i32 %38, 0
  br i1 %tobool.not.i154234, label %signal_pending.exit.lr.ph, label %process_echoes.exit.break_out_crit_edge, !prof !48

process_echoes.exit.break_out_crit_edge:          ; preds = %process_echoes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out

signal_pending.exit.lr.ph:                        ; preds = %process_echoes.exit
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %c_oflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %termios.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %ops.i164 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  br label %signal_pending.exit

signal_pending.exit:                              ; preds = %if.end77.signal_pending.exit_crit_edge, %signal_pending.exit.lr.ph
  %39 = phi ptr [ %35, %signal_pending.exit.lr.ph ], [ %107, %if.end77.signal_pending.exit_crit_edge ]
  %b.0236 = phi ptr [ %buf, %signal_pending.exit.lr.ph ], [ %b.5209, %if.end77.signal_pending.exit_crit_edge ]
  %nr.addr.0235 = phi i32 [ %nr, %signal_pending.exit.lr.ph ], [ %nr.addr.5208, %if.end77.signal_pending.exit_crit_edge ]
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and1.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool12.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool12.not, label %if.end14, label %signal_pending.exit.break_out_crit_edge

signal_pending.exit.break_out_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out

if.end14:                                         ; preds = %signal_pending.exit
  %call15 = call i32 @tty_hung_up_p(ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.end14.break_out_crit_edge

if.end14.break_out_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out

lor.lhs.false:                                    ; preds = %if.end14
  %42 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %link, align 4
  %tobool17.not = icmp eq ptr %43, null
  br i1 %tobool17.not, label %lor.lhs.false.if.end22_crit_edge, label %land.lhs.true18

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true18:                                  ; preds = %lor.lhs.false
  %count = getelementptr inbounds %struct.tty_struct, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool20.not = icmp eq i32 %45, 0
  br i1 %tobool20.not, label %land.lhs.true18.break_out_crit_edge, label %land.lhs.true18.if.end22_crit_edge

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true18.break_out_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out

if.end22:                                         ; preds = %land.lhs.true18.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %46 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %c_oflag, align 4
  %and24 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.addr.0235)
  %cmp52.not228 = icmp eq i32 %nr.addr.0235, 0
  br i1 %tobool25.not, label %if.else, label %while.cond27.preheader

while.cond27.preheader:                           ; preds = %if.end22
  br i1 %cmp52.not228, label %while.cond27.preheader.while.end_crit_edge, label %while.cond27.preheader.while.body29_crit_edge

while.cond27.preheader.while.body29_crit_edge:    ; preds = %while.cond27.preheader
  br label %while.body29

while.cond27.preheader.while.end_crit_edge:       ; preds = %while.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body29:                                     ; preds = %cleanup.while.body29_crit_edge, %while.cond27.preheader.while.body29_crit_edge
  %b.1222 = phi ptr [ %incdec.ptr, %cleanup.while.body29_crit_edge ], [ %b.0236, %while.cond27.preheader.while.body29_crit_edge ]
  %nr.addr.1221 = phi i32 [ %dec, %cleanup.while.body29_crit_edge ], [ %nr.addr.0235, %while.cond27.preheader.while.body29_crit_edge ]
  %48 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %disc_data.i, align 4
  %output_lock.i157 = getelementptr inbounds %struct.n_tty_data, ptr %49, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %output_lock.i157, i32 noundef 0) #9
  %call.i158 = call i32 @tty_write_room(ptr noundef %tty) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i158)
  %cmp.i159 = icmp slt i32 %call.i158, 1
  br i1 %cmp.i159, label %while.body29.process_output_block.exit_crit_edge, label %if.end.i160

while.body29.process_output_block.exit_crit_edge: ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_output_block.exit

if.end.i160:                                      ; preds = %while.body29
  %50 = call i32 @llvm.umin.i32(i32 %call.i158, i32 %nr.addr.1221) #9
  %column35.i = getelementptr inbounds %struct.n_tty_data, ptr %49, i32 0, i32 16
  %canon_column32.i = getelementptr inbounds %struct.n_tty_data, ptr %49, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i160
  %cp.0102.i = phi ptr [ %b.1222, %if.end.i160 ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.099.i = phi i32 [ 0, %if.end.i160 ], [ %inc59.i, %for.inc.i.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %cp.0102.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cp.0102.i, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i8 %52, label %sw.default.i [
    i8 10, label %sw.bb.i
    i8 13, label %sw.bb15.i
    i8 9, label %for.body.i.break_out.i_crit_edge
    i8 8, label %sw.bb34.i
  ]

for.body.i.break_out.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out.i

sw.bb.i:                                          ; preds = %for.body.i
  %54 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %c_oflag, align 4
  %and.i161 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i161)
  %tobool.not.i162 = icmp eq i32 %and.i161, 0
  br i1 %tobool.not.i162, label %sw.bb.i.if.end7.i_crit_edge, label %if.then6.i

sw.bb.i.if.end7.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then6.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %column35.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %column35.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %sw.bb.i.if.end7.i_crit_edge
  %57 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %c_oflag, align 4
  %and10.i = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end7.i.break_out.i_crit_edge

if.end7.i.break_out.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out.i

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %column35.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %column35.i, align 4
  %61 = ptrtoint ptr %canon_column32.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %canon_column32.i, align 4
  br label %for.inc.i

sw.bb15.i:                                        ; preds = %for.body.i
  %62 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %c_oflag, align 4
  %and18.i = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end24.i, label %land.lhs.true.i163

land.lhs.true.i163:                               ; preds = %sw.bb15.i
  %64 = ptrtoint ptr %column35.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %column35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp21.i = icmp ne i32 %65, 0
  %and27.i = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %or.cond.i = select i1 %cmp21.i, i1 %tobool28.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i163.if.end30.i_crit_edge, label %land.lhs.true.i163.break_out.i_crit_edge

land.lhs.true.i163.break_out.i_crit_edge:         ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out.i

land.lhs.true.i163.if.end30.i_crit_edge:          ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.end24.i:                                       ; preds = %sw.bb15.i
  %and27.old.i = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.old.i)
  %tobool28.not.old.i = icmp eq i32 %and27.old.i, 0
  br i1 %tobool28.not.old.i, label %if.end24.i.if.end30.i_crit_edge, label %if.end24.i.break_out.i_crit_edge

if.end24.i.break_out.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out.i

if.end24.i.if.end30.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end24.i.if.end30.i_crit_edge, %land.lhs.true.i163.if.end30.i_crit_edge
  %66 = ptrtoint ptr %column35.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %column35.i, align 4
  %67 = ptrtoint ptr %canon_column32.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %canon_column32.i, align 4
  br label %for.inc.i

sw.bb34.i:                                        ; preds = %for.body.i
  %68 = ptrtoint ptr %column35.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %column35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp36.not.i = icmp eq i32 %69, 0
  br i1 %cmp36.not.i, label %sw.bb34.i.for.inc.i_crit_edge, label %if.then38.i

sw.bb34.i.for.inc.i_crit_edge:                    ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then38.i:                                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %69, -1
  %70 = ptrtoint ptr %column35.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %dec.i, ptr %column35.i, align 4
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  %conv.i = zext i8 %52 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i, align 1
  %73 = and i8 %72, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp44.not.i = icmp eq i8 %73, 0
  br i1 %cmp44.not.i, label %if.then46.i, label %sw.default.i.for.inc.i_crit_edge

sw.default.i.for.inc.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then46.i:                                      ; preds = %sw.default.i
  %74 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %c_oflag, align 4
  %and49.i = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.then46.i.break_out.i_crit_edge

if.then46.i.break_out.i_crit_edge:                ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out.i

if.end52.i:                                       ; preds = %if.then46.i
  %76 = ptrtoint ptr %termios.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %termios.i.i, align 4
  %and.i.i = and i32 %77, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %78 = and i8 %52, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %78)
  %cmp.i.i.i = icmp ne i8 %78, -128
  %tobool54.not.i = or i1 %cmp.i.i.i, %tobool.not.i.i
  br i1 %tobool54.not.i, label %if.then55.i, label %if.end52.i.for.inc.i_crit_edge

if.end52.i.for.inc.i_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %column35.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %column35.i, align 4
  %inc.i = add i32 %80, 1
  store i32 %inc.i, ptr %column35.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then55.i, %if.end52.i.for.inc.i_crit_edge, %sw.default.i.for.inc.i_crit_edge, %if.then38.i, %sw.bb34.i.for.inc.i_crit_edge, %if.end30.i, %if.end13.i
  %inc59.i = add nuw i32 %i.099.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %cp.0102.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc59.i, %50
  br i1 %exitcond.not.i, label %for.inc.i.break_out.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.break_out.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out.i

break_out.i:                                      ; preds = %for.inc.i.break_out.i_crit_edge, %if.then46.i.break_out.i_crit_edge, %if.end24.i.break_out.i_crit_edge, %land.lhs.true.i163.break_out.i_crit_edge, %if.end7.i.break_out.i_crit_edge, %for.body.i.break_out.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.099.i, %if.end7.i.break_out.i_crit_edge ], [ %i.099.i, %land.lhs.true.i163.break_out.i_crit_edge ], [ %i.099.i, %if.end24.i.break_out.i_crit_edge ], [ %i.099.i, %for.body.i.break_out.i_crit_edge ], [ %i.099.i, %if.then46.i.break_out.i_crit_edge ], [ %50, %for.inc.i.break_out.i_crit_edge ]
  %81 = ptrtoint ptr %ops.i164 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i164, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write.i, align 4
  %call60.i = call i32 %84(ptr noundef %tty, ptr noundef %b.1222, i32 noundef %i.0.lcssa.i) #9
  br label %process_output_block.exit

process_output_block.exit:                        ; preds = %break_out.i, %while.body29.process_output_block.exit_crit_edge
  %retval.0.i165 = phi i32 [ %call60.i, %break_out.i ], [ %call.i158, %while.body29.process_output_block.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %output_lock.i157) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i165)
  %cmp31 = icmp slt i32 %retval.0.i165, 0
  br i1 %cmp31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %process_output_block.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %retval.0.i165)
  %cmp33 = icmp eq i32 %retval.0.i165, -11
  br i1 %cmp33, label %if.then32.while.end_crit_edge, label %if.then32.land.lhs.true84.sink.split_crit_edge

if.then32.land.lhs.true84.sink.split_crit_edge:   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true84.sink.split

if.then32.while.end_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end36:                                         ; preds = %process_output_block.exit
  %add.ptr = getelementptr i8, ptr %b.1222, i32 %retval.0.i165
  %sub = sub i32 %nr.addr.1221, %retval.0.i165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp37 = icmp eq i32 %sub, 0
  br i1 %cmp37, label %if.end36.while.end_crit_edge, label %if.end39

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end39:                                         ; preds = %if.end36
  %85 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %add.ptr, align 1
  %87 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %disc_data.i, align 4
  %output_lock.i167 = getelementptr inbounds %struct.n_tty_data, ptr %88, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %output_lock.i167, i32 noundef 0) #9
  %call.i168 = call i32 @tty_write_room(ptr noundef %tty) #9
  %call2.i = call fastcc i32 @do_output_char(i8 noundef zeroext %86, ptr noundef %tty, i32 noundef %call.i168) #9
  call void @mutex_unlock(ptr noundef %output_lock.i167) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp42 = icmp slt i32 %call2.i, 0
  br i1 %cmp42, label %if.end39.while.end_crit_edge, label %cleanup

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup:                                          ; preds = %if.end39
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %dec = add i32 %sub, -1
  %cmp28.not = icmp eq i32 %dec, 0
  br i1 %cmp28.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body29_crit_edge

cleanup.while.body29_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body29

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end39.while.end_crit_edge, %if.end36.while.end_crit_edge, %if.then32.while.end_crit_edge, %while.cond27.preheader.while.end_crit_edge
  %nr.addr.3 = phi i32 [ %nr.addr.1221, %if.then32.while.end_crit_edge ], [ 0, %while.cond27.preheader.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ], [ 0, %if.end36.while.end_crit_edge ], [ %sub, %if.end39.while.end_crit_edge ]
  %b.3 = phi ptr [ %b.1222, %if.then32.while.end_crit_edge ], [ %b.0236, %while.cond27.preheader.while.end_crit_edge ], [ %incdec.ptr, %cleanup.while.end_crit_edge ], [ %add.ptr, %if.end36.while.end_crit_edge ], [ %add.ptr, %if.end39.while.end_crit_edge ]
  %89 = ptrtoint ptr %ops.i164 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i164, align 4
  %flush_chars = getelementptr inbounds %struct.tty_operations, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %flush_chars to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %flush_chars, align 4
  %tobool46.not = icmp eq ptr %92, null
  br i1 %tobool46.not, label %while.end.if.end71_crit_edge, label %if.then47

while.end.if.end71_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then47:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void %92(ptr noundef %tty) #9
  br label %if.end71

if.else:                                          ; preds = %if.end22
  br i1 %cmp52.not228, label %if.else.break_out.thread192_crit_edge, label %while.body54.lr.ph

if.else.break_out.thread192_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out.thread192

while.body54.lr.ph:                               ; preds = %if.else
  %93 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %disc_data.i, align 4
  %output_lock = getelementptr inbounds %struct.n_tty_data, ptr %94, i32 0, i32 20
  br label %while.body54

while.body54:                                     ; preds = %if.end64.while.body54_crit_edge, %while.body54.lr.ph
  %b.4230 = phi ptr [ %b.0236, %while.body54.lr.ph ], [ %add.ptr65, %if.end64.while.body54_crit_edge ]
  %nr.addr.4229 = phi i32 [ %nr.addr.0235, %while.body54.lr.ph ], [ %sub66, %if.end64.while.body54_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %output_lock, i32 noundef 0) #9
  %95 = ptrtoint ptr %ops.i164 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i164, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write, align 4
  %call56 = call i32 %98(ptr noundef %tty, ptr noundef %b.4230, i32 noundef %nr.addr.4229) #9
  call void @mutex_unlock(ptr noundef %output_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp58 = icmp slt i32 %call56, 0
  br i1 %cmp58, label %while.body54.land.lhs.true84.sink.split_crit_edge, label %if.end61

while.body54.land.lhs.true84.sink.split_crit_edge: ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true84.sink.split

if.end61:                                         ; preds = %while.body54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool62.not = icmp eq i32 %call56, 0
  br i1 %tobool62.not, label %if.end61.if.end74_crit_edge, label %if.end64

if.end61.if.end74_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.end64:                                         ; preds = %if.end61
  %add.ptr65 = getelementptr i8, ptr %b.4230, i32 %call56
  %sub66 = sub i32 %nr.addr.4229, %call56
  %cmp52.not = icmp eq i32 %sub66, 0
  br i1 %cmp52.not, label %if.end64.break_out.thread192_crit_edge, label %if.end64.while.body54_crit_edge

if.end64.while.body54_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body54

if.end64.break_out.thread192_crit_edge:           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out.thread192

if.end71:                                         ; preds = %if.then47, %while.end.if.end71_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.addr.3)
  %tobool72.not = icmp eq i32 %nr.addr.3, 0
  br i1 %tobool72.not, label %if.end71.break_out.thread192_crit_edge, label %if.end71.if.end74_crit_edge

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.end71.break_out.thread192_crit_edge:           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %break_out.thread192

break_out.thread192:                              ; preds = %if.end71.break_out.thread192_crit_edge, %if.end64.break_out.thread192_crit_edge, %if.else.break_out.thread192_crit_edge
  %b.5201 = phi ptr [ %add.ptr65, %if.end64.break_out.thread192_crit_edge ], [ %b.0236, %if.else.break_out.thread192_crit_edge ], [ %b.3, %if.end71.break_out.thread192_crit_edge ]
  call void @remove_wait_queue(ptr noundef %write_wait, ptr noundef nonnull %wait) #9
  br label %if.end88

if.end74:                                         ; preds = %if.end71.if.end74_crit_edge, %if.end61.if.end74_crit_edge
  %b.5209 = phi ptr [ %b.3, %if.end71.if.end74_crit_edge ], [ %b.4230, %if.end61.if.end74_crit_edge ]
  %nr.addr.5208 = phi i32 [ %nr.addr.3, %if.end71.if.end74_crit_edge ], [ %nr.addr.4229, %if.end61.if.end74_crit_edge ]
  %99 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %f_flags.i, align 4
  %and.i169 = and i32 %100, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %tobool.not.i170 = icmp eq i32 %and.i169, 0
  br i1 %tobool.not.i170, label %tty_io_nonblock.exit, label %if.end74.land.lhs.true84.sink.split_crit_edge

if.end74.land.lhs.true84.sink.split_crit_edge:    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true84.sink.split

tty_io_nonblock.exit:                             ; preds = %if.end74
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %flags.i, align 4
  %103 = and i32 %102, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool1.i.not = icmp eq i32 %103, 0
  br i1 %tobool1.i.not, label %if.end77, label %tty_io_nonblock.exit.land.lhs.true84.sink.split_crit_edge

tty_io_nonblock.exit.land.lhs.true84.sink.split_crit_edge: ; preds = %tty_io_nonblock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true84.sink.split

if.end77:                                         ; preds = %tty_io_nonblock.exit
  call void @up_read(ptr noundef %termios_rwsem) #9
  %call79 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef 2147483647) #9
  call void @down_read(ptr noundef %termios_rwsem) #9
  %104 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %stack.i.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %107, align 4
  %110 = and i32 %109, 256
  %tobool.not.i154 = icmp eq i32 %110, 0
  br i1 %tobool.not.i154, label %if.end77.signal_pending.exit_crit_edge, label %if.end77.land.lhs.true84.sink.split_crit_edge, !prof !48

if.end77.land.lhs.true84.sink.split_crit_edge:    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true84.sink.split

if.end77.signal_pending.exit_crit_edge:           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %signal_pending.exit

break_out:                                        ; preds = %land.lhs.true18.break_out_crit_edge, %if.end14.break_out_crit_edge, %signal_pending.exit.break_out_crit_edge, %process_echoes.exit.break_out_crit_edge
  %nr.addr.6 = phi i32 [ %nr, %process_echoes.exit.break_out_crit_edge ], [ %nr.addr.0235, %if.end14.break_out_crit_edge ], [ %nr.addr.0235, %land.lhs.true18.break_out_crit_edge ], [ %nr.addr.0235, %signal_pending.exit.break_out_crit_edge ]
  %b.6 = phi ptr [ %buf, %process_echoes.exit.break_out_crit_edge ], [ %b.0236, %if.end14.break_out_crit_edge ], [ %b.0236, %land.lhs.true18.break_out_crit_edge ], [ %b.0236, %signal_pending.exit.break_out_crit_edge ]
  %retval4.7 = phi i32 [ -512, %process_echoes.exit.break_out_crit_edge ], [ -512, %signal_pending.exit.break_out_crit_edge ], [ -5, %land.lhs.true18.break_out_crit_edge ], [ -5, %if.end14.break_out_crit_edge ]
  call void @remove_wait_queue(ptr noundef %write_wait, ptr noundef nonnull %wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.addr.6)
  %tobool83.not = icmp eq i32 %nr.addr.6, 0
  br i1 %tobool83.not, label %break_out.if.end88_crit_edge, label %break_out.land.lhs.true84_crit_edge

break_out.land.lhs.true84_crit_edge:              ; preds = %break_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true84

break_out.if.end88_crit_edge:                     ; preds = %break_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

land.lhs.true84.sink.split:                       ; preds = %if.end77.land.lhs.true84.sink.split_crit_edge, %tty_io_nonblock.exit.land.lhs.true84.sink.split_crit_edge, %if.end74.land.lhs.true84.sink.split_crit_edge, %while.body54.land.lhs.true84.sink.split_crit_edge, %if.then32.land.lhs.true84.sink.split_crit_edge
  %retval4.7190.ph = phi i32 [ %call56, %while.body54.land.lhs.true84.sink.split_crit_edge ], [ -11, %if.end74.land.lhs.true84.sink.split_crit_edge ], [ -11, %tty_io_nonblock.exit.land.lhs.true84.sink.split_crit_edge ], [ %retval.0.i165, %if.then32.land.lhs.true84.sink.split_crit_edge ], [ -512, %if.end77.land.lhs.true84.sink.split_crit_edge ]
  %b.6188.ph = phi ptr [ %b.4230, %while.body54.land.lhs.true84.sink.split_crit_edge ], [ %b.5209, %if.end74.land.lhs.true84.sink.split_crit_edge ], [ %b.5209, %tty_io_nonblock.exit.land.lhs.true84.sink.split_crit_edge ], [ %b.1222, %if.then32.land.lhs.true84.sink.split_crit_edge ], [ %b.5209, %if.end77.land.lhs.true84.sink.split_crit_edge ]
  call void @remove_wait_queue(ptr noundef %write_wait, ptr noundef nonnull %wait) #9
  br label %land.lhs.true84

land.lhs.true84:                                  ; preds = %land.lhs.true84.sink.split, %break_out.land.lhs.true84_crit_edge
  %retval4.7190 = phi i32 [ %retval4.7, %break_out.land.lhs.true84_crit_edge ], [ %retval4.7190.ph, %land.lhs.true84.sink.split ]
  %b.6188 = phi ptr [ %b.6, %break_out.land.lhs.true84_crit_edge ], [ %b.6188.ph, %land.lhs.true84.sink.split ]
  %fasync = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 25
  %111 = ptrtoint ptr %fasync to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fasync, align 4
  %tobool85.not = icmp eq ptr %112, null
  br i1 %tobool85.not, label %land.lhs.true84.if.end88_crit_edge, label %if.then86

land.lhs.true84.if.end88_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then86:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #11
  %flags87 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  call void @_set_bit(i32 noundef 5, ptr noundef %flags87) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %land.lhs.true84.if.end88_crit_edge, %break_out.if.end88_crit_edge, %break_out.thread192
  %retval4.7191 = phi i32 [ %retval4.7190, %if.then86 ], [ %retval4.7190, %land.lhs.true84.if.end88_crit_edge ], [ %retval4.7, %break_out.if.end88_crit_edge ], [ 0, %break_out.thread192 ]
  %b.6189 = phi ptr [ %b.6188, %if.then86 ], [ %b.6188, %land.lhs.true84.if.end88_crit_edge ], [ %b.6, %break_out.if.end88_crit_edge ], [ %b.5201, %break_out.thread192 ]
  call void @up_read(ptr noundef %termios_rwsem) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %b.6189 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool90.not = icmp eq ptr %b.6189, %buf
  %retval4.7.sub.ptr.sub = select i1 %tobool90.not, i32 %retval4.7191, i32 %sub.ptr.sub
  br label %cleanup94

cleanup94:                                        ; preds = %if.end88, %if.then.cleanup94_crit_edge
  %retval.0 = phi i32 [ %retval4.7.sub.ptr.sub, %if.end88 ], [ %call5, %if.then.cleanup94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_tty_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %cmd, label %sw.default [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = inttoptr i32 %arg to ptr
  %call = tail call i32 @tty_chars_in_buffer(ptr noundef %tty) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 2371) #9
  %4 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !49
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %call, i32 -1226833921) #9, !srcloc !52
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @down_write(ptr noundef %termios_rwsem) #9
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_lflag, align 4
  %10 = and i32 %9, 65538
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb4
  %canon_head.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %canon_head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %canon_head.i, align 4
  %read_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %read_tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %read_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i = icmp eq i32 %13, %15
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %sub.i = sub i32 %13, %15
  %and.i43 = and i32 %13, 4095
  %and327.i = and i32 %15, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i43, i32 %and327.i)
  %cmp4.not28.i = icmp eq i32 %and.i43, %and327.i
  br i1 %cmp4.not28.i, label %if.end.i.if.end_crit_edge, label %while.body.lr.ph.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.end.i
  %read_flags.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %and331.i = phi i32 [ %and327.i, %while.body.lr.ph.i ], [ %and3.i, %if.end10.i.while.body.i_crit_edge ]
  %tail.030.i = phi i32 [ %15, %while.body.lr.ph.i ], [ %inc.i, %if.end10.i.while.body.i_crit_edge ]
  %nr.029.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %nr.1.i, %if.end10.i.while.body.i_crit_edge ]
  %div3.i.i = lshr i32 %and331.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %read_flags.i, i32 %div3.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %tail.030.i, 31
  %18 = shl nuw i32 1, %and.i.i
  %19 = and i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %while.body.i.if.end10.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end10.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i26.i = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 11, i32 %and331.i
  %20 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp7.i = icmp eq i8 %21, 0
  %dec.i = sext i1 %cmp7.i to i32
  %spec.select.i = add i32 %nr.029.i, %dec.i
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.i, %while.body.i.if.end10.i_crit_edge
  %nr.1.i = phi i32 [ %nr.029.i, %while.body.i.if.end10.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %inc.i = add i32 %tail.030.i, 1
  %and3.i = and i32 %inc.i, 4095
  %cmp4.not.i = icmp eq i32 %and.i43, %and3.i
  br i1 %cmp4.not.i, label %if.end10.i.if.end_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end10.i.if.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %read_tail.i44 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %read_tail.i44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read_tail.i44, align 4
  %sub.i45 = sub i32 %23, %25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end10.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %retval1.0 = phi i32 [ %sub.i45, %if.else ], [ 0, %if.then.if.end_crit_edge ], [ %sub.i, %if.end.i.if.end_crit_edge ], [ %nr.1.i, %if.end10.i.if.end_crit_edge ]
  tail call void @up_write(ptr noundef %termios_rwsem) #9
  %26 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 2379) #9
  %27 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i39 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i39 to ptr
  %cpu_domain.i.i40 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i40) #6, !srcloc !49
  %and.i41 = and i32 %29, -13
  %or.i42 = or i32 %and.i41, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i42) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %30 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %26, i32 %retval1.0, i32 -1226833921) #9, !srcloc !53
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @n_tty_ioctl_helper(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end, %sw.bb
  %retval.0 = phi i32 [ %call27, %sw.default ], [ %30, %if.end ], [ %7, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n_tty_set_termios(ptr noundef %tty, ptr noundef readonly %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %c_lflag = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 3
  %2 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_lflag, align 4
  %c_lflag1 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %4 = ptrtoint ptr %c_lflag1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_lflag1, align 4
  %xor = xor i32 %5, %3
  %and = and i32 %xor, 65538
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end27_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %read_flags = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 12
  %6 = call ptr @memset(ptr %read_flags, i32 0, i32 512)
  %read_tail = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %read_tail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_tail, align 4
  %line_start = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %line_start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %line_start, align 4
  %c_lflag4 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %10 = ptrtoint ptr %c_lflag4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_lflag4, align 4
  %and5 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.then9_crit_edge, label %lor.lhs.false7

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false7:                                   ; preds = %if.then
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %8)
  %tobool8.not = icmp eq i32 %13, %8
  br i1 %tobool8.not, label %lor.lhs.false7.if.then9_crit_edge, label %if.else

lor.lhs.false7.if.then9_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false7.if.then9_crit_edge, %if.then.if.then9_crit_edge
  %canon_head = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %canon_head to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %canon_head, align 4
  %push = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %push to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %push, align 1
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, ptr %push, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %13, 4095
  %and11 = and i32 %sub, 4095
  tail call void @_set_bit(i32 noundef %and11, ptr noundef %read_flags) #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %canon_head15 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %canon_head15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %canon_head15, align 4
  %push16 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %push16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load17 = load i8, ptr %push16, align 1
  %bf.set19 = or i8 %bf.load17, 4
  store i8 %bf.set19, ptr %push16, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %commit_head = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %commit_head to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %commit_head, align 4
  %erasing = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %erasing to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load21 = load i8, ptr %erasing, align 1
  %bf.clear25 = and i8 %bf.load21, 63
  store i8 %bf.clear25, ptr %erasing, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end, %lor.lhs.false.if.end27_crit_edge
  %termios28 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_lflag29 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %24 = ptrtoint ptr %c_lflag29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_lflag29, align 4
  %26 = trunc i32 %25 to i8
  %icanon = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %icanon to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load32 = load i8, ptr %icanon, align 1
  %28 = shl i8 %26, 2
  %bf.shl = and i8 %28, 8
  %bf.clear33 = and i8 %bf.load32, -9
  %bf.set34 = or i8 %bf.shl, %bf.clear33
  store i8 %bf.set34, ptr %icanon, align 1
  %29 = ptrtoint ptr %termios28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %termios28, align 4
  %31 = and i32 %30, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %lor.lhs.false58, label %if.end27.if.then83_crit_edge

if.end27.if.then83_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

lor.lhs.false58:                                  ; preds = %if.end27
  %33 = ptrtoint ptr %c_lflag29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %c_lflag29, align 4
  %and61 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %and66 = and i32 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond370 = select i1 %tobool62.not, i1 %tobool67.not, i1 false
  %and71 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %or.cond371 = select i1 %or.cond370, i1 %tobool72.not, i1 false
  %and76 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %or.cond372 = select i1 %or.cond371, i1 %tobool77.not, i1 false
  %and81 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %or.cond373 = select i1 %or.cond372, i1 %tobool82.not, i1 false
  br i1 %or.cond373, label %if.else222, label %lor.lhs.false58.if.then83_crit_edge

lor.lhs.false58.if.then83_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

if.then83:                                        ; preds = %lor.lhs.false58.if.then83_crit_edge, %if.end27.if.then83_crit_edge
  %char_map = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 6
  %35 = call ptr @memset(ptr %char_map, i32 0, i32 32)
  %36 = ptrtoint ptr %termios28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %termios28, align 4
  %38 = and i32 %37, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %if.then83.if.end97_crit_edge, label %if.then94

if.then83.if.end97_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then94:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %char_map) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.then83.if.end97_crit_edge
  %40 = ptrtoint ptr %termios28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %termios28, align 4
  %and100 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end97.if.end105_crit_edge, label %if.then102

if.end97.if.end105_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 10, ptr noundef %char_map) #9
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end97.if.end105_crit_edge
  %42 = ptrtoint ptr %c_lflag29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %c_lflag29, align 4
  %and108 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end105.if.end171_crit_edge, label %if.then110

if.end105.if.end171_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

if.then110:                                       ; preds = %if.end105
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 2
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  %conv112 = zext i8 %45 to i32
  tail call void @_set_bit(i32 noundef %conv112, ptr noundef %char_map) #9
  %arrayidx117 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 3
  %46 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %47 to i32
  tail call void @_set_bit(i32 noundef %conv118, ptr noundef %char_map) #9
  %arrayidx123 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 4
  %48 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %49 to i32
  tail call void @_set_bit(i32 noundef %conv124, ptr noundef %char_map) #9
  tail call void @_set_bit(i32 noundef 10, ptr noundef %char_map) #9
  %arrayidx131 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 11
  %50 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %51 to i32
  tail call void @_set_bit(i32 noundef %conv132, ptr noundef %char_map) #9
  %52 = ptrtoint ptr %c_lflag29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %c_lflag29, align 4
  %and137 = and i32 %53, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.then110.if.end171_crit_edge, label %if.then139

if.then110.if.end171_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

if.then139:                                       ; preds = %if.then110
  %arrayidx142 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 14
  %54 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %55 to i32
  tail call void @_set_bit(i32 noundef %conv143, ptr noundef %char_map) #9
  %arrayidx148 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 15
  %56 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %57 to i32
  tail call void @_set_bit(i32 noundef %conv149, ptr noundef %char_map) #9
  %arrayidx154 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 16
  %58 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %59 to i32
  tail call void @_set_bit(i32 noundef %conv155, ptr noundef %char_map) #9
  %60 = ptrtoint ptr %c_lflag29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %c_lflag29, align 4
  %and160 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.then139.if.end171_crit_edge, label %if.then162

if.then139.if.end171_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

if.then162:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx165 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 12
  %62 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %63 to i32
  tail call void @_set_bit(i32 noundef %conv166, ptr noundef %char_map) #9
  br label %if.end171

if.end171:                                        ; preds = %if.then162, %if.then139.if.end171_crit_edge, %if.then110.if.end171_crit_edge, %if.end105.if.end171_crit_edge
  %64 = ptrtoint ptr %termios28 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %termios28, align 4
  %and174 = and i32 %65, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end171.if.end189_crit_edge, label %if.then176

if.end171.if.end189_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then176:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx179 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %66 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %67 to i32
  tail call void @_set_bit(i32 noundef %conv180, ptr noundef %char_map) #9
  %arrayidx185 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %68 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx185, align 1
  %conv186 = zext i8 %69 to i32
  tail call void @_set_bit(i32 noundef %conv186, ptr noundef %char_map) #9
  br label %if.end189

if.end189:                                        ; preds = %if.then176, %if.end171.if.end189_crit_edge
  %70 = ptrtoint ptr %c_lflag29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %c_lflag29, align 4
  %and192 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %if.end189.if.end213_crit_edge, label %if.then194

if.end189.if.end213_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end213

if.then194:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  %c_cc196 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5
  %72 = ptrtoint ptr %c_cc196 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %c_cc196, align 1
  %conv198 = zext i8 %73 to i32
  tail call void @_set_bit(i32 noundef %conv198, ptr noundef %char_map) #9
  %arrayidx203 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 1
  %74 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx203, align 1
  %conv204 = zext i8 %75 to i32
  tail call void @_set_bit(i32 noundef %conv204, ptr noundef %char_map) #9
  %arrayidx209 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 10
  %76 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %77 to i32
  tail call void @_set_bit(i32 noundef %conv210, ptr noundef %char_map) #9
  br label %if.end213

if.end213:                                        ; preds = %if.then194, %if.end189.if.end213_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %char_map) #9
  %78 = ptrtoint ptr %icanon to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load216 = load i8, ptr %icanon, align 1
  %bf.clear220 = and i8 %bf.load216, -49
  br label %if.end264

if.else222:                                       ; preds = %lor.lhs.false58
  %bf.set226 = or i8 %bf.set34, 32
  %79 = ptrtoint ptr %icanon to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %bf.set226, ptr %icanon, align 1
  %80 = ptrtoint ptr %termios28 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %termios28, align 4
  %and229 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  %82 = and i32 %81, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %83 = icmp ne i32 %82, 0
  %or.cond.not = and i1 %tobool230.not, %83
  %84 = and i32 %81, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %84)
  %.not = icmp eq i32 %84, 16
  %or.cond378 = select i1 %or.cond.not, i1 true, i1 %.not
  br i1 %or.cond378, label %if.else222.if.else258_crit_edge, label %land.lhs.true250

if.else222.if.else258_crit_edge:                  ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else258

land.lhs.true250:                                 ; preds = %if.else222
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %85 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %driver, align 4
  %flags = getelementptr inbounds %struct.tty_driver, ptr %86, i32 0, i32 13
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags, align 4
  %and251 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %tobool252.not = icmp eq i32 %and251, 0
  br i1 %tobool252.not, label %land.lhs.true250.if.else258_crit_edge, label %if.then253

land.lhs.true250.if.else258_crit_edge:            ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else258

if.then253:                                       ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set257 = or i8 %bf.set34, 48
  br label %if.end264

if.else258:                                       ; preds = %land.lhs.true250.if.else258_crit_edge, %if.else222.if.else258_crit_edge
  %bf.clear261 = and i8 %bf.set226, -17
  br label %if.end264

if.end264:                                        ; preds = %if.else258, %if.then253, %if.end213
  %bf.set257.sink = phi i8 [ %bf.set257, %if.then253 ], [ %bf.clear261, %if.else258 ], [ %bf.clear220, %if.end213 ]
  %89 = ptrtoint ptr %icanon to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %bf.set257.sink, ptr %icanon, align 1
  %90 = ptrtoint ptr %termios28 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %termios28, align 4
  %and267 = and i32 %91, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267)
  %tobool268.not = icmp ne i32 %and267, 0
  %brmerge = or i1 %tobool.not, %tobool268.not
  br i1 %brmerge, label %if.end264.if.end278_crit_edge, label %land.lhs.true271

if.end264.if.end278_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278

land.lhs.true271:                                 ; preds = %if.end264
  %92 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %old, align 4
  %and273 = and i32 %93, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273)
  %tobool274.not = icmp eq i32 %and273, 0
  br i1 %tobool274.not, label %land.lhs.true271.if.end278_crit_edge, label %land.lhs.true275

land.lhs.true271.if.end278_crit_edge:             ; preds = %land.lhs.true271
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278

land.lhs.true275:                                 ; preds = %land.lhs.true271
  %tco_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 2
  %94 = ptrtoint ptr %tco_stopped to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %tco_stopped, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool276.not = icmp eq i8 %95, 0
  br i1 %tobool276.not, label %if.then277, label %land.lhs.true275.if.end278_crit_edge

land.lhs.true275.if.end278_crit_edge:             ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278

if.then277:                                       ; preds = %land.lhs.true275
  tail call void @start_tty(ptr noundef %tty) #9
  %96 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %disc_data, align 4
  %echo_mark.i = getelementptr inbounds %struct.n_tty_data, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %echo_mark.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %echo_mark.i, align 4
  %echo_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %97, i32 0, i32 18
  %100 = ptrtoint ptr %echo_tail.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %echo_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp.i = icmp eq i32 %99, %101
  br i1 %cmp.i, label %if.then277.if.end278_crit_edge, label %if.end.i

if.then277.if.end278_crit_edge:                   ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278

if.end.i:                                         ; preds = %if.then277
  %output_lock.i = getelementptr inbounds %struct.n_tty_data, ptr %97, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i, i32 noundef 0) #9
  %102 = ptrtoint ptr %echo_mark.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %echo_mark.i, align 4
  %echo_commit.i = getelementptr inbounds %struct.n_tty_data, ptr %97, i32 0, i32 4
  %104 = ptrtoint ptr %echo_commit.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %echo_commit.i, align 4
  %call.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end278_crit_edge, label %land.lhs.true.i

if.end.i.if.end278_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278

land.lhs.true.i:                                  ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %105 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i, align 4
  %flush_chars.i = getelementptr inbounds %struct.tty_operations, ptr %106, i32 0, i32 9
  %107 = ptrtoint ptr %flush_chars.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %flush_chars.i, align 4
  %tobool3.not.i = icmp eq ptr %108, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end278_crit_edge, label %if.then4.i

land.lhs.true.i.if.end278_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %108(ptr noundef %tty) #9
  br label %if.end278

if.end278:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end278_crit_edge, %if.end.i.if.end278_crit_edge, %if.then277.if.end278_crit_edge, %land.lhs.true275.if.end278_crit_edge, %land.lhs.true271.if.end278_crit_edge, %if.end264.if.end278_crit_edge
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_tty_poll(ptr noundef %tty, ptr noundef %file, ptr noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 27
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit64_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit64_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit64

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %tobool3.not.i = icmp eq ptr %read_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i62_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i62_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i62

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %1(ptr noundef %file, ptr noundef nonnull %read_wait, ptr noundef nonnull %wait) #9
  br label %land.lhs.true.i62

land.lhs.true.i62:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i62_crit_edge
  %write_wait98 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i59 = icmp eq ptr %3, null
  %tobool3.not.i60 = icmp eq ptr %write_wait98, null
  %or.cond.i61 = or i1 %tobool3.not.i60, %tobool1.not.i59
  br i1 %or.cond.i61, label %land.lhs.true.i62.poll_wait.exit64_crit_edge, label %if.then.i63

land.lhs.true.i62.poll_wait.exit64_crit_edge:     ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit64

if.then.i63:                                      ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %file, ptr noundef nonnull %write_wait98, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit64

poll_wait.exit64:                                 ; preds = %if.then.i63, %land.lhs.true.i62.poll_wait.exit64_crit_edge, %entry.poll_wait.exit64_crit_edge
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %4 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disc_data.i, align 4
  %arrayidx.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i65 = icmp eq i8 %7, 0
  br i1 %tobool1.not.i65, label %land.lhs.true2.i, label %poll_wait.exit64.cond.end.i_crit_edge

poll_wait.exit64.cond.end.i_crit_edge:            ; preds = %poll_wait.exit64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

land.lhs.true2.i:                                 ; preds = %poll_wait.exit64
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 6
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i = icmp eq i8 %9, 0
  %narrow.i = select i1 %tobool6.not.i, i8 1, i8 %9
  %spec.select.i = zext i8 %narrow.i to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %land.lhs.true2.i, %poll_wait.exit64.cond.end.i_crit_edge
  %cond.i = phi i32 [ 1, %poll_wait.exit64.cond.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true2.i ]
  %icanon.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %icanon.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %icanon.i, align 1
  %11 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not.i = icmp eq i8 %11, 0
  br i1 %tobool12.not.i, label %cond.end.i.if.else.i_crit_edge, label %land.lhs.true13.i

cond.end.i.if.else.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true13.i:                                ; preds = %cond.end.i
  %c_lflag.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %12 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_lflag.i, align 4
  %and.i = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %input_available_p.exit, label %land.lhs.true13.i.if.else.i_crit_edge

land.lhs.true13.i.if.else.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true13.i.if.else.i_crit_edge, %cond.end.i.if.else.i_crit_edge
  %commit_head.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %commit_head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %commit_head.i, align 4
  %read_tail17.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 14
  %16 = ptrtoint ptr %read_tail17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_tail17.i, align 4
  %sub.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %cond.i)
  %cmp18.i.not = icmp ult i32 %sub.i, %cond.i
  br i1 %cmp18.i.not, label %if.else.i.if.else_crit_edge, label %if.else.i.if.end5_crit_edge

if.else.i.if.end5_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.else.i.if.else_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

input_available_p.exit:                           ; preds = %land.lhs.true13.i
  %canon_head.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %canon_head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %canon_head.i, align 4
  %read_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 14
  %20 = ptrtoint ptr %read_tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i.not = icmp eq i32 %19, %21
  br i1 %cmp.i.not, label %input_available_p.exit.if.else_crit_edge, label %input_available_p.exit.if.end5_crit_edge

input_available_p.exit.if.end5_crit_edge:         ; preds = %input_available_p.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

input_available_p.exit.if.else_crit_edge:         ; preds = %input_available_p.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %input_available_p.exit.if.else_crit_edge, %if.else.i.if.else_crit_edge
  %port = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 37
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 4
  tail call void @tty_buffer_flush_work(ptr noundef %23) #9
  %24 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disc_data.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not.i70 = icmp eq i8 %27, 0
  br i1 %tobool1.not.i70, label %land.lhs.true2.i76, label %if.else.cond.end.i81_crit_edge

if.else.cond.end.i81_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i81

land.lhs.true2.i76:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i72 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 6
  %28 = ptrtoint ptr %arrayidx5.i72 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx5.i72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool6.not.i73 = icmp eq i8 %29, 0
  %narrow.i74 = select i1 %tobool6.not.i73, i8 1, i8 %29
  %spec.select.i75 = zext i8 %narrow.i74 to i32
  br label %cond.end.i81

cond.end.i81:                                     ; preds = %land.lhs.true2.i76, %if.else.cond.end.i81_crit_edge
  %cond.i77 = phi i32 [ 1, %if.else.cond.end.i81_crit_edge ], [ %spec.select.i75, %land.lhs.true2.i76 ]
  %icanon.i78 = getelementptr inbounds %struct.n_tty_data, ptr %25, i32 0, i32 10
  %30 = ptrtoint ptr %icanon.i78 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i79 = load i8, ptr %icanon.i78, align 1
  %31 = and i8 %bf.load.i79, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool12.not.i80 = icmp eq i8 %31, 0
  br i1 %tobool12.not.i80, label %cond.end.i81.if.else.i94_crit_edge, label %land.lhs.true13.i85

cond.end.i81.if.else.i94_crit_edge:               ; preds = %cond.end.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i94

land.lhs.true13.i85:                              ; preds = %cond.end.i81
  %c_lflag.i82 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %32 = ptrtoint ptr %c_lflag.i82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %c_lflag.i82, align 4
  %and.i83 = and i32 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool15.not.i84 = icmp eq i32 %and.i83, 0
  br i1 %tobool15.not.i84, label %if.then.i89, label %land.lhs.true13.i85.if.else.i94_crit_edge

land.lhs.true13.i85.if.else.i94_crit_edge:        ; preds = %land.lhs.true13.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i94

if.then.i89:                                      ; preds = %land.lhs.true13.i85
  call void @__sanitizer_cov_trace_pc() #11
  %canon_head.i86 = getelementptr inbounds %struct.n_tty_data, ptr %25, i32 0, i32 2
  %34 = ptrtoint ptr %canon_head.i86 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %canon_head.i86, align 4
  %read_tail.i87 = getelementptr inbounds %struct.n_tty_data, ptr %25, i32 0, i32 14
  %36 = ptrtoint ptr %read_tail.i87 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %read_tail.i87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i88 = icmp ne i32 %35, %37
  br label %input_available_p.exit97

if.else.i94:                                      ; preds = %land.lhs.true13.i85.if.else.i94_crit_edge, %cond.end.i81.if.else.i94_crit_edge
  %commit_head.i90 = getelementptr inbounds %struct.n_tty_data, ptr %25, i32 0, i32 1
  %38 = ptrtoint ptr %commit_head.i90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %commit_head.i90, align 4
  %read_tail17.i91 = getelementptr inbounds %struct.n_tty_data, ptr %25, i32 0, i32 14
  %40 = ptrtoint ptr %read_tail17.i91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %read_tail17.i91, align 4
  %sub.i92 = sub i32 %39, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i92, i32 %cond.i77)
  %cmp18.i93 = icmp uge i32 %sub.i92, %cond.i77
  br label %input_available_p.exit97

input_available_p.exit97:                         ; preds = %if.else.i94, %if.then.i89
  %retval.0.in.i95 = phi i1 [ %cmp18.i93, %if.else.i94 ], [ %cmp.i88, %if.then.i89 ]
  %spec.select = select i1 %retval.0.in.i95, i32 65, i32 0
  br label %if.end5

if.end5:                                          ; preds = %input_available_p.exit97, %input_available_p.exit.if.end5_crit_edge, %if.else.i.if.end5_crit_edge
  %mask.0 = phi i32 [ 65, %input_available_p.exit.if.end5_crit_edge ], [ %spec.select, %input_available_p.exit97 ], [ 65, %if.else.i.if.end5_crit_edge ]
  %packet = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 4
  %42 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %packet, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool6.not = icmp eq i8 %43, 0
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %land.lhs.true

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %44 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %link, align 4
  %pktstatus = getelementptr inbounds %struct.tty_struct, ptr %45, i32 0, i32 20, i32 3
  %46 = ptrtoint ptr %pktstatus to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pktstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool8.not = icmp eq i8 %47, 0
  %spec.select55 = select i1 %tobool8.not, i32 %mask.0, i32 67
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end5.if.end11_crit_edge
  %mask.1 = phi i32 [ %mask.0, %if.end5.if.end11_crit_edge ], [ %spec.select55, %land.lhs.true ]
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags, align 4
  %50 = shl i32 %49, 2
  %51 = and i32 %50, 16
  %call17 = tail call i32 @tty_hung_up_p(ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %mask.3.v = select i1 %tobool18.not, i32 %51, i32 16
  %mask.3 = or i32 %mask.3.v, %mask.1
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write, align 4
  %tobool22.not = icmp eq ptr %55, null
  br i1 %tobool22.not, label %if.end11.if.end34_crit_edge, label %land.lhs.true23

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true23:                                  ; preds = %if.end11
  %atomic_write_lock = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 8
  %call24 = tail call zeroext i1 @mutex_is_locked(ptr noundef %atomic_write_lock) #9
  br i1 %call24, label %land.lhs.true23.if.end34_crit_edge, label %land.lhs.true25

land.lhs.true23.if.end34_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %call26 = tail call i32 @tty_chars_in_buffer(ptr noundef %tty) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call26)
  %cmp = icmp ult i32 %call26, 256
  br i1 %cmp, label %land.lhs.true28, label %land.lhs.true25.if.end34_crit_edge

land.lhs.true25.if.end34_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true28:                                  ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 @tty_write_room(ptr noundef %tty) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  %or33 = or i32 %mask.3, 260
  %spec.select57 = select i1 %cmp30.not, i32 %mask.3, i32 %or33
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true28, %land.lhs.true25.if.end34_crit_edge, %land.lhs.true23.if.end34_crit_edge, %if.end11.if.end34_crit_edge
  %mask.4 = phi i32 [ %mask.3, %land.lhs.true23.if.end34_crit_edge ], [ %mask.3, %land.lhs.true25.if.end34_crit_edge ], [ %mask.3, %if.end11.if.end34_crit_edge ], [ %spec.select57, %land.lhs.true28 ]
  ret i32 %mask.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n_tty_receive_buf(ptr noundef %tty, ptr nocapture noundef readonly %cp, ptr noundef %fp, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @n_tty_receive_buf_common(ptr noundef %tty, ptr noundef %cp, ptr noundef %fp, i32 noundef %count, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n_tty_write_wakeup(ptr noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #9
  %fasync = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 25
  tail call void @kill_fasync(ptr noundef %fasync, i32 noundef 29, i32 noundef 2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_tty_receive_buf2(ptr noundef %tty, ptr nocapture noundef readonly %cp, ptr noundef %fp, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @n_tty_receive_buf_common(ptr noundef %tty, ptr noundef %cp, ptr noundef %fp, i32 noundef %count, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n_tty_kick_worker(ptr noundef %tty) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %no_room = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %no_room to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_room, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end98_crit_edge, label %if.then, !prof !48

entry.if.end98_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %no_room to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %no_room, align 4
  %port = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 37
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  %itty = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %itty to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %itty, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %land.rhs, label %if.then.if.end42_crit_edge

if.then.if.end42_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.rhs:                                         ; preds = %if.then
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @n_tty_kick_worker._rs, ptr noundef nonnull @__func__.n_tty_kick_worker) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %land.rhs.if.end42_crit_edge, label %do.end.critedge, !prof !48

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.6) #9
  br label %if.end42

if.end42:                                         ; preds = %do.end.critedge, %land.rhs.if.end42_crit_edge, %if.then.if.end42_crit_edge
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool46.not = icmp eq i32 %11, 0
  br i1 %tobool46.not, label %if.end42.if.end94_crit_edge, label %land.rhs52

if.end42.if.end94_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

land.rhs52:                                       ; preds = %if.end42
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @n_tty_kick_worker._rs.7, ptr noundef nonnull @__func__.n_tty_kick_worker) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.rhs52.if.end94_crit_edge, label %do.end80.critedge, !prof !48

land.rhs52.if.end94_crit_edge:                    ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

do.end80.critedge:                                ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.8) #9
  br label %if.end94

if.end94:                                         ; preds = %do.end80.critedge, %land.rhs52.if.end94_crit_edge, %if.end42.if.end94_crit_edge
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 4
  %call97 = tail call zeroext i1 @tty_buffer_restart_work(ptr noundef %13) #9
  br label %if.end98

if.end98:                                         ; preds = %if.end94, %entry.if.end98_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tty_buffer_restart_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @canon_copy_from_read_buf(ptr noundef %tty, ptr nocapture noundef %kbp, ptr nocapture noundef %nr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %canon_head1 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %canon_head1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %canon_head1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %read_tail = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %read_tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read_tail, align 4
  %sub = sub i32 %5, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %sub)
  %and = and i32 %9, 4095
  %add = add i32 %10, %and
  %11 = tail call i32 @llvm.umin.i32(i32 %add, i32 4096)
  %read_flags = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 12
  %call = tail call i32 @_find_next_bit_be(ptr noundef %read_flags, i32 noundef %11, i32 noundef %and) #9
  %sub15.neg = sub nsw i32 %and, %11
  %sub16 = add i32 %sub15.neg, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call)
  %cmp17 = icmp ne i32 %call, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16)
  %tobool18.not = icmp eq i32 %sub16, 0
  %or.cond = select i1 %cmp17, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.end26, label %if.then19

if.then19:                                        ; preds = %if.end
  %call22 = tail call i32 @_find_first_bit_be(ptr noundef %read_flags, i32 noundef %sub16) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call22, i32 %sub16)
  %cmp23 = icmp ne i32 %call22, %sub16
  %found.0182 = zext i1 %cmp23 to i32
  %sub27183 = sub i32 %call22, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub27183)
  %cmp28184 = icmp ugt i32 %sub27183, 4096
  %add31185 = add i32 %sub27183, 4096
  %spec.select186 = select i1 %cmp28184, i32 %add31185, i32 %sub27183
  %add33187 = add i32 %spec.select186, %found.0182
  br i1 %cmp23, label %if.then19.lor.lhs.false_crit_edge, label %if.then19.do.end55.critedge_crit_edge

if.then19.do.end55.critedge_crit_edge:            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55.critedge

if.then19.lor.lhs.false_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %11)
  %cmp24 = icmp ne i32 %call, %11
  %found.0 = zext i1 %cmp24 to i32
  %sub27 = sub i32 %call, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub27)
  %cmp28 = icmp ugt i32 %sub27, 4096
  %add31 = add i32 %sub27, 4096
  %spec.select = select i1 %cmp28, i32 %add31, i32 %sub27
  %add33 = add i32 %spec.select, %found.0
  br i1 %cmp24, label %if.end26.lor.lhs.false_crit_edge, label %if.end26.do.end55.critedge_crit_edge

if.end26.do.end55.critedge_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55.critedge

if.end26.lor.lhs.false_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end26.lor.lhs.false_crit_edge, %if.then19.lor.lhs.false_crit_edge
  %add33195 = phi i32 [ %add33187, %if.then19.lor.lhs.false_crit_edge ], [ %add33, %if.end26.lor.lhs.false_crit_edge ]
  %spec.select192 = phi i32 [ %spec.select186, %if.then19.lor.lhs.false_crit_edge ], [ %spec.select, %if.end26.lor.lhs.false_crit_edge ]
  %eol.0191 = phi i32 [ %call22, %if.then19.lor.lhs.false_crit_edge ], [ %call, %if.end26.lor.lhs.false_crit_edge ]
  %and.i = and i32 %eol.0191, 4095
  %arrayidx.i = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 11, i32 %and.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp37.not = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %kbp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kbp, align 4
  %16 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disc_data, align 4
  %sub.i = sub nuw nsw i32 4096, %and
  %arrayidx.i.i = getelementptr %struct.n_tty_data, ptr %17, i32 0, i32 11, i32 %and
  br i1 %cmp37.not, label %if.then44.critedge, label %if.then44.critedge141

if.then44.critedge:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select192, i32 %sub.i)
  %cmp.i = icmp ugt i32 %spec.select192, %sub.i
  br i1 %cmp.i, label %if.then.i, label %if.then44.critedge.if.end.i_crit_edge

if.then44.critedge.if.end.i_crit_edge:            ; preds = %if.then44.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then44.critedge
  tail call void @tty_audit_add_data(ptr noundef %tty, ptr noundef %arrayidx.i.i, i32 noundef %sub.i) #9
  %18 = call ptr @memcpy(ptr %15, ptr %arrayidx.i.i, i32 %sub.i)
  %c_lflag.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %19 = ptrtoint ptr %c_lflag.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_lflag.i.i, align 4
  %21 = and i32 %20, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %if.then.i.i, label %if.then.i.zero_buffer.exit.i_crit_edge

if.then.i.zero_buffer.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zero_buffer.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 %sub.i)
  br label %zero_buffer.exit.i

zero_buffer.exit.i:                               ; preds = %if.then.i.i, %if.then.i.zero_buffer.exit.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %15, i32 %sub.i
  %sub1.i = sub i32 %spec.select192, %sub.i
  %read_buf.i = getelementptr inbounds %struct.n_tty_data, ptr %17, i32 0, i32 11
  br label %if.end.i

if.end.i:                                         ; preds = %zero_buffer.exit.i, %if.then44.critedge.if.end.i_crit_edge
  %to.addr.0.i = phi ptr [ %add.ptr.i, %zero_buffer.exit.i ], [ %15, %if.then44.critedge.if.end.i_crit_edge ]
  %n.addr.0.i = phi i32 [ %sub1.i, %zero_buffer.exit.i ], [ %spec.select192, %if.then44.critedge.if.end.i_crit_edge ]
  %from.0.i = phi ptr [ %read_buf.i, %zero_buffer.exit.i ], [ %arrayidx.i.i, %if.then44.critedge.if.end.i_crit_edge ]
  tail call void @tty_audit_add_data(ptr noundef %tty, ptr noundef %from.0.i, i32 noundef %n.addr.0.i) #9
  %24 = call ptr @memcpy(ptr %to.addr.0.i, ptr %from.0.i, i32 %n.addr.0.i)
  %c_lflag.i24.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %25 = ptrtoint ptr %c_lflag.i24.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c_lflag.i24.i, align 4
  %27 = and i32 %26, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %if.then.i25.i, label %if.end.i.if.then44_crit_edge

if.end.i.if.then44_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.then.i25.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = call ptr @memset(ptr %from.0.i, i32 0, i32 %n.addr.0.i)
  br label %if.then44

if.then44.critedge141:                            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %add33195, i32 %sub.i)
  %cmp.i149 = icmp ugt i32 %add33195, %sub.i
  br i1 %cmp.i149, label %if.then.i151, label %if.then44.critedge141.if.end.i161_crit_edge

if.then44.critedge141.if.end.i161_crit_edge:      ; preds = %if.then44.critedge141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i161

if.then.i151:                                     ; preds = %if.then44.critedge141
  tail call void @tty_audit_add_data(ptr noundef %tty, ptr noundef %arrayidx.i.i, i32 noundef %sub.i) #9
  %30 = call ptr @memcpy(ptr %15, ptr %arrayidx.i.i, i32 %sub.i)
  %c_lflag.i.i150 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %31 = ptrtoint ptr %c_lflag.i.i150 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %c_lflag.i.i150, align 4
  %33 = and i32 %32, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %if.then.i.i152, label %if.then.i151.zero_buffer.exit.i156_crit_edge

if.then.i151.zero_buffer.exit.i156_crit_edge:     ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %zero_buffer.exit.i156

if.then.i.i152:                                   ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #11
  %35 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 %sub.i)
  br label %zero_buffer.exit.i156

zero_buffer.exit.i156:                            ; preds = %if.then.i.i152, %if.then.i151.zero_buffer.exit.i156_crit_edge
  %add.ptr.i153 = getelementptr i8, ptr %15, i32 %sub.i
  %sub1.i154 = sub i32 %add33195, %sub.i
  %read_buf.i155 = getelementptr inbounds %struct.n_tty_data, ptr %17, i32 0, i32 11
  br label %if.end.i161

if.end.i161:                                      ; preds = %zero_buffer.exit.i156, %if.then44.critedge141.if.end.i161_crit_edge
  %to.addr.0.i157 = phi ptr [ %add.ptr.i153, %zero_buffer.exit.i156 ], [ %15, %if.then44.critedge141.if.end.i161_crit_edge ]
  %n.addr.0.i158 = phi i32 [ %sub1.i154, %zero_buffer.exit.i156 ], [ %add33195, %if.then44.critedge141.if.end.i161_crit_edge ]
  %from.0.i159 = phi ptr [ %read_buf.i155, %zero_buffer.exit.i156 ], [ %arrayidx.i.i, %if.then44.critedge141.if.end.i161_crit_edge ]
  tail call void @tty_audit_add_data(ptr noundef %tty, ptr noundef %from.0.i159, i32 noundef %n.addr.0.i158) #9
  %36 = call ptr @memcpy(ptr %to.addr.0.i157, ptr %from.0.i159, i32 %n.addr.0.i158)
  %c_lflag.i24.i160 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %37 = ptrtoint ptr %c_lflag.i24.i160 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %c_lflag.i24.i160, align 4
  %39 = and i32 %38, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %if.then.i25.i162, label %if.end.i161.if.then44_crit_edge

if.end.i161.if.then44_crit_edge:                  ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.then.i25.i162:                                 ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #11
  %41 = call ptr @memset(ptr %from.0.i159, i32 0, i32 %n.addr.0.i158)
  br label %if.then44

if.then44:                                        ; preds = %if.then.i25.i162, %if.end.i161.if.then44_crit_edge, %if.then.i25.i, %if.end.i.if.then44_crit_edge
  %add33195.sink196 = phi i32 [ %spec.select192, %if.end.i.if.then44_crit_edge ], [ %spec.select192, %if.then.i25.i ], [ %add33195, %if.end.i161.if.then44_crit_edge ], [ %add33195, %if.then.i25.i162 ]
  %42 = ptrtoint ptr %kbp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %kbp, align 4
  %add.ptr.c142 = getelementptr i8, ptr %43, i32 %add33195.sink196
  store ptr %add.ptr.c142, ptr %kbp, align 4
  %44 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr, align 4
  %sub42.c143 = sub i32 %45, %add33195.sink196
  store i32 %sub42.c143, ptr %nr, align 4
  tail call void @_clear_bit(i32 noundef %eol.0191, ptr noundef %read_flags) #9
  br label %do.end55

do.end55.critedge:                                ; preds = %if.end26.do.end55.critedge_crit_edge, %if.then19.do.end55.critedge_crit_edge
  %add33194 = phi i32 [ %add33187, %if.then19.do.end55.critedge_crit_edge ], [ %add33, %if.end26.do.end55.critedge_crit_edge ]
  %46 = ptrtoint ptr %kbp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kbp, align 4
  %48 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %disc_data, align 4
  %sub.i165 = sub nuw nsw i32 4096, %and
  %arrayidx.i.i166 = getelementptr %struct.n_tty_data, ptr %49, i32 0, i32 11, i32 %and
  call void @__sanitizer_cov_trace_cmp4(i32 %add33194, i32 %sub.i165)
  %cmp.i167 = icmp ugt i32 %add33194, %sub.i165
  br i1 %cmp.i167, label %if.then.i169, label %do.end55.critedge.if.end.i179_crit_edge

do.end55.critedge.if.end.i179_crit_edge:          ; preds = %do.end55.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i179

if.then.i169:                                     ; preds = %do.end55.critedge
  tail call void @tty_audit_add_data(ptr noundef %tty, ptr noundef %arrayidx.i.i166, i32 noundef %sub.i165) #9
  %50 = call ptr @memcpy(ptr %47, ptr %arrayidx.i.i166, i32 %sub.i165)
  %c_lflag.i.i168 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %51 = ptrtoint ptr %c_lflag.i.i168 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %c_lflag.i.i168, align 4
  %53 = and i32 %52, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %if.then.i.i170, label %if.then.i169.zero_buffer.exit.i174_crit_edge

if.then.i169.zero_buffer.exit.i174_crit_edge:     ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %zero_buffer.exit.i174

if.then.i.i170:                                   ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_pc() #11
  %55 = call ptr @memset(ptr %arrayidx.i.i166, i32 0, i32 %sub.i165)
  br label %zero_buffer.exit.i174

zero_buffer.exit.i174:                            ; preds = %if.then.i.i170, %if.then.i169.zero_buffer.exit.i174_crit_edge
  %add.ptr.i171 = getelementptr i8, ptr %47, i32 %sub.i165
  %sub1.i172 = sub i32 %add33194, %sub.i165
  %read_buf.i173 = getelementptr inbounds %struct.n_tty_data, ptr %49, i32 0, i32 11
  br label %if.end.i179

if.end.i179:                                      ; preds = %zero_buffer.exit.i174, %do.end55.critedge.if.end.i179_crit_edge
  %to.addr.0.i175 = phi ptr [ %add.ptr.i171, %zero_buffer.exit.i174 ], [ %47, %do.end55.critedge.if.end.i179_crit_edge ]
  %n.addr.0.i176 = phi i32 [ %sub1.i172, %zero_buffer.exit.i174 ], [ %add33194, %do.end55.critedge.if.end.i179_crit_edge ]
  %from.0.i177 = phi ptr [ %read_buf.i173, %zero_buffer.exit.i174 ], [ %arrayidx.i.i166, %do.end55.critedge.if.end.i179_crit_edge ]
  tail call void @tty_audit_add_data(ptr noundef %tty, ptr noundef %from.0.i177, i32 noundef %n.addr.0.i176) #9
  %56 = call ptr @memcpy(ptr %to.addr.0.i175, ptr %from.0.i177, i32 %n.addr.0.i176)
  %c_lflag.i24.i178 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %57 = ptrtoint ptr %c_lflag.i24.i178 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %c_lflag.i24.i178, align 4
  %59 = and i32 %58, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %if.then.i25.i180, label %if.end.i179.tty_copy.exit181_crit_edge

if.end.i179.tty_copy.exit181_crit_edge:           ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_copy.exit181

if.then.i25.i180:                                 ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #11
  %61 = call ptr @memset(ptr %from.0.i177, i32 0, i32 %n.addr.0.i176)
  br label %tty_copy.exit181

tty_copy.exit181:                                 ; preds = %if.then.i25.i180, %if.end.i179.tty_copy.exit181_crit_edge
  %62 = ptrtoint ptr %kbp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %kbp, align 4
  %add.ptr.c144 = getelementptr i8, ptr %63, i32 %add33194
  store ptr %add.ptr.c144, ptr %kbp, align 4
  %64 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr, align 4
  %sub42.c145 = sub i32 %65, %add33194
  store i32 %sub42.c145, ptr %nr, align 4
  br label %do.end55

do.end55:                                         ; preds = %tty_copy.exit181, %if.then44
  %add33193 = phi i32 [ %add33194, %tty_copy.exit181 ], [ %add33195, %if.then44 ]
  %found.0.in188 = phi i1 [ false, %tty_copy.exit181 ], [ true, %if.then44 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  %66 = ptrtoint ptr %read_tail to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %read_tail, align 4
  %add62 = add i32 %67, %add33193
  store volatile i32 %add62, ptr %read_tail, align 4
  br i1 %found.0.in188, label %if.then73, label %if.end83

if.then73:                                        ; preds = %do.end55
  %push = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 10
  %68 = ptrtoint ptr %push to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load = load i8, ptr %push, align 1
  %69 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool74.not = icmp eq i8 %69, 0
  br i1 %tobool74.not, label %if.then75, label %if.else77

if.then75:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %line_start = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 15
  %70 = ptrtoint ptr %line_start to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add62, ptr %line_start, align 4
  br label %if.end81

if.else77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear80 = and i8 %bf.load, -5
  %71 = ptrtoint ptr %push to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %bf.clear80, ptr %push, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.else77, %if.then75
  %call82 = tail call i32 @tty_audit_push() #9
  br label %cleanup

if.end83:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %add62, i32 %5)
  %cmp85 = icmp ne i32 %add62, %5
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end81, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end81 ], [ %cmp85, %if.end83 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n_tty_check_unthrottle(ptr noundef %tty) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp = icmp eq i16 %3, 4
  br i1 %cmp, label %if.then, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %flow_change.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 23
  %disc_data.i22 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  br label %while.body

if.then:                                          ; preds = %entry
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %4 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disc_data.i, align 4
  %icanon.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %icanon.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %icanon.i, align 1
  %7 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %canon_head.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 2
  %commit_head.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 1
  %canon_head.sink.i = select i1 %tobool.not.i, ptr %commit_head.i, ptr %canon_head.i
  %8 = ptrtoint ptr %canon_head.sink.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %canon_head.sink.i, align 4
  %read_tail1.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 14
  %10 = ptrtoint ptr %read_tail1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_tail1.i, align 4
  %sub2.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub2.i)
  %cmp2 = icmp sgt i32 %sub2.i, 128
  br i1 %cmp2, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @n_tty_kick_worker(ptr noundef %tty)
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link, align 4
  tail call void @tty_wakeup(ptr noundef %13) #9
  br label %return

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.preheader
  %14 = ptrtoint ptr %flow_change.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %flow_change.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  %15 = ptrtoint ptr %disc_data.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disc_data.i22, align 4
  %icanon.i23 = getelementptr inbounds %struct.n_tty_data, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %icanon.i23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i24 = load i8, ptr %icanon.i23, align 1
  %18 = and i8 %bf.load.i24, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i25 = icmp eq i8 %18, 0
  %canon_head.i26 = getelementptr inbounds %struct.n_tty_data, ptr %16, i32 0, i32 2
  %commit_head.i27 = getelementptr inbounds %struct.n_tty_data, ptr %16, i32 0, i32 1
  %canon_head.sink.i28 = select i1 %tobool.not.i25, ptr %commit_head.i27, ptr %canon_head.i26
  %19 = ptrtoint ptr %canon_head.sink.i28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %canon_head.sink.i28, align 4
  %read_tail1.i29 = getelementptr inbounds %struct.n_tty_data, ptr %16, i32 0, i32 14
  %21 = ptrtoint ptr %read_tail1.i29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read_tail1.i29, align 4
  %sub2.i30 = sub i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub2.i30)
  %cmp7 = icmp sgt i32 %sub2.i30, 128
  br i1 %cmp7, label %while.body.while.end_crit_edge, label %if.end10

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end10:                                         ; preds = %while.body
  tail call fastcc void @n_tty_kick_worker(ptr noundef %tty)
  %call11 = tail call i32 @tty_unthrottle_safe(ptr noundef %tty) #9
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %while.body.while.end_crit_edge
  %23 = ptrtoint ptr %flow_change.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flow_change.i, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end, %if.then.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_hung_up_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_audit_push() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_audit_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_unthrottle_safe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @redirected_tty_write(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_check_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_check_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__process_echoes(ptr noundef %tty) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %call = tail call i32 @tty_write_room(ptr noundef %tty) #9
  %echo_tail = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %echo_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %echo_tail, align 4
  %echo_commit = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %echo_commit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %echo_commit, align 4
  %6 = xor i32 %5, %3
  %7 = and i32 %6, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not249 = icmp eq i32 %7, 0
  br i1 %cmp.not249, label %entry.while.end108_crit_edge, label %while.body.lr.ph

entry.while.end108_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end108

while.body.lr.ph:                                 ; preds = %entry
  %c_oflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %column65 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 16
  %canon_column49 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 17
  br label %while.body

while.body:                                       ; preds = %if.end107.while.body_crit_edge, %while.body.lr.ph
  %tail.0251 = phi i32 [ %3, %while.body.lr.ph ], [ %add45, %if.end107.while.body_crit_edge ]
  %space.0250 = phi i32 [ %call, %while.body.lr.ph ], [ %space.6, %if.end107.while.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  %and.i = and i32 %tail.0251, 4095
  %arrayidx.i = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 13, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp3 = icmp eq i8 %9, -1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = ptrtoint ptr %echo_commit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %echo_commit, align 4
  %add = add i32 %tail.0251, 1
  %12 = xor i32 %11, %add
  %13 = and i32 %12, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then.cleanup139_crit_edge, label %if.end

if.then.cleanup139_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup139

if.end:                                           ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  %and.i213 = and i32 %add, 4095
  %arrayidx.i214 = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 13, i32 %and.i213
  %14 = ptrtoint ptr %arrayidx.i214 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i214, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %15, label %sw.default [
    i8 -126, label %sw.bb
    i8 -127, label %sw.bb47
    i8 -128, label %sw.bb51
    i8 -1, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end
  %17 = ptrtoint ptr %echo_commit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %echo_commit, align 4
  %add16 = add i32 %tail.0251, 2
  %19 = xor i32 %18, %add16
  %20 = and i32 %19, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18 = icmp eq i32 %20, 0
  br i1 %cmp18, label %sw.bb.cleanup139_crit_edge, label %if.end21

sw.bb.cleanup139_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup139

if.end21:                                         ; preds = %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  %and.i215 = and i32 %add16, 4095
  %arrayidx.i216 = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 13, i32 %and.i215
  %21 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i216, align 1
  %conv24 = zext i8 %22 to i32
  %and25 = and i32 %conv24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not = icmp eq i32 %and25, 0
  br i1 %tobool.not, label %if.then26, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %canon_column49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %canon_column49, align 4
  %add27 = add i32 %24, %conv24
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21.if.end28_crit_edge
  %num_chars.0 = phi i32 [ %conv24, %if.end21.if.end28_crit_edge ], [ %add27, %if.then26 ]
  %and29 = and i32 %num_chars.0, 7
  %sub = sub nuw nsw i32 8, %and29
  call void @__sanitizer_cov_trace_cmp4(i32 %space.0250, i32 %sub)
  %cmp30 = icmp ult i32 %space.0250, %sub
  br i1 %cmp30, label %if.end28.while.end108_crit_edge, label %while.body37.preheader

if.end28.while.end108_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end108

while.body37.preheader:                           ; preds = %if.end28
  %sub34 = sub i32 %space.0250, %sub
  %call38 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext 8) #9
  %25 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %column65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp39.not = icmp eq i32 %26, 0
  br i1 %cmp39.not, label %while.body37.preheader.if.end44_crit_edge, label %if.then41

while.body37.preheader.if.end44_crit_edge:        ; preds = %while.body37.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %while.body37.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %dec43 = add i32 %26, -1
  %27 = ptrtoint ptr %column65 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dec43, ptr %column65, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %while.body37.preheader.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and29)
  %tobool36.not = icmp eq i32 %and29, 7
  br i1 %tobool36.not, label %if.end44.if.end107_crit_edge, label %while.body37.1

if.end44.if.end107_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

while.body37.1:                                   ; preds = %if.end44
  %call38.1 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext 8) #9
  %28 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %column65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp39.not.1 = icmp eq i32 %29, 0
  br i1 %cmp39.not.1, label %while.body37.1.if.end44.1_crit_edge, label %if.then41.1

while.body37.1.if.end44.1_crit_edge:              ; preds = %while.body37.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.1

if.then41.1:                                      ; preds = %while.body37.1
  call void @__sanitizer_cov_trace_pc() #11
  %dec43.1 = add i32 %29, -1
  %30 = ptrtoint ptr %column65 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %dec43.1, ptr %column65, align 4
  br label %if.end44.1

if.end44.1:                                       ; preds = %if.then41.1, %while.body37.1.if.end44.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and29)
  %tobool36.not.1 = icmp eq i32 %and29, 6
  br i1 %tobool36.not.1, label %if.end44.1.if.end107_crit_edge, label %while.body37.2

if.end44.1.if.end107_crit_edge:                   ; preds = %if.end44.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

while.body37.2:                                   ; preds = %if.end44.1
  %call38.2 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext 8) #9
  %31 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %column65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp39.not.2 = icmp eq i32 %32, 0
  br i1 %cmp39.not.2, label %while.body37.2.if.end44.2_crit_edge, label %if.then41.2

while.body37.2.if.end44.2_crit_edge:              ; preds = %while.body37.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.2

if.then41.2:                                      ; preds = %while.body37.2
  call void @__sanitizer_cov_trace_pc() #11
  %dec43.2 = add i32 %32, -1
  %33 = ptrtoint ptr %column65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dec43.2, ptr %column65, align 4
  br label %if.end44.2

if.end44.2:                                       ; preds = %if.then41.2, %while.body37.2.if.end44.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and29)
  %tobool36.not.2 = icmp eq i32 %and29, 5
  br i1 %tobool36.not.2, label %if.end44.2.if.end107_crit_edge, label %while.body37.3

if.end44.2.if.end107_crit_edge:                   ; preds = %if.end44.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

while.body37.3:                                   ; preds = %if.end44.2
  %call38.3 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext 8) #9
  %34 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %column65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp39.not.3 = icmp eq i32 %35, 0
  br i1 %cmp39.not.3, label %while.body37.3.if.end44.3_crit_edge, label %if.then41.3

while.body37.3.if.end44.3_crit_edge:              ; preds = %while.body37.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.3

if.then41.3:                                      ; preds = %while.body37.3
  call void @__sanitizer_cov_trace_pc() #11
  %dec43.3 = add i32 %35, -1
  %36 = ptrtoint ptr %column65 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dec43.3, ptr %column65, align 4
  br label %if.end44.3

if.end44.3:                                       ; preds = %if.then41.3, %while.body37.3.if.end44.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and29)
  %tobool36.not.3 = icmp eq i32 %and29, 4
  br i1 %tobool36.not.3, label %if.end44.3.if.end107_crit_edge, label %while.body37.4

if.end44.3.if.end107_crit_edge:                   ; preds = %if.end44.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

while.body37.4:                                   ; preds = %if.end44.3
  %call38.4 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext 8) #9
  %37 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %column65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp39.not.4 = icmp eq i32 %38, 0
  br i1 %cmp39.not.4, label %while.body37.4.if.end44.4_crit_edge, label %if.then41.4

while.body37.4.if.end44.4_crit_edge:              ; preds = %while.body37.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.4

if.then41.4:                                      ; preds = %while.body37.4
  call void @__sanitizer_cov_trace_pc() #11
  %dec43.4 = add i32 %38, -1
  %39 = ptrtoint ptr %column65 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %dec43.4, ptr %column65, align 4
  br label %if.end44.4

if.end44.4:                                       ; preds = %if.then41.4, %while.body37.4.if.end44.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and29)
  %tobool36.not.4 = icmp eq i32 %and29, 3
  br i1 %tobool36.not.4, label %if.end44.4.if.end107_crit_edge, label %while.body37.5

if.end44.4.if.end107_crit_edge:                   ; preds = %if.end44.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

while.body37.5:                                   ; preds = %if.end44.4
  %call38.5 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext 8) #9
  %40 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %column65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp39.not.5 = icmp eq i32 %41, 0
  br i1 %cmp39.not.5, label %while.body37.5.if.end44.5_crit_edge, label %if.then41.5

while.body37.5.if.end44.5_crit_edge:              ; preds = %while.body37.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.5

if.then41.5:                                      ; preds = %while.body37.5
  call void @__sanitizer_cov_trace_pc() #11
  %dec43.5 = add i32 %41, -1
  %42 = ptrtoint ptr %column65 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %dec43.5, ptr %column65, align 4
  br label %if.end44.5

if.end44.5:                                       ; preds = %if.then41.5, %while.body37.5.if.end44.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and29)
  %tobool36.not.5 = icmp eq i32 %and29, 2
  br i1 %tobool36.not.5, label %if.end44.5.if.end107_crit_edge, label %while.body37.6

if.end44.5.if.end107_crit_edge:                   ; preds = %if.end44.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

while.body37.6:                                   ; preds = %if.end44.5
  %call38.6 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext 8) #9
  %43 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %column65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp39.not.6 = icmp eq i32 %44, 0
  br i1 %cmp39.not.6, label %while.body37.6.if.end44.6_crit_edge, label %if.then41.6

while.body37.6.if.end44.6_crit_edge:              ; preds = %while.body37.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.6

if.then41.6:                                      ; preds = %while.body37.6
  call void @__sanitizer_cov_trace_pc() #11
  %dec43.6 = add i32 %44, -1
  %45 = ptrtoint ptr %column65 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %dec43.6, ptr %column65, align 4
  br label %if.end44.6

if.end44.6:                                       ; preds = %if.then41.6, %while.body37.6.if.end44.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and29)
  %tobool36.not.6 = icmp eq i32 %and29, 1
  br i1 %tobool36.not.6, label %if.end44.6.if.end107_crit_edge, label %while.body37.7

if.end44.6.if.end107_crit_edge:                   ; preds = %if.end44.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

while.body37.7:                                   ; preds = %if.end44.6
  %call38.7 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext 8) #9
  %46 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %column65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp39.not.7 = icmp eq i32 %47, 0
  br i1 %cmp39.not.7, label %while.body37.7.if.end107_crit_edge, label %if.then41.7

while.body37.7.if.end107_crit_edge:               ; preds = %while.body37.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then41.7:                                      ; preds = %while.body37.7
  call void @__sanitizer_cov_trace_pc() #11
  %dec43.7 = add i32 %47, -1
  %48 = ptrtoint ptr %column65 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %dec43.7, ptr %column65, align 4
  br label %if.end107

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %column65, align 4
  %51 = ptrtoint ptr %canon_column49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %canon_column49, align 4
  br label %if.end107

sw.bb51:                                          ; preds = %if.end
  %52 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %column65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp53.not = icmp eq i32 %53, 0
  br i1 %cmp53.not, label %sw.bb51.if.end107_crit_edge, label %if.then55

sw.bb51.if.end107_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then55:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  %dec57 = add i32 %53, -1
  %54 = ptrtoint ptr %column65 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %dec57, ptr %column65, align 4
  br label %if.end107

sw.bb60:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %space.0250)
  %tobool61.not = icmp eq i32 %space.0250, 0
  br i1 %tobool61.not, label %sw.bb60.while.end108_crit_edge, label %if.end63

sw.bb60.while.end108_crit_edge:                   ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end108

if.end63:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext -1) #9
  %55 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %column65, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %column65, align 4
  %dec66 = add i32 %space.0250, -1
  br label %if.end107

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %space.0250)
  %cmp68 = icmp slt i32 %space.0250, 2
  br i1 %cmp68, label %sw.default.while.end108_crit_edge, label %if.end71

sw.default.while.end108_crit_edge:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end108

if.end71:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %call72 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext 94) #9
  %57 = xor i8 %15, 64
  %call75 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext %57) #9
  %58 = ptrtoint ptr %column65 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %column65, align 4
  %add77 = add i32 %59, 2
  store i32 %add77, ptr %column65, align 4
  %sub78 = add nsw i32 %space.0250, -2
  br label %if.end107

if.else:                                          ; preds = %while.body
  %60 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %c_oflag, align 4
  %and86 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else99, label %if.then88

if.then88:                                        ; preds = %if.else
  %call90 = tail call fastcc i32 @do_output_char(i8 noundef zeroext %9, ptr noundef %tty, i32 noundef %space.0250)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  %sub95 = sub i32 %space.0250, %call90
  br i1 %cmp91, label %if.then88.while.end108_crit_edge, label %if.then88.if.end107_crit_edge

if.then88.if.end107_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then88.while.end108_crit_edge:                 ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end108

if.else99:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %space.0250)
  %tobool100.not = icmp eq i32 %space.0250, 0
  br i1 %tobool100.not, label %if.else99.while.end108_crit_edge, label %if.end102

if.else99.while.end108_crit_edge:                 ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end108

if.end102:                                        ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #11
  %call103 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext %9) #9
  %sub104 = add i32 %space.0250, -1
  br label %if.end107

if.end107:                                        ; preds = %if.end102, %if.then88.if.end107_crit_edge, %if.end71, %if.end63, %if.then55, %sw.bb51.if.end107_crit_edge, %sw.bb47, %if.then41.7, %while.body37.7.if.end107_crit_edge, %if.end44.6.if.end107_crit_edge, %if.end44.5.if.end107_crit_edge, %if.end44.4.if.end107_crit_edge, %if.end44.3.if.end107_crit_edge, %if.end44.2.if.end107_crit_edge, %if.end44.1.if.end107_crit_edge, %if.end44.if.end107_crit_edge
  %.sink = phi i32 [ 2, %sw.bb47 ], [ 2, %if.end63 ], [ 2, %if.end71 ], [ 2, %if.then55 ], [ 2, %sw.bb51.if.end107_crit_edge ], [ 1, %if.then88.if.end107_crit_edge ], [ 1, %if.end102 ], [ 3, %while.body37.7.if.end107_crit_edge ], [ 3, %if.then41.7 ], [ 3, %if.end44.6.if.end107_crit_edge ], [ 3, %if.end44.5.if.end107_crit_edge ], [ 3, %if.end44.4.if.end107_crit_edge ], [ 3, %if.end44.3.if.end107_crit_edge ], [ 3, %if.end44.2.if.end107_crit_edge ], [ 3, %if.end44.1.if.end107_crit_edge ], [ 3, %if.end44.if.end107_crit_edge ]
  %space.6 = phi i32 [ %space.0250, %sw.bb47 ], [ %dec66, %if.end63 ], [ %sub78, %if.end71 ], [ %space.0250, %if.then55 ], [ %space.0250, %sw.bb51.if.end107_crit_edge ], [ %sub95, %if.then88.if.end107_crit_edge ], [ %sub104, %if.end102 ], [ %sub34, %while.body37.7.if.end107_crit_edge ], [ %sub34, %if.then41.7 ], [ %sub34, %if.end44.6.if.end107_crit_edge ], [ %sub34, %if.end44.5.if.end107_crit_edge ], [ %sub34, %if.end44.4.if.end107_crit_edge ], [ %sub34, %if.end44.3.if.end107_crit_edge ], [ %sub34, %if.end44.2.if.end107_crit_edge ], [ %sub34, %if.end44.1.if.end107_crit_edge ], [ %sub34, %if.end44.if.end107_crit_edge ]
  %add45 = add i32 %tail.0251, %.sink
  %62 = ptrtoint ptr %echo_commit to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %echo_commit, align 4
  %64 = xor i32 %63, %add45
  %65 = and i32 %64, 4095
  %cmp.not = icmp eq i32 %65, 0
  br i1 %cmp.not, label %if.end107.while.end108_crit_edge, label %if.end107.while.body_crit_edge

if.end107.while.body_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end107.while.end108_crit_edge:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end108

while.end108:                                     ; preds = %if.end107.while.end108_crit_edge, %if.else99.while.end108_crit_edge, %if.then88.while.end108_crit_edge, %sw.default.while.end108_crit_edge, %sw.bb60.while.end108_crit_edge, %if.end28.while.end108_crit_edge, %entry.while.end108_crit_edge
  %tail.0.lcssa = phi i32 [ %3, %entry.while.end108_crit_edge ], [ %tail.0251, %if.end28.while.end108_crit_edge ], [ %tail.0251, %sw.bb60.while.end108_crit_edge ], [ %tail.0251, %sw.default.while.end108_crit_edge ], [ %tail.0251, %if.then88.while.end108_crit_edge ], [ %tail.0251, %if.else99.while.end108_crit_edge ], [ %add45, %if.end107.while.end108_crit_edge ]
  %space.7 = phi i32 [ %call, %entry.while.end108_crit_edge ], [ %space.0250, %if.end28.while.end108_crit_edge ], [ 0, %sw.bb60.while.end108_crit_edge ], [ %space.0250, %sw.default.while.end108_crit_edge ], [ %space.0250, %if.then88.while.end108_crit_edge ], [ 0, %if.else99.while.end108_crit_edge ], [ %space.6, %if.end107.while.end108_crit_edge ]
  %66 = ptrtoint ptr %echo_commit to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %echo_commit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %tail.0.lcssa)
  %cmp111270 = icmp ugt i32 %67, %tail.0.lcssa
  %sub114271 = sub i32 %67, %tail.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 3807, i32 %sub114271)
  %cmp115272 = icmp ugt i32 %sub114271, 3807
  %or.cond273 = and i1 %cmp111270, %cmp115272
  br i1 %or.cond273, label %while.end108.while.body117_crit_edge, label %while.end108.cleanup139_crit_edge

while.end108.cleanup139_crit_edge:                ; preds = %while.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup139

while.end108.while.body117_crit_edge:             ; preds = %while.end108
  br label %while.body117

while.body117:                                    ; preds = %if.end135.while.body117_crit_edge, %while.end108.while.body117_crit_edge
  %tail.6274 = phi i32 [ %tail.7, %if.end135.while.body117_crit_edge ], [ %tail.0.lcssa, %while.end108.while.body117_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  %and.i217 = and i32 %tail.6274, 4095
  %arrayidx.i218 = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 13, i32 %and.i217
  %68 = ptrtoint ptr %arrayidx.i218 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i218, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp120 = icmp eq i8 %69, -1
  %add123 = add nuw i32 %tail.6274, 1
  br i1 %cmp120, label %if.then122, label %while.body117.if.end135_crit_edge

while.body117.if.end135_crit_edge:                ; preds = %while.body117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then122:                                       ; preds = %while.body117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  %and.i219 = and i32 %add123, 4095
  %arrayidx.i220 = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 13, i32 %and.i219
  %70 = ptrtoint ptr %arrayidx.i220 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i220, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %71)
  %cmp126 = icmp eq i8 %71, -126
  br i1 %cmp126, label %if.then128, label %if.else130

if.then128:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  %add129 = add i32 %tail.6274, 3
  br label %if.end135

if.else130:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  %add131 = add i32 %tail.6274, 2
  br label %if.end135

if.end135:                                        ; preds = %if.else130, %if.then128, %while.body117.if.end135_crit_edge
  %tail.7 = phi i32 [ %add129, %if.then128 ], [ %add131, %if.else130 ], [ %add123, %while.body117.if.end135_crit_edge ]
  %72 = ptrtoint ptr %echo_commit to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %echo_commit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %tail.7)
  %cmp111 = icmp ugt i32 %73, %tail.7
  %sub114 = sub i32 %73, %tail.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3807, i32 %sub114)
  %cmp115 = icmp ugt i32 %sub114, 3807
  %or.cond = and i1 %cmp111, %cmp115
  br i1 %or.cond, label %if.end135.while.body117_crit_edge, label %if.end135.cleanup139_crit_edge

if.end135.cleanup139_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup139

if.end135.while.body117_crit_edge:                ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body117

cleanup139:                                       ; preds = %if.end135.cleanup139_crit_edge, %while.end108.cleanup139_crit_edge, %sw.bb.cleanup139_crit_edge, %if.then.cleanup139_crit_edge
  %space.8 = phi i32 [ %space.7, %while.end108.cleanup139_crit_edge ], [ %space.7, %if.end135.cleanup139_crit_edge ], [ %space.0250, %if.then.cleanup139_crit_edge ], [ %space.0250, %sw.bb.cleanup139_crit_edge ]
  %tail.8 = phi i32 [ %tail.0.lcssa, %while.end108.cleanup139_crit_edge ], [ %tail.7, %if.end135.cleanup139_crit_edge ], [ %tail.0251, %if.then.cleanup139_crit_edge ], [ %tail.0251, %sw.bb.cleanup139_crit_edge ]
  %74 = ptrtoint ptr %echo_tail to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %tail.8, ptr %echo_tail, align 4
  %sub138 = sub i32 %call, %space.8
  ret i32 %sub138
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_write_room(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_put_char(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_output_char(i8 noundef zeroext %c, ptr noundef %tty, i32 noundef %space) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %space)
  %tobool.not = icmp eq i32 %space, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i8 %c to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %c, label %sw.default [
    i8 10, label %sw.bb
    i8 13, label %sw.bb16
    i8 9, label %sw.bb42
    i8 8, label %sw.bb62
  ]

sw.bb:                                            ; preds = %if.end
  %c_oflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %c_oflag, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %sw.bb.if.end3_crit_edge, label %if.then2

sw.bb.if.end3_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %column = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %column to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %column, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %sw.bb.if.end3_crit_edge
  %6 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_oflag, align 4
  %and6 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %space)
  %cmp = icmp slt i32 %space, 2
  br i1 %cmp, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %column12 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %column12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %column12, align 4
  %canon_column = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %canon_column to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %canon_column, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %call = tail call i32 %13(ptr noundef %tty, ptr noundef nonnull @.str.9, i32 noundef 2) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %column14 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %column14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %column14, align 4
  %canon_column15 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %canon_column15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %canon_column15, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %c_oflag18 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %c_oflag18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_oflag18, align 4
  %and19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %sw.bb16.if.end25_crit_edge, label %land.lhs.true

sw.bb16.if.end25_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %sw.bb16
  %column21 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %column21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %column21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp22 = icmp eq i32 %20, 0
  br i1 %cmp22, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %sw.bb16.if.end25_crit_edge
  %and28 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end39, label %if.then30

if.then30:                                        ; preds = %if.end25
  %and33 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then30.sw.epilog_crit_edge, label %if.then35

if.then30.sw.epilog_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %column36 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %column36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %column36, align 4
  %canon_column37 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %canon_column37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %canon_column37, align 4
  br label %sw.epilog

if.end39:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %column40 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 16
  %23 = ptrtoint ptr %column40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %column40, align 4
  %canon_column41 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %canon_column41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %canon_column41, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end
  %column43 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %column43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %column43, align 4
  %and44 = and i32 %26, 7
  %sub = sub nuw nsw i32 8, %and44
  %c_oflag46 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %27 = ptrtoint ptr %c_oflag46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %c_oflag46, align 4
  %and47 = and i32 %28, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %and47)
  %cmp48 = icmp eq i32 %and47, 6144
  br i1 %cmp48, label %if.then50, label %if.end59

if.then50:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %space)
  %cmp51 = icmp sgt i32 %sub, %space
  br i1 %cmp51, label %if.then50.cleanup_crit_edge, label %if.end54

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end54:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %sub, %26
  %29 = ptrtoint ptr %column43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %column43, align 4
  %ops56 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %30 = ptrtoint ptr %ops56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops56, align 4
  %write57 = getelementptr inbounds %struct.tty_operations, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %write57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write57, align 4
  %call58 = tail call i32 %33(ptr noundef %tty, ptr noundef nonnull @.str.10, i32 noundef %sub) #9
  br label %cleanup

if.end59:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  %add61 = add i32 %sub, %26
  %34 = ptrtoint ptr %column43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add61, ptr %column43, align 4
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end
  %column63 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 16
  %35 = ptrtoint ptr %column63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %column63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp64.not = icmp eq i32 %36, 0
  br i1 %cmp64.not, label %sw.bb62.sw.epilog_crit_edge, label %if.then66

sw.bb62.sw.epilog_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then66:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %36, -1
  %37 = ptrtoint ptr %column63 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %dec, ptr %column63, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %conv = zext i8 %c to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %40 = and i8 %39, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp72.not = icmp eq i8 %40, 0
  br i1 %cmp72.not, label %if.then74, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then74:                                        ; preds = %sw.default
  %c_oflag76 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %41 = ptrtoint ptr %c_oflag76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %c_oflag76, align 4
  %and77 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %43 = and i8 %39, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp.not.i = icmp eq i8 %43, 0
  %sub.i = add i8 %c, -32
  %44 = select i1 %tobool78.not, i1 true, i1 %cmp.not.i
  %c.addr.0 = select i1 %44, i8 %c, i8 %sub.i
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %45 = ptrtoint ptr %termios.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %termios.i, align 4
  %and.i = and i32 %46, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %47 = and i8 %c.addr.0, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %47)
  %cmp.i.i = icmp ne i8 %47, -128
  %tobool83.not = or i1 %tobool.not.i, %cmp.i.i
  br i1 %tobool83.not, label %if.then84, label %if.then74.sw.epilog_crit_edge

if.then74.sw.epilog_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then84:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  %column85 = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 16
  %48 = ptrtoint ptr %column85 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %column85, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %column85, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then84, %if.then74.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %if.then66, %sw.bb62.sw.epilog_crit_edge, %if.end59, %if.end39, %if.then35, %if.then30.sw.epilog_crit_edge, %if.end13
  %c.addr.1 = phi i8 [ %c, %sw.default.sw.epilog_crit_edge ], [ %c.addr.0, %if.then74.sw.epilog_crit_edge ], [ %c.addr.0, %if.then84 ], [ 8, %if.then66 ], [ 8, %sw.bb62.sw.epilog_crit_edge ], [ 9, %if.end59 ], [ 10, %if.then35 ], [ 10, %if.then30.sw.epilog_crit_edge ], [ 13, %if.end39 ], [ 10, %if.end13 ]
  %call88 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext %c.addr.1) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end54, %if.then50.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end11, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ %sub, %if.end54 ], [ 2, %if.end11 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then8.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.then50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_chars_in_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @n_tty_ioctl_helper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_tty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @n_tty_receive_buf_common(ptr noundef %tty, ptr nocapture noundef readonly %cp, ptr noundef readonly %fp, i32 noundef %count, i32 noundef %flow) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @down_read(ptr noundef %termios_rwsem) #9
  %read_tail = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 14
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %icanon = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 10
  %canon_head = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flow)
  %tobool18.not = icmp ne i32 %flow, 0
  %no_room = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 9
  %c_lflag.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %closing.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 33
  %c_cc.i.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5
  %arrayidx.i.i101.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %arrayidx25.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %stopped.i.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %tco_stopped.i.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 2
  %arrayidx51.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 1
  %arrayidx59.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 10
  %ops.i.i.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %arrayidx97.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 2
  %arrayidx104.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 3
  %arrayidx112.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 14
  %arrayidx126.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 15
  %arrayidx154.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 12
  %arrayidx193.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 4
  %arrayidx202.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 11
  %arrayidx210.i.i.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 16
  %fasync.i.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 25
  %read_wait.i.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 27
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %do.cond44.do.body_crit_edge, %entry
  %rcvd.0 = phi i32 [ 0, %entry ], [ %add43, %do.cond44.do.body_crit_edge ]
  %count.addr.0 = phi i32 [ %count, %entry ], [ %sub42, %do.cond44.do.body_crit_edge ]
  %fp.addr.0 = phi ptr [ %fp, %entry ], [ %spec.select105, %do.cond44.do.body_crit_edge ]
  %cp.addr.0 = phi ptr [ %cp, %entry ], [ %add.ptr, %do.cond44.do.body_crit_edge ]
  %2 = ptrtoint ptr %read_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %read_tail, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub.neg = sub i32 %3, %5
  %sub6 = add i32 %sub.neg, 4096
  %6 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %termios, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = add i32 %sub.neg, 4098
  %div = sdiv i32 %add, 3
  %room.0 = select i1 %tobool.not, i32 %sub6, i32 %div
  %dec = add i32 %room.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp = icmp slt i32 %dec, 1
  br i1 %cmp, label %if.then7, label %do.body.if.end23_crit_edge

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then7:                                         ; preds = %do.body
  %8 = ptrtoint ptr %icanon to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %icanon, align 1
  %9 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.then7.if.end17_crit_edge, label %land.end

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.end:                                         ; preds = %if.then7
  %10 = ptrtoint ptr %canon_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %canon_head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp9 = icmp eq i32 %11, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp12 = icmp slt i32 %dec, 0
  %or.cond = select i1 %cmp9, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then14, label %land.end.if.end17_crit_edge

land.end.if.end17_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %dec16 = add i32 %5, -1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec16, ptr %1, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.end.if.end17_crit_edge, %if.then7.if.end17_crit_edge
  %13 = phi i1 [ true, %if.then14 ], [ %cmp9, %land.end.if.end17_crit_edge ], [ false, %if.then7.if.end17_crit_edge ]
  %land.ext171 = zext i1 %13 to i32
  %lnot = xor i1 %13, true
  %spec.select = select i1 %tobool18.not, i1 %lnot, i1 false
  %frombool = zext i1 %spec.select to i8
  %14 = ptrtoint ptr %no_room to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %no_room, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end17, %do.body.if.end23_crit_edge
  %room.1 = phi i32 [ %land.ext171, %if.end17 ], [ %dec, %do.body.if.end23_crit_edge ]
  %overflow.0 = phi i32 [ %land.ext171, %if.end17 ], [ 0, %do.body.if.end23_crit_edge ]
  %15 = tail call i32 @llvm.smin.i32(i32 %count.addr.0, i32 %room.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not = icmp eq i32 %15, 0
  br i1 %tobool27.not, label %if.end23.do.end47_crit_edge, label %if.end29

if.end23.do.end47_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overflow.0)
  %tobool30.not = icmp eq i32 %overflow.0, 0
  %tobool31.not = icmp eq ptr %fp.addr.0, null
  %or.cond104 = select i1 %tobool30.not, i1 true, i1 %tobool31.not
  br i1 %or.cond104, label %if.end29.if.then36_crit_edge, label %lor.lhs.false32

if.end29.if.then36_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false32:                                  ; preds = %if.end29
  %16 = ptrtoint ptr %fp.addr.0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fp.addr.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp34.not = icmp eq i8 %17, 3
  br i1 %cmp34.not, label %lor.lhs.false32.do.cond44_crit_edge, label %lor.lhs.false32.if.then36_crit_edge

lor.lhs.false32.if.then36_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false32.do.cond44_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond44

if.then36:                                        ; preds = %lor.lhs.false32.if.then36_crit_edge, %if.end29.if.then36_crit_edge
  %18 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disc_data, align 4
  %20 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %termios, align 4
  %and.i = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.then36.lor.end.i_crit_edge

if.then36.lor.end.i_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.then36
  %and3.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %lor.rhs.i.lor.end.i_crit_edge, label %land.rhs.i

lor.rhs.i.lor.end.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_lflag.i, align 4
  %and6.i = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.i = icmp ne i32 %and6.i, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %land.rhs.i, %lor.rhs.i.lor.end.i_crit_edge, %if.then36.lor.end.i_crit_edge
  %24 = phi i1 [ true, %if.then36.lor.end.i_crit_edge ], [ false, %lor.rhs.i.lor.end.i_crit_edge ], [ %tobool7.i, %land.rhs.i ]
  %real_raw.i = getelementptr inbounds %struct.n_tty_data, ptr %19, i32 0, i32 10
  %25 = ptrtoint ptr %real_raw.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %real_raw.i, align 1
  %26 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool8.not.i = icmp eq i8 %26, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %19, align 4
  %and.i.i = and i32 %28, 4095
  %sub.i.i = sub nuw nsw i32 4096, %and.i.i
  %29 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %15) #9
  %arrayidx.i.i.i = getelementptr %struct.n_tty_data, ptr %19, i32 0, i32 11, i32 %and.i.i
  %30 = call ptr @memcpy(ptr %arrayidx.i.i.i, ptr %cp.addr.0, i32 %29)
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %19, align 4
  %add.i.i = add i32 %29, %32
  store i32 %add.i.i, ptr %19, align 4
  %sub2.i.i = sub i32 %15, %29
  %and4.i.i = and i32 %add.i.i, 4095
  %sub5.i.i = sub nuw nsw i32 4096, %and4.i.i
  %33 = tail call i32 @llvm.umin.i32(i32 %sub2.i.i, i32 %sub5.i.i) #9
  %add.ptr.i.i = getelementptr i8, ptr %cp.addr.0, i32 %29
  %arrayidx.i1.i.i = getelementptr %struct.n_tty_data, ptr %19, i32 0, i32 11, i32 %and4.i.i
  %34 = call ptr @memcpy(ptr %arrayidx.i1.i.i, ptr %add.ptr.i.i, i32 %33)
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %19, align 4
  %add14.i.i = add i32 %33, %36
  store i32 %add14.i.i, ptr %19, align 4
  br label %if.end34.i

if.else.i:                                        ; preds = %lor.end.i
  %37 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool12.not.i = icmp eq i8 %37, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i, label %if.else.i.while.body.i.i.preheader_crit_edge

if.else.i.while.body.i.i.preheader_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.preheader

lor.lhs.false.i:                                  ; preds = %if.else.i
  %38 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %c_lflag.i, align 4
  %and15.i = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %brmerge.i = select i1 %tobool16.not.i, i1 true, i1 %24
  br i1 %brmerge.i, label %if.else19.i, label %lor.lhs.false.i.while.body.i.i.preheader_crit_edge

lor.lhs.false.i.while.body.i.i.preheader_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %lor.lhs.false.i.while.body.i.i.preheader_crit_edge, %if.else.i.while.body.i.i.preheader_crit_edge
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end8.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %dec18.in.i.i = phi i32 [ %dec18.i.i, %if.end8.i.i.while.body.i.i_crit_edge ], [ %15, %while.body.i.i.preheader ]
  %flag.017.i.i = phi i8 [ %flag.1.i.i, %if.end8.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.i.preheader ]
  %fp.addr.016.i.i = phi ptr [ %fp.addr.1.i.i, %if.end8.i.i.while.body.i.i_crit_edge ], [ %fp.addr.0, %while.body.i.i.preheader ]
  %cp.addr.015.i.i = phi ptr [ %cp.addr.1.i.i, %if.end8.i.i.while.body.i.i_crit_edge ], [ %cp.addr.0, %while.body.i.i.preheader ]
  %dec18.i.i = add i32 %dec18.in.i.i, -1
  %tobool1.not.i.i = icmp eq ptr %fp.addr.016.i.i, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i.i = getelementptr i8, ptr %fp.addr.016.i.i, i32 1
  %40 = ptrtoint ptr %fp.addr.016.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fp.addr.016.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %fp.addr.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.then.i.i ], [ null, %while.body.i.i.if.end.i.i_crit_edge ]
  %flag.1.i.i = phi i8 [ %41, %if.then.i.i ], [ %flag.017.i.i, %while.body.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.1.i.i)
  %cmp.i.i = icmp eq i8 %flag.1.i.i, 0
  %42 = ptrtoint ptr %cp.addr.015.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cp.addr.015.i.i, align 1
  br i1 %cmp.i.i, label %if.then5.i.i, label %if.else.i.i, !prof !48

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %45, 4095
  %arrayidx.i.i.i.i = getelementptr %struct.n_tty_data, ptr %19, i32 0, i32 11, i32 %and.i.i.i.i
  %46 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %43, ptr %arrayidx.i.i.i.i, align 1
  %inc.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i, ptr %19, align 4
  br label %if.end8.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @n_tty_receive_char_flagged(ptr noundef %tty, i8 noundef zeroext %43, i8 noundef zeroext %flag.1.i.i) #9
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else.i.i, %if.then5.i.i
  %cp.addr.1.i.i = getelementptr i8, ptr %cp.addr.015.i.i, i32 1
  %tobool.not.i.i = icmp eq i32 %dec18.i.i, 0
  br i1 %tobool.not.i.i, label %if.end8.i.i.if.end34.i_crit_edge, label %if.end8.i.i.while.body.i.i_crit_edge

if.end8.i.i.while.body.i.i_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end8.i.i.if.end34.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.else19.i:                                      ; preds = %lor.lhs.false.i
  %47 = ptrtoint ptr %closing.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %closing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool20.not.i = icmp eq i32 %48, 0
  %tobool16.not.not.i = xor i1 %tobool16.not.i, true
  %brmerge165.i = select i1 %tobool20.not.i, i1 true, i1 %tobool16.not.not.i
  br i1 %brmerge165.i, label %while.body.lr.ph.i120.i, label %if.else19.i.while.body.i103.i_crit_edge

if.else19.i.while.body.i103.i_crit_edge:          ; preds = %if.else19.i
  br label %while.body.i103.i

while.body.i103.i:                                ; preds = %if.end7.i.i.while.body.i103.i_crit_edge, %if.else19.i.while.body.i103.i_crit_edge
  %dec14.in.i.i = phi i32 [ %dec14.i.i, %if.end7.i.i.while.body.i103.i_crit_edge ], [ %15, %if.else19.i.while.body.i103.i_crit_edge ]
  %flag.013.i.i = phi i8 [ %flag.1.i107.i, %if.end7.i.i.while.body.i103.i_crit_edge ], [ 0, %if.else19.i.while.body.i103.i_crit_edge ]
  %fp.addr.012.i.i = phi ptr [ %fp.addr.1.i106.i, %if.end7.i.i.while.body.i103.i_crit_edge ], [ %fp.addr.0, %if.else19.i.while.body.i103.i_crit_edge ]
  %cp.addr.011.i.i = phi ptr [ %cp.addr.1.i112.i, %if.end7.i.i.while.body.i103.i_crit_edge ], [ %cp.addr.0, %if.else19.i.while.body.i103.i_crit_edge ]
  %dec14.i.i = add i32 %dec14.in.i.i, -1
  %tobool1.not.i102.i = icmp eq ptr %fp.addr.012.i.i, null
  br i1 %tobool1.not.i102.i, label %while.body.i103.i.if.end.i109.i_crit_edge, label %if.then.i105.i

while.body.i103.i.if.end.i109.i_crit_edge:        ; preds = %while.body.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i109.i

if.then.i105.i:                                   ; preds = %while.body.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i104.i = getelementptr i8, ptr %fp.addr.012.i.i, i32 1
  %49 = ptrtoint ptr %fp.addr.012.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fp.addr.012.i.i, align 1
  br label %if.end.i109.i

if.end.i109.i:                                    ; preds = %if.then.i105.i, %while.body.i103.i.if.end.i109.i_crit_edge
  %fp.addr.1.i106.i = phi ptr [ %incdec.ptr.i104.i, %if.then.i105.i ], [ null, %while.body.i103.i.if.end.i109.i_crit_edge ]
  %flag.1.i107.i = phi i8 [ %50, %if.then.i105.i ], [ %flag.013.i.i, %while.body.i103.i.if.end.i109.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.1.i107.i)
  %cmp.i108.i = icmp eq i8 %flag.1.i107.i, 0
  br i1 %cmp.i108.i, label %if.then5.i110.i, label %if.end.i109.i.if.end7.i.i_crit_edge, !prof !48

if.end.i109.i.if.end7.i.i_crit_edge:              ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then5.i110.i:                                  ; preds = %if.end.i109.i
  %incdec.ptr6.i.i = getelementptr i8, ptr %cp.addr.011.i.i, i32 1
  %51 = ptrtoint ptr %cp.addr.011.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cp.addr.011.i.i, align 1
  %53 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %termios, align 4
  %and.i.i.i = and i32 %54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %55 = and i8 %52, 127
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i8 %52, i8 %55
  %and5.i.i.i = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.then5.i110.i.if.end11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then5.i110.i.if.end11.i.i.i_crit_edge:         ; preds = %if.then5.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then5.i110.i
  %56 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %c_lflag.i, align 4
  %and8.i.i.i = and i32 %57, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge, label %if.then10.i.i.i

land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i.i

if.then10.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i8 %spec.select.i.i.i to i32
  %arrayidx.i.i.i111.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i.i
  %58 = ptrtoint ptr %arrayidx.i.i.i111.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i.i111.i, align 1
  %60 = and i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp.not.i.i.i.i = icmp eq i8 %60, 0
  %sub.i.i.i.i = add i8 %spec.select.i.i.i, 32
  %spec.select.i.i.i.i = select i1 %cmp.not.i.i.i.i, i8 %spec.select.i.i.i, i8 %sub.i.i.i.i
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge, %if.then5.i110.i.if.end11.i.i.i_crit_edge
  %c.addr.1.i.i.i = phi i8 [ %spec.select.i.i.i.i, %if.then10.i.i.i ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then5.i110.i.if.end11.i.i.i_crit_edge ]
  %and14.i.i.i = and i32 %54, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %and14.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %if.end11.i.i.i.if.end7.i.i_crit_edge, label %if.then16.i.i.i

if.end11.i.i.i.if.end7.i.i_crit_edge:             ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then16.i.i.i:                                  ; preds = %if.end11.i.i.i
  %61 = ptrtoint ptr %arrayidx.i.i101.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i.i101.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.1.i.i.i, i8 %62)
  %cmp.i.i.i = icmp eq i8 %c.addr.1.i.i.i, %62
  br i1 %cmp.i.i.i, label %if.then21.i.i.i, label %if.else.i.i.i

if.then21.i.i.i:                                  ; preds = %if.then16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @stop_tty(ptr noundef %tty) #9
  br label %if.end7.i.i

if.else.i.i.i:                                    ; preds = %if.then16.i.i.i
  %63 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx25.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.1.i.i.i, i8 %64)
  %cmp27.i.i.i = icmp eq i8 %c.addr.1.i.i.i, %64
  br i1 %cmp27.i.i.i, label %if.else.i.i.i.if.then63.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.else.i.i.i.if.then63.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.else.i.i.i
  %65 = ptrtoint ptr %stopped.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %stopped.i.i.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool29.not.i.i.i = icmp eq i8 %66, 0
  br i1 %tobool29.not.i.i.i, label %lor.lhs.false.i.i.i.if.end7.i.i_crit_edge, label %land.lhs.true31.i.i.i

lor.lhs.false.i.i.i.if.end7.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

land.lhs.true31.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %67 = ptrtoint ptr %tco_stopped.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tco_stopped.i.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool33.not.i.i.i = icmp ne i8 %68, 0
  %and37.i.i.i = and i32 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i.i)
  %tobool38.not.i.i.i = icmp eq i32 %and37.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool33.not.i.i.i, i1 true, i1 %tobool38.not.i.i.i
  br i1 %or.cond.i.i.i, label %land.lhs.true31.i.i.i.if.end7.i.i_crit_edge, label %land.lhs.true39.i.i.i

land.lhs.true31.i.i.i.if.end7.i.i_crit_edge:      ; preds = %land.lhs.true31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

land.lhs.true39.i.i.i:                            ; preds = %land.lhs.true31.i.i.i
  %69 = ptrtoint ptr %c_cc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %c_cc.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.1.i.i.i, i8 %70)
  %cmp45.not.i.i.i = icmp eq i8 %c.addr.1.i.i.i, %70
  br i1 %cmp45.not.i.i.i, label %land.lhs.true39.i.i.i.if.end7.i.i_crit_edge, label %land.lhs.true47.i.i.i

land.lhs.true39.i.i.i.if.end7.i.i_crit_edge:      ; preds = %land.lhs.true39.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

land.lhs.true47.i.i.i:                            ; preds = %land.lhs.true39.i.i.i
  %71 = ptrtoint ptr %arrayidx51.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx51.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.1.i.i.i, i8 %72)
  %cmp53.not.i.i.i = icmp eq i8 %c.addr.1.i.i.i, %72
  br i1 %cmp53.not.i.i.i, label %land.lhs.true47.i.i.i.if.end7.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true47.i.i.i.if.end7.i.i_crit_edge:      ; preds = %land.lhs.true47.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true47.i.i.i
  %73 = ptrtoint ptr %arrayidx59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx59.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.1.i.i.i, i8 %74)
  %cmp61.not.i.i.i = icmp eq i8 %c.addr.1.i.i.i, %74
  br i1 %cmp61.not.i.i.i, label %land.lhs.true55.i.i.i.if.end7.i.i_crit_edge, label %land.lhs.true55.i.i.i.if.then63.i.i.i_crit_edge

land.lhs.true55.i.i.i.if.then63.i.i.i_crit_edge:  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63.i.i.i

land.lhs.true55.i.i.i.if.end7.i.i_crit_edge:      ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then63.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i.if.then63.i.i.i_crit_edge, %if.else.i.i.i.if.then63.i.i.i_crit_edge
  tail call void @start_tty(ptr noundef %tty) #9
  %75 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %disc_data, align 4
  %echo_mark.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %echo_mark.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %echo_mark.i.i.i.i, align 4
  %echo_tail.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %76, i32 0, i32 18
  %79 = ptrtoint ptr %echo_tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %echo_tail.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp.i.i.i.i = icmp eq i32 %78, %80
  br i1 %cmp.i.i.i.i, label %if.then63.i.i.i.if.end7.i.i_crit_edge, label %if.end.i.i.i.i

if.then63.i.i.i.if.end7.i.i_crit_edge:            ; preds = %if.then63.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.end.i.i.i.i:                                   ; preds = %if.then63.i.i.i
  %output_lock.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %76, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i.i.i.i, i32 noundef 0) #9
  %81 = ptrtoint ptr %echo_mark.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %echo_mark.i.i.i.i, align 4
  %echo_commit.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %76, i32 0, i32 4
  %83 = ptrtoint ptr %echo_commit.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %echo_commit.i.i.i.i, align 4
  %call.i.i.i.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.i.i.if.end7.i.i_crit_edge:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %84 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i.i.i.i, align 4
  %flush_chars.i.i.i.i = getelementptr inbounds %struct.tty_operations, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %flush_chars.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %flush_chars.i.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %87, null
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end7.i.i_crit_edge, label %if.then4.i.i.i.i

land.lhs.true.i.i.i.i.if.end7.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then4.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %87(ptr noundef %tty) #9
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then4.i.i.i.i, %land.lhs.true.i.i.i.i.if.end7.i.i_crit_edge, %if.end.i.i.i.i.if.end7.i.i_crit_edge, %if.then63.i.i.i.if.end7.i.i_crit_edge, %land.lhs.true55.i.i.i.if.end7.i.i_crit_edge, %land.lhs.true47.i.i.i.if.end7.i.i_crit_edge, %land.lhs.true39.i.i.i.if.end7.i.i_crit_edge, %land.lhs.true31.i.i.i.if.end7.i.i_crit_edge, %lor.lhs.false.i.i.i.if.end7.i.i_crit_edge, %if.then21.i.i.i, %if.end11.i.i.i.if.end7.i.i_crit_edge, %if.end.i109.i.if.end7.i.i_crit_edge
  %cp.addr.1.i112.i = phi ptr [ %cp.addr.011.i.i, %if.end.i109.i.if.end7.i.i_crit_edge ], [ %incdec.ptr6.i.i, %if.end11.i.i.i.if.end7.i.i_crit_edge ], [ %incdec.ptr6.i.i, %if.then21.i.i.i ], [ %incdec.ptr6.i.i, %lor.lhs.false.i.i.i.if.end7.i.i_crit_edge ], [ %incdec.ptr6.i.i, %land.lhs.true31.i.i.i.if.end7.i.i_crit_edge ], [ %incdec.ptr6.i.i, %land.lhs.true39.i.i.i.if.end7.i.i_crit_edge ], [ %incdec.ptr6.i.i, %land.lhs.true47.i.i.i.if.end7.i.i_crit_edge ], [ %incdec.ptr6.i.i, %land.lhs.true55.i.i.i.if.end7.i.i_crit_edge ], [ %incdec.ptr6.i.i, %if.then63.i.i.i.if.end7.i.i_crit_edge ], [ %incdec.ptr6.i.i, %if.end.i.i.i.i.if.end7.i.i_crit_edge ], [ %incdec.ptr6.i.i, %land.lhs.true.i.i.i.i.if.end7.i.i_crit_edge ], [ %incdec.ptr6.i.i, %if.then4.i.i.i.i ]
  %tobool.not.i113.i = icmp eq i32 %dec14.i.i, 0
  br i1 %tobool.not.i113.i, label %if.end7.i.i.if.end34.i_crit_edge, label %if.end7.i.i.while.body.i103.i_crit_edge

if.end7.i.i.while.body.i103.i_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i103.i

if.end7.i.i.if.end34.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

while.body.lr.ph.i120.i:                          ; preds = %if.else19.i
  %char_map.i.i = getelementptr inbounds %struct.n_tty_data, ptr %19, i32 0, i32 6
  br label %while.body.i123.i

while.body.i123.i:                                ; preds = %cleanup.i.i.while.body.i123.i_crit_edge, %while.body.lr.ph.i120.i
  %dec147.in.i.i = phi i32 [ %15, %while.body.lr.ph.i120.i ], [ %dec147.i.i, %cleanup.i.i.while.body.i123.i_crit_edge ]
  %flag.0146.i.i = phi i8 [ 0, %while.body.lr.ph.i120.i ], [ %flag.1.i126.i, %cleanup.i.i.while.body.i123.i_crit_edge ]
  %fp.addr.0145.i.i = phi ptr [ %fp.addr.0, %while.body.lr.ph.i120.i ], [ %fp.addr.1.i125.i, %cleanup.i.i.while.body.i123.i_crit_edge ]
  %cp.addr.0144.i.i = phi ptr [ %cp.addr.0, %while.body.lr.ph.i120.i ], [ %incdec.ptr.i121.i, %cleanup.i.i.while.body.i123.i_crit_edge ]
  %dec147.i.i = add i32 %dec147.in.i.i, -1
  %incdec.ptr.i121.i = getelementptr i8, ptr %cp.addr.0144.i.i, i32 1
  %88 = ptrtoint ptr %cp.addr.0144.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %cp.addr.0144.i.i, align 1
  %tobool1.not.i122.i = icmp eq ptr %fp.addr.0145.i.i, null
  br i1 %tobool1.not.i122.i, label %while.body.i123.i.if.end.i127.i_crit_edge, label %if.then.i124.i

while.body.i123.i.if.end.i127.i_crit_edge:        ; preds = %while.body.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i127.i

if.then.i124.i:                                   ; preds = %while.body.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr2.i.i = getelementptr i8, ptr %fp.addr.0145.i.i, i32 1
  %90 = ptrtoint ptr %fp.addr.0145.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fp.addr.0145.i.i, align 1
  br label %if.end.i127.i

if.end.i127.i:                                    ; preds = %if.then.i124.i, %while.body.i123.i.if.end.i127.i_crit_edge
  %fp.addr.1.i125.i = phi ptr [ %incdec.ptr2.i.i, %if.then.i124.i ], [ null, %while.body.i123.i.if.end.i127.i_crit_edge ]
  %flag.1.i126.i = phi i8 [ %91, %if.then.i124.i ], [ %flag.0146.i.i, %while.body.i123.i.if.end.i127.i_crit_edge ]
  %92 = ptrtoint ptr %real_raw.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i.i = load i8, ptr %real_raw.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool3.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i127.i
  %93 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %disc_data, align 4
  %lnext.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %94, i32 0, i32 10
  %95 = ptrtoint ptr %lnext.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i.i.i = load i8, ptr %lnext.i.i.i, align 1
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 127
  store i8 %bf.clear.i.i.i, ptr %lnext.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.1.i126.i)
  %cmp.i.i128.i = icmp eq i8 %flag.1.i126.i, 0
  br i1 %cmp.i.i128.i, label %if.then.i.i.i, label %if.else.i.i137.i, !prof !48

if.then.i.i.i:                                    ; preds = %if.then4.i.i
  %96 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %termios, align 4
  %and.i57.i.i = and i32 %97, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i57.i.i, 0
  %98 = and i8 %89, 127
  %spec.select.i.i129.i = select i1 %tobool3.not.i.i.i, i8 %89, i8 %98
  %and10.i.i.i = and i32 %97, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.then.i.i.i.if.end16.i.i.i_crit_edge, label %land.lhs.true.i.i130.i

if.then.i.i.i.if.end16.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i.i

land.lhs.true.i.i130.i:                           ; preds = %if.then.i.i.i
  %99 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %c_lflag.i, align 4
  %and13.i.i.i = and i32 %100, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %and13.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %land.lhs.true.i.i130.i.if.end16.i.i.i_crit_edge, label %if.then15.i.i.i

land.lhs.true.i.i130.i.if.end16.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i.i

if.then15.i.i.i:                                  ; preds = %land.lhs.true.i.i130.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i131.i = zext i8 %spec.select.i.i129.i to i32
  %arrayidx.i.i.i132.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i131.i
  %101 = ptrtoint ptr %arrayidx.i.i.i132.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.i.i132.i, align 1
  %103 = and i8 %102, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp.not.i.i.i133.i = icmp eq i8 %103, 0
  %sub.i.i.i134.i = add i8 %spec.select.i.i129.i, 32
  %spec.select.i.i.i135.i = select i1 %cmp.not.i.i.i133.i, i8 %spec.select.i.i129.i, i8 %sub.i.i.i134.i
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.then15.i.i.i, %land.lhs.true.i.i130.i.if.end16.i.i.i_crit_edge, %if.then.i.i.i.if.end16.i.i.i_crit_edge
  %c.addr.1.i.i136.i = phi i8 [ %spec.select.i.i.i135.i, %if.then15.i.i.i ], [ %spec.select.i.i129.i, %land.lhs.true.i.i130.i.if.end16.i.i.i_crit_edge ], [ %spec.select.i.i129.i, %if.then.i.i.i.if.end16.i.i.i_crit_edge ]
  tail call fastcc void @n_tty_receive_char(ptr noundef %tty, i8 noundef zeroext %c.addr.1.i.i136.i) #9
  br label %cleanup.i.i

if.else.i.i137.i:                                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @n_tty_receive_char_flagged(ptr noundef %tty, i8 noundef zeroext %89, i8 noundef zeroext %flag.1.i126.i) #9
  br label %cleanup.i.i

if.end5.i.i:                                      ; preds = %if.end.i127.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.1.i126.i)
  %cmp.not.i.i = icmp eq i8 %flag.1.i126.i, 0
  br i1 %cmp.not.i.i, label %if.end10.i.i, label %if.then9.i.i, !prof !48

if.then9.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @n_tty_receive_char_flagged(ptr noundef %tty, i8 noundef zeroext %89, i8 noundef zeroext %flag.1.i126.i) #9
  br label %cleanup.i.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %104 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %termios, align 4
  %and.i138.i = and i32 %105, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138.i)
  %tobool11.not.i.i = icmp eq i32 %and.i138.i, 0
  %106 = and i8 %89, 127
  %spec.select.i.i = select i1 %tobool11.not.i.i, i8 %89, i8 %106
  %and19.i.i = and i32 %105, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end10.i.i.if.end25.i.i_crit_edge, label %land.lhs.true.i.i

if.end10.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

land.lhs.true.i.i:                                ; preds = %if.end10.i.i
  %107 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %c_lflag.i, align 4
  %and22.i.i = and i32 %108, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true.i.i.if.end25.i.i_crit_edge, label %if.then24.i.i

land.lhs.true.i.i.if.end25.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.then24.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i8 %spec.select.i.i to i32
  %arrayidx.i58.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i
  %109 = ptrtoint ptr %arrayidx.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i58.i.i, align 1
  %111 = and i8 %110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp.not.i.i.i = icmp eq i8 %111, 0
  %sub.i.i.i = add i8 %spec.select.i.i, 32
  %spec.select.i59.i.i = select i1 %cmp.not.i.i.i, i8 %spec.select.i.i, i8 %sub.i.i.i
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then24.i.i, %land.lhs.true.i.i.if.end25.i.i_crit_edge, %if.end10.i.i.if.end25.i.i_crit_edge
  %c.1.i.i = phi i8 [ %spec.select.i59.i.i, %if.then24.i.i ], [ %spec.select.i.i, %land.lhs.true.i.i.if.end25.i.i_crit_edge ], [ %spec.select.i.i, %if.end10.i.i.if.end25.i.i_crit_edge ]
  %112 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %c_lflag.i, align 4
  %and28.i.i = and i32 %113, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end31.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %19, align 4
  %and.i.i.i139.i = and i32 %115, 4095
  %arrayidx.i.i60.i.i = getelementptr %struct.n_tty_data, ptr %19, i32 0, i32 11, i32 %and.i.i.i139.i
  %116 = ptrtoint ptr %arrayidx.i.i60.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %c.1.i.i, ptr %arrayidx.i.i60.i.i, align 1
  %inc.i.i140.i = add i32 %115, 1
  store i32 %inc.i.i140.i, ptr %19, align 4
  br label %cleanup.i.i

if.end31.i.i:                                     ; preds = %if.end25.i.i
  %conv32.i.i = zext i8 %c.1.i.i to i32
  %div3.i.i.i = lshr i32 %conv32.i.i, 5
  %arrayidx.i.i141.i = getelementptr i32, ptr %char_map.i.i, i32 %div3.i.i.i
  %117 = ptrtoint ptr %arrayidx.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %arrayidx.i.i141.i, align 4
  %and.i.i142.i = and i32 %conv32.i.i, 31
  %119 = shl nuw i32 1, %and.i.i142.i
  %120 = and i32 %118, %119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool34.not.i.i = icmp eq i32 %120, 0
  br i1 %tobool34.not.i.i, label %if.else.i158.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.end31.i.i
  %121 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %disc_data, align 4
  %and.i63.i.i = and i32 %105, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i)
  %tobool.not.i.i143.i = icmp eq i32 %and.i63.i.i, 0
  br i1 %tobool.not.i.i143.i, label %if.then35.i.i.if.end14.i.i.i_crit_edge, label %if.then.i66.i.i

if.then35.i.i.if.end14.i.i.i_crit_edge:           ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i.i

if.then.i66.i.i:                                  ; preds = %if.then35.i.i
  %123 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx25.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %124, i8 %c.1.i.i)
  %cmp.i65.i.i = icmp eq i8 %124, %c.1.i.i
  br i1 %cmp.i65.i.i, label %if.then4.i.i.i, label %if.end.i.i.i

if.then4.i.i.i:                                   ; preds = %if.then.i66.i.i
  tail call void @start_tty(ptr noundef %tty) #9
  %125 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %disc_data, align 4
  %echo_mark.i.i.i144.i = getelementptr inbounds %struct.n_tty_data, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %echo_mark.i.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %echo_mark.i.i.i144.i, align 4
  %echo_tail.i.i.i145.i = getelementptr inbounds %struct.n_tty_data, ptr %126, i32 0, i32 18
  %129 = ptrtoint ptr %echo_tail.i.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %echo_tail.i.i.i145.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %cmp.i.i.i146.i = icmp eq i32 %128, %130
  br i1 %cmp.i.i.i146.i, label %if.then4.i.i.i.cleanup.i.i_crit_edge, label %if.end.i.i.i151.i

if.then4.i.i.i.cleanup.i.i_crit_edge:             ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i.i151.i:                                ; preds = %if.then4.i.i.i
  %output_lock.i.i.i147.i = getelementptr inbounds %struct.n_tty_data, ptr %126, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i.i.i147.i, i32 noundef 0) #9
  %131 = ptrtoint ptr %echo_mark.i.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %echo_mark.i.i.i144.i, align 4
  %echo_commit.i.i.i148.i = getelementptr inbounds %struct.n_tty_data, ptr %126, i32 0, i32 4
  %133 = ptrtoint ptr %echo_commit.i.i.i148.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %echo_commit.i.i.i148.i, align 4
  %call.i.i.i149.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i.i.i147.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i149.i)
  %tobool.not.i.i.i150.i = icmp eq i32 %call.i.i.i149.i, 0
  br i1 %tobool.not.i.i.i150.i, label %if.end.i.i.i151.i.cleanup.i.i_crit_edge, label %land.lhs.true.i.i.i154.i

if.end.i.i.i151.i.cleanup.i.i_crit_edge:          ; preds = %if.end.i.i.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true.i.i.i154.i:                         ; preds = %if.end.i.i.i151.i
  %134 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ops.i.i.i.i, align 4
  %flush_chars.i.i.i152.i = getelementptr inbounds %struct.tty_operations, ptr %135, i32 0, i32 9
  %136 = ptrtoint ptr %flush_chars.i.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %flush_chars.i.i.i152.i, align 4
  %tobool3.not.i.i.i153.i = icmp eq ptr %137, null
  br i1 %tobool3.not.i.i.i153.i, label %land.lhs.true.i.i.i154.i.cleanup.i.i_crit_edge, label %if.then4.i.i.i155.i

land.lhs.true.i.i.i154.i.cleanup.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then4.i.i.i155.i:                              ; preds = %land.lhs.true.i.i.i154.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %137(ptr noundef %tty) #9
  br label %cleanup.i.i

if.end.i.i.i:                                     ; preds = %if.then.i66.i.i
  %138 = ptrtoint ptr %arrayidx.i.i101.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i.i101.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %139, i8 %c.1.i.i)
  %cmp10.i.i.i = icmp eq i8 %139, %c.1.i.i
  br i1 %cmp10.i.i.i, label %if.then12.i.i.i, label %if.end.i.i.i.if.end14.i.i.i_crit_edge

if.end.i.i.i.if.end14.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @stop_tty(ptr noundef %tty) #9
  br label %cleanup.i.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i.if.end14.i.i.i_crit_edge, %if.then35.i.i.if.end14.i.i.i_crit_edge
  %and16.i.i.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %and16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end14.i.i.i.if.end47.i.i.i_crit_edge, label %if.then18.i.i.i

if.end14.i.i.i.if.end47.i.i.i_crit_edge:          ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i.i.i

if.then18.i.i.i:                                  ; preds = %if.end14.i.i.i
  %140 = ptrtoint ptr %c_cc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %c_cc.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %141, i8 %c.1.i.i)
  %cmp24.i.i.i = icmp eq i8 %141, %c.1.i.i
  br i1 %cmp24.i.i.i, label %if.then26.i.i.i, label %if.else.i68.i.i

if.then26.i.i.i:                                  ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @n_tty_receive_signal_char(ptr noundef %tty, i32 noundef 2, i8 noundef zeroext %c.1.i.i) #9
  br label %cleanup.i.i

if.else.i68.i.i:                                  ; preds = %if.then18.i.i.i
  %142 = ptrtoint ptr %arrayidx51.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx51.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %143, i8 %c.1.i.i)
  %cmp32.i.i.i = icmp eq i8 %143, %c.1.i.i
  br i1 %cmp32.i.i.i, label %if.then34.i.i.i, label %if.else35.i.i.i

if.then34.i.i.i:                                  ; preds = %if.else.i68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @n_tty_receive_signal_char(ptr noundef %tty, i32 noundef 3, i8 noundef zeroext %c.1.i.i) #9
  br label %cleanup.i.i

if.else35.i.i.i:                                  ; preds = %if.else.i68.i.i
  %144 = ptrtoint ptr %arrayidx59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx59.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %145, i8 %c.1.i.i)
  %cmp41.i.i.i = icmp eq i8 %145, %c.1.i.i
  br i1 %cmp41.i.i.i, label %if.then43.i.i.i, label %if.else35.i.i.i.if.end47.i.i.i_crit_edge

if.else35.i.i.i.if.end47.i.i.i_crit_edge:         ; preds = %if.else35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i.i.i

if.then43.i.i.i:                                  ; preds = %if.else35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @n_tty_receive_signal_char(ptr noundef %tty, i32 noundef 20, i8 noundef zeroext %c.1.i.i) #9
  br label %cleanup.i.i

if.end47.i.i.i:                                   ; preds = %if.else35.i.i.i.if.end47.i.i.i_crit_edge, %if.end14.i.i.i.if.end47.i.i.i_crit_edge
  %146 = ptrtoint ptr %stopped.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %stopped.i.i.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool48.not.i.i.i = icmp eq i8 %147, 0
  br i1 %tobool48.not.i.i.i, label %if.end47.i.i.i.if.end63.i.i.i_crit_edge, label %land.lhs.true.i69.i.i

if.end47.i.i.i.if.end63.i.i.i_crit_edge:          ; preds = %if.end47.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i.i

land.lhs.true.i69.i.i:                            ; preds = %if.end47.i.i.i
  %148 = ptrtoint ptr %tco_stopped.i.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %tco_stopped.i.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool51.not.i.i.i = icmp eq i8 %149, 0
  %150 = and i32 %105, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %150)
  %.not564.i.i.i = icmp eq i32 %150, 3072
  %or.cond.i.i156.i = select i1 %tobool51.not.i.i.i, i1 %.not564.i.i.i, i1 false
  br i1 %or.cond.i.i156.i, label %if.then62.i.i.i, label %land.lhs.true.i69.i.i.if.end63.i.i.i_crit_edge

land.lhs.true.i69.i.i.if.end63.i.i.i_crit_edge:   ; preds = %land.lhs.true.i69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true.i69.i.i
  tail call void @start_tty(ptr noundef %tty) #9
  %151 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %disc_data, align 4
  %echo_mark.i411.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %echo_mark.i411.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %echo_mark.i411.i.i.i, align 4
  %echo_tail.i412.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %152, i32 0, i32 18
  %155 = ptrtoint ptr %echo_tail.i412.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %echo_tail.i412.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %156)
  %cmp.i413.i.i.i = icmp eq i32 %154, %156
  br i1 %cmp.i413.i.i.i, label %if.then62.i.i.i.if.end63.i.i.i_crit_edge, label %if.end.i418.i.i.i

if.then62.i.i.i.if.end63.i.i.i_crit_edge:         ; preds = %if.then62.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i.i

if.end.i418.i.i.i:                                ; preds = %if.then62.i.i.i
  %output_lock.i414.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %152, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i414.i.i.i, i32 noundef 0) #9
  %157 = ptrtoint ptr %echo_mark.i411.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %echo_mark.i411.i.i.i, align 4
  %echo_commit.i415.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %152, i32 0, i32 4
  %159 = ptrtoint ptr %echo_commit.i415.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %echo_commit.i415.i.i.i, align 4
  %call.i416.i.i.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i414.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i416.i.i.i)
  %tobool.not.i417.i.i.i = icmp eq i32 %call.i416.i.i.i, 0
  br i1 %tobool.not.i417.i.i.i, label %if.end.i418.i.i.i.if.end63.i.i.i_crit_edge, label %land.lhs.true.i422.i.i.i

if.end.i418.i.i.i.if.end63.i.i.i_crit_edge:       ; preds = %if.end.i418.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i.i

land.lhs.true.i422.i.i.i:                         ; preds = %if.end.i418.i.i.i
  %160 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ops.i.i.i.i, align 4
  %flush_chars.i420.i.i.i = getelementptr inbounds %struct.tty_operations, ptr %161, i32 0, i32 9
  %162 = ptrtoint ptr %flush_chars.i420.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %flush_chars.i420.i.i.i, align 4
  %tobool3.not.i421.i.i.i = icmp eq ptr %163, null
  br i1 %tobool3.not.i421.i.i.i, label %land.lhs.true.i422.i.i.i.if.end63.i.i.i_crit_edge, label %if.then4.i423.i.i.i

land.lhs.true.i422.i.i.i.if.end63.i.i.i_crit_edge: ; preds = %land.lhs.true.i422.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i.i.i

if.then4.i423.i.i.i:                              ; preds = %land.lhs.true.i422.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %163(ptr noundef %tty) #9
  br label %if.end63.i.i.i

if.end63.i.i.i:                                   ; preds = %if.then4.i423.i.i.i, %land.lhs.true.i422.i.i.i.if.end63.i.i.i_crit_edge, %if.end.i418.i.i.i.if.end63.i.i.i_crit_edge, %if.then62.i.i.i.if.end63.i.i.i_crit_edge, %land.lhs.true.i69.i.i.if.end63.i.i.i_crit_edge, %if.end47.i.i.i.if.end63.i.i.i_crit_edge
  %164 = zext i8 %c.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %c.1.i.i, label %if.end63.i.i.i.if.end91.i.i.i_crit_edge [
    i8 13, label %if.then67.i.i.i
    i8 10, label %land.lhs.true84.i.i.i
  ]

if.end63.i.i.i.if.end91.i.i.i_crit_edge:          ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.i.i.i

if.then67.i.i.i:                                  ; preds = %if.end63.i.i.i
  %165 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %termios, align 4
  %and70.i.i.i = and i32 %166, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i.i.i)
  %tobool71.not.i.i.i = icmp eq i32 %and70.i.i.i, 0
  br i1 %tobool71.not.i.i.i, label %if.end73.i.i.i, label %if.then67.i.i.i.cleanup.i.i_crit_edge

if.then67.i.i.i.cleanup.i.i_crit_edge:            ; preds = %if.then67.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end73.i.i.i:                                   ; preds = %if.then67.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and76.i.i.i = and i32 %166, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i.i.i)
  %tobool77.not.i.i.i = icmp eq i32 %and76.i.i.i, 0
  %spec.select.i70.i.i = select i1 %tobool77.not.i.i.i, i8 13, i8 10
  br label %if.end91.i.i.i

land.lhs.true84.i.i.i:                            ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %termios, align 4
  %and87.i.i.i = and i32 %168, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i.i.i)
  %tobool88.not.i.i.i = icmp eq i32 %and87.i.i.i, 0
  %spec.select407.i.i.i = select i1 %tobool88.not.i.i.i, i8 10, i8 13
  br label %if.end91.i.i.i

if.end91.i.i.i:                                   ; preds = %land.lhs.true84.i.i.i, %if.end73.i.i.i, %if.end63.i.i.i.if.end91.i.i.i_crit_edge
  %c.addr.0.i.i.i = phi i8 [ %spec.select.i70.i.i, %if.end73.i.i.i ], [ %c.1.i.i, %if.end63.i.i.i.if.end91.i.i.i_crit_edge ], [ %spec.select407.i.i.i, %land.lhs.true84.i.i.i ]
  %icanon.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 10
  %169 = ptrtoint ptr %icanon.i.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %bf.load.i71.i.i = load i8, ptr %icanon.i.i.i, align 1
  %170 = and i8 %bf.load.i71.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool92.not.i.i.i = icmp eq i8 %170, 0
  br i1 %tobool92.not.i.i.i, label %if.end91.i.i.i.if.end265.i.i.i_crit_edge, label %if.then93.i.i.i

if.end91.i.i.i.if.end265.i.i.i_crit_edge:         ; preds = %if.end91.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265.i.i.i

if.then93.i.i.i:                                  ; preds = %if.end91.i.i.i
  %171 = ptrtoint ptr %arrayidx97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx97.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.0.i.i.i, i8 %172)
  %cmp99.i.i.i = icmp eq i8 %c.addr.0.i.i.i, %172
  br i1 %cmp99.i.i.i, label %if.then121.thread.i.i.i, label %lor.lhs.false.i.i157.i

lor.lhs.false.i.i157.i:                           ; preds = %if.then93.i.i.i
  %173 = ptrtoint ptr %arrayidx104.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx104.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.0.i.i.i, i8 %174)
  %cmp106.i.i.i = icmp eq i8 %c.addr.0.i.i.i, %174
  br i1 %cmp106.i.i.i, label %lor.lhs.false.i.i157.i.if.then121.i.i.i_crit_edge, label %lor.lhs.false108.i.i.i

lor.lhs.false.i.i157.i.if.then121.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then121.i.i.i

lor.lhs.false108.i.i.i:                           ; preds = %lor.lhs.false.i.i157.i
  %175 = ptrtoint ptr %arrayidx112.i.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx112.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.0.i.i.i, i8 %176)
  %cmp114.i.i.i = icmp eq i8 %c.addr.0.i.i.i, %176
  br i1 %cmp114.i.i.i, label %land.lhs.true116.i.i.i, label %lor.lhs.false108.i.i.i.if.end122.i.i.i_crit_edge

lor.lhs.false108.i.i.i.if.end122.i.i.i_crit_edge: ; preds = %lor.lhs.false108.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.i.i.i

land.lhs.true116.i.i.i:                           ; preds = %lor.lhs.false108.i.i.i
  %177 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %c_lflag.i, align 4
  %and119.i.i.i = and i32 %178, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i.i.i)
  %tobool120.not.i.i.i = icmp eq i32 %and119.i.i.i, 0
  br i1 %tobool120.not.i.i.i, label %land.lhs.true116.i.i.i.if.end122.i.i.i_crit_edge, label %land.lhs.true116.i.i.i.if.then121.i.i.i_crit_edge

land.lhs.true116.i.i.i.if.then121.i.i.i_crit_edge: ; preds = %land.lhs.true116.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then121.i.i.i

land.lhs.true116.i.i.i.if.end122.i.i.i_crit_edge: ; preds = %land.lhs.true116.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.i.i.i

if.then121.i.i.i:                                 ; preds = %land.lhs.true116.i.i.i.if.then121.i.i.i_crit_edge, %lor.lhs.false.i.i157.i.if.then121.i.i.i_crit_edge
  %179 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %disc_data, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 4
  %canon_head.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %180, i32 0, i32 2
  %183 = ptrtoint ptr %canon_head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %canon_head.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %184)
  %cmp.i426.i.i.i = icmp eq i32 %182, %184
  br i1 %cmp.i426.i.i.i, label %if.then121.i.i.i.eraser.exit.i.i.i_crit_edge, label %if.else.i.critedge.i.i.i

if.then121.i.i.i.eraser.exit.i.i.i_crit_edge:     ; preds = %if.then121.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %eraser.exit.i.i.i

if.then121.thread.i.i.i:                          ; preds = %if.then93.i.i.i
  %185 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %disc_data, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 4
  %canon_head.i557.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %186, i32 0, i32 2
  %189 = ptrtoint ptr %canon_head.i557.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %canon_head.i557.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %190)
  %cmp.i426558.i.i.i = icmp eq i32 %188, %190
  br i1 %cmp.i426558.i.i.i, label %if.then121.thread.i.i.i.eraser.exit.i.i.i_crit_edge, label %if.then121.thread.i.i.i.if.end46.i.i.i.i_crit_edge

if.then121.thread.i.i.i.if.end46.i.i.i.i_crit_edge: ; preds = %if.then121.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i.i.i.i

if.then121.thread.i.i.i.eraser.exit.i.i.i_crit_edge: ; preds = %if.then121.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %eraser.exit.i.i.i

if.else.i.critedge.i.i.i:                         ; preds = %if.then121.i.i.i
  %191 = ptrtoint ptr %arrayidx112.i.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx112.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %192, i8 %c.addr.0.i.i.i)
  %cmp10.i.i.i.i = icmp eq i8 %192, %c.addr.0.i.i.i
  br i1 %cmp10.i.i.i.i, label %if.else.i.critedge.i.i.i.if.end46.i.i.i.i_crit_edge, label %if.else13.i.i.i.i

if.else.i.critedge.i.i.i.if.end46.i.i.i.i_crit_edge: ; preds = %if.else.i.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i.i.i.i

if.else13.i.i.i.i:                                ; preds = %if.else.i.critedge.i.i.i
  %193 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %c_lflag.i, align 4
  %and.i.i72.i.i = and i32 %194, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i72.i.i)
  %tobool.not.i428.i.i.i = icmp eq i32 %and.i.i72.i.i, 0
  br i1 %tobool.not.i428.i.i.i, label %if.then15.i.i.i.i, label %if.end18.i.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.else13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %195 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %184, ptr %180, align 4
  br label %eraser.exit.i.i.i

if.end18.i.i.i.i:                                 ; preds = %if.else13.i.i.i.i
  %196 = and i32 %194, 2096
  call void @__sanitizer_cov_trace_const_cmp4(i32 2096, i32 %196)
  %.not.i.i.i.i = icmp eq i32 %196, 2096
  br i1 %.not.i.i.i.i, label %if.end18.i.i.i.i.if.end46.i.i.i.i_crit_edge, label %if.then32.i.i.i.i

if.end18.i.i.i.i.if.end46.i.i.i.i_crit_edge:      ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i.i.i.i

if.then32.i.i.i.i:                                ; preds = %if.end18.i.i.i.i
  %197 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %184, ptr %180, align 4
  %erasing.i.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %180, i32 0, i32 10
  %198 = ptrtoint ptr %erasing.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %bf.load.i.i.i.i.i = load i8, ptr %erasing.i.i.i.i.i, align 1
  %199 = and i8 %bf.load.i.i.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i.i.i.i.i = icmp eq i8 %199, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then32.i.i.i.i.finish_erasing.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.then32.i.i.i.i.finish_erasing.exit.i.i.i.i_crit_edge: ; preds = %if.then32.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %finish_erasing.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then32.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i.i.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %180, i32 0, i32 3
  %200 = ptrtoint ptr %echo_head.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %echo_head.i.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i.i.i = and i32 %201, 4095
  %arrayidx.i.i.i.i.i.i.i.i = getelementptr %struct.n_tty_data, ptr %180, i32 0, i32 13, i32 %and.i.i.i.i.i.i.i.i
  %202 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 47, ptr %arrayidx.i.i.i.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %203 = ptrtoint ptr %echo_head.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %echo_head.i.i.i.i.i.i.i, align 4
  %inc.i12.i.i.i.i.i.i = add i32 %204, 1
  store i32 %inc.i12.i.i.i.i.i.i, ptr %echo_head.i.i.i.i.i.i.i, align 4
  %205 = ptrtoint ptr %erasing.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %bf.load2.i.i.i.i.i = load i8, ptr %erasing.i.i.i.i.i, align 1
  %bf.clear3.i.i.i.i.i = and i8 %bf.load2.i.i.i.i.i, -65
  store i8 %bf.clear3.i.i.i.i.i, ptr %erasing.i.i.i.i.i, align 1
  br label %finish_erasing.exit.i.i.i.i

finish_erasing.exit.i.i.i.i:                      ; preds = %if.then.i.i.i.i.i, %if.then32.i.i.i.i.finish_erasing.exit.i.i.i.i_crit_edge
  %206 = ptrtoint ptr %arrayidx104.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx104.i.i.i, align 1
  %208 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %disc_data, align 4
  %conv.i.i.i.i.i = zext i8 %207 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %207)
  %cmp.i.i.i.i.i = icmp eq i8 %207, -1
  br i1 %cmp.i.i.i.i.i, label %if.then.i298.i.i.i.i, label %if.else.i.i.i.i.i

if.then.i298.i.i.i.i:                             ; preds = %finish_erasing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %209, i32 0, i32 3
  %210 = ptrtoint ptr %echo_head.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %echo_head.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %211, 4095
  %arrayidx.i.i.i.i.i.i.i = getelementptr %struct.n_tty_data, ptr %209, i32 0, i32 13, i32 %and.i.i.i.i.i.i.i
  %212 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 -1, ptr %arrayidx.i.i.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %213 = ptrtoint ptr %echo_head.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %echo_head.i.i.i.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %214, 1
  store i32 %inc.i.i.i.i.i.i, ptr %echo_head.i.i.i.i.i.i, align 4
  %and.i.i21.i.i.i.i.i = and i32 %inc.i.i.i.i.i.i, 4095
  %arrayidx.i.i22.i.i.i.i.i = getelementptr %struct.n_tty_data, ptr %209, i32 0, i32 13, i32 %and.i.i21.i.i.i.i.i
  %215 = ptrtoint ptr %arrayidx.i.i22.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -1, ptr %arrayidx.i.i22.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %finish_erasing.exit.i.i.i.i
  %216 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %c_lflag.i, align 4
  %and.i.i.i.i.i = and i32 %217, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i299.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i299.i.i.i.i, label %if.else.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.else.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.else.i.i.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i.i.i
  %218 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %220 = and i8 %219, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %cmp5.not.i.i.i.i.i = icmp eq i8 %220, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %207)
  %cmp9.not.i.i.i.i.i = icmp eq i8 %207, 9
  %or.cond.i.i.i.i.i = or i1 %cmp9.not.i.i.i.i.i, %cmp5.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i.i

if.then11.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i24.i.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %209, i32 0, i32 3
  %221 = ptrtoint ptr %echo_head.i24.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %echo_head.i24.i.i.i.i.i, align 4
  %and.i.i25.i.i.i.i.i = and i32 %222, 4095
  %arrayidx.i.i26.i.i.i.i.i = getelementptr %struct.n_tty_data, ptr %209, i32 0, i32 13, i32 %and.i.i25.i.i.i.i.i
  %223 = ptrtoint ptr %arrayidx.i.i26.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 -1, ptr %arrayidx.i.i26.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %224 = ptrtoint ptr %echo_head.i24.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %echo_head.i24.i.i.i.i.i, align 4
  %inc.i27.i.i.i.i.i = add i32 %225, 1
  store i32 %inc.i27.i.i.i.i.i, ptr %echo_head.i24.i.i.i.i.i, align 4
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then11.i.i.i.i.i, %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, %if.else.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %echo_head.i28.i.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %209, i32 0, i32 3
  %226 = ptrtoint ptr %echo_head.i28.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %echo_head.i28.i.i.i.i.i, align 4
  %and.i.i29.i.i.i.i.i = and i32 %227, 4095
  %arrayidx.i.i30.i.i.i.i.i = getelementptr %struct.n_tty_data, ptr %209, i32 0, i32 13, i32 %and.i.i29.i.i.i.i.i
  %228 = ptrtoint ptr %arrayidx.i.i30.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %207, ptr %arrayidx.i.i30.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit.i.i.i.i

echo_char.exit.i.i.i.i:                           ; preds = %if.end.i.i.i.i.i, %if.then.i298.i.i.i.i
  %echo_head.i28.sink32.i.i.i.i.i = phi ptr [ %echo_head.i28.i.i.i.i.i, %if.end.i.i.i.i.i ], [ %echo_head.i.i.i.i.i.i, %if.then.i298.i.i.i.i ]
  %229 = ptrtoint ptr %echo_head.i28.sink32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %echo_head.i28.sink32.i.i.i.i.i, align 4
  %inc.i31.i.i.i.i.i = add i32 %230, 1
  store i32 %inc.i31.i.i.i.i.i, ptr %echo_head.i28.sink32.i.i.i.i.i, align 4
  %231 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %c_lflag.i, align 4
  %and40.i.i.i.i = and i32 %232, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i.i.i)
  %tobool41.not.i.i.i.i = icmp eq i32 %and40.i.i.i.i, 0
  br i1 %tobool41.not.i.i.i.i, label %echo_char.exit.i.i.i.i.eraser.exit.i.i.i_crit_edge, label %if.then42.i.i.i.i

echo_char.exit.i.i.i.i.eraser.exit.i.i.i_crit_edge: ; preds = %echo_char.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %eraser.exit.i.i.i

if.then42.i.i.i.i:                                ; preds = %echo_char.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i300.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %180, i32 0, i32 3
  %233 = ptrtoint ptr %echo_head.i.i300.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %echo_head.i.i300.i.i.i.i, align 4
  %and.i.i.i301.i.i.i.i = and i32 %234, 4095
  %arrayidx.i.i.i302.i.i.i.i = getelementptr %struct.n_tty_data, ptr %180, i32 0, i32 13, i32 %and.i.i.i301.i.i.i.i
  %235 = ptrtoint ptr %arrayidx.i.i.i302.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 10, ptr %arrayidx.i.i.i302.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %236 = ptrtoint ptr %echo_head.i.i300.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %echo_head.i.i300.i.i.i.i, align 4
  %inc.i12.i.i.i.i.i = add i32 %237, 1
  store i32 %inc.i12.i.i.i.i.i, ptr %echo_head.i.i300.i.i.i.i, align 4
  br label %eraser.exit.i.i.i

if.end46.i.i.i.i:                                 ; preds = %if.end18.i.i.i.i.if.end46.i.i.i.i_crit_edge, %if.else.i.critedge.i.i.i.if.end46.i.i.i.i_crit_edge, %if.then121.thread.i.i.i.if.end46.i.i.i.i_crit_edge
  %canon_head.i559562.i.i.i = phi ptr [ %canon_head.i.i.i.i, %if.else.i.critedge.i.i.i.if.end46.i.i.i.i_crit_edge ], [ %canon_head.i.i.i.i, %if.end18.i.i.i.i.if.end46.i.i.i.i_crit_edge ], [ %canon_head.i557.i.i.i, %if.then121.thread.i.i.i.if.end46.i.i.i.i_crit_edge ]
  %238 = phi ptr [ %180, %if.else.i.critedge.i.i.i.if.end46.i.i.i.i_crit_edge ], [ %180, %if.end18.i.i.i.i.if.end46.i.i.i.i_crit_edge ], [ %186, %if.then121.thread.i.i.i.if.end46.i.i.i.i_crit_edge ]
  %cmp65.i.i.i.i = phi i1 [ true, %if.else.i.critedge.i.i.i.if.end46.i.i.i.i_crit_edge ], [ false, %if.end18.i.i.i.i.if.end46.i.i.i.i_crit_edge ], [ false, %if.then121.thread.i.i.i.if.end46.i.i.i.i_crit_edge ]
  %erasing.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %238, i32 0, i32 10
  %echo_head.i.i314.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %238, i32 0, i32 3
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %if.end193.i.i.i.i.while.cond.i.i.i.i_crit_edge, %if.end46.i.i.i.i
  %seen_alnums.0.i.i.i.i = phi i32 [ 0, %if.end46.i.i.i.i ], [ %seen_alnums.1.i.i.i.i, %if.end193.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %238, align 4
  %241 = ptrtoint ptr %canon_head.i559562.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %canon_head.i559562.i.i.i, align 4
  %243 = xor i32 %242, %240
  %244 = and i32 %243, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp51.not.i.i.i.i = icmp eq i32 %244, 0
  br i1 %cmp51.not.i.i.i.i, label %while.cond.i.i.i.i.while.end198.i.i.i.i_crit_edge, label %do.body.preheader.i.i.i.i

while.cond.i.i.i.i.while.end198.i.i.i.i_crit_edge: ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end198.i.i.i.i

do.body.preheader.i.i.i.i:                        ; preds = %while.cond.i.i.i.i
  %245 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %termios, align 4
  %and.i307.i.i.i.i = and i32 %246, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i307.i.i.i.i)
  %tobool.not.i308.i.i.i.i = icmp eq i32 %and.i307.i.i.i.i, 0
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.preheader.i.i.i.i
  %head.0.i.i.i.i = phi i32 [ %dec.i.i.i.i, %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %240, %do.body.preheader.i.i.i.i ]
  %dec.i.i.i.i = add i32 %head.0.i.i.i.i, -1
  %and.i305.i.i.i.i = and i32 %dec.i.i.i.i, 4095
  %arrayidx.i306.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 11, i32 %and.i305.i.i.i.i
  %247 = ptrtoint ptr %arrayidx.i306.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx.i306.i.i.i.i, align 1
  %249 = and i8 %248, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %249)
  %cmp.i.i.i.i.i.i = icmp ne i8 %249, -128
  %tobool55.not.i.i.i.i = or i1 %tobool.not.i308.i.i.i.i, %cmp.i.i.i.i.i.i
  br i1 %tobool55.not.i.i.i.i, label %if.end64.i.i.i.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  %250 = xor i32 %dec.i.i.i.i, %242
  %251 = and i32 %250, 4095
  %cmp59.not.i.i.i.i = icmp eq i32 %251, 0
  br i1 %cmp59.not.i.i.i.i, label %land.rhs.i.i.i.i.while.end198.i.i.i.i_crit_edge, label %land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge

land.rhs.i.i.i.i.do.body.i.i.i.i_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

land.rhs.i.i.i.i.while.end198.i.i.i.i_crit_edge:  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end198.i.i.i.i

if.end64.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  br i1 %cmp65.i.i.i.i, label %if.then67.i.i.i.i, label %if.end64.i.i.i.i.if.end84.i.i.i.i_crit_edge

if.end64.i.i.i.i.if.end84.i.i.i.i_crit_edge:      ; preds = %if.end64.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i.i.i.i

if.then67.i.i.i.i:                                ; preds = %if.end64.i.i.i.i
  %conv68.i.i.i.i = zext i8 %248 to i32
  %arrayidx69.i.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv68.i.i.i.i
  %252 = ptrtoint ptr %arrayidx69.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx69.i.i.i.i, align 1
  %254 = and i8 %253, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %cmp72.not.i.i.i.i = icmp ne i8 %254, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %248)
  %cmp76.i.i.i.i = icmp eq i8 %248, 95
  %or.cond295.i.i.i.i = or i1 %cmp76.i.i.i.i, %cmp72.not.i.i.i.i
  br i1 %or.cond295.i.i.i.i, label %if.then78.i.i.i.i, label %if.else79.i.i.i.i

if.then78.i.i.i.i:                                ; preds = %if.then67.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.i.i.i = add i32 %seen_alnums.0.i.i.i.i, 1
  br label %if.end84.i.i.i.i

if.else79.i.i.i.i:                                ; preds = %if.then67.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seen_alnums.0.i.i.i.i)
  %tobool80.not.i.i.i.i = icmp eq i32 %seen_alnums.0.i.i.i.i, 0
  br i1 %tobool80.not.i.i.i.i, label %if.else79.i.i.i.i.if.end84.i.i.i.i_crit_edge, label %if.else79.i.i.i.i.while.end198.i.i.i.i_crit_edge

if.else79.i.i.i.i.while.end198.i.i.i.i_crit_edge: ; preds = %if.else79.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end198.i.i.i.i

if.else79.i.i.i.i.if.end84.i.i.i.i_crit_edge:     ; preds = %if.else79.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i.i.i.i

if.end84.i.i.i.i:                                 ; preds = %if.else79.i.i.i.i.if.end84.i.i.i.i_crit_edge, %if.then78.i.i.i.i, %if.end64.i.i.i.i.if.end84.i.i.i.i_crit_edge
  %seen_alnums.1.i.i.i.i = phi i32 [ %inc.i.i.i.i, %if.then78.i.i.i.i ], [ 0, %if.else79.i.i.i.i.if.end84.i.i.i.i_crit_edge ], [ %seen_alnums.0.i.i.i.i, %if.end64.i.i.i.i.if.end84.i.i.i.i_crit_edge ]
  %255 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %dec.i.i.i.i, ptr %238, align 4
  %256 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %c_lflag.i, align 4
  %and89.i.i.i.i = and i32 %257, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i.i.i.i)
  %tobool90.not.i.i.i.i = icmp eq i32 %and89.i.i.i.i, 0
  br i1 %tobool90.not.i.i.i.i, label %if.end84.i.i.i.i.if.end193.i.i.i.i_crit_edge, label %if.then91.i.i.i.i

if.end84.i.i.i.i.if.end193.i.i.i.i_crit_edge:     ; preds = %if.end84.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193.i.i.i.i

if.then91.i.i.i.i:                                ; preds = %if.end84.i.i.i.i
  %and94.i.i.i.i = and i32 %257, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i.i.i.i)
  %tobool95.not.i.i.i.i = icmp eq i32 %and94.i.i.i.i, 0
  br i1 %tobool95.not.i.i.i.i, label %if.else110.i.i.i.i, label %if.then96.i.i.i.i

if.then96.i.i.i.i:                                ; preds = %if.then91.i.i.i.i
  %258 = ptrtoint ptr %erasing.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %bf.load.i.i.i.i = load i8, ptr %erasing.i.i.i.i, align 1
  %259 = and i8 %bf.load.i.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool97.not.i.i.i.i = icmp eq i8 %259, 0
  br i1 %tobool97.not.i.i.i.i, label %if.then98.i.i.i.i, label %if.then96.i.i.i.i.if.end102.i.i.i.i_crit_edge

if.then96.i.i.i.i.if.end102.i.i.i.i_crit_edge:    ; preds = %if.then96.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i.i.i.i

if.then98.i.i.i.i:                                ; preds = %if.then96.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %260 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i315.i.i.i.i = and i32 %261, 4095
  %arrayidx.i.i.i316.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i315.i.i.i.i
  %262 = ptrtoint ptr %arrayidx.i.i.i316.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 92, ptr %arrayidx.i.i.i316.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %263 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i12.i318.i.i.i.i = add i32 %264, 1
  store i32 %inc.i12.i318.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %265 = ptrtoint ptr %erasing.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %bf.load100.i.i.i.i = load i8, ptr %erasing.i.i.i.i, align 1
  %bf.set.i.i.i.i = or i8 %bf.load100.i.i.i.i, 64
  store i8 %bf.set.i.i.i.i, ptr %erasing.i.i.i.i, align 1
  br label %if.end102.i.i.i.i

if.end102.i.i.i.i:                                ; preds = %if.then98.i.i.i.i, %if.then96.i.i.i.i.if.end102.i.i.i.i_crit_edge
  %266 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %disc_data, align 4
  %conv.i321.i.i.i.i = zext i8 %248 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %248)
  %cmp.i322.i.i.i.i = icmp eq i8 %248, -1
  br i1 %cmp.i322.i.i.i.i, label %if.then.i329.i.i.i.i, label %if.else.i333.i.i.i.i

if.then.i329.i.i.i.i:                             ; preds = %if.end102.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i323.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %267, i32 0, i32 3
  %268 = ptrtoint ptr %echo_head.i.i323.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %echo_head.i.i323.i.i.i.i, align 4
  %and.i.i.i324.i.i.i.i = and i32 %269, 4095
  %arrayidx.i.i.i325.i.i.i.i = getelementptr %struct.n_tty_data, ptr %267, i32 0, i32 13, i32 %and.i.i.i324.i.i.i.i
  %270 = ptrtoint ptr %arrayidx.i.i.i325.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 -1, ptr %arrayidx.i.i.i325.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %271 = ptrtoint ptr %echo_head.i.i323.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %echo_head.i.i323.i.i.i.i, align 4
  %inc.i.i326.i.i.i.i = add i32 %272, 1
  store i32 %inc.i.i326.i.i.i.i, ptr %echo_head.i.i323.i.i.i.i, align 4
  %and.i.i21.i327.i.i.i.i = and i32 %inc.i.i326.i.i.i.i, 4095
  %arrayidx.i.i22.i328.i.i.i.i = getelementptr %struct.n_tty_data, ptr %267, i32 0, i32 13, i32 %and.i.i21.i327.i.i.i.i
  %273 = ptrtoint ptr %arrayidx.i.i22.i328.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 -1, ptr %arrayidx.i.i22.i328.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit350.i.i.i.i

if.else.i333.i.i.i.i:                             ; preds = %if.end102.i.i.i.i
  %274 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %c_lflag.i, align 4
  %and.i331.i.i.i.i = and i32 %275, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i331.i.i.i.i)
  %tobool.not.i332.i.i.i.i = icmp eq i32 %and.i331.i.i.i.i, 0
  br i1 %tobool.not.i332.i.i.i.i, label %if.else.i333.i.i.i.i.if.end.i347.i.i.i.i_crit_edge, label %land.lhs.true.i338.i.i.i.i

if.else.i333.i.i.i.i.if.end.i347.i.i.i.i_crit_edge: ; preds = %if.else.i333.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i347.i.i.i.i

land.lhs.true.i338.i.i.i.i:                       ; preds = %if.else.i333.i.i.i.i
  %arrayidx.i334.i.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i321.i.i.i.i
  %276 = ptrtoint ptr %arrayidx.i334.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx.i334.i.i.i.i, align 1
  %278 = and i8 %277, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %cmp5.not.i335.i.i.i.i = icmp eq i8 %278, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %248)
  %cmp9.not.i336.i.i.i.i = icmp eq i8 %248, 9
  %or.cond.i337.i.i.i.i = or i1 %cmp9.not.i336.i.i.i.i, %cmp5.not.i335.i.i.i.i
  br i1 %or.cond.i337.i.i.i.i, label %land.lhs.true.i338.i.i.i.i.if.end.i347.i.i.i.i_crit_edge, label %if.then11.i343.i.i.i.i

land.lhs.true.i338.i.i.i.i.if.end.i347.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i338.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i347.i.i.i.i

if.then11.i343.i.i.i.i:                           ; preds = %land.lhs.true.i338.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i24.i339.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %267, i32 0, i32 3
  %279 = ptrtoint ptr %echo_head.i24.i339.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %echo_head.i24.i339.i.i.i.i, align 4
  %and.i.i25.i340.i.i.i.i = and i32 %280, 4095
  %arrayidx.i.i26.i341.i.i.i.i = getelementptr %struct.n_tty_data, ptr %267, i32 0, i32 13, i32 %and.i.i25.i340.i.i.i.i
  %281 = ptrtoint ptr %arrayidx.i.i26.i341.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 -1, ptr %arrayidx.i.i26.i341.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %282 = ptrtoint ptr %echo_head.i24.i339.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %echo_head.i24.i339.i.i.i.i, align 4
  %inc.i27.i342.i.i.i.i = add i32 %283, 1
  store i32 %inc.i27.i342.i.i.i.i, ptr %echo_head.i24.i339.i.i.i.i, align 4
  br label %if.end.i347.i.i.i.i

if.end.i347.i.i.i.i:                              ; preds = %if.then11.i343.i.i.i.i, %land.lhs.true.i338.i.i.i.i.if.end.i347.i.i.i.i_crit_edge, %if.else.i333.i.i.i.i.if.end.i347.i.i.i.i_crit_edge
  %echo_head.i28.i344.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %267, i32 0, i32 3
  %284 = ptrtoint ptr %echo_head.i28.i344.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %echo_head.i28.i344.i.i.i.i, align 4
  %and.i.i29.i345.i.i.i.i = and i32 %285, 4095
  %arrayidx.i.i30.i346.i.i.i.i = getelementptr %struct.n_tty_data, ptr %267, i32 0, i32 13, i32 %and.i.i29.i345.i.i.i.i
  %286 = ptrtoint ptr %arrayidx.i.i30.i346.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %248, ptr %arrayidx.i.i30.i346.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit350.i.i.i.i

echo_char.exit350.i.i.i.i:                        ; preds = %if.end.i347.i.i.i.i, %if.then.i329.i.i.i.i
  %echo_head.i28.sink32.i348.i.i.i.i = phi ptr [ %echo_head.i28.i344.i.i.i.i, %if.end.i347.i.i.i.i ], [ %echo_head.i.i323.i.i.i.i, %if.then.i329.i.i.i.i ]
  %287 = ptrtoint ptr %echo_head.i28.sink32.i348.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %echo_head.i28.sink32.i348.i.i.i.i, align 4
  %inc.i31.i349.i.i.i.i = add i32 %288, 1
  store i32 %inc.i31.i349.i.i.i.i, ptr %echo_head.i28.sink32.i348.i.i.i.i, align 4
  %dec104467.i.i.i.i = sub i32 %240, %head.0.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec104467.i.i.i.i)
  %cmp105.not468.i.i.i.i = icmp eq i32 %dec104467.i.i.i.i, 0
  br i1 %cmp105.not468.i.i.i.i, label %echo_char.exit350.i.i.i.i.if.end193.i.i.i.i_crit_edge, label %echo_char.exit350.i.i.i.i.while.body107.i.i.i.i_crit_edge

echo_char.exit350.i.i.i.i.while.body107.i.i.i.i_crit_edge: ; preds = %echo_char.exit350.i.i.i.i
  br label %while.body107.i.i.i.i

echo_char.exit350.i.i.i.i.if.end193.i.i.i.i_crit_edge: ; preds = %echo_char.exit350.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193.i.i.i.i

while.body107.i.i.i.i:                            ; preds = %echo_char_raw.exit.i.i.i.i.while.body107.i.i.i.i_crit_edge, %echo_char.exit350.i.i.i.i.while.body107.i.i.i.i_crit_edge
  %dec104470.i.i.i.i = phi i32 [ %dec104.i.i.i.i, %echo_char_raw.exit.i.i.i.i.while.body107.i.i.i.i_crit_edge ], [ %dec104467.i.i.i.i, %echo_char.exit350.i.i.i.i.while.body107.i.i.i.i_crit_edge ]
  %head.1469.i.i.i.i = phi i32 [ %inc108.i.i.i.i, %echo_char_raw.exit.i.i.i.i.while.body107.i.i.i.i_crit_edge ], [ %dec.i.i.i.i, %echo_char.exit350.i.i.i.i.while.body107.i.i.i.i_crit_edge ]
  %inc108.i.i.i.i = add i32 %head.1469.i.i.i.i, 1
  %and.i351.i.i.i.i = and i32 %inc108.i.i.i.i, 4095
  %arrayidx.i352.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 11, i32 %and.i351.i.i.i.i
  %289 = ptrtoint ptr %arrayidx.i352.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx.i352.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %290)
  %cmp.i353.i.i.i.i = icmp eq i8 %290, -1
  %291 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i355.i.i.i.i = and i32 %292, 4095
  %arrayidx.i.i.i356.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i355.i.i.i.i
  br i1 %cmp.i353.i.i.i.i, label %if.then.i358.i.i.i.i, label %if.else.i359.i.i.i.i

if.then.i358.i.i.i.i:                             ; preds = %while.body107.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %293 = ptrtoint ptr %arrayidx.i.i.i356.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 -1, ptr %arrayidx.i.i.i356.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %294 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i.i357.i.i.i.i = add i32 %295, 1
  store i32 %inc.i.i357.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i6.i.i.i.i.i = and i32 %inc.i.i357.i.i.i.i, 4095
  %arrayidx.i.i7.i.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i6.i.i.i.i.i
  %296 = ptrtoint ptr %arrayidx.i.i7.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 -1, ptr %arrayidx.i.i7.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char_raw.exit.i.i.i.i

if.else.i359.i.i.i.i:                             ; preds = %while.body107.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %297 = ptrtoint ptr %arrayidx.i.i.i356.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %290, ptr %arrayidx.i.i.i356.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char_raw.exit.i.i.i.i

echo_char_raw.exit.i.i.i.i:                       ; preds = %if.else.i359.i.i.i.i, %if.then.i358.i.i.i.i
  %298 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i12.i360.i.i.i.i = add i32 %299, 1
  store i32 %inc.i12.i360.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i363.i.i.i.i = and i32 %inc.i12.i360.i.i.i.i, 4095
  %arrayidx.i.i.i364.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i363.i.i.i.i
  %300 = ptrtoint ptr %arrayidx.i.i.i364.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 -1, ptr %arrayidx.i.i.i364.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %301 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i.i365.i.i.i.i = add i32 %302, 1
  store i32 %inc.i.i365.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i3.i.i.i.i.i = and i32 %inc.i.i365.i.i.i.i, 4095
  %arrayidx.i.i4.i.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i3.i.i.i.i.i
  %303 = ptrtoint ptr %arrayidx.i.i4.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 -128, ptr %arrayidx.i.i4.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %304 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i5.i.i.i.i.i = add i32 %305, 1
  store i32 %inc.i5.i.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %dec104.i.i.i.i = add i32 %dec104470.i.i.i.i, -1
  %cmp105.not.i.i.i.i = icmp eq i32 %dec104.i.i.i.i, 0
  br i1 %cmp105.not.i.i.i.i, label %echo_char_raw.exit.i.i.i.i.if.end193.i.i.i.i_crit_edge, label %echo_char_raw.exit.i.i.i.i.while.body107.i.i.i.i_crit_edge

echo_char_raw.exit.i.i.i.i.while.body107.i.i.i.i_crit_edge: ; preds = %echo_char_raw.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body107.i.i.i.i

echo_char_raw.exit.i.i.i.i.if.end193.i.i.i.i_crit_edge: ; preds = %echo_char_raw.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193.i.i.i.i

if.else110.i.i.i.i:                               ; preds = %if.then91.i.i.i.i
  %and115.i.i.i.i = and i32 %257, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i.i.i.i)
  %tobool116.not.i.i.i.i = icmp eq i32 %and115.i.i.i.i, 0
  %or.cond296.i.i.i.i = select i1 %cmp99.i.i.i, i1 %tobool116.not.i.i.i.i, i1 false
  br i1 %or.cond296.i.i.i.i, label %if.then117.i.i.i.i, label %if.else121.i.i.i.i

if.then117.i.i.i.i:                               ; preds = %if.else110.i.i.i.i
  %306 = ptrtoint ptr %arrayidx97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx97.i.i.i, align 1
  %308 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %disc_data, align 4
  %conv.i367.i.i.i.i = zext i8 %307 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %307)
  %cmp.i368.i.i.i.i = icmp eq i8 %307, -1
  br i1 %cmp.i368.i.i.i.i, label %if.then.i375.i.i.i.i, label %if.else.i379.i.i.i.i

if.then.i375.i.i.i.i:                             ; preds = %if.then117.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i369.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %309, i32 0, i32 3
  %310 = ptrtoint ptr %echo_head.i.i369.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %echo_head.i.i369.i.i.i.i, align 4
  %and.i.i.i370.i.i.i.i = and i32 %311, 4095
  %arrayidx.i.i.i371.i.i.i.i = getelementptr %struct.n_tty_data, ptr %309, i32 0, i32 13, i32 %and.i.i.i370.i.i.i.i
  %312 = ptrtoint ptr %arrayidx.i.i.i371.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 -1, ptr %arrayidx.i.i.i371.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %313 = ptrtoint ptr %echo_head.i.i369.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %echo_head.i.i369.i.i.i.i, align 4
  %inc.i.i372.i.i.i.i = add i32 %314, 1
  store i32 %inc.i.i372.i.i.i.i, ptr %echo_head.i.i369.i.i.i.i, align 4
  %and.i.i21.i373.i.i.i.i = and i32 %inc.i.i372.i.i.i.i, 4095
  %arrayidx.i.i22.i374.i.i.i.i = getelementptr %struct.n_tty_data, ptr %309, i32 0, i32 13, i32 %and.i.i21.i373.i.i.i.i
  %315 = ptrtoint ptr %arrayidx.i.i22.i374.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 -1, ptr %arrayidx.i.i22.i374.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %if.end193.sink.split.i.i.i.i

if.else.i379.i.i.i.i:                             ; preds = %if.then117.i.i.i.i
  %and.i377.i.i.i.i = and i32 %257, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i377.i.i.i.i)
  %tobool.not.i378.i.i.i.i = icmp eq i32 %and.i377.i.i.i.i, 0
  br i1 %tobool.not.i378.i.i.i.i, label %if.else.i379.i.i.i.i.if.end.i393.i.i.i.i_crit_edge, label %land.lhs.true.i384.i.i.i.i

if.else.i379.i.i.i.i.if.end.i393.i.i.i.i_crit_edge: ; preds = %if.else.i379.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i393.i.i.i.i

land.lhs.true.i384.i.i.i.i:                       ; preds = %if.else.i379.i.i.i.i
  %arrayidx.i380.i.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i367.i.i.i.i
  %316 = ptrtoint ptr %arrayidx.i380.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx.i380.i.i.i.i, align 1
  %318 = and i8 %317, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %cmp5.not.i381.i.i.i.i = icmp eq i8 %318, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %307)
  %cmp9.not.i382.i.i.i.i = icmp eq i8 %307, 9
  %or.cond.i383.i.i.i.i = or i1 %cmp9.not.i382.i.i.i.i, %cmp5.not.i381.i.i.i.i
  br i1 %or.cond.i383.i.i.i.i, label %land.lhs.true.i384.i.i.i.i.if.end.i393.i.i.i.i_crit_edge, label %if.then11.i389.i.i.i.i

land.lhs.true.i384.i.i.i.i.if.end.i393.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i384.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i393.i.i.i.i

if.then11.i389.i.i.i.i:                           ; preds = %land.lhs.true.i384.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i24.i385.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %309, i32 0, i32 3
  %319 = ptrtoint ptr %echo_head.i24.i385.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %echo_head.i24.i385.i.i.i.i, align 4
  %and.i.i25.i386.i.i.i.i = and i32 %320, 4095
  %arrayidx.i.i26.i387.i.i.i.i = getelementptr %struct.n_tty_data, ptr %309, i32 0, i32 13, i32 %and.i.i25.i386.i.i.i.i
  %321 = ptrtoint ptr %arrayidx.i.i26.i387.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 -1, ptr %arrayidx.i.i26.i387.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %322 = ptrtoint ptr %echo_head.i24.i385.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %echo_head.i24.i385.i.i.i.i, align 4
  %inc.i27.i388.i.i.i.i = add i32 %323, 1
  store i32 %inc.i27.i388.i.i.i.i, ptr %echo_head.i24.i385.i.i.i.i, align 4
  br label %if.end.i393.i.i.i.i

if.end.i393.i.i.i.i:                              ; preds = %if.then11.i389.i.i.i.i, %land.lhs.true.i384.i.i.i.i.if.end.i393.i.i.i.i_crit_edge, %if.else.i379.i.i.i.i.if.end.i393.i.i.i.i_crit_edge
  %echo_head.i28.i390.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %309, i32 0, i32 3
  %324 = ptrtoint ptr %echo_head.i28.i390.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %echo_head.i28.i390.i.i.i.i, align 4
  %and.i.i29.i391.i.i.i.i = and i32 %325, 4095
  %arrayidx.i.i30.i392.i.i.i.i = getelementptr %struct.n_tty_data, ptr %309, i32 0, i32 13, i32 %and.i.i29.i391.i.i.i.i
  %326 = ptrtoint ptr %arrayidx.i.i30.i392.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %307, ptr %arrayidx.i.i30.i392.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %if.end193.sink.split.i.i.i.i

if.else121.i.i.i.i:                               ; preds = %if.else110.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %248)
  %cmp123.i.i.i.i = icmp eq i8 %248, 9
  br i1 %cmp123.i.i.i.i, label %while.cond127.preheader.i.i.i.i, label %if.else163.i.i.i.i

while.cond127.preheader.i.i.i.i:                  ; preds = %if.else121.i.i.i.i
  %327 = xor i32 %dec.i.i.i.i, %242
  %328 = and i32 %327, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %cmp131.not471.i.i.i.i = icmp eq i32 %328, 0
  br i1 %cmp131.not471.i.i.i.i, label %while.cond127.preheader.i.i.i.i.while.end162.i.i.i.i_crit_edge, label %while.body133.lr.ph.i.i.i.i

while.cond127.preheader.i.i.i.i.while.end162.i.i.i.i_crit_edge: ; preds = %while.cond127.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end162.i.i.i.i

while.body133.lr.ph.i.i.i.i:                      ; preds = %while.cond127.preheader.i.i.i.i
  %and150.i.i.i.i = and i32 %257, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i.i.i.i)
  %tobool151.not.i.i.i.i = icmp eq i32 %and150.i.i.i.i, 0
  br label %while.body133.i.i.i.i

while.body133.i.i.i.i:                            ; preds = %if.end161.i.i.i.i.while.body133.i.i.i.i_crit_edge, %while.body133.lr.ph.i.i.i.i
  %tail.0473.i.i.i.i = phi i32 [ %dec.i.i.i.i, %while.body133.lr.ph.i.i.i.i ], [ %dec134.i.i.i.i, %if.end161.i.i.i.i.while.body133.i.i.i.i_crit_edge ]
  %num_chars.0472.i.i.i.i = phi i32 [ 0, %while.body133.lr.ph.i.i.i.i ], [ %num_chars.1.i.i.i.i, %if.end161.i.i.i.i.while.body133.i.i.i.i_crit_edge ]
  %dec134.i.i.i.i = add i32 %tail.0473.i.i.i.i, -1
  %and.i397.i.i.i.i = and i32 %dec134.i.i.i.i, 4095
  %arrayidx.i398.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 11, i32 %and.i397.i.i.i.i
  %329 = ptrtoint ptr %arrayidx.i398.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx.i398.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %330)
  %cmp137.i.i.i.i = icmp eq i8 %330, 9
  br i1 %cmp137.i.i.i.i, label %while.body133.i.i.i.i.while.end162.loopexit.i.i.i.i_crit_edge, label %if.else140.i.i.i.i

while.body133.i.i.i.i.while.end162.loopexit.i.i.i.i_crit_edge: ; preds = %while.body133.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end162.loopexit.i.i.i.i

if.else140.i.i.i.i:                               ; preds = %while.body133.i.i.i.i
  %conv136.i.i.i.i = zext i8 %330 to i32
  %arrayidx142.i.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv136.i.i.i.i
  %331 = ptrtoint ptr %arrayidx142.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx142.i.i.i.i, align 1
  %333 = and i8 %332, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %333)
  %cmp145.not.i.i.i.i = icmp eq i8 %333, 0
  br i1 %cmp145.not.i.i.i.i, label %if.else154.i.i.i.i, label %if.then147.i.i.i.i

if.then147.i.i.i.i:                               ; preds = %if.else140.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i.i = add i32 %num_chars.0472.i.i.i.i, 2
  %spec.select.i.i73.i.i = select i1 %tobool151.not.i.i.i.i, i32 %num_chars.0472.i.i.i.i, i32 %add.i.i.i.i
  br label %if.end161.i.i.i.i

if.else154.i.i.i.i:                               ; preds = %if.else140.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %334 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %termios, align 4
  %and.i400.i.i.i.i = and i32 %335, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i400.i.i.i.i)
  %tobool.not.i401.i.i.i.i = icmp eq i32 %and.i400.i.i.i.i, 0
  %336 = and i8 %330, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %336)
  %cmp.i.i402.i.i.i.i = icmp ne i8 %336, -128
  %tobool156.not.i.i.i.i = or i1 %cmp.i.i402.i.i.i.i, %tobool.not.i401.i.i.i.i
  %inc158.i.i.i.i = zext i1 %tobool156.not.i.i.i.i to i32
  %spec.select297.i.i.i.i = add i32 %num_chars.0472.i.i.i.i, %inc158.i.i.i.i
  br label %if.end161.i.i.i.i

if.end161.i.i.i.i:                                ; preds = %if.else154.i.i.i.i, %if.then147.i.i.i.i
  %num_chars.1.i.i.i.i = phi i32 [ %spec.select.i.i73.i.i, %if.then147.i.i.i.i ], [ %spec.select297.i.i.i.i, %if.else154.i.i.i.i ]
  %337 = xor i32 %dec134.i.i.i.i, %242
  %338 = and i32 %337, 4095
  %cmp131.not.i.i.i.i = icmp eq i32 %338, 0
  br i1 %cmp131.not.i.i.i.i, label %if.end161.i.i.i.i.while.end162.loopexit.i.i.i.i_crit_edge, label %if.end161.i.i.i.i.while.body133.i.i.i.i_crit_edge

if.end161.i.i.i.i.while.body133.i.i.i.i_crit_edge: ; preds = %if.end161.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body133.i.i.i.i

if.end161.i.i.i.i.while.end162.loopexit.i.i.i.i_crit_edge: ; preds = %if.end161.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end162.loopexit.i.i.i.i

while.end162.loopexit.i.i.i.i:                    ; preds = %if.end161.i.i.i.i.while.end162.loopexit.i.i.i.i_crit_edge, %while.body133.i.i.i.i.while.end162.loopexit.i.i.i.i_crit_edge
  %num_chars.0.lcssa.ph.i.i.i.i = phi i32 [ %num_chars.1.i.i.i.i, %if.end161.i.i.i.i.while.end162.loopexit.i.i.i.i_crit_edge ], [ %num_chars.0472.i.i.i.i, %while.body133.i.i.i.i.while.end162.loopexit.i.i.i.i_crit_edge ]
  %339 = xor i1 %cmp137.i.i.i.i, true
  br label %while.end162.i.i.i.i

while.end162.i.i.i.i:                             ; preds = %while.end162.loopexit.i.i.i.i, %while.cond127.preheader.i.i.i.i.while.end162.i.i.i.i_crit_edge
  %num_chars.0.lcssa.i.i.i.i = phi i32 [ 0, %while.cond127.preheader.i.i.i.i.while.end162.i.i.i.i_crit_edge ], [ %num_chars.0.lcssa.ph.i.i.i.i, %while.end162.loopexit.i.i.i.i ]
  %cmp131.not.lcssa.i.i.i.i = phi i1 [ true, %while.cond127.preheader.i.i.i.i.while.end162.i.i.i.i_crit_edge ], [ %339, %while.end162.loopexit.i.i.i.i ]
  %340 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i405.i.i.i.i = and i32 %341, 4095
  %arrayidx.i.i.i406.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i405.i.i.i.i
  %342 = ptrtoint ptr %arrayidx.i.i.i406.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 -1, ptr %arrayidx.i.i.i406.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %343 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i.i407.i.i.i.i = add i32 %344, 1
  store i32 %inc.i.i407.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i6.i408.i.i.i.i = and i32 %inc.i.i407.i.i.i.i, 4095
  %arrayidx.i.i7.i409.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i6.i408.i.i.i.i
  %345 = ptrtoint ptr %arrayidx.i.i7.i409.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 -126, ptr %arrayidx.i.i7.i409.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %346 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i8.i.i.i.i.i = add i32 %347, 1
  store i32 %inc.i8.i.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i410.i.i.i.i = and i32 %num_chars.0.lcssa.i.i.i.i, 7
  %or.i.i.i.i.i = or i32 %and.i410.i.i.i.i, 128
  %spec.select199 = select i1 %cmp131.not.lcssa.i.i.i.i, i32 %and.i410.i.i.i.i, i32 %or.i.i.i.i.i
  %conv.i412.i.i.i.i = trunc i32 %spec.select199 to i8
  %and.i.i10.i.i.i.i.i = and i32 %inc.i8.i.i.i.i.i, 4095
  %arrayidx.i.i11.i.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i10.i.i.i.i.i
  %348 = ptrtoint ptr %arrayidx.i.i11.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %conv.i412.i.i.i.i, ptr %arrayidx.i.i11.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %if.end193.sink.split.i.i.i.i

if.else163.i.i.i.i:                               ; preds = %if.else121.i.i.i.i
  %conv122.i.i.i.i = zext i8 %248 to i32
  %arrayidx165.i.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv122.i.i.i.i
  %349 = ptrtoint ptr %arrayidx165.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx165.i.i.i.i, align 1
  %351 = and i8 %350, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %cmp168.not.i.i.i.i = icmp eq i8 %351, 0
  br i1 %cmp168.not.i.i.i.i, label %if.else163.i.i.i.i.if.then188.i.i.i.i_crit_edge, label %land.lhs.true170.i.i.i.i

if.else163.i.i.i.i.if.then188.i.i.i.i_crit_edge:  ; preds = %if.else163.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then188.i.i.i.i

land.lhs.true170.i.i.i.i:                         ; preds = %if.else163.i.i.i.i
  %and173.i.i.i.i = and i32 %257, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173.i.i.i.i)
  %tobool174.not.i.i.i.i = icmp eq i32 %and173.i.i.i.i, 0
  br i1 %tobool174.not.i.i.i.i, label %land.lhs.true170.i.i.i.i.lor.lhs.false183.i.i.i.i_crit_edge, label %if.then175.i.i.i.i

land.lhs.true170.i.i.i.i.lor.lhs.false183.i.i.i.i_crit_edge: ; preds = %land.lhs.true170.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false183.i.i.i.i

if.then175.i.i.i.i:                               ; preds = %land.lhs.true170.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %352 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i415.i.i.i.i = and i32 %353, 4095
  %arrayidx.i.i.i416.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i415.i.i.i.i
  %354 = ptrtoint ptr %arrayidx.i.i.i416.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 8, ptr %arrayidx.i.i.i416.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %355 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i12.i418.i.i.i.i = add i32 %356, 1
  store i32 %inc.i12.i418.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i421.i.i.i.i = and i32 %inc.i12.i418.i.i.i.i, 4095
  %arrayidx.i.i.i422.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i421.i.i.i.i
  %357 = ptrtoint ptr %arrayidx.i.i.i422.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 32, ptr %arrayidx.i.i.i422.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %358 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i12.i424.i.i.i.i = add i32 %359, 1
  store i32 %inc.i12.i424.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i427.i.i.i.i = and i32 %inc.i12.i424.i.i.i.i, 4095
  %arrayidx.i.i.i428.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i427.i.i.i.i
  %360 = ptrtoint ptr %arrayidx.i.i.i428.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 8, ptr %arrayidx.i.i.i428.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %361 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i12.i430.i.i.i.i = add i32 %362, 1
  store i32 %inc.i12.i430.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  br label %lor.lhs.false183.i.i.i.i

lor.lhs.false183.i.i.i.i:                         ; preds = %if.then175.i.i.i.i, %land.lhs.true170.i.i.i.i.lor.lhs.false183.i.i.i.i_crit_edge
  %363 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %c_lflag.i, align 4
  %and186.i.i.i.i = and i32 %364, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186.i.i.i.i)
  %tobool187.not.i.i.i.i = icmp eq i32 %and186.i.i.i.i, 0
  br i1 %tobool187.not.i.i.i.i, label %lor.lhs.false183.i.i.i.i.if.end193.i.i.i.i_crit_edge, label %lor.lhs.false183.i.i.i.i.if.then188.i.i.i.i_crit_edge

lor.lhs.false183.i.i.i.i.if.then188.i.i.i.i_crit_edge: ; preds = %lor.lhs.false183.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then188.i.i.i.i

lor.lhs.false183.i.i.i.i.if.end193.i.i.i.i_crit_edge: ; preds = %lor.lhs.false183.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193.i.i.i.i

if.then188.i.i.i.i:                               ; preds = %lor.lhs.false183.i.i.i.i.if.then188.i.i.i.i_crit_edge, %if.else163.i.i.i.i.if.then188.i.i.i.i_crit_edge
  %365 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i433.i.i.i.i = and i32 %366, 4095
  %arrayidx.i.i.i434.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i433.i.i.i.i
  %367 = ptrtoint ptr %arrayidx.i.i.i434.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 8, ptr %arrayidx.i.i.i434.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %368 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i12.i436.i.i.i.i = add i32 %369, 1
  store i32 %inc.i12.i436.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i439.i.i.i.i = and i32 %inc.i12.i436.i.i.i.i, 4095
  %arrayidx.i.i.i440.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i439.i.i.i.i
  %370 = ptrtoint ptr %arrayidx.i.i.i440.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 32, ptr %arrayidx.i.i.i440.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %371 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i12.i442.i.i.i.i = add i32 %372, 1
  store i32 %inc.i12.i442.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i445.i.i.i.i = and i32 %inc.i12.i442.i.i.i.i, 4095
  %arrayidx.i.i.i446.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i445.i.i.i.i
  %373 = ptrtoint ptr %arrayidx.i.i.i446.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 8, ptr %arrayidx.i.i.i446.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %if.end193.sink.split.i.i.i.i

if.end193.sink.split.i.i.i.i:                     ; preds = %if.then188.i.i.i.i, %while.end162.i.i.i.i, %if.end.i393.i.i.i.i, %if.then.i375.i.i.i.i
  %echo_head.i.i314.sink487.i.i.i.i = phi ptr [ %echo_head.i.i314.i.i.i.i, %while.end162.i.i.i.i ], [ %echo_head.i.i314.i.i.i.i, %if.then188.i.i.i.i ], [ %echo_head.i28.i390.i.i.i.i, %if.end.i393.i.i.i.i ], [ %echo_head.i.i369.i.i.i.i, %if.then.i375.i.i.i.i ]
  %374 = ptrtoint ptr %echo_head.i.i314.sink487.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %echo_head.i.i314.sink487.i.i.i.i, align 4
  %inc.i12.i413.i.i.i.i = add i32 %375, 1
  store i32 %inc.i12.i413.i.i.i.i, ptr %echo_head.i.i314.sink487.i.i.i.i, align 4
  br label %if.end193.i.i.i.i

if.end193.i.i.i.i:                                ; preds = %if.end193.sink.split.i.i.i.i, %lor.lhs.false183.i.i.i.i.if.end193.i.i.i.i_crit_edge, %echo_char_raw.exit.i.i.i.i.if.end193.i.i.i.i_crit_edge, %echo_char.exit350.i.i.i.i.if.end193.i.i.i.i_crit_edge, %if.end84.i.i.i.i.if.end193.i.i.i.i_crit_edge
  br i1 %cmp99.i.i.i, label %if.end193.i.i.i.i.while.end198.i.i.i.i_crit_edge, label %if.end193.i.i.i.i.while.cond.i.i.i.i_crit_edge

if.end193.i.i.i.i.while.cond.i.i.i.i_crit_edge:   ; preds = %if.end193.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i.i

if.end193.i.i.i.i.while.end198.i.i.i.i_crit_edge: ; preds = %if.end193.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end198.i.i.i.i

while.end198.i.i.i.i:                             ; preds = %if.end193.i.i.i.i.while.end198.i.i.i.i_crit_edge, %if.else79.i.i.i.i.while.end198.i.i.i.i_crit_edge, %land.rhs.i.i.i.i.while.end198.i.i.i.i_crit_edge, %while.cond.i.i.i.i.while.end198.i.i.i.i_crit_edge
  %376 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %238, align 4
  %378 = ptrtoint ptr %canon_head.i559562.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %canon_head.i559562.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %377, i32 %379)
  %cmp201.i.i.i.i = icmp eq i32 %377, %379
  br i1 %cmp201.i.i.i.i, label %land.lhs.true203.i.i.i.i, label %while.end198.i.i.i.i.eraser.exit.i.i.i_crit_edge

while.end198.i.i.i.i.eraser.exit.i.i.i_crit_edge: ; preds = %while.end198.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %eraser.exit.i.i.i

land.lhs.true203.i.i.i.i:                         ; preds = %while.end198.i.i.i.i
  %380 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %c_lflag.i, align 4
  %and206.i.i.i.i = and i32 %381, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206.i.i.i.i)
  %tobool207.not.i.i.i.i = icmp eq i32 %and206.i.i.i.i, 0
  br i1 %tobool207.not.i.i.i.i, label %land.lhs.true203.i.i.i.i.eraser.exit.i.i.i_crit_edge, label %if.then208.i.i.i.i

land.lhs.true203.i.i.i.i.eraser.exit.i.i.i_crit_edge: ; preds = %land.lhs.true203.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %eraser.exit.i.i.i

if.then208.i.i.i.i:                               ; preds = %land.lhs.true203.i.i.i.i
  %382 = ptrtoint ptr %erasing.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %bf.load.i451.i.i.i.i = load i8, ptr %erasing.i.i.i.i, align 1
  %383 = and i8 %bf.load.i451.i.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %tobool.not.i452.i.i.i.i = icmp eq i8 %383, 0
  br i1 %tobool.not.i452.i.i.i.i, label %if.then208.i.i.i.i.eraser.exit.i.i.i_crit_edge, label %if.then.i459.i.i.i.i

if.then208.i.i.i.i.eraser.exit.i.i.i_crit_edge:   ; preds = %if.then208.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %eraser.exit.i.i.i

if.then.i459.i.i.i.i:                             ; preds = %if.then208.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %384 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %and.i.i.i.i454.i.i.i.i = and i32 %385, 4095
  %arrayidx.i.i.i.i455.i.i.i.i = getelementptr %struct.n_tty_data, ptr %238, i32 0, i32 13, i32 %and.i.i.i.i454.i.i.i.i
  %386 = ptrtoint ptr %arrayidx.i.i.i.i455.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 47, ptr %arrayidx.i.i.i.i455.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %387 = ptrtoint ptr %echo_head.i.i314.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %echo_head.i.i314.i.i.i.i, align 4
  %inc.i12.i.i456.i.i.i.i = add i32 %388, 1
  store i32 %inc.i12.i.i456.i.i.i.i, ptr %echo_head.i.i314.i.i.i.i, align 4
  %389 = ptrtoint ptr %erasing.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %bf.load2.i457.i.i.i.i = load i8, ptr %erasing.i.i.i.i, align 1
  %bf.clear3.i458.i.i.i.i = and i8 %bf.load2.i457.i.i.i.i, -65
  store i8 %bf.clear3.i458.i.i.i.i, ptr %erasing.i.i.i.i, align 1
  br label %eraser.exit.i.i.i

eraser.exit.i.i.i:                                ; preds = %if.then.i459.i.i.i.i, %if.then208.i.i.i.i.eraser.exit.i.i.i_crit_edge, %land.lhs.true203.i.i.i.i.eraser.exit.i.i.i_crit_edge, %while.end198.i.i.i.i.eraser.exit.i.i.i_crit_edge, %if.then42.i.i.i.i, %echo_char.exit.i.i.i.i.eraser.exit.i.i.i_crit_edge, %if.then15.i.i.i.i, %if.then121.thread.i.i.i.eraser.exit.i.i.i_crit_edge, %if.then121.i.i.i.eraser.exit.i.i.i_crit_edge
  %390 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %disc_data, align 4
  %output_lock.i430.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %391, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i430.i.i.i, i32 noundef 0) #9
  %echo_head.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %391, i32 0, i32 3
  %392 = ptrtoint ptr %echo_head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %echo_head.i.i.i.i, align 4
  %echo_mark.i431.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %391, i32 0, i32 5
  %394 = ptrtoint ptr %echo_mark.i431.i.i.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %393, ptr %echo_mark.i431.i.i.i, align 4
  %echo_commit.i432.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %391, i32 0, i32 4
  %echo_tail.i433.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %391, i32 0, i32 18
  %395 = ptrtoint ptr %echo_tail.i433.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %echo_tail.i433.i.i.i, align 4
  %sub2.i.i.i.i = sub i32 %393, %396
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub2.i.i.i.i)
  %cmp.i434.i.i.i = icmp ult i32 %sub2.i.i.i.i, 256
  br i1 %cmp.i434.i.i.i, label %eraser.exit.i.i.i.if.then.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

eraser.exit.i.i.i.if.then.i.i.i.i_crit_edge:      ; preds = %eraser.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %eraser.exit.i.i.i
  %397 = ptrtoint ptr %echo_commit.i432.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %echo_commit.i432.i.i.i, align 4
  %sub.i.i74.i.i = sub i32 %398, %396
  %rem.i.i.i.i = and i32 %sub2.i.i.i.i, 255
  %rem3.i.i.i.i = and i32 %sub.i.i74.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i.i.i, i32 %rem3.i.i.i.i)
  %cmp4.i.i.i.i = icmp ugt i32 %rem.i.i.i.i, %rem3.i.i.i.i
  br i1 %cmp4.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, label %if.end.i437.i.i.i

lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, %eraser.exit.i.i.i.if.then.i.i.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %output_lock.i430.i.i.i) #9
  br label %cleanup.i.i

if.end.i437.i.i.i:                                ; preds = %lor.lhs.false.i.i.i.i
  %399 = ptrtoint ptr %echo_commit.i432.i.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %393, ptr %echo_commit.i432.i.i.i, align 4
  %call.i435.i.i.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i430.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i435.i.i.i)
  %tobool.not.i436.i.i.i = icmp eq i32 %call.i435.i.i.i, 0
  br i1 %tobool.not.i436.i.i.i, label %if.end.i437.i.i.i.cleanup.i.i_crit_edge, label %land.lhs.true.i440.i.i.i

if.end.i437.i.i.i.cleanup.i.i_crit_edge:          ; preds = %if.end.i437.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true.i440.i.i.i:                         ; preds = %if.end.i437.i.i.i
  %400 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %ops.i.i.i.i, align 4
  %flush_chars.i439.i.i.i = getelementptr inbounds %struct.tty_operations, ptr %401, i32 0, i32 9
  %402 = ptrtoint ptr %flush_chars.i439.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %flush_chars.i439.i.i.i, align 4
  %tobool8.not.i.i.i.i = icmp eq ptr %403, null
  br i1 %tobool8.not.i.i.i.i, label %land.lhs.true.i440.i.i.i.cleanup.i.i_crit_edge, label %if.then9.i.i.i.i

land.lhs.true.i440.i.i.i.cleanup.i.i_crit_edge:   ; preds = %land.lhs.true.i440.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then9.i.i.i.i:                                 ; preds = %land.lhs.true.i440.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %403(ptr noundef %tty) #9
  br label %cleanup.i.i

if.end122.i.i.i:                                  ; preds = %land.lhs.true116.i.i.i.if.end122.i.i.i_crit_edge, %lor.lhs.false108.i.i.i.if.end122.i.i.i_crit_edge
  %404 = ptrtoint ptr %arrayidx126.i.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %arrayidx126.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.0.i.i.i, i8 %405)
  %cmp128.i.i.i = icmp eq i8 %c.addr.0.i.i.i, %405
  br i1 %cmp128.i.i.i, label %land.lhs.true130.i.i.i, label %if.end122.i.i.i.if.end150.i.i.i_crit_edge

if.end122.i.i.i.if.end150.i.i.i_crit_edge:        ; preds = %if.end122.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150.i.i.i

land.lhs.true130.i.i.i:                           ; preds = %if.end122.i.i.i
  %406 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %c_lflag.i, align 4
  %and133.i.i.i = and i32 %407, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i.i.i)
  %tobool134.not.i.i.i = icmp eq i32 %and133.i.i.i, 0
  br i1 %tobool134.not.i.i.i, label %land.lhs.true130.i.i.i.if.end150.i.i.i_crit_edge, label %if.then135.i.i.i

land.lhs.true130.i.i.i.if.end150.i.i.i_crit_edge: ; preds = %land.lhs.true130.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150.i.i.i

if.then135.i.i.i:                                 ; preds = %land.lhs.true130.i.i.i
  %bf.set.i.i.i = or i8 %bf.load.i71.i.i, -128
  %408 = ptrtoint ptr %icanon.i.i.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 %bf.set.i.i.i, ptr %icanon.i.i.i, align 1
  %409 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %c_lflag.i, align 4
  %and140.i.i.i = and i32 %410, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i.i.i)
  %tobool141.not.i.i.i = icmp eq i32 %and140.i.i.i, 0
  br i1 %tobool141.not.i.i.i, label %if.then135.i.i.i.cleanup.i.i_crit_edge, label %if.then142.i.i.i

if.then135.i.i.i.cleanup.i.i_crit_edge:           ; preds = %if.then135.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then142.i.i.i:                                 ; preds = %if.then135.i.i.i
  %411 = and i8 %bf.load.i71.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %411)
  %tobool.not.i162 = icmp eq i8 %411, 0
  br i1 %tobool.not.i162, label %if.then142.i.i.i.finish_erasing.exit_crit_edge, label %if.then.i166

if.then142.i.i.i.finish_erasing.exit_crit_edge:   ; preds = %if.then142.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %finish_erasing.exit

if.then.i166:                                     ; preds = %if.then142.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i.i163 = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 3
  %412 = ptrtoint ptr %echo_head.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %echo_head.i.i.i163, align 4
  %and.i.i.i.i164 = and i32 %413, 4095
  %arrayidx.i.i.i.i165 = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i.i.i164
  %414 = ptrtoint ptr %arrayidx.i.i.i.i165 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 47, ptr %arrayidx.i.i.i.i165, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %415 = ptrtoint ptr %echo_head.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %echo_head.i.i.i163, align 4
  %inc.i12.i.i = add i32 %416, 1
  store i32 %inc.i12.i.i, ptr %echo_head.i.i.i163, align 4
  %417 = ptrtoint ptr %icanon.i.i.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %bf.load2.i = load i8, ptr %icanon.i.i.i, align 1
  %bf.clear3.i = and i8 %bf.load2.i, -65
  store i8 %bf.clear3.i, ptr %icanon.i.i.i, align 1
  br label %finish_erasing.exit

finish_erasing.exit:                              ; preds = %if.then.i166, %if.then142.i.i.i.finish_erasing.exit_crit_edge
  %418 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %c_lflag.i, align 4
  %and145.i.i.i = and i32 %419, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145.i.i.i)
  %tobool146.not.i.i.i = icmp eq i32 %and145.i.i.i, 0
  br i1 %tobool146.not.i.i.i, label %finish_erasing.exit.cleanup.i.i_crit_edge, label %if.then147.i.i.i

finish_erasing.exit.cleanup.i.i_crit_edge:        ; preds = %finish_erasing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then147.i.i.i:                                 ; preds = %finish_erasing.exit
  %echo_head.i.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 3
  %420 = ptrtoint ptr %echo_head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %echo_head.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %421, 4095
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i.i.i.i.i
  %422 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 94, ptr %arrayidx.i.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %423 = ptrtoint ptr %echo_head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %echo_head.i.i.i.i.i, align 4
  %inc.i12.i.i.i.i = add i32 %424, 1
  store i32 %inc.i12.i.i.i.i, ptr %echo_head.i.i.i.i.i, align 4
  %and.i.i.i444.i.i.i = and i32 %inc.i12.i.i.i.i, 4095
  %arrayidx.i.i.i445.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i.i444.i.i.i
  %425 = ptrtoint ptr %arrayidx.i.i.i445.i.i.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 8, ptr %arrayidx.i.i.i445.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %426 = ptrtoint ptr %echo_head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %echo_head.i.i.i.i.i, align 4
  %inc.i12.i447.i.i.i = add i32 %427, 1
  store i32 %inc.i12.i447.i.i.i, ptr %echo_head.i.i.i.i.i, align 4
  %428 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %disc_data, align 4
  %output_lock.i139 = getelementptr inbounds %struct.n_tty_data, ptr %429, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i139, i32 noundef 0) #9
  %echo_head.i140 = getelementptr inbounds %struct.n_tty_data, ptr %429, i32 0, i32 3
  %430 = ptrtoint ptr %echo_head.i140 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %echo_head.i140, align 4
  %echo_mark.i141 = getelementptr inbounds %struct.n_tty_data, ptr %429, i32 0, i32 5
  %432 = ptrtoint ptr %echo_mark.i141 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %431, ptr %echo_mark.i141, align 4
  %echo_commit.i142 = getelementptr inbounds %struct.n_tty_data, ptr %429, i32 0, i32 4
  %echo_tail.i143 = getelementptr inbounds %struct.n_tty_data, ptr %429, i32 0, i32 18
  %433 = ptrtoint ptr %echo_tail.i143 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %echo_tail.i143, align 4
  %sub2.i144 = sub i32 %431, %434
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub2.i144)
  %cmp.i145 = icmp ult i32 %sub2.i144, 256
  br i1 %cmp.i145, label %if.then147.i.i.i.if.then.i151_crit_edge, label %lor.lhs.false.i150

if.then147.i.i.i.if.then.i151_crit_edge:          ; preds = %if.then147.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i151

lor.lhs.false.i150:                               ; preds = %if.then147.i.i.i
  %435 = ptrtoint ptr %echo_commit.i142 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %echo_commit.i142, align 4
  %sub.i146 = sub i32 %436, %434
  %rem.i147 = and i32 %sub2.i144, 255
  %rem3.i148 = and i32 %sub.i146, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i147, i32 %rem3.i148)
  %cmp4.i149 = icmp ugt i32 %rem.i147, %rem3.i148
  br i1 %cmp4.i149, label %lor.lhs.false.i150.if.then.i151_crit_edge, label %if.end.i154

lor.lhs.false.i150.if.then.i151_crit_edge:        ; preds = %lor.lhs.false.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i151

if.then.i151:                                     ; preds = %lor.lhs.false.i150.if.then.i151_crit_edge, %if.then147.i.i.i.if.then.i151_crit_edge
  tail call void @mutex_unlock(ptr noundef %output_lock.i139) #9
  br label %cleanup.i.i

if.end.i154:                                      ; preds = %lor.lhs.false.i150
  %437 = ptrtoint ptr %echo_commit.i142 to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %431, ptr %echo_commit.i142, align 4
  %call.i152 = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i139) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i153 = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i153, label %if.end.i154.cleanup.i.i_crit_edge, label %land.lhs.true.i158

if.end.i154.cleanup.i.i_crit_edge:                ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true.i158:                               ; preds = %if.end.i154
  %438 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %ops.i.i.i.i, align 4
  %flush_chars.i156 = getelementptr inbounds %struct.tty_operations, ptr %439, i32 0, i32 9
  %440 = ptrtoint ptr %flush_chars.i156 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %flush_chars.i156, align 4
  %tobool8.not.i157 = icmp eq ptr %441, null
  br i1 %tobool8.not.i157, label %land.lhs.true.i158.cleanup.i.i_crit_edge, label %if.then9.i159

land.lhs.true.i158.cleanup.i.i_crit_edge:         ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then9.i159:                                    ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %441(ptr noundef %tty) #9
  br label %cleanup.i.i

if.end150.i.i.i:                                  ; preds = %land.lhs.true130.i.i.i.if.end150.i.i.i_crit_edge, %if.end122.i.i.i.if.end150.i.i.i_crit_edge
  %442 = ptrtoint ptr %arrayidx154.i.i.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %arrayidx154.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.0.i.i.i, i8 %443)
  %cmp156.i.i.i = icmp eq i8 %c.addr.0.i.i.i, %443
  br i1 %cmp156.i.i.i, label %land.lhs.true158.i.i.i, label %if.end150.i.i.i.if.end173.i.i.i_crit_edge

if.end150.i.i.i.if.end173.i.i.i_crit_edge:        ; preds = %if.end150.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173.i.i.i

land.lhs.true158.i.i.i:                           ; preds = %if.end150.i.i.i
  %444 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %c_lflag.i, align 4
  %446 = and i32 %445, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 32776, i32 %446)
  %.not.i.i.i = icmp eq i32 %446, 32776
  br i1 %.not.i.i.i, label %if.then168.i.i.i, label %land.lhs.true158.i.i.i.if.end173.i.i.i_crit_edge

land.lhs.true158.i.i.i.if.end173.i.i.i_crit_edge: ; preds = %land.lhs.true158.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173.i.i.i

if.then168.i.i.i:                                 ; preds = %land.lhs.true158.i.i.i
  %canon_head.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 2
  %447 = ptrtoint ptr %canon_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %canon_head.i.i.i, align 4
  %449 = and i8 %bf.load.i71.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %449)
  %tobool.not.i130.i.i = icmp eq i8 %449, 0
  br i1 %tobool.not.i130.i.i, label %if.then168.i.i.i.finish_erasing.exit.i.i_crit_edge, label %if.then.i135.i.i

if.then168.i.i.i.finish_erasing.exit.i.i_crit_edge: ; preds = %if.then168.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %finish_erasing.exit.i.i

if.then.i135.i.i:                                 ; preds = %if.then168.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i.i131.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 3
  %450 = ptrtoint ptr %echo_head.i.i.i131.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %echo_head.i.i.i131.i.i, align 4
  %and.i.i.i.i132.i.i = and i32 %451, 4095
  %arrayidx.i.i.i.i133.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i.i.i132.i.i
  %452 = ptrtoint ptr %arrayidx.i.i.i.i133.i.i to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 47, ptr %arrayidx.i.i.i.i133.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %453 = ptrtoint ptr %echo_head.i.i.i131.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %echo_head.i.i.i131.i.i, align 4
  %inc.i12.i.i134.i.i = add i32 %454, 1
  store i32 %inc.i12.i.i134.i.i, ptr %echo_head.i.i.i131.i.i, align 4
  %455 = ptrtoint ptr %icanon.i.i.i to i32
  call void @__asan_load1_noabort(i32 %455)
  %bf.load2.i.i.i = load i8, ptr %icanon.i.i.i, align 1
  %bf.clear3.i.i.i = and i8 %bf.load2.i.i.i, -65
  store i8 %bf.clear3.i.i.i, ptr %icanon.i.i.i, align 1
  br label %finish_erasing.exit.i.i

finish_erasing.exit.i.i:                          ; preds = %if.then.i135.i.i, %if.then168.i.i.i.finish_erasing.exit.i.i_crit_edge
  %456 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %disc_data, align 4
  %conv.i114.i.i = zext i8 %c.addr.0.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %c.addr.0.i.i.i)
  %cmp.i115.i.i = icmp eq i8 %c.addr.0.i.i.i, -1
  br i1 %cmp.i115.i.i, label %if.then.i120.i.i, label %if.else.i124.i.i

if.then.i120.i.i:                                 ; preds = %finish_erasing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i116.i.i = getelementptr inbounds %struct.n_tty_data, ptr %457, i32 0, i32 3
  %458 = ptrtoint ptr %echo_head.i.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %echo_head.i.i116.i.i, align 4
  %and.i.i.i117.i.i = and i32 %459, 4095
  %arrayidx.i.i.i118.i.i = getelementptr %struct.n_tty_data, ptr %457, i32 0, i32 13, i32 %and.i.i.i117.i.i
  %460 = ptrtoint ptr %arrayidx.i.i.i118.i.i to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 -1, ptr %arrayidx.i.i.i118.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %461 = ptrtoint ptr %echo_head.i.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %echo_head.i.i116.i.i, align 4
  %inc.i.i119.i.i = add i32 %462, 1
  store i32 %inc.i.i119.i.i, ptr %echo_head.i.i116.i.i, align 4
  %and.i.i21.i.i.i = and i32 %inc.i.i119.i.i, 4095
  %arrayidx.i.i22.i.i.i = getelementptr %struct.n_tty_data, ptr %457, i32 0, i32 13, i32 %and.i.i21.i.i.i
  %463 = ptrtoint ptr %arrayidx.i.i22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 -1, ptr %arrayidx.i.i22.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit.i.i

if.else.i124.i.i:                                 ; preds = %finish_erasing.exit.i.i
  %464 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %c_lflag.i, align 4
  %and.i122.i.i = and i32 %465, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122.i.i)
  %tobool.not.i123.i.i = icmp eq i32 %and.i122.i.i, 0
  br i1 %tobool.not.i123.i.i, label %if.else.i124.i.i.if.end.i128.i.i_crit_edge, label %land.lhs.true.i127.i.i

if.else.i124.i.i.if.end.i128.i.i_crit_edge:       ; preds = %if.else.i124.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i128.i.i

land.lhs.true.i127.i.i:                           ; preds = %if.else.i124.i.i
  %arrayidx.i125.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i114.i.i
  %466 = ptrtoint ptr %arrayidx.i125.i.i to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %arrayidx.i125.i.i, align 1
  %468 = and i8 %467, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %468)
  %cmp5.not.i.i.i = icmp eq i8 %468, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %c.addr.0.i.i.i)
  %cmp9.not.i.i.i = icmp eq i8 %c.addr.0.i.i.i, 9
  %or.cond.i126.i.i = or i1 %cmp9.not.i.i.i, %cmp5.not.i.i.i
  br i1 %or.cond.i126.i.i, label %land.lhs.true.i127.i.i.if.end.i128.i.i_crit_edge, label %if.then11.i.i.i

land.lhs.true.i127.i.i.if.end.i128.i.i_crit_edge: ; preds = %land.lhs.true.i127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i128.i.i

if.then11.i.i.i:                                  ; preds = %land.lhs.true.i127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i24.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %457, i32 0, i32 3
  %469 = ptrtoint ptr %echo_head.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %echo_head.i24.i.i.i, align 4
  %and.i.i25.i.i.i = and i32 %470, 4095
  %arrayidx.i.i26.i.i.i = getelementptr %struct.n_tty_data, ptr %457, i32 0, i32 13, i32 %and.i.i25.i.i.i
  %471 = ptrtoint ptr %arrayidx.i.i26.i.i.i to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 -1, ptr %arrayidx.i.i26.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %472 = ptrtoint ptr %echo_head.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %echo_head.i24.i.i.i, align 4
  %inc.i27.i.i.i = add i32 %473, 1
  store i32 %inc.i27.i.i.i, ptr %echo_head.i24.i.i.i, align 4
  br label %if.end.i128.i.i

if.end.i128.i.i:                                  ; preds = %if.then11.i.i.i, %land.lhs.true.i127.i.i.if.end.i128.i.i_crit_edge, %if.else.i124.i.i.if.end.i128.i.i_crit_edge
  %echo_head.i28.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %457, i32 0, i32 3
  %474 = ptrtoint ptr %echo_head.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %echo_head.i28.i.i.i, align 4
  %and.i.i29.i.i.i = and i32 %475, 4095
  %arrayidx.i.i30.i.i.i = getelementptr %struct.n_tty_data, ptr %457, i32 0, i32 13, i32 %and.i.i29.i.i.i
  %476 = ptrtoint ptr %arrayidx.i.i30.i.i.i to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 %c.addr.0.i.i.i, ptr %arrayidx.i.i30.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit.i.i

echo_char.exit.i.i:                               ; preds = %if.end.i128.i.i, %if.then.i120.i.i
  %echo_head.i28.sink32.i.i.i = phi ptr [ %echo_head.i28.i.i.i, %if.end.i128.i.i ], [ %echo_head.i.i116.i.i, %if.then.i120.i.i ]
  %477 = ptrtoint ptr %echo_head.i28.sink32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %echo_head.i28.sink32.i.i.i, align 4
  %inc.i31.i.i.i = add i32 %478, 1
  store i32 %inc.i31.i.i.i, ptr %echo_head.i28.sink32.i.i.i, align 4
  %echo_head.i.i449.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 3
  %479 = ptrtoint ptr %echo_head.i.i449.i.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %echo_head.i.i449.i.i.i, align 4
  %and.i.i.i450.i.i.i = and i32 %480, 4095
  %arrayidx.i.i.i451.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i.i450.i.i.i
  %481 = ptrtoint ptr %arrayidx.i.i.i451.i.i.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 10, ptr %arrayidx.i.i.i451.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %482 = ptrtoint ptr %echo_head.i.i449.i.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %echo_head.i.i449.i.i.i, align 4
  %inc.i12.i453.i.i.i = add i32 %483, 1
  store i32 %inc.i12.i453.i.i.i, ptr %echo_head.i.i449.i.i.i, align 4
  %484 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %122, align 4
  %486 = xor i32 %485, %448
  %487 = and i32 %486, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %487)
  %cmp171.not569.i.i.i = icmp eq i32 %487, 0
  br i1 %cmp171.not569.i.i.i, label %echo_char.exit.i.i.while.end.i.i.i_crit_edge, label %echo_char.exit.i.i.while.body.i.i.i_crit_edge

echo_char.exit.i.i.while.body.i.i.i_crit_edge:    ; preds = %echo_char.exit.i.i
  br label %while.body.i.i.i

echo_char.exit.i.i.while.end.i.i.i_crit_edge:     ; preds = %echo_char.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %echo_char.exit.i.i.i.while.body.i.i.i_crit_edge, %echo_char.exit.i.i.while.body.i.i.i_crit_edge
  %tail.0570.i.i.i = phi i32 [ %inc.i76.i.i, %echo_char.exit.i.i.i.while.body.i.i.i_crit_edge ], [ %448, %echo_char.exit.i.i.while.body.i.i.i_crit_edge ]
  %and.i455.i.i.i = and i32 %tail.0570.i.i.i, 4095
  %arrayidx.i456.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 11, i32 %and.i455.i.i.i
  %488 = ptrtoint ptr %arrayidx.i456.i.i.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %arrayidx.i456.i.i.i, align 1
  %490 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %disc_data, align 4
  %conv.i.i75.i.i = zext i8 %489 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %489)
  %cmp.i458.i.i.i = icmp eq i8 %489, -1
  br i1 %cmp.i458.i.i.i, label %if.then.i462.i.i.i, label %if.else.i466.i.i.i

if.then.i462.i.i.i:                               ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i459.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %491, i32 0, i32 3
  %492 = ptrtoint ptr %echo_head.i.i459.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %echo_head.i.i459.i.i.i, align 4
  %and.i.i.i460.i.i.i = and i32 %493, 4095
  %arrayidx.i.i.i461.i.i.i = getelementptr %struct.n_tty_data, ptr %491, i32 0, i32 13, i32 %and.i.i.i460.i.i.i
  %494 = ptrtoint ptr %arrayidx.i.i.i461.i.i.i to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 -1, ptr %arrayidx.i.i.i461.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %495 = ptrtoint ptr %echo_head.i.i459.i.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %echo_head.i.i459.i.i.i, align 4
  %inc.i.i.i.i.i = add i32 %496, 1
  store i32 %inc.i.i.i.i.i, ptr %echo_head.i.i459.i.i.i, align 4
  %and.i.i21.i.i.i.i = and i32 %inc.i.i.i.i.i, 4095
  %arrayidx.i.i22.i.i.i.i = getelementptr %struct.n_tty_data, ptr %491, i32 0, i32 13, i32 %and.i.i21.i.i.i.i
  %497 = ptrtoint ptr %arrayidx.i.i22.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 -1, ptr %arrayidx.i.i22.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit.i.i.i

if.else.i466.i.i.i:                               ; preds = %while.body.i.i.i
  %498 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %c_lflag.i, align 4
  %and.i464.i.i.i = and i32 %499, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i464.i.i.i)
  %tobool.not.i465.i.i.i = icmp eq i32 %and.i464.i.i.i, 0
  br i1 %tobool.not.i465.i.i.i, label %if.else.i466.i.i.i.if.end.i469.i.i.i_crit_edge, label %land.lhs.true.i468.i.i.i

if.else.i466.i.i.i.if.end.i469.i.i.i_crit_edge:   ; preds = %if.else.i466.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i469.i.i.i

land.lhs.true.i468.i.i.i:                         ; preds = %if.else.i466.i.i.i
  %arrayidx.i467.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i75.i.i
  %500 = ptrtoint ptr %arrayidx.i467.i.i.i to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %arrayidx.i467.i.i.i, align 1
  %502 = and i8 %501, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %502)
  %cmp5.not.i.i.i.i = icmp eq i8 %502, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %489)
  %cmp9.not.i.i.i.i = icmp eq i8 %489, 9
  %or.cond.i.i.i.i = or i1 %cmp9.not.i.i.i.i, %cmp5.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %land.lhs.true.i468.i.i.i.if.end.i469.i.i.i_crit_edge, label %if.then11.i.i.i.i

land.lhs.true.i468.i.i.i.if.end.i469.i.i.i_crit_edge: ; preds = %land.lhs.true.i468.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i469.i.i.i

if.then11.i.i.i.i:                                ; preds = %land.lhs.true.i468.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i24.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %491, i32 0, i32 3
  %503 = ptrtoint ptr %echo_head.i24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %echo_head.i24.i.i.i.i, align 4
  %and.i.i25.i.i.i.i = and i32 %504, 4095
  %arrayidx.i.i26.i.i.i.i = getelementptr %struct.n_tty_data, ptr %491, i32 0, i32 13, i32 %and.i.i25.i.i.i.i
  %505 = ptrtoint ptr %arrayidx.i.i26.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 -1, ptr %arrayidx.i.i26.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %506 = ptrtoint ptr %echo_head.i24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %echo_head.i24.i.i.i.i, align 4
  %inc.i27.i.i.i.i = add i32 %507, 1
  store i32 %inc.i27.i.i.i.i, ptr %echo_head.i24.i.i.i.i, align 4
  br label %if.end.i469.i.i.i

if.end.i469.i.i.i:                                ; preds = %if.then11.i.i.i.i, %land.lhs.true.i468.i.i.i.if.end.i469.i.i.i_crit_edge, %if.else.i466.i.i.i.if.end.i469.i.i.i_crit_edge
  %echo_head.i28.i.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %491, i32 0, i32 3
  %508 = ptrtoint ptr %echo_head.i28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %echo_head.i28.i.i.i.i, align 4
  %and.i.i29.i.i.i.i = and i32 %509, 4095
  %arrayidx.i.i30.i.i.i.i = getelementptr %struct.n_tty_data, ptr %491, i32 0, i32 13, i32 %and.i.i29.i.i.i.i
  %510 = ptrtoint ptr %arrayidx.i.i30.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 %489, ptr %arrayidx.i.i30.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit.i.i.i

echo_char.exit.i.i.i:                             ; preds = %if.end.i469.i.i.i, %if.then.i462.i.i.i
  %echo_head.i28.sink32.i.i.i.i = phi ptr [ %echo_head.i28.i.i.i.i, %if.end.i469.i.i.i ], [ %echo_head.i.i459.i.i.i, %if.then.i462.i.i.i ]
  %511 = ptrtoint ptr %echo_head.i28.sink32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %echo_head.i28.sink32.i.i.i.i, align 4
  %inc.i31.i.i.i.i = add i32 %512, 1
  store i32 %inc.i31.i.i.i.i, ptr %echo_head.i28.sink32.i.i.i.i, align 4
  %inc.i76.i.i = add i32 %tail.0570.i.i.i, 1
  %513 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %122, align 4
  %515 = xor i32 %514, %inc.i76.i.i
  %516 = and i32 %515, 4095
  %cmp171.not.i.i.i = icmp eq i32 %516, 0
  br i1 %cmp171.not.i.i.i, label %echo_char.exit.i.i.i.while.end.i.i.i_crit_edge, label %echo_char.exit.i.i.i.while.body.i.i.i_crit_edge

echo_char.exit.i.i.i.while.body.i.i.i_crit_edge:  ; preds = %echo_char.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

echo_char.exit.i.i.i.while.end.i.i.i_crit_edge:   ; preds = %echo_char.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %echo_char.exit.i.i.i.while.end.i.i.i_crit_edge, %echo_char.exit.i.i.while.end.i.i.i_crit_edge
  %517 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %disc_data, align 4
  %output_lock.i91.i.i = getelementptr inbounds %struct.n_tty_data, ptr %518, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i91.i.i, i32 noundef 0) #9
  %echo_head.i92.i.i = getelementptr inbounds %struct.n_tty_data, ptr %518, i32 0, i32 3
  %519 = ptrtoint ptr %echo_head.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %echo_head.i92.i.i, align 4
  %echo_mark.i93.i.i = getelementptr inbounds %struct.n_tty_data, ptr %518, i32 0, i32 5
  %521 = ptrtoint ptr %echo_mark.i93.i.i to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 %520, ptr %echo_mark.i93.i.i, align 4
  %echo_commit.i94.i.i = getelementptr inbounds %struct.n_tty_data, ptr %518, i32 0, i32 4
  %echo_tail.i95.i.i = getelementptr inbounds %struct.n_tty_data, ptr %518, i32 0, i32 18
  %522 = ptrtoint ptr %echo_tail.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %echo_tail.i95.i.i, align 4
  %sub2.i96.i.i = sub i32 %520, %523
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub2.i96.i.i)
  %cmp.i97.i.i = icmp ult i32 %sub2.i96.i.i, 256
  br i1 %cmp.i97.i.i, label %while.end.i.i.i.if.then.i103.i.i_crit_edge, label %lor.lhs.false.i102.i.i

while.end.i.i.i.if.then.i103.i.i_crit_edge:       ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i103.i.i

lor.lhs.false.i102.i.i:                           ; preds = %while.end.i.i.i
  %524 = ptrtoint ptr %echo_commit.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %echo_commit.i94.i.i, align 4
  %sub.i98.i.i = sub i32 %525, %523
  %rem.i99.i.i = and i32 %sub2.i96.i.i, 255
  %rem3.i100.i.i = and i32 %sub.i98.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i99.i.i, i32 %rem3.i100.i.i)
  %cmp4.i101.i.i = icmp ugt i32 %rem.i99.i.i, %rem3.i100.i.i
  br i1 %cmp4.i101.i.i, label %lor.lhs.false.i102.i.i.if.then.i103.i.i_crit_edge, label %if.end.i106.i.i

lor.lhs.false.i102.i.i.if.then.i103.i.i_crit_edge: ; preds = %lor.lhs.false.i102.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i103.i.i

if.then.i103.i.i:                                 ; preds = %lor.lhs.false.i102.i.i.if.then.i103.i.i_crit_edge, %while.end.i.i.i.if.then.i103.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %output_lock.i91.i.i) #9
  br label %cleanup.i.i

if.end.i106.i.i:                                  ; preds = %lor.lhs.false.i102.i.i
  %526 = ptrtoint ptr %echo_commit.i94.i.i to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %520, ptr %echo_commit.i94.i.i, align 4
  %call.i104.i.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i91.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i.i)
  %tobool.not.i105.i.i = icmp eq i32 %call.i104.i.i, 0
  br i1 %tobool.not.i105.i.i, label %if.end.i106.i.i.cleanup.i.i_crit_edge, label %land.lhs.true.i110.i.i

if.end.i106.i.i.cleanup.i.i_crit_edge:            ; preds = %if.end.i106.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true.i110.i.i:                           ; preds = %if.end.i106.i.i
  %527 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %ops.i.i.i.i, align 4
  %flush_chars.i108.i.i = getelementptr inbounds %struct.tty_operations, ptr %528, i32 0, i32 9
  %529 = ptrtoint ptr %flush_chars.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %flush_chars.i108.i.i, align 4
  %tobool8.not.i109.i.i = icmp eq ptr %530, null
  br i1 %tobool8.not.i109.i.i, label %land.lhs.true.i110.i.i.cleanup.i.i_crit_edge, label %if.then9.i111.i.i

land.lhs.true.i110.i.i.cleanup.i.i_crit_edge:     ; preds = %land.lhs.true.i110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then9.i111.i.i:                                ; preds = %land.lhs.true.i110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %530(ptr noundef %tty) #9
  br label %cleanup.i.i

if.end173.i.i.i:                                  ; preds = %land.lhs.true158.i.i.i.if.end173.i.i.i_crit_edge, %if.end150.i.i.i.if.end173.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %c.addr.0.i.i.i)
  %cmp175.i.i.i = icmp eq i8 %c.addr.0.i.i.i, 10
  br i1 %cmp175.i.i.i, label %if.then177.i.i.i, label %if.end189.i.i.i

if.then177.i.i.i:                                 ; preds = %if.end173.i.i.i
  %531 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %c_lflag.i, align 4
  %533 = and i32 %532, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %533)
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %if.then177.i.i.i.handle_newline.i.i.i_crit_edge, label %if.then187.i.i.i

if.then177.i.i.i.handle_newline.i.i.i_crit_edge:  ; preds = %if.then177.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_newline.i.i.i

if.then187.i.i.i:                                 ; preds = %if.then177.i.i.i
  %echo_head.i.i470.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 3
  %535 = ptrtoint ptr %echo_head.i.i470.i.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %echo_head.i.i470.i.i.i, align 4
  %and.i.i.i471.i.i.i = and i32 %536, 4095
  %arrayidx.i.i.i472.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i.i471.i.i.i
  %537 = ptrtoint ptr %arrayidx.i.i.i472.i.i.i to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 10, ptr %arrayidx.i.i.i472.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %538 = ptrtoint ptr %echo_head.i.i470.i.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %echo_head.i.i470.i.i.i, align 4
  %inc.i12.i474.i.i.i = add i32 %539, 1
  store i32 %inc.i12.i474.i.i.i, ptr %echo_head.i.i470.i.i.i, align 4
  %540 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %disc_data, align 4
  %output_lock.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %541, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i.i.i, i32 noundef 0) #9
  %echo_head.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %541, i32 0, i32 3
  %542 = ptrtoint ptr %echo_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %echo_head.i.i.i, align 4
  %echo_mark.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %541, i32 0, i32 5
  %544 = ptrtoint ptr %echo_mark.i.i.i to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %543, ptr %echo_mark.i.i.i, align 4
  %echo_commit.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %541, i32 0, i32 4
  %echo_tail.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %541, i32 0, i32 18
  %545 = ptrtoint ptr %echo_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %echo_tail.i.i.i, align 4
  %sub2.i.i.i = sub i32 %543, %546
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub2.i.i.i)
  %cmp.i83.i.i = icmp ult i32 %sub2.i.i.i, 256
  br i1 %cmp.i83.i.i, label %if.then187.i.i.i.if.then.i86.i.i_crit_edge, label %lor.lhs.false.i85.i.i

if.then187.i.i.i.if.then.i86.i.i_crit_edge:       ; preds = %if.then187.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i86.i.i

lor.lhs.false.i85.i.i:                            ; preds = %if.then187.i.i.i
  %547 = ptrtoint ptr %echo_commit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %echo_commit.i.i.i, align 4
  %sub.i84.i.i = sub i32 %548, %546
  %rem.i.i.i = and i32 %sub2.i.i.i, 255
  %rem3.i.i.i = and i32 %sub.i84.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i.i, i32 %rem3.i.i.i)
  %cmp4.i.i.i = icmp ugt i32 %rem.i.i.i, %rem3.i.i.i
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i85.i.i.if.then.i86.i.i_crit_edge, label %if.end.i88.i.i

lor.lhs.false.i85.i.i.if.then.i86.i.i_crit_edge:  ; preds = %lor.lhs.false.i85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i86.i.i

if.then.i86.i.i:                                  ; preds = %lor.lhs.false.i85.i.i.if.then.i86.i.i_crit_edge, %if.then187.i.i.i.if.then.i86.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %output_lock.i.i.i) #9
  br label %handle_newline.i.i.i

if.end.i88.i.i:                                   ; preds = %lor.lhs.false.i85.i.i
  %549 = ptrtoint ptr %echo_commit.i.i.i to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 %543, ptr %echo_commit.i.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i87.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i87.i.i, label %if.end.i88.i.i.handle_newline.i.i.i_crit_edge, label %land.lhs.true.i89.i.i

if.end.i88.i.i.handle_newline.i.i.i_crit_edge:    ; preds = %if.end.i88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_newline.i.i.i

land.lhs.true.i89.i.i:                            ; preds = %if.end.i88.i.i
  %550 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %ops.i.i.i.i, align 4
  %flush_chars.i.i.i = getelementptr inbounds %struct.tty_operations, ptr %551, i32 0, i32 9
  %552 = ptrtoint ptr %flush_chars.i.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %flush_chars.i.i.i, align 4
  %tobool8.not.i.i.i = icmp eq ptr %553, null
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i89.i.i.handle_newline.i.i.i_crit_edge, label %if.then9.i.i.i

land.lhs.true.i89.i.i.handle_newline.i.i.i_crit_edge: ; preds = %land.lhs.true.i89.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_newline.i.i.i

if.then9.i.i.i:                                   ; preds = %land.lhs.true.i89.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %553(ptr noundef %tty) #9
  br label %handle_newline.i.i.i

if.end189.i.i.i:                                  ; preds = %if.end173.i.i.i
  %554 = ptrtoint ptr %arrayidx193.i.i.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %arrayidx193.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.0.i.i.i, i8 %555)
  %cmp195.i.i.i = icmp eq i8 %c.addr.0.i.i.i, %555
  br i1 %cmp195.i.i.i, label %if.end189.i.i.i.handle_newline.i.i.i_crit_edge, label %if.end198.i.i.i

if.end189.i.i.i.handle_newline.i.i.i_crit_edge:   ; preds = %if.end189.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_newline.i.i.i

if.end198.i.i.i:                                  ; preds = %if.end189.i.i.i
  %556 = ptrtoint ptr %arrayidx202.i.i.i to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %arrayidx202.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.0.i.i.i, i8 %557)
  %cmp204.i.i.i = icmp eq i8 %c.addr.0.i.i.i, %557
  br i1 %cmp204.i.i.i, label %if.end198.i.i.i.if.then219.i.i.i_crit_edge, label %lor.lhs.false206.i.i.i

if.end198.i.i.i.if.then219.i.i.i_crit_edge:       ; preds = %if.end198.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then219.i.i.i

lor.lhs.false206.i.i.i:                           ; preds = %if.end198.i.i.i
  %558 = ptrtoint ptr %arrayidx210.i.i.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %arrayidx210.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.0.i.i.i, i8 %559)
  %cmp212.i.i.i = icmp eq i8 %c.addr.0.i.i.i, %559
  br i1 %cmp212.i.i.i, label %land.lhs.true214.i.i.i, label %lor.lhs.false206.i.i.i.if.end265.i.i.i_crit_edge

lor.lhs.false206.i.i.i.if.end265.i.i.i_crit_edge: ; preds = %lor.lhs.false206.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265.i.i.i

land.lhs.true214.i.i.i:                           ; preds = %lor.lhs.false206.i.i.i
  %560 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %c_lflag.i, align 4
  %and217.i.i.i = and i32 %561, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217.i.i.i)
  %tobool218.not.i.i.i = icmp eq i32 %and217.i.i.i, 0
  br i1 %tobool218.not.i.i.i, label %land.lhs.true214.i.i.i.if.end265.i.i.i_crit_edge, label %land.lhs.true214.i.i.i.if.then219.i.i.i_crit_edge

land.lhs.true214.i.i.i.if.then219.i.i.i_crit_edge: ; preds = %land.lhs.true214.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then219.i.i.i

land.lhs.true214.i.i.i.if.end265.i.i.i_crit_edge: ; preds = %land.lhs.true214.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265.i.i.i

if.then219.i.i.i:                                 ; preds = %land.lhs.true214.i.i.i.if.then219.i.i.i_crit_edge, %if.end198.i.i.i.if.then219.i.i.i_crit_edge
  %562 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %c_lflag.i, align 4
  %and222.i.i.i = and i32 %563, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222.i.i.i)
  %tobool223.not.i.i.i = icmp eq i32 %and222.i.i.i, 0
  br i1 %tobool223.not.i.i.i, label %if.then219.i.i.i.if.end231.i.i.i_crit_edge, label %if.then224.i.i.i

if.then219.i.i.i.if.end231.i.i.i_crit_edge:       ; preds = %if.then219.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231.i.i.i

if.then224.i.i.i:                                 ; preds = %if.then219.i.i.i
  %canon_head225.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 2
  %564 = ptrtoint ptr %canon_head225.i.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %canon_head225.i.i.i, align 4
  %566 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %565, i32 %567)
  %cmp227.i.i.i = icmp eq i32 %565, %567
  br i1 %cmp227.i.i.i, label %if.then229.i.i.i, label %if.then224.i.i.i.if.end230.i.i.i_crit_edge

if.then224.i.i.i.if.end230.i.i.i_crit_edge:       ; preds = %if.then224.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230.i.i.i

if.then229.i.i.i:                                 ; preds = %if.then224.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i134 = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 3
  %568 = ptrtoint ptr %echo_head.i.i134 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %echo_head.i.i134, align 4
  %and.i.i.i135 = and i32 %569, 4095
  %arrayidx.i.i.i136 = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i.i135
  %570 = ptrtoint ptr %arrayidx.i.i.i136 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 -1, ptr %arrayidx.i.i.i136, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %571 = ptrtoint ptr %echo_head.i.i134 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %echo_head.i.i134, align 4
  %inc.i.i137 = add i32 %572, 1
  store i32 %inc.i.i137, ptr %echo_head.i.i134, align 4
  %and.i.i3.i = and i32 %inc.i.i137, 4095
  %arrayidx.i.i4.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i3.i
  %573 = ptrtoint ptr %arrayidx.i.i4.i to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 -127, ptr %arrayidx.i.i4.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %574 = ptrtoint ptr %echo_head.i.i134 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %echo_head.i.i134, align 4
  %inc.i5.i = add i32 %575, 1
  store i32 %inc.i5.i, ptr %echo_head.i.i134, align 4
  br label %if.end230.i.i.i

if.end230.i.i.i:                                  ; preds = %if.then229.i.i.i, %if.then224.i.i.i.if.end230.i.i.i_crit_edge
  %576 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %disc_data, align 4
  %conv.i = zext i8 %c.addr.0.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %c.addr.0.i.i.i)
  %cmp.i123 = icmp eq i8 %c.addr.0.i.i.i, -1
  br i1 %cmp.i123, label %if.then.i127, label %if.else.i131

if.then.i127:                                     ; preds = %if.end230.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i124 = getelementptr inbounds %struct.n_tty_data, ptr %577, i32 0, i32 3
  %578 = ptrtoint ptr %echo_head.i.i124 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %echo_head.i.i124, align 4
  %and.i.i.i125 = and i32 %579, 4095
  %arrayidx.i.i.i126 = getelementptr %struct.n_tty_data, ptr %577, i32 0, i32 13, i32 %and.i.i.i125
  %580 = ptrtoint ptr %arrayidx.i.i.i126 to i32
  call void @__asan_store1_noabort(i32 %580)
  store i8 -1, ptr %arrayidx.i.i.i126, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %581 = ptrtoint ptr %echo_head.i.i124 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %echo_head.i.i124, align 4
  %inc.i.i = add i32 %582, 1
  store i32 %inc.i.i, ptr %echo_head.i.i124, align 4
  %and.i.i21.i = and i32 %inc.i.i, 4095
  %arrayidx.i.i22.i = getelementptr %struct.n_tty_data, ptr %577, i32 0, i32 13, i32 %and.i.i21.i
  %583 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 -1, ptr %arrayidx.i.i22.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit

if.else.i131:                                     ; preds = %if.end230.i.i.i
  %584 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %c_lflag.i, align 4
  %and.i129 = and i32 %585, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.not.i130 = icmp eq i32 %and.i129, 0
  br i1 %tobool.not.i130, label %if.else.i131.if.end.i133_crit_edge, label %land.lhs.true.i132

if.else.i131.if.end.i133_crit_edge:               ; preds = %if.else.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i133

land.lhs.true.i132:                               ; preds = %if.else.i131
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %586 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %arrayidx.i, align 1
  %588 = and i8 %587, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %588)
  %cmp5.not.i = icmp eq i8 %588, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %c.addr.0.i.i.i)
  %cmp9.not.i = icmp eq i8 %c.addr.0.i.i.i, 9
  %or.cond.i = or i1 %cmp9.not.i, %cmp5.not.i
  br i1 %or.cond.i, label %land.lhs.true.i132.if.end.i133_crit_edge, label %if.then11.i

land.lhs.true.i132.if.end.i133_crit_edge:         ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i133

if.then11.i:                                      ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i24.i = getelementptr inbounds %struct.n_tty_data, ptr %577, i32 0, i32 3
  %589 = ptrtoint ptr %echo_head.i24.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %echo_head.i24.i, align 4
  %and.i.i25.i = and i32 %590, 4095
  %arrayidx.i.i26.i = getelementptr %struct.n_tty_data, ptr %577, i32 0, i32 13, i32 %and.i.i25.i
  %591 = ptrtoint ptr %arrayidx.i.i26.i to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 -1, ptr %arrayidx.i.i26.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %592 = ptrtoint ptr %echo_head.i24.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %echo_head.i24.i, align 4
  %inc.i27.i = add i32 %593, 1
  store i32 %inc.i27.i, ptr %echo_head.i24.i, align 4
  br label %if.end.i133

if.end.i133:                                      ; preds = %if.then11.i, %land.lhs.true.i132.if.end.i133_crit_edge, %if.else.i131.if.end.i133_crit_edge
  %echo_head.i28.i = getelementptr inbounds %struct.n_tty_data, ptr %577, i32 0, i32 3
  %594 = ptrtoint ptr %echo_head.i28.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %echo_head.i28.i, align 4
  %and.i.i29.i = and i32 %595, 4095
  %arrayidx.i.i30.i = getelementptr %struct.n_tty_data, ptr %577, i32 0, i32 13, i32 %and.i.i29.i
  %596 = ptrtoint ptr %arrayidx.i.i30.i to i32
  call void @__asan_store1_noabort(i32 %596)
  store i8 %c.addr.0.i.i.i, ptr %arrayidx.i.i30.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit

echo_char.exit:                                   ; preds = %if.end.i133, %if.then.i127
  %echo_head.i28.sink32.i = phi ptr [ %echo_head.i28.i, %if.end.i133 ], [ %echo_head.i.i124, %if.then.i127 ]
  %597 = ptrtoint ptr %echo_head.i28.sink32.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %echo_head.i28.sink32.i, align 4
  %inc.i31.i = add i32 %598, 1
  store i32 %inc.i31.i, ptr %echo_head.i28.sink32.i, align 4
  %599 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %disc_data, align 4
  %output_lock.i = getelementptr inbounds %struct.n_tty_data, ptr %600, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i, i32 noundef 0) #9
  %echo_head.i = getelementptr inbounds %struct.n_tty_data, ptr %600, i32 0, i32 3
  %601 = ptrtoint ptr %echo_head.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %echo_head.i, align 4
  %echo_mark.i = getelementptr inbounds %struct.n_tty_data, ptr %600, i32 0, i32 5
  %603 = ptrtoint ptr %echo_mark.i to i32
  call void @__asan_store4_noabort(i32 %603)
  store i32 %602, ptr %echo_mark.i, align 4
  %echo_commit.i = getelementptr inbounds %struct.n_tty_data, ptr %600, i32 0, i32 4
  %echo_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %600, i32 0, i32 18
  %604 = ptrtoint ptr %echo_tail.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %echo_tail.i, align 4
  %sub2.i = sub i32 %602, %605
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub2.i)
  %cmp.i113 = icmp ult i32 %sub2.i, 256
  br i1 %cmp.i113, label %echo_char.exit.if.then.i115_crit_edge, label %lor.lhs.false.i114

echo_char.exit.if.then.i115_crit_edge:            ; preds = %echo_char.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i115

lor.lhs.false.i114:                               ; preds = %echo_char.exit
  %606 = ptrtoint ptr %echo_commit.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %echo_commit.i, align 4
  %sub.i = sub i32 %607, %605
  %rem.i = and i32 %sub2.i, 255
  %rem3.i = and i32 %sub.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %rem3.i)
  %cmp4.i = icmp ugt i32 %rem.i, %rem3.i
  br i1 %cmp4.i, label %lor.lhs.false.i114.if.then.i115_crit_edge, label %if.end.i117

lor.lhs.false.i114.if.then.i115_crit_edge:        ; preds = %lor.lhs.false.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i115

if.then.i115:                                     ; preds = %lor.lhs.false.i114.if.then.i115_crit_edge, %echo_char.exit.if.then.i115_crit_edge
  tail call void @mutex_unlock(ptr noundef %output_lock.i) #9
  br label %if.end231.i.i.i

if.end.i117:                                      ; preds = %lor.lhs.false.i114
  %608 = ptrtoint ptr %echo_commit.i to i32
  call void @__asan_store4_noabort(i32 %608)
  store i32 %602, ptr %echo_commit.i, align 4
  %call.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i116 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i116, label %if.end.i117.if.end231.i.i.i_crit_edge, label %land.lhs.true.i121

if.end.i117.if.end231.i.i.i_crit_edge:            ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231.i.i.i

land.lhs.true.i121:                               ; preds = %if.end.i117
  %609 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %ops.i.i.i.i, align 4
  %flush_chars.i119 = getelementptr inbounds %struct.tty_operations, ptr %610, i32 0, i32 9
  %611 = ptrtoint ptr %flush_chars.i119 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %flush_chars.i119, align 4
  %tobool8.not.i120 = icmp eq ptr %612, null
  br i1 %tobool8.not.i120, label %land.lhs.true.i121.if.end231.i.i.i_crit_edge, label %if.then9.i

land.lhs.true.i121.if.end231.i.i.i_crit_edge:     ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231.i.i.i

if.then9.i:                                       ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %612(ptr noundef %tty) #9
  br label %if.end231.i.i.i

if.end231.i.i.i:                                  ; preds = %if.then9.i, %land.lhs.true.i121.if.end231.i.i.i_crit_edge, %if.end.i117.if.end231.i.i.i_crit_edge, %if.then.i115, %if.then219.i.i.i.if.end231.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %c.addr.0.i.i.i)
  %cmp233.i.i.i = icmp eq i8 %c.addr.0.i.i.i, -1
  br i1 %cmp233.i.i.i, label %land.lhs.true235.i.i.i, label %if.end231.i.i.i.handle_newline.i.i.i_crit_edge

if.end231.i.i.i.handle_newline.i.i.i_crit_edge:   ; preds = %if.end231.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_newline.i.i.i

land.lhs.true235.i.i.i:                           ; preds = %if.end231.i.i.i
  %613 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %termios, align 4
  %and238.i.i.i = and i32 %614, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238.i.i.i)
  %tobool239.not.i.i.i = icmp eq i32 %and238.i.i.i, 0
  br i1 %tobool239.not.i.i.i, label %land.lhs.true235.i.i.i.handle_newline.i.i.i_crit_edge, label %if.then240.i.i.i

land.lhs.true235.i.i.i.handle_newline.i.i.i_crit_edge: ; preds = %land.lhs.true235.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_newline.i.i.i

if.then240.i.i.i:                                 ; preds = %land.lhs.true235.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %615 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %122, align 4
  %and.i.i476.i.i.i = and i32 %616, 4095
  %arrayidx.i.i477.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 11, i32 %and.i.i476.i.i.i
  %617 = ptrtoint ptr %arrayidx.i.i477.i.i.i to i32
  call void @__asan_store1_noabort(i32 %617)
  store i8 -1, ptr %arrayidx.i.i477.i.i.i, align 1
  %inc.i478.i.i.i = add i32 %616, 1
  store i32 %inc.i478.i.i.i, ptr %122, align 4
  br label %handle_newline.i.i.i

handle_newline.i.i.i:                             ; preds = %if.then240.i.i.i, %land.lhs.true235.i.i.i.handle_newline.i.i.i_crit_edge, %if.end231.i.i.i.handle_newline.i.i.i_crit_edge, %if.end189.i.i.i.handle_newline.i.i.i_crit_edge, %if.then9.i.i.i, %land.lhs.true.i89.i.i.handle_newline.i.i.i_crit_edge, %if.end.i88.i.i.handle_newline.i.i.i_crit_edge, %if.then.i86.i.i, %if.then177.i.i.i.handle_newline.i.i.i_crit_edge
  %c.addr.1.i77.i.i = phi i8 [ -1, %if.then240.i.i.i ], [ -1, %land.lhs.true235.i.i.i.handle_newline.i.i.i_crit_edge ], [ %c.addr.0.i.i.i, %if.end231.i.i.i.handle_newline.i.i.i_crit_edge ], [ 10, %if.then177.i.i.i.handle_newline.i.i.i_crit_edge ], [ 0, %if.end189.i.i.i.handle_newline.i.i.i_crit_edge ], [ 10, %if.then.i86.i.i ], [ 10, %if.end.i88.i.i.handle_newline.i.i.i_crit_edge ], [ 10, %land.lhs.true.i89.i.i.handle_newline.i.i.i_crit_edge ], [ 10, %if.then9.i.i.i ]
  %618 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %122, align 4
  %and243.i.i.i = and i32 %619, 4095
  %read_flags.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 12
  tail call void @_set_bit(i32 noundef %and243.i.i.i, ptr noundef %read_flags.i.i.i) #9
  %620 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %122, align 4
  %and.i.i479.i.i.i = and i32 %621, 4095
  %arrayidx.i.i480.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 11, i32 %and.i.i479.i.i.i
  %622 = ptrtoint ptr %arrayidx.i.i480.i.i.i to i32
  call void @__asan_store1_noabort(i32 %622)
  store i8 %c.addr.1.i77.i.i, ptr %arrayidx.i.i480.i.i.i, align 1
  %inc.i481.i.i.i = add i32 %621, 1
  store i32 %inc.i481.i.i.i, ptr %122, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  %623 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %122, align 4
  %canon_head255.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 2
  %625 = ptrtoint ptr %canon_head255.i.i.i to i32
  call void @__asan_store4_noabort(i32 %625)
  store volatile i32 %624, ptr %canon_head255.i.i.i, align 4
  tail call void @kill_fasync(ptr noundef %fasync.i.i.i, i32 noundef 29, i32 noundef 1) #9
  tail call void @__wake_up(ptr noundef %read_wait.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #9
  br label %cleanup.i.i

if.end265.i.i.i:                                  ; preds = %land.lhs.true214.i.i.i.if.end265.i.i.i_crit_edge, %lor.lhs.false206.i.i.i.if.end265.i.i.i_crit_edge, %if.end91.i.i.i.if.end265.i.i.i_crit_edge
  %626 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %c_lflag.i, align 4
  %and268.i.i.i = and i32 %627, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268.i.i.i)
  %tobool269.not.i.i.i = icmp eq i32 %and268.i.i.i, 0
  br i1 %tobool269.not.i.i.i, label %if.end265.i.i.i.if.end283.i.i.i_crit_edge, label %if.then270.i.i.i

if.end265.i.i.i.if.end283.i.i.i_crit_edge:        ; preds = %if.end265.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end283.i.i.i

if.then270.i.i.i:                                 ; preds = %if.end265.i.i.i
  %628 = and i8 %bf.load.i71.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %628)
  %tobool.not.i484.i.i.i = icmp eq i8 %628, 0
  br i1 %tobool.not.i484.i.i.i, label %if.then270.i.i.i.finish_erasing.exit.i.i.i_crit_edge, label %if.then.i489.i.i.i

if.then270.i.i.i.finish_erasing.exit.i.i.i_crit_edge: ; preds = %if.then270.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %finish_erasing.exit.i.i.i

if.then.i489.i.i.i:                               ; preds = %if.then270.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i.i485.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 3
  %629 = ptrtoint ptr %echo_head.i.i.i485.i.i.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %echo_head.i.i.i485.i.i.i, align 4
  %and.i.i.i.i486.i.i.i = and i32 %630, 4095
  %arrayidx.i.i.i.i487.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i.i.i486.i.i.i
  %631 = ptrtoint ptr %arrayidx.i.i.i.i487.i.i.i to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 47, ptr %arrayidx.i.i.i.i487.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %632 = ptrtoint ptr %echo_head.i.i.i485.i.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %echo_head.i.i.i485.i.i.i, align 4
  %inc.i12.i.i488.i.i.i = add i32 %633, 1
  store i32 %inc.i12.i.i488.i.i.i, ptr %echo_head.i.i.i485.i.i.i, align 4
  %634 = ptrtoint ptr %icanon.i.i.i to i32
  call void @__asan_load1_noabort(i32 %634)
  %bf.load2.i.i.i.i = load i8, ptr %icanon.i.i.i, align 1
  %bf.clear3.i.i.i.i = and i8 %bf.load2.i.i.i.i, -65
  store i8 %bf.clear3.i.i.i.i, ptr %icanon.i.i.i, align 1
  br label %finish_erasing.exit.i.i.i

finish_erasing.exit.i.i.i:                        ; preds = %if.then.i489.i.i.i, %if.then270.i.i.i.finish_erasing.exit.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %c.addr.0.i.i.i)
  %cmp272.i.i.i = icmp eq i8 %c.addr.0.i.i.i, 10
  br i1 %cmp272.i.i.i, label %if.then274.i.i.i, label %if.else275.i.i.i

if.then274.i.i.i:                                 ; preds = %finish_erasing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i491.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 3
  %635 = ptrtoint ptr %echo_head.i.i491.i.i.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %echo_head.i.i491.i.i.i, align 4
  %and.i.i.i492.i.i.i = and i32 %636, 4095
  %arrayidx.i.i.i493.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i.i492.i.i.i
  %637 = ptrtoint ptr %arrayidx.i.i.i493.i.i.i to i32
  call void @__asan_store1_noabort(i32 %637)
  store i8 10, ptr %arrayidx.i.i.i493.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %if.end282.i.i.i

if.else275.i.i.i:                                 ; preds = %finish_erasing.exit.i.i.i
  %canon_head276.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 2
  %638 = ptrtoint ptr %canon_head276.i.i.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %canon_head276.i.i.i, align 4
  %640 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %639, i32 %641)
  %cmp278.i.i.i = icmp eq i32 %639, %641
  br i1 %cmp278.i.i.i, label %if.then280.i.i.i, label %if.else275.i.i.i.if.end281.i.i.i_crit_edge

if.else275.i.i.i.if.end281.i.i.i_crit_edge:       ; preds = %if.else275.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end281.i.i.i

if.then280.i.i.i:                                 ; preds = %if.else275.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i78.i.i = getelementptr inbounds %struct.n_tty_data, ptr %122, i32 0, i32 3
  %642 = ptrtoint ptr %echo_head.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %echo_head.i.i78.i.i, align 4
  %and.i.i.i79.i.i = and i32 %643, 4095
  %arrayidx.i.i.i80.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i.i79.i.i
  %644 = ptrtoint ptr %arrayidx.i.i.i80.i.i to i32
  call void @__asan_store1_noabort(i32 %644)
  store i8 -1, ptr %arrayidx.i.i.i80.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %645 = ptrtoint ptr %echo_head.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %echo_head.i.i78.i.i, align 4
  %inc.i.i81.i.i = add i32 %646, 1
  store i32 %inc.i.i81.i.i, ptr %echo_head.i.i78.i.i, align 4
  %and.i.i3.i.i.i = and i32 %inc.i.i81.i.i, 4095
  %arrayidx.i.i4.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 13, i32 %and.i.i3.i.i.i
  %647 = ptrtoint ptr %arrayidx.i.i4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 -127, ptr %arrayidx.i.i4.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %648 = ptrtoint ptr %echo_head.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %echo_head.i.i78.i.i, align 4
  %inc.i5.i.i.i = add i32 %649, 1
  store i32 %inc.i5.i.i.i, ptr %echo_head.i.i78.i.i, align 4
  br label %if.end281.i.i.i

if.end281.i.i.i:                                  ; preds = %if.then280.i.i.i, %if.else275.i.i.i.if.end281.i.i.i_crit_edge
  %650 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %disc_data, align 4
  %conv.i498.i.i.i = zext i8 %c.addr.0.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %c.addr.0.i.i.i)
  %cmp.i499.i.i.i = icmp eq i8 %c.addr.0.i.i.i, -1
  br i1 %cmp.i499.i.i.i, label %if.then.i506.i.i.i, label %if.else.i510.i.i.i

if.then.i506.i.i.i:                               ; preds = %if.end281.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i500.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %651, i32 0, i32 3
  %652 = ptrtoint ptr %echo_head.i.i500.i.i.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %echo_head.i.i500.i.i.i, align 4
  %and.i.i.i501.i.i.i = and i32 %653, 4095
  %arrayidx.i.i.i502.i.i.i = getelementptr %struct.n_tty_data, ptr %651, i32 0, i32 13, i32 %and.i.i.i501.i.i.i
  %654 = ptrtoint ptr %arrayidx.i.i.i502.i.i.i to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 -1, ptr %arrayidx.i.i.i502.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %655 = ptrtoint ptr %echo_head.i.i500.i.i.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %echo_head.i.i500.i.i.i, align 4
  %inc.i.i503.i.i.i = add i32 %656, 1
  store i32 %inc.i.i503.i.i.i, ptr %echo_head.i.i500.i.i.i, align 4
  %and.i.i21.i504.i.i.i = and i32 %inc.i.i503.i.i.i, 4095
  %arrayidx.i.i22.i505.i.i.i = getelementptr %struct.n_tty_data, ptr %651, i32 0, i32 13, i32 %and.i.i21.i504.i.i.i
  %657 = ptrtoint ptr %arrayidx.i.i22.i505.i.i.i to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 -1, ptr %arrayidx.i.i22.i505.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %if.end282.i.i.i

if.else.i510.i.i.i:                               ; preds = %if.end281.i.i.i
  %658 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %c_lflag.i, align 4
  %and.i508.i.i.i = and i32 %659, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i508.i.i.i)
  %tobool.not.i509.i.i.i = icmp eq i32 %and.i508.i.i.i, 0
  br i1 %tobool.not.i509.i.i.i, label %if.else.i510.i.i.i.if.end.i524.i.i.i_crit_edge, label %land.lhs.true.i515.i.i.i

if.else.i510.i.i.i.if.end.i524.i.i.i_crit_edge:   ; preds = %if.else.i510.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i524.i.i.i

land.lhs.true.i515.i.i.i:                         ; preds = %if.else.i510.i.i.i
  %arrayidx.i511.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i498.i.i.i
  %660 = ptrtoint ptr %arrayidx.i511.i.i.i to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %arrayidx.i511.i.i.i, align 1
  %662 = and i8 %661, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %662)
  %cmp5.not.i512.i.i.i = icmp eq i8 %662, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %c.addr.0.i.i.i)
  %cmp9.not.i513.i.i.i = icmp eq i8 %c.addr.0.i.i.i, 9
  %or.cond.i514.i.i.i = or i1 %cmp9.not.i513.i.i.i, %cmp5.not.i512.i.i.i
  br i1 %or.cond.i514.i.i.i, label %land.lhs.true.i515.i.i.i.if.end.i524.i.i.i_crit_edge, label %if.then11.i520.i.i.i

land.lhs.true.i515.i.i.i.if.end.i524.i.i.i_crit_edge: ; preds = %land.lhs.true.i515.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i524.i.i.i

if.then11.i520.i.i.i:                             ; preds = %land.lhs.true.i515.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i24.i516.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %651, i32 0, i32 3
  %663 = ptrtoint ptr %echo_head.i24.i516.i.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %echo_head.i24.i516.i.i.i, align 4
  %and.i.i25.i517.i.i.i = and i32 %664, 4095
  %arrayidx.i.i26.i518.i.i.i = getelementptr %struct.n_tty_data, ptr %651, i32 0, i32 13, i32 %and.i.i25.i517.i.i.i
  %665 = ptrtoint ptr %arrayidx.i.i26.i518.i.i.i to i32
  call void @__asan_store1_noabort(i32 %665)
  store i8 -1, ptr %arrayidx.i.i26.i518.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %666 = ptrtoint ptr %echo_head.i24.i516.i.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load i32, ptr %echo_head.i24.i516.i.i.i, align 4
  %inc.i27.i519.i.i.i = add i32 %667, 1
  store i32 %inc.i27.i519.i.i.i, ptr %echo_head.i24.i516.i.i.i, align 4
  br label %if.end.i524.i.i.i

if.end.i524.i.i.i:                                ; preds = %if.then11.i520.i.i.i, %land.lhs.true.i515.i.i.i.if.end.i524.i.i.i_crit_edge, %if.else.i510.i.i.i.if.end.i524.i.i.i_crit_edge
  %echo_head.i28.i521.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %651, i32 0, i32 3
  %668 = ptrtoint ptr %echo_head.i28.i521.i.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %echo_head.i28.i521.i.i.i, align 4
  %and.i.i29.i522.i.i.i = and i32 %669, 4095
  %arrayidx.i.i30.i523.i.i.i = getelementptr %struct.n_tty_data, ptr %651, i32 0, i32 13, i32 %and.i.i29.i522.i.i.i
  %670 = ptrtoint ptr %arrayidx.i.i30.i523.i.i.i to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 %c.addr.0.i.i.i, ptr %arrayidx.i.i30.i523.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %if.end282.i.i.i

if.end282.i.i.i:                                  ; preds = %if.end.i524.i.i.i, %if.then.i506.i.i.i, %if.then274.i.i.i
  %echo_head.i28.sink32.i525.sink580.i.i.i = phi ptr [ %echo_head.i.i491.i.i.i, %if.then274.i.i.i ], [ %echo_head.i28.i521.i.i.i, %if.end.i524.i.i.i ], [ %echo_head.i.i500.i.i.i, %if.then.i506.i.i.i ]
  %671 = ptrtoint ptr %echo_head.i28.sink32.i525.sink580.i.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %echo_head.i28.sink32.i525.sink580.i.i.i, align 4
  %inc.i31.i526.i.i.i = add i32 %672, 1
  store i32 %inc.i31.i526.i.i.i, ptr %echo_head.i28.sink32.i525.sink580.i.i.i, align 4
  %673 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %disc_data, align 4
  %output_lock.i529.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %674, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i529.i.i.i, i32 noundef 0) #9
  %echo_head.i530.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %674, i32 0, i32 3
  %675 = ptrtoint ptr %echo_head.i530.i.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %echo_head.i530.i.i.i, align 4
  %echo_mark.i531.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %674, i32 0, i32 5
  %677 = ptrtoint ptr %echo_mark.i531.i.i.i to i32
  call void @__asan_store4_noabort(i32 %677)
  store i32 %676, ptr %echo_mark.i531.i.i.i, align 4
  %echo_commit.i532.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %674, i32 0, i32 4
  %echo_tail.i533.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %674, i32 0, i32 18
  %678 = ptrtoint ptr %echo_tail.i533.i.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %echo_tail.i533.i.i.i, align 4
  %sub2.i534.i.i.i = sub i32 %676, %679
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub2.i534.i.i.i)
  %cmp.i535.i.i.i = icmp ult i32 %sub2.i534.i.i.i, 256
  br i1 %cmp.i535.i.i.i, label %if.end282.i.i.i.if.then.i541.i.i.i_crit_edge, label %lor.lhs.false.i540.i.i.i

if.end282.i.i.i.if.then.i541.i.i.i_crit_edge:     ; preds = %if.end282.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i541.i.i.i

lor.lhs.false.i540.i.i.i:                         ; preds = %if.end282.i.i.i
  %680 = ptrtoint ptr %echo_commit.i532.i.i.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %echo_commit.i532.i.i.i, align 4
  %sub.i536.i.i.i = sub i32 %681, %679
  %rem.i537.i.i.i = and i32 %sub2.i534.i.i.i, 255
  %rem3.i538.i.i.i = and i32 %sub.i536.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i537.i.i.i, i32 %rem3.i538.i.i.i)
  %cmp4.i539.i.i.i = icmp ugt i32 %rem.i537.i.i.i, %rem3.i538.i.i.i
  br i1 %cmp4.i539.i.i.i, label %lor.lhs.false.i540.i.i.i.if.then.i541.i.i.i_crit_edge, label %if.end.i544.i.i.i

lor.lhs.false.i540.i.i.i.if.then.i541.i.i.i_crit_edge: ; preds = %lor.lhs.false.i540.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i541.i.i.i

if.then.i541.i.i.i:                               ; preds = %lor.lhs.false.i540.i.i.i.if.then.i541.i.i.i_crit_edge, %if.end282.i.i.i.if.then.i541.i.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %output_lock.i529.i.i.i) #9
  br label %if.end283.i.i.i

if.end.i544.i.i.i:                                ; preds = %lor.lhs.false.i540.i.i.i
  %682 = ptrtoint ptr %echo_commit.i532.i.i.i to i32
  call void @__asan_store4_noabort(i32 %682)
  store i32 %676, ptr %echo_commit.i532.i.i.i, align 4
  %call.i542.i.i.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i529.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i542.i.i.i)
  %tobool.not.i543.i.i.i = icmp eq i32 %call.i542.i.i.i, 0
  br i1 %tobool.not.i543.i.i.i, label %if.end.i544.i.i.i.if.end283.i.i.i_crit_edge, label %land.lhs.true.i548.i.i.i

if.end.i544.i.i.i.if.end283.i.i.i_crit_edge:      ; preds = %if.end.i544.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end283.i.i.i

land.lhs.true.i548.i.i.i:                         ; preds = %if.end.i544.i.i.i
  %683 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %ops.i.i.i.i, align 4
  %flush_chars.i546.i.i.i = getelementptr inbounds %struct.tty_operations, ptr %684, i32 0, i32 9
  %685 = ptrtoint ptr %flush_chars.i546.i.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %flush_chars.i546.i.i.i, align 4
  %tobool8.not.i547.i.i.i = icmp eq ptr %686, null
  br i1 %tobool8.not.i547.i.i.i, label %land.lhs.true.i548.i.i.i.if.end283.i.i.i_crit_edge, label %if.then9.i549.i.i.i

land.lhs.true.i548.i.i.i.if.end283.i.i.i_crit_edge: ; preds = %land.lhs.true.i548.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end283.i.i.i

if.then9.i549.i.i.i:                              ; preds = %land.lhs.true.i548.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %686(ptr noundef %tty) #9
  br label %if.end283.i.i.i

if.end283.i.i.i:                                  ; preds = %if.then9.i549.i.i.i, %land.lhs.true.i548.i.i.i.if.end283.i.i.i_crit_edge, %if.end.i544.i.i.i.if.end283.i.i.i_crit_edge, %if.then.i541.i.i.i, %if.end265.i.i.i.if.end283.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %c.addr.0.i.i.i)
  %cmp285.i.i.i = icmp eq i8 %c.addr.0.i.i.i, -1
  br i1 %cmp285.i.i.i, label %land.lhs.true287.i.i.i, label %if.end283.i.i.i.if.end293.i.i.i_crit_edge

if.end283.i.i.i.if.end293.i.i.i_crit_edge:        ; preds = %if.end283.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end293.i.i.i

land.lhs.true287.i.i.i:                           ; preds = %if.end283.i.i.i
  %687 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %termios, align 4
  %and290.i.i.i = and i32 %688, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290.i.i.i)
  %tobool291.not.i.i.i = icmp eq i32 %and290.i.i.i, 0
  br i1 %tobool291.not.i.i.i, label %land.lhs.true287.i.i.i.if.end293.i.i.i_crit_edge, label %if.then292.i.i.i

land.lhs.true287.i.i.i.if.end293.i.i.i_crit_edge: ; preds = %land.lhs.true287.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end293.i.i.i

if.then292.i.i.i:                                 ; preds = %land.lhs.true287.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %689 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %122, align 4
  %and.i.i551.i.i.i = and i32 %690, 4095
  %arrayidx.i.i552.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 11, i32 %and.i.i551.i.i.i
  %691 = ptrtoint ptr %arrayidx.i.i552.i.i.i to i32
  call void @__asan_store1_noabort(i32 %691)
  store i8 -1, ptr %arrayidx.i.i552.i.i.i, align 1
  %inc.i553.i.i.i = add i32 %690, 1
  store i32 %inc.i553.i.i.i, ptr %122, align 4
  br label %if.end293.i.i.i

if.end293.i.i.i:                                  ; preds = %if.then292.i.i.i, %land.lhs.true287.i.i.i.if.end293.i.i.i_crit_edge, %if.end283.i.i.i.if.end293.i.i.i_crit_edge
  %692 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %122, align 4
  %and.i.i554.i.i.i = and i32 %693, 4095
  %arrayidx.i.i555.i.i.i = getelementptr %struct.n_tty_data, ptr %122, i32 0, i32 11, i32 %and.i.i554.i.i.i
  %694 = ptrtoint ptr %arrayidx.i.i555.i.i.i to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 %c.addr.0.i.i.i, ptr %arrayidx.i.i555.i.i.i, align 1
  %inc.i556.i.i.i = add i32 %693, 1
  store i32 %inc.i556.i.i.i, ptr %122, align 4
  br label %cleanup.i.i

if.else.i158.i:                                   ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @n_tty_receive_char(ptr noundef %tty, i8 noundef zeroext %c.1.i.i) #9
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.else.i158.i, %if.end293.i.i.i, %handle_newline.i.i.i, %if.then9.i111.i.i, %land.lhs.true.i110.i.i.cleanup.i.i_crit_edge, %if.end.i106.i.i.cleanup.i.i_crit_edge, %if.then.i103.i.i, %if.then9.i159, %land.lhs.true.i158.cleanup.i.i_crit_edge, %if.end.i154.cleanup.i.i_crit_edge, %if.then.i151, %finish_erasing.exit.cleanup.i.i_crit_edge, %if.then135.i.i.i.cleanup.i.i_crit_edge, %if.then9.i.i.i.i, %land.lhs.true.i440.i.i.i.cleanup.i.i_crit_edge, %if.end.i437.i.i.i.cleanup.i.i_crit_edge, %if.then.i.i.i.i, %if.then67.i.i.i.cleanup.i.i_crit_edge, %if.then43.i.i.i, %if.then34.i.i.i, %if.then26.i.i.i, %if.then12.i.i.i, %if.then4.i.i.i155.i, %land.lhs.true.i.i.i154.i.cleanup.i.i_crit_edge, %if.end.i.i.i151.i.cleanup.i.i_crit_edge, %if.then4.i.i.i.cleanup.i.i_crit_edge, %if.then30.i.i, %if.then9.i.i, %if.else.i.i137.i, %if.end16.i.i.i
  %tobool.not.i159.i = icmp eq i32 %dec147.i.i, 0
  br i1 %tobool.not.i159.i, label %n_tty_receive_buf_standard.exit.i, label %cleanup.i.i.while.body.i123.i_crit_edge

cleanup.i.i.while.body.i123.i_crit_edge:          ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i123.i

n_tty_receive_buf_standard.exit.i:                ; preds = %cleanup.i.i
  %695 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %disc_data, align 4
  %697 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %c_lflag.i, align 4
  %699 = and i32 %698, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %699)
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %n_tty_receive_buf_standard.exit.i.flush_echoes.exit.i_crit_edge, label %lor.lhs.false.i.i

n_tty_receive_buf_standard.exit.i.flush_echoes.exit.i_crit_edge: ; preds = %n_tty_receive_buf_standard.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flush_echoes.exit.i

lor.lhs.false.i.i:                                ; preds = %n_tty_receive_buf_standard.exit.i
  %echo_commit.i.i = getelementptr inbounds %struct.n_tty_data, ptr %696, i32 0, i32 4
  %701 = ptrtoint ptr %echo_commit.i.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %echo_commit.i.i, align 4
  %echo_head.i.i = getelementptr inbounds %struct.n_tty_data, ptr %696, i32 0, i32 3
  %703 = ptrtoint ptr %echo_head.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %echo_head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %702, i32 %704)
  %cmp.i161.i = icmp eq i32 %702, %704
  br i1 %cmp.i161.i, label %lor.lhs.false.i.i.flush_echoes.exit.i_crit_edge, label %if.end.i162.i

lor.lhs.false.i.i.flush_echoes.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flush_echoes.exit.i

if.end.i162.i:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %output_lock.i.i = getelementptr inbounds %struct.n_tty_data, ptr %696, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i.i, i32 noundef 0) #9
  %705 = ptrtoint ptr %echo_head.i.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %echo_head.i.i, align 4
  %707 = ptrtoint ptr %echo_commit.i.i to i32
  call void @__asan_store4_noabort(i32 %707)
  store i32 %706, ptr %echo_commit.i.i, align 4
  %call.i.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i.i) #9
  br label %flush_echoes.exit.i

flush_echoes.exit.i:                              ; preds = %if.end.i162.i, %lor.lhs.false.i.i.flush_echoes.exit.i_crit_edge, %n_tty_receive_buf_standard.exit.i.flush_echoes.exit.i_crit_edge
  %708 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %ops.i.i.i.i, align 4
  %flush_chars.i = getelementptr inbounds %struct.tty_operations, ptr %709, i32 0, i32 9
  %710 = ptrtoint ptr %flush_chars.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %flush_chars.i, align 4
  %tobool28.not.i = icmp eq ptr %711, null
  br i1 %tobool28.not.i, label %flush_echoes.exit.i.if.end34.i_crit_edge, label %if.then29.i

flush_echoes.exit.i.if.end34.i_crit_edge:         ; preds = %flush_echoes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then29.i:                                      ; preds = %flush_echoes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %711(ptr noundef %tty) #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %flush_echoes.exit.i.if.end34.i_crit_edge, %if.end7.i.i.if.end34.i_crit_edge, %if.end8.i.i.if.end34.i_crit_edge, %if.then.i
  %712 = ptrtoint ptr %real_raw.i to i32
  call void @__asan_load1_noabort(i32 %712)
  %bf.load35.i = load i8, ptr %real_raw.i, align 1
  %713 = and i8 %bf.load35.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %713)
  %tobool39.not.i = icmp eq i8 %713, 0
  br i1 %tobool39.not.i, label %if.end34.i.do.end51.i_crit_edge, label %land.lhs.true40.i

if.end34.i.do.end51.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

land.lhs.true40.i:                                ; preds = %if.end34.i
  %714 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load i32, ptr %c_lflag.i, align 4
  %and43.i = and i32 %715, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %land.lhs.true40.i.do.cond44_crit_edge, label %land.lhs.true40.i.do.end51.i_crit_edge

land.lhs.true40.i.do.end51.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

land.lhs.true40.i.do.cond44_crit_edge:            ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond44

do.end51.i:                                       ; preds = %land.lhs.true40.i.do.end51.i_crit_edge, %if.end34.i.do.end51.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  %716 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %19, align 4
  %commit_head.i = getelementptr inbounds %struct.n_tty_data, ptr %19, i32 0, i32 1
  %718 = ptrtoint ptr %commit_head.i to i32
  call void @__asan_store4_noabort(i32 %718)
  store volatile i32 %717, ptr %commit_head.i, align 4
  %read_tail.i.i = getelementptr inbounds %struct.n_tty_data, ptr %19, i32 0, i32 14
  %719 = ptrtoint ptr %read_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %read_tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %717, i32 %720)
  %tobool65.not.i = icmp eq i32 %717, %720
  br i1 %tobool65.not.i, label %do.end51.i.do.cond44_crit_edge, label %if.then66.i

do.end51.i.do.cond44_crit_edge:                   ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond44

if.then66.i:                                      ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kill_fasync(ptr noundef %fasync.i.i.i, i32 noundef 29, i32 noundef 1) #9
  tail call void @__wake_up(ptr noundef %read_wait.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #9
  br label %do.cond44

do.cond44:                                        ; preds = %if.then66.i, %do.end51.i.do.cond44_crit_edge, %land.lhs.true40.i.do.cond44_crit_edge, %lor.lhs.false32.do.cond44_crit_edge
  %add.ptr = getelementptr i8, ptr %cp.addr.0, i32 %15
  %add.ptr40 = getelementptr i8, ptr %fp.addr.0, i32 %15
  %spec.select105 = select i1 %tobool31.not, ptr null, ptr %add.ptr40
  %sub42 = sub i32 %count.addr.0, %15
  %add43 = add i32 %15, %rcvd.0
  %721 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load volatile i32, ptr %flags, align 4
  %723 = and i32 %722, 1048576
  %tobool45.not = icmp eq i32 %723, 0
  br i1 %tobool45.not, label %do.cond44.do.body_crit_edge, label %do.cond44.do.end47_crit_edge

do.cond44.do.end47_crit_edge:                     ; preds = %do.cond44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

do.cond44.do.body_crit_edge:                      ; preds = %do.cond44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end47:                                         ; preds = %do.cond44.do.end47_crit_edge, %if.end23.do.end47_crit_edge
  %rcvd.1178 = phi i32 [ %add43, %do.cond44.do.end47_crit_edge ], [ %rcvd.0, %if.end23.do.end47_crit_edge ]
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %724 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %724)
  store i32 %room.1, ptr %receive_room, align 4
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %725 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %driver, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %726, i32 0, i32 10
  %727 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %727)
  %728 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %728)
  %cmp49 = icmp eq i16 %728, 4
  br i1 %cmp49, label %if.then51, label %if.else56

if.then51:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overflow.0)
  %tobool52.not = icmp eq i32 %overflow.0, 0
  br i1 %tobool52.not, label %if.then51.if.end57_crit_edge, label %if.then53

if.then51.if.end57_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then53:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  %flow_change.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 23
  %729 = ptrtoint ptr %flow_change.i to i32
  call void @__asan_store4_noabort(i32 %729)
  store i32 2, ptr %flow_change.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  %call54 = tail call i32 @tty_unthrottle_safe(ptr noundef %tty) #9
  br label %if.end57.sink.split

if.else56:                                        ; preds = %do.end47
  %730 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %disc_data, align 4
  %icanon.i = getelementptr inbounds %struct.n_tty_data, ptr %731, i32 0, i32 10
  %732 = ptrtoint ptr %icanon.i to i32
  call void @__asan_load1_noabort(i32 %732)
  %bf.load.i108 = load i8, ptr %icanon.i, align 1
  %733 = and i8 %bf.load.i108, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %733)
  %tobool.not.i109 = icmp eq i8 %733, 0
  br i1 %tobool.not.i109, label %if.else56.if.end.i_crit_edge, label %land.lhs.true.i

if.else56.if.end.i_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else56
  %canon_head.i = getelementptr inbounds %struct.n_tty_data, ptr %731, i32 0, i32 2
  %734 = ptrtoint ptr %canon_head.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %canon_head.i, align 4
  %read_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %731, i32 0, i32 14
  %736 = ptrtoint ptr %read_tail.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %read_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %735, i32 %737)
  %cmp.i = icmp eq i32 %735, %737
  br i1 %cmp.i, label %land.lhs.true.i.if.end57_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.if.end57_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.else56.if.end.i_crit_edge
  %flow_change.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 23
  %read_tail.i.i110 = getelementptr inbounds %struct.n_tty_data, ptr %731, i32 0, i32 14
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end5.i.while.cond.i_crit_edge, %if.end.i
  %738 = ptrtoint ptr %flow_change.i.i to i32
  call void @__asan_store4_noabort(i32 %738)
  store i32 1, ptr %flow_change.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  %739 = ptrtoint ptr %731 to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %731, align 4
  %741 = ptrtoint ptr %read_tail.i.i110 to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load i32, ptr %read_tail.i.i110, align 4
  %sub.i.i111 = add i32 %740, -4097
  %notsub.i = sub i32 %sub.i.i111, %742
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %notsub.i)
  %cmp2.i = icmp ult i32 %notsub.i, -128
  br i1 %cmp2.i, label %while.cond.i.if.end57.sink.split_crit_edge, label %if.end5.i

while.cond.i.if.end57.sink.split_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.sink.split

if.end5.i:                                        ; preds = %while.cond.i
  %call6.i = tail call i32 @tty_throttle_safe(ptr noundef %tty) #9
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end57.sink.split_crit_edge, label %if.end5.i.while.cond.i_crit_edge

if.end5.i.while.cond.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end5.i.if.end57.sink.split_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.end5.i.if.end57.sink.split_crit_edge, %while.cond.i.if.end57.sink.split_crit_edge, %if.then53
  %flow_change.i.i.sink = phi ptr [ %flow_change.i, %if.then53 ], [ %flow_change.i.i, %if.end5.i.if.end57.sink.split_crit_edge ], [ %flow_change.i.i, %while.cond.i.if.end57.sink.split_crit_edge ]
  %743 = ptrtoint ptr %flow_change.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %743)
  store i32 0, ptr %flow_change.i.i.sink, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %land.lhs.true.i.if.end57_crit_edge, %if.then51.if.end57_crit_edge
  tail call void @up_read(ptr noundef %termios_rwsem) #9
  ret i32 %rcvd.1178
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n_tty_receive_char_flagged(ptr noundef %tty, i8 noundef zeroext %c, i8 noundef zeroext %flag) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %flag to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %flag, label %do.end [
    i8 1, label %sw.bb
    i8 3, label %entry.sw.bb1_crit_edge
    i8 2, label %entry.sw.bb1_crit_edge24
    i8 4, label %sw.bb2
  ]

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %1 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disc_data.i, align 4
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %3 = ptrtoint ptr %termios.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %termios.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %and3.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @isig(i32 noundef 2, ptr noundef %tty) #9
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end.i
  %and9.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end6.i.if.end12.i_crit_edge, label %if.then11.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %and.i.i.i = and i32 %6, 4095
  %arrayidx.i.i.i = getelementptr %struct.n_tty_data, ptr %2, i32 0, i32 11, i32 %and.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %arrayidx.i.i.i, align 1
  %inc.i.i = add i32 %6, 1
  %and.i.i19.i = and i32 %inc.i.i, 4095
  %arrayidx.i.i20.i = getelementptr %struct.n_tty_data, ptr %2, i32 0, i32 11, i32 %and.i.i19.i
  %8 = ptrtoint ptr %arrayidx.i.i20.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx.i.i20.i, align 1
  %inc.i21.i = add i32 %6, 2
  store i32 %inc.i21.i, ptr %2, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end6.i.if.end12.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  %and.i.i22.i = and i32 %10, 4095
  %arrayidx.i.i23.i = getelementptr %struct.n_tty_data, ptr %2, i32 0, i32 11, i32 %and.i.i22.i
  %11 = ptrtoint ptr %arrayidx.i.i23.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx.i.i23.i, align 1
  %inc.i24.i = add i32 %10, 1
  store i32 %inc.i24.i, ptr %2, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge24
  %disc_data.i11 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %12 = ptrtoint ptr %disc_data.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disc_data.i11, align 4
  %termios.i12 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %14 = ptrtoint ptr %termios.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %termios.i12, align 4
  %and.i13 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %if.else12.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb1
  %and3.i15 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i15)
  %tobool4.not.i16 = icmp eq i32 %and3.i15, 0
  br i1 %tobool4.not.i16, label %if.end.i17, label %if.then.i.sw.epilog_crit_edge

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i17:                                       ; preds = %if.then.i
  %and8.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %and.i.i28.i = and i32 %17, 4095
  %arrayidx.i.i29.i = getelementptr %struct.n_tty_data, ptr %13, i32 0, i32 11, i32 %and.i.i28.i
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %arrayidx.i.i29.i, align 1
  %inc.i.i18 = add i32 %17, 1
  %and.i.i22.i19 = and i32 %inc.i.i18, 4095
  %arrayidx.i.i23.i20 = getelementptr %struct.n_tty_data, ptr %13, i32 0, i32 11, i32 %and.i.i22.i19
  %19 = ptrtoint ptr %arrayidx.i.i23.i20 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx.i.i23.i20, align 1
  %inc.i24.i21 = add i32 %17, 2
  %and.i.i25.i = and i32 %inc.i24.i21, 4095
  %arrayidx.i.i26.i = getelementptr %struct.n_tty_data, ptr %13, i32 0, i32 11, i32 %and.i.i25.i
  %20 = ptrtoint ptr %arrayidx.i.i26.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %c, ptr %arrayidx.i.i26.i, align 1
  %inc.i27.i = add i32 %17, 3
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx.i.i29.i, align 1
  %inc.i30.i = add i32 %17, 1
  br label %cleanup.sink.split.i

if.else12.i:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %13, align 4
  %and.i.i31.i = and i32 %23, 4095
  %arrayidx.i.i32.i = getelementptr %struct.n_tty_data, ptr %13, i32 0, i32 11, i32 %and.i.i31.i
  %24 = ptrtoint ptr %arrayidx.i.i32.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %c, ptr %arrayidx.i.i32.i, align 1
  %inc.i33.i = add i32 %23, 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else12.i, %if.else.i, %if.then10.i
  %inc.i33.sink.i = phi i32 [ %inc.i33.i, %if.else12.i ], [ %inc.i30.i, %if.else.i ], [ %inc.i27.i, %if.then10.i ]
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc.i33.sink.i, ptr %13, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %disc_data.i22 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %26 = ptrtoint ptr %disc_data.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disc_data.i22, align 4
  %num_overrun.i = getelementptr inbounds %struct.n_tty_data, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %num_overrun.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_overrun.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %num_overrun.i, align 4
  %overrun_time.i = getelementptr inbounds %struct.n_tty_data, ptr %27, i32 0, i32 7
  %30 = ptrtoint ptr %overrun_time.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %overrun_time.i, align 4
  %add.i = add i32 %31, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %sw.bb2.do.end.i_crit_edge, label %lor.lhs.false.i

sw.bb2.do.end.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %sw.bb2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub2.i = sub i32 %33, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp3.i = icmp slt i32 %sub2.i, 0
  br i1 %cmp3.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false.i.sw.epilog_crit_edge

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %sw.bb2.do.end.i_crit_edge
  %call.i = tail call ptr @tty_driver_name(ptr noundef %tty) #9
  %call4.i = tail call ptr @tty_name(ptr noundef %tty) #9
  %34 = ptrtoint ptr %num_overrun.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_overrun.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call.i, ptr noundef %call4.i, i32 noundef %35) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %37 = ptrtoint ptr %overrun_time.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %overrun_time.i, align 4
  %38 = ptrtoint ptr %num_overrun.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %num_overrun.i, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %flag to i32
  %call = tail call ptr @tty_driver_name(ptr noundef %tty) #9
  %call3 = tail call ptr @tty_name(ptr noundef %tty) #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %call, ptr noundef %call3, i32 noundef %conv) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.end.i, %lor.lhs.false.i.sw.epilog_crit_edge, %cleanup.sink.split.i, %if.then.i.sw.epilog_crit_edge, %if.end12.i, %if.then5.i, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_driver_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isig(i32 noundef %sig, ptr noundef %tty) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_lflag, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @tty_get_pgrp(ptr noundef %tty) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end8_crit_edge, label %if.then.i

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @kill_pgrp(ptr noundef nonnull %call.i, i32 noundef %sig, i32 noundef 1) #9
  tail call void @put_pid(ptr noundef nonnull %call.i) #9
  br label %if.end8

if.else:                                          ; preds = %entry
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %2 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disc_data, align 4
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @up_read(ptr noundef %termios_rwsem) #9
  tail call void @down_write(ptr noundef %termios_rwsem) #9
  %call.i26 = tail call ptr @tty_get_pgrp(ptr noundef %tty) #9
  %tobool.not.i27 = icmp eq ptr %call.i26, null
  br i1 %tobool.not.i27, label %if.else.__isig.exit30_crit_edge, label %if.then.i29

if.else.__isig.exit30_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %__isig.exit30

if.then.i29:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i28 = tail call i32 @kill_pgrp(ptr noundef nonnull %call.i26, i32 noundef %sig, i32 noundef 1) #9
  tail call void @put_pid(ptr noundef nonnull %call.i26) #9
  br label %__isig.exit30

__isig.exit30:                                    ; preds = %if.then.i29, %if.else.__isig.exit30_crit_edge
  %output_lock = getelementptr inbounds %struct.n_tty_data, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock, i32 noundef 0) #9
  %echo_tail = getelementptr inbounds %struct.n_tty_data, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %echo_tail to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %echo_tail, align 4
  %echo_head = getelementptr inbounds %struct.n_tty_data, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %echo_head to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %echo_head, align 4
  %echo_commit = getelementptr inbounds %struct.n_tty_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %echo_commit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %echo_commit, align 4
  %echo_mark = getelementptr inbounds %struct.n_tty_data, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %echo_mark to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %echo_mark, align 4
  tail call void @mutex_unlock(ptr noundef %output_lock) #9
  tail call void @tty_driver_flush_buffer(ptr noundef %tty) #9
  %8 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disc_data, align 4
  %read_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %read_tail.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %read_tail.i, align 4
  %canon_head.i = getelementptr inbounds %struct.n_tty_data, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %canon_head.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %canon_head.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %9, align 4
  %commit_head.i = getelementptr inbounds %struct.n_tty_data, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %commit_head.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %commit_head.i, align 4
  %line_start.i = getelementptr inbounds %struct.n_tty_data, ptr %9, i32 0, i32 15
  %14 = ptrtoint ptr %line_start.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %line_start.i, align 4
  %erasing.i = getelementptr inbounds %struct.n_tty_data, ptr %9, i32 0, i32 10
  %15 = ptrtoint ptr %erasing.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %erasing.i, align 1
  %read_flags.i = getelementptr inbounds %struct.n_tty_data, ptr %9, i32 0, i32 12
  %16 = call ptr @memset(ptr %read_flags.i, i32 0, i32 512)
  %bf.clear2.i = and i8 %bf.load.i, -69
  store i8 %bf.clear2.i, ptr %erasing.i, align 1
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %17 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %__isig.exit30.if.end_crit_edge, label %if.then5

__isig.exit30.if.end_crit_edge:                   ; preds = %__isig.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %__isig.exit30
  %packet.i = getelementptr inbounds %struct.tty_struct, ptr %18, i32 0, i32 20, i32 4
  %19 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %packet.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i31 = icmp eq i8 %20, 0
  br i1 %tobool.not.i31, label %if.then5.if.end_crit_edge, label %do.body1.i

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body1.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl2.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl2.i) #9
  %pktstatus.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %pktstatus.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pktstatus.i, align 4
  %23 = or i8 %22, 1
  store i8 %23, ptr %pktstatus.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl2.i, i32 noundef %call3.i) #9
  %24 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link, align 4
  %read_wait.i = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.body1.i, %if.then5.if.end_crit_edge, %__isig.exit30.if.end_crit_edge
  tail call void @up_write(ptr noundef %termios_rwsem) #9
  tail call void @down_read(ptr noundef %termios_rwsem) #9
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then.i, %if.then.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_get_pgrp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_tty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n_tty_receive_char(ptr noundef %tty, i8 noundef zeroext %c) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stopped, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tco_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %tco_stopped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tco_stopped, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %6 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %termios, align 4
  %8 = and i32 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %8)
  %.not = icmp eq i32 %8, 3072
  br i1 %.not, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  tail call void @start_tty(ptr noundef %tty) #9
  %9 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disc_data, align 4
  %echo_mark.i = getelementptr inbounds %struct.n_tty_data, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %echo_mark.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %echo_mark.i, align 4
  %echo_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %10, i32 0, i32 18
  %13 = ptrtoint ptr %echo_tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %echo_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp eq i32 %12, %14
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %output_lock.i = getelementptr inbounds %struct.n_tty_data, ptr %10, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i, i32 noundef 0) #9
  %15 = ptrtoint ptr %echo_mark.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %echo_mark.i, align 4
  %echo_commit.i = getelementptr inbounds %struct.n_tty_data, ptr %10, i32 0, i32 4
  %17 = ptrtoint ptr %echo_commit.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %echo_commit.i, align 4
  %call.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %flush_chars.i = getelementptr inbounds %struct.tty_operations, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %flush_chars.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flush_chars.i, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then4.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %21(ptr noundef %tty) #9
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %termios10 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %22 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_lflag, align 4
  %and11 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end
  %erasing.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %erasing.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %erasing.i, align 1
  %25 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i44 = icmp eq i8 %25, 0
  br i1 %tobool.not.i44, label %if.then13.finish_erasing.exit_crit_edge, label %if.then.i

if.then13.finish_erasing.exit_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %finish_erasing.exit

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %echo_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %echo_head.i.i.i, align 4
  %and.i.i.i.i = and i32 %27, 4095
  %arrayidx.i.i.i.i = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 13, i32 %and.i.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 47, ptr %arrayidx.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %29 = ptrtoint ptr %echo_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %echo_head.i.i.i, align 4
  %inc.i12.i.i = add i32 %30, 1
  store i32 %inc.i12.i.i, ptr %echo_head.i.i.i, align 4
  %31 = ptrtoint ptr %erasing.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load2.i = load i8, ptr %erasing.i, align 1
  %bf.clear3.i = and i8 %bf.load2.i, -65
  store i8 %bf.clear3.i, ptr %erasing.i, align 1
  br label %finish_erasing.exit

finish_erasing.exit:                              ; preds = %if.then.i, %if.then13.finish_erasing.exit_crit_edge
  %canon_head = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %canon_head to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %canon_head, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp = icmp eq i32 %33, %35
  br i1 %cmp, label %if.then14, label %finish_erasing.exit.if.end15_crit_edge

finish_erasing.exit.if.end15_crit_edge:           ; preds = %finish_erasing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %finish_erasing.exit
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i = getelementptr inbounds %struct.n_tty_data, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %echo_head.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %echo_head.i.i, align 4
  %and.i.i.i = and i32 %37, 4095
  %arrayidx.i.i.i = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 13, i32 %and.i.i.i
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %arrayidx.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %39 = ptrtoint ptr %echo_head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %echo_head.i.i, align 4
  %inc.i.i = add i32 %40, 1
  store i32 %inc.i.i, ptr %echo_head.i.i, align 4
  %and.i.i3.i = and i32 %inc.i.i, 4095
  %arrayidx.i.i4.i = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 13, i32 %and.i.i3.i
  %41 = ptrtoint ptr %arrayidx.i.i4.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -127, ptr %arrayidx.i.i4.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %42 = ptrtoint ptr %echo_head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %echo_head.i.i, align 4
  %inc.i5.i = add i32 %43, 1
  store i32 %inc.i5.i, ptr %echo_head.i.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %finish_erasing.exit.if.end15_crit_edge
  %44 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %disc_data, align 4
  %conv.i = zext i8 %c to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %c)
  %cmp.i47 = icmp eq i8 %c, -1
  br i1 %cmp.i47, label %if.then.i52, label %if.else.i

if.then.i52:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i48 = getelementptr inbounds %struct.n_tty_data, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %echo_head.i.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %echo_head.i.i48, align 4
  %and.i.i.i49 = and i32 %47, 4095
  %arrayidx.i.i.i50 = getelementptr %struct.n_tty_data, ptr %45, i32 0, i32 13, i32 %and.i.i.i49
  %48 = ptrtoint ptr %arrayidx.i.i.i50 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %arrayidx.i.i.i50, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %49 = ptrtoint ptr %echo_head.i.i48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %echo_head.i.i48, align 4
  %inc.i.i51 = add i32 %50, 1
  store i32 %inc.i.i51, ptr %echo_head.i.i48, align 4
  %and.i.i21.i = and i32 %inc.i.i51, 4095
  %arrayidx.i.i22.i = getelementptr %struct.n_tty_data, ptr %45, i32 0, i32 13, i32 %and.i.i21.i
  %51 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %arrayidx.i.i22.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit

if.else.i:                                        ; preds = %if.end15
  %52 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %c_lflag, align 4
  %and.i = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i53 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i53, label %if.else.i.if.end.i55_crit_edge, label %land.lhs.true.i54

if.else.i.if.end.i55_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

land.lhs.true.i54:                                ; preds = %if.else.i
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i, align 1
  %56 = and i8 %55, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp5.not.i = icmp eq i8 %56, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %c)
  %cmp9.not.i = icmp eq i8 %c, 9
  %or.cond.i = or i1 %cmp9.not.i, %cmp5.not.i
  br i1 %or.cond.i, label %land.lhs.true.i54.if.end.i55_crit_edge, label %if.then11.i

land.lhs.true.i54.if.end.i55_crit_edge:           ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

if.then11.i:                                      ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i24.i = getelementptr inbounds %struct.n_tty_data, ptr %45, i32 0, i32 3
  %57 = ptrtoint ptr %echo_head.i24.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %echo_head.i24.i, align 4
  %and.i.i25.i = and i32 %58, 4095
  %arrayidx.i.i26.i = getelementptr %struct.n_tty_data, ptr %45, i32 0, i32 13, i32 %and.i.i25.i
  %59 = ptrtoint ptr %arrayidx.i.i26.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -1, ptr %arrayidx.i.i26.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %60 = ptrtoint ptr %echo_head.i24.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %echo_head.i24.i, align 4
  %inc.i27.i = add i32 %61, 1
  store i32 %inc.i27.i, ptr %echo_head.i24.i, align 4
  br label %if.end.i55

if.end.i55:                                       ; preds = %if.then11.i, %land.lhs.true.i54.if.end.i55_crit_edge, %if.else.i.if.end.i55_crit_edge
  %echo_head.i28.i = getelementptr inbounds %struct.n_tty_data, ptr %45, i32 0, i32 3
  %62 = ptrtoint ptr %echo_head.i28.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %echo_head.i28.i, align 4
  %and.i.i29.i = and i32 %63, 4095
  %arrayidx.i.i30.i = getelementptr %struct.n_tty_data, ptr %45, i32 0, i32 13, i32 %and.i.i29.i
  %64 = ptrtoint ptr %arrayidx.i.i30.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %c, ptr %arrayidx.i.i30.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit

echo_char.exit:                                   ; preds = %if.end.i55, %if.then.i52
  %echo_head.i28.sink32.i = phi ptr [ %echo_head.i28.i, %if.end.i55 ], [ %echo_head.i.i48, %if.then.i52 ]
  %65 = ptrtoint ptr %echo_head.i28.sink32.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %echo_head.i28.sink32.i, align 4
  %inc.i31.i = add i32 %66, 1
  store i32 %inc.i31.i, ptr %echo_head.i28.sink32.i, align 4
  %67 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %disc_data, align 4
  %output_lock.i57 = getelementptr inbounds %struct.n_tty_data, ptr %68, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i57, i32 noundef 0) #9
  %echo_head.i = getelementptr inbounds %struct.n_tty_data, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %echo_head.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %echo_head.i, align 4
  %echo_mark.i58 = getelementptr inbounds %struct.n_tty_data, ptr %68, i32 0, i32 5
  %71 = ptrtoint ptr %echo_mark.i58 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %echo_mark.i58, align 4
  %echo_commit.i59 = getelementptr inbounds %struct.n_tty_data, ptr %68, i32 0, i32 4
  %echo_tail.i60 = getelementptr inbounds %struct.n_tty_data, ptr %68, i32 0, i32 18
  %72 = ptrtoint ptr %echo_tail.i60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %echo_tail.i60, align 4
  %sub2.i = sub i32 %70, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub2.i)
  %cmp.i61 = icmp ult i32 %sub2.i, 256
  br i1 %cmp.i61, label %echo_char.exit.if.then.i62_crit_edge, label %lor.lhs.false.i

echo_char.exit.if.then.i62_crit_edge:             ; preds = %echo_char.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i62

lor.lhs.false.i:                                  ; preds = %echo_char.exit
  %74 = ptrtoint ptr %echo_commit.i59 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %echo_commit.i59, align 4
  %sub.i = sub i32 %75, %73
  %rem.i = and i32 %sub2.i, 255
  %rem3.i = and i32 %sub.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %rem3.i)
  %cmp4.i = icmp ugt i32 %rem.i, %rem3.i
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then.i62_crit_edge, label %if.end.i65

lor.lhs.false.i.if.then.i62_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i62

if.then.i62:                                      ; preds = %lor.lhs.false.i.if.then.i62_crit_edge, %echo_char.exit.if.then.i62_crit_edge
  tail call void @mutex_unlock(ptr noundef %output_lock.i57) #9
  br label %if.end16

if.end.i65:                                       ; preds = %lor.lhs.false.i
  %76 = ptrtoint ptr %echo_commit.i59 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %70, ptr %echo_commit.i59, align 4
  %call.i63 = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end.i65.if.end16_crit_edge, label %land.lhs.true.i68

if.end.i65.if.end16_crit_edge:                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true.i68:                                ; preds = %if.end.i65
  %ops.i66 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %77 = ptrtoint ptr %ops.i66 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i66, align 4
  %flush_chars.i67 = getelementptr inbounds %struct.tty_operations, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %flush_chars.i67 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %flush_chars.i67, align 4
  %tobool8.not.i = icmp eq ptr %80, null
  br i1 %tobool8.not.i, label %land.lhs.true.i68.if.end16_crit_edge, label %if.then9.i

land.lhs.true.i68.if.end16_crit_edge:             ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then9.i:                                       ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %80(ptr noundef %tty) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then9.i, %land.lhs.true.i68.if.end16_crit_edge, %if.end.i65.if.end16_crit_edge, %if.then.i62, %if.end.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %c)
  %cmp17 = icmp eq i8 %c, -1
  br i1 %cmp17, label %land.lhs.true19, label %if.end16.if.end25_crit_edge

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true19:                                  ; preds = %if.end16
  %81 = ptrtoint ptr %termios10 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %termios10, align 4
  %and22 = and i32 %82, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true19.if.end25_crit_edge, label %if.then24

land.lhs.true19.if.end25_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %1, align 4
  %and.i.i = and i32 %84, 4095
  %arrayidx.i.i = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 11, i32 %and.i.i
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %arrayidx.i.i, align 1
  %inc.i = add i32 %84, 1
  store i32 %inc.i, ptr %1, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true19.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %1, align 4
  %and.i.i69 = and i32 %87, 4095
  %arrayidx.i.i70 = getelementptr %struct.n_tty_data, ptr %1, i32 0, i32 11, i32 %and.i.i69
  %88 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %c, ptr %arrayidx.i.i70, align 1
  %inc.i71 = add i32 %87, 1
  store i32 %inc.i71, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n_tty_receive_signal_char(ptr noundef %tty, i32 noundef %signal, i8 noundef zeroext %c) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @isig(i32 noundef %signal, ptr noundef %tty)
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %0 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %termios, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @start_tty(ptr noundef %tty) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %2 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_lflag, align 4
  %and2 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %disc_data.i18 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %4 = ptrtoint ptr %disc_data.i18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disc_data.i18, align 4
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %conv.i = zext i8 %c to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %c)
  %cmp.i = icmp eq i8 %c, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %echo_head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %echo_head.i.i, align 4
  %and.i.i.i = and i32 %7, 4095
  %arrayidx.i.i.i = getelementptr %struct.n_tty_data, ptr %5, i32 0, i32 13, i32 %and.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %9 = ptrtoint ptr %echo_head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %echo_head.i.i, align 4
  %inc.i.i = add i32 %10, 1
  store i32 %inc.i.i, ptr %echo_head.i.i, align 4
  %and.i.i21.i = and i32 %inc.i.i, 4095
  %arrayidx.i.i22.i = getelementptr %struct.n_tty_data, ptr %5, i32 0, i32 13, i32 %and.i.i21.i
  %11 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx.i.i22.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit

if.else.i:                                        ; preds = %if.then4
  %and.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i.if.end.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %14 = and i8 %13, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp5.not.i = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %c)
  %cmp9.not.i = icmp eq i8 %c, 9
  %or.cond.i = or i1 %cmp9.not.i, %cmp5.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then11.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %echo_head.i24.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %echo_head.i24.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %echo_head.i24.i, align 4
  %and.i.i25.i = and i32 %16, 4095
  %arrayidx.i.i26.i = getelementptr %struct.n_tty_data, ptr %5, i32 0, i32 13, i32 %and.i.i25.i
  %17 = ptrtoint ptr %arrayidx.i.i26.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %arrayidx.i.i26.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %18 = ptrtoint ptr %echo_head.i24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %echo_head.i24.i, align 4
  %inc.i27.i = add i32 %19, 1
  store i32 %inc.i27.i, ptr %echo_head.i24.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then11.i, %land.lhs.true.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge
  %echo_head.i28.i = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %echo_head.i28.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %echo_head.i28.i, align 4
  %and.i.i29.i = and i32 %21, 4095
  %arrayidx.i.i30.i = getelementptr %struct.n_tty_data, ptr %5, i32 0, i32 13, i32 %and.i.i29.i
  %22 = ptrtoint ptr %arrayidx.i.i30.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %c, ptr %arrayidx.i.i30.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  br label %echo_char.exit

echo_char.exit:                                   ; preds = %if.end.i, %if.then.i
  %echo_head.i28.sink32.i = phi ptr [ %echo_head.i28.i, %if.end.i ], [ %echo_head.i.i, %if.then.i ]
  %23 = ptrtoint ptr %echo_head.i28.sink32.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %echo_head.i28.sink32.i, align 4
  %inc.i31.i = add i32 %24, 1
  store i32 %inc.i31.i, ptr %echo_head.i28.sink32.i, align 4
  %25 = ptrtoint ptr %disc_data.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disc_data.i18, align 4
  %output_lock.i = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i, i32 noundef 0) #9
  %echo_head.i = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %echo_head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %echo_head.i, align 4
  %echo_mark.i = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 5
  %29 = ptrtoint ptr %echo_mark.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %echo_mark.i, align 4
  %echo_commit.i = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 4
  %echo_tail.i = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 18
  %30 = ptrtoint ptr %echo_tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %echo_tail.i, align 4
  %sub2.i = sub i32 %28, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub2.i)
  %cmp.i13 = icmp ult i32 %sub2.i, 256
  br i1 %cmp.i13, label %echo_char.exit.if.then.i14_crit_edge, label %lor.lhs.false.i

echo_char.exit.if.then.i14_crit_edge:             ; preds = %echo_char.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i14

lor.lhs.false.i:                                  ; preds = %echo_char.exit
  %32 = ptrtoint ptr %echo_commit.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %echo_commit.i, align 4
  %sub.i = sub i32 %33, %31
  %rem.i = and i32 %sub2.i, 255
  %rem3.i = and i32 %sub.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %rem3.i)
  %cmp4.i = icmp ugt i32 %rem.i, %rem3.i
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then.i14_crit_edge, label %if.end.i16

lor.lhs.false.i.if.then.i14_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i14

if.then.i14:                                      ; preds = %lor.lhs.false.i.if.then.i14_crit_edge, %echo_char.exit.if.then.i14_crit_edge
  tail call void @mutex_unlock(ptr noundef %output_lock.i) #9
  br label %if.end5

if.end.i16:                                       ; preds = %lor.lhs.false.i
  %34 = ptrtoint ptr %echo_commit.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %28, ptr %echo_commit.i, align 4
  %call.i = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i15 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i15, label %if.end.i16.if.end5_crit_edge, label %land.lhs.true.i17

if.end.i16.if.end5_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.i17:                                ; preds = %if.end.i16
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  %flush_chars.i = getelementptr inbounds %struct.tty_operations, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %flush_chars.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %flush_chars.i, align 4
  %tobool8.not.i = icmp eq ptr %38, null
  br i1 %tobool8.not.i, label %land.lhs.true.i17.if.end5_crit_edge, label %if.then9.i

land.lhs.true.i17.if.end5_crit_edge:              ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then9.i:                                       ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %38(ptr noundef %tty) #9
  br label %if.end5

if.else:                                          ; preds = %if.end
  %echo_mark.i19 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 5
  %39 = ptrtoint ptr %echo_mark.i19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %echo_mark.i19, align 4
  %echo_tail.i20 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 18
  %41 = ptrtoint ptr %echo_tail.i20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %echo_tail.i20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp.i21 = icmp eq i32 %40, %42
  br i1 %cmp.i21, label %if.else.if.end5_crit_edge, label %if.end.i26

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.i26:                                       ; preds = %if.else
  %output_lock.i22 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %output_lock.i22, i32 noundef 0) #9
  %43 = ptrtoint ptr %echo_mark.i19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %echo_mark.i19, align 4
  %echo_commit.i23 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 4
  %45 = ptrtoint ptr %echo_commit.i23 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %echo_commit.i23, align 4
  %call.i24 = tail call fastcc i32 @__process_echoes(ptr noundef %tty) #9
  tail call void @mutex_unlock(ptr noundef %output_lock.i22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.end.i26.if.end5_crit_edge, label %land.lhs.true.i29

if.end.i26.if.end5_crit_edge:                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.i29:                                ; preds = %if.end.i26
  %ops.i27 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %46 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i27, align 4
  %flush_chars.i28 = getelementptr inbounds %struct.tty_operations, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %flush_chars.i28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %flush_chars.i28, align 4
  %tobool3.not.i = icmp eq ptr %49, null
  br i1 %tobool3.not.i, label %land.lhs.true.i29.if.end5_crit_edge, label %if.then4.i

land.lhs.true.i29.if.end5_crit_edge:              ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4.i:                                       ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %49(ptr noundef %tty) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4.i, %land.lhs.true.i29.if.end5_crit_edge, %if.end.i26.if.end5_crit_edge, %if.else.if.end5_crit_edge, %if.then9.i, %land.lhs.true.i17.if.end5_crit_edge, %if.end.i16.if.end5_crit_edge, %if.then.i14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_throttle_safe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_n_tty_inherit_ops, !1, !"__ksymtab_n_tty_inherit_ops", i1 false, i1 false}
!1 = !{!"../drivers/tty/n_tty.c", i32 2414, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/tty/n_tty.c", i32 2388, i32 21}
!4 = !{ptr @n_tty_ops, !5, !"n_tty_ops", i1 false, i1 false}
!5 = !{!"../drivers/tty/n_tty.c", i32 2385, i32 29}
!6 = !{ptr @n_tty_open.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/tty/n_tty.c", i32 1818, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @n_tty_open.__key.2, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/tty/n_tty.c", i32 1819, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/n_tty.c", i32 207, i32 3}
!14 = !{ptr @n_tty_kick_worker._rs, !13, !"_rs", i1 false, i1 false}
!15 = !{ptr @__func__.n_tty_kick_worker, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @n_tty_kick_worker._rs.7, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../drivers/tty/n_tty.c", i32 213, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/n_tty.c", i32 435, i32 25}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/n_tty.c", i32 457, i32 25}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/n_tty.c", i32 1426, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @n_tty_receive_char_flagged._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @n_tty_receive_char_flagged._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/tty/n_tty.c", i32 1176, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @n_tty_receive_overrun._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @n_tty_receive_overrun._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{i64 2154535072}
!47 = !{i64 2154540153}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 5542210}
!50 = !{i64 5542407}
!51 = !{i64 2153027640}
!52 = !{i64 2154568037, i64 2154568317, i64 2154568651, i64 2154568985}
!53 = !{i64 2154577112, i64 2154577392, i64 2154577726, i64 2154578060}
!54 = !{i64 2154548559}
!55 = !{i64 2154557812}
!56 = !{i64 2154477619}
!57 = !{i64 2154478958}
!58 = !{i64 2154521476}
!59 = !{i64 2154486212}
!60 = !{i64 2154496229}
!61 = !{i64 2154508800}
