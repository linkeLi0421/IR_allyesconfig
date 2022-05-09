; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/ucc_uart.c_pt.bc'
source_filename = "../drivers/tty/serial/ucc_uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.uart_qe_port = type { %struct.uart_port, ptr, ptr, %struct.ucc_slow_info, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ucc_slow_info = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.qe_bd = type { i16, i16, i32 }
%struct.ucc_slow = type <{ i32, i32, i16, [2 x i8], i16, i16, i16, [2 x i8], i16, [1 x i8], i8, [36 x i8], i16, [82 x i8], i8 }>
%struct.ucc_slow_pram = type { i16, i16, i8, i8, i16, i32, i32, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.ucc_uart_pram = type <{ %struct.ucc_slow_pram, [8 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], i16, i16, [8 x i16], i16, i16, i16, i16, i32, i8, [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, i8, [29 x i8], i32, i32, i8, i8, i16, [8 x i8], i32, i8, i16 }>
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
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.ucc_slow_private = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@ucc_uart_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016Freescale QUICC Engine UART device driver unloading\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ucc_uart_exit\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/tty/serial/ucc_uart.c\00", [34 x i8] zeroinitializer }, align 32
@ucc_uart_exit._entry_ptr = internal global ptr @ucc_uart_exit._entry, section ".printk_index", align 4
@ucc_uart_of_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ucc_uart_probe, ptr @ucc_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ucc_uart_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ucc_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.3, ptr @.str.91, i32 204, i32 46, i32 4, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_ucc_uart__238_1542_ucc_uart_init6 = internal global ptr @ucc_uart_init, section ".initcall6.init", align 4
@__exitcall_ucc_uart_exit = internal global ptr @ucc_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [54 x i8] c"ucc_uart.description=Freescale QUICC Engine (QE) UART\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [49 x i8] c"ucc_uart.author=Timur Tabi <timur@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [42 x i8] c"ucc_uart.file=drivers/tty/serial/ucc_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [24 x i8] c"ucc_uart.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [32 x i8] c"ucc_uart.alias=char-major-204-*\00", section ".modinfo", align 1
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ucc_uart\00", [23 x i8] zeroinitializer }, align 32
@ucc_uart_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"serial\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ucc_uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t1040-ucc-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1270, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't allocate QE port structure\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ucc_uart_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr = internal global ptr @ucc_uart_probe._entry, section ".printk_index", align 4
@ucc_uart_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 1277, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"missing 'reg' property in device tree\0A\00", [57 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.10 = internal global ptr @ucc_uart_probe._entry.8, section ".printk_index", align 4
@ucc_uart_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 1281, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid 'reg' property in device tree\0A\00", [57 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.13 = internal global ptr @ucc_uart_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cell-index\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"device-id\00", [22 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 1291, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UCC is unspecified in device tree\0A\00", [61 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.18 = internal global ptr @ucc_uart_probe._entry.16, section ".printk_index", align 4
@ucc_uart_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.2, i32 1298, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no support for UCC%u\0A\00", [42 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.21 = internal global ptr @ucc_uart_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx-clock-name\00", [18 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.2, i32 1313, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing rx-clock-name in device tree\0A\00", [58 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.25 = internal global ptr @ucc_uart_probe._entry.23, section ".printk_index", align 4
@ucc_uart_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.2, i32 1321, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rx-clock-name must be a BRG for UART\0A\00", [58 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.28 = internal global ptr @ucc_uart_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx-clock-name\00", [18 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.5, ptr @.str.2, i32 1332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing tx-clock-name in device tree\0A\00", [58 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.32 = internal global ptr @ucc_uart_probe._entry.30, section ".printk_index", align 4
@ucc_uart_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.5, ptr @.str.2, i32 1340, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tx-clock-name must be a BRG for UART\0A\00", [58 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.35 = internal global ptr @ucc_uart_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port-number\00", [20 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.5, ptr @.str.2, i32 1347, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"missing port-number in device tree\0A\00", [60 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.39 = internal global ptr @ucc_uart_probe._entry.37, section ".printk_index", align 4
@ucc_uart_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.5, ptr @.str.2, i32 1354, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"port-number must be 0-%u\0A\00", [38 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.42 = internal global ptr @ucc_uart_probe._entry.40, section ".printk_index", align 4
@ucc_uart_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.5, ptr @.str.2, i32 1362, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not map IRQ for UCC%u\0A\00", [35 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.45 = internal global ptr @ucc_uart_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fsl,qe\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"qe\00", [29 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.5, ptr @.str.2, i32 1375, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not find 'qe' node\0A\00", [38 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.50 = internal global ptr @ucc_uart_probe._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brg-frequency\00", [18 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.5, ptr @.str.2, i32 1383, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing brg-frequency in device tree\0A\00", [58 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.54 = internal global ptr @ucc_uart_probe._entry.52, section ".printk_index", align 4
@ucc_uart_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.5, ptr @.str.2, i32 1393, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid brg-frequency in device tree\0A\00", [58 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.57 = internal global ptr @ucc_uart_probe._entry.55, section ".printk_index", align 4
@ucc_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&qe_port->port.lock\00", [44 x i8] zeroinitializer }, align 32
@qe_uart_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @qe_uart_tx_empty, ptr @qe_uart_set_mctrl, ptr @qe_uart_get_mctrl, ptr @qe_uart_stop_tx, ptr @qe_uart_start_tx, ptr null, ptr null, ptr null, ptr @qe_uart_stop_rx, ptr null, ptr @qe_uart_break_ctl, ptr @qe_uart_startup, ptr @qe_uart_shutdown, ptr null, ptr @qe_uart_set_termios, ptr null, ptr null, ptr @qe_uart_type, ptr @qe_uart_release_port, ptr @qe_uart_request_port, ptr @qe_uart_config_port, ptr @qe_uart_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.5, ptr @.str.2, i32 1452, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not add /dev/ttyQE%u\0A\00", [36 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.61 = internal global ptr @ucc_uart_probe._entry.59, section ".printk_index", align 4
@ucc_uart_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.5, ptr @.str.2, i32 1459, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UCC%u assigned to /dev/ttyQE%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ucc_uart_probe._entry_ptr.65 = internal global ptr @ucc_uart_probe._entry.62, section ".printk_index", align 4
@ucc_uart_probe.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.5, ptr @.str.2, ptr @.str.66, i8 1, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mknod command is 'mknod /dev/ttyQE%u c %u %u'\0A\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qe2cpu_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: addr=%llx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qe2cpu_addr\00", [20 x i8] zeroinitializer }, align 32
@qe2cpu_addr._entry_ptr = internal global ptr @qe2cpu_addr._entry, section ".printk_index", align 4
@qe_uart_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 781, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Soft-UART firmware not uploaded\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qe_uart_startup\00", [16 x i8] zeroinitializer }, align 32
@qe_uart_startup._entry_ptr = internal global ptr @qe_uart_startup._entry, section ".printk_index", align 4
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ucc-uart\00", [23 x i8] zeroinitializer }, align 32
@qe_uart_startup._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.2, i32 792, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not claim IRQ %u\0A\00", [40 x i8] zeroinitializer }, align 32
@qe_uart_startup._entry_ptr.74 = internal global ptr @qe_uart_startup._entry.72, section ".printk_index", align 4
@cpu2qe_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s: addr=%p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpu2qe_addr\00", [20 x i8] zeroinitializer }, align 32
@cpu2qe_addr._entry_ptr = internal global ptr @cpu2qe_addr._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qe_uart_int_rx.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qe_uart_int_rx\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ucc-uart: no room in RX buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@qe_uart_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 818, ptr @.str.81, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"shutdown timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qe_uart_shutdown\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qe_uart_shutdown._entry_ptr = internal global ptr @qe_uart_shutdown._entry, section ".printk_index", align 4
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"QE\00", [29 x i8] zeroinitializer }, align 32
@qe_uart_request_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 994, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not initialize UCC%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qe_uart_request_port\00", [43 x i8] zeroinitializer }, align 32
@qe_uart_request_port._entry_ptr = internal global ptr @qe_uart_request_port._entry, section ".printk_index", align 4
@qe_uart_request_port._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 1014, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not allocate buffer descriptors\0A\00", [57 x i8] zeroinitializer }, align 32
@qe_uart_request_port._entry_ptr.88 = internal global ptr @qe_uart_request_port._entry.86, section ".printk_index", align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@ucc_uart_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 1478, ptr @.str.64, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"removing /dev/ttyQE%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ucc_uart_remove\00", [16 x i8] zeroinitializer }, align 32
@ucc_uart_remove._entry_ptr = internal global ptr @ucc_uart_remove._entry, section ".printk_index", align 4
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyQE\00", [26 x i8] zeroinitializer }, align 32
@ucc_uart_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 1512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016Freescale QUICC Engine UART device driver\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ucc_uart_init\00", [18 x i8] zeroinitializer }, align 32
@ucc_uart_init._entry_ptr = internal global ptr @ucc_uart_init._entry, section ".printk_index", align 4
@ucc_uart_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 1519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ucc-uart: could not register UART driver\0A\00", [52 x i8] zeroinitializer }, align 32
@ucc_uart_init._entry_ptr.96 = internal global ptr @ucc_uart_init._entry.94, section ".printk_index", align 4
@ucc_uart_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.2, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ucc-uart: could not register platform driver\0A\00", [48 x i8] zeroinitializer }, align 32
@ucc_uart_init._entry_ptr.99 = internal global ptr @ucc_uart_init._entry.97, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 58]
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1535, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"ucc_uart_of_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1499, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"ucc_uart_driver\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 203, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1501, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"ucc_uart_match\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1487, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1270, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1277, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1281, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1289, i32 31 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1290, i32 32 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1291, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1298, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1311, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1313, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1321, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1330, i32 30 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1332, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1340, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1346, i32 31 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1347, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1353, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1361, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1371, i32 43 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1373, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1375, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1381, i32 31 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1382, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1392, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1419, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [13 x i8] c"qe_uart_pops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1080, i32 30 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1451, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1458, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1462, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 244, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 781, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 789, i32 57 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 792, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 225, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 487, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 818, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 974, i32 9 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 993, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1014, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1478, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 206, i32 20 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1512, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1519, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.378 = private constant [33 x i8] c"../drivers/tty/serial/ucc_uart.c\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1525, i32 3 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_ucc_uart_exit, ptr @__initcall__kmod_ucc_uart__238_1542_ucc_uart_init6, ptr @cpu2qe_addr._entry, ptr @cpu2qe_addr._entry_ptr, ptr @qe2cpu_addr._entry, ptr @qe2cpu_addr._entry_ptr, ptr @qe_uart_request_port._entry, ptr @qe_uart_request_port._entry.86, ptr @qe_uart_request_port._entry_ptr, ptr @qe_uart_request_port._entry_ptr.88, ptr @qe_uart_shutdown._entry, ptr @qe_uart_shutdown._entry_ptr, ptr @qe_uart_startup._entry, ptr @qe_uart_startup._entry.72, ptr @qe_uart_startup._entry_ptr, ptr @qe_uart_startup._entry_ptr.74, ptr @ucc_uart_exit, ptr @ucc_uart_exit._entry, ptr @ucc_uart_exit._entry_ptr, ptr @ucc_uart_init._entry, ptr @ucc_uart_init._entry.94, ptr @ucc_uart_init._entry.97, ptr @ucc_uart_init._entry_ptr, ptr @ucc_uart_init._entry_ptr.96, ptr @ucc_uart_init._entry_ptr.99, ptr @ucc_uart_probe._entry, ptr @ucc_uart_probe._entry.11, ptr @ucc_uart_probe._entry.16, ptr @ucc_uart_probe._entry.19, ptr @ucc_uart_probe._entry.23, ptr @ucc_uart_probe._entry.26, ptr @ucc_uart_probe._entry.30, ptr @ucc_uart_probe._entry.33, ptr @ucc_uart_probe._entry.37, ptr @ucc_uart_probe._entry.40, ptr @ucc_uart_probe._entry.43, ptr @ucc_uart_probe._entry.48, ptr @ucc_uart_probe._entry.52, ptr @ucc_uart_probe._entry.55, ptr @ucc_uart_probe._entry.59, ptr @ucc_uart_probe._entry.62, ptr @ucc_uart_probe._entry.8, ptr @ucc_uart_probe._entry_ptr, ptr @ucc_uart_probe._entry_ptr.10, ptr @ucc_uart_probe._entry_ptr.13, ptr @ucc_uart_probe._entry_ptr.18, ptr @ucc_uart_probe._entry_ptr.21, ptr @ucc_uart_probe._entry_ptr.25, ptr @ucc_uart_probe._entry_ptr.28, ptr @ucc_uart_probe._entry_ptr.32, ptr @ucc_uart_probe._entry_ptr.35, ptr @ucc_uart_probe._entry_ptr.39, ptr @ucc_uart_probe._entry_ptr.42, ptr @ucc_uart_probe._entry_ptr.45, ptr @ucc_uart_probe._entry_ptr.50, ptr @ucc_uart_probe._entry_ptr.54, ptr @ucc_uart_probe._entry_ptr.57, ptr @ucc_uart_probe._entry_ptr.61, ptr @ucc_uart_probe._entry_ptr.65, ptr @ucc_uart_remove._entry, ptr @ucc_uart_remove._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ucc_uart_of_driver, ptr @ucc_uart_driver, ptr @.str.3, ptr @ucc_uart_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @ucc_uart_probe.__key, ptr @.str.58, ptr @qe_uart_pops, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_of_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_uart_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe2cpu_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_uart_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_uart_startup._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu2qe_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_uart_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_uart_request_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_uart_request_port._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucc_uart_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ucc_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @ucc_uart_of_driver) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @ucc_uart_driver) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ucc_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #12
  %call1 = tail call i32 @uart_register_driver(ptr noundef nonnull @ucc_uart_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ucc_uart_of_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @ucc_uart_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end4
  %retval.0 = phi i32 [ %call1, %do.end4 ], [ %call7, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucc_uart_probe(ptr noundef %ofdev) #3 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 576) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  br label %out_free

if.end13:                                         ; preds = %if.end5
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  br label %out_free

if.end20:                                         ; preds = %if.end13
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call7.i.i, i32 0, i32 43
  %7 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mapbase, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool23.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool23.not, label %if.end20.if.end33_crit_edge, label %if.then24

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then24:                                        ; preds = %if.end20
  %call.i.i300 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i300)
  %tobool26.not = icmp sgt i32 %call.i.i300, -1
  br i1 %tobool26.not, label %if.then24.if.end33_crit_edge, label %do.end30

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  br label %out_free

if.end33:                                         ; preds = %if.then24.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = add i32 %9, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %10)
  %11 = icmp ult i32 %10, -8
  br i1 %11, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %9) #12
  br label %out_free

if.end40:                                         ; preds = %if.end33
  %sub = add nsw i32 %9, -1
  %ucc_num = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %ucc_num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %ucc_num, align 8
  %call41 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef null) #9
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %do.end46, label %if.end48

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #12
  br label %out_free

if.end48:                                         ; preds = %if.end40
  %call49 = call i32 @qe_clock_source(ptr noundef nonnull %call41) #9
  %us_info = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 3
  %rx_clock = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %rx_clock to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call49, ptr %rx_clock, align 8
  %14 = add i32 %call49, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %14)
  %15 = icmp ult i32 %14, -16
  br i1 %15, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #12
  br label %out_free

if.end62:                                         ; preds = %if.end48
  %call63 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef null) #9
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %do.end68, label %if.end70

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #12
  br label %out_free

if.end70:                                         ; preds = %if.end62
  %call71 = call i32 @qe_clock_source(ptr noundef nonnull %call63) #9
  %tx_clock = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %tx_clock to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call71, ptr %tx_clock, align 4
  %17 = add i32 %call71, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %17)
  %18 = icmp ult i32 %17, -16
  br i1 %18, label %do.end83, label %if.end85

do.end83:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #12
  br label %out_free

if.end85:                                         ; preds = %if.end70
  %call.i.i301 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i301)
  %tobool87.not = icmp sgt i32 %call.i.i301, -1
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  br label %out_free

if.end93:                                         ; preds = %if.end85
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %line = getelementptr inbounds %struct.uart_port, ptr %call7.i.i, i32 0, i32 41
  %21 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %line, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp97 = icmp ugt i32 %20, 3
  br i1 %cmp97, label %do.end101, label %if.end103

do.end101:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef 3) #12
  br label %out_free

if.end103:                                        ; preds = %if.end93
  %call104 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.uart_port, ptr %call7.i.i, i32 0, i32 20
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call104, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp108 = icmp eq i32 %call104, 0
  br i1 %cmp108, label %do.end112, label %if.end115

do.end112:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %ucc_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ucc_num, align 8
  %add = add i32 %24, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %add) #12
  br label %out_free

if.end115:                                        ; preds = %if.end103
  %call116 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.46) #9
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %if.then118, label %if.end115.if.end127_crit_edge

if.end115.if.end127_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then118:                                       ; preds = %if.end115
  %call119 = call ptr @of_find_node_by_type(ptr noundef null, ptr noundef nonnull @.str.47) #9
  %tobool120.not = icmp eq ptr %call119, null
  br i1 %tobool120.not, label %do.end124, label %if.then118.if.end127_crit_edge

if.then118.if.end127_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

do.end124:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #12
  br label %out_free

if.end127:                                        ; preds = %if.then118.if.end127_crit_edge, %if.end115.if.end127_crit_edge
  %np.0 = phi ptr [ %call116, %if.end115.if.end127_crit_edge ], [ %call119, %if.then118.if.end127_crit_edge ]
  %call.i.i302 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.0, ptr noundef nonnull @.str.51, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i302)
  %tobool129.not = icmp sgt i32 %call.i.i302, -1
  br i1 %tobool129.not, label %if.end135, label %do.end133

do.end133:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53) #12
  br label %out_np

if.end135:                                        ; preds = %if.end127
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool136.not = icmp eq i32 %26, 0
  br i1 %tobool136.not, label %do.end141, label %if.then137

if.then137:                                       ; preds = %if.end135
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %call7.i.i, i32 0, i32 22
  %27 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %uartclk, align 8
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @ucc_uart_probe.__key, i16 noundef signext 3) #9
  %np149 = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %np149 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %np.0, ptr %np149, align 4
  %dev152 = getelementptr inbounds %struct.uart_port, ptr %call7.i.i, i32 0, i32 45
  %29 = ptrtoint ptr %dev152 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %dev152, align 8
  %ops = getelementptr inbounds %struct.uart_port, ptr %call7.i.i, i32 0, i32 39
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @qe_uart_pops, ptr %ops, align 8
  %iotype = getelementptr inbounds %struct.uart_port, ptr %call7.i.i, i32 0, i32 26
  %31 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %iotype, align 2
  %tx_nrfifos = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %tx_nrfifos to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 4, ptr %tx_nrfifos, align 8
  %tx_fifosize = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %tx_fifosize to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 32, ptr %tx_fifosize, align 2
  %rx_nrfifos = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %rx_nrfifos to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 4, ptr %rx_nrfifos, align 4
  %rx_fifosize = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %rx_fifosize to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 32, ptr %rx_fifosize, align 2
  %wait_closing = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 11
  %36 = ptrtoint ptr %wait_closing to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 100, ptr %wait_closing, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %call7.i.i, i32 0, i32 23
  %37 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 512, ptr %fifosize, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %call7.i.i, i32 0, i32 33
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1879048192, ptr %flags, align 8
  %39 = ptrtoint ptr %ucc_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ucc_num, align 8
  %41 = ptrtoint ptr %us_info to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %us_info, align 8
  %42 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %res, align 4
  %regs = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %regs, align 8
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 8
  %irq165 = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 3, i32 5
  %47 = ptrtoint ptr %irq165 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %irq165, align 4
  %rx_bd_ring_len = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 3, i32 11
  %48 = ptrtoint ptr %rx_bd_ring_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %rx_bd_ring_len, align 4
  %tx_bd_ring_len = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 3, i32 10
  %49 = ptrtoint ptr %tx_bd_ring_len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %tx_bd_ring_len, align 8
  %init_tx = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %init_tx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %init_tx, align 8
  %init_rx = getelementptr inbounds %struct.uart_qe_port, ptr %call7.i.i, i32 0, i32 3, i32 9
  %51 = ptrtoint ptr %init_rx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %init_rx, align 4
  %call174 = call i32 @uart_add_one_port(ptr noundef nonnull @ucc_uart_driver, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end183, label %do.end179

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56) #12
  br label %out_np

do.end179:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %line, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %53) #12
  br label %out_np

if.end183:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %55 = ptrtoint ptr %ucc_num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ucc_num, align 8
  %add189 = add i32 %56, 1
  %57 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %line, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %add189, i32 noundef %58) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ucc_uart_probe.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ucc_uart_probe, %if.then197)) #9
          to label %cleanup [label %if.then197], !srcloc !204

if.then197:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %line, align 8
  %add203 = add i32 %60, 46
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ucc_uart_probe.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %60, i32 noundef 204, i32 noundef %add203) #9
  br label %cleanup

out_np:                                           ; preds = %do.end179, %do.end141, %do.end133
  %ret.0 = phi i32 [ -22, %do.end133 ], [ %call174, %do.end179 ], [ -22, %do.end141 ]
  call void @of_node_put(ptr noundef nonnull %np.0) #9
  br label %out_free

out_free:                                         ; preds = %out_np, %do.end124, %do.end112, %do.end101, %do.end91, %do.end83, %do.end68, %do.end60, %do.end46, %do.end38, %do.end30, %do.end18, %do.end11
  %ret.1 = phi i32 [ %call6, %do.end11 ], [ -22, %do.end30 ], [ -19, %do.end38 ], [ -19, %do.end60 ], [ -19, %do.end83 ], [ -22, %do.end91 ], [ -22, %do.end101 ], [ -22, %do.end112 ], [ %ret.0, %out_np ], [ -22, %do.end124 ], [ -19, %do.end68 ], [ -19, %do.end46 ], [ -22, %do.end18 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then197, %if.end183, %do.end
  %retval.0 = phi i32 [ %ret.1, %out_free ], [ -12, %do.end ], [ 0, %if.then197 ], [ 0, %if.end183 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucc_uart_remove(ptr noundef %ofdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %3) #12
  %call2 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @ucc_uart_driver, ptr noundef %1) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qe_clock_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qe_uart_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_bd_base = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 15
  %0 = ptrtoint ptr %tx_bd_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_bd_base, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %tobool.not14 = icmp sgt i16 %2, -1
  br i1 %tobool.not14, label %entry.if.end_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

while.cond:                                       ; preds = %if.end
  %incdec.ptr = getelementptr %struct.qe_bd, ptr %bdp.015, i32 1
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %incdec.ptr) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  %tobool.not = icmp sgt i16 %3, -1
  br i1 %tobool.not, label %while.cond.if.end_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %while.cond.if.end_crit_edge, %entry.if.end_crit_edge
  %bdp.015 = phi ptr [ %incdec.ptr, %while.cond.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %bdp.015) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  %5 = and i16 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool8.not = icmp eq i16 %5, 0
  br i1 %tobool8.not, label %while.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qe_uart_set_mctrl(ptr nocapture noundef %port, i32 noundef %mctrl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qe_uart_get_mctrl(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 352
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_uart_stop_tx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %uccp = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %uccp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uccp, align 4
  %uccm = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 8
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %uccm) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  %3 = and i16 %2, -3
  %4 = ptrtoint ptr %uccp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uccp, align 4
  %uccm4 = getelementptr inbounds %struct.ucc_slow, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %uccm4, i16 %3) #9, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_uart_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uccp = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %uccp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uccp, align 4
  %uccm = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 8
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %uccm) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %3 = and i16 %2, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @qe_uart_tx_pump(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %uccp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uccp, align 4
  %uccm7 = getelementptr inbounds %struct.ucc_slow, ptr %5, i32 0, i32 8
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %uccm7) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  %7 = or i16 %6, 2
  %8 = ptrtoint ptr %uccp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uccp, align 4
  %uccm13 = getelementptr inbounds %struct.ucc_slow, ptr %9, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %uccm13, i16 %7) #9, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_uart_stop_rx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @arm_heavy_mb() #9
  %uccp = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %uccp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uccp, align 4
  %uccm = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 8
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %uccm) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %3 = and i16 %2, -2
  %4 = ptrtoint ptr %uccp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uccp, align 4
  %uccm4 = getelementptr inbounds %struct.ucc_slow, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %uccm4, i16 %3) #9, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_uart_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %us_private1 = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %us_private1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %us_private1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ucc_slow_stop_tx(ptr noundef %1) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ucc_slow_restart_tx(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qe_uart_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @qe_uart_initbd(ptr noundef %port)
  %uccp1.i = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %uccp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uccp1.i, align 4
  %uccup2.i = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %uccup2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uccup2.i, align 4
  %us_private.i = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %us_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %us_private.i, align 4
  tail call void @ucc_slow_disable(ptr noundef %5, i32 noundef 3) #9
  %rbmr.i = getelementptr inbounds %struct.ucc_slow_pram, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %rbmr.i, i8 48) #9, !srcloc !217
  %tbmr.i = getelementptr inbounds %struct.ucc_slow_pram, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tbmr.i, i8 48) #9, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  tail call void @arm_heavy_mb() #9
  %rx_fifosize.i = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 8
  %6 = ptrtoint ptr %rx_fifosize.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rx_fifosize.i, align 2
  %mrblr.i = getelementptr inbounds %struct.ucc_slow_pram, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mrblr.i, i16 %7) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %maxidl.i = getelementptr inbounds %struct.ucc_uart_pram, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %maxidl.i, i16 16) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  tail call void @arm_heavy_mb() #9
  %brkcr.i = getelementptr inbounds %struct.ucc_uart_pram, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %brkcr.i, i16 1) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  tail call void @arm_heavy_mb() #9
  %parec.i = getelementptr inbounds %struct.ucc_uart_pram, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %parec.i, i16 0) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void @arm_heavy_mb() #9
  %frmec.i = getelementptr inbounds %struct.ucc_uart_pram, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %frmec.i, i16 0) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %nosec.i = getelementptr inbounds %struct.ucc_uart_pram, ptr %3, i32 0, i32 7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %nosec.i, i16 0) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %brkec.i = getelementptr inbounds %struct.ucc_uart_pram, ptr %3, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %brkec.i, i16 0) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %uaddr.i = getelementptr inbounds %struct.ucc_uart_pram, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %uaddr.i, i16 0) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  tail call void @arm_heavy_mb() #9
  %arrayidx30.i = getelementptr %struct.ucc_uart_pram, ptr %3, i32 0, i32 10, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx30.i, i16 0) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %toseq.i = getelementptr inbounds %struct.ucc_uart_pram, ptr %3, i32 0, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %toseq.i, i16 0) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %arrayidx37.i = getelementptr %struct.ucc_uart_pram, ptr %3, i32 0, i32 13, i32 0
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx37.i, i16 -16384) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %arrayidx37.1.i = getelementptr %struct.ucc_uart_pram, ptr %3, i32 0, i32 13, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx37.1.i, i16 -16384) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %arrayidx37.2.i = getelementptr %struct.ucc_uart_pram, ptr %3, i32 0, i32 13, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx37.2.i, i16 -16384) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %arrayidx37.3.i = getelementptr %struct.ucc_uart_pram, ptr %3, i32 0, i32 13, i32 3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx37.3.i, i16 -16384) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %arrayidx37.4.i = getelementptr %struct.ucc_uart_pram, ptr %3, i32 0, i32 13, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx37.4.i, i16 -16384) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %arrayidx37.5.i = getelementptr %struct.ucc_uart_pram, ptr %3, i32 0, i32 13, i32 5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx37.5.i, i16 -16384) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %arrayidx37.6.i = getelementptr %struct.ucc_uart_pram, ptr %3, i32 0, i32 13, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx37.6.i, i16 -16384) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %arrayidx37.7.i = getelementptr %struct.ucc_uart_pram, ptr %3, i32 0, i32 13, i32 7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx37.7.i, i16 -16384) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  tail call void @arm_heavy_mb() #9
  %rccm.i = getelementptr inbounds %struct.ucc_uart_pram, ptr %3, i32 0, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %rccm.i, i16 -16129) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  %and61.i = and i32 %8, -245776
  %or62.i = or i32 %and61.i, 163844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or62.i) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  tail call void @arm_heavy_mb() #9
  %gumr_h68.i = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gumr_h68.i) #9, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  %and71.i = and i32 %9, -6177
  %or72.i = or i32 %and71.i, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gumr_h68.i, i32 %or72.i) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void @arm_heavy_mb() #9
  %uccm.i = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %uccm.i, i16 0) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  %ucce.i = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ucce.i, i16 -1) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void @arm_heavy_mb() #9
  %udsr.i = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %udsr.i, i16 32382) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  tail call void @arm_heavy_mb() #9
  %upsmr.i = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %upsmr.i, i16 0) #9, !srcloc !210
  %ucc_num135.i = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 6
  %10 = ptrtoint ptr %ucc_num135.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ucc_num135.i, align 4
  %call136.i = tail call i32 @ucc_slow_get_qe_cr_subblock(i32 noundef %11) #9
  %call137.i = tail call i32 @qe_issue_cmd(i32 noundef 0, i32 noundef %call136.i, i8 noundef zeroext 4, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @qe_uart_int, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.71, ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %do.body10, label %do.end6

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.73, i32 noundef %17) #12
  br label %cleanup

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %uccp1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uccp1.i, align 4
  %uccm = getelementptr inbounds %struct.ucc_slow, ptr %19, i32 0, i32 8
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %uccm) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  %21 = or i16 %20, 1
  %22 = ptrtoint ptr %uccp1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uccp1.i, align 4
  %uccm17 = getelementptr inbounds %struct.ucc_slow, ptr %23, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %uccm17, i16 %21) #9, !srcloc !210
  %24 = ptrtoint ptr %us_private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %us_private.i, align 4
  tail call void @ucc_slow_enable(ptr noundef %25, i32 noundef 3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %do.end6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_uart_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uccp1 = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %uccp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uccp1, align 4
  %tx_bd_base.i = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 15
  br label %while.cond

while.cond:                                       ; preds = %__here, %entry
  %timeout.0 = phi i32 [ 20, %entry ], [ %dec, %__here ]
  %2 = ptrtoint ptr %tx_bd_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_bd_base.i, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool.not14.i = icmp sgt i16 %4, -1
  br i1 %tobool.not14.i, label %while.cond.if.end.i_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.if.end.i_crit_edge:                    ; preds = %while.cond
  br label %if.end.i

while.cond.i:                                     ; preds = %if.end.i
  %incdec.ptr.i = getelementptr %struct.qe_bd, ptr %bdp.015.i, i32 1
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %incdec.ptr.i) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  %tobool.not.i = icmp sgt i16 %5, -1
  br i1 %tobool.not.i, label %while.cond.i.if.end.i_crit_edge, label %while.cond.i.while.body_crit_edge

while.cond.i.while.body_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.i.if.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %while.cond.i.if.end.i_crit_edge, %while.cond.if.end.i_crit_edge
  %bdp.015.i = phi ptr [ %incdec.ptr.i, %while.cond.i.if.end.i_crit_edge ], [ %3, %while.cond.if.end.i_crit_edge ]
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %bdp.015.i) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  %7 = and i16 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not.i = icmp eq i16 %7, 0
  br i1 %tobool8.not.i, label %while.cond.i, label %if.end.i.while.end_crit_edge

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.i.while.body_crit_edge, %while.cond.while.body_crit_edge
  %dec = add nsw i32 %timeout.0, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.end, label %__here

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.79) #12
  br label %while.end

__here:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !193) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 212
  %14 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 ptrtoint (ptr blockaddress(@qe_uart_shutdown, %__here) to i32), ptr %task_state_change, align 4
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 2, ptr %15, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !242
  %call71 = tail call i32 @schedule_timeout(i32 noundef 2) #9
  br label %while.cond

while.end:                                        ; preds = %do.end, %if.end.i.while.end_crit_edge
  %wait_closing = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 11
  %17 = ptrtoint ptr %wait_closing to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wait_closing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool72.not = icmp eq i32 %18, 0
  br i1 %tobool72.not, label %while.end.if.end156_crit_edge, label %__here124

while.end.if.end156_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

__here124:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call i32 @llvm.read_register.i32(metadata !193) #9
  %and.i180 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i180 to ptr
  %task127 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task127 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task127, align 8
  %task_state_change128 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change128 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@qe_uart_shutdown, %__here124) to i32), ptr %task_state_change128, align 4
  %24 = load ptr, ptr %task127, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 2, ptr %24, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !243
  %26 = ptrtoint ptr %wait_closing to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wait_closing, align 4
  %call155 = tail call i32 @schedule_timeout(i32 noundef %27) #9
  br label %if.end156

if.end156:                                        ; preds = %__here124, %while.end.if.end156_crit_edge
  %us_private = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 4
  %28 = ptrtoint ptr %us_private to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %us_private, align 4
  tail call void @ucc_slow_disable(ptr noundef %29, i32 noundef 3) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void @arm_heavy_mb() #9
  %uccm = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 8
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %uccm) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  %31 = and i16 %30, -4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %uccm, i16 %31) #9, !srcloc !210
  %32 = ptrtoint ptr %us_private to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %us_private, align 4
  tail call void @ucc_slow_graceful_stop_tx(ptr noundef %33) #9
  tail call fastcc void @qe_uart_initbd(ptr noundef %port)
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %call165 = tail call ptr @free_irq(i32 noundef %35, ptr noundef %port) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_uart_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uccp1 = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %uccp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uccp1, align 4
  %upsmr2 = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 2
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %upsmr2) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  %uccup4 = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %uccup4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %uccup4, align 4
  %supsmr6 = getelementptr inbounds %struct.ucc_uart_pram, ptr %4, i32 0, i32 29
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %supsmr6) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %6 = and i16 %2, 12288
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %7 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_cflag, align 4
  %and13 = and i32 %8, 48
  %9 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and13, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 16, label %sw.bb21
    i32 32, label %sw.bb31
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = or i16 %6, 4096
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = or i16 %6, 8192
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %sw.bb21, %entry.sw.epilog_crit_edge
  %upsmr.0 = phi i16 [ 12288, %sw.default ], [ %11, %sw.bb31 ], [ %10, %sw.bb21 ], [ %6, %entry.sw.epilog_crit_edge ]
  %12 = trunc i32 %8 to i16
  %13 = shl i16 %12, 8
  %14 = and i16 %13, 16384
  %15 = or i16 %upsmr.0, %14
  %and59 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %sw.epilog.if.end86_crit_edge, label %if.then61

sw.epilog.if.end86_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then61:                                        ; preds = %sw.epilog
  %16 = or i16 %15, 16
  %and70 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then72, label %if.then61.if.end86_crit_edge

if.then61.if.end86_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then72:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %17 = and i16 %16, -16
  %18 = or i16 %17, 10
  br label %if.end86

if.end86:                                         ; preds = %if.then72, %if.then61.if.end86_crit_edge, %sw.epilog.if.end86_crit_edge
  %upsmr.2 = phi i16 [ %16, %if.then61.if.end86_crit_edge ], [ %18, %if.then72 ], [ %15, %sw.epilog.if.end86_crit_edge ]
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %19 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32770, ptr %read_status_mask, align 4
  %20 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %termios, align 4
  %and87 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %spec.store.select = select i1 %tobool88.not, i32 32770, i32 32794
  %22 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %23 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %termios, align 4
  %and94 = and i32 %24, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end86.if.end99_crit_edge, label %if.then96

if.end86.if.end99_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then96:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %or98 = or i32 %spec.store.select, 32
  %25 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or98, ptr %read_status_mask, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end86.if.end99_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %26 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ignore_status_mask, align 4
  %27 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %termios, align 4
  %and101 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  %spec.store.select220 = select i1 %tobool102.not, i32 0, i32 24
  %29 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.store.select220, ptr %ignore_status_mask, align 4
  %30 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %termios, align 4
  %and108 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end99.if.end120_crit_edge, label %if.then110

if.end99.if.end120_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then110:                                       ; preds = %if.end99
  %or112 = or i32 %spec.store.select220, 32
  %32 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or112, ptr %ignore_status_mask, align 4
  %33 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %termios, align 4
  %and114 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.then110.if.end120_crit_edge, label %if.then116

if.then110.if.end120_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then116:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  %or118 = or i32 %spec.store.select220, 34
  %35 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or118, ptr %ignore_status_mask, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.then110.if.end120_crit_edge, %if.end99.if.end120_crit_edge
  %36 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %c_cflag, align 4
  %and122 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %cmp = icmp eq i32 %and122, 0
  br i1 %cmp, label %if.then124, label %if.end120.if.end127_crit_edge

if.end120.if.end127_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %read_status_mask, align 4
  %and126 = and i32 %39, -32769
  store i32 %and126, ptr %read_status_mask, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end120.if.end127_crit_edge
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %40 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uartclk, align 4
  %div219 = lshr i32 %41, 4
  %call128 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef %div219) #9
  %call134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %42 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %43, i32 noundef %call128) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %upsmr2, i16 %upsmr.2) #9, !srcloc !210
  %rx_clock152 = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %rx_clock152 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_clock152, align 4
  %call153 = tail call i32 @qe_setbrg(i32 noundef %45, i32 noundef %call128, i32 noundef 16) #9
  %tx_clock155 = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %tx_clock155 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_clock155, align 4
  %call156 = tail call i32 @qe_setbrg(i32 noundef %47, i32 noundef %call128, i32 noundef 16) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call134) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @qe_uart_type(ptr nocapture noundef readnone %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.83
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_uart_release_port(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %us_private = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %us_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %us_private, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %bd_size = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 21
  %4 = ptrtoint ptr %bd_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_size, align 4
  %bd_virt = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 19
  %6 = ptrtoint ptr %bd_virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_virt, align 4
  %bd_dma_addr = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 20
  %8 = ptrtoint ptr %bd_dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #9
  tail call void @ucc_slow_free(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qe_uart_request_port(ptr noundef %port) #3 align 64 {
entry:
  %uccs = alloca ptr, align 4
  %bd_dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %us_info1 = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uccs) #9
  %0 = ptrtoint ptr %uccs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %uccs, align 4, !annotation !203
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bd_dma_addr) #9
  %1 = ptrtoint ptr %bd_dma_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bd_dma_addr, align 4
  %call = call i32 @ucc_slow_init(ptr noundef %us_info1, ptr noundef nonnull %uccs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ucc_num = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 6
  %4 = ptrtoint ptr %ucc_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ucc_num, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.84, i32 noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %uccs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uccs, align 4
  %us_private = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 4
  %8 = ptrtoint ptr %us_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %us_private, align 4
  %us_regs = getelementptr inbounds %struct.ucc_slow_private, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %us_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %us_regs, align 4
  %uccp = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 1
  %11 = ptrtoint ptr %uccp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %uccp, align 4
  %us_pram = getelementptr inbounds %struct.ucc_slow_private, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %us_pram to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %us_pram, align 4
  %uccup = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %uccup to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %uccup, align 4
  %rx_bd = getelementptr inbounds %struct.ucc_slow_private, ptr %7, i32 0, i32 14
  %15 = ptrtoint ptr %rx_bd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_bd, align 4
  %rx_bd_base = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 13
  %17 = ptrtoint ptr %rx_bd_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %rx_bd_base, align 4
  %tx_bd = getelementptr inbounds %struct.ucc_slow_private, ptr %7, i32 0, i32 13
  %18 = ptrtoint ptr %tx_bd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_bd, align 4
  %tx_bd_base = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 15
  %20 = ptrtoint ptr %tx_bd_base to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %tx_bd_base, align 4
  %rx_nrfifos = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 7
  %21 = ptrtoint ptr %rx_nrfifos to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rx_nrfifos, align 4
  %conv = zext i16 %22 to i32
  %rx_fifosize = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 8
  %23 = ptrtoint ptr %rx_fifosize to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rx_fifosize, align 2
  %conv2 = zext i16 %24 to i32
  %mul = mul nuw i32 %conv2, %conv
  %add = add nuw i32 %mul, 127
  %and = and i32 %add, -128
  %tx_nrfifos = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 9
  %25 = ptrtoint ptr %tx_nrfifos to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tx_nrfifos, align 4
  %conv3 = zext i16 %26 to i32
  %tx_fifosize = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 10
  %27 = ptrtoint ptr %tx_fifosize to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tx_fifosize, align 2
  %conv4 = zext i16 %28 to i32
  %mul5 = mul nuw i32 %conv4, %conv3
  %add6 = add nuw i32 %mul5, 127
  %and7 = and i32 %add6, -128
  %dev8 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %29 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev8, align 4
  %add9 = add i32 %and7, %and
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %30, i32 noundef %add9, ptr noundef nonnull %bd_dma_addr, i32 noundef 3264, i32 noundef 0) #9
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.87) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bd_virt18 = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 19
  %33 = ptrtoint ptr %bd_virt18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %bd_virt18, align 4
  %34 = ptrtoint ptr %bd_dma_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bd_dma_addr, align 4
  %bd_dma_addr19 = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 20
  %36 = ptrtoint ptr %bd_dma_addr19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %bd_dma_addr19, align 4
  %bd_size = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 21
  %37 = ptrtoint ptr %bd_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add9, ptr %bd_size, align 4
  %rx_buf = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 18
  %38 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %rx_buf, align 4
  %add.ptr22 = getelementptr i8, ptr %call.i, i32 %and
  %tx_buf = getelementptr inbounds %struct.uart_qe_port, ptr %port, i32 0, i32 17
  %39 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr22, ptr %tx_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end15, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end17 ], [ -12, %do.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bd_dma_addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uccs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_uart_config_port(ptr noundef %port, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 58, ptr %type, align 4
  %call = tail call i32 @qe_uart_request_port(ptr noundef %port)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qe_uart_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readonly %ser) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 58, label %entry.if.end_crit_edge16
  ]

entry.if.end_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge16
  %irq = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 3
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %5 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp5.not = icmp slt i32 %4, %5
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 7
  %6 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baud_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600, i32 %7)
  %cmp8 = icmp slt i32 %7, 9600
  %. = select i1 %cmp8, i32 -22, i32 0
  br label %return

return:                                           ; preds = %if.end7, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ %., %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qe_uart_tx_pump(ptr noundef %qe_port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %x_char = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 24
  %2 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  %tx_cur = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 16
  %4 = ptrtoint ptr %tx_cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_cur, align 4
  %buf = getelementptr inbounds %struct.qe_bd, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %buf, align 1
  %bd_dma_addr.i = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 20
  %8 = ptrtoint ptr %bd_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd_dma_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i = icmp ult i32 %7, %9
  br i1 %cmp.not.i, label %if.then.do.end.i_crit_edge, label %land.rhs.i, !prof !249

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.rhs.i:                                       ; preds = %if.then
  %bd_size.i = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 21
  %10 = ptrtoint ptr %bd_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bd_size.i, align 4
  %add.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp2.i = icmp ugt i32 %add.i, %7
  br i1 %cmp2.i, label %qe2cpu_addr.exit, label %land.rhs.i.do.end.i_crit_edge, !prof !250

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %conv.i = zext i32 %7 to i64
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef %conv.i) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/ucc_uart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #9, !srcloc !251
  unreachable

qe2cpu_addr.exit:                                 ; preds = %land.rhs.i
  %bd_virt.i = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 19
  %12 = ptrtoint ptr %bd_virt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_virt.i, align 4
  %sub.i = sub i32 %7, %9
  %add.ptr.i = getelementptr i8, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %3, ptr %add.ptr.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %length = getelementptr inbounds %struct.qe_bd, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %length, i16 1) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %16 = or i16 %15, -32768
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %16) #9, !srcloc !210
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  %18 = and i16 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool15.not = icmp eq i16 %18, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %qe2cpu_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tx_bd_base = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 15
  %19 = ptrtoint ptr %tx_bd_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_bd_base, align 4
  br label %if.end

if.else:                                          ; preds = %qe2cpu_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr17 = getelementptr %struct.qe_bd, ptr %5, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then16
  %bdp.0 = phi ptr [ %20, %if.then16 ], [ %incdec.ptr17, %if.else ]
  %21 = ptrtoint ptr %tx_cur to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %bdp.0, ptr %tx_cur, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 31, i32 5
  %22 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %tx, align 4
  %24 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %x_char, align 4
  br label %cleanup

if.end20:                                         ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp = icmp eq i32 %26, %28
  br i1 %cmp, label %if.end20.if.then24_crit_edge, label %lor.lhs.false

if.end20.if.then24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end20
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 19, i32 1
  %31 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stopped.i, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool3.not.i = icmp eq i8 %32, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then24_crit_edge

land.lhs.true.i.if.then24_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 35
  %33 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool4.not.i.not = icmp eq i32 %34, 0
  br i1 %tobool4.not.i.not, label %if.end25, label %uart_tx_stopped.exit.if.then24_crit_edge

uart_tx_stopped.exit.if.then24_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %uart_tx_stopped.exit.if.then24_crit_edge, %land.lhs.true.i.if.then24_crit_edge, %if.end20.if.then24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %uccp.i = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 1
  %35 = ptrtoint ptr %uccp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %uccp.i, align 4
  %uccm.i = getelementptr inbounds %struct.ucc_slow, ptr %36, i32 0, i32 8
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %uccm.i) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  %38 = and i16 %37, -3
  %39 = ptrtoint ptr %uccp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %uccp.i, align 4
  %uccm4.i = getelementptr inbounds %struct.ucc_slow, ptr %40, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %uccm4.i, i16 %38) #9, !srcloc !210
  br label %cleanup

if.end25:                                         ; preds = %uart_tx_stopped.exit
  %tx_cur26 = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 16
  %41 = ptrtoint ptr %tx_cur26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_cur26, align 4
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %tobool33.not175 = icmp sgt i16 %43, -1
  br i1 %tobool33.not175, label %land.rhs.lr.ph, label %if.end25.while.end89_crit_edge

if.end25.while.end89_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end89

land.rhs.lr.ph:                                   ; preds = %if.end25
  %bd_dma_addr.i156 = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 20
  %bd_size.i158 = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 21
  %bd_virt.i162 = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 19
  %tx_fifosize = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 10
  %tx52 = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 31, i32 5
  %tx_bd_base85 = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 15
  br label %land.rhs

land.rhs:                                         ; preds = %if.end88.land.rhs_crit_edge, %land.rhs.lr.ph
  %bdp.1176 = phi ptr [ %42, %land.rhs.lr.ph ], [ %bdp.2, %if.end88.land.rhs_crit_edge ]
  %44 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tail, align 4
  %46 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp36.not = icmp eq i32 %45, %47
  br i1 %cmp36.not, label %land.rhs.while.end89_crit_edge, label %while.body

land.rhs.while.end89_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end89

while.body:                                       ; preds = %land.rhs
  %buf38 = getelementptr inbounds %struct.qe_bd, ptr %bdp.1176, i32 0, i32 2
  %48 = ptrtoint ptr %buf38 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %buf38, align 1
  %50 = ptrtoint ptr %bd_dma_addr.i156 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bd_dma_addr.i156, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp.not.i157 = icmp ult i32 %49, %51
  br i1 %cmp.not.i157, label %while.body.do.end.i167_crit_edge, label %land.rhs.i161, !prof !249

while.body.do.end.i167_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i167

land.rhs.i161:                                    ; preds = %while.body
  %52 = ptrtoint ptr %bd_size.i158 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bd_size.i158, align 4
  %add.i159 = add i32 %53, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i159, i32 %49)
  %cmp2.i160 = icmp ugt i32 %add.i159, %49
  br i1 %cmp2.i160, label %qe2cpu_addr.exit168, label %land.rhs.i161.do.end.i167_crit_edge, !prof !250

land.rhs.i161.do.end.i167_crit_edge:              ; preds = %land.rhs.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i167

do.end.i167:                                      ; preds = %land.rhs.i161.do.end.i167_crit_edge, %while.body.do.end.i167_crit_edge
  %conv.i165 = zext i32 %49 to i64
  %call.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef %conv.i165) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/ucc_uart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #9, !srcloc !251
  unreachable

qe2cpu_addr.exit168:                              ; preds = %land.rhs.i161
  %54 = ptrtoint ptr %bd_virt.i162 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bd_virt.i162, align 4
  %sub.i163 = sub i32 %49, %51
  %add.ptr.i164 = getelementptr i8, ptr %55, i32 %sub.i163
  br label %while.cond40

while.cond40:                                     ; preds = %while.body44.while.cond40_crit_edge, %qe2cpu_addr.exit168
  %count.0 = phi i32 [ 0, %qe2cpu_addr.exit168 ], [ %inc54, %while.body44.while.cond40_crit_edge ]
  %p.0 = phi ptr [ %add.ptr.i164, %qe2cpu_addr.exit168 ], [ %incdec.ptr47, %while.body44.while.cond40_crit_edge ]
  %56 = ptrtoint ptr %tx_fifosize to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %tx_fifosize, align 2
  %conv41 = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0, i32 %conv41)
  %cmp42 = icmp ult i32 %count.0, %conv41
  br i1 %cmp42, label %while.body44, label %while.cond40.do.body61_crit_edge

while.cond40.do.body61_crit_edge:                 ; preds = %while.cond40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61

while.body44:                                     ; preds = %while.cond40
  %58 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xmit2, align 4
  %60 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %59, i32 %61
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx, align 1
  %incdec.ptr47 = getelementptr i8, ptr %p.0, i32 1
  %64 = ptrtoint ptr %p.0 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %p.0, align 1
  %65 = load i32, ptr %tail, align 4
  %add = add i32 %65, 1
  %and49 = and i32 %add, 4095
  store i32 %and49, ptr %tail, align 4
  %66 = ptrtoint ptr %tx52 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx52, align 4
  %inc53 = add i32 %67, 1
  store i32 %inc53, ptr %tx52, align 4
  %inc54 = add nuw nsw i32 %count.0, 1
  %68 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %head, align 4
  %70 = load i32, ptr %tail, align 4
  %cmp57 = icmp eq i32 %69, %70
  br i1 %cmp57, label %while.body44.do.body61_crit_edge, label %while.body44.while.cond40_crit_edge

while.body44.while.cond40_crit_edge:              ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond40

while.body44.do.body61_crit_edge:                 ; preds = %while.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61

do.body61:                                        ; preds = %while.body44.do.body61_crit_edge, %while.cond40.do.body61_crit_edge
  %count.1 = phi i32 [ %inc54, %while.body44.do.body61_crit_edge ], [ %count.0, %while.cond40.do.body61_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %conv64 = trunc i32 %count.1 to i16
  %length65 = getelementptr inbounds %struct.qe_bd, ptr %bdp.1176, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %length65, i16 %conv64) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void @arm_heavy_mb() #9
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %bdp.1176) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  %72 = or i16 %71, -32768
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %bdp.1176, i16 %72) #9, !srcloc !210
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %bdp.1176) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  %74 = and i16 %73, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool83.not = icmp eq i16 %74, 0
  br i1 %tobool83.not, label %if.else86, label %if.then84

if.then84:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %tx_bd_base85 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_bd_base85, align 4
  br label %if.end88

if.else86:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr87 = getelementptr %struct.qe_bd, ptr %bdp.1176, i32 1
  br label %if.end88

if.end88:                                         ; preds = %if.else86, %if.then84
  %bdp.2 = phi ptr [ %76, %if.then84 ], [ %incdec.ptr87, %if.else86 ]
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %bdp.2) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %tobool33.not = icmp sgt i16 %77, -1
  br i1 %tobool33.not, label %if.end88.land.rhs_crit_edge, label %if.end88.while.end89_crit_edge

if.end88.while.end89_crit_edge:                   ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end89

if.end88.land.rhs_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end89:                                      ; preds = %if.end88.while.end89_crit_edge, %land.rhs.while.end89_crit_edge, %if.end25.while.end89_crit_edge
  %bdp.1.lcssa = phi ptr [ %42, %if.end25.while.end89_crit_edge ], [ %bdp.2, %if.end88.while.end89_crit_edge ], [ %bdp.1176, %land.rhs.while.end89_crit_edge ]
  %78 = ptrtoint ptr %tx_cur26 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %bdp.1.lcssa, ptr %tx_cur26, align 4
  %79 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %head, align 4
  %81 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tail, align 4
  %sub = sub i32 %80, %82
  %and93 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %cmp94 = icmp eq i32 %and93, 0
  br i1 %cmp94, label %if.then96, label %while.end89.if.end97_crit_edge

while.end89.if.end97_crit_edge:                   ; preds = %while.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then96:                                        ; preds = %while.end89
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_write_wakeup(ptr noundef %qe_port) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %while.end89.if.end97_crit_edge
  %83 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %head, align 4
  %85 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp100 = icmp eq i32 %84, %86
  br i1 %cmp100, label %if.then102, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %uccp.i169 = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 1
  %87 = ptrtoint ptr %uccp.i169 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %uccp.i169, align 4
  %uccm.i170 = getelementptr inbounds %struct.ucc_slow, ptr %88, i32 0, i32 8
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %uccm.i170) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  %90 = and i16 %89, -3
  %91 = ptrtoint ptr %uccp.i169 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %uccp.i169, align 4
  %uccm4.i171 = getelementptr inbounds %struct.ucc_slow, ptr %92, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %uccm4.i171, i16 %90) #9, !srcloc !210
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %if.end97.cleanup_crit_edge, %if.then24, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then24 ], [ 0, %if.then102 ], [ 1, %if.end97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ucc_slow_stop_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ucc_slow_restart_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qe_uart_initbd(ptr noundef %qe_port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_virt1 = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 19
  %0 = ptrtoint ptr %bd_virt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_virt1, align 4
  %rx_bd_base = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 13
  %2 = ptrtoint ptr %rx_bd_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_bd_base, align 4
  %rx_cur = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 14
  %4 = ptrtoint ptr %rx_cur to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %rx_cur, align 4
  %rx_nrfifos = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 7
  %5 = ptrtoint ptr %rx_nrfifos to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rx_nrfifos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp158 = icmp ugt i16 %6, 1
  br i1 %cmp158, label %do.body.lr.ph, label %entry.do.body11_crit_edge

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

do.body.lr.ph:                                    ; preds = %entry
  %bd_size.i = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 21
  %bd_dma_addr.i = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 20
  %rx_fifosize = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %cpu2qe_addr.exit.do.body_crit_edge, %do.body.lr.ph
  %bdp.0161 = phi ptr [ %3, %do.body.lr.ph ], [ %incdec.ptr, %cpu2qe_addr.exit.do.body_crit_edge ]
  %bd_virt.0160 = phi ptr [ %1, %do.body.lr.ph ], [ %add.ptr, %cpu2qe_addr.exit.do.body_crit_edge ]
  %i.0159 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %cpu2qe_addr.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %bdp.0161, i16 -28672) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %bd_virt1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bd_virt1, align 4
  %cmp.not.i = icmp ugt ptr %8, %bd_virt.0160
  br i1 %cmp.not.i, label %do.body.do.end.i_crit_edge, label %land.lhs.true.i, !prof !249

do.body.do.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body
  %9 = ptrtoint ptr %bd_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bd_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %10
  %cmp3.i = icmp ugt ptr %add.ptr.i, %bd_virt.0160
  br i1 %cmp3.i, label %cpu2qe_addr.exit, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %do.body.do.end.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef %bd_virt.0160) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/ucc_uart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #9, !srcloc !264
  unreachable

cpu2qe_addr.exit:                                 ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %bd_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bd_dma_addr.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %bd_virt.0160 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.i = add i32 %sub.ptr.sub.i, %12
  %buf = getelementptr inbounds %struct.qe_bd, ptr %bdp.0161, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %buf, i32 %add.i) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %length = getelementptr inbounds %struct.qe_bd, ptr %bdp.0161, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %length, i16 0) #9, !srcloc !210
  %13 = ptrtoint ptr %rx_fifosize to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rx_fifosize, align 2
  %conv10 = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %bd_virt.0160, i32 %conv10
  %incdec.ptr = getelementptr %struct.qe_bd, ptr %bdp.0161, i32 1
  %inc = add nuw nsw i32 %i.0159, 1
  %15 = ptrtoint ptr %rx_nrfifos to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rx_nrfifos, align 4
  %conv = zext i16 %16 to i32
  %sub = add nsw i32 %conv, -1
  %cmp = icmp slt i32 %inc, %sub
  br i1 %cmp, label %cpu2qe_addr.exit.do.body_crit_edge, label %cpu2qe_addr.exit.do.body11_crit_edge

cpu2qe_addr.exit.do.body11_crit_edge:             ; preds = %cpu2qe_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

cpu2qe_addr.exit.do.body_crit_edge:               ; preds = %cpu2qe_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body11:                                        ; preds = %cpu2qe_addr.exit.do.body11_crit_edge, %entry.do.body11_crit_edge
  %bd_virt.0.lcssa = phi ptr [ %1, %entry.do.body11_crit_edge ], [ %add.ptr, %cpu2qe_addr.exit.do.body11_crit_edge ]
  %bdp.0.lcssa = phi ptr [ %3, %entry.do.body11_crit_edge ], [ %incdec.ptr, %cpu2qe_addr.exit.do.body11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %bdp.0.lcssa, i16 -20480) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %bd_virt1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd_virt1, align 4
  %cmp.not.i108 = icmp ugt ptr %18, %bd_virt.0.lcssa
  br i1 %cmp.not.i108, label %do.body11.do.end.i119_crit_edge, label %land.lhs.true.i112, !prof !249

do.body11.do.end.i119_crit_edge:                  ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i119

land.lhs.true.i112:                               ; preds = %do.body11
  %bd_size.i109 = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 21
  %19 = ptrtoint ptr %bd_size.i109 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bd_size.i109, align 4
  %add.ptr.i110 = getelementptr i8, ptr %18, i32 %20
  %cmp3.i111 = icmp ugt ptr %add.ptr.i110, %bd_virt.0.lcssa
  br i1 %cmp3.i111, label %cpu2qe_addr.exit120, label %land.lhs.true.i112.do.end.i119_crit_edge

land.lhs.true.i112.do.end.i119_crit_edge:         ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i119

do.end.i119:                                      ; preds = %land.lhs.true.i112.do.end.i119_crit_edge, %do.body11.do.end.i119_crit_edge
  %call.i118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef %bd_virt.0.lcssa) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/ucc_uart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #9, !srcloc !264
  unreachable

cpu2qe_addr.exit120:                              ; preds = %land.lhs.true.i112
  %bd_dma_addr.i113 = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 20
  %21 = ptrtoint ptr %bd_dma_addr.i113 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bd_dma_addr.i113, align 4
  %sub.ptr.lhs.cast.i114 = ptrtoint ptr %bd_virt.0.lcssa to i32
  %sub.ptr.rhs.cast.i115 = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i116 = sub i32 %sub.ptr.lhs.cast.i114, %sub.ptr.rhs.cast.i115
  %add.i117 = add i32 %sub.ptr.sub.i116, %22
  %buf19 = getelementptr inbounds %struct.qe_bd, ptr %bdp.0.lcssa, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %buf19, i32 %add.i117) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  tail call void @arm_heavy_mb() #9
  %length23 = getelementptr inbounds %struct.qe_bd, ptr %bdp.0.lcssa, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %length23, i16 0) #9, !srcloc !210
  %23 = ptrtoint ptr %bd_virt1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bd_virt1, align 4
  %25 = ptrtoint ptr %rx_nrfifos to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rx_nrfifos, align 4
  %conv26 = zext i16 %26 to i32
  %rx_fifosize27 = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 8
  %27 = ptrtoint ptr %rx_fifosize27 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rx_fifosize27, align 2
  %conv28 = zext i16 %28 to i32
  %mul = mul nuw i32 %conv28, %conv26
  %add = add nuw i32 %mul, 127
  %and = and i32 %add, -128
  %add.ptr29 = getelementptr i8, ptr %24, i32 %and
  %tx_bd_base = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 15
  %29 = ptrtoint ptr %tx_bd_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_bd_base, align 4
  %tx_cur = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 16
  %31 = ptrtoint ptr %tx_cur to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %tx_cur, align 4
  %tx_nrfifos = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 9
  %32 = ptrtoint ptr %tx_nrfifos to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tx_nrfifos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %33)
  %cmp34166 = icmp ugt i16 %33, 1
  br i1 %cmp34166, label %do.body37.lr.ph, label %cpu2qe_addr.exit120.do.body56_crit_edge

cpu2qe_addr.exit120.do.body56_crit_edge:          ; preds = %cpu2qe_addr.exit120
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

do.body37.lr.ph:                                  ; preds = %cpu2qe_addr.exit120
  %tx_fifosize = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 10
  br label %do.body37

do.body37:                                        ; preds = %cpu2qe_addr.exit134.do.body37_crit_edge, %do.body37.lr.ph
  %bdp.1169 = phi ptr [ %30, %do.body37.lr.ph ], [ %incdec.ptr52, %cpu2qe_addr.exit134.do.body37_crit_edge ]
  %bd_virt.1168 = phi ptr [ %add.ptr29, %do.body37.lr.ph ], [ %add.ptr51, %cpu2qe_addr.exit134.do.body37_crit_edge ]
  %i.1167 = phi i32 [ 0, %do.body37.lr.ph ], [ %inc54, %cpu2qe_addr.exit134.do.body37_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %bdp.1169, i16 4096) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %bd_virt1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bd_virt1, align 4
  %cmp.not.i122 = icmp ugt ptr %35, %bd_virt.1168
  br i1 %cmp.not.i122, label %do.body37.do.end.i133_crit_edge, label %land.lhs.true.i126, !prof !249

do.body37.do.end.i133_crit_edge:                  ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i133

land.lhs.true.i126:                               ; preds = %do.body37
  %36 = ptrtoint ptr %bd_size.i109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bd_size.i109, align 4
  %add.ptr.i124 = getelementptr i8, ptr %35, i32 %37
  %cmp3.i125 = icmp ugt ptr %add.ptr.i124, %bd_virt.1168
  br i1 %cmp3.i125, label %cpu2qe_addr.exit134, label %land.lhs.true.i126.do.end.i133_crit_edge

land.lhs.true.i126.do.end.i133_crit_edge:         ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i133

do.end.i133:                                      ; preds = %land.lhs.true.i126.do.end.i133_crit_edge, %do.body37.do.end.i133_crit_edge
  %call.i132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef %bd_virt.1168) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/ucc_uart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #9, !srcloc !264
  unreachable

cpu2qe_addr.exit134:                              ; preds = %land.lhs.true.i126
  %38 = ptrtoint ptr %bd_dma_addr.i113 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bd_dma_addr.i113, align 4
  %sub.ptr.lhs.cast.i128 = ptrtoint ptr %bd_virt.1168 to i32
  %sub.ptr.rhs.cast.i129 = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i130 = sub i32 %sub.ptr.lhs.cast.i128, %sub.ptr.rhs.cast.i129
  %add.i131 = add i32 %sub.ptr.sub.i130, %39
  %buf45 = getelementptr inbounds %struct.qe_bd, ptr %bdp.1169, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %buf45, i32 %add.i131) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void @arm_heavy_mb() #9
  %length49 = getelementptr inbounds %struct.qe_bd, ptr %bdp.1169, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %length49, i16 0) #9, !srcloc !210
  %40 = ptrtoint ptr %tx_fifosize to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tx_fifosize, align 2
  %conv50 = zext i16 %41 to i32
  %add.ptr51 = getelementptr i8, ptr %bd_virt.1168, i32 %conv50
  %incdec.ptr52 = getelementptr %struct.qe_bd, ptr %bdp.1169, i32 1
  %inc54 = add nuw nsw i32 %i.1167, 1
  %42 = ptrtoint ptr %tx_nrfifos to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tx_nrfifos, align 4
  %conv32 = zext i16 %43 to i32
  %sub33 = add nsw i32 %conv32, -1
  %cmp34 = icmp slt i32 %inc54, %sub33
  br i1 %cmp34, label %cpu2qe_addr.exit134.do.body37_crit_edge, label %cpu2qe_addr.exit134.do.body56_crit_edge

cpu2qe_addr.exit134.do.body56_crit_edge:          ; preds = %cpu2qe_addr.exit134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

cpu2qe_addr.exit134.do.body37_crit_edge:          ; preds = %cpu2qe_addr.exit134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

do.body56:                                        ; preds = %cpu2qe_addr.exit134.do.body56_crit_edge, %cpu2qe_addr.exit120.do.body56_crit_edge
  %bd_virt.1.lcssa = phi ptr [ %add.ptr29, %cpu2qe_addr.exit120.do.body56_crit_edge ], [ %add.ptr51, %cpu2qe_addr.exit134.do.body56_crit_edge ]
  %bdp.1.lcssa = phi ptr [ %30, %cpu2qe_addr.exit120.do.body56_crit_edge ], [ %incdec.ptr52, %cpu2qe_addr.exit134.do.body56_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %bdp.1.lcssa, i16 12288) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %bd_virt1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bd_virt1, align 4
  %cmp.not.i136 = icmp ugt ptr %45, %bd_virt.1.lcssa
  br i1 %cmp.not.i136, label %do.body56.do.end.i147_crit_edge, label %land.lhs.true.i140, !prof !249

do.body56.do.end.i147_crit_edge:                  ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i147

land.lhs.true.i140:                               ; preds = %do.body56
  %46 = ptrtoint ptr %bd_size.i109 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bd_size.i109, align 4
  %add.ptr.i138 = getelementptr i8, ptr %45, i32 %47
  %cmp3.i139 = icmp ugt ptr %add.ptr.i138, %bd_virt.1.lcssa
  br i1 %cmp3.i139, label %cpu2qe_addr.exit148, label %land.lhs.true.i140.do.end.i147_crit_edge

land.lhs.true.i140.do.end.i147_crit_edge:         ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i147

do.end.i147:                                      ; preds = %land.lhs.true.i140.do.end.i147_crit_edge, %do.body56.do.end.i147_crit_edge
  %call.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef %bd_virt.1.lcssa) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/ucc_uart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #9, !srcloc !264
  unreachable

cpu2qe_addr.exit148:                              ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %bd_dma_addr.i113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bd_dma_addr.i113, align 4
  %sub.ptr.lhs.cast.i142 = ptrtoint ptr %bd_virt.1.lcssa to i32
  %sub.ptr.rhs.cast.i143 = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i144 = sub i32 %sub.ptr.lhs.cast.i142, %sub.ptr.rhs.cast.i143
  %add.i145 = add i32 %sub.ptr.sub.i144, %49
  %buf64 = getelementptr inbounds %struct.qe_bd, ptr %bdp.1.lcssa, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %buf64, i32 %add.i145) #9, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  tail call void @arm_heavy_mb() #9
  %length68 = getelementptr inbounds %struct.qe_bd, ptr %bdp.1.lcssa, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %length68, i16 0) #9, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qe_uart_int(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uccp1 = getelementptr inbounds %struct.uart_qe_port, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %uccp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uccp1, align 4
  %ucce = getelementptr inbounds %struct.ucc_slow, ptr %1, i32 0, i32 6
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ucce) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ucce, i16 %2) #9, !srcloc !210
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %state1.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 30
  %3 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state1.i, align 4
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 17
  %5 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %6(ptr noundef %data) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 48
  %7 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not.i = icmp eq i8 %8, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 32
  %9 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %12 to i32
  %line.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 41
  %13 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv7.i)
  %cmp.i = icmp eq i32 %14, %conv7.i
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 46
  %15 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not.i = icmp eq i32 %16, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %17, 500
  %18 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %sysrq.i, align 4
  br label %if.end

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %data, i32 0, i32 33
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end_crit_edge, label %if.then17.i

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 1
  %22 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tty.i, align 4
  tail call void @do_SAK(ptr noundef %23) #9
  br label %if.end

if.end:                                           ; preds = %if.then17.i, %if.end15.i.if.end_crit_edge, %if.then11.i, %entry.if.end_crit_edge
  %and5 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @qe_uart_int_rx(ptr noundef %data)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %and10 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end14_crit_edge, label %if.then12

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call fastcc i32 @qe_uart_tx_pump(ptr noundef %data)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool16.not = icmp ne i16 %2, 0
  %cond = zext i1 %tobool16.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ucc_slow_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ucc_slow_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucc_slow_get_qe_cr_subblock(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qe_issue_cmd(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qe_uart_int_rx(ptr noundef %qe_port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %rx_cur = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 14
  %2 = ptrtoint ptr %rx_cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_cur, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool.not214 = icmp sgt i16 %4, -1
  br i1 %tobool.not214, label %if.end.lr.ph, label %entry.while.end58_crit_edge

entry.while.end58_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end58

if.end.lr.ph:                                     ; preds = %entry
  %bd_dma_addr.i = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 20
  %bd_size.i = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 21
  %bd_virt.i = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 19
  %rx = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 31, i32 4
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 46
  %brk = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 31, i32 9
  %parity = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 31, i32 8
  %frame = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 31, i32 6
  %overrun = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 31, i32 7
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 28
  %tail.i165 = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8
  %rx_bd_base = getelementptr inbounds %struct.uart_qe_port, ptr %qe_port, i32 0, i32 13
  br label %if.end

if.end:                                           ; preds = %if.end57.if.end_crit_edge, %if.end.lr.ph
  %5 = phi i16 [ %4, %if.end.lr.ph ], [ %51, %if.end57.if.end_crit_edge ]
  %bdp.0215 = phi ptr [ %3, %if.end.lr.ph ], [ %bdp.1, %if.end57.if.end_crit_edge ]
  %length = getelementptr inbounds %struct.qe_bd, ptr %bdp.0215, i32 0, i32 1
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %length) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  %conv7 = zext i16 %6 to i32
  %call8 = tail call i32 @tty_buffer_request_room(ptr noundef %1, i32 noundef %conv7) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %conv7)
  %cmp = icmp slt i32 %call8, %conv7
  br i1 %cmp, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qe_uart_int_rx.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qe_uart_int_rx, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !204

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %qe_port, i32 0, i32 45
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qe_uart_int_rx.__UNIQUE_ID_ddebug234, ptr noundef %8, ptr noundef nonnull @.str.78) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %buf = getelementptr inbounds %struct.qe_bd, ptr %bdp.0215, i32 0, i32 2
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %buf, align 1
  %11 = ptrtoint ptr %bd_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bd_dma_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not.i = icmp ult i32 %10, %12
  br i1 %cmp.not.i, label %if.end18.do.end.i_crit_edge, label %land.rhs.i, !prof !249

if.end18.do.end.i_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.rhs.i:                                       ; preds = %if.end18
  %13 = ptrtoint ptr %bd_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bd_size.i, align 4
  %add.i = add i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %10)
  %cmp2.i = icmp ugt i32 %add.i, %10
  br i1 %cmp2.i, label %qe2cpu_addr.exit, label %land.rhs.i.do.end.i_crit_edge, !prof !250

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %if.end18.do.end.i_crit_edge
  %conv.i = zext i32 %10 to i64
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i64 noundef %conv.i) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/ucc_uart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #9, !srcloc !251
  unreachable

qe2cpu_addr.exit:                                 ; preds = %land.rhs.i
  %15 = ptrtoint ptr %bd_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_virt.i, align 4
  %sub.i = sub i32 %10, %12
  %add.ptr.i = getelementptr i8, ptr %16, i32 %sub.i
  br label %while.cond20.outer

while.cond20.outer:                               ; preds = %while.cond20.outer.backedge, %qe2cpu_addr.exit
  %status.0.ph = phi i16 [ %5, %qe2cpu_addr.exit ], [ %status.0.ph.be, %while.cond20.outer.backedge ]
  %cp.0.ph = phi ptr [ %add.ptr.i, %qe2cpu_addr.exit ], [ %incdec.ptr, %while.cond20.outer.backedge ]
  %i.0.ph = phi i32 [ %conv7, %qe2cpu_addr.exit ], [ %i.0.ph.be, %while.cond20.outer.backedge ]
  %conv25 = zext i16 %status.0.ph to i32
  %and26 = and i32 %conv25, 58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br label %while.cond20

while.cond20:                                     ; preds = %uart_handle_sysrq_char.exit.while.cond20_crit_edge, %while.cond20.outer
  %cp.0 = phi ptr [ %incdec.ptr, %uart_handle_sysrq_char.exit.while.cond20_crit_edge ], [ %cp.0.ph, %while.cond20.outer ]
  %i.0 = phi i32 [ %dec, %uart_handle_sysrq_char.exit.while.cond20_crit_edge ], [ %i.0.ph, %while.cond20.outer ]
  %dec = add nsw i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp21.not = icmp eq i32 %i.0, 0
  br i1 %cmp21.not, label %do.body37, label %while.body23

while.body23:                                     ; preds = %while.cond20
  %incdec.ptr = getelementptr i8, ptr %cp.0, i32 1
  %17 = ptrtoint ptr %cp.0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cp.0, align 1
  %19 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool24.not = icmp ne i32 %dec, 0
  %brmerge = select i1 %tobool24.not, i1 true, i1 %tobool27.not
  br i1 %brmerge, label %if.end29, label %handle_error

if.end29:                                         ; preds = %while.body23
  %conv30 = zext i8 %18 to i32
  %21 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end29.error_return.thread_crit_edge, label %if.end.i

if.end29.error_return.thread_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_return.thread

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %if.end.i.return.sink.split.i_crit_edge, label %land.lhs.true.i

if.end.i.return.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i158 = sub i32 %23, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i158)
  %cmp.i = icmp slt i32 %sub.i158, 0
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.return.sink.split.i_crit_edge

land.lhs.true.i.return.sink.split.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  %call.i159 = tail call i32 @sysrq_mask() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool4.not.i = icmp eq i32 %call.i159, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @handle_sysrq(i32 noundef %conv30) #9
  br label %return.sink.split.i

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %qe_port, i32 noundef %conv30) #9
  br i1 %call8.i, label %if.end7.i.uart_handle_sysrq_char.exit_crit_edge, label %if.end7.i.return.sink.split.i_crit_edge

if.end7.i.return.sink.split.i_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end7.i.uart_handle_sysrq_char.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit

return.sink.split.i:                              ; preds = %if.end7.i.return.sink.split.i_crit_edge, %if.then5.i, %land.lhs.true.i.return.sink.split.i_crit_edge, %if.end.i.return.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ 1, %if.then5.i ], [ 0, %if.end7.i.return.sink.split.i_crit_edge ], [ 0, %land.lhs.true.i.return.sink.split.i_crit_edge ], [ 0, %if.end.i.return.sink.split.i_crit_edge ]
  %24 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sysrq.i, align 4
  br label %uart_handle_sysrq_char.exit

uart_handle_sysrq_char.exit:                      ; preds = %return.sink.split.i, %if.end7.i.uart_handle_sysrq_char.exit_crit_edge
  %retval.0.i160 = phi i32 [ 1, %if.end7.i.uart_handle_sysrq_char.exit_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i ]
  %tobool32.not = icmp eq i32 %retval.0.i160, 0
  br i1 %tobool32.not, label %uart_handle_sysrq_char.exit.error_return.thread_crit_edge, label %uart_handle_sysrq_char.exit.while.cond20_crit_edge

uart_handle_sysrq_char.exit.while.cond20_crit_edge: ; preds = %uart_handle_sysrq_char.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond20

uart_handle_sysrq_char.exit.error_return.thread_crit_edge: ; preds = %uart_handle_sysrq_char.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_return.thread

error_return.thread:                              ; preds = %uart_handle_sysrq_char.exit.error_return.thread_crit_edge, %if.end29.error_return.thread_crit_edge
  %25 = ptrtoint ptr %tail.i165 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i165, align 4
  %flags.i191 = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %flags.i191 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i191, align 4
  %and.i192 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i192)
  %tobool.not.i161193 = icmp eq i32 %and.i192, 0
  br label %land.lhs.true.i163

error_return:                                     ; preds = %if.end12.i183, %if.end.i181, %if.end107.error_return_crit_edge
  %29 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %sysrq.i, align 4
  %30 = ptrtoint ptr %tail.i165 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i165, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i161 = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flg.1)
  %cmp.i162 = icmp eq i8 %flg.1, 0
  %34 = or i1 %cmp.i162, %tobool.not.i161
  br i1 %34, label %error_return.land.lhs.true.i163_crit_edge, label %error_return.if.end12.i_crit_edge

error_return.if.end12.i_crit_edge:                ; preds = %error_return
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

error_return.land.lhs.true.i163_crit_edge:        ; preds = %error_return
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i163

land.lhs.true.i163:                               ; preds = %error_return.land.lhs.true.i163_crit_edge, %error_return.thread
  %dec220 = phi i32 [ %dec, %error_return.thread ], [ 0, %error_return.land.lhs.true.i163_crit_edge ]
  %tobool.not.i161200 = phi i1 [ %tobool.not.i161193, %error_return.thread ], [ %tobool.not.i161, %error_return.land.lhs.true.i163_crit_edge ]
  %35 = phi ptr [ %26, %error_return.thread ], [ %31, %error_return.land.lhs.true.i163_crit_edge ]
  %status.1199 = phi i16 [ %status.0.ph, %error_return.thread ], [ %conv90, %error_return.land.lhs.true.i163_crit_edge ]
  %flg.0196 = phi i8 [ 0, %error_return.thread ], [ %flg.1, %error_return.land.lhs.true.i163_crit_edge ]
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp3.i = icmp slt i32 %37, %39
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i163.if.end12.i_crit_edge

land.lhs.true.i163.if.end12.i_crit_edge:          ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i163
  br i1 %tobool.not.i161200, label %if.then8.i, label %if.then.i.if.end.i164_crit_edge

if.then.i.if.end.i164_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i164

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %37
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %39
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %flg.0196, ptr %add.ptr.i.i, align 1
  br label %if.end.i164

if.end.i164:                                      ; preds = %if.then8.i, %if.then.i.if.end.i164_crit_edge
  %41 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %42
  %43 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %18, ptr %add.ptr.i1.i, align 1
  br label %while.cond20.outer.backedge

while.cond20.outer.backedge:                      ; preds = %if.end12.i, %if.end.i164
  %status.0.ph.be = phi i16 [ %status.1199, %if.end.i164 ], [ %status.1198, %if.end12.i ]
  %i.0.ph.be = phi i32 [ %dec220, %if.end.i164 ], [ %dec219, %if.end12.i ]
  br label %while.cond20.outer

if.end12.i:                                       ; preds = %land.lhs.true.i163.if.end12.i_crit_edge, %error_return.if.end12.i_crit_edge
  %dec219 = phi i32 [ %dec220, %land.lhs.true.i163.if.end12.i_crit_edge ], [ 0, %error_return.if.end12.i_crit_edge ]
  %status.1198 = phi i16 [ %status.1199, %land.lhs.true.i163.if.end12.i_crit_edge ], [ %conv90, %error_return.if.end12.i_crit_edge ]
  %flg.0195 = phi i8 [ %flg.0196, %land.lhs.true.i163.if.end12.i_crit_edge ], [ %flg.1, %error_return.if.end12.i_crit_edge ]
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext %18, i8 noundef zeroext %flg.0195) #9
  br label %while.cond20.outer.backedge

do.body37:                                        ; preds = %while.cond20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void @arm_heavy_mb() #9
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %bdp.0215) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  %45 = and i16 %44, 32453
  %46 = or i16 %45, -32768
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %bdp.0215, i16 %46) #9, !srcloc !210
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %bdp.0215) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  %48 = and i16 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool54.not = icmp eq i16 %48, 0
  br i1 %tobool54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %rx_bd_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_bd_base, align 4
  br label %if.end57

if.else:                                          ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr56 = getelementptr %struct.qe_bd, ptr %bdp.0215, i32 1
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then55
  %bdp.1 = phi ptr [ %50, %if.then55 ], [ %incdec.ptr56, %if.else ]
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %bdp.1) #9, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %tobool.not = icmp sgt i16 %51, -1
  br i1 %tobool.not, label %if.end57.if.end_crit_edge, label %if.end57.while.end58_crit_edge

if.end57.while.end58_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end58

if.end57.if.end_crit_edge:                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.end58:                                      ; preds = %if.end57.while.end58_crit_edge, %entry.while.end58_crit_edge
  %bdp.0.lcssa = phi ptr [ %3, %entry.while.end58_crit_edge ], [ %bdp.1, %if.end57.while.end58_crit_edge ]
  %52 = ptrtoint ptr %rx_cur to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %bdp.0.lcssa, ptr %rx_cur, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %1) #9
  br label %cleanup

handle_error:                                     ; preds = %while.body23
  %and61 = and i32 %conv25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %handle_error.if.end66_crit_edge, label %if.then63

handle_error.if.end66_crit_edge:                  ; preds = %handle_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then63:                                        ; preds = %handle_error
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %brk, align 4
  %inc65 = add i32 %54, 1
  store i32 %inc65, ptr %brk, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %handle_error.if.end66_crit_edge
  %and68 = and i32 %conv25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end66.if.end73_crit_edge, label %if.then70

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %parity, align 4
  %inc72 = add i32 %56, 1
  store i32 %inc72, ptr %parity, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end66.if.end73_crit_edge
  %and75 = and i32 %conv25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end73.if.end80_crit_edge, label %if.then77

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %frame, align 4
  %inc79 = add i32 %58, 1
  store i32 %inc79, ptr %frame, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end73.if.end80_crit_edge
  %and82 = and i32 %conv25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end80.if.end87_crit_edge, label %if.then84

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %overrun, align 4
  %inc86 = add i32 %60, 1
  store i32 %inc86, ptr %overrun, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end80.if.end87_crit_edge
  %61 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %read_status_mask, align 4
  %63 = trunc i32 %62 to i16
  %conv90 = and i16 %status.0.ph, %63
  %conv91 = zext i16 %conv90 to i32
  %and92 = and i32 %conv91, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.else95, label %if.end87.if.end107_crit_edge

if.end87.if.end107_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.else95:                                        ; preds = %if.end87
  %and97 = and i32 %conv91, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else100, label %if.else95.if.end107_crit_edge

if.else95.if.end107_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.else100:                                       ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #11
  %64 = trunc i16 %conv90 to i8
  %65 = lshr i8 %64, 3
  %66 = and i8 %65, 2
  br label %if.end107

if.end107:                                        ; preds = %if.else100, %if.else95.if.end107_crit_edge, %if.end87.if.end107_crit_edge
  %flg.1 = phi i8 [ 1, %if.end87.if.end107_crit_edge ], [ 3, %if.else95.if.end107_crit_edge ], [ %66, %if.else100 ]
  %and109 = and i32 %conv91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end107.error_return_crit_edge, label %if.then111

if.end107.error_return_crit_edge:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_return

if.then111:                                       ; preds = %if.end107
  %67 = ptrtoint ptr %tail.i165 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tail.i165, align 4
  %flags.i166 = getelementptr inbounds %struct.tty_buffer, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %flags.i166 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i166, align 4
  %and.i167 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not.i168 = icmp eq i32 %and.i167, 0
  br i1 %tobool.not.i168, label %land.lhs.true.i172, label %if.then111.if.end12.i183_crit_edge

if.then111.if.end12.i183_crit_edge:               ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i183

land.lhs.true.i172:                               ; preds = %if.then111
  %used.i169 = getelementptr inbounds %struct.tty_buffer, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %used.i169 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used.i169, align 4
  %size.i170 = getelementptr inbounds %struct.tty_buffer, ptr %68, i32 0, i32 2
  %73 = ptrtoint ptr %size.i170 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i170, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp3.i171 = icmp slt i32 %72, %74
  br i1 %cmp3.i171, label %if.end.i181, label %land.lhs.true.i172.if.end12.i183_crit_edge

land.lhs.true.i172.if.end12.i183_crit_edge:       ; preds = %land.lhs.true.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i183

if.end.i181:                                      ; preds = %land.lhs.true.i172
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i174 = getelementptr inbounds %struct.tty_buffer, ptr %68, i32 0, i32 6
  %add.ptr.i.i.i175 = getelementptr i8, ptr %data.i.i.i174, i32 %72
  %add.ptr.i.i176 = getelementptr i8, ptr %add.ptr.i.i.i175, i32 %74
  %75 = ptrtoint ptr %add.ptr.i.i176 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %add.ptr.i.i176, align 1
  %76 = ptrtoint ptr %used.i169 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %used.i169, align 4
  %inc.i178 = add i32 %77, 1
  store i32 %inc.i178, ptr %used.i169, align 4
  %add.ptr.i1.i180 = getelementptr i8, ptr %data.i.i.i174, i32 %77
  %78 = ptrtoint ptr %add.ptr.i1.i180 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %add.ptr.i1.i180, align 1
  br label %error_return

if.end12.i183:                                    ; preds = %land.lhs.true.i172.if.end12.i183_crit_edge, %if.then111.if.end12.i183_crit_edge
  %call13.i182 = tail call i32 @__tty_insert_flip_char(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %error_return

cleanup:                                          ; preds = %while.end58, %if.then16, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ucc_slow_graceful_stop_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qe_setbrg(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ucc_slow_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucc_slow_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !133, !134, !135, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !154, !156, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !178, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192}
!llvm.named.register.sp = !{!193}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1535, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ucc_uart_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ucc_uart_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_ucc_uart__238_1542_ucc_uart_init6, !7, !"__initcall__kmod_ucc_uart__238_1542_ucc_uart_init6", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1542, i32 1}
!8 = !{ptr @__exitcall_ucc_uart_exit, !9, !"__exitcall_ucc_uart_exit", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1543, i32 1}
!10 = !{ptr @__UNIQUE_ID_description239, !11, !"__UNIQUE_ID_description239", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1545, i32 1}
!12 = !{ptr @__UNIQUE_ID_author240, !13, !"__UNIQUE_ID_author240", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1546, i32 1}
!14 = !{ptr @__UNIQUE_ID_file241, !15, !"__UNIQUE_ID_file241", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1547, i32 1}
!16 = !{ptr @__UNIQUE_ID_license242, !15, !"__UNIQUE_ID_license242", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias243, !18, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1548, i32 1}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1501, i32 11}
!21 = !{ptr @ucc_uart_of_driver, !22, !"ucc_uart_of_driver", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1499, i32 31}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1270, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ucc_uart_probe._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @ucc_uart_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1277, i32 3}
!32 = !{ptr @ucc_uart_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ucc_uart_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1281, i32 3}
!36 = !{ptr @ucc_uart_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ucc_uart_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1289, i32 31}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1290, i32 32}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1291, i32 4}
!44 = !{ptr @ucc_uart_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ucc_uart_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1298, i32 3}
!48 = !{ptr @ucc_uart_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ucc_uart_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1311, i32 30}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1313, i32 3}
!54 = !{ptr @ucc_uart_probe._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ucc_uart_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1321, i32 3}
!58 = !{ptr @ucc_uart_probe._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ucc_uart_probe._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1330, i32 30}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1332, i32 3}
!64 = !{ptr @ucc_uart_probe._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ucc_uart_probe._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1340, i32 3}
!68 = !{ptr @ucc_uart_probe._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ucc_uart_probe._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1346, i32 31}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1347, i32 3}
!74 = !{ptr @ucc_uart_probe._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ucc_uart_probe._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1353, i32 3}
!78 = !{ptr @ucc_uart_probe._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ucc_uart_probe._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1361, i32 3}
!82 = !{ptr @ucc_uart_probe._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ucc_uart_probe._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1371, i32 43}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1373, i32 35}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1375, i32 4}
!90 = !{ptr @ucc_uart_probe._entry.48, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ucc_uart_probe._entry_ptr.50, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1381, i32 31}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1382, i32 3}
!96 = !{ptr @ucc_uart_probe._entry.52, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ucc_uart_probe._entry_ptr.54, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1392, i32 4}
!100 = !{ptr @ucc_uart_probe._entry.55, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ucc_uart_probe._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @ucc_uart_probe.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1419, i32 2}
!104 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1451, i32 3}
!107 = !{ptr @ucc_uart_probe._entry.59, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ucc_uart_probe._entry_ptr.61, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1458, i32 2}
!111 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ucc_uart_probe._entry.62, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @ucc_uart_probe._entry_ptr.65, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1462, i32 2}
!116 = !{ptr @ucc_uart_probe.__UNIQUE_ID_ddebug237, !115, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!117 = !{ptr @qe_uart_pops, !118, !"qe_uart_pops", i1 false, i1 false}
!118 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1080, i32 30}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/serial/ucc_uart.c", i32 244, i32 2}
!121 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @qe2cpu_addr._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @qe2cpu_addr._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/tty/serial/ucc_uart.c", i32 781, i32 3}
!126 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @qe_uart_startup._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @qe_uart_startup._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/tty/serial/ucc_uart.c", i32 789, i32 57}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/tty/serial/ucc_uart.c", i32 792, i32 3}
!133 = !{ptr @qe_uart_startup._entry.72, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @qe_uart_startup._entry_ptr.74, !132, !"_entry_ptr", i1 false, i1 false}
!135 = distinct !{null, !136, !"soft_uart", i1 false, i1 false}
!136 = !{!"../drivers/tty/serial/ucc_uart.c", i32 51, i32 12}
!137 = distinct !{null, !138, !"firmware_loaded", i1 false, i1 false}
!138 = !{!"../drivers/tty/serial/ucc_uart.c", i32 55, i32 12}
!139 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/tty/serial/ucc_uart.c", i32 225, i32 2}
!141 = !{ptr @.str.76, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @cpu2qe_addr._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @cpu2qe_addr._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/tty/serial/ucc_uart.c", i32 487, i32 4}
!146 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @qe_uart_int_rx.__UNIQUE_ID_ddebug234, !145, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/tty/serial/ucc_uart.c", i32 818, i32 4}
!150 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @qe_uart_shutdown._entry, !149, !"_entry", i1 false, i1 false}
!153 = !{ptr @qe_uart_shutdown._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!154 = distinct !{null, !155, !"__already_done", i1 false, i1 false}
!155 = !{!"../drivers/tty/serial/ucc_uart.c", i32 821, i32 3}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../drivers/tty/serial/ucc_uart.c", i32 827, i32 3}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/tty/serial/ucc_uart.c", i32 974, i32 9}
!160 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/tty/serial/ucc_uart.c", i32 993, i32 3}
!162 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @qe_uart_request_port._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @qe_uart_request_port._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1014, i32 3}
!167 = !{ptr @qe_uart_request_port._entry.86, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @qe_uart_request_port._entry_ptr.88, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1478, i32 2}
!171 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ucc_uart_remove._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @ucc_uart_remove._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @ucc_uart_match, !175, !"ucc_uart_match", i1 false, i1 false}
!175 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1487, i32 34}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/tty/serial/ucc_uart.c", i32 206, i32 20}
!178 = !{ptr @ucc_uart_driver, !179, !"ucc_uart_driver", i1 false, i1 false}
!179 = !{!"../drivers/tty/serial/ucc_uart.c", i32 203, i32 27}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1512, i32 2}
!182 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @ucc_uart_init._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @ucc_uart_init._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1519, i32 3}
!187 = !{ptr @ucc_uart_init._entry.94, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @ucc_uart_init._entry_ptr.96, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/tty/serial/ucc_uart.c", i32 1525, i32 3}
!191 = !{ptr @ucc_uart_init._entry.97, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @ucc_uart_init._entry_ptr.99, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{!"sp"}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{!"auto-init"}
!204 = !{i64 2148993704, i64 2148993709, i64 2148993722, i64 2148993766, i64 2148993800, i64 2148993821}
!205 = !{i64 4690189}
!206 = !{i64 2154695998}
!207 = !{i64 2154696297}
!208 = !{i64 2154698362}
!209 = !{i64 2154698603}
!210 = !{i64 4689989}
!211 = !{i64 2154704233}
!212 = !{i64 2154705103}
!213 = !{i64 2154705344}
!214 = !{i64 2154707406}
!215 = !{i64 2154707647}
!216 = !{i64 2152231757}
!217 = !{i64 4690412}
!218 = !{i64 2154718863}
!219 = !{i64 2154719179}
!220 = !{i64 2154719475}
!221 = !{i64 2154719768}
!222 = !{i64 2154720061}
!223 = !{i64 2154720354}
!224 = !{i64 2154720647}
!225 = !{i64 2154720943}
!226 = !{i64 2154721239}
!227 = !{i64 2154721532}
!228 = !{i64 2154721834}
!229 = !{i64 2154722136}
!230 = !{i64 2154725819}
!231 = !{i64 4691027}
!232 = !{i64 2154726055}
!233 = !{i64 4690609}
!234 = !{i64 2154727076}
!235 = !{i64 2154727312}
!236 = !{i64 2154727604}
!237 = !{i64 2154727900}
!238 = !{i64 2154728201}
!239 = !{i64 2154728498}
!240 = !{i64 2154739109}
!241 = !{i64 2154739350}
!242 = !{i64 2154746830}
!243 = !{i64 2154751564}
!244 = !{i64 2154752398}
!245 = !{i64 2154752630}
!246 = !{i64 2154754128}
!247 = !{i64 2154754422}
!248 = !{i64 2154755378}
!249 = !{!"branch_weights", i32 1, i32 2000}
!250 = !{!"branch_weights", i32 2000, i32 1}
!251 = !{i64 2154693267, i64 2154693761, i64 2154693304, i64 2154693360, i64 2154693394, i64 2154693418, i64 2154693459, i64 2154693480, i64 2154693508, i64 2154693542}
!252 = !{i64 2154698913}
!253 = !{i64 2154699792}
!254 = !{i64 2154700025}
!255 = !{i64 2154700341}
!256 = !{i8 0, i8 2}
!257 = !{i64 2154700681}
!258 = !{i64 2154701050}
!259 = !{i64 2154701933}
!260 = !{i64 2154702166}
!261 = !{i64 2154702482}
!262 = !{i64 2154714422}
!263 = !{i64 2154714757}
!264 = !{i64 2154690073, i64 2154690567, i64 2154690110, i64 2154690166, i64 2154690200, i64 2154690224, i64 2154690265, i64 2154690286, i64 2154690314, i64 2154690348}
!265 = !{i64 2154715077}
!266 = !{i64 2154715425}
!267 = !{i64 2154715771}
!268 = !{i64 2154716091}
!269 = !{i64 2154716879}
!270 = !{i64 2154717203}
!271 = !{i64 2154717523}
!272 = !{i64 2154717851}
!273 = !{i64 2154718186}
!274 = !{i64 2154718506}
!275 = !{i64 2154713830}
!276 = !{i64 2154714068}
!277 = !{i64 2154709136}
!278 = !{i64 2154709435}
!279 = !{i64 2154712842}
!280 = !{i64 2154713077}
!281 = !{i64 2154713453}
