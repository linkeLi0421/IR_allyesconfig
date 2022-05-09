; ModuleID = '/llk/IR_all_yes/drivers/tty/n_hdlc.c_pt.bc'
source_filename = "../drivers/tty/n_hdlc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.71, %struct.anon.72, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.71 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.72 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.n_hdlc = type { i32, i8, i8, %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list, %struct.work_struct, ptr }
%struct.n_hdlc_buf_list = type { %struct.list_head, i32, %struct.spinlock }
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
%struct.n_hdlc_buf = type { %struct.list_head, i32, [0 x i8] }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@n_hdlc_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str, i32 13, ptr @n_hdlc_tty_open, ptr @n_hdlc_tty_close, ptr @flush_rx_queue, ptr @n_hdlc_tty_read, ptr @n_hdlc_tty_write, ptr @n_hdlc_tty_ioctl, ptr null, ptr null, ptr @n_hdlc_tty_poll, ptr null, ptr @n_hdlc_tty_receive, ptr @n_hdlc_tty_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_n_hdlc__260_850_n_hdlc_init6 = internal global ptr @n_hdlc_init, section ".initcall6.init", align 4
@__exitcall_n_hdlc_exit = internal global ptr @n_hdlc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file261 = internal constant [31 x i8] c"n_hdlc.file=drivers/tty/n_hdlc\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [19 x i8] c"n_hdlc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author263 = internal constant [48 x i8] c"n_hdlc.author=Paul Fulghum paulkf@microgate.com\00", section ".modinfo", align 1
@__param_str_maxframe = internal constant [16 x i8] c"n_hdlc.maxframe\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@maxframe = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_maxframe = internal constant %struct.kernel_param { ptr @__param_str_maxframe, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @maxframe } }, section "__param", align 4
@__UNIQUE_ID_maxframetype264 = internal constant [29 x i8] c"n_hdlc.parmtype=maxframe:int\00", section ".modinfo", align 1
@__UNIQUE_ID_alias265 = internal constant [26 x i8] c"n_hdlc.alias=tty-ldisc-13\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdlc\00", [27 x i8] zeroinitializer }, align 32
@n_hdlc_tty_open.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"n_hdlc\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"n_hdlc_tty_open\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/tty/n_hdlc.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() called (device=%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@n_hdlc_tty_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: tty already associated!\0A\00", [33 x i8] zeroinitializer }, align 32
@n_hdlc_tty_open._entry_ptr = internal global ptr @n_hdlc_tty_open._entry, section ".printk_index", align 4
@n_hdlc_tty_open._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: n_hdlc_alloc failed\0A\00", [37 x i8] zeroinitializer }, align 32
@n_hdlc_tty_open._entry_ptr.8 = internal global ptr @n_hdlc_tty_open._entry.6, section ".printk_index", align 4
@n_hdlc_tty_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&n_hdlc->write_work)\00", [57 x i8] zeroinitializer }, align 32
@n_hdlc_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&n_hdlc->rx_free_buf_list.spinlock\00", [61 x i8] zeroinitializer }, align 32
@n_hdlc_alloc.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&n_hdlc->tx_free_buf_list.spinlock\00", [61 x i8] zeroinitializer }, align 32
@n_hdlc_alloc.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&n_hdlc->rx_buf_list.spinlock\00", [34 x i8] zeroinitializer }, align 32
@n_hdlc_alloc.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&n_hdlc->tx_buf_list.spinlock\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@n_hdlc_alloc_buf.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"n_hdlc_alloc_buf\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(), kmalloc() failed for %s buffer %u\0A\00", [55 x i8] zeroinitializer }, align 32
@n_hdlc_send_frames.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"n_hdlc_send_frames\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sending frame %p, count=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@n_hdlc_send_frames.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.23, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"frame %p completed\0A\00", [44 x i8] zeroinitializer }, align 32
@n_hdlc_send_frames.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.24, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"frame %p pending\0A\00", [46 x i8] zeroinitializer }, align 32
@n_hdlc_tty_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014n_hdlc: trying to close unopened tty!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"n_hdlc_tty_close\00", [47 x i8] zeroinitializer }, align 32
@n_hdlc_tty_close._entry_ptr = internal global ptr @n_hdlc_tty_close._entry, section ".printk_index", align 4
@n_hdlc_tty_write.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"n_hdlc_tty_write\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() called count=%zd\0A\00", [41 x i8] zeroinitializer }, align 32
@n_hdlc_tty_write.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: truncating user packet from %zu to %d\0A\00", [53 x i8] zeroinitializer }, align 32
@n_hdlc_tty_ioctl.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"n_hdlc_tty_ioctl\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s() called %d\0A\00", [16 x i8] zeroinitializer }, align 32
@n_hdlc_tty_receive.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"n_hdlc_tty_receive\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s() called count=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@n_hdlc_tty_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013line not using HDLC discipline\0A\00", [62 x i8] zeroinitializer }, align 32
@n_hdlc_tty_receive._entry_ptr = internal global ptr @n_hdlc_tty_receive._entry, section ".printk_index", align 4
@n_hdlc_tty_receive.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.37, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rx count>maxframesize, data discarded\0A\00", [57 x i8] zeroinitializer }, align 32
@n_hdlc_tty_receive.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.38, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no more rx buffers, data discarded\0A\00", [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@n_hdlc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016N_HDLC line discipline registered with maxframe=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"n_hdlc_init\00", [20 x i8] zeroinitializer }, align 32
@n_hdlc_init._entry_ptr = internal global ptr @n_hdlc_init._entry, section ".printk_index", align 4
@n_hdlc_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013N_HDLC: error registering line discipline: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@n_hdlc_init._entry_ptr.43 = internal global ptr @n_hdlc_init._entry.41, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 21515, i64 21521, i64 21531]
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"n_hdlc_ldisc\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 811, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"maxframe\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 162, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 814, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 235, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 239, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 245, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 249, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 729, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 730, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 731, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 732, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 739, i32 68 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 740, i32 68 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 709, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 293, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 310, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 321, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 204, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 543, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 550, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 610, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 387, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 391, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 396, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 413, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 835, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [24 x i8] c"../drivers/tty/n_hdlc.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 838, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias265, ptr @__UNIQUE_ID_author263, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__UNIQUE_ID_maxframetype264, ptr @__exitcall_n_hdlc_exit, ptr @__initcall__kmod_n_hdlc__260_850_n_hdlc_init6, ptr @__param_maxframe, ptr @n_hdlc_exit, ptr @n_hdlc_init._entry, ptr @n_hdlc_init._entry.41, ptr @n_hdlc_init._entry_ptr, ptr @n_hdlc_init._entry_ptr.43, ptr @n_hdlc_tty_close._entry, ptr @n_hdlc_tty_close._entry_ptr, ptr @n_hdlc_tty_open._entry, ptr @n_hdlc_tty_open._entry.6, ptr @n_hdlc_tty_open._entry_ptr, ptr @n_hdlc_tty_open._entry_ptr.8, ptr @n_hdlc_tty_receive._entry, ptr @n_hdlc_tty_receive._entry_ptr, ptr @n_hdlc_ldisc, ptr @maxframe, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @n_hdlc_tty_open.__key, ptr @.str.9, ptr @n_hdlc_alloc.__key, ptr @.str.10, ptr @n_hdlc_alloc.__key.11, ptr @.str.12, ptr @n_hdlc_alloc.__key.13, ptr @.str.14, ptr @n_hdlc_alloc.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxframe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_tty_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_tty_open._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_tty_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_alloc.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_alloc.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_alloc.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_tty_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_tty_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_hdlc_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @n_hdlc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @n_hdlc_ldisc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @n_hdlc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @maxframe, align 4
  %1 = tail call i32 @llvm.smax.i32(i32 %0, i32 4096)
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 65535)
  store i32 %2, ptr @maxframe, align 4
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @n_hdlc_ldisc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load i32, ptr @maxframe, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %3) #12
  br label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end11, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_hdlc_tty_open(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_tty_open.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_tty_open, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_tty_open.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 280) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end16, label %do.body20

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #12
  br label %cleanup

do.body20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %rx_free_buf_list.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 6
  %spinlock.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @n_hdlc_alloc.__key, i16 noundef signext 3) #9
  %tx_free_buf_list.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 5
  %spinlock3.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock3.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @n_hdlc_alloc.__key.11, i16 noundef signext 3) #9
  %rx_buf_list.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 4
  %spinlock8.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock8.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @n_hdlc_alloc.__key.13, i16 noundef signext 3) #9
  %tx_buf_list.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 3
  %spinlock13.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock13.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @n_hdlc_alloc.__key.15, i16 noundef signext 3) #9
  %3 = ptrtoint ptr %rx_free_buf_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %rx_free_buf_list.i, ptr %rx_free_buf_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx_free_buf_list.i, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %tx_free_buf_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %tx_free_buf_list.i, ptr %tx_free_buf_list.i, align 8
  %prev.i38.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i38.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx_free_buf_list.i, ptr %prev.i38.i, align 4
  %7 = ptrtoint ptr %rx_buf_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %rx_buf_list.i, ptr %rx_buf_list.i, align 8
  %prev.i39.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rx_buf_list.i, ptr %prev.i39.i, align 4
  %9 = ptrtoint ptr %tx_buf_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %tx_buf_list.i, ptr %tx_buf_list.i, align 8
  %prev.i40.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i40.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx_buf_list.i, ptr %prev.i40.i, align 4
  tail call fastcc void @n_hdlc_alloc_buf(ptr noundef %rx_free_buf_list.i, i32 noundef 10, ptr noundef nonnull @.str.17) #9
  tail call fastcc void @n_hdlc_alloc_buf(ptr noundef %tx_free_buf_list.i, i32 noundef 3, ptr noundef nonnull @.str.18) #9
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 9118, ptr %call7.i.i.i, align 8
  %write_work = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %write_work, i32 noundef 0) #9
  %12 = ptrtoint ptr %write_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %write_work, align 8
  %lockdep_map = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @n_hdlc_tty_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry24 = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 7, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry24, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @n_hdlc_tty_write_work, ptr %func, align 4
  %tty_for_write_work = getelementptr inbounds %struct.n_hdlc, ptr %call7.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %tty_for_write_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tty, ptr %tty_for_write_work, align 4
  %17 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %disc_data, align 4
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %18 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65536, ptr %receive_room, align 4
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #9
  tail call void @tty_driver_flush_buffer(ptr noundef %tty) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %do.end16, %do.end7
  %retval.0 = phi i32 [ -17, %do.end7 ], [ 0, %do.body20 ], [ -23, %do.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n_hdlc_tty_close(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9118, i32 %3)
  %cmp.not = icmp eq i32 %3, 9118
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #9
  %4 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %disc_data, align 4
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %write_work = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 7
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %write_work) #9
  %rx_free_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6
  tail call fastcc void @n_hdlc_free_buf_list(ptr noundef %rx_free_buf_list)
  %tx_free_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 5
  tail call fastcc void @n_hdlc_free_buf_list(ptr noundef %tx_free_buf_list)
  %rx_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4
  tail call fastcc void @n_hdlc_free_buf_list(ptr noundef %rx_buf_list)
  %tx_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 3
  tail call fastcc void @n_hdlc_free_buf_list(ptr noundef %tx_buf_list)
  tail call void @kfree(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flush_rx_queue(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %rx_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4
  %spinlock.i = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4, i32 2
  %call2.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #9
  %2 = ptrtoint ptr %rx_buf_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_buf_list, align 4
  %cmp10.not.i10 = icmp eq ptr %3, %rx_buf_list
  %tobool.not.i811 = icmp eq ptr %3, null
  %tobool.not.i12 = or i1 %cmp10.not.i10, %tobool.not.i811
  br i1 %tobool.not.i12, label %entry.while.end_crit_edge, label %if.then.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then.i.lr.ph:                                  ; preds = %entry
  %count.i = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4, i32 1
  %rx_free_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6
  %spinlock.i2 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6, i32 2
  %prev.i.i4 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6, i32 0, i32 1
  %count.i7 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6, i32 1
  br label %if.then.i

if.then.i:                                        ; preds = %n_hdlc_buf_put.exit.if.then.i_crit_edge, %if.then.i.lr.ph
  %4 = phi ptr [ %3, %if.then.i.lr.ph ], [ %24, %n_hdlc_buf_put.exit.if.then.i_crit_edge ]
  %call2.i13 = phi i32 [ %call2.i9, %if.then.i.lr.ph ], [ %call2.i, %n_hdlc_buf_put.exit.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %4) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.i.i.i, %if.then.i.while.body_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i13) #9
  %call2.i3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i2) #9
  %15 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i4, align 4
  %call.i.i.i5 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %4, ptr noundef %16, ptr noundef %rx_free_buf_list) #9
  br i1 %call.i.i.i5, label %if.end.i.i.i6, label %while.body.n_hdlc_buf_put.exit_crit_edge

while.body.n_hdlc_buf_put.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_put.exit

if.end.i.i.i6:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %4, ptr %prev.i.i4, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rx_free_buf_list, ptr %4, align 4
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %4, ptr %16, align 4
  br label %n_hdlc_buf_put.exit

n_hdlc_buf_put.exit:                              ; preds = %if.end.i.i.i6, %while.body.n_hdlc_buf_put.exit_crit_edge
  %21 = ptrtoint ptr %count.i7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i7, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %count.i7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i2, i32 noundef %call2.i3) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #9
  %23 = ptrtoint ptr %rx_buf_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %rx_buf_list, align 4
  %cmp10.not.i = icmp eq ptr %24, %rx_buf_list
  %tobool.not.i8 = icmp eq ptr %24, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not.i8
  br i1 %tobool.not.i, label %n_hdlc_buf_put.exit.while.end_crit_edge, label %n_hdlc_buf_put.exit.if.then.i_crit_edge

n_hdlc_buf_put.exit.if.then.i_crit_edge:          ; preds = %n_hdlc_buf_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

n_hdlc_buf_put.exit.while.end_crit_edge:          ; preds = %n_hdlc_buf_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %n_hdlc_buf_put.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i9, %entry.while.end_crit_edge ], [ %call2.i, %n_hdlc_buf_put.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i.lcssa) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_hdlc_tty_read(ptr noundef %tty, ptr noundef %file, ptr nocapture noundef writeonly %kbuf, i32 noundef %nr, ptr nocapture noundef %cookie, i32 noundef %offset) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !115) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %15 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cookie, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end, label %entry.have_rbuf_crit_edge

entry.have_rbuf_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %have_rbuf

if.end:                                           ; preds = %entry
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 27
  call void @add_wait_queue(ptr noundef %read_wait, ptr noundef nonnull %wait) #9
  %flags2 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %rx_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4
  %spinlock.i = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4, i32 2
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %signal_pending.exit.for.cond_crit_edge, %if.end
  %17 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags2, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp eq i32 %19, 0
  br i1 %tobool4.not, label %if.end6, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end6:                                          ; preds = %for.cond
  %call7 = call i32 @tty_hung_up_p(ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %__here, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

__here:                                           ; preds = %if.end6
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@n_hdlc_tty_read, %__here) to i32), ptr %task_state_change, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %23, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !126
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #9
  %25 = ptrtoint ptr %rx_buf_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %rx_buf_list, align 4
  %cmp10.not.i = icmp eq ptr %26, %rx_buf_list
  %tobool.not.i229 = icmp eq ptr %26, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not.i229
  br i1 %tobool.not.i, label %if.end78, label %if.then.i

if.then.i:                                        ; preds = %__here
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %26) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.n_hdlc_buf_get.exit_crit_edge

if.then.i.n_hdlc_buf_get.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_get.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %n_hdlc_buf_get.exit

n_hdlc_buf_get.exit:                              ; preds = %if.end.i.i.i, %if.then.i.n_hdlc_buf_get.exit_crit_edge
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %count.i = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %36, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #9
  br label %for.end

if.end78:                                         ; preds = %__here
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #9
  %37 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %f_flags.i, align 4
  %and.i218 = and i32 %38, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i218)
  %tobool.not.i219 = icmp eq i32 %and.i218, 0
  br i1 %tobool.not.i219, label %tty_io_nonblock.exit, label %if.end78.for.end_crit_edge

if.end78.for.end_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

tty_io_nonblock.exit:                             ; preds = %if.end78
  %39 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags2, align 4
  %41 = and i32 %40, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool1.i.not = icmp eq i32 %41, 0
  br i1 %tobool1.i.not, label %if.end81, label %tty_io_nonblock.exit.for.end_crit_edge

tty_io_nonblock.exit.for.end_crit_edge:           ; preds = %tty_io_nonblock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end81:                                         ; preds = %tty_io_nonblock.exit
  call void @schedule() #9
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
  %tobool.not.i220 = icmp eq i32 %48, 0
  br i1 %tobool.not.i220, label %signal_pending.exit, label %if.end81.for.end_crit_edge, !prof !127

if.end81.for.end_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

signal_pending.exit:                              ; preds = %if.end81
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %45, align 4
  %and1.i.i.i.i.i = and i32 %50, 1
  %tobool85.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool85.not, label %signal_pending.exit.for.cond_crit_edge, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

signal_pending.exit.for.cond_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %signal_pending.exit.for.end_crit_edge, %if.end81.for.end_crit_edge, %tty_io_nonblock.exit.for.end_crit_edge, %if.end78.for.end_crit_edge, %n_hdlc_buf_get.exit, %if.end6.for.end_crit_edge, %for.cond.for.end_crit_edge
  %rbuf.1 = phi ptr [ %26, %n_hdlc_buf_get.exit ], [ null, %if.end6.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ], [ null, %tty_io_nonblock.exit.for.end_crit_edge ], [ null, %signal_pending.exit.for.end_crit_edge ], [ null, %if.end78.for.end_crit_edge ], [ null, %if.end81.for.end_crit_edge ]
  %ret.0 = phi i32 [ 0, %n_hdlc_buf_get.exit ], [ -4, %if.end81.for.end_crit_edge ], [ -11, %if.end78.for.end_crit_edge ], [ -4, %signal_pending.exit.for.end_crit_edge ], [ -11, %tty_io_nonblock.exit.for.end_crit_edge ], [ -5, %for.cond.for.end_crit_edge ], [ 0, %if.end6.for.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %read_wait, ptr noundef nonnull %wait) #9
  br label %__here139

__here139:                                        ; preds = %for.end
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %task_state_change143 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 212
  %53 = ptrtoint ptr %task_state_change143 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 ptrtoint (ptr blockaddress(@n_hdlc_tty_read, %__here139) to i32), ptr %task_state_change143, align 4
  %54 = load ptr, ptr %task, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %54, align 128
  %tobool160.not = icmp eq ptr %rbuf.1, null
  br i1 %tobool160.not, label %__here139.cleanup_crit_edge, label %if.end162

__here139.cleanup_crit_edge:                      ; preds = %__here139
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end162:                                        ; preds = %__here139
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %rbuf.1, ptr %cookie, align 4
  br label %have_rbuf

have_rbuf:                                        ; preds = %if.end162, %entry.have_rbuf_crit_edge
  %rbuf.2 = phi ptr [ %16, %entry.have_rbuf_crit_edge ], [ %rbuf.1, %if.end162 ]
  %ret.1 = phi i32 [ 0, %entry.have_rbuf_crit_edge ], [ %ret.0, %if.end162 ]
  %count = getelementptr inbounds %struct.n_hdlc_buf, ptr %rbuf.2, i32 0, i32 1
  %57 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %offset)
  %cmp.not = icmp ugt i32 %58, %offset
  br i1 %cmp.not, label %if.end164, label %have_rbuf.done_with_rbuf_crit_edge

have_rbuf.done_with_rbuf_crit_edge:               ; preds = %have_rbuf
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_with_rbuf

if.end164:                                        ; preds = %have_rbuf
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool165.not = icmp eq i32 %nr, 0
  br i1 %tobool165.not, label %if.end164.done_with_rbuf_crit_edge, label %if.end167

if.end164.done_with_rbuf_crit_edge:               ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_with_rbuf

if.end167:                                        ; preds = %if.end164
  %sub = sub i32 %58, %offset
  %59 = call i32 @llvm.umin.i32(i32 %sub, i32 %nr)
  %buf = getelementptr inbounds %struct.n_hdlc_buf, ptr %rbuf.2, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %buf, i32 %offset
  %60 = call ptr @memcpy(ptr %kbuf, ptr %add.ptr, i32 %59)
  %add = add i32 %59, %offset
  %61 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %62)
  %cmp173 = icmp ult i32 %add, %62
  br i1 %cmp173, label %if.end167.cleanup_crit_edge, label %if.end167.done_with_rbuf_crit_edge

if.end167.done_with_rbuf_crit_edge:               ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_with_rbuf

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

done_with_rbuf:                                   ; preds = %if.end167.done_with_rbuf_crit_edge, %if.end164.done_with_rbuf_crit_edge, %have_rbuf.done_with_rbuf_crit_edge
  %ret.3 = phi i32 [ %ret.1, %have_rbuf.done_with_rbuf_crit_edge ], [ %59, %if.end167.done_with_rbuf_crit_edge ], [ -75, %if.end164.done_with_rbuf_crit_edge ]
  %63 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %cookie, align 4
  %count176 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6, i32 1
  %64 = ptrtoint ptr %count176 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %65)
  %cmp177 = icmp sgt i32 %65, 10
  br i1 %cmp177, label %if.then178, label %if.else

if.then178:                                       ; preds = %done_with_rbuf
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %rbuf.2) #9
  br label %cleanup

if.else:                                          ; preds = %done_with_rbuf
  %rx_free_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6
  %spinlock.i221 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6, i32 2
  %call2.i222 = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i221) #9
  %prev.i.i223 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i223 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i223, align 4
  %call.i.i.i224 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %rbuf.2, ptr noundef %67, ptr noundef %rx_free_buf_list) #9
  br i1 %call.i.i.i224, label %if.end.i.i.i225, label %if.else.n_hdlc_buf_put.exit_crit_edge

if.else.n_hdlc_buf_put.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_put.exit

if.end.i.i.i225:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %prev.i.i223 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %rbuf.2, ptr %prev.i.i223, align 4
  %69 = ptrtoint ptr %rbuf.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %rx_free_buf_list, ptr %rbuf.2, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %rbuf.2, i32 0, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %rbuf.2, ptr %67, align 4
  br label %n_hdlc_buf_put.exit

n_hdlc_buf_put.exit:                              ; preds = %if.end.i.i.i225, %if.else.n_hdlc_buf_put.exit_crit_edge
  %72 = ptrtoint ptr %count176 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count176, align 4
  %inc.i = add i32 %73, 1
  store i32 %inc.i, ptr %count176, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i221, i32 noundef %call2.i222) #9
  br label %cleanup

cleanup:                                          ; preds = %n_hdlc_buf_put.exit, %if.then178, %if.end167.cleanup_crit_edge, %__here139.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %__here139.cleanup_crit_edge ], [ %59, %if.end167.cleanup_crit_edge ], [ %ret.3, %n_hdlc_buf_put.exit ], [ %ret.3, %if.then178 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_hdlc_tty_write(ptr noundef %tty, ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !115) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_tty_write.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_tty_write, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_tty_write.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %count) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9118, i32 %16)
  %cmp.not = icmp eq i32 %16, 9118
  br i1 %cmp.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %17 = load i32, ptr @maxframe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %count)
  %cmp7 = icmp ult i32 %17, %count
  br i1 %cmp7, label %do.body9, label %if.end6.if.end25_crit_edge

if.end6.if.end25_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body9:                                         ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_tty_write.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_tty_write, %if.then21)) #9
          to label %do.end24 [label %if.then21], !srcloc !125

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %18 = load i32, ptr @maxframe, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_tty_write.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %count, i32 noundef %18) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body9
  %19 = load i32, ptr @maxframe, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %if.end6.if.end25_crit_edge
  %count.addr.0 = phi i32 [ %19, %do.end24 ], [ %count, %if.end6.if.end25_crit_edge ]
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  call void @add_wait_queue(ptr noundef %write_wait, ptr noundef nonnull %wait) #9
  %tx_free_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 5
  %spinlock.i = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 5, i32 2
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  br label %__here

__here:                                           ; preds = %signal_pending.exit.__here_crit_edge, %if.end25
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@n_hdlc_tty_write, %__here) to i32), ptr %task_state_change, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %23, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #9
  %25 = ptrtoint ptr %tx_free_buf_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %tx_free_buf_list, align 4
  %cmp10.not.i = icmp eq ptr %26, %tx_free_buf_list
  %tobool.not.i244 = icmp eq ptr %26, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not.i244
  br i1 %tobool.not.i, label %if.end102, label %if.then.i

if.then.i:                                        ; preds = %__here
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %26) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.n_hdlc_buf_get.exit_crit_edge

if.then.i.n_hdlc_buf_get.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_get.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %n_hdlc_buf_get.exit

n_hdlc_buf_get.exit:                              ; preds = %if.end.i.i.i, %if.then.i.n_hdlc_buf_get.exit_crit_edge
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %count.i = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %36, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #9
  br label %__here162

if.end102:                                        ; preds = %__here
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #9
  %37 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %f_flags.i, align 4
  %and.i213 = and i32 %38, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i213)
  %tobool.not.i214 = icmp eq i32 %and.i213, 0
  br i1 %tobool.not.i214, label %tty_io_nonblock.exit, label %if.end102.__here162_crit_edge

if.end102.__here162_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here162

tty_io_nonblock.exit:                             ; preds = %if.end102
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i, align 4
  %41 = and i32 %40, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool1.i.not = icmp eq i32 %41, 0
  br i1 %tobool1.i.not, label %if.end105, label %tty_io_nonblock.exit.__here162_crit_edge

tty_io_nonblock.exit.__here162_crit_edge:         ; preds = %tty_io_nonblock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here162

if.end105:                                        ; preds = %tty_io_nonblock.exit
  call void @schedule() #9
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
  %tobool.not.i215 = icmp eq i32 %48, 0
  br i1 %tobool.not.i215, label %signal_pending.exit, label %if.end105.__here162_crit_edge, !prof !127

if.end105.__here162_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here162

signal_pending.exit:                              ; preds = %if.end105
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %45, align 4
  %and1.i.i.i.i.i = and i32 %50, 1
  %tobool109.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool109.not, label %signal_pending.exit.__here_crit_edge, label %signal_pending.exit.__here162_crit_edge

signal_pending.exit.__here162_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here162

signal_pending.exit.__here_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here162:                                        ; preds = %signal_pending.exit.__here162_crit_edge, %if.end105.__here162_crit_edge, %tty_io_nonblock.exit.__here162_crit_edge, %if.end102.__here162_crit_edge, %n_hdlc_buf_get.exit
  %spec.select.i236 = phi ptr [ %26, %n_hdlc_buf_get.exit ], [ null, %signal_pending.exit.__here162_crit_edge ], [ null, %tty_io_nonblock.exit.__here162_crit_edge ], [ null, %if.end102.__here162_crit_edge ], [ null, %if.end105.__here162_crit_edge ]
  %error.0 = phi i32 [ 0, %n_hdlc_buf_get.exit ], [ -4, %if.end105.__here162_crit_edge ], [ -11, %if.end102.__here162_crit_edge ], [ -11, %tty_io_nonblock.exit.__here162_crit_edge ], [ -4, %signal_pending.exit.__here162_crit_edge ]
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %task_state_change166 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 212
  %53 = ptrtoint ptr %task_state_change166 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 ptrtoint (ptr blockaddress(@n_hdlc_tty_write, %__here162) to i32), ptr %task_state_change166, align 4
  %54 = load ptr, ptr %task, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %54, align 128
  call void @remove_wait_queue(ptr noundef %write_wait, ptr noundef nonnull %wait) #9
  br i1 %tobool.not.i, label %__here162.cleanup_crit_edge, label %if.then185

__here162.cleanup_crit_edge:                      ; preds = %__here162
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then185:                                       ; preds = %__here162
  %buf = getelementptr inbounds %struct.n_hdlc_buf, ptr %spec.select.i236, i32 0, i32 2
  %56 = call ptr @memcpy(ptr %buf, ptr %data, i32 %count.addr.0)
  %count186 = getelementptr inbounds %struct.n_hdlc_buf, ptr %spec.select.i236, i32 0, i32 1
  %57 = ptrtoint ptr %count186 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %count.addr.0, ptr %count186, align 4
  %tx_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 3
  %spinlock.i217 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 3, i32 2
  %call2.i218 = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i217) #9
  %prev.i.i219 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 3, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i219 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i219, align 4
  %call.i.i.i220 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %spec.select.i236, ptr noundef %59, ptr noundef %tx_buf_list) #9
  br i1 %call.i.i.i220, label %if.end.i.i.i221, label %if.then185.n_hdlc_buf_put.exit_crit_edge

if.then185.n_hdlc_buf_put.exit_crit_edge:         ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_put.exit

if.end.i.i.i221:                                  ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %prev.i.i219 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %spec.select.i236, ptr %prev.i.i219, align 4
  %61 = ptrtoint ptr %spec.select.i236 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %tx_buf_list, ptr %spec.select.i236, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i236, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %spec.select.i236, ptr %59, align 4
  br label %n_hdlc_buf_put.exit

n_hdlc_buf_put.exit:                              ; preds = %if.end.i.i.i221, %if.then185.n_hdlc_buf_put.exit_crit_edge
  %count.i222 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %count.i222 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count.i222, align 4
  %inc.i = add i32 %65, 1
  store i32 %inc.i, ptr %count.i222, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i217, i32 noundef %call2.i218) #9
  call fastcc void @n_hdlc_send_frames(ptr noundef %1, ptr noundef %tty)
  br label %cleanup

cleanup:                                          ; preds = %n_hdlc_buf_put.exit, %__here162.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end.cleanup_crit_edge ], [ %error.0, %__here162.cleanup_crit_edge ], [ %count.addr.0, %n_hdlc_buf_put.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_hdlc_tty_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_tty_ioctl.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_tty_ioctl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_tty_ioctl.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %cmd) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9118, i32 %3)
  %cmp.not = icmp eq i32 %3, 9118
  br i1 %cmp.not, label %if.end4, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end4.sw.default_crit_edge [
    i32 21531, label %do.body6
    i32 21521, label %sw.bb36
    i32 21515, label %sw.bb92
  ]

if.end4.sw.default_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

do.body6:                                         ; preds = %if.end4
  %rx_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4
  %spinlock = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4, i32 2
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #9
  %5 = ptrtoint ptr %rx_buf_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rx_buf_list, align 4
  %cmp21.not = icmp eq ptr %6, %rx_buf_list
  %tobool24.not132 = icmp eq ptr %6, null
  %tobool24.not = or i1 %cmp21.not, %tobool24.not132
  br i1 %tobool24.not, label %do.body6.if.end27_crit_edge, label %if.then25

do.body6.if.end27_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %count26 = getelementptr inbounds %struct.n_hdlc_buf, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %count26 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %do.body6.if.end27_crit_edge
  %count.0 = phi i32 [ %8, %if.then25 ], [ 0, %do.body6.if.end27_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call10) #9
  %9 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 628) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !115) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !129
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 %count.0, i32 -1226833921) #9, !srcloc !132
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  br label %cleanup

sw.bb36:                                          ; preds = %if.end4
  %call37 = tail call i32 @tty_chars_in_buffer(ptr noundef %tty) #9
  %tx_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 3
  %spinlock45 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 3, i32 2
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock45) #9
  %14 = ptrtoint ptr %tx_buf_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %tx_buf_list, align 4
  %cmp62.not = icmp eq ptr %15, %tx_buf_list
  %tobool71.not131 = icmp eq ptr %15, null
  %tobool71.not = or i1 %cmp62.not, %tobool71.not131
  br i1 %tobool71.not, label %sw.bb36.if.end74_crit_edge, label %if.then72

sw.bb36.if.end74_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then72:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  %count73 = getelementptr inbounds %struct.n_hdlc_buf, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %count73 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count73, align 4
  %add = add i32 %17, %call37
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %sw.bb36.if.end74_crit_edge
  %count.1 = phi i32 [ %add, %if.then72 ], [ %call37, %sw.bb36.if.end74_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock45, i32 noundef %call47) #9
  %18 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 641) #9
  %19 = tail call i32 @llvm.read_register.i32(metadata !115) #9
  %and.i.i.i126 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i126 to ptr
  %cpu_domain.i.i127 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i127) #7, !srcloc !129
  %and.i128 = and i32 %21, -13
  %or.i129 = or i32 %and.i128, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i129) #9, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  %22 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %18, i32 %count.1, i32 -1226833921) #9, !srcloc !133
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #9, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  br label %cleanup

sw.bb92:                                          ; preds = %if.end4
  %arg.off = add i32 %arg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %arg.off)
  %switch = icmp ult i32 %arg.off, 2
  br i1 %switch, label %sw.bb93, label %sw.bb92.sw.default_crit_edge

sw.bb92.sw.default_crit_edge:                     ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb93:                                          ; preds = %sw.bb92
  %23 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %disc_data, align 4
  %tx_buf_list.i = getelementptr inbounds %struct.n_hdlc, ptr %24, i32 0, i32 3
  %spinlock.i.i = getelementptr inbounds %struct.n_hdlc, ptr %24, i32 0, i32 3, i32 2
  %call2.i9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i) #9
  %25 = ptrtoint ptr %tx_buf_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %tx_buf_list.i, align 4
  %cmp10.not.i10.i = icmp eq ptr %26, %tx_buf_list.i
  %tobool.not.i811.i = icmp eq ptr %26, null
  %tobool.not.i12.i = or i1 %cmp10.not.i10.i, %tobool.not.i811.i
  br i1 %tobool.not.i12.i, label %sw.bb93.flush_tx_queue.exit_crit_edge, label %if.then.i.lr.ph.i

sw.bb93.flush_tx_queue.exit_crit_edge:            ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #11
  br label %flush_tx_queue.exit

if.then.i.lr.ph.i:                                ; preds = %sw.bb93
  %count.i.i = getelementptr inbounds %struct.n_hdlc, ptr %24, i32 0, i32 3, i32 1
  %tx_free_buf_list.i = getelementptr inbounds %struct.n_hdlc, ptr %24, i32 0, i32 5
  %spinlock.i2.i = getelementptr inbounds %struct.n_hdlc, ptr %24, i32 0, i32 5, i32 2
  %prev.i.i4.i = getelementptr inbounds %struct.n_hdlc, ptr %24, i32 0, i32 5, i32 0, i32 1
  %count.i7.i = getelementptr inbounds %struct.n_hdlc, ptr %24, i32 0, i32 5, i32 1
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %n_hdlc_buf_put.exit.i.if.then.i.i_crit_edge, %if.then.i.lr.ph.i
  %27 = phi ptr [ %26, %if.then.i.lr.ph.i ], [ %47, %n_hdlc_buf_put.exit.i.if.then.i.i_crit_edge ]
  %call2.i13.i = phi i32 [ %call2.i9.i, %if.then.i.lr.ph.i ], [ %call2.i.i, %n_hdlc_buf_put.exit.i.if.then.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %27) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.while.body.i_crit_edge

if.then.i.i.while.body.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.i.i.i, %if.then.i.i.while.body.i_crit_edge
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i.i, align 4
  %dec.i.i = add i32 %37, -1
  store i32 %dec.i.i, ptr %count.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i.i, i32 noundef %call2.i13.i) #9
  %call2.i3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i2.i) #9
  %38 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i4.i, align 4
  %call.i.i.i5.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %27, ptr noundef %39, ptr noundef %tx_free_buf_list.i) #9
  br i1 %call.i.i.i5.i, label %if.end.i.i.i6.i, label %while.body.i.n_hdlc_buf_put.exit.i_crit_edge

while.body.i.n_hdlc_buf_put.exit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_put.exit.i

if.end.i.i.i6.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %27, ptr %prev.i.i4.i, align 4
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %tx_free_buf_list.i, ptr %27, align 4
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %27, ptr %39, align 4
  br label %n_hdlc_buf_put.exit.i

n_hdlc_buf_put.exit.i:                            ; preds = %if.end.i.i.i6.i, %while.body.i.n_hdlc_buf_put.exit.i_crit_edge
  %44 = ptrtoint ptr %count.i7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count.i7.i, align 4
  %inc.i.i = add i32 %45, 1
  store i32 %inc.i.i, ptr %count.i7.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i2.i, i32 noundef %call2.i3.i) #9
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i) #9
  %46 = ptrtoint ptr %tx_buf_list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %tx_buf_list.i, align 4
  %cmp10.not.i.i = icmp eq ptr %47, %tx_buf_list.i
  %tobool.not.i8.i = icmp eq ptr %47, null
  %tobool.not.i.i = or i1 %cmp10.not.i.i, %tobool.not.i8.i
  br i1 %tobool.not.i.i, label %n_hdlc_buf_put.exit.i.flush_tx_queue.exit_crit_edge, label %n_hdlc_buf_put.exit.i.if.then.i.i_crit_edge

n_hdlc_buf_put.exit.i.if.then.i.i_crit_edge:      ; preds = %n_hdlc_buf_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

n_hdlc_buf_put.exit.i.flush_tx_queue.exit_crit_edge: ; preds = %n_hdlc_buf_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flush_tx_queue.exit

flush_tx_queue.exit:                              ; preds = %n_hdlc_buf_put.exit.i.flush_tx_queue.exit_crit_edge, %sw.bb93.flush_tx_queue.exit_crit_edge
  %call2.i.lcssa.i = phi i32 [ %call2.i9.i, %sw.bb93.flush_tx_queue.exit_crit_edge ], [ %call2.i.i, %n_hdlc_buf_put.exit.i.flush_tx_queue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i.i, i32 noundef %call2.i.lcssa.i) #9
  br label %sw.default

sw.default:                                       ; preds = %flush_tx_queue.exit, %sw.bb92.sw.default_crit_edge, %if.end4.sw.default_crit_edge
  %call94 = tail call i32 @n_tty_ioctl_helper(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end74, %if.end27, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %do.end.cleanup_crit_edge ], [ %call94, %sw.default ], [ %22, %if.end74 ], [ %13, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n_hdlc_tty_poll(ptr noundef %tty, ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9118, i32 %3)
  %cmp.not = icmp eq i32 %3, 9118
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 27
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit41_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit41_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit41

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %read_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i39_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i39_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i39

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %filp, ptr noundef nonnull %read_wait, ptr noundef nonnull %wait) #9
  br label %land.lhs.true.i39

land.lhs.true.i39:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i39_crit_edge
  %write_wait44 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i36 = icmp eq ptr %7, null
  %tobool3.not.i37 = icmp eq ptr %write_wait44, null
  %or.cond.i38 = or i1 %tobool3.not.i37, %tobool1.not.i36
  br i1 %or.cond.i38, label %land.lhs.true.i39.poll_wait.exit41_crit_edge, label %if.then.i40

land.lhs.true.i39.poll_wait.exit41_crit_edge:     ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit41

if.then.i40:                                      ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %filp, ptr noundef nonnull %write_wait44, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit41

poll_wait.exit41:                                 ; preds = %if.then.i40, %land.lhs.true.i39.poll_wait.exit41_crit_edge, %if.end.poll_wait.exit41_crit_edge
  %rx_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rx_buf_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %rx_buf_list, align 4
  %cmp.i.not = icmp eq ptr %9, %rx_buf_list
  %spec.select = select i1 %cmp.i.not, i32 0, i32 65
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = shl i32 %11, 2
  %13 = and i32 %12, 16
  %call8 = tail call i32 @tty_hung_up_p(ptr noundef %filp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %mask.2.v = select i1 %tobool9.not, i32 %13, i32 16
  %mask.2 = or i32 %mask.2.v, %spec.select
  %atomic_write_lock = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 8
  %call13 = tail call zeroext i1 @mutex_is_locked(ptr noundef %atomic_write_lock) #9
  br i1 %call13, label %poll_wait.exit41.cleanup_crit_edge, label %land.lhs.true

poll_wait.exit41.cleanup_crit_edge:               ; preds = %poll_wait.exit41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %poll_wait.exit41
  call void @__sanitizer_cov_trace_pc() #11
  %tx_free_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %tx_free_buf_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %tx_free_buf_list, align 4
  %cmp.i42.not = icmp eq ptr %15, %tx_free_buf_list
  %or18 = or i32 %mask.2, 260
  %spec.select34 = select i1 %cmp.i42.not, i32 %mask.2, i32 %or18
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %poll_wait.exit41.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %mask.2, %poll_wait.exit41.cleanup_crit_edge ], [ %spec.select34, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n_hdlc_tty_receive(ptr noundef %tty, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %flags, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_tty_receive.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_tty_receive, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_tty_receive.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %count) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9118, i32 %3)
  %cmp.not = icmp eq i32 %3, 9118
  br i1 %cmp.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %4 = load i32, ptr @maxframe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %count)
  %cmp10 = icmp slt i32 %4, %count
  br i1 %cmp10, label %do.body12, label %if.end28

do.body12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_tty_receive.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_tty_receive, %if.then24)) #9
          to label %cleanup [label %if.then24], !srcloc !125

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_tty_receive.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.37) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end9
  %rx_free_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6
  %spinlock.i = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #9
  %5 = ptrtoint ptr %rx_free_buf_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rx_free_buf_list, align 4
  %cmp10.not.i = icmp eq ptr %6, %rx_free_buf_list
  %tobool.not.i103 = icmp eq ptr %6, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not.i103
  br i1 %tobool.not.i, label %if.then31, label %if.then.i85

if.then.i85:                                      ; preds = %if.end28
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %6) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i85.if.end38.thread98_crit_edge

if.then.i85.if.end38.thread98_crit_edge:          ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.thread98

if.end.i.i.i:                                     ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %if.end38.thread98

if.end38.thread98:                                ; preds = %if.end.i.i.i, %if.then.i85.if.end38.thread98_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %count.i = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #9
  br label %if.end57

if.then31:                                        ; preds = %if.end28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #9
  %count32 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %count32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %18)
  %cmp33 = icmp slt i32 %18, 60
  br i1 %cmp33, label %if.end8.i, label %if.then31.do.body41_crit_edge

if.then31.do.body41_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41

if.end8.i:                                        ; preds = %if.then31
  %19 = load i32, ptr @maxframe, align 4
  %spec.select.i87 = tail call i32 @llvm.uadd.sat.i32(i32 %19, i32 12) #9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i87, i32 noundef 2592) #14
  %tobool39.not = icmp eq ptr %call9.i, null
  br i1 %tobool39.not, label %if.end8.i.do.body41_crit_edge, label %if.end8.i.if.end57_crit_edge

if.end8.i.if.end57_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end8.i.do.body41_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41

do.body41:                                        ; preds = %if.end8.i.do.body41_crit_edge, %if.then31.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_tty_receive.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_tty_receive, %if.then53)) #9
          to label %cleanup [label %if.then53], !srcloc !125

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_tty_receive.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end8.i.if.end57_crit_edge, %if.end38.thread98
  %buf.0101 = phi ptr [ %6, %if.end38.thread98 ], [ %call9.i, %if.end8.i.if.end57_crit_edge ]
  %buf58 = getelementptr inbounds %struct.n_hdlc_buf, ptr %buf.0101, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %buf58, ptr %data, i32 %count)
  %count59 = getelementptr inbounds %struct.n_hdlc_buf, ptr %buf.0101, i32 0, i32 1
  %21 = ptrtoint ptr %count59 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %count, ptr %count59, align 4
  %rx_buf_list60 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4
  %spinlock.i88 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4, i32 2
  %call2.i89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i88) #9
  %prev.i.i90 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i90, align 4
  %call.i.i.i91 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %buf.0101, ptr noundef %23, ptr noundef %rx_buf_list60) #9
  br i1 %call.i.i.i91, label %if.end.i.i.i92, label %if.end57.n_hdlc_buf_put.exit_crit_edge

if.end57.n_hdlc_buf_put.exit_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_put.exit

if.end.i.i.i92:                                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i.i90 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.0101, ptr %prev.i.i90, align 4
  %25 = ptrtoint ptr %buf.0101 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rx_buf_list60, ptr %buf.0101, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf.0101, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %buf.0101, ptr %23, align 4
  br label %n_hdlc_buf_put.exit

n_hdlc_buf_put.exit:                              ; preds = %if.end.i.i.i92, %if.end57.n_hdlc_buf_put.exit_crit_edge
  %count.i93 = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %count.i93 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count.i93, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %count.i93, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i88, i32 noundef %call2.i89) #9
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %fasync = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 25
  %30 = ptrtoint ptr %fasync to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fasync, align 4
  %cmp61.not = icmp eq ptr %31, null
  br i1 %cmp61.not, label %n_hdlc_buf_put.exit.cleanup_crit_edge, label %if.then62

n_hdlc_buf_put.exit.cleanup_crit_edge:            ; preds = %n_hdlc_buf_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then62:                                        ; preds = %n_hdlc_buf_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kill_fasync(ptr noundef %fasync, i32 noundef 29, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %n_hdlc_buf_put.exit.cleanup_crit_edge, %if.then53, %do.body41, %if.then24, %do.body12, %do.end6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n_hdlc_tty_wakeup(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %write_work = getelementptr inbounds %struct.n_hdlc, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %write_work) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n_hdlc_tty_write_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -232
  %tty_for_write_work = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %tty_for_write_work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty_for_write_work, align 4
  tail call fastcc void @n_hdlc_send_frames(ptr noundef %add.ptr, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n_hdlc_alloc_buf(ptr noundef %list, i32 noundef %count, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp14.not = icmp eq i32 %count, 0
  br i1 %cmp14.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %spinlock.i = getelementptr inbounds %struct.n_hdlc_buf_list, ptr %list, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.n_hdlc_buf_list, ptr %list, i32 0, i32 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %n_hdlc_buf_put.exit.if.end8.i_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %n_hdlc_buf_put.exit.if.end8.i_crit_edge ]
  %0 = load i32, ptr @maxframe, align 4
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %0, i32 12) #9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_alloc_buf.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_alloc_buf, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !125

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_alloc_buf.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %i.015) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end8.i
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #9
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %2, ptr noundef %list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.n_hdlc_buf_put.exit_crit_edge

if.end7.n_hdlc_buf_put.exit_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_put.exit

if.end.i.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %call9.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call9.i, ptr %2, align 4
  br label %n_hdlc_buf_put.exit

n_hdlc_buf_put.exit:                              ; preds = %if.end.i.i.i, %if.end7.n_hdlc_buf_put.exit_crit_edge
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #9
  %inc = add nuw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %n_hdlc_buf_put.exit.cleanup_crit_edge, label %n_hdlc_buf_put.exit.if.end8.i_crit_edge

n_hdlc_buf_put.exit.if.end8.i_crit_edge:          ; preds = %n_hdlc_buf_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

n_hdlc_buf_put.exit.cleanup_crit_edge:            ; preds = %n_hdlc_buf_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %n_hdlc_buf_put.exit.cleanup_crit_edge, %if.then6, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n_hdlc_send_frames(ptr noundef %n_hdlc, ptr noundef %tty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %n_hdlc, i32 0, i32 3
  %spinlock = getelementptr inbounds %struct.n_hdlc, ptr %n_hdlc, i32 0, i32 3, i32 2
  %tbusy = getelementptr inbounds %struct.n_hdlc, ptr %n_hdlc, i32 0, i32 1
  %woke_up8 = getelementptr inbounds %struct.n_hdlc, ptr %n_hdlc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.n_hdlc, ptr %n_hdlc, i32 0, i32 3, i32 1
  %flags24 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %tx_free_buf_list = getelementptr inbounds %struct.n_hdlc, ptr %n_hdlc, i32 0, i32 5
  %spinlock.i151 = getelementptr inbounds %struct.n_hdlc, ptr %n_hdlc, i32 0, i32 5, i32 2
  %prev.i.i153 = getelementptr inbounds %struct.n_hdlc, ptr %n_hdlc, i32 0, i32 5, i32 0, i32 1
  %count.i157 = getelementptr inbounds %struct.n_hdlc, ptr %n_hdlc, i32 0, i32 5, i32 1
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  br label %check_again

check_again:                                      ; preds = %do.body82.check_again_crit_edge, %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #9
  %0 = ptrtoint ptr %tbusy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tbusy, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %check_again
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %woke_up8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %woke_up8, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %check_again
  %3 = ptrtoint ptr %tbusy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %tbusy, align 4
  %4 = ptrtoint ptr %woke_up8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %woke_up8, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #9
  %5 = ptrtoint ptr %tx_buf_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %tx_buf_list, align 4
  %cmp10.not.i = icmp eq ptr %6, %tx_buf_list
  %tobool.not.i199 = icmp eq ptr %6, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not.i199
  br i1 %tobool.not.i, label %if.end.if.then78_crit_edge, label %if.then.i

if.end.if.then78_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

if.then.i:                                        ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %6) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.do.body14.preheader_crit_edge

if.then.i.do.body14.preheader_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.preheader

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %do.body14.preheader

do.body14.preheader:                              ; preds = %if.end.i.i.i, %if.then.i.do.body14.preheader_crit_edge
  br label %do.body14

do.body14:                                        ; preds = %do.body14.backedge, %do.body14.preheader
  %spec.select.i162.sink198 = phi ptr [ %6, %do.body14.preheader ], [ %spec.select.i162, %do.body14.backedge ]
  %call2.i160.sink = phi i32 [ %call2.i, %do.body14.preheader ], [ %call2.i160, %do.body14.backedge ]
  %tbuf.0191 = phi ptr [ %6, %do.body14.preheader ], [ %46, %do.body14.backedge ]
  %13 = ptrtoint ptr %spec.select.i162.sink198 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %spec.select.i162.sink198, align 4
  %prev.i.i169 = getelementptr inbounds %struct.list_head, ptr %spec.select.i162.sink198, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i169 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i169, align 4
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 4
  %dec.i171 = add i32 %16, -1
  store i32 %dec.i171, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2.i160.sink) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_send_frames.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_send_frames, %if.then20)) #9
          to label %do.end23 [label %if.then20], !srcloc !125

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %count = getelementptr inbounds %struct.n_hdlc_buf, ptr %tbuf.0191, i32 0, i32 1
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_send_frames.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.22, ptr noundef nonnull %tbuf.0191, i32 noundef %18) #9
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body14
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags24) #9
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write, align 4
  %buf = getelementptr inbounds %struct.n_hdlc_buf, ptr %tbuf.0191, i32 0, i32 2
  %count25 = getelementptr inbounds %struct.n_hdlc_buf, ptr %tbuf.0191, i32 0, i32 1
  %23 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count25, align 4
  %call26 = tail call i32 %22(ptr noundef %tty, ptr noundef %buf, i32 noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call26)
  %cmp27 = icmp eq i32 %call26, -512
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %do.end23
  %call2.i147 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #9
  %25 = ptrtoint ptr %tx_buf_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_buf_list, align 4
  %call.i.i.i148 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %tbuf.0191, ptr noundef %tx_buf_list, ptr noundef %26) #9
  br i1 %call.i.i.i148, label %if.end.i.i.i149, label %if.then29.n_hdlc_buf_return.exit_crit_edge

if.then29.n_hdlc_buf_return.exit_crit_edge:       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_return.exit

if.end.i.i.i149:                                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tbuf.0191, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %tbuf.0191 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %tbuf.0191, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %tbuf.0191, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tx_buf_list, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %tx_buf_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %tbuf.0191, ptr %tx_buf_list, align 4
  br label %n_hdlc_buf_return.exit

n_hdlc_buf_return.exit:                           ; preds = %if.end.i.i.i149, %if.then29.n_hdlc_buf_return.exit_crit_edge
  %31 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2.i147) #9
  br label %do.body82

if.end31:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp32 = icmp slt i32 %call26, 0
  br i1 %cmp32, label %if.then34, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count25, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %actual.0 = phi i32 [ %34, %if.then34 ], [ %call26, %if.end31.if.end36_crit_edge ]
  %35 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %actual.0, i32 %36)
  %cmp38 = icmp eq i32 %actual.0, %36
  br i1 %cmp38, label %do.body41, label %do.body59

do.body41:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_send_frames.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_send_frames, %if.then53)) #9
          to label %do.end56 [label %if.then53], !srcloc !125

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_send_frames.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.23, ptr noundef nonnull %tbuf.0191) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body41
  %call2.i152 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i151) #9
  %37 = ptrtoint ptr %prev.i.i153 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i153, align 4
  %call.i.i.i154 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %tbuf.0191, ptr noundef %38, ptr noundef %tx_free_buf_list) #9
  br i1 %call.i.i.i154, label %if.end.i.i.i156, label %do.end56.n_hdlc_buf_put.exit_crit_edge

do.end56.n_hdlc_buf_put.exit_crit_edge:           ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_put.exit

if.end.i.i.i156:                                  ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %prev.i.i153 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tbuf.0191, ptr %prev.i.i153, align 4
  %40 = ptrtoint ptr %tbuf.0191 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tx_free_buf_list, ptr %tbuf.0191, align 4
  %prev3.i.i.i155 = getelementptr inbounds %struct.list_head, ptr %tbuf.0191, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i155, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %tbuf.0191, ptr %38, align 4
  br label %n_hdlc_buf_put.exit

n_hdlc_buf_put.exit:                              ; preds = %if.end.i.i.i156, %do.end56.n_hdlc_buf_put.exit_crit_edge
  %43 = ptrtoint ptr %count.i157 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count.i157, align 4
  %inc.i158 = add i32 %44, 1
  store i32 %inc.i158, ptr %count.i157, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i151, i32 noundef %call2.i152) #9
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %call2.i160 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #9
  %45 = ptrtoint ptr %tx_buf_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %tx_buf_list, align 4
  %cmp10.not.i161 = icmp eq ptr %46, %tx_buf_list
  %spec.select.i162 = select i1 %cmp10.not.i161, ptr null, ptr %46
  %tobool.not.i163 = icmp eq ptr %spec.select.i162, null
  br i1 %tobool.not.i163, label %n_hdlc_buf_put.exit.if.then78_crit_edge, label %if.then.i165

n_hdlc_buf_put.exit.if.then78_crit_edge:          ; preds = %n_hdlc_buf_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

if.then.i165:                                     ; preds = %n_hdlc_buf_put.exit
  %call.i.i.i164 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select.i162) #9
  br i1 %call.i.i.i164, label %if.end.i.i.i168, label %if.then.i165.do.body14.backedge_crit_edge

if.then.i165.do.body14.backedge_crit_edge:        ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14.backedge

do.body14.backedge:                               ; preds = %if.end.i.i.i168, %if.then.i165.do.body14.backedge_crit_edge
  br label %do.body14

if.end.i.i.i168:                                  ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %spec.select.i162, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i166, align 4
  %49 = ptrtoint ptr %spec.select.i162 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spec.select.i162, align 4
  %prev1.i.i.i.i167 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i167 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i167, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %do.body14.backedge

do.body59:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n_hdlc_send_frames.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n_hdlc_send_frames, %if.then71)) #9
          to label %do.end74 [label %if.then71], !srcloc !125

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @n_hdlc_send_frames.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.24, ptr noundef nonnull %tbuf.0191) #9
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %do.body59
  %call2.i175 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #9
  %53 = ptrtoint ptr %tx_buf_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_buf_list, align 4
  %call.i.i.i176 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %tbuf.0191, ptr noundef %tx_buf_list, ptr noundef %54) #9
  br i1 %call.i.i.i176, label %if.end.i.i.i179, label %do.end74.n_hdlc_buf_return.exit182_crit_edge

do.end74.n_hdlc_buf_return.exit182_crit_edge:     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %n_hdlc_buf_return.exit182

if.end.i.i.i179:                                  ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i177 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i177 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %tbuf.0191, ptr %prev1.i.i.i177, align 4
  %56 = ptrtoint ptr %tbuf.0191 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %tbuf.0191, align 4
  %prev3.i.i.i178 = getelementptr inbounds %struct.list_head, ptr %tbuf.0191, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i178 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %tx_buf_list, ptr %prev3.i.i.i178, align 4
  %58 = ptrtoint ptr %tx_buf_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %tbuf.0191, ptr %tx_buf_list, align 4
  br label %n_hdlc_buf_return.exit182

n_hdlc_buf_return.exit182:                        ; preds = %if.end.i.i.i179, %do.end74.n_hdlc_buf_return.exit182_crit_edge
  %59 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count.i, align 4
  %inc.i181 = add i32 %60, 1
  store i32 %inc.i181, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2.i175) #9
  br label %do.body82

if.then78:                                        ; preds = %n_hdlc_buf_put.exit.if.then78_crit_edge, %if.end.if.then78_crit_edge
  %call2.i.sink = phi i32 [ %call2.i, %if.end.if.then78_crit_edge ], [ %call2.i160, %n_hdlc_buf_put.exit.if.then78_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2.i.sink) #9
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags24) #9
  br label %do.body82

do.body82:                                        ; preds = %if.then78, %n_hdlc_buf_return.exit182, %n_hdlc_buf_return.exit
  %call91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #9
  %61 = ptrtoint ptr %tbusy to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %tbusy, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call91) #9
  %62 = ptrtoint ptr %woke_up8 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %woke_up8, align 1, !range !134
  %tobool100.not = icmp eq i8 %63, 0
  br i1 %tobool100.not, label %do.body82.cleanup_crit_edge, label %do.body82.check_again_crit_edge

do.body82.check_again_crit_edge:                  ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_again

do.body82.cleanup_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.body82.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n_hdlc_free_buf_list(ptr noundef %list) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.n_hdlc_buf_list, ptr %list, i32 0, i32 2
  %call2.i2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #9
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp10.not.i3 = icmp eq ptr %1, %list
  %tobool.not.i512 = icmp eq ptr %1, null
  %tobool.not.i5 = or i1 %cmp10.not.i3, %tobool.not.i512
  br i1 %tobool.not.i5, label %entry.do.end.critedge_crit_edge, label %if.then.i.lr.ph

entry.do.end.critedge_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.critedge

if.then.i.lr.ph:                                  ; preds = %entry
  %count.i = getelementptr inbounds %struct.n_hdlc_buf_list, ptr %list, i32 0, i32 1
  br label %if.then.i

if.then.i:                                        ; preds = %list_del.exit.i.if.then.i_crit_edge, %if.then.i.lr.ph
  %spec.select.i7 = phi ptr [ %1, %if.then.i.lr.ph ], [ %13, %list_del.exit.i.if.then.i_crit_edge ]
  %call2.i6 = phi i32 [ %call2.i2, %if.then.i.lr.ph ], [ %call2.i, %list_del.exit.i.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select.i7) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i7, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %spec.select.i7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.select.i7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %8 = ptrtoint ptr %spec.select.i7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %spec.select.i7, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i7, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i6) #9
  tail call void @kfree(ptr noundef nonnull %spec.select.i7) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #9
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %list, align 4
  %cmp10.not.i = icmp eq ptr %13, %list
  %tobool.not.i14 = icmp eq ptr %13, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not.i14
  br i1 %tobool.not.i, label %list_del.exit.i.do.end.critedge_crit_edge, label %list_del.exit.i.if.then.i_crit_edge

list_del.exit.i.if.then.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

list_del.exit.i.do.end.critedge_crit_edge:        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.critedge

do.end.critedge:                                  ; preds = %list_del.exit.i.do.end.critedge_crit_edge, %entry.do.end.critedge_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i2, %entry.do.end.critedge_crit_edge ], [ %call2.i, %list_del.exit.i.do.end.critedge_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i.lcssa) #9
  tail call void @kfree(ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_hung_up_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_chars_in_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @n_tty_ioctl_helper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !74, !76, !77, !78, !80, !81, !83, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113}
!llvm.named.register.sp = !{!115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_n_hdlc__260_850_n_hdlc_init6, !1, !"__initcall__kmod_n_hdlc__260_850_n_hdlc_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/n_hdlc.c", i32 850, i32 1}
!2 = !{ptr @__exitcall_n_hdlc_exit, !3, !"__exitcall_n_hdlc_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/n_hdlc.c", i32 851, i32 1}
!4 = !{ptr @__UNIQUE_ID_file261, !5, !"__UNIQUE_ID_file261", i1 false, i1 false}
!5 = !{!"../drivers/tty/n_hdlc.c", i32 853, i32 1}
!6 = !{ptr @__UNIQUE_ID_license262, !5, !"__UNIQUE_ID_license262", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author263, !8, !"__UNIQUE_ID_author263", i1 false, i1 false}
!8 = !{!"../drivers/tty/n_hdlc.c", i32 854, i32 1}
!9 = !{ptr @__param_maxframe, !10, !"__param_maxframe", i1 false, i1 false}
!10 = !{!"../drivers/tty/n_hdlc.c", i32 855, i32 1}
!11 = !{ptr @__UNIQUE_ID_maxframetype264, !10, !"__UNIQUE_ID_maxframetype264", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias265, !13, !"__UNIQUE_ID_alias265", i1 false, i1 false}
!13 = !{!"../drivers/tty/n_hdlc.c", i32 856, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/tty/n_hdlc.c", i32 814, i32 11}
!16 = !{ptr @n_hdlc_ldisc, !17, !"n_hdlc_ldisc", i1 false, i1 false}
!17 = !{!"../drivers/tty/n_hdlc.c", i32 811, i32 29}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/n_hdlc.c", i32 235, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @n_hdlc_tty_open.__UNIQUE_ID_ddebug238, !19, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/n_hdlc.c", i32 239, i32 3}
!26 = !{ptr @n_hdlc_tty_open._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @n_hdlc_tty_open._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/n_hdlc.c", i32 245, i32 3}
!30 = !{ptr @n_hdlc_tty_open._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @n_hdlc_tty_open._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @n_hdlc_tty_open.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/tty/n_hdlc.c", i32 249, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @n_hdlc_alloc.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/tty/n_hdlc.c", i32 729, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @n_hdlc_alloc.__key.11, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/tty/n_hdlc.c", i32 730, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @n_hdlc_alloc.__key.13, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/tty/n_hdlc.c", i32 731, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @n_hdlc_alloc.__key.15, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/tty/n_hdlc.c", i32 732, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/n_hdlc.c", i32 739, i32 68}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/n_hdlc.c", i32 740, i32 68}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/n_hdlc.c", i32 709, i32 4}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @n_hdlc_alloc_buf.__UNIQUE_ID_ddebug254, !52, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/n_hdlc.c", i32 293, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @n_hdlc_send_frames.__UNIQUE_ID_ddebug239, !56, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/n_hdlc.c", i32 310, i32 4}
!61 = !{ptr @n_hdlc_send_frames.__UNIQUE_ID_ddebug240, !60, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/n_hdlc.c", i32 321, i32 4}
!64 = !{ptr @n_hdlc_send_frames.__UNIQUE_ID_ddebug241, !63, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/tty/n_hdlc.c", i32 204, i32 3}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @n_hdlc_tty_close._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @n_hdlc_tty_close._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/tty/n_hdlc.c", i32 466, i32 3}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/tty/n_hdlc.c", i32 487, i32 2}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/n_hdlc.c", i32 543, i32 2}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @n_hdlc_tty_write.__UNIQUE_ID_ddebug247, !75, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/n_hdlc.c", i32 550, i32 3}
!80 = !{ptr @n_hdlc_tty_write.__UNIQUE_ID_ddebug248, !79, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/tty/n_hdlc.c", i32 558, i32 3}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/tty/n_hdlc.c", i32 576, i32 2}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/tty/n_hdlc.c", i32 610, i32 2}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @n_hdlc_tty_ioctl.__UNIQUE_ID_ddebug251, !86, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/tty/n_hdlc.c", i32 387, i32 2}
!91 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @n_hdlc_tty_receive.__UNIQUE_ID_ddebug242, !90, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/n_hdlc.c", i32 391, i32 3}
!95 = !{ptr @n_hdlc_tty_receive._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @n_hdlc_tty_receive._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/tty/n_hdlc.c", i32 396, i32 3}
!99 = !{ptr @n_hdlc_tty_receive.__UNIQUE_ID_ddebug243, !98, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/tty/n_hdlc.c", i32 413, i32 3}
!102 = !{ptr @n_hdlc_tty_receive.__UNIQUE_ID_ddebug244, !101, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/tty/n_hdlc.c", i32 835, i32 3}
!105 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @n_hdlc_init._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @n_hdlc_init._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/tty/n_hdlc.c", i32 838, i32 3}
!110 = !{ptr @n_hdlc_init._entry.41, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @n_hdlc_init._entry_ptr.43, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @__param_str_maxframe, !10, !"__param_str_maxframe", i1 false, i1 false}
!113 = !{ptr @maxframe, !114, !"maxframe", i1 false, i1 false}
!114 = !{!"../drivers/tty/n_hdlc.c", i32 162, i32 12}
!115 = !{!"sp"}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2148974864, i64 2148974869, i64 2148974882, i64 2148974926, i64 2148974960, i64 2148974981}
!126 = !{i64 2154446824}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2154461084}
!129 = !{i64 5376159}
!130 = !{i64 5376356}
!131 = !{i64 2152861589}
!132 = !{i64 2154478411, i64 2154478691, i64 2154479025, i64 2154479359}
!133 = !{i64 2154491972, i64 2154492252, i64 2154492586, i64 2154492920}
!134 = !{i8 0, i8 2}
