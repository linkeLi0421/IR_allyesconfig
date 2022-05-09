; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/uart.c_pt.bc'
source_filename = "../drivers/staging/greybus/uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gbphy_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.gbphy_device_id = type { i8 }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gb_tty = type <{ ptr, %struct.tty_port, ptr, i32, ptr, i16, [2 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.spinlock, %struct.async_icount, %struct.async_icount, %struct.wait_queue_head, %struct.mutex, i8, i8, %struct.gb_uart_set_line_coding_request, [2 x i8], %struct.work_struct, %struct.kfifo, i8, [3 x i8], i32, %struct.completion }>
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gb_uart_set_line_coding_request = type { i32, i8, i8, i8, i8 }
%struct.kfifo = type { %union.anon.74, [0 x i8] }
%union.anon.74 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.gb_uart_set_control_line_state_request = type { i8 }
%struct.gb_uart_set_break_request = type { i8 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gbphy_device = type { i32, ptr, ptr, %struct.list_head, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_uart_recv_data_request = type <{ i16, i8, [0 x i8] }>
%struct.gb_uart_send_data_request = type { i16, [0 x i8] }
%struct.gb_uart_serial_flush_request = type { i8 }

@__initcall__kmod_gb_uart__230_1019_gb_uart_driver_init6 = internal global ptr @gb_uart_driver_init, section ".initcall6.init", align 4
@__exitcall_gb_uart_driver_exit = internal global ptr @gb_uart_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [45 x i8] c"gb_uart.file=drivers/staging/greybus/gb-uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"gb_uart.license=GPL v2\00", section ".modinfo", align 1
@uart_driver = internal global { %struct.gbphy_driver, [36 x i8] } { %struct.gbphy_driver { ptr @.str.16, ptr @gb_uart_probe, ptr @gb_uart_remove, ptr @gb_uart_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gb_uart\00", [24 x i8] zeroinitializer }, align 32
@gb_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gb_tty_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gb_uart: Can not allocate tty driver\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gb_tty_init\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/staging/greybus/uart.c\00", [33 x i8] zeroinitializer }, align 32
@gb_tty_init._entry_ptr = internal global ptr @gb_tty_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"gb\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyGB\00", [26 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@gb_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @gb_tty_install, ptr null, ptr @gb_tty_open, ptr @gb_tty_close, ptr null, ptr @gb_tty_cleanup, ptr @gb_tty_write, ptr null, ptr null, ptr @gb_tty_write_room, ptr @gb_tty_chars_in_buffer, ptr @gb_tty_ioctl, ptr null, ptr @gb_tty_set_termios, ptr @gb_tty_throttle, ptr @gb_tty_unthrottle, ptr null, ptr null, ptr @gb_tty_hangup, ptr @gb_tty_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr @gb_tty_tiocmget, ptr @gb_tty_tiocmset, ptr null, ptr @gb_tty_get_icount, ptr @get_serial_info, ptr @set_serial_info, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@gb_tty_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013gb_uart: Can not register tty driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@gb_tty_init._entry_ptr.8 = internal global ptr @gb_tty_init._entry.6, section ".printk_index", align 4
@table_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @table_lock, i64 52), ptr getelementptr (i8, ptr @table_lock, i64 52) }, ptr @table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@tty_minors = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"table_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"table_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tty_minors.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@send_break._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 304, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid break state of %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"send_break\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@send_break._entry_ptr = internal global ptr @send_break._entry, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@gb_uart_id_table = internal constant { [2 x %struct.gbphy_device_id], [30 x i8] } { [2 x %struct.gbphy_device_id] [%struct.gbphy_device_id { i8 4 }, %struct.gbphy_device_id zeroinitializer], [30 x i8] zeroinitializer }, align 32
@gb_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr @gb_tty_dtr_rts, ptr @gb_tty_port_shutdown, ptr @gb_tty_port_activate, ptr @gb_tty_port_destruct }, [44 x i8] zeroinitializer }, align 32
@gb_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&gb_tty->tx_work)\00", [60 x i8] zeroinitializer }, align 32
@gb_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 858, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no more free minor numbers\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gb_uart_probe\00", [18 x i8] zeroinitializer }, align 32
@gb_uart_probe._entry_ptr = internal global ptr @gb_uart_probe._entry, section ".printk_index", align 4
@gb_uart_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&gb_tty->write_lock\00", [44 x i8] zeroinitializer }, align 32
@gb_uart_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&gb_tty->read_lock\00", [45 x i8] zeroinitializer }, align 32
@gb_uart_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&gb_tty->wioctl\00", [16 x i8] zeroinitializer }, align 32
@gb_uart_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&gb_tty->mutex\00", [17 x i8] zeroinitializer }, align 32
@gb_uart_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 218, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unsupported unsolicited request: 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gb_uart_request_handler\00", [40 x i8] zeroinitializer }, align 32
@gb_uart_request_handler._entry_ptr = internal global ptr @gb_uart_request_handler._entry, section ".printk_index", align 4
@gb_uart_receive_data_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 87, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"short receive-data request received (%zu < %zu)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gb_uart_receive_data_handler\00", [35 x i8] zeroinitializer }, align 32
@gb_uart_receive_data_handler._entry_ptr = internal global ptr @gb_uart_receive_data_handler._entry, section ".printk_index", align 4
@gb_uart_receive_data_handler._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 98, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"malformed receive-data request received (%u != %zu)\0A\00", [43 x i8] zeroinitializer }, align 32
@gb_uart_receive_data_handler._entry_ptr.34 = internal global ptr @gb_uart_receive_data_handler._entry.32, section ".printk_index", align 4
@gb_uart_receive_data_handler._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 122, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UART: RX 0x%08x bytes only wrote 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@gb_uart_receive_data_handler._entry_ptr.37 = internal global ptr @gb_uart_receive_data_handler._entry.35, section ".printk_index", align 4
@gb_uart_serial_state_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 139, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"short serial-state event received (%zu < %zu)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gb_uart_serial_state_handler\00", [35 x i8] zeroinitializer }, align 32
@gb_uart_serial_state_handler._entry_ptr = internal global ptr @gb_uart_serial_state_handler._entry, section ".printk_index", align 4
@gb_uart_receive_credits_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 163, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"short receive_credits event received (%zu < %zu)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gb_uart_receive_credits_handler\00", [32 x i8] zeroinitializer }, align 32
@gb_uart_receive_credits_handler._entry_ptr = internal global ptr @gb_uart_receive_credits_handler._entry, section ".printk_index", align 4
@gb_uart_receive_credits_handler._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 181, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid number of incoming credits: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@gb_uart_receive_credits_handler._entry_ptr.44 = internal global ptr @gb_uart_receive_credits_handler._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_tty_port_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 753, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error flushing transmitter: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gb_tty_port_shutdown\00", [43 x i8] zeroinitializer }, align 32
@gb_tty_port_shutdown._entry_ptr = internal global ptr @gb_tty_port_shutdown._entry, section ".printk_index", align 4
@gb_uart_wait_for_all_credits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 324, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"time out waiting for credits\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gb_uart_wait_for_all_credits\00", [35 x i8] zeroinitializer }, align 32
@gb_uart_wait_for_all_credits._entry_ptr = internal global ptr @gb_uart_wait_for_all_credits._entry, section ".printk_index", align 4
@gbphy_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.51, i32 76, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gbphy_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/staging/greybus/gbphy.h\00", [32 x i8] zeroinitializer }, align 32
@gbphy_runtime_get_sync._entry_ptr = internal global ptr @gbphy_runtime_get_sync._entry, section ".printk_index", align 4
@gb_uart_tx_write_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 263, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"send data error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gb_uart_tx_write_work\00", [42 x i8] zeroinitializer }, align 32
@gb_uart_tx_write_work._entry_ptr = internal global ptr @gb_uart_tx_write_work._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 7, i64 8]
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"uart_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 996, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1011, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"gb_tty_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 69, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 952, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 957, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 958, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"gb_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 775, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 971, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [11 x i8] c"table_lock\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"tty_minors\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 71, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 70, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 303, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 997, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"gb_uart_id_table\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 990, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"gb_port_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 796, i32 41 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 844, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 857, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 867, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 868, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 869, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 870, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 217, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 85, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 95, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 120, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 137, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 160, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 179, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 752, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 323, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [35 x i8] c"../drivers/staging/greybus/gbphy.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 76, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.260 = private constant [34 x i8] c"../drivers/staging/greybus/uart.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 262, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 87, i32 2 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_gb_uart_driver_exit, ptr @__initcall__kmod_gb_uart__230_1019_gb_uart_driver_init6, ptr @gb_tty_init._entry, ptr @gb_tty_init._entry.6, ptr @gb_tty_init._entry_ptr, ptr @gb_tty_init._entry_ptr.8, ptr @gb_tty_port_shutdown._entry, ptr @gb_tty_port_shutdown._entry_ptr, ptr @gb_uart_probe._entry, ptr @gb_uart_probe._entry_ptr, ptr @gb_uart_receive_credits_handler._entry, ptr @gb_uart_receive_credits_handler._entry.42, ptr @gb_uart_receive_credits_handler._entry_ptr, ptr @gb_uart_receive_credits_handler._entry_ptr.44, ptr @gb_uart_receive_data_handler._entry, ptr @gb_uart_receive_data_handler._entry.32, ptr @gb_uart_receive_data_handler._entry.35, ptr @gb_uart_receive_data_handler._entry_ptr, ptr @gb_uart_receive_data_handler._entry_ptr.34, ptr @gb_uart_receive_data_handler._entry_ptr.37, ptr @gb_uart_request_handler._entry, ptr @gb_uart_request_handler._entry_ptr, ptr @gb_uart_serial_state_handler._entry, ptr @gb_uart_serial_state_handler._entry_ptr, ptr @gb_uart_tx_write_work._entry, ptr @gb_uart_tx_write_work._entry_ptr, ptr @gb_uart_wait_for_all_credits._entry, ptr @gb_uart_wait_for_all_credits._entry_ptr, ptr @gbphy_runtime_get_sync._entry, ptr @gbphy_runtime_get_sync._entry_ptr, ptr @send_break._entry, ptr @send_break._entry_ptr, ptr @uart_driver, ptr @.str, ptr @gb_tty_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gb_ops, ptr @.str.7, ptr @table_lock, ptr @tty_minors, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @gb_uart_id_table, ptr @gb_port_ops, ptr @gb_uart_probe.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @gb_uart_probe.__key.20, ptr @.str.21, ptr @gb_uart_probe.__key.22, ptr @.str.23, ptr @gb_uart_probe.__key.24, ptr @.str.25, ptr @gb_uart_probe.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @init_completion.__key, ptr @.str.54], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_tty_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_tty_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_minors to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_break._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_id_table to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_receive_data_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_receive_data_handler._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_receive_data_handler._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_serial_state_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_receive_credits_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_receive_credits_handler._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_tty_port_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_wait_for_all_credits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbphy_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_uart_tx_write_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_uart_driver_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__tty_alloc_driver(i32 noundef 16, ptr noundef null, i32 noundef 0) #12
  store ptr %call.i, ptr @gb_tty_driver, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_name.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.4, ptr %driver_name.i, align 4
  %name.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.5, ptr %name.i, align 4
  %major.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %major.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %major.i, align 4
  %minor_start.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %minor_start.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %minor_start.i, align 4
  %type.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3, ptr %type.i, align 4
  %subtype.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %subtype.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %subtype.i, align 2
  %flags.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 13
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %flags.i, align 4
  %init_termios.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %init_termios.i, ptr @tty_std_termios, i32 44)
  %c_cflag.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3261, ptr %c_cflag.i, align 4
  %ops.i.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 20
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gb_ops, ptr %ops.i.i, align 4
  %call5.i = tail call i32 @tty_register_driver(ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call5.i) #15
  %10 = load ptr, ptr @gb_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %10) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call1 = tail call i32 @gb_gbphy_register_driver(ptr noundef nonnull @uart_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = load ptr, ptr @gb_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %11) #12
  %12 = load ptr, ptr @gb_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %12) #12
  tail call void @idr_destroy(ptr noundef nonnull @tty_minors) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %do.end9.i, %do.end.i
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ %call5.i, %do.end9.i ], [ -12, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_uart_driver_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gb_gbphy_deregister_driver(ptr noundef nonnull @uart_driver) #12
  %0 = load ptr, ptr @gb_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #12
  %1 = load ptr, ptr @gb_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #12
  tail call void @idr_destroy(ptr noundef nonnull @tty_minors) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_gbphy_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_tty_install(ptr noundef %driver, ptr noundef %tty) #0 align 64 {
entry:
  %old.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #12
  %call.i = tail call ptr @idr_find(ptr noundef nonnull @tty_minors, i32 noundef %1) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.get_gb_by_minor.exit.thread_crit_edge, label %if.then.i

entry.get_gb_by_minor.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_gb_by_minor.exit.thread

if.then.i:                                        ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.gb_tty, ptr %call.i, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %disconnected.i = getelementptr inbounds %struct.gb_tty, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disconnected.i, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %mutex.i) #12
  br label %get_gb_by_minor.exit.thread

if.else.i:                                        ; preds = %if.then.i
  %kref.i.i = getelementptr inbounds %struct.gb_tty, ptr %call.i, i32 0, i32 1, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %kref.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.else.i
  %6 = phi i32 [ %5, %if.else.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #12
  %8 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 %9, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %kref.i.i) #12, !srcloc !138
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !139

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.get_gb_by_minor.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !139

if.end4.i.i.i.i.i.i.get_gb_by_minor.exit_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_gb_by_minor.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 0) #12
  br label %get_gb_by_minor.exit

get_gb_by_minor.exit.thread:                      ; preds = %if.then2.i, %entry.get_gb_by_minor.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #12
  br label %cleanup

get_gb_by_minor.exit:                             ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.get_gb_by_minor.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #12
  call void @mutex_unlock(ptr noundef %mutex.i) #12
  call void @mutex_unlock(ptr noundef nonnull @table_lock) #12
  %call2 = call i32 @tty_standard_install(ptr noundef %driver, ptr noundef %tty) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %error

if.end5:                                          ; preds = %get_gb_by_minor.exit
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data, align 4
  br label %cleanup

error:                                            ; preds = %get_gb_by_minor.exit
  call void @__sanitizer_cov_trace_pc() #14
  %port = getelementptr inbounds %struct.gb_tty, ptr %call.i, i32 0, i32 1
  call void @tty_port_put(ptr noundef %port) #12
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end5, %get_gb_by_minor.exit.thread
  %retval.0 = phi i32 [ %call2, %error ], [ 0, %if.end5 ], [ -19, %get_gb_by_minor.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_tty_open(ptr noundef %tty, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1
  %call = tail call i32 @tty_port_open(ptr noundef %port, ptr noundef %tty, ptr noundef %file) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_tty_close(ptr noundef %tty, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1
  tail call void @tty_port_close(ptr noundef %port, ptr noundef %tty, ptr noundef %file) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_tty_cleanup(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1
  tail call void @tty_port_put(ptr noundef %port) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_tty_write(ptr nocapture noundef readonly %tty, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %write_lock = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #12
  %write_fifo = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 22
  %call6 = tail call i32 @__kfifo_in(ptr noundef %write_fifo, ptr noundef %buf, i32 noundef %count) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %close_pending = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %close_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %close_pending, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool9.not = icmp eq i8 %3, 0
  br i1 %tobool9.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %tx_work = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %tx_work) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_tty_write_room(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %write_lock = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #12
  %write_fifo = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 22
  %mask = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %4 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call2) #12
  %sub.neg = sub i32 %3, %5
  %sub10 = add i32 %sub.neg, %7
  %8 = tail call i32 @llvm.smax.i32(i32 %sub10, i32 0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_tty_chars_in_buffer(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %write_lock = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #12
  %write_fifo = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %sub = sub i32 %3, %5
  %credits = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %credits, align 4
  %8 = tail call i32 @llvm.usub.sat.i32(i32 4096, i32 %7)
  %chars.0 = add i32 %sub, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call2) #12
  ret i32 %chars.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_tty_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 21596, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21596
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call fastcc i32 @wait_serial_change(ptr noundef %1, i32 noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_tty_set_termios(ptr noundef %tty, ptr noundef readonly %termios_old) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_uart_set_control_line_state_request, align 1
  %newline = alloca %struct.gb_uart_set_line_coding_request, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %newline) #12
  %0 = getelementptr inbounds %struct.gb_uart_set_line_coding_request, ptr %newline, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gb_uart_set_line_coding_request, ptr %newline, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gb_uart_set_line_coding_request, ptr %newline, i32 0, i32 3
  %3 = getelementptr inbounds %struct.gb_uart_set_line_coding_request, ptr %newline, i32 0, i32 4
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 4
  %ctrlout = getelementptr inbounds %struct.gb_tty, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrlout, align 1
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %9 = ptrtoint ptr %newline to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %newline, align 8
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %10 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_cflag, align 4
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 5
  %conv = and i8 %13, 2
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %0, align 4
  %and3 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and6 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond8 = select i1 %tobool7.not, i8 2, i8 1
  %and10 = lshr i32 %11, 29
  %15 = trunc i32 %and10 to i8
  %16 = and i8 %15, 2
  %add = add nuw nsw i8 %cond8, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond13 = phi i8 [ %add, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %cond13, ptr %1, align 1
  %call16 = tail call zeroext i8 @tty_get_char_size(i32 noundef %11) #12
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call16, ptr %2, align 2
  %19 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_cflag, align 4
  %and18 = lshr i32 %20, 11
  %21 = trunc i32 %and18 to i8
  %22 = and i8 %21, 1
  %clocal = getelementptr inbounds %struct.gb_tty, ptr %5, i32 0, i32 8
  %23 = ptrtoint ptr %clocal to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %clocal, align 4
  %24 = load i32, ptr %c_cflag, align 4
  %and23 = and i32 %24, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %line_coding = getelementptr inbounds %struct.gb_tty, ptr %5, i32 0, i32 19
  %25 = ptrtoint ptr %line_coding to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %line_coding, align 2
  %27 = ptrtoint ptr %newline to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %newline, align 8
  %28 = and i8 %7, -4
  br label %if.end39

if.else:                                          ; preds = %cond.end
  %tobool31.not = icmp eq ptr %termios_old, null
  br i1 %tobool31.not, label %if.else.if.end39_crit_edge, label %land.lhs.true

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

land.lhs.true:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %c_cflag32 = getelementptr inbounds %struct.ktermios, ptr %termios_old, i32 0, i32 2
  %29 = ptrtoint ptr %c_cflag32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c_cflag32, align 4
  %and33 = and i32 %30, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %cmp34 = icmp eq i32 %and33, 0
  %31 = or i8 %7, 3
  %spec.select = select i1 %cmp34, i8 %31, i8 %7
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true, %if.else.if.end39_crit_edge, %if.then
  %newctrl.0 = phi i8 [ %28, %if.then ], [ %7, %if.else.if.end39_crit_edge ], [ %spec.select, %land.lhs.true ]
  %32 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctrlout, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %newctrl.0, i8 %33)
  %cmp43.not = icmp eq i8 %newctrl.0, %33
  br i1 %cmp43.not, label %if.end39.if.end48_crit_edge, label %if.then45

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %ctrlout to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %newctrl.0, ptr %ctrlout, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #12
  %35 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %newctrl.0, ptr %request.i, align 1
  %connection.i = getelementptr inbounds %struct.gb_tty, ptr %5, i32 0, i32 4
  %36 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %37, i32 noundef 5, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #12
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end39.if.end48_crit_edge
  %38 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool52.not = icmp slt i32 %39, 0
  %and56 = and i32 %39, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %cmp57.not = icmp ne i32 %and56, 0
  %not.or.cond = and i1 %tobool52.not, %cmp57.not
  %storemerge = zext i1 %not.or.cond to i8
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %storemerge, ptr %3, align 1
  %line_coding63 = getelementptr inbounds %struct.gb_tty, ptr %5, i32 0, i32 19
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %line_coding63, ptr noundef nonnull dereferenceable(8) %newline, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool65.not = icmp eq i32 %bcmp, 0
  br i1 %tobool65.not, label %if.end48.if.end69_crit_edge, label %if.then66

if.end48.if.end69_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then66:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %newline to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %newline, align 8
  %43 = ptrtoint ptr %line_coding63 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %line_coding63, align 2
  %connection.i93 = getelementptr inbounds %struct.gb_tty, ptr %5, i32 0, i32 4
  %44 = ptrtoint ptr %connection.i93 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %connection.i93, align 4
  %call.i.i94 = call i32 @gb_operation_sync_timeout(ptr noundef %45, i32 noundef 4, ptr noundef %line_coding63, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end48.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %newline) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_tty_throttle(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_uart_set_control_line_state_request, align 1
  %stop_char = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stop_char) #12
  %2 = ptrtoint ptr %stop_char to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %stop_char, align 1, !annotation !140
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %3 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %termios, align 4
  %and = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = ptrtoint ptr %stop_char to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %stop_char, align 1
  %write_lock.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock.i) #12
  %write_fifo.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 22
  %call6.i = call i32 @__kfifo_in(ptr noundef %write_fifo.i, ptr noundef nonnull %stop_char, i32 noundef 1) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock.i, i32 noundef %call2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %land.lhs.true.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then
  %close_pending.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %close_pending.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %close_pending.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not.i = icmp eq i8 %9, 0
  br i1 %tobool9.not.i, label %if.then.i, label %land.lhs.true.i.gb_tty_write.exit_crit_edge

land.lhs.true.i.gb_tty_write.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_tty_write.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_work.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %tx_work.i) #12
  br label %gb_tty_write.exit

gb_tty_write.exit:                                ; preds = %if.then.i, %land.lhs.true.i.gb_tty_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 1
  br i1 %cmp, label %gb_tty_write.exit.cleanup_crit_edge, label %gb_tty_write.exit.if.end3_crit_edge

gb_tty_write.exit.if.end3_crit_edge:              ; preds = %gb_tty_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

gb_tty_write.exit.cleanup_crit_edge:              ; preds = %gb_tty_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %gb_tty_write.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool6.not = icmp sgt i32 %12, -1
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.then7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %ctrlout = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrlout, align 1
  %15 = and i8 %14, -3
  store i8 %15, ptr %ctrlout, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #12
  %16 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %request.i, align 1
  %connection.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %18, i32 noundef 5, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end3.cleanup_crit_edge, %gb_tty_write.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stop_char) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_tty_unthrottle(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_uart_set_control_line_state_request, align 1
  %start_char = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start_char) #12
  %2 = ptrtoint ptr %start_char to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %start_char, align 1, !annotation !140
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %3 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %termios, align 4
  %and = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = ptrtoint ptr %start_char to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %start_char, align 1
  %write_lock.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock.i) #12
  %write_fifo.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 22
  %call6.i = call i32 @__kfifo_in(ptr noundef %write_fifo.i, ptr noundef nonnull %start_char, i32 noundef 1) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock.i, i32 noundef %call2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %land.lhs.true.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then
  %close_pending.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %close_pending.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %close_pending.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not.i = icmp eq i8 %9, 0
  br i1 %tobool9.not.i, label %if.then.i, label %land.lhs.true.i.gb_tty_write.exit_crit_edge

land.lhs.true.i.gb_tty_write.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_tty_write.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_work.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %tx_work.i) #12
  br label %gb_tty_write.exit

gb_tty_write.exit:                                ; preds = %if.then.i, %land.lhs.true.i.gb_tty_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 1
  br i1 %cmp, label %gb_tty_write.exit.cleanup_crit_edge, label %gb_tty_write.exit.if.end3_crit_edge

gb_tty_write.exit.if.end3_crit_edge:              ; preds = %gb_tty_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

gb_tty_write.exit.cleanup_crit_edge:              ; preds = %gb_tty_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %gb_tty_write.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool6.not = icmp sgt i32 %12, -1
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.then7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %ctrlout = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrlout, align 1
  %15 = or i8 %14, 2
  store i8 %15, ptr %ctrlout, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #12
  %16 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %request.i, align 1
  %connection.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %18, i32 noundef 5, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end3.cleanup_crit_edge, %gb_tty_write.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start_char) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_tty_hangup(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1
  tail call void @tty_port_hangup(ptr noundef %port) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_tty_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %state) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_uart_set_break_request, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp ne i32 %state, 0
  %conv = zext i1 %tobool.not to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #12
  %2 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %request.i, align 1
  %connection.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #12
  ret i32 %call.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gb_tty_tiocmget(ptr nocapture noundef readonly %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %ctrlout = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrlout, align 1
  %conv = zext i8 %3 to i32
  %and = shl nuw nsw i32 %conv, 1
  %or = and i32 %and, 6
  %ctrlin = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ctrlin to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrlin, align 4
  %conv6 = zext i8 %5 to i32
  %and7 = shl nuw nsw i32 %conv6, 7
  %6 = and i32 %and7, 256
  %and13 = shl nuw nsw i32 %conv6, 5
  %7 = and i32 %and13, 128
  %and19 = shl nuw nsw i32 %conv6, 6
  %8 = and i32 %and19, 64
  %or10 = or i32 %or, %6
  %or16 = or i32 %or10, %7
  %or22 = or i32 %or16, %8
  %or23 = or i32 %or22, 32
  ret i32 %or23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_tty_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_uart_set_control_line_state_request, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %ctrlout = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrlout, align 1
  %and = lshr i32 %set, 1
  %or = and i32 %and, 3
  %and4 = lshr i32 %clear, 1
  %or10 = and i32 %and4, 3
  %conv = zext i8 %3 to i32
  %neg = xor i32 %or10, -1
  %and11 = and i32 %conv, %neg
  %or12 = or i32 %and11, %or
  call void @__sanitizer_cov_trace_cmp4(i32 %or12, i32 %conv)
  %cmp = icmp eq i32 %or12, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv13 = trunc i32 %or12 to i8
  %4 = ptrtoint ptr %ctrlout to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv13, ptr %ctrlout, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #12
  %5 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv13, ptr %request.i, align 1
  %connection.i = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %7, i32 noundef 5, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gb_tty_get_icount(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %icount) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %dsr = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsr, align 4
  %dsr1 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 1
  %4 = ptrtoint ptr %dsr1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dsr1, align 4
  %rng = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rng, align 4
  %rng3 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 2
  %7 = ptrtoint ptr %rng3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rng3, align 4
  %dcd = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcd, align 4
  %dcd5 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 3
  %10 = ptrtoint ptr %dcd5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dcd5, align 4
  %frame = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 13, i32 6
  %11 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame, align 4
  %frame7 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 6
  %13 = ptrtoint ptr %frame7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %frame7, align 4
  %overrun = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 13, i32 8
  %14 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %overrun, align 4
  %overrun9 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 7
  %16 = ptrtoint ptr %overrun9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %overrun9, align 4
  %parity = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 13, i32 7
  %17 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parity, align 4
  %parity11 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 8
  %19 = ptrtoint ptr %parity11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %parity11, align 4
  %brk = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 13, i32 9
  %20 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brk, align 4
  %brk13 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 9
  %22 = ptrtoint ptr %brk13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %brk13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %ss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %minor = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %line = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 1
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %line, align 4
  %close_delay = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1, i32 16
  %5 = ptrtoint ptr %close_delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %close_delay, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %6) #12
  %div = udiv i32 %call, 10
  %conv = trunc i32 %div to i16
  %close_delay1 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %7 = ptrtoint ptr %close_delay1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %close_delay1, align 4
  %closing_wait = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1, i32 17
  %8 = ptrtoint ptr %closing_wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %closing_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %9)
  %cmp = icmp eq i32 %9, 65535
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @jiffies_to_msecs(i32 noundef %9) #12
  %div7 = udiv i32 %call6, 10
  %phi.cast = trunc i32 %div7 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.false ], [ -1, %entry.cond.end_crit_edge ]
  %closing_wait9 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 12
  %10 = ptrtoint ptr %closing_wait9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %cond, ptr %closing_wait9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %ss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %close_delay2 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %2 = ptrtoint ptr %close_delay2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %close_delay2, align 4
  %conv = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #12
  %closing_wait3 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 12
  %4 = ptrtoint ptr %closing_wait3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %closing_wait3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp eq i16 %5, -1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %if.else.i40

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.else.i40:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv4 = zext i16 %5 to i32
  %mul8 = mul nuw nsw i32 %conv4, 10
  %call2.i39 = tail call i32 @__msecs_to_jiffies(i32 noundef %mul8) #12
  br label %cond.end

cond.end:                                         ; preds = %if.else.i40, %entry.cond.end_crit_edge
  %cond = phi i32 [ 65535, %entry.cond.end_crit_edge ], [ %call2.i39, %if.else.i40 ]
  %mutex = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %call10 = tail call zeroext i1 @capable(i32 noundef 21) #12
  %close_delay21 = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1, i32 16
  br i1 %call10, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %6 = ptrtoint ptr %close_delay21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %close_delay21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %7)
  %cmp13.not = icmp eq i32 %call2.i, %7
  br i1 %cmp13.not, label %lor.lhs.false, label %if.then.if.then19_crit_edge

if.then.if.then19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.then
  %closing_wait16 = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1, i32 17
  %8 = ptrtoint ptr %closing_wait16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %closing_wait16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %9)
  %cmp17.not = icmp eq i32 %cond, %9
  br i1 %cmp17.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.then.if.then19_crit_edge
  br label %if.end24

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %close_delay21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call2.i, ptr %close_delay21, align 4
  %closing_wait23 = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1, i32 17
  %11 = ptrtoint ptr %closing_wait23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %closing_wait23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19, %lor.lhs.false.if.end24_crit_edge
  %retval1.0 = phi i32 [ 0, %if.else ], [ -1, %if.then19 ], [ 0, %lor.lhs.false.if.end24_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_serial_change(ptr noundef %gb_tty, i32 noundef %arg) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #12
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !127) #12
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %and = and i32 %arg, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %read_lock = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 11
  %oldcount = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 14
  %old.sroa.4.0.oldcount.sroa_idx = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 14, i32 1
  %old.sroa.5.0.oldcount.sroa_idx = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 14, i32 2
  %old.sroa.6.0.oldcount.sroa_idx = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 14, i32 3
  %old.sroa.7.0.oldcount.sroa_idx = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 14, i32 4
  %iocount = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 13
  %new.sroa.5.0.iocount.sroa_idx = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 13, i32 1
  %new.sroa.6.0.iocount.sroa_idx = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 13, i32 2
  %new.sroa.7.0.iocount.sroa_idx = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 13, i32 3
  %new.sroa.8.0.iocount.sroa_idx = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 13, i32 4
  %and5 = and i32 %arg, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and10 = and i32 %arg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %and17 = and i32 %arg, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %wioctl = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 15
  %disconnected = getelementptr inbounds %struct.gb_tty, ptr %gb_tty, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %signal_pending.exit.do.body_crit_edge, %do.body.preheader
  call void @_raw_spin_lock_irq(ptr noundef %read_lock) #12
  %13 = ptrtoint ptr %old.sroa.4.0.oldcount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %old.sroa.4.0.copyload = load i32, ptr %old.sroa.4.0.oldcount.sroa_idx, align 4
  %14 = ptrtoint ptr %old.sroa.5.0.oldcount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %old.sroa.5.0.copyload = load i32, ptr %old.sroa.5.0.oldcount.sroa_idx, align 4
  %15 = ptrtoint ptr %old.sroa.6.0.oldcount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %old.sroa.6.0.copyload = load i32, ptr %old.sroa.6.0.oldcount.sroa_idx, align 4
  %16 = ptrtoint ptr %iocount to i32
  call void @__asan_load4_noabort(i32 %16)
  %new.sroa.0.0.copyload = load i32, ptr %iocount, align 4
  %17 = ptrtoint ptr %new.sroa.5.0.iocount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %new.sroa.5.0.copyload = load i32, ptr %new.sroa.5.0.iocount.sroa_idx, align 4
  %18 = ptrtoint ptr %new.sroa.6.0.iocount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %new.sroa.6.0.copyload = load i32, ptr %new.sroa.6.0.iocount.sroa_idx, align 4
  %19 = ptrtoint ptr %new.sroa.7.0.iocount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %new.sroa.7.0.copyload = load i32, ptr %new.sroa.7.0.iocount.sroa_idx, align 4
  %20 = ptrtoint ptr %oldcount to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %new.sroa.0.0.copyload, ptr %oldcount, align 4
  store i32 %new.sroa.5.0.copyload, ptr %old.sroa.4.0.oldcount.sroa_idx, align 4
  store i32 %new.sroa.6.0.copyload, ptr %old.sroa.5.0.oldcount.sroa_idx, align 4
  store i32 %new.sroa.7.0.copyload, ptr %old.sroa.6.0.oldcount.sroa_idx, align 4
  %21 = call ptr @memcpy(ptr %old.sroa.7.0.oldcount.sroa_idx, ptr %new.sroa.8.0.iocount.sroa_idx, i32 28)
  call void @_raw_spin_unlock_irq(ptr noundef %read_lock) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %old.sroa.4.0.copyload, i32 %new.sroa.5.0.copyload)
  %cmp.not = icmp eq i32 %old.sroa.4.0.copyload, %new.sroa.5.0.copyload
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp.not
  call void @__sanitizer_cov_trace_cmp4(i32 %old.sroa.6.0.copyload, i32 %new.sroa.7.0.copyload)
  %cmp14.not = icmp eq i32 %old.sroa.6.0.copyload, %new.sroa.7.0.copyload
  %or.cond132 = select i1 %tobool11.not, i1 true, i1 %cmp14.not
  %or.cond139 = select i1 %or.cond, i1 %or.cond132, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %old.sroa.5.0.copyload, i32 %new.sroa.6.0.copyload)
  %cmp21.not = icmp eq i32 %old.sroa.5.0.copyload, %new.sroa.6.0.copyload
  %or.cond133 = select i1 %tobool18.not, i1 true, i1 %cmp21.not
  %or.cond140 = select i1 %or.cond139, i1 %or.cond133, i1 false
  br i1 %or.cond140, label %if.end23, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %do.body
  call void @add_wait_queue(ptr noundef %wioctl, ptr noundef nonnull %wait) #12
  br label %__here

__here:                                           ; preds = %if.end23
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@wait_serial_change, %__here) to i32), ptr %task_state_change, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %25, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !141
  call void @schedule() #12
  call void @remove_wait_queue(ptr noundef %wioctl, ptr noundef nonnull %wait) #12
  %27 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %disconnected, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool90.not = icmp eq i8 %28, 0
  br i1 %tobool90.not, label %if.else, label %if.then91

if.then91:                                        ; preds = %__here
  br i1 %tobool11.not, label %if.then91.do.cond103.thread_crit_edge, label %if.then91.cleanup_crit_edge

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then91.do.cond103.thread_crit_edge:            ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond103.thread

if.else:                                          ; preds = %__here
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stack.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.else.do.cond103.thread_crit_edge, !prof !139

if.else.do.cond103.thread_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond103.thread

signal_pending.exit:                              ; preds = %if.else
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %32, align 4
  %and1.i.i.i.i.i = and i32 %37, 1
  %tobool99.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool99.not, label %signal_pending.exit.do.body_crit_edge, label %signal_pending.exit.do.cond103.thread_crit_edge

signal_pending.exit.do.cond103.thread_crit_edge:  ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond103.thread

signal_pending.exit.do.body_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond103.thread:                                ; preds = %signal_pending.exit.do.cond103.thread_crit_edge, %if.else.do.cond103.thread_crit_edge, %if.then91.do.cond103.thread_crit_edge
  %retval1.1.ph = phi i32 [ -19, %if.then91.do.cond103.thread_crit_edge ], [ -512, %if.else.do.cond103.thread_crit_edge ], [ -512, %signal_pending.exit.do.cond103.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %do.cond103.thread, %if.then91.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then91.cleanup_crit_edge ], [ %retval1.1.ph, %do.cond103.thread ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_uart_probe(ptr noundef %gbphy_dev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_uart_set_control_line_state_request, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bundle = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 2
  %0 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bundle, align 8
  %cport_desc = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 1
  %2 = ptrtoint ptr %cport_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport_desc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %3, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %call = tail call ptr @gb_connection_create(ptr noundef %1, i16 noundef zeroext %6, ptr noundef nonnull @gb_uart_request_handler) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @gb_operation_get_payload_size_max(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp = icmp ult i32 %call5, 2
  br i1 %cmp, label %if.end.exit_connection_destroy_crit_edge, label %if.end7

if.end.exit_connection_destroy_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_connection_destroy

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1064) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end7.exit_connection_destroy_crit_edge, label %if.end10

if.end7.exit_connection_destroy_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_connection_destroy

if.end10:                                         ; preds = %if.end7
  %port = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 1
  tail call void @tty_port_init(ptr noundef %port) #12
  %ops = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gb_port_ops, ptr %ops, align 4
  %minor12 = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %minor12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %minor12, align 4
  %sub = add i32 %call5, -2
  %buffer_payload_max = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %buffer_payload_max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %buffer_payload_max, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #18
  %buffer = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i, ptr %buffer, align 4
  %tobool16.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool16.not, label %if.end10.exit_put_port_crit_edge, label %do.body

if.end10.exit_put_port_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_put_port

do.body:                                          ; preds = %if.end10
  %tx_work = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #12
  %13 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %tx_work, align 8
  %lockdep_map = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 21, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @gb_uart_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry22 = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry22, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 21, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @gb_uart_tx_write_work, ptr %func, align 4
  %write_fifo = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 22
  %call24 = tail call i32 @__kfifo_alloc(ptr noundef %write_fifo, i32 noundef 4096, i32 noundef 1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %if.end28, label %do.body.exit_put_port_crit_edge

do.body.exit_put_port_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_put_port

if.end28:                                         ; preds = %do.body
  %credits = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 25
  %17 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4096, ptr %credits, align 4
  %credits_complete = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 26
  %18 = ptrtoint ptr %credits_complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %credits_complete, align 8
  %wait.i = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 26, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @init_completion.__key) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #12
  %call.i = tail call i32 @idr_alloc(ptr noundef nonnull @tty_minors, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 16, i32 noundef 3264) #12
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i140 = icmp sgt i32 %call.i, -1
  br i1 %cmp.i140, label %if.end38, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp32 = icmp eq i32 %call.i, -28
  br i1 %cmp32, label %do.end36, label %if.then31.exit_put_port_crit_edge

if.then31.exit_put_port_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_put_port

do.end36:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #15
  br label %exit_put_port

if.end38:                                         ; preds = %if.end28
  %19 = ptrtoint ptr %minor12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %minor12, align 4
  %write_lock = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %write_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @gb_uart_probe.__key.20, i16 noundef signext 3) #12
  %read_lock = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %read_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @gb_uart_probe.__key.22, i16 noundef signext 3) #12
  %wioctl = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %wioctl, ptr noundef nonnull @.str.25, ptr noundef nonnull @gb_uart_probe.__key.24) #12
  %mutex = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.27, ptr noundef nonnull @gb_uart_probe.__key.26) #12
  %connection54 = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %connection54 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %connection54, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %gbphy_dev, ptr %call7.i.i, align 8
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call, i32 0, i32 17
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call56 = tail call i32 @gb_connection_enable_tx(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end38.exit_put_port_crit_edge

if.end38.exit_put_port_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_put_port

if.end59:                                         ; preds = %if.end38
  %ctrlout = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 18
  %24 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ctrlout, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #12
  %26 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %request.i, align 1
  %27 = ptrtoint ptr %connection54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %connection54, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %28, i32 noundef 5, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #12
  %line_coding = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %line_coding to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 -2145058816, ptr %line_coding, align 2
  %format = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 19, i32 1
  %30 = ptrtoint ptr %format to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %format, align 2
  %parity = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 19, i32 2
  %31 = ptrtoint ptr %parity to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %parity, align 1
  %data_bits = getelementptr inbounds %struct.gb_tty, ptr %call7.i.i, i32 0, i32 19, i32 3
  %32 = ptrtoint ptr %data_bits to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %data_bits, align 4
  %33 = ptrtoint ptr %connection54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %connection54, align 4
  %call.i.i142 = call i32 @gb_operation_sync_timeout(ptr noundef %34, i32 noundef 4, ptr noundef %line_coding, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  %call65 = call i32 @gb_connection_enable(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end59.exit_connection_disable_crit_edge

if.end59.exit_connection_disable_crit_edge:       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_connection_disable

if.end68:                                         ; preds = %if.end59
  %35 = load ptr, ptr @gb_tty_driver, align 4
  %dev70 = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %call71 = call ptr @tty_port_register_device(ptr noundef %port, ptr noundef %35, i32 noundef %call.i, ptr noundef %dev70) #12
  %cmp.i143 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %call71 to i32
  br label %exit_connection_disable

if.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i144 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 12, i32 22
  %37 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store volatile i64 %call.i.i144, ptr %last_busy.i.i, align 8
  %call.i3.i = call i32 @__pm_runtime_suspend(ptr noundef %dev70, i32 noundef 13) #12
  br label %cleanup

exit_connection_disable:                          ; preds = %if.then73, %if.end59.exit_connection_disable_crit_edge
  %retval1.0 = phi i32 [ %call65, %if.end59.exit_connection_disable_crit_edge ], [ %36, %if.then73 ]
  call void @gb_connection_disable(ptr noundef %call) #12
  br label %exit_put_port

exit_put_port:                                    ; preds = %exit_connection_disable, %if.end38.exit_put_port_crit_edge, %do.end36, %if.then31.exit_put_port_crit_edge, %do.body.exit_put_port_crit_edge, %if.end10.exit_put_port_crit_edge
  %retval1.1 = phi i32 [ %call24, %do.body.exit_put_port_crit_edge ], [ -19, %do.end36 ], [ %call56, %if.end38.exit_put_port_crit_edge ], [ %retval1.0, %exit_connection_disable ], [ -12, %if.end10.exit_put_port_crit_edge ], [ %call.i, %if.then31.exit_put_port_crit_edge ]
  call void @tty_port_put(ptr noundef %port) #12
  br label %exit_connection_destroy

exit_connection_destroy:                          ; preds = %exit_put_port, %if.end7.exit_connection_destroy_crit_edge, %if.end.exit_connection_destroy_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %exit_put_port ], [ -22, %if.end.exit_connection_destroy_crit_edge ], [ -12, %if.end7.exit_connection_destroy_crit_edge ]
  call void @gb_connection_destroy(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %exit_connection_destroy, %if.end75, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %retval1.2, %exit_connection_destroy ], [ 0, %if.end75 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_uart_remove(ptr noundef %gbphy_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %connection1 = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection1, align 4
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.49, i32 noundef %call.i.i) #15
  %usage_count.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !144
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then_crit_edge
  %call.i.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !145
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %disconnected = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %disconnected to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %disconnected, align 1
  %wioctl = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %wioctl, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %port = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 1
  %call4 = tail call ptr @tty_port_tty_get(ptr noundef %port) #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_vhangup(ptr noundef nonnull %call4) #12
  tail call void @tty_kref_put(ptr noundef nonnull %call4) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @gb_connection_disable_rx(ptr noundef %3) #12
  %7 = load ptr, ptr @gb_tty_driver, align 4
  %minor = getelementptr inbounds %struct.gb_tty, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %minor, align 4
  tail call void @tty_unregister_device(ptr noundef %7, i32 noundef %9) #12
  tail call void @gb_connection_disable(ptr noundef %3) #12
  tail call void @gb_connection_destroy(ptr noundef %3) #12
  tail call void @tty_port_put(ptr noundef %port) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_uart_request_handler(ptr nocapture noundef readonly %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %type2 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type2, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end [
    i8 3, label %sw.bb
    i8 7, label %sw.bb4
    i8 8, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %port2.i = getelementptr inbounds %struct.gb_tty, ptr %3, i32 0, i32 1
  %request3.i = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %7 = ptrtoint ptr %request3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request3.i, align 4
  %payload_size.i = getelementptr inbounds %struct.gb_message, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %payload_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i = icmp ult i32 %10, 3
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.gbphy_device, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.30, i32 noundef %10, i32 noundef 3) #15
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %payload.i = getelementptr inbounds %struct.gb_message, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %payload.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %14, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #12
  %conv.i = zext i16 %17 to i32
  %sub.i = add i32 %10, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp7.not.i = icmp eq i32 %sub.i, %conv.i
  br i1 %cmp7.not.i, label %if.end18.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %dev14.i = getelementptr inbounds %struct.gbphy_device, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.33, i32 noundef %conv.i, i32 noundef %sub.i) #15
  br label %sw.epilog

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %if.end18.i.sw.epilog_crit_edge, label %if.end20.i

if.end18.i.sw.epilog_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end20.i:                                       ; preds = %if.end18.i
  %flags.i = getelementptr inbounds %struct.gb_uart_recv_data_request, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not.i = icmp eq i8 %21, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end48.i_crit_edge, label %if.then22.i

if.end20.i.if.end48.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then22.i:                                      ; preds = %if.end20.i
  %conv24.i = zext i8 %21 to i32
  %and.i = and i32 %conv24.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %if.else.i, label %if.then22.i.if.end40.i_crit_edge

if.then22.i.if.end40.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.else.i:                                        ; preds = %if.then22.i
  %and29.i = and i32 %conv24.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else32.i, label %if.else.i.if.end40.i_crit_edge

if.else.i.if.end40.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.else32.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %and35.i = shl nuw nsw i32 %conv24.i, 1
  %22 = and i32 %and35.i, 2
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else32.i, %if.else.i.if.end40.i_crit_edge, %if.then22.i.if.end40.i_crit_edge
  %tty_flags.0.i = phi i32 [ 1, %if.then22.i.if.end40.i_crit_edge ], [ 3, %if.else.i.if.end40.i_crit_edge ], [ %22, %if.else32.i ]
  %23 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool44.not.i = icmp eq i8 %23, 0
  br i1 %tobool44.not.i, label %if.end40.i.if.end48.i_crit_edge, label %if.then45.i

if.end40.i.if.end48.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.end40.i
  %tail.i.i = getelementptr inbounds %struct.gb_tty, ptr %3, i32 0, i32 1, i32 0, i32 8
  %24 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then45.i.if.end12.i.i_crit_edge

if.then45.i.if.end12.i.i_crit_edge:               ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.then45.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp3.i.i = icmp slt i32 %29, %31
  br i1 %cmp3.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %29
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %31
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %add.ptr.i.i.i, align 1
  %33 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %34, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %34
  %35 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %add.ptr.i1.i.i, align 1
  br label %if.end48.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.then45.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port2.i, i8 noundef zeroext 0, i8 noundef zeroext 4) #12
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end12.i.i, %if.end.i.i, %if.end40.i.if.end48.i_crit_edge, %if.end20.i.if.end48.i_crit_edge
  %tty_flags.1.i = phi i32 [ %tty_flags.0.i, %if.end40.i.if.end48.i_crit_edge ], [ 0, %if.end20.i.if.end48.i_crit_edge ], [ %tty_flags.0.i, %if.end.i.i ], [ %tty_flags.0.i, %if.end12.i.i ]
  %data.i = getelementptr inbounds %struct.gb_uart_recv_data_request, ptr %14, i32 0, i32 2
  %conv49.i = trunc i32 %tty_flags.1.i to i8
  %call51.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port2.i, ptr noundef %data.i, i8 noundef zeroext %conv49.i, i32 noundef %conv.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call51.i, i32 %conv.i)
  %cmp53.not.i = icmp eq i32 %call51.i, %conv.i
  br i1 %cmp53.not.i, label %if.end48.i.if.end62.i_crit_edge, label %do.end58.i

if.end48.i.if.end62.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

do.end58.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %dev60.i = getelementptr inbounds %struct.gbphy_device, ptr %37, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60.i, ptr noundef nonnull @.str.36, i32 noundef %conv.i, i32 noundef %call51.i) #15
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end58.i, %if.end48.i.if.end62.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool63.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool63.not.i, label %if.end62.i.sw.epilog_crit_edge, label %if.then64.i

if.end62.i.sw.epilog_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then64.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_flip_buffer_push(ptr noundef %port2.i) #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %request2.i = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %38 = ptrtoint ptr %request2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %request2.i, align 4
  %payload_size.i14 = getelementptr inbounds %struct.gb_message, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %payload_size.i14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %payload_size.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i15 = icmp eq i32 %41, 0
  br i1 %cmp.i15, label %do.end.i17, label %if.end.i19

do.end.i17:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %dev.i16 = getelementptr inbounds %struct.gbphy_device, ptr %43, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 1) #15
  br label %sw.epilog

if.end.i19:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %payload.i18 = getelementptr inbounds %struct.gb_message, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %payload.i18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %payload.i18, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %ctrlin.i = getelementptr inbounds %struct.gb_tty, ptr %3, i32 0, i32 17
  %48 = ptrtoint ptr %ctrlin.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %ctrlin.i, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %request2.i22 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %49 = ptrtoint ptr %request2.i22 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %request2.i22, align 4
  %payload_size.i23 = getelementptr inbounds %struct.gb_message, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %payload_size.i23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %payload_size.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i24 = icmp ult i32 %52, 2
  br i1 %cmp.i24, label %do.end.i26, label %if.end.i29

do.end.i26:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %dev.i25 = getelementptr inbounds %struct.gbphy_device, ptr %54, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i25, ptr noundef nonnull @.str.40, i32 noundef %52, i32 noundef 2) #15
  br label %sw.epilog

if.end.i29:                                       ; preds = %sw.bb6
  %payload.i27 = getelementptr inbounds %struct.gb_message, ptr %50, i32 0, i32 2
  %55 = ptrtoint ptr %payload.i27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %payload.i27, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %56, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #12
  %conv.i28 = zext i16 %59 to i32
  %write_lock.i = getelementptr inbounds %struct.gb_tty, ptr %3, i32 0, i32 12
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock.i) #12
  %credits.i = getelementptr inbounds %struct.gb_tty, ptr %3, i32 0, i32 25
  %60 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %credits.i, align 4
  %add.i = add i32 %61, %conv.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp15.i = icmp ugt i32 %add.i, 4096
  %spec.select.i = select i1 %cmp15.i, i32 %61, i32 %add.i
  %62 = ptrtoint ptr %credits.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %spec.select.i, ptr %credits.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock.i, i32 noundef %call9.i) #12
  br i1 %cmp15.i, label %do.end24.i, label %if.end27.i

do.end24.i:                                       ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %dev26.i = getelementptr inbounds %struct.gbphy_device, ptr %64, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.43, i32 noundef %conv.i28) #15
  br label %sw.epilog

if.end27.i:                                       ; preds = %if.end.i29
  %close_pending.i = getelementptr inbounds %struct.gb_tty, ptr %3, i32 0, i32 23
  %65 = ptrtoint ptr %close_pending.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %close_pending.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool28.not.i = icmp eq i8 %66, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end27.i.if.end31.i_crit_edge

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_work.i = getelementptr inbounds %struct.gb_tty, ptr %3, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %67 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %tx_work.i) #12
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end31.i_crit_edge
  %port.i = getelementptr inbounds %struct.gb_tty, ptr %3, i32 0, i32 1
  tail call void @tty_port_tty_wakeup(ptr noundef %port.i) #12
  %68 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %credits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %69)
  %cmp33.i = icmp eq i32 %69, 4096
  br i1 %cmp33.i, label %if.then35.i, label %if.end31.i.sw.epilog_crit_edge

if.end31.i.sw.epilog_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then35.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %credits_complete.i = getelementptr inbounds %struct.gb_tty, ptr %3, i32 0, i32 26
  tail call void @complete(ptr noundef %credits_complete.i) #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %5 to i32
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.gbphy_device, ptr %71, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %conv) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then35.i, %if.end31.i.sw.epilog_crit_edge, %do.end24.i, %do.end.i26, %if.end.i19, %do.end.i17, %if.then64.i, %if.end62.i.sw.epilog_crit_edge, %if.end18.i.sw.epilog_crit_edge, %do.end12.i, %do.end.i
  %ret.0 = phi i32 [ -22, %do.end ], [ -22, %do.end.i ], [ -22, %do.end12.i ], [ -22, %if.end18.i.sw.epilog_crit_edge ], [ 0, %if.then64.i ], [ 0, %if.end62.i.sw.epilog_crit_edge ], [ -22, %do.end.i17 ], [ 0, %if.end.i19 ], [ -22, %do.end.i26 ], [ -22, %do.end24.i ], [ 0, %if.then35.i ], [ 0, %if.end31.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_get_payload_size_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_uart_tx_write_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -936
  %buffer = getelementptr i8, ptr %work, i32 -356
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %close_pending = getelementptr i8, ptr %work, i32 64
  %2 = ptrtoint ptr %close_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %close_pending, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not121 = icmp eq i8 %3, 0
  br i1 %tobool.not121, label %do.body1.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1.lr.ph:                                   ; preds = %entry
  %write_lock = getelementptr i8, ptr %work, i32 -288
  %buffer_payload_max = getelementptr i8, ptr %work, i32 -352
  %credits = getelementptr i8, ptr %work, i32 68
  %write_fifo = getelementptr i8, ptr %work, i32 44
  %data = getelementptr inbounds %struct.gb_uart_send_data_request, ptr %1, i32 0, i32 1
  %connection = getelementptr i8, ptr %work, i32 -348
  %port = getelementptr i8, ptr %work, i32 -932
  br label %do.body1

do.body1:                                         ; preds = %do.body51.do.body1_crit_edge, %do.body1.lr.ph
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #12
  %4 = ptrtoint ptr %buffer_payload_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_payload_max, align 4
  %6 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %credits, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %call12 = tail call i32 @__kfifo_out_peek(ptr noundef %write_fifo, ptr noundef %data, i32 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call3) #12
  br label %cleanup

if.end17:                                         ; preds = %do.body1
  %9 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %credits, align 4
  %sub = sub i32 %10, %call12
  store i32 %sub, ptr %credits, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call3) #12
  %conv20 = trunc i32 %call12 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %1, align 1
  %13 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connection, align 4
  %add = add i32 %call12, 2
  %call.i = tail call i32 @gb_operation_sync_timeout(ptr noundef %14, i32 noundef 2, ptr noundef %1, i32 noundef %add, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %do.body51, label %do.end26

do.end26:                                         ; preds = %if.end17
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.gbphy_device, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %call.i) #15
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #12
  %17 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %credits, align 4
  %add42 = add i32 %18, %call12
  store i32 %add42, ptr %credits, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call36) #12
  %19 = ptrtoint ptr %close_pending to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %close_pending, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool45.not = icmp eq i8 %20, 0
  br i1 %tobool45.not, label %if.then46, label %do.end26.cleanup_crit_edge

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then46:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work) #12
  br label %cleanup

do.body51:                                        ; preds = %if.end17
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #12
  %call73 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %data, i32 noundef %call12) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call59) #12
  tail call void @tty_port_tty_wakeup(ptr noundef %port) #12
  %22 = ptrtoint ptr %close_pending to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %close_pending, align 4, !range !137
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %do.body51.do.body1_crit_edge, label %do.body51.cleanup_crit_edge

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body51.do.body1_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

cleanup:                                          ; preds = %do.body51.cleanup_crit_edge, %if.then46, %do.end26.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_tty_dtr_rts(ptr nocapture noundef %port, i32 noundef %on) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_uart_set_control_line_state_request, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlout = getelementptr i8, ptr %port, i32 921
  %0 = ptrtoint ptr %ctrlout to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrlout, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %2 = and i8 %1, -4
  %masksel = select i1 %tobool.not, i8 0, i8 3
  %newctrl.0 = or i8 %2, %masksel
  %3 = ptrtoint ptr %ctrlout to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %newctrl.0, ptr %ctrlout, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #12
  %4 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %newctrl.0, ptr %request.i, align 1
  %connection.i = getelementptr i8, ptr %port, i32 584
  %5 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %6, i32 noundef 5, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_tty_port_shutdown(ptr noundef %port) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_uart_serial_flush_request, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port, i32 -4
  %close_pending = getelementptr i8, ptr %port, i32 996
  %0 = ptrtoint ptr %close_pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %close_pending, align 4
  %tx_work = getelementptr i8, ptr %port, i32 932
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #12
  %write_lock = getelementptr i8, ptr %port, i32 644
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_lock) #12
  %write_fifo = getelementptr i8, ptr %port, i32 976
  %1 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %write_fifo, align 4
  %out = getelementptr i8, ptr %port, i32 980
  %3 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %out, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_lock, i32 noundef %call4) #12
  %credits = getelementptr i8, ptr %port, i32 1000
  %4 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp9 = icmp eq i32 %5, 4096
  br i1 %cmp9, label %entry.out18_crit_edge, label %if.end

entry.out18_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out18

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #12
  %6 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %request.i, align 1
  %connection.i = getelementptr i8, ptr %port, i32 584
  %7 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %8, i32 noundef 9, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %do.end15

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.gbphy_device, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call.i.i) #15
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %if.end.if.end16_crit_edge
  %11 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %12)
  %cmp.i = icmp eq i32 %12, 4096
  br i1 %cmp.i, label %if.end16.out18_crit_edge, label %if.end.i

if.end16.out18_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %out18

if.end.i:                                         ; preds = %if.end16
  %credits_complete.i = getelementptr i8, ptr %port, i32 1004
  %call1.i = call i32 @wait_for_completion_timeout(ptr noundef %credits_complete.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.out18_crit_edge

if.end.i.out18_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out18

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.gbphy_device, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47) #15
  br label %out18

out18:                                            ; preds = %do.end.i, %if.end.i.out18_crit_edge, %if.end16.out18_crit_edge, %entry.out18_crit_edge
  %15 = ptrtoint ptr %close_pending to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %close_pending, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %17, i32 0, i32 4
  %call.i.i33 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.gbphy_device, ptr %17, i32 0, i32 4, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i.i33, ptr %last_busy.i.i, align 8
  %call.i3.i = call i32 @__pm_runtime_suspend(ptr noundef %dev1.i, i32 noundef 13) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_tty_port_activate(ptr nocapture noundef readonly %port, ptr nocapture noundef readnone %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.gbphy_runtime_get_sync.exit_crit_edge

entry.gbphy_runtime_get_sync.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gbphy_runtime_get_sync.exit

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.49, i32 noundef %call.i.i) #15
  %usage_count.i.i = getelementptr inbounds %struct.gbphy_device, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.gbphy_runtime_get_sync.exit_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.gbphy_runtime_get_sync.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gbphy_runtime_get_sync.exit

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !144
  br label %gbphy_runtime_get_sync.exit

gbphy_runtime_get_sync.exit:                      ; preds = %do.end11.i.i.i.i.i, %do.end.i.gbphy_runtime_get_sync.exit_crit_edge, %entry.gbphy_runtime_get_sync.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.gbphy_runtime_get_sync.exit_crit_edge ], [ %call.i.i, %do.end.i.gbphy_runtime_get_sync.exit_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_tty_port_destruct(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %minor = getelementptr i8, ptr %port, i32 592
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.not = icmp eq i32 %1, 16
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  store i32 0, ptr %minor, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #12
  %call.i = tail call ptr @idr_remove(ptr noundef nonnull @tty_minors, i32 noundef %3) #12
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %port, i32 -4
  %write_fifo = getelementptr i8, ptr %port, i32 976
  tail call void @__kfifo_free(ptr noundef %write_fifo) #12
  %buffer = getelementptr i8, ptr %port, i32 576
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %5) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_gbphy_deregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !19, !21, !22, !23, !25, !27, !29, !30, !31, !33, !34, !36, !38, !39, !40, !41, !42, !43, !45, !47, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125}
!llvm.named.register.sp = !{!127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_gb_uart__230_1019_gb_uart_driver_init6, !1, !"__initcall__kmod_gb_uart__230_1019_gb_uart_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/uart.c", i32 1019, i32 1}
!2 = !{ptr @__exitcall_gb_uart_driver_exit, !3, !"__exitcall_gb_uart_driver_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/greybus/uart.c", i32 1027, i32 1}
!4 = !{ptr @__UNIQUE_ID_file231, !5, !"__UNIQUE_ID_file231", i1 false, i1 false}
!5 = !{!"../drivers/staging/greybus/uart.c", i32 1028, i32 1}
!6 = !{ptr @__UNIQUE_ID_license232, !5, !"__UNIQUE_ID_license232", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/uart.c", i32 1011, i32 8}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/uart.c", i32 952, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gb_tty_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @gb_tty_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/greybus/uart.c", i32 957, i32 31}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/greybus/uart.c", i32 958, i32 24}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/uart.c", i32 971, i32 3}
!21 = !{ptr @gb_tty_init._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @gb_tty_init._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @gb_tty_driver, !24, !"gb_tty_driver", i1 false, i1 false}
!24 = !{!"../drivers/staging/greybus/uart.c", i32 69, i32 27}
!25 = !{ptr @gb_ops, !26, !"gb_ops", i1 false, i1 false}
!26 = !{!"../drivers/staging/greybus/uart.c", i32 775, i32 36}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/greybus/uart.c", i32 71, i32 8}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @table_lock, !28, !"table_lock", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/greybus/uart.c", i32 70, i32 8}
!33 = !{ptr @tty_minors, !32, !"tty_minors", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/staging/greybus/uart.c", i32 660, i32 3}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/greybus/uart.c", i32 303, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @send_break._entry, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @send_break._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/greybus/uart.c", i32 997, i32 11}
!45 = !{ptr @uart_driver, !46, !"uart_driver", i1 false, i1 false}
!46 = !{!"../drivers/staging/greybus/uart.c", i32 996, i32 28}
!47 = !{ptr @gb_uart_probe.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/staging/greybus/uart.c", i32 844, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/greybus/uart.c", i32 857, i32 4}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @gb_uart_probe._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @gb_uart_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @gb_uart_probe.__key.20, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/staging/greybus/uart.c", i32 867, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @gb_uart_probe.__key.22, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/staging/greybus/uart.c", i32 868, i32 2}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @gb_uart_probe.__key.24, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/staging/greybus/uart.c", i32 869, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gb_uart_probe.__key.26, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/staging/greybus/uart.c", i32 870, i32 2}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/greybus/uart.c", i32 217, i32 3}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @gb_uart_request_handler._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @gb_uart_request_handler._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/greybus/uart.c", i32 85, i32 3}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @gb_uart_receive_data_handler._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @gb_uart_receive_data_handler._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/greybus/uart.c", i32 95, i32 3}
!79 = !{ptr @gb_uart_receive_data_handler._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @gb_uart_receive_data_handler._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/greybus/uart.c", i32 120, i32 3}
!83 = !{ptr @gb_uart_receive_data_handler._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @gb_uart_receive_data_handler._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/greybus/uart.c", i32 137, i32 3}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @gb_uart_serial_state_handler._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @gb_uart_serial_state_handler._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/greybus/uart.c", i32 160, i32 3}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @gb_uart_receive_credits_handler._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @gb_uart_receive_credits_handler._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/greybus/uart.c", i32 179, i32 3}
!97 = !{ptr @gb_uart_receive_credits_handler._entry.42, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @gb_uart_receive_credits_handler._entry_ptr.44, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @gb_port_ops, !100, !"gb_port_ops", i1 false, i1 false}
!100 = !{!"../drivers/staging/greybus/uart.c", i32 796, i32 41}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/greybus/uart.c", i32 752, i32 3}
!103 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @gb_tty_port_shutdown._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @gb_tty_port_shutdown._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/greybus/uart.c", i32 323, i32 3}
!108 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @gb_uart_wait_for_all_credits._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @gb_uart_wait_for_all_credits._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/greybus/gbphy.h", i32 76, i32 3}
!113 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @gbphy_runtime_get_sync._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @gbphy_runtime_get_sync._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/greybus/uart.c", i32 262, i32 4}
!119 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @gb_uart_tx_write_work._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @gb_uart_tx_write_work._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @init_completion.__key, !123, !"__key", i1 false, i1 false}
!123 = !{!"../include/linux/completion.h", i32 87, i32 2}
!124 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @gb_uart_id_table, !126, !"gb_uart_id_table", i1 false, i1 false}
!126 = !{!"../drivers/staging/greybus/uart.c", i32 990, i32 37}
!127 = !{!"sp"}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i8 0, i8 2}
!138 = !{i64 717130, i64 717154, i64 717175, i64 717192, i64 717209}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{!"auto-init"}
!141 = !{i64 2154288057}
!142 = !{i64 2148232813}
!143 = !{i64 717636, i64 717661, i64 717683, i64 717699, i64 717711, i64 717731, i64 717755, i64 717771, i64 717783}
!144 = !{i64 2148233001}
!145 = !{i64 2148233394, i64 2148233420, i64 2148233449, i64 2148233483, i64 2148233514, i64 2148233537}
