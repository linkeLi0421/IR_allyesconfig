; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/digi_acceleport.c_pt.bc'
source_filename = "../drivers/usb/serial/digi_acceleport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_serial_driver = type { ptr, ptr, %struct.list_head, %struct.device_driver, ptr, %struct.usb_dynids, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.digi_serial = type { %struct.spinlock, ptr, i32, i32 }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.digi_port = type { %struct.spinlock, i32, i32, [8 x i8], i32, i32, i32, %struct.wait_queue_head, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
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
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_digi_acceleport__264_1528_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @digi_acceleport_2_device, ptr @digi_acceleport_4_device, ptr null], [20 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author265 = internal constant [99 x i8] c"digi_acceleport.author=Peter Berger <pberger@brimson.com>, Al Borchers <borchers@steinerpoint.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [80 x i8] c"digi_acceleport.description=Digi AccelePort USB-2/USB-4 Serial Converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file267 = internal constant [56 x i8] c"digi_acceleport.file=drivers/usb/serial/digi_acceleport\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [28 x i8] c"digi_acceleport.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"digi_acceleport\00", [16 x i8] zeroinitializer }, align 32
@id_table_combined = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1477, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1477, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@digi_acceleport_2_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table_2, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 3, i8 4, i8 4, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @digi_startup, ptr null, ptr @digi_disconnect, ptr @digi_release, ptr @digi_port_probe, ptr @digi_port_remove, ptr null, ptr null, ptr null, ptr @digi_open, ptr @digi_close, ptr @digi_write, ptr @digi_write_room, ptr null, ptr null, ptr null, ptr @digi_set_termios, ptr @digi_break_ctl, ptr @digi_chars_in_buffer, ptr null, ptr null, ptr @digi_rx_throttle, ptr @digi_rx_unthrottle, ptr @digi_tiocmget, ptr @digi_tiocmset, ptr null, ptr null, ptr @digi_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr @digi_read_bulk_callback, ptr @digi_write_bulk_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@digi_acceleport_4_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.73, ptr @id_table_4, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.74, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 4, i8 5, i8 5, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @digi_startup, ptr null, ptr @digi_disconnect, ptr @digi_release, ptr @digi_port_probe, ptr @digi_port_remove, ptr null, ptr null, ptr null, ptr @digi_open, ptr @digi_close, ptr @digi_write, ptr @digi_write_room, ptr null, ptr null, ptr null, ptr @digi_set_termios, ptr @digi_break_ctl, ptr @digi_chars_in_buffer, ptr null, ptr null, ptr @digi_rx_throttle, ptr @digi_rx_unthrottle, ptr @digi_tiocmget, ptr @digi_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @digi_read_bulk_callback, ptr @digi_write_bulk_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digi 2 port USB adapter\00", [40 x i8] zeroinitializer }, align 32
@id_table_2 = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1477, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"digi_2\00", [25 x i8] zeroinitializer }, align 32
@digi_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&serial_priv->ds_serial_lock\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@digi_port_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->dp_port_lock\00", [44 x i8] zeroinitializer }, align 32
@digi_port_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&priv->dp_transmit_idle_wait\00", [35 x i8] zeroinitializer }, align 32
@digi_port_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->dp_flush_wait\00", [43 x i8] zeroinitializer }, align 32
@digi_port_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->dp_close_wait\00", [43 x i8] zeroinitializer }, align 32
@digi_port_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->write_wait\00", [46 x i8] zeroinitializer }, align 32
@digi_open.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.14, ptr @.str.15, i8 1, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"digi_open\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/serial/digi_acceleport.c\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"digi_open: write oob failed, ret=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@digi_startup_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.14, i32 1200, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: usb_submit_urb failed, ret=%d, port=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"digi_startup_device\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@digi_startup_device._entry_ptr = internal global ptr @digi_startup_device._entry, section ".printk_index", align 4
@digi_write_oob_command.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.14, ptr @.str.21, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"digi_write_oob_command\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"digi_write_oob_command: TOP: port=%d, count=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@digi_write_oob_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.14, i32 408, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: usb_submit_urb failed, ret=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@digi_write_oob_command._entry_ptr = internal global ptr @digi_write_oob_command._entry, section ".printk_index", align 4
@digi_close.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.14, ptr @.str.24, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"digi_close\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"digi_close: write oob failed, ret=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@digi_write_inb_command.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.14, ptr @.str.26, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"digi_write_inb_command\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"digi_write_inb_command: TOP: port=%d, count=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@digi_write_inb_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.25, ptr @.str.14, i32 490, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@digi_write_inb_command._entry_ptr = internal global ptr @digi_write_inb_command._entry, section ".printk_index", align 4
@digi_write.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.14, ptr @.str.28, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"digi_write\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"digi_write: TOP: port=%d, count=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@digi_write.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@digi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.27, ptr @.str.14, i32 949, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@digi_write._entry_ptr = internal global ptr @digi_write._entry, section ".printk_index", align 4
@digi_write.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.14, ptr @.str.29, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"digi_write: returning %d\0A\00", [38 x i8] zeroinitializer }, align 32
@digi_write_room.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.14, ptr @.str.31, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"digi_write_room\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"digi_write_room: port=%d, room=%u\0A\00", [61 x i8] zeroinitializer }, align 32
@digi_set_termios.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.14, ptr @.str.33, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"digi_set_termios\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"digi_set_termios: TOP: port=%d, iflag=0x%x, old_iflag=0x%x, cflag=0x%x, old_cflag=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@digi_set_termios.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.14, ptr @.str.35, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"digi_set_termios: write oob failed, ret=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@digi_set_modem_signals.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.14, ptr @.str.37, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"digi_set_modem_signals\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"digi_set_modem_signals: TOP: port=%d, modem_signals=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@digi_set_modem_signals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.36, ptr @.str.14, i32 557, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@digi_set_modem_signals._entry_ptr = internal global ptr @digi_set_modem_signals._entry, section ".printk_index", align 4
@digi_chars_in_buffer.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.14, ptr @.str.39, i8 1, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"digi_chars_in_buffer\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: port=%d, chars=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@digi_rx_unthrottle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.40, ptr @.str.14, i32 647, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"digi_rx_unthrottle\00", [45 x i8] zeroinitializer }, align 32
@digi_rx_unthrottle._entry_ptr = internal global ptr @digi_rx_unthrottle._entry, section ".printk_index", align 4
@digi_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.14, i32 1306, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: port->private is NULL, status=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"digi_read_bulk_callback\00", [40 x i8] zeroinitializer }, align 32
@digi_read_bulk_callback._entry_ptr = internal global ptr @digi_read_bulk_callback._entry, section ".printk_index", align 4
@digi_read_bulk_callback._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.14, i32 1312, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: serial is bad or serial->private is NULL, status=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@digi_read_bulk_callback._entry_ptr.45 = internal global ptr @digi_read_bulk_callback._entry.43, section ".printk_index", align 4
@digi_read_bulk_callback._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.14, i32 1320, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: nonzero read bulk status: status=%d, port=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@digi_read_bulk_callback._entry_ptr.48 = internal global ptr @digi_read_bulk_callback._entry.46, section ".printk_index", align 4
@digi_read_bulk_callback._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.14, i32 1338, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: failed resubmitting urb, ret=%d, port=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@digi_read_bulk_callback._entry_ptr.51 = internal global ptr @digi_read_bulk_callback._entry.49, section ".printk_index", align 4
@digi_read_oob_callback.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.14, ptr @.str.53, i8 1, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"digi_read_oob_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"digi_read_oob_callback: opcode=%d, line=%d, status=%d, val=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@digi_read_inb_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.14, i32 1367, ptr @.str.56, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"short packet received\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"digi_read_inb_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@digi_read_inb_callback._entry_ptr = internal global ptr @digi_read_inb_callback._entry, section ".printk_index", align 4
@digi_read_inb_callback._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.14, i32 1376, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"malformed packet received: port=%d, opcode=%d, len=%d, actual_length=%u\0A\00", [55 x i8] zeroinitializer }, align 32
@digi_read_inb_callback._entry_ptr.59 = internal global ptr @digi_read_inb_callback._entry.57, section ".printk_index", align 4
@digi_read_inb_callback._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.55, ptr @.str.14, i32 1381, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"malformed data packet received\0A\00", [32 x i8] zeroinitializer }, align 32
@digi_read_inb_callback._entry_ptr.62 = internal global ptr @digi_read_inb_callback._entry.60, section ".printk_index", align 4
@digi_read_inb_callback.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.14, ptr @.str.63, i8 1, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: got RECEIVE_DISABLE\0A\00", [39 x i8] zeroinitializer }, align 32
@digi_read_inb_callback.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.14, ptr @.str.64, i8 1, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: unknown opcode: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@digi_write_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.14, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: port or port->private is NULL, status=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"digi_write_bulk_callback\00", [39 x i8] zeroinitializer }, align 32
@digi_write_bulk_callback._entry_ptr = internal global ptr @digi_write_bulk_callback._entry, section ".printk_index", align 4
@digi_write_bulk_callback._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.14, i32 977, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: serial or serial->private is NULL, status=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@digi_write_bulk_callback._entry_ptr.69 = internal global ptr @digi_write_bulk_callback._entry.67, section ".printk_index", align 4
@digi_write_bulk_callback.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.14, ptr @.str.70, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"digi_write_bulk_callback: oob callback\0A\00", [56 x i8] zeroinitializer }, align 32
@digi_write_bulk_callback.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@digi_write_bulk_callback._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.66, ptr @.str.14, i32 1016, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@digi_write_bulk_callback._entry_ptr.72 = internal global ptr @digi_write_bulk_callback._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digi 4 port USB adapter\00", [40 x i8] zeroinitializer }, align 32
@id_table_4 = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1477, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"digi_4\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 50, i64 75, i64 110, i64 150, i64 200, i64 300, i64 600, i64 1200, i64 1800, i64 2400, i64 4800, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200, i64 230400, i64 460800]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 9, i64 13]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 13]
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 323, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1528, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"id_table_combined\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 242, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"digi_acceleport_2_device\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 262, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [25 x i8] c"digi_acceleport_4_device\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 293, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 267, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"id_table_2\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 248, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 265, i32 13 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1237, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1215, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1217, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1218, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1219, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1220, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1092, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1198, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 377, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 407, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1151, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 435, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 488, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 891, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [24 x i8] c"digi_write.__print_once\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 947, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 950, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1037, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 666, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 835, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 516, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 556, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1056, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 645, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1305, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1311, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1318, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1336, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1466, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1367, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1375, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1381, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1425, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1427, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 969, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 975, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 983, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [38 x i8] c"digi_write_bulk_callback.__print_once\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1014, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 298, i32 19 }
@___asan_gen_.326 = private unnamed_addr constant [11 x i8] c"id_table_4\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 253, i32 35 }
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.330 = private constant [40 x i8] c"../drivers/usb/serial/digi_acceleport.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 296, i32 13 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_digi_acceleport__264_1528_usb_serial_module_init6, ptr @digi_read_bulk_callback._entry, ptr @digi_read_bulk_callback._entry.43, ptr @digi_read_bulk_callback._entry.46, ptr @digi_read_bulk_callback._entry.49, ptr @digi_read_bulk_callback._entry_ptr, ptr @digi_read_bulk_callback._entry_ptr.45, ptr @digi_read_bulk_callback._entry_ptr.48, ptr @digi_read_bulk_callback._entry_ptr.51, ptr @digi_read_inb_callback._entry, ptr @digi_read_inb_callback._entry.57, ptr @digi_read_inb_callback._entry.60, ptr @digi_read_inb_callback._entry_ptr, ptr @digi_read_inb_callback._entry_ptr.59, ptr @digi_read_inb_callback._entry_ptr.62, ptr @digi_rx_unthrottle._entry, ptr @digi_rx_unthrottle._entry_ptr, ptr @digi_set_modem_signals._entry, ptr @digi_set_modem_signals._entry_ptr, ptr @digi_startup_device._entry, ptr @digi_startup_device._entry_ptr, ptr @digi_write._entry, ptr @digi_write._entry_ptr, ptr @digi_write_bulk_callback._entry, ptr @digi_write_bulk_callback._entry.67, ptr @digi_write_bulk_callback._entry.71, ptr @digi_write_bulk_callback._entry_ptr, ptr @digi_write_bulk_callback._entry_ptr.69, ptr @digi_write_bulk_callback._entry_ptr.72, ptr @digi_write_inb_command._entry, ptr @digi_write_inb_command._entry_ptr, ptr @digi_write_oob_command._entry, ptr @digi_write_oob_command._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table_combined, ptr @digi_acceleport_2_device, ptr @digi_acceleport_4_device, ptr @.str.1, ptr @id_table_2, ptr @.str.2, ptr @digi_startup.__key, ptr @.str.3, ptr @digi_port_init.__key, ptr @.str.4, ptr @digi_port_init.__key.5, ptr @.str.6, ptr @digi_port_init.__key.7, ptr @.str.8, ptr @digi_port_init.__key.9, ptr @.str.10, ptr @digi_port_init.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @digi_write.__print_once, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @digi_write_bulk_callback.__print_once, ptr @.str.73, ptr @id_table_4, ptr @.str.74], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_combined to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_acceleport_2_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_acceleport_4_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_port_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_port_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_port_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_port_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_port_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_startup_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_write_oob_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_write_inb_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_write.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_set_modem_signals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_rx_unthrottle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_read_bulk_callback._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_read_bulk_callback._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_read_bulk_callback._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_read_inb_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_read_inb_callback._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_read_inb_callback._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_write_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_write_bulk_callback._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_write_bulk_callback.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digi_write_bulk_callback._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table_combined) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digi_startup(ptr nocapture noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @digi_startup.__key, i16 noundef signext 3) #8
  %type = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type, align 4
  %num_ports = getelementptr inbounds %struct.usb_serial_driver, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_ports, align 4
  %conv = zext i8 %4 to i32
  %ds_oob_port_num = getelementptr inbounds %struct.digi_serial, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %ds_oob_port_num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %ds_oob_port_num, align 8
  %arrayidx = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %ds_oob_port = getelementptr inbounds %struct.digi_serial, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ds_oob_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %ds_oob_port, align 4
  %call5 = tail call fastcc i32 @digi_port_init(ptr noundef %7, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end8:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %private.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_disconnect(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %7) #8
  %inc = add nuw nsw i32 %i.011, 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %num_ports = getelementptr inbounds %struct.usb_serial_driver, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_ports, align 4
  %conv = zext i8 %11 to i32
  %cmp.not.not = icmp ult i32 %i.011, %conv
  br i1 %cmp.not.not, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_release(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %ds_oob_port = getelementptr inbounds %struct.digi_serial, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ds_oob_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds_oob_port, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %5) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digi_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_number, align 4
  %conv = zext i8 %1 to i32
  %call = tail call fastcc i32 @digi_port_init(ptr noundef %port, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digi_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %not_termios = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 7
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %7 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %not_termios) #8
  %10 = call ptr @memset(ptr %not_termios, i32 255, i32 44)
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 8
  %private.i.i = getelementptr inbounds %struct.usb_serial, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %14) #8
  %ds_device_started.i = getelementptr inbounds %struct.digi_serial, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ds_device_started.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ds_device_started.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %14) #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %17 = ptrtoint ptr %ds_device_started.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %ds_device_started.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %14) #8
  %type.i = getelementptr inbounds %struct.usb_serial, ptr %12, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.029.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_serial, ptr %12, i32 0, i32 12, i32 %i.029.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %read_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_urb.i, align 4
  %call6.i = tail call i32 @usb_submit_urb(ptr noundef %21, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.not.i, label %for.inc.i, label %digi_startup_device.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type.i, align 4
  %num_ports.i = getelementptr inbounds %struct.usb_serial_driver, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_ports.i, align 4
  %conv.i = zext i8 %25 to i32
  %cmp.not.not.i = icmp ult i32 %i.029.i, %conv.i
  br i1 %cmp.not.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

digi_startup_device.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %19, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %call6.i, i32 noundef %i.029.i) #12
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then.i
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %buf, align 1
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %9, i32 0, i32 1
  %27 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dp_port_num, align 4
  %conv = trunc i32 %28 to i8
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %0, align 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %1, align 1
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %2, align 1
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 9, ptr %3, align 1
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %4, align 1
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %5, align 1
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %6, align 1
  %call11 = call fastcc i32 @digi_write_oob_command(ptr noundef %port, ptr noundef nonnull %buf, i32 noundef 8, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end.if.end20_crit_edge, label %do.body

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_open.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_open, %if.then18)) #8
          to label %if.end20 [label %if.then18], !srcloc !187

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_open.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call11) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.body, %if.end.if.end20_crit_edge
  %tobool21.not = icmp eq ptr %tty, null
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %36 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %c_cflag, align 4
  %neg = xor i32 %37, -1
  %c_cflag23 = getelementptr inbounds %struct.ktermios, ptr %not_termios, i32 0, i32 2
  %38 = ptrtoint ptr %c_cflag23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %neg, ptr %c_cflag23, align 4
  %39 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %termios, align 4
  %neg25 = xor i32 %40, -1
  %41 = ptrtoint ptr %not_termios to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %neg25, ptr %not_termios, align 4
  call void @digi_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef nonnull %not_termios)
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end20.cleanup_crit_edge, %digi_startup_device.exit
  %retval.0 = phi i32 [ -6, %digi_startup_device.exit ], [ 0, %if.then22 ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %not_termios) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_close(ptr noundef %port) #2 align 64 {
entry:
  %wait.i.i = alloca %struct.wait_queue_entry, align 4
  %buf.i = alloca [2 x i8], align 1
  %wait = alloca %struct.wait_queue_entry, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !177) #8
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %13 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 1
  %14 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 2
  %15 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 3
  %16 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 4
  %17 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 5
  %18 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 6
  %19 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 7
  %20 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 8
  %21 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 9
  %22 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 10
  %23 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 11
  %24 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 12
  %25 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 13
  %26 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 14
  %27 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 15
  %28 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 16
  %29 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 17
  %30 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 18
  %31 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 19
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %32 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i, align 4
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port, align 8
  %disc_mutex = getelementptr inbounds %struct.usb_serial, ptr %36, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #8
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 8
  %disconnected = getelementptr inbounds %struct.usb_serial, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i, align 4
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #8
  %dp_transmit_idle.i = getelementptr inbounds %struct.digi_port, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %dp_transmit_idle.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %dp_transmit_idle.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %call3.i) #8
  %44 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 13, ptr %buf.i, align 1
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %40, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %46, 500
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %47
  %call8.i = call fastcc i32 @digi_write_inb_command(ptr noundef %port, ptr noundef nonnull %buf.i, i32 noundef 2, i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.not.i, label %do.body12.i, label %if.end.digi_transmit_idle.exit_crit_edge

if.end.digi_transmit_idle.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %digi_transmit_idle.exit

do.body12.i:                                      ; preds = %if.end
  %call20.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub254.i = sub i32 %48, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub254.i)
  %cmp265.i = icmp slt i32 %sub254.i, 0
  br i1 %cmp265.i, label %land.rhs.lr.ph.i, label %do.body12.i.while.end.i_crit_edge

do.body12.i.while.end.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %do.body12.i
  %dp_transmit_idle_wait.i = getelementptr inbounds %struct.digi_port, ptr %42, i32 0, i32 7
  %49 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 1
  %50 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 2
  %51 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 3
  %52 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 3, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body37.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %flags.06.i = phi i32 [ %call20.i, %land.rhs.lr.ph.i ], [ %call45.i, %do.body37.i.land.rhs.i_crit_edge ]
  %53 = ptrtoint ptr %dp_transmit_idle.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dp_transmit_idle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i.i) #8
  %55 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %wait.i.i, align 4
  %56 = call i32 @llvm.read_register.i32(metadata !177) #8
  %and.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i.i, align 8
  %60 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %49, align 4
  %61 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @autoremove_wake_function, ptr %50, align 4
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %51, ptr %51, align 4
  %63 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %51, ptr %52, align 4
  call void @prepare_to_wait(ptr noundef %dp_transmit_idle_wait.i, ptr noundef nonnull %wait.i.i, i32 noundef 1) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %flags.06.i) #8
  %call5.i.i = call i32 @schedule_timeout(i32 noundef 10) #8
  call void @finish_wait(ptr noundef %dp_transmit_idle_wait.i, ptr noundef nonnull %wait.i.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i) #8
  %64 = call i32 @llvm.read_register.i32(metadata !177) #8
  %and.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %stack.i.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %72 = and i32 %71, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %while.body.i.digi_transmit_idle.exit_crit_edge, !prof !188

while.body.i.digi_transmit_idle.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digi_transmit_idle.exit

signal_pending.exit.i:                            ; preds = %while.body.i
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %69, align 4
  %and1.i.i.i.i.i.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool33.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool33.not.i, label %do.body37.i, label %signal_pending.exit.i.digi_transmit_idle.exit_crit_edge

signal_pending.exit.i.digi_transmit_idle.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %digi_transmit_idle.exit

do.body37.i:                                      ; preds = %signal_pending.exit.i
  %call45.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %sub25.i = sub i32 %75, %add.i
  %cmp26.i = icmp slt i32 %sub25.i, 0
  br i1 %cmp26.i, label %do.body37.i.land.rhs.i_crit_edge, label %do.body37.i.while.end.i_crit_edge

do.body37.i.while.end.i_crit_edge:                ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.body37.i.land.rhs.i_crit_edge:                 ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.end.i:                                      ; preds = %do.body37.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %do.body12.i.while.end.i_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call20.i, %do.body12.i.while.end.i_crit_edge ], [ %flags.06.i, %land.rhs.i.while.end.i_crit_edge ], [ %call45.i, %do.body37.i.while.end.i_crit_edge ]
  %76 = ptrtoint ptr %dp_transmit_idle.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %dp_transmit_idle.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %flags.0.lcssa.i) #8
  br label %digi_transmit_idle.exit

digi_transmit_idle.exit:                          ; preds = %while.end.i, %signal_pending.exit.i.digi_transmit_idle.exit_crit_edge, %while.body.i.digi_transmit_idle.exit_crit_edge, %if.end.digi_transmit_idle.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %77 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 4, ptr %buf, align 1
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %34, i32 0, i32 1
  %78 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dp_port_num, align 4
  %conv = trunc i32 %79 to i8
  %80 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv, ptr %13, align 1
  %81 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %14, align 1
  %82 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %15, align 1
  %83 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 5, ptr %16, align 1
  %84 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv, ptr %17, align 1
  %85 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %18, align 1
  %86 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %19, align 1
  %87 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 8, ptr %20, align 1
  %88 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv, ptr %21, align 1
  %89 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %22, align 1
  %90 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %23, align 1
  %91 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 10, ptr %24, align 1
  %92 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv, ptr %25, align 1
  %93 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %26, align 1
  %94 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %27, align 1
  %95 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 9, ptr %28, align 1
  %96 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv, ptr %29, align 1
  %97 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %30, align 1
  %98 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %31, align 1
  %call34 = call fastcc i32 @digi_write_oob_command(ptr noundef %port, ptr noundef nonnull %buf, i32 noundef 20, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp.not = icmp eq i32 %call34, 0
  br i1 %cmp.not, label %digi_transmit_idle.exit.if.end43_crit_edge, label %do.body

digi_transmit_idle.exit.if.end43_crit_edge:       ; preds = %digi_transmit_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.body:                                          ; preds = %digi_transmit_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_close.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_close, %if.then41)) #8
          to label %if.end43 [label %if.then41], !srcloc !187

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_close.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call34) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.body, %digi_transmit_idle.exit.if.end43_crit_edge
  %dp_flush_wait = getelementptr inbounds %struct.digi_port, ptr %34, i32 0, i32 10
  call void @prepare_to_wait(ptr noundef %dp_flush_wait, ptr noundef nonnull %wait, i32 noundef 1) #8
  %call44 = call i32 @schedule_timeout(i32 noundef 500) #8
  call void @finish_wait(ptr noundef %dp_flush_wait, ptr noundef nonnull %wait) #8
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %99 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_urb, align 8
  call void @usb_kill_urb(ptr noundef %100) #8
  br label %exit

exit:                                             ; preds = %if.end43, %entry.exit_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %34) #8
  %dp_write_urb_in_use = getelementptr inbounds %struct.digi_port, ptr %34, i32 0, i32 4
  %101 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %dp_write_urb_in_use, align 4
  %dp_close_wait = getelementptr inbounds %struct.digi_port, ptr %34, i32 0, i32 11
  call void @__wake_up(ptr noundef %dp_close_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  call void @_raw_spin_unlock_irq(ptr noundef %34) #8
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %port, align 8
  %disc_mutex48 = getelementptr inbounds %struct.usb_serial, ptr %103, i32 0, i32 14
  call void @mutex_unlock(ptr noundef %disc_mutex48) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digi_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %2 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_write.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_write, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_write.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %7, i32 noundef %count) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 20
  %8 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bulk_out_size, align 4
  %sub = add i32 %9, -2
  %10 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %count)
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 64)
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %dp_write_urb_in_use = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_write_urb_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %if.end31, label %if.then22

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp23 = icmp eq i32 %11, 1
  br i1 %cmp23, label %land.lhs.true, label %if.then22.if.end29_crit_edge

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then22
  %dp_out_buf_len = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dp_out_buf_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_out_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp25 = icmp slt i32 %15, 8
  br i1 %cmp25, label %if.then27, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 1
  %inc = add nsw i32 %15, 1
  %18 = ptrtoint ptr %dp_out_buf_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc, ptr %dp_out_buf_len, align 4
  %arrayidx = getelementptr %struct.digi_port, ptr %1, i32 0, i32 3, i32 %15
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %arrayidx, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true.if.end29_crit_edge, %if.then22.if.end29_crit_edge
  %new_len.0 = phi i32 [ 1, %if.then27 ], [ 0, %land.lhs.true.if.end29_crit_edge ], [ 0, %if.then22.if.end29_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call16) #8
  br label %cleanup

if.end31:                                         ; preds = %do.end
  %20 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bulk_out_size, align 4
  %sub33 = add i32 %21, -2
  %dp_out_buf_len34 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dp_out_buf_len34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dp_out_buf_len34, align 4
  %sub35 = sub i32 %sub33, %23
  %24 = tail call i32 @llvm.smin.i32(i32 %11, i32 %sub35)
  %add = add i32 %24, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp44 = icmp eq i32 %add, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call16) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end31
  %add49 = add i32 %add, 2
  %25 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add49, ptr %transfer_buffer_length, align 4
  %incdec.ptr = getelementptr i8, ptr %5, i32 1
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 18, ptr %5, align 1
  %conv51 = trunc i32 %add to i8
  %incdec.ptr52 = getelementptr i8, ptr %5, i32 2
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv51, ptr %incdec.ptr, align 1
  %dp_out_buf53 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %dp_out_buf_len34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dp_out_buf_len34, align 4
  %32 = call ptr @memcpy(ptr %incdec.ptr52, ptr %dp_out_buf53, i32 %31)
  %33 = load i32, ptr %dp_out_buf_len34, align 4
  %add.ptr = getelementptr i8, ptr %incdec.ptr52, i32 %33
  %34 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %24)
  %35 = load ptr, ptr %write_urb, align 8
  %call57 = tail call i32 @usb_submit_urb(ptr noundef %35, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end48.if.end63_crit_edge

if.end48.if.end63_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then60:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %dp_write_urb_in_use, align 4
  %37 = ptrtoint ptr %dp_out_buf_len34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %dp_out_buf_len34, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end48.if.end63_crit_edge
  %ret.0 = phi i32 [ %24, %if.then60 ], [ %call57, %if.end48.if.end63_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp65 = icmp slt i32 %ret.0, 0
  br i1 %cmp65, label %do.body68, label %if.end63.do.body82_crit_edge

if.end63.do.body82_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body82

do.body68:                                        ; preds = %if.end63
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 12
  %38 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool70.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool70.not, label %do.body68.if.then72_crit_edge, label %lor.lhs.false

do.body68.if.then72_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

lor.lhs.false:                                    ; preds = %do.body68
  %.b155 = load i1, ptr @digi_write.__print_once, align 1
  br i1 %.b155, label %lor.lhs.false.do.body82_crit_edge, label %lor.lhs.false.if.then72_crit_edge

lor.lhs.false.if.then72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

lor.lhs.false.do.body82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body82

if.then72:                                        ; preds = %lor.lhs.false.if.then72_crit_edge, %do.body68.if.then72_crit_edge
  store i1 true, ptr @digi_write.__print_once, align 1
  %dev76 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %dp_port_num77 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %dp_port_num77 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dp_port_num77, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.27, i32 noundef %ret.0, i32 noundef %40) #12
  br label %do.body82

do.body82:                                        ; preds = %if.then72, %lor.lhs.false.do.body82_crit_edge, %if.end63.do.body82_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_write.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_write, %if.then94)) #8
          to label %cleanup [label %if.then94], !srcloc !187

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %dev95 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_write.__UNIQUE_ID_ddebug255, ptr noundef %dev95, ptr noundef nonnull @.str.29, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %do.body82, %if.then46, %if.end29
  %retval.0 = phi i32 [ %new_len.0, %if.end29 ], [ 0, %if.then46 ], [ %ret.0, %if.then94 ], [ %ret.0, %do.body82 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digi_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %dp_write_urb_in_use = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_write_urb_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bulk_out_size, align 4
  %sub = add i32 %7, -2
  %dp_out_buf_len = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dp_out_buf_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp_out_buf_len, align 4
  %sub6 = sub i32 %sub, %9
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %room.0 = phi i32 [ %sub6, %if.else ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_write_room.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_write_room, %if.then14)) #8
          to label %do.end17 [label %if.then14], !srcloc !187

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_write_room.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %11, i32 noundef %room.0) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %if.end
  ret i32 %room.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %2 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termios, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %6 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old_termios, align 4
  %c_cflag4 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %8 = ptrtoint ptr %c_cflag4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %10 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 1
  %11 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 2
  %12 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 3
  %13 = call ptr @memset(ptr %buf, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_set_termios.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_set_termios, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_set_termios.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %15, i32 noundef %3, i32 noundef %7, i32 noundef %5, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #8
  %call9 = tail call i32 @tty_termios_baud_rate(ptr noundef %old_termios) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call9)
  %cmp.not = icmp eq i32 %call.i, %call9
  br i1 %cmp.not, label %do.end.if.end52_crit_edge, label %if.then10

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then10:                                        ; preds = %do.end
  %and = and i32 %9, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.then12, label %if.then10.if.end21_crit_edge

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then12:                                        ; preds = %if.then10
  %16 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool16.not = icmp sgt i32 %17, -1
  br i1 %tobool16.not, label %if.then12.if.then18_crit_edge, label %lor.lhs.false

if.then12.if.then18_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.then12
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.if.end19_crit_edge

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.then12.if.then18_crit_edge
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false.if.end19_crit_edge
  %modem_signals.0 = phi i32 [ 2, %lor.lhs.false.if.end19_crit_edge ], [ 6, %if.then18 ]
  %20 = tail call fastcc i32 @digi_set_modem_signals(ptr noundef %port, i32 noundef %modem_signals.0)
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.then10.if.end21_crit_edge
  %21 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %sw.default [
    i32 0, label %sw.epilog
    i32 50, label %if.end21.if.then42_crit_edge
    i32 75, label %sw.bb24
    i32 110, label %sw.bb25
    i32 150, label %sw.bb26
    i32 200, label %sw.bb27
    i32 300, label %sw.bb28
    i32 600, label %sw.bb29
    i32 1200, label %sw.bb30
    i32 1800, label %sw.bb31
    i32 2400, label %sw.bb32
    i32 4800, label %sw.bb33
    i32 9600, label %sw.bb34
    i32 19200, label %sw.bb35
    i32 38400, label %sw.bb36
    i32 57600, label %sw.bb37
    i32 115200, label %sw.bb38
    i32 230400, label %sw.bb39
    i32 460800, label %sw.bb40
  ]

if.end21.if.then42_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb24:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb25:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb26:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb27:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb28:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb29:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb30:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb31:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb32:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb33:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb34:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb35:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb36:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb37:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb38:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb39:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.bb40:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.default:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

sw.epilog:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %22 = tail call fastcc i32 @digi_set_modem_signals(ptr noundef %port, i32 noundef 0)
  br label %if.end52

if.then42:                                        ; preds = %sw.default, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %if.end21.if.then42_crit_edge
  %arg.0.ph = phi i8 [ 0, %if.end21.if.then42_crit_edge ], [ 1, %sw.bb24 ], [ 2, %sw.bb25 ], [ 3, %sw.bb26 ], [ 4, %sw.bb27 ], [ 5, %sw.bb28 ], [ 6, %sw.bb29 ], [ 7, %sw.bb30 ], [ 8, %sw.bb31 ], [ 9, %sw.bb32 ], [ 10, %sw.bb33 ], [ 12, %sw.bb34 ], [ 14, %sw.bb35 ], [ 16, %sw.bb36 ], [ 17, %sw.bb37 ], [ 19, %sw.bb38 ], [ 21, %sw.bb39 ], [ 22, %sw.bb40 ], [ 12, %sw.default ]
  %baud.0.ph = phi i32 [ %call.i, %if.end21.if.then42_crit_edge ], [ %call.i, %sw.bb24 ], [ %call.i, %sw.bb25 ], [ %call.i, %sw.bb26 ], [ %call.i, %sw.bb27 ], [ %call.i, %sw.bb28 ], [ %call.i, %sw.bb29 ], [ %call.i, %sw.bb30 ], [ %call.i, %sw.bb31 ], [ %call.i, %sw.bb32 ], [ %call.i, %sw.bb33 ], [ %call.i, %sw.bb34 ], [ %call.i, %sw.bb35 ], [ %call.i, %sw.bb36 ], [ %call.i, %sw.bb37 ], [ %call.i, %sw.bb38 ], [ %call.i, %sw.bb39 ], [ %call.i, %sw.bb40 ], [ 9600, %sw.default ]
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %buf, align 1
  %dp_port_num43 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dp_port_num43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dp_port_num43, align 4
  %conv = trunc i32 %25 to i8
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %10, align 1
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %arg.0.ph, ptr %11, align 1
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %12, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then42, %sw.epilog, %do.end.if.end52_crit_edge
  %i.0 = phi i32 [ 4, %if.then42 ], [ 0, %sw.epilog ], [ 0, %do.end.if.end52_crit_edge ]
  %baud.1 = phi i32 [ %baud.0.ph, %if.then42 ], [ 0, %sw.epilog ], [ %call.i, %do.end.if.end52_crit_edge ]
  %29 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c_cflag, align 4
  %and55 = and i32 %30, -1073741825
  store i32 %and55, ptr %c_cflag, align 4
  %31 = xor i32 %9, %5
  %32 = and i32 %31, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp58.not = icmp eq i32 %32, 0
  br i1 %cmp58.not, label %if.end52.if.end81_crit_edge, label %if.then60

if.end52.if.end81_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %and61 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %and64 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %. = select i1 %tobool65.not, i8 2, i8 1
  %arg.1 = select i1 %tobool62.not, i8 0, i8 %.
  %inc70 = or i32 %i.0, 1
  %arrayidx71 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %i.0
  %33 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %arrayidx71, align 1
  %dp_port_num72 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %dp_port_num72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dp_port_num72, align 4
  %conv73 = trunc i32 %35 to i8
  %inc74 = or i32 %i.0, 2
  %arrayidx75 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc70
  %36 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv73, ptr %arrayidx75, align 1
  %inc77 = or i32 %i.0, 3
  %arrayidx78 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc74
  %37 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %arg.1, ptr %arrayidx78, align 1
  %inc79 = add nuw nsw i32 %i.0, 4
  %arrayidx80 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc77
  %38 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx80, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then60, %if.end52.if.end81_crit_edge
  %i.1 = phi i32 [ %inc79, %if.then60 ], [ %i.0, %if.end52.if.end81_crit_edge ]
  %and82 = and i32 %5, 48
  %and83 = and i32 %9, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %and82, i32 %and83)
  %cmp84.not = icmp eq i32 %and82, %and83
  br i1 %cmp84.not, label %if.end81.if.end126_crit_edge, label %if.then86

if.end81.if.end126_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %39 = lshr exact i32 %and82, 4
  %inc114 = add nuw nsw i32 %i.1, 1
  %arrayidx115 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %i.1
  %40 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %arrayidx115, align 1
  %dp_port_num116 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %dp_port_num116 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dp_port_num116, align 4
  %conv117 = trunc i32 %42 to i8
  %inc118 = add nuw nsw i32 %i.1, 2
  %arrayidx119 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc114
  %43 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv117, ptr %arrayidx119, align 1
  %conv120 = trunc i32 %39 to i8
  %inc121 = add nuw nsw i32 %i.1, 3
  %arrayidx122 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc118
  %44 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv120, ptr %arrayidx122, align 1
  %inc123 = add nuw nsw i32 %i.1, 4
  %arrayidx124 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc121
  %45 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx124, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.then86, %if.end81.if.end126_crit_edge
  %i.2 = phi i32 [ %inc123, %if.then86 ], [ %i.1, %if.end81.if.end126_crit_edge ]
  %and127 = and i32 %5, 64
  %and128 = and i32 %9, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %and127, i32 %and128)
  %cmp129.not = icmp eq i32 %and127, %and128
  br i1 %cmp129.not, label %if.end126.if.end148_crit_edge, label %if.then131

if.end126.if.end148_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then131:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %and127.lobit = lshr exact i32 %and127, 6
  %46 = trunc i32 %and127.lobit to i8
  %inc137 = add nuw nsw i32 %i.2, 1
  %arrayidx138 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %i.2
  %47 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %arrayidx138, align 1
  %dp_port_num139 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %dp_port_num139 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dp_port_num139, align 4
  %conv140 = trunc i32 %49 to i8
  %inc141 = add nuw nsw i32 %i.2, 2
  %arrayidx142 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc137
  %50 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv140, ptr %arrayidx142, align 1
  %inc144 = add nuw nsw i32 %i.2, 3
  %arrayidx145 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc141
  %51 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %46, ptr %arrayidx145, align 1
  %inc146 = add nuw nsw i32 %i.2, 4
  %arrayidx147 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc144
  %52 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx147, align 1
  br label %if.end148

if.end148:                                        ; preds = %if.then131, %if.end126.if.end148_crit_edge
  %i.3 = phi i32 [ %inc146, %if.then131 ], [ %i.2, %if.end126.if.end148_crit_edge ]
  %and149 = and i32 %3, 4096
  %and150 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and149, i32 %and150)
  %cmp151.not = icmp eq i32 %and149, %and150
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp156.not = icmp sgt i32 %31, -1
  %or.cond = select i1 %cmp151.not, i1 %cmp156.not, i1 false
  br i1 %or.cond, label %if.end148.if.end194_crit_edge, label %if.then158

if.end148.if.end194_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.then158:                                       ; preds = %if.end148
  %and149.lobit = lshr exact i32 %and149, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool167.not = icmp sgt i32 %5, -1
  br i1 %tobool167.not, label %if.then158.if.end182_crit_edge, label %if.then168

if.then158.if.end182_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

if.then168:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  %or169 = or i32 %and149.lobit, 2
  %inc170 = add nuw nsw i32 %i.3, 1
  %arrayidx171 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %i.3
  %53 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 7, ptr %arrayidx171, align 1
  %dp_port_num172 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %dp_port_num172 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dp_port_num172, align 4
  %conv173 = trunc i32 %55 to i8
  %inc174 = add nuw nsw i32 %i.3, 2
  %arrayidx175 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc170
  %56 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv173, ptr %arrayidx175, align 1
  %inc176 = add nuw nsw i32 %i.3, 3
  %arrayidx177 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc174
  %57 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %arrayidx177, align 1
  %inc178 = add nuw nsw i32 %i.3, 4
  %arrayidx179 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc176
  %58 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx179, align 1
  br label %if.end182

if.end182:                                        ; preds = %if.then168, %if.then158.if.end182_crit_edge
  %arg.5 = phi i32 [ %or169, %if.then168 ], [ %and149.lobit, %if.then158.if.end182_crit_edge ]
  %i.4 = phi i32 [ %inc178, %if.then168 ], [ %i.3, %if.then158.if.end182_crit_edge ]
  %inc183 = add nuw nsw i32 %i.4, 1
  %arrayidx184 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %i.4
  %59 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 4, ptr %arrayidx184, align 1
  %dp_port_num185 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %dp_port_num185 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dp_port_num185, align 4
  %conv186 = trunc i32 %61 to i8
  %inc187 = add nuw nsw i32 %i.4, 2
  %arrayidx188 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc183
  %62 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv186, ptr %arrayidx188, align 1
  %conv189 = trunc i32 %arg.5 to i8
  %inc190 = add nuw nsw i32 %i.4, 3
  %arrayidx191 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc187
  %63 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv189, ptr %arrayidx191, align 1
  %inc192 = add nuw nsw i32 %i.4, 4
  %arrayidx193 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc190
  %64 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx193, align 1
  br label %if.end194

if.end194:                                        ; preds = %if.end182, %if.end148.if.end194_crit_edge
  %i.5 = phi i32 [ %inc192, %if.end182 ], [ %i.3, %if.end148.if.end194_crit_edge ]
  %and195 = and i32 %3, 1024
  %and196 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %and195, i32 %and196)
  %cmp197.not = icmp eq i32 %and195, %and196
  %or.cond376 = select i1 %cmp197.not, i1 %cmp156.not, i1 false
  br i1 %or.cond376, label %if.end194.if.end230_crit_edge, label %if.then204

if.end194.if.end230_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end230

if.then204:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  %and195.lobit = lshr exact i32 %and195, 10
  %or215 = or i32 %and195.lobit, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool213.not389 = icmp slt i32 %5, 0
  %arg.7 = select i1 %tobool213.not389, i32 %or215, i32 %and195.lobit
  %inc219 = add nuw nsw i32 %i.5, 1
  %arrayidx220 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %i.5
  %65 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 5, ptr %arrayidx220, align 1
  %dp_port_num221 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %dp_port_num221 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dp_port_num221, align 4
  %conv222 = trunc i32 %67 to i8
  %inc223 = add nuw nsw i32 %i.5, 2
  %arrayidx224 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc219
  %68 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv222, ptr %arrayidx224, align 1
  %conv225 = trunc i32 %arg.7 to i8
  %inc226 = add nuw nsw i32 %i.5, 3
  %arrayidx227 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc223
  %69 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv225, ptr %arrayidx227, align 1
  %inc228 = add nuw nsw i32 %i.5, 4
  %arrayidx229 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc226
  %70 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx229, align 1
  br label %if.end230

if.end230:                                        ; preds = %if.then204, %if.end194.if.end230_crit_edge
  %i.6 = phi i32 [ %inc228, %if.then204 ], [ %i.5, %if.end194.if.end230_crit_edge ]
  %and231 = and i32 %5, 128
  %and232 = and i32 %9, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %and231, i32 %and232)
  %cmp233.not = icmp eq i32 %and231, %and232
  br i1 %cmp233.not, label %if.end230.if.end252_crit_edge, label %if.then235

if.end230.if.end252_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end252

if.then235:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  %and231.lobit = lshr exact i32 %and231, 7
  %71 = trunc i32 %and231.lobit to i8
  %inc241 = add nuw nsw i32 %i.6, 1
  %arrayidx242 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %i.6
  %72 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 10, ptr %arrayidx242, align 1
  %dp_port_num243 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %dp_port_num243 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dp_port_num243, align 4
  %conv244 = trunc i32 %74 to i8
  %inc245 = add nuw nsw i32 %i.6, 2
  %arrayidx246 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc241
  %75 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv244, ptr %arrayidx246, align 1
  %inc248 = add nuw nsw i32 %i.6, 3
  %arrayidx249 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc245
  %76 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %71, ptr %arrayidx249, align 1
  %inc250 = add nuw nsw i32 %i.6, 4
  %arrayidx251 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %inc248
  %77 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx251, align 1
  br label %if.end252

if.end252:                                        ; preds = %if.then235, %if.end230.if.end252_crit_edge
  %i.7 = phi i32 [ %inc250, %if.then235 ], [ %i.6, %if.end230.if.end252_crit_edge ]
  %call253 = call fastcc i32 @digi_write_oob_command(ptr noundef %port, ptr noundef nonnull %buf, i32 noundef %i.7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254.not = icmp eq i32 %call253, 0
  br i1 %cmp254.not, label %if.end252.if.end273_crit_edge, label %do.body257

if.end252.if.end273_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

do.body257:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_set_termios.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_set_termios, %if.then269)) #8
          to label %if.end273 [label %if.then269], !srcloc !187

if.then269:                                       ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_set_termios.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call253) #8
  br label %if.end273

if.end273:                                        ; preds = %if.then269, %do.body257, %if.end252.if.end273_crit_edge
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %baud.1, i32 noundef %baud.1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 11, ptr %buf, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp ne i32 %break_state, 0
  %conv = zext i1 %tobool.not to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %call = call fastcc i32 @digi_write_inb_command(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 4, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digi_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %dp_write_urb_in_use = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_write_urb_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bulk_out_size, align 4
  %sub = add i32 %7, -2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dp_out_buf_len = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dp_out_buf_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp_out_buf_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %chars.0 = phi i32 [ %sub, %if.then ], [ %9, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_chars_in_buffer.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_chars_in_buffer, %if.then13)) #8
          to label %do.end16 [label %if.then13], !srcloc !187

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_chars_in_buffer.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %11, i32 noundef %chars.0) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %if.end
  ret i32 %chars.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_rx_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %dp_throttled = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dp_throttled to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %dp_throttled, align 4
  %dp_throttle_restart = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %dp_throttle_restart to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dp_throttle_restart, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_rx_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %dp_throttle_restart = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dp_throttle_restart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_throttle_restart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_urb, align 4
  %call6 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 2592) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %dp_throttled = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %dp_throttled to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dp_throttled, align 4
  %9 = ptrtoint ptr %dp_throttle_restart to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dp_throttle_restart, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %do.end13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.40, i32 noundef %ret.0, i32 noundef %11) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digi_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %dp_modem_signals = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dp_modem_signals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_modem_signals, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digi_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %dp_modem_signals = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dp_modem_signals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_modem_signals, align 4
  %neg = xor i32 %clear, -1
  %and = and i32 %5, %neg
  %or = or i32 %and, %set
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  %call7 = tail call fastcc i32 @digi_set_modem_signals(ptr noundef %1, i32 noundef %or)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %on, 6
  %0 = tail call fastcc i32 @digi_set_modem_signals(ptr noundef %port, i32 noundef %mul)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_read_bulk_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %3) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.end4.do.end12_crit_edge, label %lor.lhs.false

if.end4.do.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

lor.lhs.false:                                    ; preds = %if.end4
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %cmp8 = icmp eq ptr %9, null
  br i1 %cmp8, label %lor.lhs.false.do.end12_crit_edge, label %if.end14

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false.do.end12_crit_edge, %if.end4.do.end12_crit_edge
  %dev13 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %3) #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.42, i32 noundef %3, i32 noundef %11) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %dp_port_num21 = getelementptr inbounds %struct.digi_port, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dp_port_num21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_port_num21, align 4
  %ds_oob_port_num = getelementptr inbounds %struct.digi_serial, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %ds_oob_port_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ds_oob_port_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp22 = icmp eq i32 %13, %15
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %call24 = tail call fastcc i32 @digi_read_oob_callback(ptr noundef %urb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.then23.if.end32_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23.if.end32_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.else:                                          ; preds = %if.end20
  %call28 = tail call fastcc i32 @digi_read_inb_callback(ptr noundef %urb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.else.if.end32_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %if.else.if.end32_crit_edge, %if.then23.if.end32_crit_edge
  %call33 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  %16 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call33, label %do.end39 [
    i32 0, label %if.end32.cleanup_crit_edge
    i32 -1, label %if.end32.cleanup_crit_edge68
  ]

if.end32.cleanup_crit_edge68:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %dp_port_num21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dp_port_num21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.42, i32 noundef %call33, i32 noundef %18) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end32.cleanup_crit_edge, %if.end32.cleanup_crit_edge68, %if.else.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %do.end18, %do.end12, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @digi_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %3) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.end.do.end12_crit_edge, label %lor.lhs.false6

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

lor.lhs.false6:                                   ; preds = %if.end
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %cmp8 = icmp eq ptr %9, null
  br i1 %cmp8, label %lor.lhs.false6.do.end12_crit_edge, label %if.end13

lor.lhs.false6.do.end12_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false6.do.end12_crit_edge, %if.end.do.end12_crit_edge
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %3) #12
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false6
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_port_num, align 4
  %ds_oob_port_num = getelementptr inbounds %struct.digi_serial, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %ds_oob_port_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ds_oob_port_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp14 = icmp eq i32 %11, %13
  br i1 %cmp14, label %do.body16, label %if.end37

do.body16:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_write_bulk_callback.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_write_bulk_callback, %if.then21)) #8
          to label %do.body27 [label %if.then21], !srcloc !187

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_write_bulk_callback.__UNIQUE_ID_ddebug256, ptr noundef %dev22, ptr noundef nonnull @.str.70) #8
  br label %do.body27

do.body27:                                        ; preds = %if.then21, %do.body16
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #8
  %dp_write_urb_in_use = getelementptr inbounds %struct.digi_port, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dp_write_urb_in_use, align 4
  %write_wait = getelementptr inbounds %struct.digi_port, ptr %5, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call31) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end13
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #8
  %dp_write_urb_in_use52 = getelementptr inbounds %struct.digi_port, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %dp_write_urb_in_use52 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dp_write_urb_in_use52, align 4
  %dp_out_buf_len = getelementptr inbounds %struct.digi_port, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %dp_out_buf_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dp_out_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp53 = icmp sgt i32 %17, 0
  br i1 %cmp53, label %if.then55, label %if.end94.thread147

if.end94.thread147:                               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call47) #8
  br label %if.then96

if.then55:                                        ; preds = %if.end37
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 18, ptr %21, align 1
  %23 = ptrtoint ptr %dp_out_buf_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dp_out_buf_len, align 4
  %conv57 = trunc i32 %24 to i8
  %25 = load ptr, ptr %write_urb, align 8
  %transfer_buffer59 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %transfer_buffer59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transfer_buffer59, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 1
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv57, ptr %add.ptr, align 1
  %29 = load i32, ptr %dp_out_buf_len, align 4
  %add = add i32 %29, 2
  %30 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %transfer_buffer_length, align 4
  %32 = load ptr, ptr %write_urb, align 8
  %transfer_buffer63 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transfer_buffer63, align 4
  %add.ptr64 = getelementptr i8, ptr %34, i32 2
  %dp_out_buf = getelementptr inbounds %struct.digi_port, ptr %5, i32 0, i32 3
  %35 = load i32, ptr %dp_out_buf_len, align 4
  %36 = call ptr @memcpy(ptr %add.ptr64, ptr %dp_out_buf, i32 %35)
  %37 = load ptr, ptr %write_urb, align 8
  %call67 = tail call i32 @usb_submit_urb(ptr noundef %37, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.end94, label %if.end74

if.end74:                                         ; preds = %if.then55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call67)
  %cond = icmp eq i32 %call67, -1
  br i1 %cond, label %if.end74.if.then96_crit_edge, label %do.body80

if.end74.if.then96_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

do.body80:                                        ; preds = %if.end74
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 12
  %38 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool82.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool82.not, label %do.body80.if.then85_crit_edge, label %lor.lhs.false83

do.body80.if.then85_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

lor.lhs.false83:                                  ; preds = %do.body80
  %.b141 = load i1, ptr @digi_write_bulk_callback.__print_once, align 1
  br i1 %.b141, label %lor.lhs.false83.if.then96_crit_edge, label %lor.lhs.false83.if.then85_crit_edge

lor.lhs.false83.if.then85_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

lor.lhs.false83.if.then96_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

if.then85:                                        ; preds = %lor.lhs.false83.if.then85_crit_edge, %do.body80.if.then85_crit_edge
  store i1 true, ptr @digi_write_bulk_callback.__print_once, align 1
  %dev89 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %39 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev89, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.66, i32 noundef %call67, i32 noundef %40) #12
  br label %if.then96

if.end94:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dp_write_urb_in_use52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %dp_write_urb_in_use52, align 4
  %42 = ptrtoint ptr %dp_out_buf_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %dp_out_buf_len, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %call47) #8
  br label %cleanup

if.then96:                                        ; preds = %if.then85, %lor.lhs.false83.if.then96_crit_edge, %if.end74.if.then96_crit_edge, %if.end94.thread147
  %port97 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_port_tty_wakeup(ptr noundef %port97) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %if.end94, %do.body27, %do.end12, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digi_port_init(ptr noundef %port, i32 noundef %port_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 292) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @digi_port_init.__key, i16 noundef signext 3) #8
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %port_num, ptr %dp_port_num, align 4
  %dp_transmit_idle_wait = getelementptr inbounds %struct.digi_port, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %dp_transmit_idle_wait, ptr noundef nonnull @.str.6, ptr noundef nonnull @digi_port_init.__key.5) #8
  %dp_flush_wait = getelementptr inbounds %struct.digi_port, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %dp_flush_wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @digi_port_init.__key.7) #8
  %dp_close_wait = getelementptr inbounds %struct.digi_port, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %dp_close_wait, ptr noundef nonnull @.str.10, ptr noundef nonnull @digi_port_init.__key.9) #8
  %write_wait = getelementptr inbounds %struct.digi_port, ptr %call7.i.i, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %write_wait, ptr noundef nonnull @.str.12, ptr noundef nonnull @digi_port_init.__key.11) #8
  %dp_port = getelementptr inbounds %struct.digi_port, ptr %call7.i.i, i32 0, i32 13
  %2 = ptrtoint ptr %dp_port to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %port, ptr %dp_port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digi_write_oob_command(ptr noundef %port, ptr nocapture noundef readonly %buf, i32 noundef %count, i32 noundef %interruptible) unnamed_addr #2 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %ds_oob_port = getelementptr inbounds %struct.digi_serial, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ds_oob_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds_oob_port, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_write_oob_command.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_write_oob_command, %if.then)) #8
          to label %do.body6 [label %if.then], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_write_oob_command.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %9, i32 noundef %count) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp14107 = icmp sgt i32 %count, 0
  br i1 %cmp14107, label %while.cond16.preheader.lr.ph, label %while.end56.thread

while.end56.thread:                               ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call9) #8
  br label %cleanup

while.cond16.preheader.lr.ph:                     ; preds = %do.body6
  %dp_write_urb_in_use = getelementptr inbounds %struct.digi_port, ptr %7, i32 0, i32 4
  %write_wait = getelementptr inbounds %struct.digi_port, ptr %7, i32 0, i32 12
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interruptible)
  %tobool21.not = icmp eq i32 %interruptible, 0
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 20
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 21
  br label %while.cond16.preheader

while.cond16.preheader:                           ; preds = %if.end55.while.cond16.preheader_crit_edge, %while.cond16.preheader.lr.ph
  %buf.addr.0110 = phi ptr [ %buf, %while.cond16.preheader.lr.ph ], [ %buf.addr.1, %if.end55.while.cond16.preheader_crit_edge ]
  %count.addr.0109 = phi i32 [ %count, %while.cond16.preheader.lr.ph ], [ %count.addr.1, %if.end55.while.cond16.preheader_crit_edge ]
  %flags.0108 = phi i32 [ %call9, %while.cond16.preheader.lr.ph ], [ %flags.1.lcssa, %if.end55.while.cond16.preheader_crit_edge ]
  %14 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_write_urb_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not105 = icmp eq i32 %15, 0
  br i1 %tobool17.not105, label %while.cond16.preheader.while.end_crit_edge, label %while.cond16.preheader.while.body18_crit_edge

while.cond16.preheader.while.body18_crit_edge:    ; preds = %while.cond16.preheader
  br label %while.body18

while.cond16.preheader.while.end_crit_edge:       ; preds = %while.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body18:                                     ; preds = %do.body28.while.body18_crit_edge, %while.cond16.preheader.while.body18_crit_edge
  %flags.1106 = phi i32 [ %call36, %do.body28.while.body18_crit_edge ], [ %flags.0108, %while.cond16.preheader.while.body18_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #8
  %16 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wait.i, align 4
  %17 = call i32 @llvm.read_register.i32(metadata !177) #8
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %10, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @autoremove_wake_function, ptr %11, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %12, ptr %12, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %12, ptr %13, align 4
  call void @prepare_to_wait(ptr noundef %write_wait, ptr noundef nonnull %wait.i, i32 noundef 1) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %flags.1106) #8
  %call5.i = call i32 @schedule_timeout(i32 noundef 10) #8
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %wait.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  br i1 %tobool21.not, label %while.body18.do.body28_crit_edge, label %land.lhs.true

while.body18.do.body28_crit_edge:                 ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

land.lhs.true:                                    ; preds = %while.body18
  %25 = call i32 @llvm.read_register.i32(metadata !177) #8
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stack.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true.cleanup_crit_edge, !prof !188

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %land.lhs.true
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %30, align 4
  %and1.i.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool24.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool24.not, label %signal_pending.exit.do.body28_crit_edge, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit.do.body28_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

do.body28:                                        ; preds = %signal_pending.exit.do.body28_crit_edge, %while.body18.do.body28_crit_edge
  %call36 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %36 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dp_write_urb_in_use, align 4
  %tobool17.not = icmp eq i32 %37, 0
  br i1 %tobool17.not, label %do.body28.while.end_crit_edge, label %do.body28.while.body18_crit_edge

do.body28.while.body18_crit_edge:                 ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body18

do.body28.while.end_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.body28.while.end_crit_edge, %while.cond16.preheader.while.end_crit_edge
  %flags.1.lcssa = phi i32 [ %flags.0108, %while.cond16.preheader.while.end_crit_edge ], [ %call36, %do.body28.while.end_crit_edge ]
  %38 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bulk_out_size, align 4
  %40 = call i32 @llvm.smin.i32(i32 %count.addr.0109, i32 %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp44 = icmp sgt i32 %40, 4
  %and = and i32 %40, -4
  %len.0 = select i1 %cmp44, i32 %and, i32 %40
  %41 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %transfer_buffer, align 4
  %45 = call ptr @memcpy(ptr %44, ptr %buf.addr.0110, i32 %len.0)
  %46 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %len.0, ptr %transfer_buffer_length, align 4
  %48 = load ptr, ptr %write_urb, align 8
  %call50 = call i32 @usb_submit_urb(ptr noundef %48, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %while.end.if.end55_crit_edge

while.end.if.end55_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then53:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %dp_write_urb_in_use, align 4
  %sub = sub i32 %count.addr.0109, %len.0
  %add.ptr = getelementptr i8, ptr %buf.addr.0110, i32 %len.0
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %while.end.if.end55_crit_edge
  %count.addr.1 = phi i32 [ %sub, %if.then53 ], [ %count.addr.0109, %while.end.if.end55_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr, %if.then53 ], [ %buf.addr.0110, %while.end.if.end55_crit_edge ]
  %cmp14 = icmp sgt i32 %count.addr.1, 0
  br i1 %cmp14, label %if.end55.while.cond16.preheader_crit_edge, label %while.end56

if.end55.while.cond16.preheader_crit_edge:        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond16.preheader

while.end56:                                      ; preds = %if.end55
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %flags.1.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool58.not = icmp eq i32 %call50, 0
  br i1 %tobool58.not, label %while.end56.cleanup_crit_edge, label %do.end62

while.end56.cleanup_crit_edge:                    ; preds = %while.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end62:                                         ; preds = %while.end56
  call void @__sanitizer_cov_trace_pc() #10
  %dev63 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %call50) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %while.end56.cleanup_crit_edge, %signal_pending.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %while.end56.thread
  %retval.0 = phi i32 [ %call50, %do.end62 ], [ 0, %while.end56.cleanup_crit_edge ], [ 0, %while.end56.thread ], [ -4, %signal_pending.exit.cleanup_crit_edge ], [ -4, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digi_write_inb_command(ptr noundef %port, ptr nocapture noundef readonly %buf, i32 noundef %count, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %2 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_write_inb_command.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_write_inb_command, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_write_inb_command.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %7, i32 noundef %count) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool4.not = icmp eq i32 %timeout, 0
  br i1 %tobool4.not, label %do.end.do.body8_crit_edge, label %if.then5

do.end.do.body8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, %timeout
  br label %do.body8

do.body8:                                         ; preds = %if.then5, %do.end.do.body8_crit_edge
  %timeout.addr.0 = phi i32 [ %add, %if.then5 ], [ -1, %do.end.do.body8_crit_edge ]
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp16160 = icmp sgt i32 %count, 0
  br i1 %cmp16160, label %while.cond20.preheader.lr.ph, label %do.body8.while.end86.thread_crit_edge

do.body8.while.end86.thread_crit_edge:            ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end86.thread

while.cond20.preheader.lr.ph:                     ; preds = %do.body8
  %dp_write_urb_in_use = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 4
  %write_wait = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 12
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 20
  %dp_out_buf_len = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 2
  %arrayidx63 = getelementptr i8, ptr %5, i32 1
  %add.ptr = getelementptr i8, ptr %5, i32 2
  %dp_out_buf = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 3
  br label %while.cond20.preheader

while.cond20.preheader:                           ; preds = %if.end85.while.cond20.preheader_crit_edge, %while.cond20.preheader.lr.ph
  %buf.addr.0163 = phi ptr [ %buf, %while.cond20.preheader.lr.ph ], [ %add.ptr84, %if.end85.while.cond20.preheader_crit_edge ]
  %count.addr.0162 = phi i32 [ %count, %while.cond20.preheader.lr.ph ], [ %sub83, %if.end85.while.cond20.preheader_crit_edge ]
  %flags.0161 = phi i32 [ %call11, %while.cond20.preheader.lr.ph ], [ %flags.1.lcssa, %if.end85.while.cond20.preheader_crit_edge ]
  %13 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dp_write_urb_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not157 = icmp eq i32 %14, 0
  br i1 %tobool21.not157, label %while.cond20.preheader.while.end_crit_edge, label %while.cond20.preheader.land.rhs22_crit_edge

while.cond20.preheader.land.rhs22_crit_edge:      ; preds = %while.cond20.preheader
  br label %land.rhs22

while.cond20.preheader.while.end_crit_edge:       ; preds = %while.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs22:                                       ; preds = %do.body35.land.rhs22_crit_edge, %while.cond20.preheader.land.rhs22_crit_edge
  %flags.1158 = phi i32 [ %call43, %do.body35.land.rhs22_crit_edge ], [ %flags.0161, %while.cond20.preheader.land.rhs22_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %15, %timeout.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp23 = icmp slt i32 %sub, 0
  br i1 %cmp23, label %while.body26, label %land.rhs22.while.end_crit_edge

land.rhs22.while.end_crit_edge:                   ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body26:                                     ; preds = %land.rhs22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #8
  %16 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wait.i, align 4
  %17 = call i32 @llvm.read_register.i32(metadata !177) #8
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %9, align 4
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @autoremove_wake_function, ptr %10, align 4
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %11, ptr %11, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %11, ptr %12, align 4
  call void @prepare_to_wait(ptr noundef %write_wait, ptr noundef nonnull %wait.i, i32 noundef 1) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.1158) #8
  %call5.i = call i32 @schedule_timeout(i32 noundef 10) #8
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %wait.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  %25 = call i32 @llvm.read_register.i32(metadata !177) #8
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stack.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body26.cleanup_crit_edge, !prof !188

while.body26.cleanup_crit_edge:                   ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %while.body26
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %30, align 4
  %and1.i.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool31.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool31.not, label %do.body35, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body35:                                        ; preds = %signal_pending.exit
  %call43 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %36 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dp_write_urb_in_use, align 4
  %tobool21.not = icmp eq i32 %37, 0
  br i1 %tobool21.not, label %do.body35.while.end_crit_edge, label %do.body35.land.rhs22_crit_edge

do.body35.land.rhs22_crit_edge:                   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs22

do.body35.while.end_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.body35.while.end_crit_edge, %land.rhs22.while.end_crit_edge, %while.cond20.preheader.while.end_crit_edge
  %flags.1.lcssa = phi i32 [ %flags.0161, %while.cond20.preheader.while.end_crit_edge ], [ %call43, %do.body35.while.end_crit_edge ], [ %flags.1158, %land.rhs22.while.end_crit_edge ]
  %38 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bulk_out_size, align 4
  %sub48 = add i32 %39, -2
  %40 = ptrtoint ptr %dp_out_buf_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dp_out_buf_len, align 4
  %sub49 = sub i32 %sub48, %41
  %42 = call i32 @llvm.smin.i32(i32 %count.addr.0162, i32 %sub49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp53 = icmp sgt i32 %42, 4
  %and = and i32 %42, -4
  %len.0 = select i1 %cmp53, i32 %and, i32 %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp58 = icmp sgt i32 %41, 0
  br i1 %cmp58, label %if.then60, label %if.else72

if.then60:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 18, ptr %5, align 1
  %44 = ptrtoint ptr %dp_out_buf_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dp_out_buf_len, align 4
  %conv62 = trunc i32 %45 to i8
  %46 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv62, ptr %arrayidx63, align 1
  %47 = load i32, ptr %dp_out_buf_len, align 4
  %48 = call ptr @memcpy(ptr %add.ptr, ptr %dp_out_buf, i32 %47)
  %49 = load i32, ptr %dp_out_buf_len, align 4
  %add.ptr67 = getelementptr i8, ptr %add.ptr, i32 %49
  %50 = call ptr @memcpy(ptr %add.ptr67, ptr %buf.addr.0163, i32 %len.0)
  %51 = load i32, ptr %dp_out_buf_len, align 4
  %add69 = add i32 %len.0, 2
  %add70 = add i32 %add69, %51
  br label %if.end75

if.else72:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %52 = call ptr @memcpy(ptr %5, ptr %buf.addr.0163, i32 %len.0)
  br label %if.end75

if.end75:                                         ; preds = %if.else72, %if.then60
  %len.0.sink = phi i32 [ %len.0, %if.else72 ], [ %add70, %if.then60 ]
  %53 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length74 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 19
  %55 = ptrtoint ptr %transfer_buffer_length74 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %len.0.sink, ptr %transfer_buffer_length74, align 4
  %56 = load ptr, ptr %write_urb, align 8
  %call77 = call i32 @usb_submit_urb(ptr noundef %56, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.end85, label %do.end92

if.end85:                                         ; preds = %if.end75
  %57 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %dp_write_urb_in_use, align 4
  %58 = ptrtoint ptr %dp_out_buf_len to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %dp_out_buf_len, align 4
  %sub83 = sub i32 %count.addr.0162, %len.0
  %add.ptr84 = getelementptr i8, ptr %buf.addr.0163, i32 %len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub83)
  %cmp16 = icmp sgt i32 %sub83, 0
  %or.cond = select i1 %cmp16, i1 %cmp78, i1 false
  br i1 %or.cond, label %if.end85.while.cond20.preheader_crit_edge, label %if.end85.while.end86.thread_crit_edge

if.end85.while.end86.thread_crit_edge:            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end86.thread

if.end85.while.cond20.preheader_crit_edge:        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond20.preheader

while.end86.thread:                               ; preds = %if.end85.while.end86.thread_crit_edge, %do.body8.while.end86.thread_crit_edge
  %flags.0.lcssa.ph = phi i32 [ %call11, %do.body8.while.end86.thread_crit_edge ], [ %flags.1.lcssa, %if.end85.while.end86.thread_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.0.lcssa.ph) #8
  br label %cleanup

do.end92:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.1.lcssa) #8
  %dev93 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %dp_port_num94 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %dp_port_num94 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dp_port_num94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.25, i32 noundef %call77, i32 noundef %60) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %while.end86.thread, %signal_pending.exit.cleanup_crit_edge, %while.body26.cleanup_crit_edge
  %retval.0 = phi i32 [ %call77, %do.end92 ], [ 0, %while.end86.thread ], [ -4, %signal_pending.exit.cleanup_crit_edge ], [ -4, %while.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digi_set_modem_signals(ptr noundef %port, i32 noundef %modem_signals) unnamed_addr #2 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %ds_oob_port = getelementptr inbounds %struct.digi_serial, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ds_oob_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds_oob_port, align 4
  %driver_data.i.i1 = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 32, i32 8
  %8 = ptrtoint ptr %driver_data.i.i1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i1, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_set_modem_signals.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_set_modem_signals, %if.then)) #8
          to label %do.body7 [label %if.then], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_set_modem_signals.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %15, i32 noundef %modem_signals) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  tail call void @_raw_spin_lock(ptr noundef %1) #8
  %dp_write_urb_in_use = getelementptr inbounds %struct.digi_port, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dp_write_urb_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not8 = icmp eq i32 %17, 0
  br i1 %tobool16.not8, label %do.body7.while.end_crit_edge, label %while.body.lr.ph

do.body7.while.end_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body7
  %write_wait = getelementptr inbounds %struct.digi_port, ptr %9, i32 0, i32 12
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  br label %while.body

while.body:                                       ; preds = %do.body27.while.body_crit_edge, %while.body.lr.ph
  %flags.09 = phi i32 [ %call10, %while.body.lr.ph ], [ %call35, %do.body27.while.body_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #8
  %22 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %wait.i, align 4
  %23 = call i32 @llvm.read_register.i32(metadata !177) #8
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %18, align 4
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @autoremove_wake_function, ptr %19, align 4
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %20, ptr %20, align 4
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %20, ptr %21, align 4
  call void @prepare_to_wait(ptr noundef %write_wait, ptr noundef nonnull %wait.i, i32 noundef 1) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %flags.09) #8
  %call5.i = call i32 @schedule_timeout(i32 noundef 10) #8
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %wait.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #8
  %31 = call i32 @llvm.read_register.i32(metadata !177) #8
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stack.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %39 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.cleanup_crit_edge, !prof !188

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %while.body
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %and1.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool23.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool23.not, label %do.body27, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body27:                                        ; preds = %signal_pending.exit
  %call35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  call void @_raw_spin_lock(ptr noundef %1) #8
  %42 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dp_write_urb_in_use, align 4
  %tobool16.not = icmp eq i32 %43, 0
  br i1 %tobool16.not, label %do.body27.while.end_crit_edge, label %do.body27.while.body_crit_edge

do.body27.while.body_crit_edge:                   ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.body27.while.end_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.body27.while.end_crit_edge, %do.body7.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call10, %do.body7.while.end_crit_edge ], [ %call35, %do.body27.while.end_crit_edge ]
  %44 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 6, ptr %13, align 1
  %dp_port_num41 = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %dp_port_num41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dp_port_num41, align 4
  %conv42 = trunc i32 %46 to i8
  %arrayidx43 = getelementptr i8, ptr %13, i32 1
  %47 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv42, ptr %arrayidx43, align 1
  %48 = trunc i32 %modem_signals to i8
  %49 = lshr i8 %48, 1
  %50 = and i8 %49, 1
  %arrayidx46 = getelementptr i8, ptr %13, i32 2
  %51 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx46, align 1
  %arrayidx47 = getelementptr i8, ptr %13, i32 3
  %52 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx47, align 1
  %arrayidx48 = getelementptr i8, ptr %13, i32 4
  %53 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 7, ptr %arrayidx48, align 1
  %54 = load i32, ptr %dp_port_num41, align 4
  %conv50 = trunc i32 %54 to i8
  %arrayidx51 = getelementptr i8, ptr %13, i32 5
  %55 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv50, ptr %arrayidx51, align 1
  %56 = lshr i8 %48, 2
  %57 = and i8 %56, 1
  %arrayidx56 = getelementptr i8, ptr %13, i32 6
  %58 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx56, align 1
  %arrayidx57 = getelementptr i8, ptr %13, i32 7
  %59 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx57, align 1
  %60 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %61, i32 0, i32 19
  %62 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8, ptr %transfer_buffer_length, align 4
  %63 = load ptr, ptr %write_urb, align 8
  %call60 = call i32 @usb_submit_urb(ptr noundef %63, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %do.end75.critedge

if.then63:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %dp_write_urb_in_use to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %dp_write_urb_in_use, align 4
  %dp_modem_signals = getelementptr inbounds %struct.digi_port, ptr %1, i32 0, i32 5
  %65 = ptrtoint ptr %dp_modem_signals to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dp_modem_signals, align 4
  %and65 = and i32 %66, -7
  %and66 = and i32 %modem_signals, 6
  %or = or i32 %and65, %and66
  store i32 %or, ptr %dp_modem_signals, align 4
  call void @_raw_spin_unlock(ptr noundef %1) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %flags.0.lcssa) #8
  br label %cleanup

do.end75.critedge:                                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %1) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %flags.0.lcssa) #8
  %dev76 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.36, i32 noundef %call60) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end75.critedge, %if.then63, %signal_pending.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call60, %do.end75.critedge ], [ 0, %if.then63 ], [ -4, %signal_pending.exit.cleanup_crit_edge ], [ -4, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digi_read_oob_callback(ptr nocapture noundef readonly %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp ult i32 %7, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp3180.not = icmp eq i32 %9, 3
  br i1 %cmp3180.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %type = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.0182 = phi ptr [ %1, %for.body.lr.ph ], [ %port.1, %for.inc.for.body_crit_edge ]
  %i.0181 = phi i32 [ 0, %for.body.lr.ph ], [ %add117, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %5, i32 %i.0181
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %add = or i32 %i.0181, 1
  %arrayidx4 = getelementptr i8, ptr %5, i32 %add
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %13 to i32
  %add6 = or i32 %i.0181, 2
  %arrayidx7 = getelementptr i8, ptr %5, i32 %add6
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7, align 1
  %add9 = or i32 %i.0181, 3
  %arrayidx10 = getelementptr i8, ptr %5, i32 %add9
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %17 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_read_oob_callback.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_read_oob_callback, %if.then14)) #8
          to label %do.end [label %if.then14], !srcloc !187

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %11 to i32
  %conv8 = zext i8 %15 to i32
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port.0182, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_read_oob_callback.__UNIQUE_ID_ddebug263, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv8, i32 noundef %conv11) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp16.not = icmp eq i8 %15, 0
  br i1 %cmp16.not, label %lor.lhs.false, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %do.end
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type, align 4
  %num_ports = getelementptr inbounds %struct.usb_serial_driver, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %21)
  %cmp19.not = icmp ult i8 %13, %21
  br i1 %cmp19.not, label %if.end22, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end22:                                         ; preds = %lor.lhs.false
  %arrayidx24 = getelementptr %struct.usb_serial, ptr %3, i32 0, i32 12, i32 %conv5
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx24, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 32, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %cmp26 = icmp eq ptr %25, null
  br i1 %cmp26, label %if.end22.cleanup_crit_edge, label %if.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %port30 = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 1
  %call31 = tail call ptr @tty_port_tty_get(ptr noundef %port30) #8
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.else91, label %if.end34

if.end34:                                         ; preds = %if.end29
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %call31, i32 0, i32 13, i32 2
  %26 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_cflag, align 4
  %28 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %11, label %if.end34.if.end116_crit_edge [
    i8 8, label %if.then38
    i8 13, label %if.end34.do.body96_crit_edge
    i8 9, label %if.end34.if.then113_crit_edge
  ]

if.end34.if.then113_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then113

if.end34.do.body96_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96

if.end34.if.end116_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then38:                                        ; preds = %if.end34
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %25) #8
  %and50 = and i32 %conv11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %dp_modem_signals56 = getelementptr inbounds %struct.digi_port, ptr %25, i32 0, i32 5
  %29 = ptrtoint ptr %dp_modem_signals56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dp_modem_signals56, align 4
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %30, 32
  %31 = ptrtoint ptr %dp_modem_signals56 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %dp_modem_signals56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool53.not = icmp slt i32 %27, 0
  br label %if.end58

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %and57 = and i32 %30, -33
  %32 = ptrtoint ptr %dp_modem_signals56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and57, ptr %dp_modem_signals56, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then52
  %wakeup.0.off0 = phi i1 [ false, %if.else ], [ %tobool53.not, %if.then52 ]
  %dp_modem_signals65 = getelementptr inbounds %struct.digi_port, ptr %25, i32 0, i32 5
  %33 = ptrtoint ptr %dp_modem_signals65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dp_modem_signals65, align 4
  %and66 = and i32 %34, -449
  %and59 = shl nuw nsw i32 %conv11, 3
  %35 = and i32 %and59, 256
  %and66.sink = or i32 %and66, %35
  %and68 = shl nuw nsw i32 %conv11, 1
  %36 = and i32 %and68, 128
  %and75.sink = or i32 %and66.sink, %36
  %dp_modem_signals83 = getelementptr inbounds %struct.digi_port, ptr %25, i32 0, i32 5
  %and77 = lshr i32 %conv11, 1
  %37 = and i32 %and77, 64
  %and84.sink = or i32 %and75.sink, %37
  %38 = ptrtoint ptr %dp_modem_signals83 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and84.sink, ptr %dp_modem_signals83, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %25, i32 noundef %call45) #8
  br i1 %wakeup.0.off0, label %if.then88, label %if.end58.if.end116_crit_edge

if.end58.if.end116_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then88:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_port_tty_wakeup(ptr noundef %port30) #8
  br label %if.end116

if.else91:                                        ; preds = %if.end29
  %39 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %11, label %if.else91.if.end116_crit_edge [
    i8 13, label %if.else91.do.body96_crit_edge
    i8 9, label %if.else91.if.then113_crit_edge
  ]

if.else91.if.then113_crit_edge:                   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then113

if.else91.do.body96_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96

if.else91.if.end116_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

do.body96:                                        ; preds = %if.else91.do.body96_crit_edge, %if.end34.do.body96_crit_edge
  %call104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %25) #8
  %dp_transmit_idle = getelementptr inbounds %struct.digi_port, ptr %25, i32 0, i32 6
  %40 = ptrtoint ptr %dp_transmit_idle to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %dp_transmit_idle, align 4
  %dp_transmit_idle_wait = getelementptr inbounds %struct.digi_port, ptr %25, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %dp_transmit_idle_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %25, i32 noundef %call104) #8
  br label %if.end116

if.then113:                                       ; preds = %if.else91.if.then113_crit_edge, %if.end34.if.then113_crit_edge
  %dp_flush_wait = getelementptr inbounds %struct.digi_port, ptr %25, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %dp_flush_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %do.body96, %if.else91.if.end116_crit_edge, %if.then88, %if.end58.if.end116_crit_edge, %if.end34.if.end116_crit_edge
  tail call void @tty_kref_put(ptr noundef %call31) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end116, %lor.lhs.false.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %port.1 = phi ptr [ %port.0182, %do.end.for.inc_crit_edge ], [ %port.0182, %lor.lhs.false.for.inc_crit_edge ], [ %23, %if.end116 ]
  %add117 = add i32 %i.0181, 4
  %41 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %actual_length, align 4
  %sub = add i32 %42, -3
  %cmp3 = icmp ult i32 %add117, %sub
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -1, %if.end22.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @digi_read_inb_callback(ptr nocapture noundef readonly %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp ult i32 %7, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  %conv = zext i8 %9 to i32
  %arrayidx1 = getelementptr i8, ptr %5, i32 1
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp4.not = icmp eq i32 %7, %add
  br i1 %cmp4.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %dp_port_num = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dp_port_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_port_num, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.58, i32 noundef %13, i32 noundef %conv, i32 noundef %conv2, i32 noundef %7) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %9)
  %cmp13 = icmp eq i8 %9, 19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp15 = icmp eq i8 %11, 0
  %or.cond = select i1 %cmp13, i1 %cmp15, i1 false
  br i1 %or.cond, label %do.end20, label %do.body24

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.61) #12
  br label %cleanup

do.body24:                                        ; preds = %if.end12
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %dp_throttled = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %dp_throttled to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_throttled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.body24.if.end34_crit_edge, label %if.then33

do.body24.if.end34_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %dp_throttle_restart = getelementptr inbounds %struct.digi_port, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %dp_throttle_restart to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dp_throttle_restart, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %do.body24.if.end34_crit_edge
  br i1 %cmp13, label %if.then37, label %if.end67

if.then37:                                        ; preds = %if.end34
  %arrayidx38 = getelementptr i8, ptr %5, i32 2
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %18 to i32
  %arrayidx40 = getelementptr i8, ptr %5, i32 3
  %and = and i32 %conv39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.then37.if.end45_crit_edge, label %if.then42

if.then37.if.end45_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.then37
  %port43 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 0, i32 8
  %19 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then42.if.end12.i_crit_edge

if.then42.if.end12.i_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then42
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp3.i = icmp slt i32 %24, %26
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %20, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %24
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %26
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %add.ptr.i.i, align 1
  %28 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %29
  %30 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end45

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then42.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port43, i8 noundef zeroext 0, i8 noundef zeroext 4) #8
  br label %if.end45

if.end45:                                         ; preds = %if.end12.i, %if.end.i, %if.then37.if.end45_crit_edge
  %and46 = and i32 %conv39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else, label %if.end45.if.end58_crit_edge

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.else:                                          ; preds = %if.end45
  %and49 = and i32 %conv39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else52, label %if.else.if.end58_crit_edge

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.else52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and53 = lshr i8 %18, 3
  %31 = and i8 %and53, 2
  br label %if.end58

if.end58:                                         ; preds = %if.else52, %if.else.if.end58_crit_edge, %if.end45.if.end58_crit_edge
  %tty_flag.0 = phi i8 [ 1, %if.end45.if.end58_crit_edge ], [ 3, %if.else.if.end58_crit_edge ], [ %31, %if.else52 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp59 = icmp ugt i8 %11, 1
  br i1 %cmp59, label %if.then61, label %if.end58.if.end67.thread_crit_edge

if.end58.if.end67.thread_crit_edge:               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.thread

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add nsw i32 %conv2, -1
  %port62 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %call64 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port62, ptr noundef %arrayidx40, i8 noundef zeroext %tty_flag.0, i32 noundef %dec) #8
  tail call void @tty_flip_buffer_push(ptr noundef %port62) #8
  br label %if.end67.thread

if.end67.thread:                                  ; preds = %if.then61, %if.end58.if.end67.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call28) #8
  br label %if.end105

if.end67:                                         ; preds = %if.end34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call28) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %9)
  %cond154 = icmp eq i8 %9, 20
  br i1 %cond154, label %do.body72, label %do.body87

do.body72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_read_inb_callback.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_read_inb_callback, %if.then78)) #8
          to label %if.end105 [label %if.then78], !srcloc !187

if.then78:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %dev79 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_read_inb_callback.__UNIQUE_ID_ddebug261, ptr noundef %dev79, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.55) #8
  br label %if.end105

do.body87:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @digi_read_inb_callback.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@digi_read_inb_callback, %if.then99)) #8
          to label %if.end105 [label %if.then99], !srcloc !187

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  %dev100 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @digi_read_inb_callback.__UNIQUE_ID_ddebug262, ptr noundef %dev100, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.55, i32 noundef %conv) #8
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %do.body87, %if.then78, %do.body72, %if.end67.thread
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %do.end20, %do.end9, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end9 ], [ -1, %do.end20 ], [ %cond, %if.end105 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !173, !175}
!llvm.named.register.sp = !{!177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_digi_acceleport__264_1528_usb_serial_module_init6, !1, !"__initcall__kmod_digi_acceleport__264_1528_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1528, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author265, !4, !"__UNIQUE_ID_author265", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1530, i32 1}
!5 = !{ptr @__UNIQUE_ID_description266, !6, !"__UNIQUE_ID_description266", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1531, i32 1}
!7 = !{ptr @__UNIQUE_ID_file267, !8, !"__UNIQUE_ID_file267", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1532, i32 1}
!9 = !{ptr @__UNIQUE_ID_license268, !8, !"__UNIQUE_ID_license268", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table_combined, !12, !"id_table_combined", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 242, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 323, i32 41}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 267, i32 19}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 265, i32 13}
!19 = !{ptr @digi_acceleport_2_device, !20, !"digi_acceleport_2_device", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 262, i32 33}
!21 = !{ptr @id_table_2, !22, !"id_table_2", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 248, i32 35}
!23 = !{ptr @digi_startup.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1237, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @digi_port_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1215, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @digi_port_init.__key.5, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1217, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @digi_port_init.__key.7, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1218, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @digi_port_init.__key.9, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1219, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @digi_port_init.__key.11, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1220, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1092, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @digi_open.__UNIQUE_ID_ddebug259, !42, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1198, i32 4}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @digi_startup_device._entry, !47, !"_entry", i1 false, i1 false}
!52 = !{ptr @digi_startup_device._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 377, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @digi_write_oob_command.__UNIQUE_ID_ddebug238, !54, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 407, i32 3}
!59 = !{ptr @digi_write_oob_command._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @digi_write_oob_command._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1151, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @digi_close.__UNIQUE_ID_ddebug260, !62, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 435, i32 2}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @digi_write_inb_command.__UNIQUE_ID_ddebug241, !66, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!69 = !{ptr @digi_write_inb_command._entry, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 488, i32 3}
!71 = !{ptr @digi_write_inb_command._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 891, i32 2}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @digi_write.__UNIQUE_ID_ddebug248, !73, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!76 = distinct !{null, !77, !"__print_once", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 947, i32 3}
!78 = !{ptr @digi_write._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @digi_write._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 950, i32 2}
!82 = !{ptr @digi_write.__UNIQUE_ID_ddebug255, !81, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1037, i32 2}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @digi_write_room.__UNIQUE_ID_ddebug257, !84, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 666, i32 2}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @digi_set_termios.__UNIQUE_ID_ddebug245, !88, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 743, i32 4}
!93 = distinct !{null, !92, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 835, i32 3}
!96 = !{ptr @digi_set_termios.__UNIQUE_ID_ddebug247, !95, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 516, i32 2}
!99 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @digi_set_modem_signals.__UNIQUE_ID_ddebug244, !98, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!101 = !{ptr @digi_set_modem_signals._entry, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 556, i32 3}
!103 = !{ptr @digi_set_modem_signals._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1056, i32 2}
!106 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @digi_chars_in_buffer.__UNIQUE_ID_ddebug258, !105, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 645, i32 3}
!110 = !{ptr @digi_rx_unthrottle._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @digi_rx_unthrottle._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1305, i32 3}
!114 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @digi_read_bulk_callback._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @digi_read_bulk_callback._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1311, i32 3}
!119 = !{ptr @digi_read_bulk_callback._entry.43, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @digi_read_bulk_callback._entry_ptr.45, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1318, i32 3}
!123 = !{ptr @digi_read_bulk_callback._entry.46, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @digi_read_bulk_callback._entry_ptr.48, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1336, i32 3}
!127 = !{ptr @digi_read_bulk_callback._entry.49, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @digi_read_bulk_callback._entry_ptr.51, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1466, i32 3}
!131 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @digi_read_oob_callback.__UNIQUE_ID_ddebug263, !130, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1367, i32 3}
!135 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @digi_read_inb_callback._entry, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @digi_read_inb_callback._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1375, i32 3}
!141 = !{ptr @digi_read_inb_callback._entry.57, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @digi_read_inb_callback._entry_ptr.59, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1381, i32 3}
!145 = !{ptr @digi_read_inb_callback._entry.60, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @digi_read_inb_callback._entry_ptr.62, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1425, i32 3}
!149 = !{ptr @digi_read_inb_callback.__UNIQUE_ID_ddebug261, !148, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1427, i32 3}
!152 = !{ptr @digi_read_inb_callback.__UNIQUE_ID_ddebug262, !151, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 969, i32 3}
!155 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @digi_write_bulk_callback._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @digi_write_bulk_callback._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 975, i32 3}
!160 = !{ptr @digi_write_bulk_callback._entry.67, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @digi_write_bulk_callback._entry_ptr.69, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 983, i32 3}
!164 = !{ptr @digi_write_bulk_callback.__UNIQUE_ID_ddebug256, !163, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!165 = distinct !{null, !166, !"__print_once", i1 false, i1 false}
!166 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 1014, i32 3}
!167 = !{ptr @digi_write_bulk_callback._entry.71, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @digi_write_bulk_callback._entry_ptr.72, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 298, i32 19}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 296, i32 13}
!173 = !{ptr @digi_acceleport_4_device, !174, !"digi_acceleport_4_device", i1 false, i1 false}
!174 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 293, i32 33}
!175 = !{ptr @id_table_4, !176, !"id_table_4", i1 false, i1 false}
!176 = !{!"../drivers/usb/serial/digi_acceleport.c", i32 253, i32 35}
!177 = !{!"sp"}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i64 2148732973, i64 2148732978, i64 2148732991, i64 2148733035, i64 2148733069, i64 2148733090}
!188 = !{!"branch_weights", i32 2000, i32 1}
