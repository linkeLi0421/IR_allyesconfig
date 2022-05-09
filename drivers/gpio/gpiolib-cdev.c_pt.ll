; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpiolib-cdev.c_pt.bc'
source_filename = "../drivers/gpio/gpiolib-cdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.70, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.70 = type { ptr }
%struct.gpio_v2_line_info_changed = type { %struct.gpio_v2_line_info, i64, i32, [5 x i32] }
%struct.gpio_v2_line_info = type { [32 x i8], [32 x i8], i32, i32, i64, [10 x %struct.gpio_v2_line_attribute], [4 x i32] }
%struct.gpio_v2_line_attribute = type { i32, i32, %union.anon.78 }
%union.anon.78 = type { i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.gpioline_info_changed = type { %struct.gpioline_info, i64, i32, [5 x i32] }
%struct.gpioline_info = type { i32, i32, [32 x i8], [32 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.gpio_chardev_data = type { ptr, %struct.wait_queue_head, %struct.anon.76, %struct.notifier_block, ptr, %struct.atomic_t }
%struct.anon.76 = type { %union.anon.77, [32 x %struct.gpio_v2_line_info_changed] }
%union.anon.77 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.gpioevent_request = type { i32, i32, i32, [32 x i8], i32 }
%struct.gpiochip_info = type { [32 x i8], [32 x i8], i32 }
%struct.lineevent_state = type { ptr, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.anon.79, i64 }
%struct.anon.79 = type { %union.anon.80, [16 x %struct.gpioevent_data] }
%union.anon.80 = type { %struct.__kfifo }
%struct.gpioevent_data = type { i64, i32 }
%struct.gpio_desc = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.74 = type { ptr }
%struct.gpiohandle_request = type { [64 x i32], i32, [64 x i8], [32 x i8], i32, i32 }
%struct.linehandle_state = type { ptr, ptr, [64 x ptr], i32 }
%struct.gpio_v2_line_request = type { [64 x i32], [32 x i8], %struct.gpio_v2_line_config, i32, i32, [5 x i32], i32 }
%struct.gpio_v2_line_config = type { i64, i32, [5 x i32], [10 x %struct.gpio_v2_line_config_attribute] }
%struct.gpio_v2_line_config_attribute = type { %struct.gpio_v2_line_attribute, i64 }
%struct.linereq = type { ptr, ptr, i32, %struct.wait_queue_head, i32, %struct.anon.81, %struct.atomic_t, %struct.mutex, [0 x %struct.line] }
%struct.anon.81 = type { %union.anon.82, [0 x %struct.gpio_v2_line_event] }
%union.anon.82 = type { %struct.__kfifo }
%struct.gpio_v2_line_event = type { i64, i32, i32, i32, i32, [6 x i32] }
%struct.line = type { ptr, ptr, i32, i64, i64, i32, i32, %struct.delayed_work, i32, i32 }
%struct.gpiohandle_config = type { i32, [64 x i8], [4 x i32] }
%struct.gpiohandle_data = type { [64 x i8] }
%struct.gpio_v2_line_values = type { i64, i64 }

@gpio_fileops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @lineinfo_watch_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lineinfo_watch_poll, ptr @gpio_ioctl, ptr null, ptr null, i32 0, ptr @gpio_chrdev_open, ptr null, ptr @gpio_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gpiolib_cdev_register.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpiolib_cdev\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpiolib_cdev_register\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpiolib-cdev.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(%s): added GPIO chardev (%d:%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@linehandle_create.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linehandle_create\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"registered chardev handle for line %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-linehandle\00", [16 x i8] zeroinitializer }, align 32
@linehandle_fileops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @linehandle_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @linehandle_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@linehandle_create.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 0, i8 98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"registered chardev handle for %d lines\0A\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lineevent_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&le->wait\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio-event\00", [21 x i8] zeroinitializer }, align 32
@lineevent_fileops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @lineevent_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lineevent_poll, ptr @lineevent_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @lineevent_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@lineevent_irq_thread._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@lineevent_irq_thread.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 1, i8 -90, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lineevent_irq_thread\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"event FIFO is full - event dropped\0A\00", [60 x i8] zeroinitializer }, align 32
@gpio_lock = external dso_local global %struct.spinlock, align 4
@linereq_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&lr->lines[i].work)->work)\00", [49 x i8] zeroinitializer }, align 32
@linereq_create.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&lr->lines[i].work)->timer\00", [35 x i8] zeroinitializer }, align 32
@linereq_create.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&lr->config_mutex\00", [46 x i8] zeroinitializer }, align 32
@linereq_create.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lr->wait\00", [22 x i8] zeroinitializer }, align 32
@linereq_create.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.8, i8 1, i8 98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linereq_create\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-line\00", [22 x i8] zeroinitializer }, align 32
@line_fileops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @linereq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @linereq_poll, ptr @linereq_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @linereq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@linereq_create.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.10, i8 1, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@debounce_work_func._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@debounce_work_func.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -92, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"debounce_work_func\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"debouncer failed to read line value\0A\00", [59 x i8] zeroinitializer }, align 32
@linereq_put_event._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@linereq_put_event.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.15, i8 0, i8 -122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linereq_put_event\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gpio_chrdev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cdev->wait\00", [20 x i8] zeroinitializer }, align 32
@lineinfo_changed_notify._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lineinfo_changed_notify.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 2, i8 31, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lineinfo_changed_notify\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"lineinfo event FIFO is full - event dropped\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 2151986177, i64 3221533708, i64 3224417284, i64 3225990146, i64 3225990155, i64 3238048773, i64 3238048774, i64 3245126659, i64 3260068871]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 3225465864, i64 3225465865, i64 3226776586]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 64, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 3222320142, i64 3222320143, i64 3239097357]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"gpio_fileops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 2344, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 2369, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 174, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 362, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 372, i32 28 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"linehandle_fileops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 275, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 394, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1798, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1816, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"lineevent_fileops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1634, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1689, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1347, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1360, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1361, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1417, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1427, i32 28 }
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"line_fileops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1301, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 659, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 538, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 2295, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [31 x i8] c"../drivers/gpio/gpiolib-cdev.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 2174, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @gpio_fileops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @linehandle_fileops, ptr @.str.10, ptr @lineevent_create.__key, ptr @.str.11, ptr @.str.12, ptr @lineevent_fileops, ptr @lineevent_irq_thread._rs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @linereq_create.__key, ptr @.str.16, ptr @linereq_create.__key.17, ptr @.str.18, ptr @linereq_create.__key.19, ptr @.str.20, ptr @linereq_create.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @line_fileops, ptr @debounce_work_func._rs, ptr @.str.25, ptr @.str.26, ptr @linereq_put_event._rs, ptr @.str.27, ptr @gpio_chrdev_open.__key, ptr @.str.28, ptr @lineinfo_changed_notify._rs, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fileops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linehandle_fileops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lineevent_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lineevent_fileops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lineevent_irq_thread._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linereq_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linereq_create.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linereq_create.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linereq_create.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line_fileops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debounce_work_func._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linereq_put_event._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_chrdev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lineinfo_changed_notify._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpiolib_cdev_register(ptr noundef %gdev, i32 noundef %devt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chrdev = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 2
  tail call void @cdev_init(ptr noundef %chrdev, ptr noundef nonnull @gpio_fileops) #9
  %owner = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %owner, align 8
  %shr = lshr i32 %devt, 20
  %shl = and i32 %devt, -1048576
  %1 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gdev, align 8
  %or = or i32 %2, %shl
  %dev = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 1
  %devt2 = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 1, i32 29
  %3 = ptrtoint ptr %devt2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %devt2, align 8
  %call = tail call i32 @cdev_device_add(ptr noundef %chrdev, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpiolib_cdev_register.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpiolib_cdev_register, %cleanup)) #9
          to label %if.then10 [label %cleanup], !srcloc !92

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %chip = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 5
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %gpiodev = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %gpiodev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiodev, align 4
  %dev11 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpiolib_cdev_register.__UNIQUE_ID_ddebug265, ptr noundef %dev11, ptr noundef nonnull @.str.3, ptr noundef %9, i32 noundef %shr, i32 noundef %11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gpiolib_cdev_unregister(ptr noundef %gdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chrdev = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 2
  %dev = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %chrdev, ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lineinfo_watch_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %off) #0 align 64 {
entry:
  %event = alloca %struct.gpio_v2_line_info_changed, align 8
  %__wait = alloca %struct.wait_queue_entry, align 4
  %event_v1 = alloca %struct.gpioline_info_changed, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %event) #9
  %2 = call ptr @memset(ptr %event, i32 255, i32 288)
  %wait = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 1
  %events = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 2
  %out = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %watch_abi_version = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 5
  %flags.i.i = getelementptr inbounds %struct.gpio_v2_line_info, ptr %event, i32 0, i32 4
  %name.i.i = getelementptr inbounds %struct.gpioline_info, ptr %event_v1, i32 0, i32 2
  %consumer.i.i = getelementptr inbounds %struct.gpioline_info, ptr %event_v1, i32 0, i32 3
  %consumer4.i.i = getelementptr inbounds %struct.gpio_v2_line_info, ptr %event, i32 0, i32 1
  %offset.i.i = getelementptr inbounds %struct.gpio_v2_line_info, ptr %event, i32 0, i32 2
  %flags6.i.i = getelementptr inbounds %struct.gpioline_info, ptr %event_v1, i32 0, i32 1
  %timestamp_ns.i = getelementptr inbounds %struct.gpio_v2_line_info_changed, ptr %event, i32 0, i32 1
  %timestamp.i = getelementptr inbounds %struct.gpioline_info_changed, ptr %event_v1, i32 0, i32 1
  %event_type.i = getelementptr inbounds %struct.gpio_v2_line_info_changed, ptr %event, i32 0, i32 2
  %event_type2.i = getelementptr inbounds %struct.gpioline_info_changed, ptr %event_v1, i32 0, i32 2
  %7 = getelementptr inbounds i8, ptr %__wait, i32 4
  %8 = getelementptr inbounds i8, ptr %event_v1, i32 72
  br label %do.body

do.body:                                          ; preds = %if.end139.do.body_crit_edge, %entry
  %bytes_read.0 = phi i32 [ 0, %entry ], [ %add, %if.end139.do.body_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %wait) #9
  %9 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %events, align 8
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp eq i32 %10, %12
  br i1 %cmp, label %if.then, label %do.body.if.end104_crit_edge

do.body.if.end104_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_read.0)
  %tobool1.not = icmp eq i32 %bytes_read.0, 0
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %wait) #9
  br label %cleanup145

if.end:                                           ; preds = %if.then
  %13 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_flags, align 4
  %and = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %cond.false, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %wait) #9
  br label %cleanup145

cond.false:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #9
  %15 = call ptr @memset(ptr %7, i32 255, i32 16)
  %16 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %__wait, align 4
  %17 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %3, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @autoremove_wake_function, ptr %4, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %5, ptr %5, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %5, ptr %6, align 4
  br label %do.body21

do.body21:                                        ; preds = %do.cond.do.body21_crit_edge, %cond.false
  %call23 = call i32 @do_wait_intr(ptr noundef %wait, ptr noundef nonnull %__wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.cond, label %do.body21.do.end_crit_edge

do.body21.do.end_crit_edge:                       ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond:                                          ; preds = %do.body21
  %25 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %events, align 8
  %27 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out, align 4
  %cmp32 = icmp eq i32 %26, %28
  br i1 %cmp32, label %do.cond.do.body21_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond.do.body21_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body21.do.end_crit_edge
  %call.i.i.i198 = call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i.i198, label %if.end.i.i.i, label %do.end.__remove_wait_queue.exit_crit_edge

do.end.__remove_wait_queue.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__remove_wait_queue.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %6, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i, %do.end.__remove_wait_queue.exit_crit_edge
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  br label %__here

__here:                                           ; preds = %__remove_wait_queue.exit
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 212
  %39 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 ptrtoint (ptr blockaddress(@lineinfo_watch_read, %__here) to i32), ptr %task_state_change, align 4
  %40 = load ptr, ptr %task, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %40, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #9
  br i1 %tobool24.not, label %__here.if.end104_crit_edge, label %if.then100

__here.if.end104_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then100:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %wait) #9
  br label %cleanup145

if.end104:                                        ; preds = %__here.if.end104_crit_edge, %do.body.if.end104_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %watch_abi_version, i32 noundef 4) #9
  %42 = ptrtoint ptr %watch_abi_version to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %watch_abi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp106 = icmp eq i32 %43, 2
  %. = select i1 %cmp106, i32 288, i32 104
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %count)
  %cmp110 = icmp ugt i32 %., %count
  br i1 %cmp110, label %if.then112, label %if.end115

if.then112:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %wait) #9
  br label %cleanup145

if.end115:                                        ; preds = %if.end104
  %call118 = call i32 @__kfifo_out(ptr noundef %events, ptr noundef nonnull %event, i32 noundef 1) #9
  call void @_raw_spin_unlock(ptr noundef %wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call118)
  %cmp122.not = icmp eq i32 %call118, 1
  br i1 %cmp122.not, label %if.end125, label %if.end115.cleanup145_crit_edge

if.end115.cleanup145_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup145

if.end125:                                        ; preds = %if.end115
  br i1 %cmp106, label %if.then128, label %if.else133

if.then128:                                       ; preds = %if.end125
  %add.ptr = getelementptr i8, ptr %buf, i32 %bytes_read.0
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i184 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i184, label %if.then128.cleanup145_crit_edge, label %if.end.i.i

if.then128.cleanup145_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup145

if.end.i.i:                                       ; preds = %if.then128
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 288, i32 -1226833920) #12, !srcloc !93
  %asmresult.i.i = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup145_crit_edge

if.end.i.i.cleanup145_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup145

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event, i32 noundef 288) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %event, i32 noundef 288) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool130.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool130.not, label %copy_to_user.exit.if.end139_crit_edge, label %copy_to_user.exit.cleanup145_crit_edge

copy_to_user.exit.cleanup145_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup145

copy_to_user.exit.if.end139_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.else133:                                       ; preds = %if.end125
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %event_v1) #9
  %45 = call ptr @memset(ptr %8, i32 0, i32 32)
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %flags.i.i, align 8
  %48 = call ptr @memcpy(ptr %name.i.i, ptr %event, i32 32)
  %49 = call ptr @memcpy(ptr %consumer.i.i, ptr %consumer4.i.i, i32 32)
  %50 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset.i.i, align 8
  %52 = ptrtoint ptr %event_v1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %event_v1, align 8
  %53 = trunc i64 %47 to i32
  %54 = and i32 %53, 1
  %55 = lshr i32 %53, 2
  %56 = and i32 %55, 2
  %57 = or i32 %56, %54
  %58 = shl i32 %53, 1
  %59 = and i32 %58, 4
  %60 = or i32 %57, %59
  %61 = lshr i32 %53, 3
  %62 = and i32 %61, 8
  %63 = or i32 %62, %60
  %64 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %flags6.i.i, align 4
  %and26.i.i = and i64 %47, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26.i.i)
  %tobool27.not.i.i = icmp eq i64 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.else133.if.end31.i.i_crit_edge, label %if.then28.i.i

if.else133.if.end31.i.i_crit_edge:                ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i.i

if.then28.i.i:                                    ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags6.i.i, align 4
  %or30.i.i = or i32 %66, 16
  store i32 %or30.i.i, ptr %flags6.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then28.i.i, %if.else133.if.end31.i.i_crit_edge
  %and32.i.i = and i64 %47, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32.i.i)
  %tobool33.not.i.i = icmp eq i64 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end31.i.i.if.end37.i.i_crit_edge, label %if.then34.i.i

if.end31.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.then34.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags6.i.i, align 4
  %or36.i.i = or i32 %68, 32
  store i32 %or36.i.i, ptr %flags6.i.i, align 4
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then34.i.i, %if.end31.i.i.if.end37.i.i_crit_edge
  %and38.i.i = and i64 %47, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38.i.i)
  %tobool39.not.i.i = icmp eq i64 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end37.i.i.if.end43.i.i_crit_edge, label %if.then40.i.i

if.end37.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i.i

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags6.i.i, align 4
  %or42.i.i = or i32 %70, 64
  store i32 %or42.i.i, ptr %flags6.i.i, align 4
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then40.i.i, %if.end37.i.i.if.end43.i.i_crit_edge
  %and44.i.i = and i64 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and44.i.i)
  %tobool45.not.i.i = icmp eq i64 %and44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end43.i.i.if.end59.i.i188_crit_edge, label %if.then46.i.i

if.end43.i.i.if.end59.i.i188_crit_edge:           ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i188

if.then46.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags6.i.i, align 4
  %or48.i.i = or i32 %72, 128
  store i32 %or48.i.i, ptr %flags6.i.i, align 4
  br label %if.end59.i.i188

if.end59.i.i188:                                  ; preds = %if.then46.i.i, %if.end43.i.i.if.end59.i.i188_crit_edge
  %73 = ptrtoint ptr %timestamp_ns.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %timestamp_ns.i, align 8
  %75 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %timestamp.i, align 8
  %76 = ptrtoint ptr %event_type.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %event_type.i, align 8
  %78 = ptrtoint ptr %event_type2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %event_type2.i, align 8
  %add.ptr134 = getelementptr i8, ptr %buf, i32 %bytes_read.0
  call void @__check_object_size(ptr noundef nonnull %event_v1, i32 noundef %., i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i189 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i189, label %if.end59.i.i188.copy_to_user.exit197.thread_crit_edge, label %if.end.i.i192

if.end59.i.i188.copy_to_user.exit197.thread_crit_edge: ; preds = %if.end59.i.i188
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit197.thread

if.end.i.i192:                                    ; preds = %if.end59.i.i188
  %79 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr134, i32 %., i32 -1226833920) #12, !srcloc !93
  %asmresult.i.i190 = extractvalue { i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i190)
  %cmp.i6.i191 = icmp eq i32 %asmresult.i.i190, 0
  br i1 %cmp.i6.i191, label %copy_to_user.exit197, label %if.end.i.i192.copy_to_user.exit197.thread_crit_edge

if.end.i.i192.copy_to_user.exit197.thread_crit_edge: ; preds = %if.end.i.i192
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit197.thread

copy_to_user.exit197.thread:                      ; preds = %if.end.i.i192.copy_to_user.exit197.thread_crit_edge, %if.end59.i.i188.copy_to_user.exit197.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %event_v1) #9
  br label %cleanup145

copy_to_user.exit197:                             ; preds = %if.end.i.i192
  %call.i.i.i193 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event_v1, i32 noundef %.) #9
  %call.i12.i.i194 = call i32 @arm_copy_to_user(ptr noundef %add.ptr134, ptr noundef nonnull %event_v1, i32 noundef %.) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i194)
  %tobool136.not = icmp eq i32 %call.i12.i.i194, 0
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %event_v1) #9
  br i1 %tobool136.not, label %copy_to_user.exit197.if.end139_crit_edge, label %copy_to_user.exit197.cleanup145_crit_edge

copy_to_user.exit197.cleanup145_crit_edge:        ; preds = %copy_to_user.exit197
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup145

copy_to_user.exit197.if.end139_crit_edge:         ; preds = %copy_to_user.exit197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.end139:                                        ; preds = %copy_to_user.exit197.if.end139_crit_edge, %copy_to_user.exit.if.end139_crit_edge
  %add = add i32 %., %bytes_read.0
  %add141 = add i32 %add, 288
  %cmp142.not = icmp ugt i32 %add141, %count
  br i1 %cmp142.not, label %if.end139.cleanup145_crit_edge, label %if.end139.do.body_crit_edge

if.end139.do.body_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end139.cleanup145_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup145

cleanup145:                                       ; preds = %if.end139.cleanup145_crit_edge, %copy_to_user.exit197.cleanup145_crit_edge, %copy_to_user.exit197.thread, %copy_to_user.exit.cleanup145_crit_edge, %if.end.i.i.cleanup145_crit_edge, %if.then128.cleanup145_crit_edge, %if.end115.cleanup145_crit_edge, %if.then112, %if.then100, %if.then6, %if.then2
  %retval.3 = phi i32 [ %bytes_read.0, %if.then2 ], [ -11, %if.then6 ], [ %call23, %if.then100 ], [ -22, %if.then112 ], [ -14, %copy_to_user.exit197.thread ], [ -14, %if.end.i.i.cleanup145_crit_edge ], [ -14, %if.then128.cleanup145_crit_edge ], [ %bytes_read.0, %if.end115.cleanup145_crit_edge ], [ %add, %if.end139.cleanup145_crit_edge ], [ -14, %copy_to_user.exit.cleanup145_crit_edge ], [ -14, %copy_to_user.exit197.cleanup145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %event) #9
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lineinfo_watch_poll(ptr noundef %file, ptr noundef %pollt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %pollt, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %pollt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pollt, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait, ptr noundef nonnull %pollt) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %wait) #9
  %events2 = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %events2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %events2, align 8
  %out = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  tail call void @_raw_spin_unlock(ptr noundef %wait) #9
  %spec.select = select i1 %cmp, i32 0, i32 65
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %offset.i133 = alloca i32, align 4
  %lineinfo.i96 = alloca %struct.gpio_v2_line_info, align 8
  %lineinfo.i = alloca %struct.gpioline_info, align 4
  %lineinfo_v2.i = alloca %struct.gpio_v2_line_info, align 8
  %eventreq.i = alloca %struct.gpioevent_request, align 4
  %chipinfo.i = alloca %struct.gpiochip_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = inttoptr i32 %arg to ptr
  %chip = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 -2142981119, label %if.then2
    i32 -1049840637, label %if.then4
    i32 -1070550012, label %if.then8
    i32 -1068977150, label %if.end.if.then13_crit_edge
    i32 -1068977141, label %if.end.if.then13_crit_edge161
    i32 -1056918523, label %if.end.if.then20_crit_edge
    i32 -1056918522, label %if.end.if.then20_crit_edge162
    i32 -1034898425, label %if.then25
    i32 -1073433588, label %if.then29
  ]

if.end.if.then20_crit_edge162:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end.if.then13_crit_edge161:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %chipinfo.i) #9
  %8 = call ptr @memset(ptr %chipinfo.i, i32 0, i32 68)
  %init_name.i.i = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then2.dev_name.exit.i_crit_edge

if.then2.dev_name.exit.i_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then2.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then2.dev_name.exit.i_crit_edge ]
  %call2.i = call i32 @strscpy(ptr noundef nonnull %chipinfo.i, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  %label.i = getelementptr inbounds %struct.gpiochip_info, ptr %chipinfo.i, i32 0, i32 1
  %label4.i = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %label4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %label4.i, align 8
  %call5.i = call i32 @strscpy(ptr noundef %label.i, ptr noundef %14, i32 noundef 32) #9
  %ngpio.i = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %16 to i32
  %lines.i = getelementptr inbounds %struct.gpiochip_info, ptr %chipinfo.i, i32 0, i32 2
  %17 = ptrtoint ptr %lines.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %lines.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %dev_name.exit.i.chipinfo_get.exit_crit_edge, label %if.end.i.i.i

dev_name.exit.i.chipinfo_get.exit_crit_edge:      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chipinfo_get.exit

if.end.i.i.i:                                     ; preds = %dev_name.exit.i
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 68, i32 -1226833920) #12, !srcloc !93
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.chipinfo_get.exit_crit_edge

if.end.i.i.i.chipinfo_get.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chipinfo_get.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %chipinfo.i, i32 noundef 68) #9
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %chipinfo.i, i32 noundef 68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %chipinfo_get.exit

chipinfo_get.exit:                                ; preds = %copy_to_user.exit.i, %if.end.i.i.i.chipinfo_get.exit_crit_edge, %dev_name.exit.i.chipinfo_get.exit_crit_edge
  %19 = phi i32 [ -14, %dev_name.exit.i.chipinfo_get.exit_crit_edge ], [ -14, %if.end.i.i.i.chipinfo_get.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %chipinfo.i) #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @linehandle_create(ptr noundef %3, ptr noundef %4)
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %eventreq.i) #9
  %20 = call ptr @memset(ptr %eventreq.i, i32 255, i32 48)
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i.i63 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i63, label %if.then8.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then8.if.then11.i.i.i_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then8
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 48, i32 -1226833920) #12
  %asmresult.i.i.i64 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i64)
  %cmp.i6.i.i65 = icmp eq i32 %asmresult.i.i.i64, 0
  br i1 %cmp.i6.i.i65, label %if.end.i.i.i67, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !94

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i67:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %eventreq.i, i32 noundef 48) #9
  %22 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !95
  %and.i.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %eventreq.i, ptr noundef %4, i32 noundef 48) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i67.if.then11.i.i.i_crit_edge, !prof !94

if.end.i.i.i67.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i67.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then8.if.then11.i.i.i_crit_edge
  %res.0.i.i196.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i67.if.then11.i.i.i_crit_edge ], [ 48, %if.then8.if.then11.i.i.i_crit_edge ], [ 48, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 48, %res.0.i.i196.i
  %add.ptr.i.i.i = getelementptr i8, ptr %eventreq.i, i32 %sub.i.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i196.i)
  br label %lineevent_create.exit

if.end.i:                                         ; preds = %if.end.i.i.i67
  %26 = ptrtoint ptr %eventreq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eventreq.i, align 4
  %handleflags.i = getelementptr inbounds %struct.gpioevent_request, ptr %eventreq.i, i32 0, i32 1
  %28 = ptrtoint ptr %handleflags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %handleflags.i, align 4
  %eventflags.i = getelementptr inbounds %struct.gpioevent_request, ptr %eventreq.i, i32 0, i32 2
  %30 = ptrtoint ptr %eventflags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %eventflags.i, align 4
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 8
  %call1.i = call ptr @gpiochip_get_desc(ptr noundef %33, i32 noundef %27) #9
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call1.i to i32
  br label %lineevent_create.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %29)
  %tobool6.not.i = icmp ult i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %tobool8.not.i = icmp ult i32 %31, 4
  %or.cond.i = select i1 %tobool6.not.i, i1 %tobool8.not.i, i1 false
  %35 = and i32 %29, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %36 = icmp eq i32 %35, 0
  %or.cond202.i = and i1 %36, %or.cond.i
  br i1 %or.cond202.i, label %if.end20.i, label %if.end5.i.lineevent_create.exit_crit_edge

if.end5.i.lineevent_create.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineevent_create.exit

if.end20.i:                                       ; preds = %if.end5.i
  %and21.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp ne i32 %and21.i, 0
  %and23.i = and i32 %29, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp ne i32 %and23.i, 0
  %or.cond176.not.i = and i1 %tobool22.not.i, %tobool24.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and23.i)
  %.not.i = icmp eq i32 %and23.i, 96
  %or.cond203.i = or i1 %.not.i, %or.cond176.not.i
  br i1 %or.cond203.i, label %if.end20.i.lineevent_create.exit_crit_edge, label %if.end32.i

if.end20.i.lineevent_create.exit_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineevent_create.exit

if.end32.i:                                       ; preds = %if.end20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 360) #13
  %tobool34.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool34.not.i, label %if.end32.i.lineevent_create.exit_crit_edge, label %if.end36.i

if.end32.i.lineevent_create.exit_crit_edge:       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineevent_create.exit

if.end36.i:                                       ; preds = %if.end32.i
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %3, ptr %call7.i.i.i, align 8
  %dev.i68 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 1
  %call38.i = call ptr @get_device(ptr noundef %dev.i68) #9
  %consumer_label.i = getelementptr inbounds %struct.gpioevent_request, ptr %eventreq.i, i32 0, i32 3
  %39 = ptrtoint ptr %consumer_label.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %consumer_label.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.not.i = icmp eq i8 %40, 0
  br i1 %cmp.not.i, label %if.end36.i.if.end47.i_crit_edge, label %if.then40.i

if.end36.i.if.end47.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then40.i:                                      ; preds = %if.end36.i
  %call42.i = call ptr @kstrndup(ptr noundef %consumer_label.i, i32 noundef 31, i32 noundef 3264) #9
  %label.i69 = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %label.i69 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call42.i, ptr %label.i69, align 4
  %tobool44.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool44.not.i, label %if.then40.i.out_free_le.i_crit_edge, label %if.then40.i.if.end47.i_crit_edge

if.then40.i.if.end47.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then40.i.out_free_le.i_crit_edge:              ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_le.i

if.end47.i:                                       ; preds = %if.then40.i.if.end47.i_crit_edge, %if.end36.i.if.end47.i_crit_edge
  %label48.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %label48.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %label48.i, align 4
  %call.i.i = call i32 @gpiod_request(ptr noundef %call1.i, ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i.i)
  %cmp.i192.i = icmp eq i32 %call.i.i, -517
  %spec.store.select.i.i = select i1 %cmp.i192.i, i32 -19, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i)
  %tobool50.not.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end47.i.out_free_le.i_crit_edge

if.end47.i.out_free_le.i_crit_edge:               ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_le.i

if.end52.i:                                       ; preds = %if.end47.i
  %desc53.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %desc53.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call1.i, ptr %desc53.i, align 8
  %eflags54.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %eflags54.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %31, ptr %eflags54.i, align 4
  %flags.i = getelementptr inbounds %struct.gpio_desc, ptr %call1.i, i32 0, i32 1
  call fastcc void @linehandle_flags_to_desc_flags(i32 noundef %29, ptr noundef %flags.i) #9
  %call55.i = call i32 @gpiod_direction_input(ptr noundef %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end58.i, label %if.end52.i.out_free_le.i_crit_edge

if.end52.i.out_free_le.i_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_le.i

if.end58.i:                                       ; preds = %if.end52.i
  %46 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call1.i, align 4
  %notifier.i = getelementptr inbounds %struct.gpio_device, ptr %47, i32 0, i32 12
  %call60.i = call i32 @blocking_notifier_call_chain(ptr noundef %notifier.i, i32 noundef 1, ptr noundef %call1.i) #9
  %call61.i = call i32 @gpiod_to_irq(ptr noundef %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call61.i)
  %cmp62.i = icmp slt i32 %call61.i, 1
  br i1 %cmp62.i, label %if.end58.i.out_free_le.i_crit_edge, label %if.end65.i

if.end58.i.out_free_le.i_crit_edge:               ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_le.i

if.end65.i:                                       ; preds = %if.end58.i
  %irq66.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %irq66.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call61.i, ptr %irq66.i, align 8
  %and67.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %if.end65.i.if.end73.i_crit_edge, label %if.then69.i

if.end65.i.if.end73.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.i

if.then69.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags.i, align 4
  %51 = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool72.not.i = icmp eq i32 %51, 0
  %cond.i = select i1 %tobool72.not.i, i32 1, i32 2
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then69.i, %if.end65.i.if.end73.i_crit_edge
  %irqflags.0.i = phi i32 [ %cond.i, %if.then69.i ], [ 0, %if.end65.i.if.end73.i_crit_edge ]
  %and74.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end73.i.if.end82.i_crit_edge, label %if.then76.i

if.end73.i.if.end82.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i, align 4
  %54 = and i32 %53, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool79.not.i = icmp eq i32 %54, 0
  %cond80.i = select i1 %tobool79.not.i, i32 2, i32 1
  %or81.i = or i32 %cond80.i, %irqflags.0.i
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then76.i, %if.end73.i.if.end82.i_crit_edge
  %irqflags.1.i = phi i32 [ %or81.i, %if.then76.i ], [ %irqflags.0.i, %if.end73.i.if.end82.i_crit_edge ]
  %or83.i = or i32 %irqflags.1.i, 8192
  %events.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %events.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %events.i, align 8
  %out.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %out.i, align 4
  %mask.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 0, i32 2
  %57 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 15, ptr %mask.i, align 8
  %esize.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 0, i32 3
  %58 = ptrtoint ptr %esize.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 16, ptr %esize.i, align 4
  %buf.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %data.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 0, i32 4
  %59 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %buf.i, ptr %data.i, align 8
  %wait.i = getelementptr inbounds %struct.lineevent_state, ptr %call7.i.i.i, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @lineevent_create.__key) #9
  %60 = ptrtoint ptr %irq66.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq66.i, align 8
  %62 = ptrtoint ptr %label48.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %label48.i, align 4
  %call87.i = call i32 @request_threaded_irq(i32 noundef %61, ptr noundef nonnull @lineevent_irq_handler, ptr noundef nonnull @lineevent_irq_thread, i32 noundef %or83.i, ptr noundef %63, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end90.i, label %if.end82.i.out_free_le.i_crit_edge

if.end82.i.out_free_le.i_crit_edge:               ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_le.i

if.end90.i:                                       ; preds = %if.end82.i
  %call91.i = call i32 @get_unused_fd_flags(i32 noundef 524288) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %cmp92.i = icmp slt i32 %call91.i, 0
  br i1 %cmp92.i, label %if.end90.i.out_free_le.i_crit_edge, label %if.end95.i

if.end90.i.out_free_le.i_crit_edge:               ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_le.i

if.end95.i:                                       ; preds = %if.end90.i
  %call96.i = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.12, ptr noundef nonnull @lineevent_fileops, ptr noundef nonnull %call7.i.i.i, i32 noundef 524288) #9
  %cmp.i193.i = icmp ugt ptr %call96.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193.i, label %if.then98.i, label %if.end59.i.i183.i

if.then98.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %call96.i to i32
  call void @put_unused_fd(i32 noundef %call91.i) #9
  br label %out_free_le.i

if.end59.i.i183.i:                                ; preds = %if.end95.i
  %fd101.i = getelementptr inbounds %struct.gpioevent_request, ptr %eventreq.i, i32 0, i32 4
  %65 = ptrtoint ptr %fd101.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call91.i, ptr %fd101.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i184.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i184.i, label %if.end59.i.i183.i.if.then104.i_crit_edge, label %copy_to_user.exit.i71

if.end59.i.i183.i.if.then104.i_crit_edge:         ; preds = %if.end59.i.i183.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then104.i

copy_to_user.exit.i71:                            ; preds = %if.end59.i.i183.i
  %call.i.i.i188.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %eventreq.i, i32 noundef 48) #9
  %call.i12.i.i.i70 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %eventreq.i, i32 noundef 48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i70)
  %tobool103.not.i = icmp eq i32 %call.i12.i.i.i70, 0
  br i1 %tobool103.not.i, label %if.end105.i, label %copy_to_user.exit.i71.if.then104.i_crit_edge

copy_to_user.exit.i71.if.then104.i_crit_edge:     ; preds = %copy_to_user.exit.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then104.i

if.then104.i:                                     ; preds = %copy_to_user.exit.i71.if.then104.i_crit_edge, %if.end59.i.i183.i.if.then104.i_crit_edge
  call void @fput(ptr noundef %call96.i) #9
  call void @put_unused_fd(i32 noundef %call91.i) #9
  br label %lineevent_create.exit

if.end105.i:                                      ; preds = %copy_to_user.exit.i71
  call void @__sanitizer_cov_trace_pc() #11
  call void @fd_install(i32 noundef %call91.i, ptr noundef %call96.i) #9
  br label %lineevent_create.exit

out_free_le.i:                                    ; preds = %if.then98.i, %if.end90.i.out_free_le.i_crit_edge, %if.end82.i.out_free_le.i_crit_edge, %if.end58.i.out_free_le.i_crit_edge, %if.end52.i.out_free_le.i_crit_edge, %if.end47.i.out_free_le.i_crit_edge, %if.then40.i.out_free_le.i_crit_edge
  %ret.0.i = phi i32 [ %spec.store.select.i.i, %if.end47.i.out_free_le.i_crit_edge ], [ %call55.i, %if.end52.i.out_free_le.i_crit_edge ], [ %call87.i, %if.end82.i.out_free_le.i_crit_edge ], [ %64, %if.then98.i ], [ -12, %if.then40.i.out_free_le.i_crit_edge ], [ -19, %if.end58.i.out_free_le.i_crit_edge ], [ %call91.i, %if.end90.i.out_free_le.i_crit_edge ]
  call fastcc void @lineevent_free(ptr noundef nonnull %call7.i.i.i) #9
  br label %lineevent_create.exit

lineevent_create.exit:                            ; preds = %out_free_le.i, %if.end105.i, %if.then104.i, %if.end32.i.lineevent_create.exit_crit_edge, %if.end20.i.lineevent_create.exit_crit_edge, %if.end5.i.lineevent_create.exit_crit_edge, %if.then3.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %34, %if.then3.i ], [ %ret.0.i, %out_free_le.i ], [ -14, %if.then104.i ], [ 0, %if.end105.i ], [ -22, %if.end5.i.lineevent_create.exit_crit_edge ], [ -22, %if.end20.i.lineevent_create.exit_crit_edge ], [ -12, %if.end32.i.lineevent_create.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %eventreq.i) #9
  br label %cleanup

if.then13:                                        ; preds = %if.end.if.then13_crit_edge, %if.end.if.then13_crit_edge161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1068977141, i32 %cmd)
  %cmp14 = icmp eq i32 %cmd, -1068977141
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %lineinfo.i) #9
  %66 = call ptr @memset(ptr %lineinfo.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %lineinfo_v2.i) #9
  %67 = call ptr @memset(ptr %lineinfo_v2.i, i32 255, i32 256)
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i.i72 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i72, label %if.then13.if.then11.i.i.i86_crit_edge, label %land.lhs.true.i.i.i75

if.then13.if.then11.i.i.i86_crit_edge:            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i86

land.lhs.true.i.i.i75:                            ; preds = %if.then13
  %68 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 72, i32 -1226833920) #12
  %asmresult.i.i.i73 = extractvalue { i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i73)
  %cmp.i6.i.i74 = icmp eq i32 %asmresult.i.i.i73, 0
  br i1 %cmp.i6.i.i74, label %if.end.i.i.i83, label %land.lhs.true.i.i.i75.if.then11.i.i.i86_crit_edge, !prof !94

land.lhs.true.i.i.i75.if.then11.i.i.i86_crit_edge: ; preds = %land.lhs.true.i.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i86

if.end.i.i.i83:                                   ; preds = %land.lhs.true.i.i.i75
  %call.i.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %lineinfo.i, i32 noundef 72) #9
  %69 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i.i77 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i.i.i77 to ptr
  %cpu_domain.i.i.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 4
  %71 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i78) #3, !srcloc !95
  %and.i.i.i.i.i79 = and i32 %71, -13
  %or.i.i.i.i.i80 = or i32 %and.i.i.i.i.i79, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i80) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i.i81 = call i32 @arm_copy_from_user(ptr noundef nonnull %lineinfo.i, ptr noundef %4, i32 noundef 72) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i81)
  %tobool4.not.i.i.i82 = icmp eq i32 %call1.i.i.i.i81, 0
  br i1 %tobool4.not.i.i.i82, label %if.end.i90, label %if.end.i.i.i83.if.then11.i.i.i86_crit_edge, !prof !94

if.end.i.i.i83.if.then11.i.i.i86_crit_edge:       ; preds = %if.end.i.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i86

if.then11.i.i.i86:                                ; preds = %if.end.i.i.i83.if.then11.i.i.i86_crit_edge, %land.lhs.true.i.i.i75.if.then11.i.i.i86_crit_edge, %if.then13.if.then11.i.i.i86_crit_edge
  %res.0.i.i50.i = phi i32 [ %call1.i.i.i.i81, %if.end.i.i.i83.if.then11.i.i.i86_crit_edge ], [ 72, %if.then13.if.then11.i.i.i86_crit_edge ], [ 72, %land.lhs.true.i.i.i75.if.then11.i.i.i86_crit_edge ]
  %sub.i.i.i84 = sub i32 72, %res.0.i.i50.i
  %add.ptr.i.i.i85 = getelementptr i8, ptr %lineinfo.i, i32 %sub.i.i.i84
  %72 = call ptr @memset(ptr %add.ptr.i.i.i85, i32 0, i32 %res.0.i.i50.i)
  br label %lineinfo_get_v1.exit

if.end.i90:                                       ; preds = %if.end.i.i.i83
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  %chip.i87 = getelementptr inbounds %struct.gpio_device, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %chip.i87 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip.i87, align 8
  %77 = ptrtoint ptr %lineinfo.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %lineinfo.i, align 4
  %call1.i88 = call ptr @gpiochip_get_desc(ptr noundef %76, i32 noundef %78) #9
  %cmp.i.i89 = icmp ugt ptr %call1.i88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i89, label %if.then3.i91, label %if.end5.i92

if.then3.i91:                                     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %call1.i88 to i32
  br label %lineinfo_get_v1.exit

if.end5.i92:                                      ; preds = %if.end.i90
  br i1 %cmp14, label %if.then7.i, label %if.end5.i92.if.end17.i_crit_edge

if.end5.i92.if.end17.i_crit_edge:                 ; preds = %if.end5.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then7.i:                                       ; preds = %if.end5.i92
  %watch_abi_version.i.i = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 5
  %call.i.i.i46.i = call zeroext i1 @__kasan_check_write(ptr noundef %watch_abi_version.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !98
  call void @llvm.prefetch.p0(ptr %watch_abi_version.i.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then7.i
  %80 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %watch_abi_version.i.i, ptr %watch_abi_version.i.i, i32 0, i32 1, ptr elementtype(i32) %watch_abi_version.i.i) #9, !srcloc !99
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %80, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %lineinfo_ensure_abi_version.exit.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

lineinfo_ensure_abi_version.exit.i:               ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %80, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3.i.i.i.i.i)
  %81 = icmp ult i32 %asmresult3.i.i.i.i.i, 2
  br i1 %81, label %if.end11.i, label %lineinfo_ensure_abi_version.exit.i.lineinfo_get_v1.exit_crit_edge

lineinfo_ensure_abi_version.exit.i.lineinfo_get_v1.exit_crit_edge: ; preds = %lineinfo_ensure_abi_version.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineinfo_get_v1.exit

if.end11.i:                                       ; preds = %lineinfo_ensure_abi_version.exit.i
  %82 = ptrtoint ptr %lineinfo.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lineinfo.i, align 4
  %watched_lines.i = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %watched_lines.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %watched_lines.i, align 4
  %call13.i = call i32 @_test_and_set_bit(i32 noundef %83, ptr noundef %85) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end17.i_crit_edge, label %if.end11.i.lineinfo_get_v1.exit_crit_edge

if.end11.i.lineinfo_get_v1.exit_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineinfo_get_v1.exit

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end11.i.if.end17.i_crit_edge, %if.end5.i92.if.end17.i_crit_edge
  call fastcc void @gpio_desc_to_lineinfo(ptr noundef %call1.i88, ptr noundef nonnull %lineinfo_v2.i) #9
  %flags.i.i = getelementptr inbounds %struct.gpio_v2_line_info, ptr %lineinfo_v2.i, i32 0, i32 4
  %86 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %flags.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.gpioline_info, ptr %lineinfo.i, i32 0, i32 2
  %88 = call ptr @memcpy(ptr %name.i.i, ptr %lineinfo_v2.i, i32 32)
  %consumer.i.i = getelementptr inbounds %struct.gpioline_info, ptr %lineinfo.i, i32 0, i32 3
  %consumer4.i.i = getelementptr inbounds %struct.gpio_v2_line_info, ptr %lineinfo_v2.i, i32 0, i32 1
  %89 = call ptr @memcpy(ptr %consumer.i.i, ptr %consumer4.i.i, i32 32)
  %offset.i.i = getelementptr inbounds %struct.gpio_v2_line_info, ptr %lineinfo_v2.i, i32 0, i32 2
  %90 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offset.i.i, align 8
  %92 = ptrtoint ptr %lineinfo.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %lineinfo.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.gpioline_info, ptr %lineinfo.i, i32 0, i32 1
  %93 = trunc i64 %87 to i32
  %94 = and i32 %93, 1
  %95 = lshr i32 %93, 2
  %96 = and i32 %95, 2
  %97 = or i32 %96, %94
  %98 = shl i32 %93, 1
  %99 = and i32 %98, 4
  %100 = or i32 %97, %99
  %101 = lshr i32 %93, 3
  %102 = and i32 %101, 8
  %103 = or i32 %102, %100
  %104 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %flags6.i.i, align 4
  %and26.i.i = and i64 %87, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26.i.i)
  %tobool27.not.i.i = icmp eq i64 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end17.i.if.end31.i.i_crit_edge, label %if.then28.i.i

if.end17.i.if.end31.i.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i.i

if.then28.i.i:                                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags6.i.i, align 4
  %or30.i.i = or i32 %106, 16
  store i32 %or30.i.i, ptr %flags6.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then28.i.i, %if.end17.i.if.end31.i.i_crit_edge
  %and32.i.i = and i64 %87, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32.i.i)
  %tobool33.not.i.i = icmp eq i64 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end31.i.i.if.end37.i.i_crit_edge, label %if.then34.i.i

if.end31.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.then34.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags6.i.i, align 4
  %or36.i.i = or i32 %108, 32
  store i32 %or36.i.i, ptr %flags6.i.i, align 4
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then34.i.i, %if.end31.i.i.if.end37.i.i_crit_edge
  %and38.i.i = and i64 %87, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38.i.i)
  %tobool39.not.i.i = icmp eq i64 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end37.i.i.if.end43.i.i_crit_edge, label %if.then40.i.i

if.end37.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i.i

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags6.i.i, align 4
  %or42.i.i = or i32 %110, 64
  store i32 %or42.i.i, ptr %flags6.i.i, align 4
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then40.i.i, %if.end37.i.i.if.end43.i.i_crit_edge
  %and44.i.i = and i64 %87, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and44.i.i)
  %tobool45.not.i.i = icmp eq i64 %and44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end43.i.i.if.end59.i.i39.i_crit_edge, label %if.then46.i.i

if.end43.i.i.if.end59.i.i39.i_crit_edge:          ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i39.i

if.then46.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags6.i.i, align 4
  %or48.i.i = or i32 %112, 128
  store i32 %or48.i.i, ptr %flags6.i.i, align 4
  br label %if.end59.i.i39.i

if.end59.i.i39.i:                                 ; preds = %if.then46.i.i, %if.end43.i.i.if.end59.i.i39.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i40.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i40.i, label %copy_to_user.exit.thread.i, label %copy_to_user.exit.i94

copy_to_user.exit.thread.i:                       ; preds = %if.end59.i.i39.i
  br i1 %cmp14, label %copy_to_user.exit.thread.i.if.then22.i_crit_edge, label %copy_to_user.exit.thread.i.lineinfo_get_v1.exit_crit_edge

copy_to_user.exit.thread.i.lineinfo_get_v1.exit_crit_edge: ; preds = %copy_to_user.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineinfo_get_v1.exit

copy_to_user.exit.thread.i.if.then22.i_crit_edge: ; preds = %copy_to_user.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22.i

copy_to_user.exit.i94:                            ; preds = %if.end59.i.i39.i
  %call.i.i.i44.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %lineinfo.i, i32 noundef 72) #9
  %call.i12.i.i.i93 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %lineinfo.i, i32 noundef 72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i93)
  %phi.cmp.i = icmp eq i32 %call.i12.i.i.i93, 0
  %watch.not.i = xor i1 %cmp14, true
  %brmerge.i = or i1 %phi.cmp.i, %watch.not.i
  %.mux.i = select i1 %phi.cmp.i, i32 0, i32 -14
  br i1 %brmerge.i, label %copy_to_user.exit.i94.lineinfo_get_v1.exit_crit_edge, label %copy_to_user.exit.i94.if.then22.i_crit_edge

copy_to_user.exit.i94.if.then22.i_crit_edge:      ; preds = %copy_to_user.exit.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22.i

copy_to_user.exit.i94.lineinfo_get_v1.exit_crit_edge: ; preds = %copy_to_user.exit.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineinfo_get_v1.exit

if.then22.i:                                      ; preds = %copy_to_user.exit.i94.if.then22.i_crit_edge, %copy_to_user.exit.thread.i.if.then22.i_crit_edge
  %113 = ptrtoint ptr %lineinfo.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %lineinfo.i, align 4
  %watched_lines24.i = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 4
  %115 = ptrtoint ptr %watched_lines24.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %watched_lines24.i, align 4
  call void @_clear_bit(i32 noundef %114, ptr noundef %116) #9
  br label %lineinfo_get_v1.exit

lineinfo_get_v1.exit:                             ; preds = %if.then22.i, %copy_to_user.exit.i94.lineinfo_get_v1.exit_crit_edge, %copy_to_user.exit.thread.i.lineinfo_get_v1.exit_crit_edge, %if.end11.i.lineinfo_get_v1.exit_crit_edge, %lineinfo_ensure_abi_version.exit.i.lineinfo_get_v1.exit_crit_edge, %if.then3.i91, %if.then11.i.i.i86
  %retval.0.i95 = phi i32 [ %79, %if.then3.i91 ], [ -1, %lineinfo_ensure_abi_version.exit.i.lineinfo_get_v1.exit_crit_edge ], [ -16, %if.end11.i.lineinfo_get_v1.exit_crit_edge ], [ -14, %if.then22.i ], [ -14, %if.then11.i.i.i86 ], [ -14, %copy_to_user.exit.thread.i.lineinfo_get_v1.exit_crit_edge ], [ %.mux.i, %copy_to_user.exit.i94.lineinfo_get_v1.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %lineinfo_v2.i) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %lineinfo.i) #9
  br label %cleanup

if.then20:                                        ; preds = %if.end.if.then20_crit_edge, %if.end.if.then20_crit_edge162
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1056918522, i32 %cmd)
  %cmp21 = icmp eq i32 %cmd, -1056918522
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %lineinfo.i96) #9
  %117 = call ptr @memset(ptr %lineinfo.i96, i32 255, i32 256)
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i.i97 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i97, label %if.then20.if.then11.i.i.i111_crit_edge, label %land.lhs.true.i.i.i100

if.then20.if.then11.i.i.i111_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i111

land.lhs.true.i.i.i100:                           ; preds = %if.then20
  %118 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 256, i32 -1226833920) #12
  %asmresult.i.i.i98 = extractvalue { i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i98)
  %cmp.i6.i.i99 = icmp eq i32 %asmresult.i.i.i98, 0
  br i1 %cmp.i6.i.i99, label %if.end.i.i.i108, label %land.lhs.true.i.i.i100.if.then11.i.i.i111_crit_edge, !prof !94

land.lhs.true.i.i.i100.if.then11.i.i.i111_crit_edge: ; preds = %land.lhs.true.i.i.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i111

if.end.i.i.i108:                                  ; preds = %land.lhs.true.i.i.i100
  %call.i.i.i.i101 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %lineinfo.i96, i32 noundef 256) #9
  %119 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i.i102 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i.i.i.i.i102 to ptr
  %cpu_domain.i.i.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 4
  %121 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i103) #3, !srcloc !95
  %and.i.i.i.i.i104 = and i32 %121, -13
  %or.i.i.i.i.i105 = or i32 %and.i.i.i.i.i104, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i105) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i.i106 = call i32 @arm_copy_from_user(ptr noundef nonnull %lineinfo.i96, ptr noundef %4, i32 noundef 256) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i106)
  %tobool4.not.i.i.i107 = icmp eq i32 %call1.i.i.i.i106, 0
  br i1 %tobool4.not.i.i.i107, label %if.end.i113, label %if.end.i.i.i108.if.then11.i.i.i111_crit_edge, !prof !94

if.end.i.i.i108.if.then11.i.i.i111_crit_edge:     ; preds = %if.end.i.i.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i111

if.then11.i.i.i111:                               ; preds = %if.end.i.i.i108.if.then11.i.i.i111_crit_edge, %land.lhs.true.i.i.i100.if.then11.i.i.i111_crit_edge, %if.then20.if.then11.i.i.i111_crit_edge
  %res.0.i.i53.i = phi i32 [ %call1.i.i.i.i106, %if.end.i.i.i108.if.then11.i.i.i111_crit_edge ], [ 256, %if.then20.if.then11.i.i.i111_crit_edge ], [ 256, %land.lhs.true.i.i.i100.if.then11.i.i.i111_crit_edge ]
  %sub.i.i.i109 = sub i32 256, %res.0.i.i53.i
  %add.ptr.i.i.i110 = getelementptr i8, ptr %lineinfo.i96, i32 %sub.i.i.i109
  %122 = call ptr @memset(ptr %add.ptr.i.i.i110, i32 0, i32 %res.0.i.i53.i)
  br label %lineinfo_get.exit

if.end.i113:                                      ; preds = %if.end.i.i.i108
  %padding.i = getelementptr inbounds %struct.gpio_v2_line_info, ptr %lineinfo.i96, i32 0, i32 6
  %call1.i112 = call ptr @memchr_inv(ptr noundef %padding.i, i32 noundef 0, i32 noundef 16) #9
  %tobool2.not.i = icmp eq ptr %call1.i112, null
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i113.lineinfo_get.exit_crit_edge

if.end.i113.lineinfo_get.exit_crit_edge:          ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineinfo_get.exit

if.end4.i:                                        ; preds = %if.end.i113
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 8
  %chip.i114 = getelementptr inbounds %struct.gpio_device, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %chip.i114 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %chip.i114, align 8
  %offset.i = getelementptr inbounds %struct.gpio_v2_line_info, ptr %lineinfo.i96, i32 0, i32 2
  %127 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %offset.i, align 8
  %call5.i115 = call ptr @gpiochip_get_desc(ptr noundef %126, i32 noundef %128) #9
  %cmp.i.i116 = icmp ugt ptr %call5.i115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i116, label %if.then7.i117, label %if.end9.i

if.then7.i117:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %call5.i115 to i32
  br label %lineinfo_get.exit

if.end9.i:                                        ; preds = %if.end4.i
  br i1 %cmp21, label %if.then11.i, label %if.end9.i.if.end59.i.i42.i_crit_edge

if.end9.i.if.end59.i.i42.i_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i42.i

if.then11.i:                                      ; preds = %if.end9.i
  %watch_abi_version.i.i118 = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 5
  %call.i.i.i49.i = call zeroext i1 @__kasan_check_write(ptr noundef %watch_abi_version.i.i118, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !98
  call void @llvm.prefetch.p0(ptr %watch_abi_version.i.i118, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i121

do.body.i.i.i.i.i121:                             ; preds = %do.body.i.i.i.i.i121.do.body.i.i.i.i.i121_crit_edge, %if.then11.i
  %130 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %watch_abi_version.i.i118, ptr %watch_abi_version.i.i118, i32 0, i32 2, ptr elementtype(i32) %watch_abi_version.i.i118) #9, !srcloc !99
  %asmresult.i.i.i.i.i119 = extractvalue { i32, i32 } %130, 0
  %tobool.not.i.i.i.i.i120 = icmp eq i32 %asmresult.i.i.i.i.i119, 0
  br i1 %tobool.not.i.i.i.i.i120, label %lineinfo_ensure_abi_version.exit.i123, label %do.body.i.i.i.i.i121.do.body.i.i.i.i.i121_crit_edge

do.body.i.i.i.i.i121.do.body.i.i.i.i.i121_crit_edge: ; preds = %do.body.i.i.i.i.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i121

lineinfo_ensure_abi_version.exit.i123:            ; preds = %do.body.i.i.i.i.i121
  %asmresult3.i.i.i.i.i122 = extractvalue { i32, i32 } %130, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  %131 = and i32 %asmresult3.i.i.i.i.i122, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %if.end15.i, label %lineinfo_ensure_abi_version.exit.i123.lineinfo_get.exit_crit_edge

lineinfo_ensure_abi_version.exit.i123.lineinfo_get.exit_crit_edge: ; preds = %lineinfo_ensure_abi_version.exit.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineinfo_get.exit

if.end15.i:                                       ; preds = %lineinfo_ensure_abi_version.exit.i123
  %133 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %offset.i, align 8
  %watched_lines.i124 = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 4
  %135 = ptrtoint ptr %watched_lines.i124 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %watched_lines.i124, align 4
  %call17.i = call i32 @_test_and_set_bit(i32 noundef %134, ptr noundef %136) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end59.i.i42.i_crit_edge, label %if.end15.i.lineinfo_get.exit_crit_edge

if.end15.i.lineinfo_get.exit_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineinfo_get.exit

if.end15.i.if.end59.i.i42.i_crit_edge:            ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i42.i

if.end59.i.i42.i:                                 ; preds = %if.end15.i.if.end59.i.i42.i_crit_edge, %if.end9.i.if.end59.i.i42.i_crit_edge
  call fastcc void @gpio_desc_to_lineinfo(ptr noundef %call5.i115, ptr noundef nonnull %lineinfo.i96) #9
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i43.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i43.i, label %copy_to_user.exit.thread.i125, label %copy_to_user.exit.i131

copy_to_user.exit.thread.i125:                    ; preds = %if.end59.i.i42.i
  br i1 %cmp21, label %copy_to_user.exit.thread.i125.if.then26.i_crit_edge, label %copy_to_user.exit.thread.i125.lineinfo_get.exit_crit_edge

copy_to_user.exit.thread.i125.lineinfo_get.exit_crit_edge: ; preds = %copy_to_user.exit.thread.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineinfo_get.exit

copy_to_user.exit.thread.i125.if.then26.i_crit_edge: ; preds = %copy_to_user.exit.thread.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

copy_to_user.exit.i131:                           ; preds = %if.end59.i.i42.i
  %call.i.i.i47.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %lineinfo.i96, i32 noundef 256) #9
  %call.i12.i.i.i126 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %lineinfo.i96, i32 noundef 256) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i126)
  %phi.cmp.i127 = icmp eq i32 %call.i12.i.i.i126, 0
  %watch.not.i128 = xor i1 %cmp21, true
  %brmerge.i129 = or i1 %phi.cmp.i127, %watch.not.i128
  %.mux.i130 = select i1 %phi.cmp.i127, i32 0, i32 -14
  br i1 %brmerge.i129, label %copy_to_user.exit.i131.lineinfo_get.exit_crit_edge, label %copy_to_user.exit.i131.if.then26.i_crit_edge

copy_to_user.exit.i131.if.then26.i_crit_edge:     ; preds = %copy_to_user.exit.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

copy_to_user.exit.i131.lineinfo_get.exit_crit_edge: ; preds = %copy_to_user.exit.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineinfo_get.exit

if.then26.i:                                      ; preds = %copy_to_user.exit.i131.if.then26.i_crit_edge, %copy_to_user.exit.thread.i125.if.then26.i_crit_edge
  %137 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %offset.i, align 8
  %watched_lines28.i = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 4
  %139 = ptrtoint ptr %watched_lines28.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %watched_lines28.i, align 4
  call void @_clear_bit(i32 noundef %138, ptr noundef %140) #9
  br label %lineinfo_get.exit

lineinfo_get.exit:                                ; preds = %if.then26.i, %copy_to_user.exit.i131.lineinfo_get.exit_crit_edge, %copy_to_user.exit.thread.i125.lineinfo_get.exit_crit_edge, %if.end15.i.lineinfo_get.exit_crit_edge, %lineinfo_ensure_abi_version.exit.i123.lineinfo_get.exit_crit_edge, %if.then7.i117, %if.end.i113.lineinfo_get.exit_crit_edge, %if.then11.i.i.i111
  %retval.0.i132 = phi i32 [ %129, %if.then7.i117 ], [ -22, %if.end.i113.lineinfo_get.exit_crit_edge ], [ -1, %lineinfo_ensure_abi_version.exit.i123.lineinfo_get.exit_crit_edge ], [ -16, %if.end15.i.lineinfo_get.exit_crit_edge ], [ -14, %if.then26.i ], [ -14, %if.then11.i.i.i111 ], [ -14, %copy_to_user.exit.thread.i125.lineinfo_get.exit_crit_edge ], [ %.mux.i130, %copy_to_user.exit.i131.lineinfo_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %lineinfo.i96) #9
  br label %cleanup

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call fastcc i32 @linereq_create(ptr noundef %3, ptr noundef %4)
  br label %cleanup

if.then29:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i133) #9
  %141 = ptrtoint ptr %offset.i133 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %offset.i133, align 4, !annotation !101
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i.i134 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i134, label %if.then29.if.then11.i.i.i148_crit_edge, label %land.lhs.true.i.i.i137

if.then29.if.then11.i.i.i148_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i148

land.lhs.true.i.i.i137:                           ; preds = %if.then29
  %142 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 4, i32 -1226833920) #12, !srcloc !102
  %asmresult.i.i.i135 = extractvalue { i32, i32 } %142, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i135)
  %cmp.i6.i.i136 = icmp eq i32 %asmresult.i.i.i135, 0
  br i1 %cmp.i6.i.i136, label %if.end.i.i.i145, label %land.lhs.true.i.i.i137.if.then11.i.i.i148_crit_edge, !prof !94

land.lhs.true.i.i.i137.if.then11.i.i.i148_crit_edge: ; preds = %land.lhs.true.i.i.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i148

if.end.i.i.i145:                                  ; preds = %land.lhs.true.i.i.i137
  %call.i.i.i.i138 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %offset.i133, i32 noundef 4) #9
  %143 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i.i139 = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i.i.i.i.i139 to ptr
  %cpu_domain.i.i.i.i.i.i140 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 4
  %145 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i140) #3, !srcloc !95
  %and.i.i.i.i.i141 = and i32 %145, -13
  %or.i.i.i.i.i142 = or i32 %and.i.i.i.i.i141, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i142) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i.i143 = call i32 @arm_copy_from_user(ptr noundef nonnull %offset.i133, ptr noundef %4, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i143)
  %tobool4.not.i.i.i144 = icmp eq i32 %call1.i.i.i.i143, 0
  br i1 %tobool4.not.i.i.i144, label %if.end.i152, label %if.end.i.i.i145.if.then11.i.i.i148_crit_edge, !prof !94

if.end.i.i.i145.if.then11.i.i.i148_crit_edge:     ; preds = %if.end.i.i.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i148

if.then11.i.i.i148:                               ; preds = %if.end.i.i.i145.if.then11.i.i.i148_crit_edge, %land.lhs.true.i.i.i137.if.then11.i.i.i148_crit_edge, %if.then29.if.then11.i.i.i148_crit_edge
  %res.0.i.i11.i = phi i32 [ %call1.i.i.i.i143, %if.end.i.i.i145.if.then11.i.i.i148_crit_edge ], [ 4, %if.then29.if.then11.i.i.i148_crit_edge ], [ 4, %land.lhs.true.i.i.i137.if.then11.i.i.i148_crit_edge ]
  %sub.i.i.i146 = sub i32 4, %res.0.i.i11.i
  %add.ptr.i.i.i147 = getelementptr i8, ptr %offset.i133, i32 %sub.i.i.i146
  %146 = call ptr @memset(ptr %add.ptr.i.i.i147, i32 0, i32 %res.0.i.i11.i)
  br label %lineinfo_unwatch.exit

if.end.i152:                                      ; preds = %if.end.i.i.i145
  %147 = ptrtoint ptr %offset.i133 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %offset.i133, align 4
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 8
  %ngpio.i149 = getelementptr inbounds %struct.gpio_device, ptr %150, i32 0, i32 8
  %151 = ptrtoint ptr %ngpio.i149 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %ngpio.i149, align 4
  %conv.i150 = zext i16 %152 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %conv.i150)
  %cmp.not.i151 = icmp ult i32 %148, %conv.i150
  br i1 %cmp.not.i151, label %if.end3.i, label %if.end.i152.lineinfo_unwatch.exit_crit_edge

if.end.i152.lineinfo_unwatch.exit_crit_edge:      ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineinfo_unwatch.exit

if.end3.i:                                        ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #11
  %watched_lines.i153 = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 4
  %153 = ptrtoint ptr %watched_lines.i153 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %watched_lines.i153, align 4
  %call4.i = call i32 @_test_and_clear_bit(i32 noundef %148, ptr noundef %154) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %..i = select i1 %tobool5.not.i, i32 -16, i32 0
  br label %lineinfo_unwatch.exit

lineinfo_unwatch.exit:                            ; preds = %if.end3.i, %if.end.i152.lineinfo_unwatch.exit_crit_edge, %if.then11.i.i.i148
  %retval.0.i154 = phi i32 [ -22, %if.end.i152.lineinfo_unwatch.exit_crit_edge ], [ %..i, %if.end3.i ], [ -14, %if.then11.i.i.i148 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i133) #9
  br label %cleanup

cleanup:                                          ; preds = %lineinfo_unwatch.exit, %if.then25, %lineinfo_get.exit, %lineinfo_get_v1.exit, %lineevent_create.exit, %if.then4, %chipinfo_get.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %chipinfo_get.exit ], [ %call5, %if.then4 ], [ %retval.0.i, %lineevent_create.exit ], [ %retval.0.i95, %lineinfo_get_v1.exit ], [ %retval.0.i132, %lineinfo_get.exit ], [ %call26, %if.then25 ], [ %retval.0.i154, %lineinfo_unwatch.exit ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_chrdev_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -936
  %chip = getelementptr i8, ptr %2, i32 168
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 9320, i32 noundef 3520, i32 noundef 2) #14
  %tobool1.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %8 to i32
  %call5 = tail call ptr @bitmap_zalloc(i32 noundef %conv, i32 noundef 3264) #9
  %watched_lines = getelementptr inbounds %struct.gpio_chardev_data, ptr %call1.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %watched_lines to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %watched_lines, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end3.out_free_cdev_crit_edge, label %do.body

if.end3.out_free_cdev_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_cdev

do.body:                                          ; preds = %if.end3
  %wait = getelementptr inbounds %struct.gpio_chardev_data, ptr %call1.i.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.28, ptr noundef nonnull @gpio_chrdev_open.__key) #9
  %events = getelementptr inbounds %struct.gpio_chardev_data, ptr %call1.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %events, align 8
  %out = getelementptr inbounds %struct.gpio_chardev_data, ptr %call1.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %out, align 4
  %mask = getelementptr inbounds %struct.gpio_chardev_data, ptr %call1.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 31, ptr %mask, align 64
  %esize = getelementptr inbounds %struct.gpio_chardev_data, ptr %call1.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 288, ptr %esize, align 4
  %buf = getelementptr inbounds %struct.gpio_chardev_data, ptr %call1.i.i.i, i32 0, i32 2, i32 1
  %data = getelementptr inbounds %struct.gpio_chardev_data, ptr %call1.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %data, align 8
  %15 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %call1.i.i.i, align 4096
  %lineinfo_changed_nb = getelementptr inbounds %struct.gpio_chardev_data, ptr %call1.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %lineinfo_changed_nb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lineinfo_changed_notify, ptr %lineinfo_changed_nb, align 16
  %notifier = getelementptr i8, ptr %2, i32 200
  %call13 = tail call i32 @blocking_notifier_chain_register(ptr noundef %notifier, ptr noundef %lineinfo_changed_nb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %do.body.out_free_bitmap_crit_edge

do.body.out_free_bitmap_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_bitmap

if.end16:                                         ; preds = %do.body
  %dev = getelementptr i8, ptr %2, i32 -928
  %call17 = tail call ptr @get_device(ptr noundef %dev) #9
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1.i.i.i, ptr %private_data, align 4
  %call18 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %out_unregister_notifier

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_unregister_notifier:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %notifier, ptr noundef %lineinfo_changed_nb) #9
  br label %out_free_bitmap

out_free_bitmap:                                  ; preds = %out_unregister_notifier, %do.body.out_free_bitmap_crit_edge
  %ret.0 = phi i32 [ %call13, %do.body.out_free_bitmap_crit_edge ], [ %call18, %out_unregister_notifier ]
  %18 = ptrtoint ptr %watched_lines to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %watched_lines, align 4
  tail call void @bitmap_free(ptr noundef %19) #9
  br label %out_free_cdev

out_free_cdev:                                    ; preds = %out_free_bitmap, %if.end3.out_free_cdev_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free_bitmap ], [ -12, %if.end3.out_free_cdev_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free_cdev, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free_cdev ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_chrdev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %watched_lines = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %watched_lines to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %watched_lines, align 4
  tail call void @bitmap_free(ptr noundef %5) #9
  %notifier = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 12
  %lineinfo_changed_nb = getelementptr inbounds %struct.gpio_chardev_data, ptr %1, i32 0, i32 3
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %notifier, ptr noundef %lineinfo_changed_nb) #9
  %dev = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @linehandle_create(ptr noundef %gdev, ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  %handlereq = alloca %struct.gpiohandle_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 364, ptr nonnull %handlereq) #9
  %0 = call ptr @memset(ptr %handlereq, i32 255, i32 364)
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ip, i32 364, i32 -1226833920) #12
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !94

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %handlereq, i32 noundef 364) #9
  %2 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !95
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %handlereq, ptr noundef %ip, i32 noundef 364) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !94

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i194 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 364, %entry.if.then11.i.i_crit_edge ], [ 364, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 364, %res.0.i.i194
  %add.ptr.i.i = getelementptr i8, ptr %handlereq, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i194)
  br label %cleanup119

if.end:                                           ; preds = %if.end.i.i
  %lines = getelementptr inbounds %struct.gpiohandle_request, ptr %handlereq, i32 0, i32 4
  %6 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lines, align 4
  %8 = add i32 %7, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %8)
  %9 = icmp ult i32 %8, -64
  br i1 %9, label %if.end.cleanup119_crit_edge, label %if.end4

if.end.cleanup119_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.gpiohandle_request, ptr %handlereq, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %tobool.not.i = icmp ult i32 %11, 256
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.cleanup119_crit_edge

if.end4.cleanup119_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end.i:                                         ; preds = %if.end4
  %12 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %.not.i = icmp eq i32 %12, 3
  %13 = and i32 %11, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %13)
  %.not77.i = icmp eq i32 %13, 24
  %or.cond.i = or i1 %.not.i, %.not77.i
  br i1 %or.cond.i, label %if.end.i.cleanup119_crit_edge, label %if.end13.i

if.end.i.cleanup119_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end13.i:                                       ; preds = %if.end.i
  %and3.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true16.i, label %if.end13.i.if.end38.i_crit_edge

if.end13.i.if.end38.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true16.i:                                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.end22.i, label %land.lhs.true16.i.cleanup119_crit_edge

land.lhs.true16.i.cleanup119_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end22.i:                                       ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %15 = icmp ne i32 %12, 0
  %16 = and i32 %11, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  %or.cond80.i = or i1 %15, %17
  br i1 %or.cond80.i, label %if.end22.i.if.end38.i_crit_edge, label %if.end22.i.cleanup119_crit_edge

if.end22.i.cleanup119_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end22.i.if.end38.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end22.i.if.end38.i_crit_edge, %if.end13.i.if.end38.i_crit_edge
  %and39.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp ne i32 %and39.i, 0
  %and42.i = and i32 %11, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp ne i32 %and42.i, 0
  %or.cond72.i.not = and i1 %tobool40.not.i, %tobool43.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and42.i)
  %.not78.i = icmp eq i32 %and42.i, 96
  %or.cond211 = or i1 %.not78.i, %or.cond72.i.not
  br i1 %or.cond211, label %if.end38.i.cleanup119_crit_edge, label %if.end8

if.end38.i.cleanup119_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end8:                                          ; preds = %if.end38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 268) #13
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup119_crit_edge, label %if.end12

if.end8.cleanup119_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end12:                                         ; preds = %if.end8
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %gdev, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 1
  %call14 = call ptr @get_device(ptr noundef %dev) #9
  %consumer_label = getelementptr inbounds %struct.gpiohandle_request, ptr %handlereq, i32 0, i32 3
  %20 = ptrtoint ptr %consumer_label to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %consumer_label, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp15.not = icmp eq i8 %21, 0
  br i1 %cmp15.not, label %if.end12.if.end24_crit_edge, label %if.then17

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then17:                                        ; preds = %if.end12
  %call19 = call ptr @kstrndup(ptr noundef %consumer_label, i32 noundef 31, i32 noundef 3264) #9
  %label = getelementptr inbounds %struct.linehandle_state, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call19, ptr %label, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.then17.out_free_lh_crit_edge, label %if.then17.if.end24_crit_edge

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then17.out_free_lh_crit_edge:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_lh

if.end24:                                         ; preds = %if.then17.if.end24_crit_edge, %if.end12.if.end24_crit_edge
  %23 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lines, align 4
  %num_descs = getelementptr inbounds %struct.linehandle_state, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %num_descs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %num_descs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp27213.not = icmp eq i32 %24, 0
  br i1 %cmp27213.not, label %if.end24.for.end_crit_edge, label %for.body.lr.ph

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end24
  %chip = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 5
  %label35 = getelementptr inbounds %struct.linehandle_state, ptr %call7.i.i, i32 0, i32 1
  %and57 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx29 = getelementptr [64 x i32], ptr %handlereq, i32 0, i32 %i.0214
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx29, align 4
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 8
  %call30 = call ptr @gpiochip_get_desc(ptr noundef %29, i32 noundef %27) #9
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end34

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %call30 to i32
  br label %out_free_lh

if.end34:                                         ; preds = %for.body
  %31 = ptrtoint ptr %label35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %label35, align 4
  %call.i = call i32 @gpiod_request(ptr noundef %call30, ptr noundef %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i)
  %cmp.i188 = icmp eq i32 %call.i, -517
  %spec.store.select.i = select i1 %cmp.i188, i32 -19, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %tobool37.not = icmp eq i32 %spec.store.select.i, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.out_free_lh_crit_edge

if.end34.out_free_lh_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_lh

if.end39:                                         ; preds = %if.end34
  %arrayidx40 = getelementptr %struct.linehandle_state, ptr %call7.i.i, i32 0, i32 2, i32 %i.0214
  %33 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call30, ptr %arrayidx40, align 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %flags42 = getelementptr inbounds %struct.gpio_desc, ptr %call30, i32 0, i32 1
  call fastcc void @linehandle_flags_to_desc_flags(i32 noundef %35, ptr noundef %flags42)
  %call43 = call i32 @gpiod_set_transitory(ptr noundef %call30, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end39.out_free_lh_crit_edge, label %if.end47

if.end39.out_free_lh_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_lh

if.end47:                                         ; preds = %if.end39
  br i1 %tobool4.not.i, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end47
  %arrayidx50 = getelementptr %struct.gpiohandle_request, ptr %handlereq, i32 0, i32 2, i32 %i.0214
  %36 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool51 = icmp ne i8 %37, 0
  %lnot.ext = zext i1 %tobool51 to i32
  %call53 = call i32 @gpiod_direction_output(ptr noundef %call30, i32 noundef %lnot.ext) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then49.if.end65_crit_edge, label %if.then49.out_free_lh_crit_edge

if.then49.out_free_lh_crit_edge:                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_lh

if.then49.if.end65_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.else:                                          ; preds = %if.end47
  br i1 %tobool58.not, label %if.else.if.end65_crit_edge, label %if.then59

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then59:                                        ; preds = %if.else
  %call60 = call i32 @gpiod_direction_input(ptr noundef %call30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then59.if.end65_crit_edge, label %if.then59.out_free_lh_crit_edge

if.then59.out_free_lh_crit_edge:                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_lh

if.then59.if.end65_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.end65:                                         ; preds = %if.then59.if.end65_crit_edge, %if.else.if.end65_crit_edge, %if.then49.if.end65_crit_edge
  %38 = ptrtoint ptr %call30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call30, align 4
  %notifier = getelementptr inbounds %struct.gpio_device, ptr %39, i32 0, i32 12
  %call67 = call i32 @blocking_notifier_call_chain(ptr noundef %notifier, i32 noundef 1, ptr noundef %call30) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @linehandle_create.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@linehandle_create, %for.inc)) #9
          to label %if.then77 [label %for.inc], !srcloc !92

if.then77:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @linehandle_create.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %27) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then77, %if.end65
  %inc = add nuw i32 %i.0214, 1
  %40 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lines, align 4
  %cmp27 = icmp ult i32 %inc, %41
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end24.for.end_crit_edge
  %call84 = call i32 @get_unused_fd_flags(i32 noundef 524288) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %for.end.out_free_lh_crit_edge, label %if.end88

for.end.out_free_lh_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_lh

if.end88:                                         ; preds = %for.end
  %call89 = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.9, ptr noundef nonnull @linehandle_fileops, ptr noundef nonnull %call7.i.i, i32 noundef 524288) #9
  %cmp.i189 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %call89 to i32
  call void @put_unused_fd(i32 noundef %call84) #9
  br label %out_free_lh

if.end93:                                         ; preds = %if.end88
  %fd94 = getelementptr inbounds %struct.gpiohandle_request, ptr %handlereq, i32 0, i32 5
  %43 = ptrtoint ptr %fd94 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call84, ptr %fd94, align 4
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i176 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i176, label %if.end93.if.then97_crit_edge, label %copy_to_user.exit

if.end93.if.then97_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97

copy_to_user.exit:                                ; preds = %if.end93
  %call.i.i.i180 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %handlereq, i32 noundef 364) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %ip, ptr noundef nonnull %handlereq, i32 noundef 364) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool96.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool96.not, label %if.end98, label %copy_to_user.exit.if.then97_crit_edge

copy_to_user.exit.if.then97_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97

if.then97:                                        ; preds = %copy_to_user.exit.if.then97_crit_edge, %if.end93.if.then97_crit_edge
  call void @fput(ptr noundef %call89) #9
  call void @put_unused_fd(i32 noundef %call84) #9
  br label %cleanup119

if.end98:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @fd_install(i32 noundef %call84, ptr noundef %call89) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @linehandle_create.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@linehandle_create, %cleanup119)) #9
          to label %if.then113 [label %cleanup119], !srcloc !92

if.then113:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %num_descs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_descs, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @linehandle_create.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %45) #9
  br label %cleanup119

out_free_lh:                                      ; preds = %if.then91, %for.end.out_free_lh_crit_edge, %if.then59.out_free_lh_crit_edge, %if.then49.out_free_lh_crit_edge, %if.end39.out_free_lh_crit_edge, %if.end34.out_free_lh_crit_edge, %if.then32, %if.then17.out_free_lh_crit_edge
  %ret.2 = phi i32 [ %42, %if.then91 ], [ -12, %if.then17.out_free_lh_crit_edge ], [ %call84, %for.end.out_free_lh_crit_edge ], [ %30, %if.then32 ], [ %call53, %if.then49.out_free_lh_crit_edge ], [ %spec.store.select.i, %if.end34.out_free_lh_crit_edge ], [ %call43, %if.end39.out_free_lh_crit_edge ], [ %call60, %if.then59.out_free_lh_crit_edge ]
  %num_descs.i = getelementptr inbounds %struct.linehandle_state, ptr %call7.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %num_descs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_descs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp11.not.i = icmp eq i32 %47, 0
  br i1 %cmp11.not.i, label %out_free_lh.linehandle_free.exit_crit_edge, label %out_free_lh.for.body.i_crit_edge

out_free_lh.for.body.i_crit_edge:                 ; preds = %out_free_lh
  br label %for.body.i

out_free_lh.linehandle_free.exit_crit_edge:       ; preds = %out_free_lh
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_free.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %out_free_lh.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %out_free_lh.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.linehandle_state, ptr %call7.i.i, i32 0, i32 2, i32 %i.012.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i190 = icmp eq ptr %49, null
  br i1 %tobool.not.i190, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @gpiod_free(ptr noundef nonnull %49) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.012.i, 1
  %50 = ptrtoint ptr %num_descs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_descs.i, align 8
  %cmp.i191 = icmp ult i32 %inc.i, %51
  br i1 %cmp.i191, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.linehandle_free.exit_crit_edge

for.inc.i.linehandle_free.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_free.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

linehandle_free.exit:                             ; preds = %for.inc.i.linehandle_free.exit_crit_edge, %out_free_lh.linehandle_free.exit_crit_edge
  %label.i = getelementptr inbounds %struct.linehandle_state, ptr %call7.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %label.i, align 4
  call void @kfree(ptr noundef %53) #9
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.gpio_device, ptr %55, i32 0, i32 1
  call void @put_device(ptr noundef %dev.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup119

cleanup119:                                       ; preds = %linehandle_free.exit, %if.then113, %if.end98, %if.then97, %if.end8.cleanup119_crit_edge, %if.end38.i.cleanup119_crit_edge, %if.end22.i.cleanup119_crit_edge, %land.lhs.true16.i.cleanup119_crit_edge, %if.end.i.cleanup119_crit_edge, %if.end4.cleanup119_crit_edge, %if.end.cleanup119_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %ret.2, %linehandle_free.exit ], [ -14, %if.then97 ], [ -22, %if.end.cleanup119_crit_edge ], [ -12, %if.end8.cleanup119_crit_edge ], [ 0, %if.then113 ], [ -14, %if.then11.i.i ], [ -22, %if.end4.cleanup119_crit_edge ], [ -22, %if.end.i.cleanup119_crit_edge ], [ -22, %land.lhs.true16.i.cleanup119_crit_edge ], [ -22, %if.end38.i.cleanup119_crit_edge ], [ -22, %if.end22.i.cleanup119_crit_edge ], [ 0, %if.end98 ]
  call void @llvm.lifetime.end.p0(i64 364, ptr nonnull %handlereq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @linereq_create(ptr noundef %gdev, ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  %ulr = alloca %struct.gpio_v2_line_request, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %ulr) #9
  %0 = call ptr @memset(ptr %ulr, i32 255, i32 592)
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ip, i32 592, i32 -1226833920) #12
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !94

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ulr, i32 noundef 592) #9
  %2 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !95
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ulr, ptr noundef %ip, i32 noundef 592) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !94

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i317 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 592, %entry.if.then11.i.i_crit_edge ], [ 592, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 592, %res.0.i.i317
  %add.ptr.i.i = getelementptr i8, ptr %ulr, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i317)
  br label %cleanup203

if.end:                                           ; preds = %if.end.i.i
  %num_lines = getelementptr inbounds %struct.gpio_v2_line_request, ptr %ulr, i32 0, i32 3
  %6 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_lines, align 8
  %8 = add i32 %7, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %8)
  %9 = icmp ult i32 %8, -64
  br i1 %9, label %if.end.cleanup203_crit_edge, label %if.end4

if.end.cleanup203_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup203

if.end4:                                          ; preds = %if.end
  %padding = getelementptr inbounds %struct.gpio_v2_line_request, ptr %ulr, i32 0, i32 5
  %call5 = call ptr @memchr_inv(ptr noundef %padding, i32 noundef 0, i32 noundef 20) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup203_crit_edge

if.end4.cleanup203_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup203

if.end8:                                          ; preds = %if.end4
  %config = getelementptr inbounds %struct.gpio_v2_line_request, ptr %ulr, i32 0, i32 2
  %10 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_lines, align 8
  %call10 = call fastcc i32 @gpio_v2_line_config_validate(ptr noundef %config, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.i.i, label %if.end8.cleanup203_crit_edge

if.end8.cleanup203_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup203

if.end8.i.i:                                      ; preds = %if.end8
  %12 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_lines, align 8
  %14 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 152) #9
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %16, i32 192) #9
  %retval.0.i307 = select i1 %15, i32 -1, i32 %spec.select.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i307, i32 noundef 3520) #14
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end8.i.i.cleanup203_crit_edge, label %if.end19

if.end8.i.i.cleanup203_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup203

if.end19:                                         ; preds = %if.end8.i.i
  %17 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %gdev, ptr %call9.i.i, align 128
  %dev = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 1
  %call21 = call ptr @get_device(ptr noundef %dev) #9
  %18 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_lines, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp23332.not = icmp eq i32 %19, 0
  br i1 %cmp23332.not, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end19.for.body_crit_edge
  %i.0333 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %req = getelementptr %struct.linereq, ptr %call9.i.i, i32 0, i32 8, i32 %i.0333, i32 1
  %20 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i, ptr %req, align 4
  %sw_debounced = getelementptr %struct.linereq, ptr %call9.i.i, i32 0, i32 8, i32 %i.0333, i32 8
  %21 = ptrtoint ptr %sw_debounced to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %sw_debounced, align 4
  %work = getelementptr %struct.linereq, ptr %call9.i.i, i32 0, i32 8, i32 %i.0333, i32 7
  call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %22 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @linereq_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry49 = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 1
  %23 = ptrtoint ptr %entry49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry49, ptr %entry49, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry49, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @debounce_work_func, ptr %func, align 4
  %timer = getelementptr %struct.linereq, ptr %call9.i.i, i32 0, i32 8, i32 %i.0333, i32 7, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull @linereq_create.__key.17) #9
  %inc = add nuw i32 %i.0333, 1
  %26 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_lines, align 8
  %cmp23 = icmp ult i32 %inc, %27
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end19.for.end_crit_edge
  %consumer = getelementptr inbounds %struct.gpio_v2_line_request, ptr %ulr, i32 0, i32 1
  %28 = ptrtoint ptr %consumer to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %consumer, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp65.not = icmp eq i8 %29, 0
  br i1 %cmp65.not, label %for.end.do.body76_crit_edge, label %if.then67

for.end.do.body76_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

if.then67:                                        ; preds = %for.end
  %call70 = call ptr @kstrndup(ptr noundef %consumer, i32 noundef 31, i32 noundef 3264) #9
  %label = getelementptr inbounds %struct.linereq, ptr %call9.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call70, ptr %label, align 4
  %tobool72.not = icmp eq ptr %call70, null
  br i1 %tobool72.not, label %if.then67.out_free_linereq_crit_edge, label %if.then67.do.body76_crit_edge

if.then67.do.body76_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

if.then67.out_free_linereq_crit_edge:             ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_linereq

do.body76:                                        ; preds = %if.then67.do.body76_crit_edge, %for.end.do.body76_crit_edge
  %config_mutex = getelementptr inbounds %struct.linereq, ptr %call9.i.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %config_mutex, ptr noundef nonnull @.str.20, ptr noundef nonnull @linereq_create.__key.19) #9
  %wait = getelementptr inbounds %struct.linereq, ptr %call9.i.i, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.22, ptr noundef nonnull @linereq_create.__key.21) #9
  %event_buffer_size = getelementptr inbounds %struct.gpio_v2_line_request, ptr %ulr, i32 0, i32 4
  %31 = ptrtoint ptr %event_buffer_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %event_buffer_size, align 4
  %event_buffer_size82 = getelementptr inbounds %struct.linereq, ptr %call9.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %event_buffer_size82 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %event_buffer_size82, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp84 = icmp eq i32 %32, 0
  br i1 %cmp84, label %if.then86, label %if.else

if.then86:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_lines, align 8
  %mul = shl i32 %35, 4
  br label %if.end95.sink.split

if.else:                                          ; preds = %do.body76
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %32)
  %cmp90 = icmp ugt i32 %32, 1024
  br i1 %cmp90, label %if.else.if.end95.sink.split_crit_edge, label %if.else.if.end95_crit_edge

if.else.if.end95_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.else.if.end95.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.sink.split

if.end95.sink.split:                              ; preds = %if.else.if.end95.sink.split_crit_edge, %if.then86
  %.sink = phi i32 [ %mul, %if.then86 ], [ 1024, %if.else.if.end95.sink.split_crit_edge ]
  %36 = ptrtoint ptr %event_buffer_size82 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %event_buffer_size82, align 64
  br label %if.end95

if.end95:                                         ; preds = %if.end95.sink.split, %if.else.if.end95_crit_edge
  %seqno = getelementptr inbounds %struct.linereq, ptr %call9.i.i, i32 0, i32 6
  %call.i.i293 = call zeroext i1 @__kasan_check_write(ptr noundef %seqno, i32 noundef 4) #9
  %37 = ptrtoint ptr %seqno to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %seqno, align 32
  %38 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_lines, align 8
  %num_lines97 = getelementptr inbounds %struct.linereq, ptr %call9.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %num_lines97 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %num_lines97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp100334.not = icmp eq i32 %39, 0
  br i1 %cmp100334.not, label %if.end95.for.end167_crit_edge, label %for.body102.lr.ph

if.end95.for.end167_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end167

for.body102.lr.ph:                                ; preds = %if.end95
  %chip = getelementptr inbounds %struct.gpio_device, ptr %gdev, i32 0, i32 5
  %label109 = getelementptr inbounds %struct.linereq, ptr %call9.i.i, i32 0, i32 1
  %num_attrs.i = getelementptr inbounds %struct.gpio_v2_line_request, ptr %ulr, i32 0, i32 2, i32 1
  br label %for.body102

for.body102:                                      ; preds = %for.inc165.for.body102_crit_edge, %for.body102.lr.ph
  %i.1335 = phi i32 [ 0, %for.body102.lr.ph ], [ %inc166, %for.inc165.for.body102_crit_edge ]
  %arrayidx103 = getelementptr [64 x i32], ptr %ulr, i32 0, i32 %i.1335
  %41 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx103, align 4
  %43 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip, align 8
  %call104 = call ptr @gpiochip_get_desc(ptr noundef %44, i32 noundef %42) #9
  %cmp.i = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then106, label %if.end108

if.then106:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %call104 to i32
  br label %out_free_linereq

if.end108:                                        ; preds = %for.body102
  %46 = ptrtoint ptr %label109 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %label109, align 4
  %call.i = call i32 @gpiod_request(ptr noundef %call104, ptr noundef %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i)
  %cmp.i312 = icmp eq i32 %call.i, -517
  %spec.store.select.i = select i1 %cmp.i312, i32 -19, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %tobool111.not = icmp eq i32 %spec.store.select.i, 0
  br i1 %tobool111.not, label %if.end113, label %if.end108.out_free_linereq_crit_edge

if.end108.out_free_linereq_crit_edge:             ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_linereq

if.end113:                                        ; preds = %if.end108
  %arrayidx115 = getelementptr %struct.linereq, ptr %call9.i.i, i32 0, i32 8, i32 %i.1335
  %48 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call104, ptr %arrayidx115, align 8
  %sh_prom.i = zext i32 %i.1335 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %49 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_attrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp17.not.i = icmp eq i32 %50, 0
  br i1 %cmp17.not.i, label %if.end113.gpio_v2_line_config_flags.exit_crit_edge, label %if.end113.for.body.i_crit_edge

if.end113.for.body.i_crit_edge:                   ; preds = %if.end113
  br label %for.body.i

if.end113.gpio_v2_line_config_flags.exit_crit_edge: ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_flags.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end113.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end113.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_v2_line_request, ptr %ulr, i32 0, i32 2, i32 3, i32 %i.018.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp1.i = icmp eq i32 %52, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mask4.i = getelementptr %struct.gpio_v2_line_request, ptr %ulr, i32 0, i32 2, i32 3, i32 %i.018.i, i32 1
  %53 = ptrtoint ptr %mask4.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %mask4.i, align 8
  %and.i = and i64 %54, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %arrayidx.i, i32 0, i32 2
  br label %gpio_v2_line_config_flags.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %50
  br i1 %exitcond.not.i, label %for.inc.i.gpio_v2_line_config_flags.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.gpio_v2_line_config_flags.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_flags.exit

gpio_v2_line_config_flags.exit:                   ; preds = %for.inc.i.gpio_v2_line_config_flags.exit_crit_edge, %if.then.i, %if.end113.gpio_v2_line_config_flags.exit_crit_edge
  %retval.0.in.i = phi ptr [ %55, %if.then.i ], [ %config, %if.end113.gpio_v2_line_config_flags.exit_crit_edge ], [ %config, %for.inc.i.gpio_v2_line_config_flags.exit_crit_edge ]
  %56 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %retval.0.i313 = load i64, ptr %retval.0.in.i, align 8
  %flags118 = getelementptr inbounds %struct.gpio_desc, ptr %call104, i32 0, i32 1
  call fastcc void @gpio_v2_line_config_flags_to_desc_flags(i64 noundef %retval.0.i313, ptr noundef %flags118)
  %call119 = call i32 @gpiod_set_transitory(ptr noundef %call104, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %gpio_v2_line_config_flags.exit.out_free_linereq_crit_edge, label %if.end123

gpio_v2_line_config_flags.exit.out_free_linereq_crit_edge: ; preds = %gpio_v2_line_config_flags.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_linereq

if.end123:                                        ; preds = %gpio_v2_line_config_flags.exit
  %and = and i64 %retval.0.i313, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool124.not = icmp eq i64 %and, 0
  br i1 %tobool124.not, label %if.else131, label %if.then125

if.then125:                                       ; preds = %if.end123
  %call126 = call fastcc i32 @gpio_v2_line_config_output_value(ptr noundef %config, i32 noundef %i.1335), !range !103
  %call127 = call i32 @gpiod_direction_output(ptr noundef %call104, i32 noundef %call126) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then125.if.end147_crit_edge, label %if.then125.out_free_linereq_crit_edge

if.then125.out_free_linereq_crit_edge:            ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_linereq

if.then125.if.end147_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.else131:                                       ; preds = %if.end123
  %and132 = and i64 %retval.0.i313, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and132)
  %tobool133.not = icmp eq i64 %and132, 0
  br i1 %tobool133.not, label %if.else131.if.end147_crit_edge, label %if.then134

if.else131.if.end147_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then134:                                       ; preds = %if.else131
  %call135 = call i32 @gpiod_direction_input(ptr noundef %call104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.then134.out_free_linereq_crit_edge

if.then134.out_free_linereq_crit_edge:            ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_linereq

if.end138:                                        ; preds = %if.then134
  %and141 = and i64 %retval.0.i313, 48
  %call142 = call fastcc i32 @edge_detector_setup(ptr noundef %arrayidx115, ptr noundef %config, i32 noundef %i.1335, i64 noundef %and141)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end138.if.end147_crit_edge, label %if.end138.out_free_linereq_crit_edge

if.end138.out_free_linereq_crit_edge:             ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_linereq

if.end138.if.end147_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.end147:                                        ; preds = %if.end138.if.end147_crit_edge, %if.else131.if.end147_crit_edge, %if.then125.if.end147_crit_edge
  %57 = ptrtoint ptr %call104 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call104, align 4
  %notifier = getelementptr inbounds %struct.gpio_device, ptr %58, i32 0, i32 12
  %call149 = call i32 @blocking_notifier_call_chain(ptr noundef %notifier, i32 noundef 1, ptr noundef %call104) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @linereq_create.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@linereq_create, %for.inc165)) #9
          to label %if.then156 [label %for.inc165], !srcloc !92

if.then156:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @linereq_create.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %42) #9
  br label %for.inc165

for.inc165:                                       ; preds = %if.then156, %if.end147
  %inc166 = add nuw i32 %i.1335, 1
  %59 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_lines, align 8
  %cmp100 = icmp ult i32 %inc166, %60
  br i1 %cmp100, label %for.inc165.for.body102_crit_edge, label %for.inc165.for.end167_crit_edge

for.inc165.for.end167_crit_edge:                  ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end167

for.inc165.for.body102_crit_edge:                 ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body102

for.end167:                                       ; preds = %for.inc165.for.end167_crit_edge, %if.end95.for.end167_crit_edge
  %call168 = call i32 @get_unused_fd_flags(i32 noundef 524288) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %for.end167.out_free_linereq_crit_edge, label %if.end172

for.end167.out_free_linereq_crit_edge:            ; preds = %for.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_linereq

if.end172:                                        ; preds = %for.end167
  %call173 = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.24, ptr noundef nonnull @line_fileops, ptr noundef nonnull %call9.i.i, i32 noundef 524288) #9
  %cmp.i314 = icmp ugt ptr %call173, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %call173 to i32
  call void @put_unused_fd(i32 noundef %call168) #9
  br label %out_free_linereq

if.end177:                                        ; preds = %if.end172
  %fd178 = getelementptr inbounds %struct.gpio_v2_line_request, ptr %ulr, i32 0, i32 6
  %62 = ptrtoint ptr %fd178 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call168, ptr %fd178, align 4
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i298 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i298, label %if.end177.if.then181_crit_edge, label %copy_to_user.exit

if.end177.if.then181_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then181

copy_to_user.exit:                                ; preds = %if.end177
  %call.i.i.i302 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ulr, i32 noundef 592) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %ip, ptr noundef nonnull %ulr, i32 noundef 592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool180.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool180.not, label %if.end182, label %copy_to_user.exit.if.then181_crit_edge

copy_to_user.exit.if.then181_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then181

if.then181:                                       ; preds = %copy_to_user.exit.if.then181_crit_edge, %if.end177.if.then181_crit_edge
  call void @fput(ptr noundef %call173) #9
  call void @put_unused_fd(i32 noundef %call168) #9
  br label %cleanup203

if.end182:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @fd_install(i32 noundef %call168, ptr noundef %call173) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @linereq_create.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@linereq_create, %cleanup203)) #9
          to label %if.then197 [label %cleanup203], !srcloc !92

if.then197:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %num_lines97 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_lines97, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @linereq_create.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %64) #9
  br label %cleanup203

out_free_linereq:                                 ; preds = %if.then175, %for.end167.out_free_linereq_crit_edge, %if.end138.out_free_linereq_crit_edge, %if.then134.out_free_linereq_crit_edge, %if.then125.out_free_linereq_crit_edge, %gpio_v2_line_config_flags.exit.out_free_linereq_crit_edge, %if.end108.out_free_linereq_crit_edge, %if.then106, %if.then67.out_free_linereq_crit_edge
  %ret.2 = phi i32 [ %61, %if.then175 ], [ -12, %if.then67.out_free_linereq_crit_edge ], [ %call168, %for.end167.out_free_linereq_crit_edge ], [ %45, %if.then106 ], [ %call127, %if.then125.out_free_linereq_crit_edge ], [ %spec.store.select.i, %if.end108.out_free_linereq_crit_edge ], [ %call119, %gpio_v2_line_config_flags.exit.out_free_linereq_crit_edge ], [ %call135, %if.then134.out_free_linereq_crit_edge ], [ %call142, %if.end138.out_free_linereq_crit_edge ]
  call fastcc void @linereq_free(ptr noundef nonnull %call9.i.i)
  br label %cleanup203

cleanup203:                                       ; preds = %out_free_linereq, %if.then197, %if.end182, %if.then181, %if.end8.i.i.cleanup203_crit_edge, %if.end8.cleanup203_crit_edge, %if.end4.cleanup203_crit_edge, %if.end.cleanup203_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %ret.2, %out_free_linereq ], [ -14, %if.then181 ], [ -22, %if.end.cleanup203_crit_edge ], [ -22, %if.end4.cleanup203_crit_edge ], [ %call10, %if.end8.cleanup203_crit_edge ], [ -12, %if.end8.i.i.cleanup203_crit_edge ], [ 0, %if.then197 ], [ -14, %if.then11.i.i ], [ 0, %if.end182 ]
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %ulr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @linehandle_flags_to_desc_flags(i32 noundef %lflags, ptr noundef %flagsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %lflags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flagsp) #9
  br label %assign_bit.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flagsp) #9
  br label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.else.i, %if.then.i
  %and1 = and i32 %lflags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else.i22, label %if.then.i21

if.then.i21:                                      ; preds = %assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flagsp) #9
  br label %assign_bit.exit23

if.else.i22:                                      ; preds = %assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flagsp) #9
  br label %assign_bit.exit23

assign_bit.exit23:                                ; preds = %if.else.i22, %if.then.i21
  %and3 = and i32 %lflags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.i25, label %if.then.i24

if.then.i24:                                      ; preds = %assign_bit.exit23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flagsp) #9
  br label %assign_bit.exit26

if.else.i25:                                      ; preds = %assign_bit.exit23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flagsp) #9
  br label %assign_bit.exit26

assign_bit.exit26:                                ; preds = %if.else.i25, %if.then.i24
  %and5 = and i32 %lflags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.i28, label %if.then.i27

if.then.i27:                                      ; preds = %assign_bit.exit26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flagsp) #9
  br label %assign_bit.exit29

if.else.i28:                                      ; preds = %assign_bit.exit26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flagsp) #9
  br label %assign_bit.exit29

assign_bit.exit29:                                ; preds = %if.else.i28, %if.then.i27
  %and7 = and i32 %lflags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.i31, label %if.then.i30

if.then.i30:                                      ; preds = %assign_bit.exit29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flagsp) #9
  br label %assign_bit.exit32

if.else.i31:                                      ; preds = %assign_bit.exit29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %flagsp) #9
  br label %assign_bit.exit32

assign_bit.exit32:                                ; preds = %if.else.i31, %if.then.i30
  %and9 = and i32 %lflags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.i34, label %if.then.i33

if.then.i33:                                      ; preds = %assign_bit.exit32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 15, ptr noundef %flagsp) #9
  br label %assign_bit.exit35

if.else.i34:                                      ; preds = %assign_bit.exit32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %flagsp) #9
  br label %assign_bit.exit35

assign_bit.exit35:                                ; preds = %if.else.i34, %if.then.i33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_transitory(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linehandle_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %gcnf.i = alloca %struct.gpiohandle_config, align 4
  %ghd = alloca %struct.gpiohandle_data, align 1
  %vals = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ghd) #9
  %3 = call ptr @memset(ptr %ghd, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vals) #9
  %4 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vals, align 4, !annotation !101
  %5 = getelementptr inbounds [2 x i32], ptr %vals, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !101
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %cmd, label %entry.cleanup49_crit_edge [
    i32 -1069501432, label %if.then
    i32 -1069501431, label %if.then13
    i32 -1068190710, label %if.then44
  ]

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.then:                                          ; preds = %entry
  %num_descs = getelementptr inbounds %struct.linehandle_state, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %num_descs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_descs, align 4
  %descs = getelementptr inbounds %struct.linehandle_state, ptr %1, i32 0, i32 2
  %call = call i32 @gpiod_get_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %9, ptr noundef %descs, ptr noundef null, ptr noundef nonnull %vals) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup49_crit_edge

if.then.cleanup49_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end:                                           ; preds = %if.then
  %10 = call ptr @memset(ptr %ghd, i32 0, i32 64)
  %11 = ptrtoint ptr %num_descs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_descs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4100.not = icmp eq i32 %12, 0
  br i1 %cmp4100.not, label %if.end.if.end59.i.i_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end59.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0101 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0101, 5
  %arrayidx.i = getelementptr i32, ptr %vals, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0101, 31
  %shr.i = lshr i32 %14, %and.i
  %15 = trunc i32 %shr.i to i8
  %conv = and i8 %15, 1
  %arrayidx = getelementptr [64 x i8], ptr %ghd, i32 0, i32 %i.0101
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.0101, 1
  %17 = ptrtoint ptr %num_descs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_descs, align 4
  %cmp4 = icmp ult i32 %inc, %18
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.if.end59.i.i_crit_edge

for.body.if.end59.i.i_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end59.i.i:                                     ; preds = %for.body.if.end59.i.i_crit_edge, %if.end.if.end59.i.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.cleanup49_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup49_crit_edge:                 ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end.i.i:                                       ; preds = %if.end59.i.i
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 64, i32 -1226833920) #12, !srcloc !93
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup49_crit_edge

if.end.i.i.cleanup49_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ghd, i32 noundef 64) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ghd, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool8.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup49

if.then13:                                        ; preds = %entry
  %descs14 = getelementptr inbounds %struct.linehandle_state, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %descs14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %descs14, align 4
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool17.not = icmp eq i32 %24, 0
  br i1 %tobool17.not, label %if.then13.cleanup49_crit_edge, label %if.end59.i.i78

if.then13.cleanup49_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end59.i.i78:                                   ; preds = %if.then13
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i79 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i79, label %if.end59.i.i78.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i78.if.then11.i.i_crit_edge:           ; preds = %if.end59.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i78
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 64, i32 -1226833920) #12, !srcloc !102
  %asmresult.i.i80 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i80)
  %cmp.i6.i81 = icmp eq i32 %asmresult.i.i80, 0
  br i1 %cmp.i6.i81, label %if.end.i.i83, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !94

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i83:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i82 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ghd, i32 noundef 64) #9
  %26 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !95
  %and.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ghd, ptr noundef %2, i32 noundef 64) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %for.cond24.preheader, label %if.end.i.i83.if.then11.i.i_crit_edge, !prof !94

if.end.i.i83.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

for.cond24.preheader:                             ; preds = %if.end.i.i83
  %num_descs25 = getelementptr inbounds %struct.linehandle_state, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %num_descs25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_descs25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp2698.not = icmp eq i32 %30, 0
  br i1 %cmp2698.not, label %for.cond24.preheader.for.end35_crit_edge, label %for.cond24.preheader.for.body28_crit_edge

for.cond24.preheader.for.body28_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body28

for.cond24.preheader.for.end35_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

if.then11.i.i:                                    ; preds = %if.end.i.i83.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i78.if.then11.i.i_crit_edge
  %res.0.i.i95 = phi i32 [ %call1.i.i.i, %if.end.i.i83.if.then11.i.i_crit_edge ], [ 64, %if.end59.i.i78.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.0.i.i95
  %add.ptr.i.i = getelementptr i8, ptr %ghd, i32 %sub.i.i
  %31 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i95)
  br label %cleanup49

for.body28:                                       ; preds = %__assign_bit.exit.for.body28_crit_edge, %for.cond24.preheader.for.body28_crit_edge
  %i.199 = phi i32 [ %inc34, %__assign_bit.exit.for.body28_crit_edge ], [ 0, %for.cond24.preheader.for.body28_crit_edge ]
  %arrayidx31 = getelementptr [64 x i8], ptr %ghd, i32 0, i32 %i.199
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool32.not = icmp eq i8 %33, 0
  %rem.i.i = and i32 %i.199, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %i.199, 5
  %add.ptr.i.i85 = getelementptr i32, ptr %vals, i32 %div2.i.i
  br i1 %tobool32.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %add.ptr.i.i85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i85, align 4
  %or.i.i = or i32 %35, %shl.i.i
  br label %__assign_bit.exit

if.else.i:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i.i = xor i32 %shl.i.i, -1
  %36 = ptrtoint ptr %add.ptr.i.i85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i85, align 4
  %and.i.i = and i32 %37, %neg.i.i
  br label %__assign_bit.exit

__assign_bit.exit:                                ; preds = %if.else.i, %if.then.i
  %and.i.sink.i = phi i32 [ %and.i.i, %if.else.i ], [ %or.i.i, %if.then.i ]
  %38 = ptrtoint ptr %add.ptr.i.i85 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and.i.sink.i, ptr %add.ptr.i.i85, align 4
  %inc34 = add nuw i32 %i.199, 1
  %39 = ptrtoint ptr %num_descs25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_descs25, align 4
  %cmp26 = icmp ult i32 %inc34, %40
  br i1 %cmp26, label %__assign_bit.exit.for.body28_crit_edge, label %__assign_bit.exit.for.end35_crit_edge

__assign_bit.exit.for.end35_crit_edge:            ; preds = %__assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

__assign_bit.exit.for.body28_crit_edge:           ; preds = %__assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28

for.end35:                                        ; preds = %__assign_bit.exit.for.end35_crit_edge, %for.cond24.preheader.for.end35_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond24.preheader.for.end35_crit_edge ], [ %40, %__assign_bit.exit.for.end35_crit_edge ]
  %call40 = call i32 @gpiod_set_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %.lcssa, ptr noundef %descs14, ptr noundef null, ptr noundef nonnull %vals) #9
  br label %cleanup49

if.then44:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %gcnf.i) #9
  %41 = call ptr @memset(ptr %gcnf.i, i32 255, i32 84)
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i.i86 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i86, label %if.then44.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then44.if.then11.i.i.i_crit_edge:              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then44
  %42 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 84, i32 -1226833920) #12, !srcloc !102
  %asmresult.i.i.i = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !94

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %gcnf.i, i32 noundef 84) #9
  %43 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 4
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !95
  %and.i.i.i.i.i = and i32 %45, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %gcnf.i, ptr noundef %2, i32 noundef 84) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !94

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then44.if.then11.i.i.i_crit_edge
  %res.0.i.i48.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 84, %if.then44.if.then11.i.i.i_crit_edge ], [ 84, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 84, %res.0.i.i48.i
  %add.ptr.i.i.i = getelementptr i8, ptr %gcnf.i, i32 %sub.i.i.i
  %46 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i48.i)
  br label %linehandle_set_config.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %47 = ptrtoint ptr %gcnf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %gcnf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %48)
  %tobool.not.i.i = icmp ult i32 %48, 256
  br i1 %tobool.not.i.i, label %if.end.i.i87, label %if.end.i.linehandle_set_config.exit_crit_edge

if.end.i.linehandle_set_config.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_set_config.exit

if.end.i.i87:                                     ; preds = %if.end.i
  %49 = and i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %.not.i.i = icmp eq i32 %49, 3
  %50 = and i32 %48, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %50)
  %.not77.i.i = icmp eq i32 %50, 24
  %or.cond.i.i = or i1 %.not.i.i, %.not77.i.i
  br i1 %or.cond.i.i, label %if.end.i.i87.linehandle_set_config.exit_crit_edge, label %if.end13.i.i

if.end.i.i87.linehandle_set_config.exit_crit_edge: ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_set_config.exit

if.end13.i.i:                                     ; preds = %if.end.i.i87
  %and3.i.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i88 = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i88, label %land.lhs.true16.i.i, label %if.end13.i.i.if.end38.i.i_crit_edge

if.end13.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i

land.lhs.true16.i.i:                              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %if.end22.i.i, label %land.lhs.true16.i.i.linehandle_set_config.exit_crit_edge

land.lhs.true16.i.i.linehandle_set_config.exit_crit_edge: ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_set_config.exit

if.end22.i.i:                                     ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %52 = icmp ne i32 %49, 0
  %53 = and i32 %48, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %54 = icmp eq i32 %53, 0
  %or.cond80.i.i = or i1 %52, %54
  br i1 %or.cond80.i.i, label %if.end22.i.i.if.end38.i.i_crit_edge, label %if.end22.i.i.linehandle_set_config.exit_crit_edge

if.end22.i.i.linehandle_set_config.exit_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_set_config.exit

if.end22.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.end22.i.i.if.end38.i.i_crit_edge, %if.end13.i.i.if.end38.i.i_crit_edge
  %and39.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %tobool40.not.i.i = icmp ne i32 %and39.i.i, 0
  %and42.i.i = and i32 %48, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i)
  %tobool43.not.i.i = icmp ne i32 %and42.i.i, 0
  %or.cond72.i.not.i = and i1 %tobool40.not.i.i, %tobool43.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and42.i.i)
  %.not78.i.i = icmp eq i32 %and42.i.i, 96
  %or.cond.i = or i1 %.not78.i.i, %or.cond72.i.not.i
  br i1 %or.cond.i, label %if.end38.i.i.linehandle_set_config.exit_crit_edge, label %for.cond.preheader.i

if.end38.i.i.linehandle_set_config.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_set_config.exit

for.cond.preheader.i:                             ; preds = %if.end38.i.i
  %num_descs.i = getelementptr inbounds %struct.linehandle_state, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %num_descs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_descs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp53.not.i = icmp eq i32 %56, 0
  br i1 %cmp53.not.i, label %for.cond.preheader.i.linehandle_set_config.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.linehandle_set_config.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_set_config.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %and16.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %arrayidx.i89 = getelementptr %struct.linehandle_state, ptr %1, i32 0, i32 2, i32 %i.054.i
  %57 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i89, align 4
  %59 = ptrtoint ptr %gcnf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %gcnf.i, align 4
  %flags6.i = getelementptr inbounds %struct.gpio_desc, ptr %58, i32 0, i32 1
  call fastcc void @linehandle_flags_to_desc_flags(i32 noundef %60, ptr noundef %flags6.i) #9
  br i1 %tobool4.not.i.i88, label %if.else.i90, label %if.then8.i

if.then8.i:                                       ; preds = %for.body.i
  %arrayidx9.i = getelementptr %struct.gpiohandle_config, ptr %gcnf.i, i32 0, i32 1, i32 %i.054.i
  %61 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool10.i = icmp ne i8 %62, 0
  %lnot.ext.i = zext i1 %tobool10.i to i32
  %call12.i = call i32 @gpiod_direction_output(ptr noundef %58, i32 noundef %lnot.ext.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then8.i.if.end24.i_crit_edge, label %if.then8.i.linehandle_set_config.exit_crit_edge

if.then8.i.linehandle_set_config.exit_crit_edge:  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_set_config.exit

if.then8.i.if.end24.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.else.i90:                                      ; preds = %for.body.i
  br i1 %tobool17.not.i, label %if.else.i90.if.end24.i_crit_edge, label %if.then18.i

if.else.i90.if.end24.i_crit_edge:                 ; preds = %if.else.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then18.i:                                      ; preds = %if.else.i90
  %call19.i = call i32 @gpiod_direction_input(ptr noundef %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then18.i.if.end24.i_crit_edge, label %if.then18.i.linehandle_set_config.exit_crit_edge

if.then18.i.linehandle_set_config.exit_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_set_config.exit

if.then18.i.if.end24.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i.if.end24.i_crit_edge, %if.else.i90.if.end24.i_crit_edge, %if.then8.i.if.end24.i_crit_edge
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %58, align 4
  %notifier.i = getelementptr inbounds %struct.gpio_device, ptr %64, i32 0, i32 12
  %call25.i = call i32 @blocking_notifier_call_chain(ptr noundef %notifier.i, i32 noundef 3, ptr noundef %58) #9
  %inc.i = add nuw i32 %i.054.i, 1
  %65 = ptrtoint ptr %num_descs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_descs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %66
  br i1 %cmp.i, label %if.end24.i.for.body.i_crit_edge, label %if.end24.i.linehandle_set_config.exit_crit_edge

if.end24.i.linehandle_set_config.exit_crit_edge:  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_set_config.exit

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

linehandle_set_config.exit:                       ; preds = %if.end24.i.linehandle_set_config.exit_crit_edge, %if.then18.i.linehandle_set_config.exit_crit_edge, %if.then8.i.linehandle_set_config.exit_crit_edge, %for.cond.preheader.i.linehandle_set_config.exit_crit_edge, %if.end38.i.i.linehandle_set_config.exit_crit_edge, %if.end22.i.i.linehandle_set_config.exit_crit_edge, %land.lhs.true16.i.i.linehandle_set_config.exit_crit_edge, %if.end.i.i87.linehandle_set_config.exit_crit_edge, %if.end.i.linehandle_set_config.exit_crit_edge, %if.then11.i.i.i
  %retval.3.i = phi i32 [ -14, %if.then11.i.i.i ], [ -22, %if.end.i.linehandle_set_config.exit_crit_edge ], [ -22, %if.end.i.i87.linehandle_set_config.exit_crit_edge ], [ -22, %land.lhs.true16.i.i.linehandle_set_config.exit_crit_edge ], [ -22, %if.end38.i.i.linehandle_set_config.exit_crit_edge ], [ -22, %if.end22.i.i.linehandle_set_config.exit_crit_edge ], [ 0, %for.cond.preheader.i.linehandle_set_config.exit_crit_edge ], [ 0, %if.end24.i.linehandle_set_config.exit_crit_edge ], [ %call19.i, %if.then18.i.linehandle_set_config.exit_crit_edge ], [ %call12.i, %if.then8.i.linehandle_set_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %gcnf.i) #9
  br label %cleanup49

cleanup49:                                        ; preds = %linehandle_set_config.exit, %for.end35, %if.then11.i.i, %if.then13.cleanup49_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup49_crit_edge, %if.end59.i.i.cleanup49_crit_edge, %if.then.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %retval.1 = phi i32 [ %call40, %for.end35 ], [ %retval.3.i, %linehandle_set_config.exit ], [ %call, %if.then.cleanup49_crit_edge ], [ -1, %if.then13.cleanup49_crit_edge ], [ -22, %entry.cleanup49_crit_edge ], [ -14, %if.end59.i.i.cleanup49_crit_edge ], [ -14, %if.end.i.i.cleanup49_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vals) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ghd) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linehandle_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_descs.i = getelementptr inbounds %struct.linehandle_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_descs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_descs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.linehandle_free.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.linehandle_free.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_free.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.linehandle_state, ptr %1, i32 0, i32 2, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_free(ptr noundef nonnull %5) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.012.i, 1
  %6 = ptrtoint ptr %num_descs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_descs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.linehandle_free.exit_crit_edge

for.inc.i.linehandle_free.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linehandle_free.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

linehandle_free.exit:                             ; preds = %for.inc.i.linehandle_free.exit_crit_edge, %entry.linehandle_free.exit_crit_edge
  %label.i = getelementptr inbounds %struct.linehandle_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %label.i, align 4
  tail call void @kfree(ptr noundef %9) #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.gpio_device, ptr %11, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev.i) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_array_value_complex(i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_complex(i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lineevent_irq_handler(i32 noundef %irq, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #9
  %timestamp = getelementptr inbounds %struct.lineevent_state, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call.i, ptr %timestamp, align 8
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lineevent_irq_thread(i32 noundef %irq, ptr noundef %p) #0 align 64 {
entry:
  %ge = alloca %struct.gpioevent_data, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ge) #9
  %0 = getelementptr inbounds i8, ptr %ge, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %0, align 8
  %timestamp = getelementptr inbounds %struct.lineevent_state, ptr %p, i32 0, i32 7
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i64 @ktime_get() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i64 [ %call.i, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %ge to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %storemerge, ptr %ge, align 8
  %eflags = getelementptr inbounds %struct.lineevent_state, ptr %p, i32 0, i32 3
  %5 = ptrtoint ptr %eflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eflags, align 4
  %and6 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %7 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %.not = icmp eq i32 %7, 3
  br i1 %.not, label %if.then8, label %if.else15

if.then8:                                         ; preds = %if.end
  %desc = getelementptr inbounds %struct.lineevent_state, ptr %p, i32 0, i32 2
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 8
  %call9 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %id13 = getelementptr inbounds %struct.gpioevent_data, ptr %ge, i32 0, i32 1
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %id13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %id13, align 8
  br label %if.end30

if.else12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %id13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %id13, align 8
  br label %if.end30

if.else15:                                        ; preds = %if.end
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  %id20 = getelementptr inbounds %struct.gpioevent_data, ptr %ge, i32 0, i32 1
  %12 = ptrtoint ptr %id20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %id20, align 8
  br label %if.end30

if.else21:                                        ; preds = %if.else15
  br i1 %tobool7.not, label %if.else21.cleanup_crit_edge, label %if.then25

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  %id26 = getelementptr inbounds %struct.gpioevent_data, ptr %ge, i32 0, i32 1
  %13 = ptrtoint ptr %id26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %id26, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.then19, %if.else12, %if.then11
  %wait = getelementptr inbounds %struct.lineevent_state, ptr %p, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %wait) #9
  %events = getelementptr inbounds %struct.lineevent_state, ptr %p, i32 0, i32 6
  %call31 = call i32 @__kfifo_in(ptr noundef %events, ptr noundef nonnull %ge, i32 noundef 1) #9
  call void @_raw_spin_unlock(ptr noundef %wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool35.not = icmp eq i32 %call31, 0
  br i1 %tobool35.not, label %do.body, label %if.then36

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #9
  br label %cleanup

do.body:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lineevent_irq_thread.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lineevent_irq_thread, %cleanup)) #9
          to label %land.lhs.true45 [label %cleanup], !srcloc !92

land.lhs.true45:                                  ; preds = %do.body
  %call46 = call i32 @___ratelimit(ptr noundef nonnull @lineevent_irq_thread._rs, ptr noundef nonnull @.str.14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true45.cleanup_crit_edge, label %if.then48

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lineevent_irq_thread.descriptor, ptr noundef nonnull @.str.15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %land.lhs.true45.cleanup_crit_edge, %do.body, %if.then36, %if.else21.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else21.cleanup_crit_edge ], [ 1, %land.lhs.true45.cleanup_crit_edge ], [ 1, %if.then48 ], [ 1, %if.then36 ], [ 1, %do.body ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ge) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lineevent_free(ptr noundef %le) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.lineevent_state, ptr %le, i32 0, i32 4
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %le) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %desc = getelementptr inbounds %struct.lineevent_state, ptr %le, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_free(ptr noundef nonnull %3) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %label = getelementptr inbounds %struct.lineevent_state, ptr %le, i32 0, i32 1
  %4 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %label, align 4
  tail call void @kfree(ptr noundef %5) #9
  %6 = ptrtoint ptr %le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %le, align 8
  %dev = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev) #9
  tail call void @kfree(ptr noundef %le) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lineevent_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_ps) #0 align 64 {
entry:
  %ge = alloca %struct.gpioevent_data, align 8
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ge) #9
  %2 = call ptr @memset(ptr %ge, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp = icmp ult i32 %count, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %wait = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 5
  %events = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 6
  %out = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %7 = getelementptr inbounds i8, ptr %__wait, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end121.do.body_crit_edge, %do.body.preheader
  %bytes_read.0 = phi i32 [ %add, %if.end121.do.body_crit_edge ], [ 0, %do.body.preheader ]
  call void @_raw_spin_lock(ptr noundef %wait) #9
  %8 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %events, align 8
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp1 = icmp eq i32 %9, %11
  br i1 %cmp1, label %if.then2, label %do.body.if.end107_crit_edge

do.body.if.end107_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_read.0)
  %tobool3.not = icmp eq i32 %bytes_read.0, 0
  br i1 %tobool3.not, label %if.end7, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.then2
  %12 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_flags, align 4
  %and = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %cond.false, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cond.false:                                       ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #9
  %14 = call ptr @memset(ptr %7, i32 255, i32 16)
  %15 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %__wait, align 4
  %16 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %3, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @autoremove_wake_function, ptr %4, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %5, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %5, ptr %6, align 4
  br label %do.body24

do.body24:                                        ; preds = %do.cond.do.body24_crit_edge, %cond.false
  %call26 = call i32 @do_wait_intr(ptr noundef %wait, ptr noundef nonnull %__wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.cond, label %do.body24.do.end_crit_edge

do.body24.do.end_crit_edge:                       ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond:                                          ; preds = %do.body24
  %24 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %events, align 8
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out, align 4
  %cmp35 = icmp eq i32 %25, %27
  br i1 %cmp35, label %do.cond.do.body24_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond.do.body24_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body24.do.end_crit_edge
  %call.i.i.i159 = call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i.i159, label %if.end.i.i.i, label %do.end.__remove_wait_queue.exit_crit_edge

do.end.__remove_wait_queue.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__remove_wait_queue.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i, %do.end.__remove_wait_queue.exit_crit_edge
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  br label %__here

__here:                                           ; preds = %__remove_wait_queue.exit
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 212
  %38 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 ptrtoint (ptr blockaddress(@lineevent_read, %__here) to i32), ptr %task_state_change, align 4
  %39 = load ptr, ptr %task, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %39, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #9
  br i1 %tobool27.not, label %__here.if.end107_crit_edge, label %__here.cleanup.sink.split_crit_edge

__here.cleanup.sink.split_crit_edge:              ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

__here.if.end107_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.end107:                                        ; preds = %__here.if.end107_crit_edge, %do.body.if.end107_crit_edge
  %call110 = call i32 @__kfifo_out(ptr noundef %events, ptr noundef nonnull %ge, i32 noundef 1) #9
  call void @_raw_spin_unlock(ptr noundef %wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call110)
  %cmp114.not = icmp eq i32 %call110, 1
  br i1 %cmp114.not, label %if.end117, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end117:                                        ; preds = %if.end107
  %add.ptr = getelementptr i8, ptr %buf, i32 %bytes_read.0
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end117.cleanup_crit_edge, label %if.end.i.i

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end117
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 16, i32 -1226833920) #12, !srcloc !93
  %asmresult.i.i = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ge, i32 noundef 16) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %ge, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool119.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool119.not, label %if.end121, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end121:                                        ; preds = %copy_to_user.exit
  %add = add i32 %bytes_read.0, 16
  %add123 = add i32 %bytes_read.0, 32
  %cmp124.not = icmp ugt i32 %add123, %count
  br i1 %cmp124.not, label %if.end121.cleanup_crit_edge, label %if.end121.do.body_crit_edge

if.end121.do.body_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %__here.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %bytes_read.0, %if.then2.cleanup.sink.split_crit_edge ], [ -11, %if.end7.cleanup.sink.split_crit_edge ], [ %call26, %__here.cleanup.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %wait) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end121.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end117.cleanup_crit_edge ], [ %bytes_read.0, %if.end107.cleanup_crit_edge ], [ %add, %if.end121.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ge) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lineevent_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait1 = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait1, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait1, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %wait1) #9
  %events3 = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %events3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %events3, align 8
  %out = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  tail call void @_raw_spin_unlock(ptr noundef %wait1) #9
  %spec.select = select i1 %cmp, i32 0, i32 65
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lineevent_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %ghd = alloca %struct.gpiohandle_data, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ghd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1069501432, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -1069501432
  br i1 %cmp, label %if.then, label %entry.cleanup7_crit_edge

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup7

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds i8, ptr %ghd, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 63)
  %desc = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 8
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup7_crit_edge, label %if.end

if.then.cleanup7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup7

if.end:                                           ; preds = %if.then
  %conv = trunc i32 %call to i8
  %7 = ptrtoint ptr %ghd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %ghd, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end.cleanup7_crit_edge, label %if.end.i.i

if.end.cleanup7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup7

if.end.i.i:                                       ; preds = %if.end
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 64, i32 -1226833920) #12, !srcloc !93
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup7_crit_edge

if.end.i.i.cleanup7_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup7

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ghd, i32 noundef 64) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ghd, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup7

cleanup7:                                         ; preds = %copy_to_user.exit, %if.end.i.i.cleanup7_crit_edge, %if.end.cleanup7_crit_edge, %if.then.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.cleanup7_crit_edge ], [ -22, %entry.cleanup7_crit_edge ], [ -14, %if.end.cleanup7_crit_edge ], [ -14, %if.end.i.i.cleanup7_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ghd) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lineevent_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %irq.i = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %desc.i = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 8
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.lineevent_free.exit_crit_edge, label %if.then3.i

if.end.i.lineevent_free.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lineevent_free.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_free(ptr noundef nonnull %5) #9
  br label %lineevent_free.exit

lineevent_free.exit:                              ; preds = %if.then3.i, %if.end.i.lineevent_free.exit_crit_edge
  %label.i = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %label.i, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev.i) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_desc_to_lineinfo(ptr noundef %desc, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %chip = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %4 = call ptr @memset(ptr %info, i32 0, i32 256)
  %5 = load ptr, ptr %desc, align 4
  %descs.i = getelementptr inbounds %struct.gpio_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %descs.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %desc to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  %offset = getelementptr inbounds %struct.gpio_v2_line_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.ptr.div.i, ptr %offset, align 8
  %base = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  %add = add i32 %sub.ptr.div.i, %10
  %call2 = tail call zeroext i1 @pinctrl_gpio_can_use_line(i32 noundef %add) #9
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #9
  %name = getelementptr inbounds %struct.gpio_desc, ptr %desc, i32 0, i32 3
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @strscpy(ptr noundef %info, ptr noundef nonnull %12, i32 noundef 32) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %label = getelementptr inbounds %struct.gpio_desc, ptr %desc, i32 0, i32 2
  %13 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %label, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.end.if.end16_crit_edge, label %if.then12

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %consumer = getelementptr inbounds %struct.gpio_v2_line_info, ptr %info, i32 0, i32 1
  %call15 = tail call i32 @strscpy(ptr noundef %consumer, ptr noundef nonnull %14, i32 noundef 32) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %flags17 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %info, i32 0, i32 4
  %15 = ptrtoint ptr %flags17 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %flags17, align 8
  %flags18 = getelementptr inbounds %struct.gpio_desc, ptr %desc, i32 0, i32 1
  %16 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags18, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool20.not = icmp eq i32 %and1.i, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.end16.if.then41_crit_edge

if.end16.if.then41_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

lor.lhs.false:                                    ; preds = %if.end16
  %18 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags18, align 4
  %20 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool23.not = icmp eq i32 %20, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %lor.lhs.false.if.then41_crit_edge

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags18, align 4
  %23 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool27.not = icmp eq i32 %23, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false24.if.then41_crit_edge

lor.lhs.false24.if.then41_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %24 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags18, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool31.not = icmp eq i32 %26, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %lor.lhs.false28.if.then41_crit_edge

lor.lhs.false28.if.then41_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %27 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags18, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool35.not = icmp eq i32 %29, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %lor.lhs.false32.if.then41_crit_edge

lor.lhs.false32.if.then41_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 8
  %call38 = tail call zeroext i1 @gpiochip_line_is_valid(ptr noundef %3, i32 noundef %31) #9
  %32 = select i1 %call38, i1 %call2, i1 false
  br i1 %32, label %lor.lhs.false36.if.end43_crit_edge, label %lor.lhs.false36.if.then41_crit_edge

lor.lhs.false36.if.then41_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

lor.lhs.false36.if.end43_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then41:                                        ; preds = %lor.lhs.false36.if.then41_crit_edge, %lor.lhs.false32.if.then41_crit_edge, %lor.lhs.false28.if.then41_crit_edge, %lor.lhs.false24.if.then41_crit_edge, %lor.lhs.false.if.then41_crit_edge, %if.end16.if.then41_crit_edge
  %33 = ptrtoint ptr %flags17 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %flags17, align 8
  %or = or i64 %34, 1
  store i64 %or, ptr %flags17, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %lor.lhs.false36.if.end43_crit_edge
  %35 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags18, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool46.not = icmp eq i32 %37, 0
  %38 = ptrtoint ptr %flags17 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %flags17, align 8
  %. = select i1 %tobool46.not, i64 4, i64 8
  %or51 = or i64 %39, %.
  store i64 %or51, ptr %flags17, align 8
  %40 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags18, align 4
  %42 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool55.not = icmp eq i32 %42, 0
  br i1 %tobool55.not, label %if.end43.if.end59_crit_edge, label %if.then56

if.end43.if.end59_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then56:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %or58 = or i64 %or51, 2
  %43 = ptrtoint ptr %flags17 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %or58, ptr %flags17, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end43.if.end59_crit_edge
  %44 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags18, align 4
  %46 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool62.not = icmp eq i32 %46, 0
  br i1 %tobool62.not, label %if.end59.if.end66_crit_edge, label %if.then63

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %flags17 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %flags17, align 8
  %or65 = or i64 %48, 64
  store i64 %or65, ptr %flags17, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end59.if.end66_crit_edge
  %49 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags18, align 4
  %51 = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool69.not = icmp eq i32 %51, 0
  br i1 %tobool69.not, label %if.end66.if.end73_crit_edge, label %if.then70

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %flags17 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %flags17, align 8
  %or72 = or i64 %53, 128
  store i64 %or72, ptr %flags17, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end66.if.end73_crit_edge
  %54 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags18, align 4
  %56 = and i32 %55, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool76.not = icmp eq i32 %56, 0
  br i1 %tobool76.not, label %if.end73.if.end80_crit_edge, label %if.then77

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %flags17 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %flags17, align 8
  %or79 = or i64 %58, 1024
  store i64 %or79, ptr %flags17, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end73.if.end80_crit_edge
  %59 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags18, align 4
  %61 = and i32 %60, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool83.not = icmp eq i32 %61, 0
  br i1 %tobool83.not, label %if.end80.if.end87_crit_edge, label %if.then84

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %flags17 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %flags17, align 8
  %or86 = or i64 %63, 512
  store i64 %or86, ptr %flags17, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end80.if.end87_crit_edge
  %64 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags18, align 4
  %66 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool90.not = icmp eq i32 %66, 0
  br i1 %tobool90.not, label %if.end87.if.end94_crit_edge, label %if.then91

if.end87.if.end94_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %flags17 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %flags17, align 8
  %or93 = or i64 %68, 256
  store i64 %or93, ptr %flags17, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end87.if.end94_crit_edge
  %69 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags18, align 4
  %71 = and i32 %70, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool97.not = icmp eq i32 %71, 0
  br i1 %tobool97.not, label %if.end94.if.end101_crit_edge, label %if.then98

if.end94.if.end101_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %flags17 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %flags17, align 8
  %or100 = or i64 %73, 16
  store i64 %or100, ptr %flags17, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end94.if.end101_crit_edge
  %74 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags18, align 4
  %76 = and i32 %75, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool104.not = icmp eq i32 %76, 0
  br i1 %tobool104.not, label %if.end101.if.end108_crit_edge, label %if.then105

if.end101.if.end108_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %flags17 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %flags17, align 8
  %or107 = or i64 %78, 32
  store i64 %or107, ptr %flags17, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.end101.if.end108_crit_edge
  %79 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flags18, align 4
  %81 = and i32 %80, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool111.not = icmp eq i32 %81, 0
  br i1 %tobool111.not, label %if.end108.do.end118_crit_edge, label %if.then112

if.end108.do.end118_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %flags17 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %flags17, align 8
  %or114 = or i64 %83, 2048
  store i64 %or114, ptr %flags17, align 8
  br label %do.end118

do.end118:                                        ; preds = %if.then112, %if.end108.do.end118_crit_edge
  %debounce_period_us120 = getelementptr inbounds %struct.gpio_desc, ptr %desc, i32 0, i32 5
  %84 = ptrtoint ptr %debounce_period_us120 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %debounce_period_us120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool121.not = icmp eq i32 %85, 0
  br i1 %tobool121.not, label %do.end118.if.end125_crit_edge, label %if.then122

do.end118.if.end125_crit_edge:                    ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then122:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  %attrs = getelementptr inbounds %struct.gpio_v2_line_info, ptr %info, i32 0, i32 5
  %86 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %attrs, align 8
  %87 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %info, i32 0, i32 5, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %85, ptr %87, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %do.end118.if.end125_crit_edge
  %num_attrs.0 = phi i32 [ 1, %if.then122 ], [ 0, %do.end118.if.end125_crit_edge ]
  %num_attrs126 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %info, i32 0, i32 3
  %89 = ptrtoint ptr %num_attrs126 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %num_attrs.0, ptr %num_attrs126, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %call5) #9
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pinctrl_gpio_can_use_line(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_v2_line_config_validate(ptr noundef %lc, i32 noundef %num_lines) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_attrs = getelementptr inbounds %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 1
  %0 = ptrtoint ptr %num_attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_attrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp ugt i32 %1, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %padding = getelementptr inbounds %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 2
  %call = tail call ptr @memchr_inv(ptr noundef %padding, i32 noundef 0, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_lines)
  %cmp347.not = icmp eq i32 %num_lines, 0
  br i1 %cmp347.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = ptrtoint ptr %num_attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_attrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not.i = icmp eq i32 %3, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sh_prom.i = zext i32 %i.048 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  br i1 %cmp17.not.i, label %for.body.gpio_v2_line_config_flags.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.gpio_v2_line_config_flags.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_flags.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 3, i32 %i.018.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.i = icmp eq i32 %5, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mask4.i = getelementptr %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 3, i32 %i.018.i, i32 1
  %6 = ptrtoint ptr %mask4.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mask4.i, align 8
  %and.i = and i64 %7, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %arrayidx.i, i32 0, i32 2
  br label %gpio_v2_line_config_flags.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.gpio_v2_line_config_flags.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.gpio_v2_line_config_flags.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_flags.exit

gpio_v2_line_config_flags.exit:                   ; preds = %for.inc.i.gpio_v2_line_config_flags.exit_crit_edge, %if.then.i, %for.body.gpio_v2_line_config_flags.exit_crit_edge
  %retval.0.in.i = phi ptr [ %8, %if.then.i ], [ %lc, %for.body.gpio_v2_line_config_flags.exit_crit_edge ], [ %lc, %for.inc.i.gpio_v2_line_config_flags.exit_crit_edge ]
  %9 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %retval.0.i = load i64, ptr %retval.0.in.i, align 8
  %and.i23 = and i64 %retval.0.i, -4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i23)
  %tobool.not.i24 = icmp eq i64 %and.i23, 0
  br i1 %tobool.not.i24, label %if.end.i, label %gpio_v2_line_config_flags.exit.cleanup_crit_edge

gpio_v2_line_config_flags.exit.cleanup_crit_edge: ; preds = %gpio_v2_line_config_flags.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %gpio_v2_line_config_flags.exit
  %10 = and i64 %retval.0.i, 12
  call void @__sanitizer_cov_trace_const_cmp8(i64 12, i64 %10)
  %.not.i = icmp eq i64 %10, 12
  br i1 %.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %and3.i = and i64 %retval.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  %and1.i = and i64 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  %and7.i = and i64 %retval.0.i, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool8.not.i = icmp ne i64 %and7.i, 0
  %brmerge.not.i = and i1 %tobool8.not.i, %tobool2.not.i
  %11 = and i64 %retval.0.i, 192
  call void @__sanitizer_cov_trace_const_cmp8(i64 192, i64 %11)
  %.not66.i = icmp eq i64 %11, 192
  %or.cond.i = or i1 %.not66.i, %brmerge.not.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool22.not.i = icmp ne i64 %11, 0
  %or.cond62.i = and i1 %tobool22.not.i, %tobool4.not.i
  %or.cond68.i = or i1 %or.cond62.i, %or.cond.i
  br i1 %or.cond68.i, label %if.end6.i.cleanup_crit_edge, label %if.end27.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27.i:                                       ; preds = %if.end6.i
  %and28.i = and i64 %retval.0.i, 1792
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28.i)
  %tobool29.not.i = icmp ne i64 %and28.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool32.not.i = icmp eq i64 %10, 0
  %or.cond63.i = and i1 %tobool29.not.i, %tobool32.not.i
  br i1 %or.cond63.i, label %if.end27.i.cleanup_crit_edge, label %if.end34.i

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34.i:                                       ; preds = %if.end27.i
  %and35.i = and i64 %retval.0.i, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35.i)
  %tobool36.not.i = icmp ne i64 %and35.i, 0
  %and38.i = and i64 %retval.0.i, 768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38.i)
  %tobool39.not.i = icmp ne i64 %and38.i, 0
  %or.cond64.i.not = and i1 %tobool36.not.i, %tobool39.not.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 768, i64 %and38.i)
  %.not67.i = icmp eq i64 %and38.i, 768
  %or.cond45 = or i1 %.not67.i, %or.cond64.i.not
  br i1 %or.cond45, label %if.end34.i.cleanup_crit_edge, label %if.end8

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end34.i
  br i1 %cmp17.not.i, label %if.end8.for.inc_crit_edge, label %if.end8.for.body.i31_crit_edge

if.end8.for.body.i31_crit_edge:                   ; preds = %if.end8
  br label %for.body.i31

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i31:                                     ; preds = %for.inc.i38.for.body.i31_crit_edge, %if.end8.for.body.i31_crit_edge
  %cmp14.i = phi i1 [ %cmp.i, %for.inc.i38.for.body.i31_crit_edge ], [ true, %if.end8.for.body.i31_crit_edge ]
  %i.012.i = phi i32 [ %inc.i36, %for.inc.i38.for.body.i31_crit_edge ], [ 0, %if.end8.for.body.i31_crit_edge ]
  %arrayidx.i29 = getelementptr %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 3, i32 %i.012.i
  %12 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp1.i30 = icmp eq i32 %13, 3
  br i1 %cmp1.i30, label %land.lhs.true.i35, label %for.body.i31.for.inc.i38_crit_edge

for.body.i31.for.inc.i38_crit_edge:               ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i38

land.lhs.true.i35:                                ; preds = %for.body.i31
  %mask4.i32 = getelementptr %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 3, i32 %i.012.i, i32 1
  %14 = ptrtoint ptr %mask4.i32 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mask4.i32, align 8
  %and.i33 = and i64 %15, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i33)
  %tobool.not.i34 = icmp eq i64 %and.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.for.inc.i38_crit_edge, label %land.lhs.true.i35.gpio_v2_line_config_debounced.exit_crit_edge

land.lhs.true.i35.gpio_v2_line_config_debounced.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_debounced.exit

land.lhs.true.i35.for.inc.i38_crit_edge:          ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i38

for.inc.i38:                                      ; preds = %land.lhs.true.i35.for.inc.i38_crit_edge, %for.body.i31.for.inc.i38_crit_edge
  %inc.i36 = add nuw i32 %i.012.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i36, i32 %3)
  %cmp.i = icmp ult i32 %inc.i36, %3
  %exitcond.not.i37 = icmp eq i32 %inc.i36, %3
  br i1 %exitcond.not.i37, label %for.inc.i38.gpio_v2_line_config_debounced.exit_crit_edge, label %for.inc.i38.for.body.i31_crit_edge

for.inc.i38.for.body.i31_crit_edge:               ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i31

for.inc.i38.gpio_v2_line_config_debounced.exit_crit_edge: ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_debounced.exit

gpio_v2_line_config_debounced.exit:               ; preds = %for.inc.i38.gpio_v2_line_config_debounced.exit_crit_edge, %land.lhs.true.i35.gpio_v2_line_config_debounced.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i38.gpio_v2_line_config_debounced.exit_crit_edge ], [ %cmp14.i, %land.lhs.true.i35.gpio_v2_line_config_debounced.exit_crit_edge ]
  %or.cond = and i1 %tobool2.not.i, %cmp.lcssa.i
  br i1 %or.cond, label %gpio_v2_line_config_debounced.exit.cleanup_crit_edge, label %gpio_v2_line_config_debounced.exit.for.inc_crit_edge

gpio_v2_line_config_debounced.exit.for.inc_crit_edge: ; preds = %gpio_v2_line_config_debounced.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

gpio_v2_line_config_debounced.exit.cleanup_crit_edge: ; preds = %gpio_v2_line_config_debounced.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %gpio_v2_line_config_debounced.exit.for.inc_crit_edge, %if.end8.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %num_lines
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %gpio_v2_line_config_debounced.exit.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %gpio_v2_line_config_flags.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -22, %gpio_v2_line_config_debounced.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %gpio_v2_line_config_flags.exit.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end6.i.cleanup_crit_edge ], [ -22, %if.end27.i.cleanup_crit_edge ], [ -22, %if.end34.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @debounce_work_func(ptr noundef %work) #0 align 64 {
entry:
  %le = alloca %struct.gpio_v2_line_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %le) #9
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @gpiod_get_raw_value_cansleep(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %do.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @debounce_work_func.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@debounce_work_func, %cleanup)) #9
          to label %land.lhs.true [label %cleanup], !srcloc !92

land.lhs.true:                                    ; preds = %do.body
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @debounce_work_func._rs, ptr noundef nonnull @.str.25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @debounce_work_func.descriptor, ptr noundef nonnull @.str.26) #9
  br label %cleanup

do.end12:                                         ; preds = %entry
  %level14 = getelementptr i8, ptr %work, i32 104
  %2 = ptrtoint ptr %level14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %level14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call)
  %cmp15 = icmp eq i32 %3, %call
  br i1 %cmp15, label %do.end12.cleanup_crit_edge, label %do.body22

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body22:                                        ; preds = %do.end12
  %4 = ptrtoint ptr %level14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %call, ptr %level14, align 8
  %eflags32 = getelementptr i8, ptr %work, i32 -24
  %5 = ptrtoint ptr %eflags32 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load volatile i64, ptr %eflags32, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool33.not = icmp eq i64 %6, 0
  br i1 %tobool33.not, label %do.body22.cleanup_crit_edge, label %if.end35

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %do.body22
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool38.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool40.not = icmp eq i32 %call, 0
  %lnot.ext42 = zext i1 %tobool40.not to i32
  %level.0 = select i1 %tobool38.not, i32 %call, i32 %lnot.ext42
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %6)
  %cmp44 = icmp eq i64 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0)
  %tobool46.not = icmp eq i32 %level.0, 0
  %or.cond = select i1 %cmp44, i1 %tobool46.not, i1 false
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %6)
  %cmp47 = icmp ne i64 %6, 32
  %or.cond88 = select i1 %cmp47, i1 true, i1 %tobool46.not
  %or.cond92 = select i1 %or.cond.not, i1 %or.cond88, i1 false
  br i1 %or.cond92, label %if.end51, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end51:                                         ; preds = %if.end35
  %12 = getelementptr inbounds i8, ptr %le, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %req = getelementptr i8, ptr %work, i32 -36
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  br label %line_event_timestamp.exit

if.end.i:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i89 = tail call i64 @ktime_get() #9
  br label %line_event_timestamp.exit

line_event_timestamp.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i90 = phi i64 [ %call.i.i.i, %if.then.i ], [ %call.i.i89, %if.end.i ]
  %19 = ptrtoint ptr %le to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %retval.0.i90, ptr %le, align 8
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %descs.i = getelementptr inbounds %struct.gpio_device, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %descs.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  %offset = getelementptr inbounds %struct.gpio_v2_line_event, ptr %le, i32 0, i32 2
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.ptr.div.i, ptr %offset, align 4
  %line_seqno = getelementptr i8, ptr %work, i32 -4
  %27 = ptrtoint ptr %line_seqno to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %line_seqno, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %line_seqno, align 4
  %line_seqno56 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %le, i32 0, i32 4
  %29 = ptrtoint ptr %line_seqno56 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc, ptr %line_seqno56, align 4
  %num_lines = getelementptr inbounds %struct.linereq, ptr %15, i32 0, i32 2
  %30 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_lines, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp57 = icmp eq i32 %31, 1
  br i1 %cmp57, label %line_event_timestamp.exit.cond.end_crit_edge, label %cond.false

line_event_timestamp.exit.cond.end_crit_edge:     ; preds = %line_event_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %line_event_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %seqno = getelementptr inbounds %struct.linereq, ptr %15, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqno, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %seqno, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %seqno, ptr %seqno, i32 1, ptr elementtype(i32) %seqno) #9, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !106
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %line_event_timestamp.exit.cond.end_crit_edge
  %cond = phi i32 [ %asmresult.i.i.i.i, %cond.false ], [ %inc, %line_event_timestamp.exit.cond.end_crit_edge ]
  %seqno60 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %le, i32 0, i32 3
  %33 = ptrtoint ptr %seqno60 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %seqno60, align 8
  %spec.select = select i1 %tobool46.not, i32 2, i32 1
  %34 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %le, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select, ptr %34, align 8
  call fastcc void @linereq_put_event(ptr noundef %15, ptr noundef nonnull %le)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end35.cleanup_crit_edge, %do.body22.cleanup_crit_edge, %do.end12.cleanup_crit_edge, %if.then8, %land.lhs.true.cleanup_crit_edge, %do.body
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %le) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_v2_line_config_flags_to_desc_flags(i64 noundef %flags, ptr noundef %flagsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flagsp) #9
  br label %assign_bit.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flagsp) #9
  br label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.else.i, %if.then.i
  %and1 = and i64 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flagsp) #9
  br label %if.end6

if.else:                                          ; preds = %assign_bit.exit
  %and3 = and i64 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.else.if.end6_crit_edge, label %if.then5

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flagsp) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else.if.end6_crit_edge, %if.then
  %and7 = and i64 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.else.i44, label %if.then.i43

if.then.i43:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 16, ptr noundef %flagsp) #9
  br label %assign_bit.exit45

if.else.i44:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flagsp) #9
  br label %assign_bit.exit45

assign_bit.exit45:                                ; preds = %if.else.i44, %if.then.i43
  %and9 = and i64 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.else.i47, label %if.then.i46

if.then.i46:                                      ; preds = %assign_bit.exit45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flagsp) #9
  br label %assign_bit.exit48

if.else.i47:                                      ; preds = %assign_bit.exit45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flagsp) #9
  br label %assign_bit.exit48

assign_bit.exit48:                                ; preds = %if.else.i47, %if.then.i46
  %and11 = and i64 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.else.i50, label %if.then.i49

if.then.i49:                                      ; preds = %assign_bit.exit48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flagsp) #9
  br label %assign_bit.exit51

if.else.i50:                                      ; preds = %assign_bit.exit48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flagsp) #9
  br label %assign_bit.exit51

assign_bit.exit51:                                ; preds = %if.else.i50, %if.then.i49
  %and13 = and i64 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.else.i53, label %if.then.i52

if.then.i52:                                      ; preds = %assign_bit.exit51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flagsp) #9
  br label %assign_bit.exit54

if.else.i53:                                      ; preds = %assign_bit.exit51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flagsp) #9
  br label %assign_bit.exit54

assign_bit.exit54:                                ; preds = %if.else.i53, %if.then.i52
  %and15 = and i64 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.else.i56, label %if.then.i55

if.then.i55:                                      ; preds = %assign_bit.exit54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flagsp) #9
  br label %assign_bit.exit57

if.else.i56:                                      ; preds = %assign_bit.exit54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flagsp) #9
  br label %assign_bit.exit57

assign_bit.exit57:                                ; preds = %if.else.i56, %if.then.i55
  %and17 = and i64 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.else.i59, label %if.then.i58

if.then.i58:                                      ; preds = %assign_bit.exit57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flagsp) #9
  br label %assign_bit.exit60

if.else.i59:                                      ; preds = %assign_bit.exit57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %flagsp) #9
  br label %assign_bit.exit60

assign_bit.exit60:                                ; preds = %if.else.i59, %if.then.i58
  %and19 = and i64 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19)
  %tobool20.not = icmp eq i64 %and19, 0
  br i1 %tobool20.not, label %if.else.i62, label %if.then.i61

if.then.i61:                                      ; preds = %assign_bit.exit60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 15, ptr noundef %flagsp) #9
  br label %assign_bit.exit63

if.else.i62:                                      ; preds = %assign_bit.exit60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %flagsp) #9
  br label %assign_bit.exit63

assign_bit.exit63:                                ; preds = %if.else.i62, %if.then.i61
  %and21 = and i64 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.else.i65, label %if.then.i64

if.then.i64:                                      ; preds = %assign_bit.exit63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 18, ptr noundef %flagsp) #9
  br label %assign_bit.exit66

if.else.i65:                                      ; preds = %assign_bit.exit63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %flagsp) #9
  br label %assign_bit.exit66

assign_bit.exit66:                                ; preds = %if.else.i65, %if.then.i64
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_v2_line_config_output_value(ptr nocapture noundef readonly %lc, i32 noundef %line_idx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sh_prom = zext i32 %line_idx to i64
  %shl = shl nuw i64 1, %sh_prom
  %num_attrs = getelementptr inbounds %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 1
  %0 = ptrtoint ptr %num_attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_attrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not = icmp eq i32 %1, 0
  br i1 %cmp20.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 3, i32 %i.021
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mask4 = getelementptr %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 3, i32 %i.021, i32 1
  %4 = ptrtoint ptr %mask4 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mask4, align 8
  %and = and i64 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %and8 = and i64 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9 = icmp ne i64 %and8, 0
  %lnot.ext = zext i1 %tobool9 to i32
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edge_detector_setup(ptr noundef %line, ptr nocapture noundef readonly %lc, i32 noundef %line_idx, i64 noundef %eflags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %eflags)
  %tobool.not = icmp eq i64 %eflags, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %land.lhs.true

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

land.lhs.true:                                    ; preds = %entry
  %req = getelementptr inbounds %struct.line, ptr %line, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %mask = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.do.body10_crit_edge

land.lhs.true.do.body10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

if.then:                                          ; preds = %land.lhs.true
  %events = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 5
  %event_buffer_size = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %event_buffer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_buffer_size, align 8
  %call = tail call i32 @__kfifo_alloc(ptr noundef %events, i32 noundef %5, i32 noundef 48, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then.do.body10_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.do.body10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

do.body10:                                        ; preds = %if.then.do.body10_crit_edge, %land.lhs.true.do.body10_crit_edge, %entry.do.body10_crit_edge
  %eflags11 = getelementptr inbounds %struct.line, ptr %line, i32 0, i32 3
  %6 = ptrtoint ptr %eflags11 to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %eflags, ptr %eflags11, align 8
  %sh_prom.i = zext i32 %line_idx to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %num_attrs.i = getelementptr inbounds %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 1
  %7 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_attrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp11.not.i = icmp eq i32 %8, 0
  br i1 %cmp11.not.i, label %do.body10.if.end33_crit_edge, label %do.body10.for.body.i_crit_edge

do.body10.for.body.i_crit_edge:                   ; preds = %do.body10
  br label %for.body.i

do.body10.if.end33_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body10.for.body.i_crit_edge
  %cmp14.i = phi i1 [ %cmp.i, %for.inc.i.for.body.i_crit_edge ], [ true, %do.body10.for.body.i_crit_edge ]
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.body10.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 3, i32 %i.012.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp1.i = icmp eq i32 %10, 3
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mask4.i = getelementptr %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 3, i32 %i.012.i, i32 1
  %11 = ptrtoint ptr %mask4.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mask4.i, align 8
  %and.i = and i64 %12, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.gpio_v2_line_config_debounced.exit_crit_edge

land.lhs.true.i.gpio_v2_line_config_debounced.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_debounced.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.012.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %8)
  %cmp.i = icmp ult i32 %inc.i, %8
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.gpio_v2_line_config_debounced.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.gpio_v2_line_config_debounced.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_debounced.exit

gpio_v2_line_config_debounced.exit:               ; preds = %for.inc.i.gpio_v2_line_config_debounced.exit_crit_edge, %land.lhs.true.i.gpio_v2_line_config_debounced.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.gpio_v2_line_config_debounced.exit_crit_edge ], [ %cmp14.i, %land.lhs.true.i.gpio_v2_line_config_debounced.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %gpio_v2_line_config_debounced.exit.for.body.i108_crit_edge, label %gpio_v2_line_config_debounced.exit.if.end33_crit_edge

gpio_v2_line_config_debounced.exit.if.end33_crit_edge: ; preds = %gpio_v2_line_config_debounced.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

gpio_v2_line_config_debounced.exit.for.body.i108_crit_edge: ; preds = %gpio_v2_line_config_debounced.exit
  br label %for.body.i108

for.body.i108:                                    ; preds = %for.inc.i115.for.body.i108_crit_edge, %gpio_v2_line_config_debounced.exit.for.body.i108_crit_edge
  %i.017.i = phi i32 [ %inc.i113, %for.inc.i115.for.body.i108_crit_edge ], [ 0, %gpio_v2_line_config_debounced.exit.for.body.i108_crit_edge ]
  %arrayidx.i106 = getelementptr %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 3, i32 %i.017.i
  %13 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp1.i107 = icmp eq i32 %14, 3
  br i1 %cmp1.i107, label %land.lhs.true.i112, label %for.body.i108.for.inc.i115_crit_edge

for.body.i108.for.inc.i115_crit_edge:             ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i115

land.lhs.true.i112:                               ; preds = %for.body.i108
  %mask4.i109 = getelementptr %struct.gpio_v2_line_config, ptr %lc, i32 0, i32 3, i32 %i.017.i, i32 1
  %15 = ptrtoint ptr %mask4.i109 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mask4.i109, align 8
  %and.i110 = and i64 %16, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i110)
  %tobool.not.i111 = icmp eq i64 %and.i110, 0
  br i1 %tobool.not.i111, label %land.lhs.true.i112.for.inc.i115_crit_edge, label %if.then.i

land.lhs.true.i112.for.inc.i115_crit_edge:        ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i115

if.then.i:                                        ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #11
  %17 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %arrayidx.i106, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  br label %gpio_v2_line_config_debounce_period.exit

for.inc.i115:                                     ; preds = %land.lhs.true.i112.for.inc.i115_crit_edge, %for.body.i108.for.inc.i115_crit_edge
  %inc.i113 = add nuw i32 %i.017.i, 1
  %exitcond.not.i114 = icmp eq i32 %inc.i113, %8
  br i1 %exitcond.not.i114, label %for.inc.i115.gpio_v2_line_config_debounce_period.exit_crit_edge, label %for.inc.i115.for.body.i108_crit_edge

for.inc.i115.for.body.i108_crit_edge:             ; preds = %for.inc.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i108

for.inc.i115.gpio_v2_line_config_debounce_period.exit_crit_edge: ; preds = %for.inc.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_debounce_period.exit

gpio_v2_line_config_debounce_period.exit:         ; preds = %for.inc.i115.gpio_v2_line_config_debounce_period.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %19, %if.then.i ], [ 0, %for.inc.i115.gpio_v2_line_config_debounce_period.exit_crit_edge ]
  %20 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %line, align 8
  %call.i = tail call i32 @gpiod_set_debounce(ptr noundef %21, i32 noundef %retval.0.i) #9
  %22 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call.i, label %gpio_v2_line_config_debounce_period.exit.cleanup_crit_edge [
    i32 0, label %do.body2.i
    i32 -524, label %if.end10.i
  ]

gpio_v2_line_config_debounce_period.exit.cleanup_crit_edge: ; preds = %gpio_v2_line_config_debounce_period.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2.i:                                       ; preds = %gpio_v2_line_config_debounce_period.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %line, align 8
  %debounce_period_us4.i = getelementptr inbounds %struct.gpio_desc, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %debounce_period_us4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %retval.0.i, ptr %debounce_period_us4.i, align 4
  br label %do.body27

if.end10.i:                                       ; preds = %gpio_v2_line_config_debounce_period.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool11.not.i = icmp eq i32 %retval.0.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.do.body27_crit_edge, label %if.then12.i

if.end10.i.do.body27_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.then12.i:                                      ; preds = %if.end10.i
  %26 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %line, align 8
  %call14.i = tail call i32 @gpiod_get_raw_value_cansleep(ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then12.i.cleanup_crit_edge, label %if.end17.i

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i:                                       ; preds = %if.then12.i
  %28 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %line, align 8
  %call19.i = tail call i32 @gpiod_to_irq(ptr noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end17.i.cleanup_crit_edge, label %do.body27.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body27.i:                                      ; preds = %if.end17.i
  %level28.i = getelementptr inbounds %struct.line, ptr %line, i32 0, i32 9
  %30 = ptrtoint ptr %level28.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %call14.i, ptr %level28.i, align 8
  %req.i = getelementptr inbounds %struct.line, ptr %line, i32 0, i32 1
  %31 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req.i, align 4
  %label.i = getelementptr inbounds %struct.linereq, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %label.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %call19.i, ptr noundef nonnull @debounce_irq_handler, ptr noundef null, i32 noundef 3, ptr noundef %34, ptr noundef %line) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool34.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool34.not.i, label %do.body41.i, label %do.body27.i.cleanup_crit_edge

do.body27.i.cleanup_crit_edge:                    ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body41.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  %sw_debounced.i = getelementptr inbounds %struct.line, ptr %line, i32 0, i32 8
  %35 = ptrtoint ptr %sw_debounced.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %sw_debounced.i, align 4
  %irq46.i = getelementptr inbounds %struct.line, ptr %line, i32 0, i32 2
  %36 = ptrtoint ptr %irq46.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call19.i, ptr %irq46.i, align 8
  br label %do.body27

do.body27:                                        ; preds = %do.body41.i, %if.end10.i.do.body27_crit_edge, %do.body2.i
  %37 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %line, align 8
  %debounce_period_us28 = getelementptr inbounds %struct.gpio_desc, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %debounce_period_us28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %retval.0.i, ptr %debounce_period_us28, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.body27, %gpio_v2_line_config_debounced.exit.if.end33_crit_edge, %do.body10.if.end33_crit_edge
  br i1 %tobool.not, label %if.end33.cleanup_crit_edge, label %do.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %if.end33
  %sw_debounced = getelementptr inbounds %struct.line, ptr %line, i32 0, i32 8
  %40 = ptrtoint ptr %sw_debounced to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %sw_debounced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool39.not = icmp eq i32 %41, 0
  br i1 %tobool39.not, label %if.end41, label %do.end37.cleanup_crit_edge

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %do.end37
  %42 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %line, align 8
  %call43 = tail call i32 @gpiod_to_irq(ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.end41.cleanup_crit_edge, label %if.end45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %and = and i64 %eflags, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool46.not = icmp eq i64 %and, 0
  br i1 %tobool46.not, label %if.end45.if.end51_crit_edge, label %if.then47

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %line, align 8
  %flags = getelementptr inbounds %struct.gpio_desc, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags, align 4
  %48 = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool50.not = icmp eq i32 %48, 0
  %cond = select i1 %tobool50.not, i32 1, i32 2
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end45.if.end51_crit_edge
  %irqflags.0 = phi i32 [ %cond, %if.then47 ], [ 0, %if.end45.if.end51_crit_edge ]
  %and52 = and i64 %eflags, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and52)
  %tobool53.not = icmp eq i64 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end61_crit_edge, label %if.then54

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %line, align 8
  %flags56 = getelementptr inbounds %struct.gpio_desc, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags56, align 4
  %53 = and i32 %52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool58.not = icmp eq i32 %53, 0
  %cond59 = select i1 %tobool58.not, i32 2, i32 1
  %or60 = or i32 %cond59, %irqflags.0
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %if.end51.if.end61_crit_edge
  %irqflags.1 = phi i32 [ %or60, %if.then54 ], [ %irqflags.0, %if.end51.if.end61_crit_edge ]
  %or62 = or i32 %irqflags.1, 8192
  %req63 = getelementptr inbounds %struct.line, ptr %line, i32 0, i32 1
  %54 = ptrtoint ptr %req63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req63, align 4
  %label = getelementptr inbounds %struct.linereq, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %label, align 4
  %call64 = tail call i32 @request_threaded_irq(i32 noundef %call43, ptr noundef nonnull @edge_irq_handler, ptr noundef nonnull @edge_irq_thread, i32 noundef %or62, ptr noundef %57, ptr noundef %line) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %irq68 = getelementptr inbounds %struct.line, ptr %line, i32 0, i32 2
  %58 = ptrtoint ptr %irq68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call43, ptr %irq68, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end61.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %do.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.body27.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge, %gpio_v2_line_config_debounce_period.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end67 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %do.end37.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ -6, %if.end41.cleanup_crit_edge ], [ %call64, %if.end61.cleanup_crit_edge ], [ %call.i.i, %do.body27.i.cleanup_crit_edge ], [ -6, %if.end17.i.cleanup_crit_edge ], [ %call14.i, %if.then12.i.cleanup_crit_edge ], [ %call.i, %gpio_v2_line_config_debounce_period.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @linereq_free(ptr noundef %lr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_lines = getelementptr inbounds %struct.linereq, ptr %lr, i32 0, i32 2
  %0 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lines, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18.not = icmp eq i32 %1, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.linereq, ptr %lr, i32 0, i32 8, i32 %i.019
  %irq.i = getelementptr %struct.linereq, ptr %lr, i32 0, i32 8, i32 %i.019, i32 2
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %arrayidx) #9
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %irq.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %work.i = getelementptr %struct.linereq, ptr %lr, i32 0, i32 8, i32 %i.019, i32 7
  %call3.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i) #9
  %sw_debounced.i = getelementptr %struct.linereq, ptr %lr, i32 0, i32 8, i32 %i.019, i32 8
  %5 = ptrtoint ptr %sw_debounced.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %sw_debounced.i, align 4
  %eflags.i = getelementptr %struct.linereq, ptr %lr, i32 0, i32 8, i32 %i.019, i32 3
  %6 = ptrtoint ptr %eflags.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 0, ptr %eflags.i, align 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %tobool14.not.i = icmp eq ptr %8, null
  br i1 %tobool14.not.i, label %if.end.i.for.inc_crit_edge, label %edge_detector_stop.exit

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

edge_detector_stop.exit:                          ; preds = %if.end.i
  %debounce_period_us.i = getelementptr inbounds %struct.gpio_desc, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %debounce_period_us.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %debounce_period_us.i, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %edge_detector_stop.exit.for.inc_crit_edge, label %if.then

edge_detector_stop.exit.for.inc_crit_edge:        ; preds = %edge_detector_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %edge_detector_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_free(ptr noundef nonnull %.pr) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %edge_detector_stop.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %inc = add nuw i32 %i.019, 1
  %11 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_lines, align 8
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %events = getelementptr inbounds %struct.linereq, ptr %lr, i32 0, i32 5
  tail call void @__kfifo_free(ptr noundef %events) #9
  %label = getelementptr inbounds %struct.linereq, ptr %lr, i32 0, i32 1
  %13 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %label, align 4
  tail call void @kfree(ptr noundef %14) #9
  %15 = ptrtoint ptr %lr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lr, align 8
  %dev = getelementptr inbounds %struct.gpio_device, ptr %16, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev) #9
  tail call void @kfree(ptr noundef %lr) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @linereq_put_event(ptr noundef %lr, ptr noundef %le) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wait = getelementptr inbounds %struct.linereq, ptr %lr, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %wait) #9
  %events = getelementptr inbounds %struct.linereq, ptr %lr, i32 0, i32 5
  %0 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %events, align 8
  %out = getelementptr inbounds %struct.linereq, ptr %lr, i32 0, i32 5, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  %sub = sub i32 %1, %3
  %mask = getelementptr inbounds %struct.linereq, ptr %lr, i32 0, i32 5, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %5)
  %cmp = icmp ugt i32 %sub, %5
  br i1 %cmp, label %if.then, label %if.then12.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %3, 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %out, align 4
  %call.c = tail call i32 @__kfifo_in(ptr noundef %events, ptr noundef %le, i32 noundef 1) #9
  tail call void @_raw_spin_unlock(ptr noundef %wait) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @linereq_put_event.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@linereq_put_event, %if.end24)) #9
          to label %land.lhs.true [label %if.end24], !srcloc !92

if.then12.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.c32 = tail call i32 @__kfifo_in(ptr noundef %events, ptr noundef %le, i32 noundef 1) #9
  tail call void @_raw_spin_unlock(ptr noundef %wait) #9
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #9
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @linereq_put_event._rs, ptr noundef nonnull @.str.27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end24_crit_edge, label %if.then22

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @linereq_put_event.descriptor, ptr noundef nonnull @.str.15) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true.if.end24_crit_edge, %if.then12.critedge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_irq_handler(i32 noundef %irq, ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.line, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 8
  %flags.i = getelementptr inbounds %struct.gpio_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  br label %line_event_timestamp.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i6 = tail call i64 @ktime_get() #9
  br label %line_event_timestamp.exit

line_event_timestamp.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %call.i.i.i, %if.then.i ], [ %call.i.i6, %if.end.i ]
  %timestamp_ns = getelementptr inbounds %struct.line, ptr %p, i32 0, i32 4
  %7 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %retval.0.i, ptr %timestamp_ns, align 8
  %num_lines = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_lines, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %line_event_timestamp.exit.if.end_crit_edge, label %if.then

line_event_timestamp.exit.if.end_crit_edge:       ; preds = %line_event_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %line_event_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %seqno = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqno, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %seqno, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %seqno, ptr %seqno, i32 1, ptr elementtype(i32) %seqno) #9, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !106
  %req_seqno = getelementptr inbounds %struct.line, ptr %p, i32 0, i32 5
  %11 = ptrtoint ptr %req_seqno to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %asmresult.i.i.i.i, ptr %req_seqno, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %line_event_timestamp.exit.if.end_crit_edge
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_irq_thread(i32 noundef %irq, ptr noundef %p) #0 align 64 {
entry:
  %le = alloca %struct.gpio_v2_line_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.line, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %le) #9
  %2 = call ptr @memset(ptr %le, i32 0, i32 48)
  %timestamp_ns = getelementptr inbounds %struct.line, ptr %p, i32 0, i32 4
  %3 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %timestamp_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %le to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %le, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 8
  %flags.i = getelementptr inbounds %struct.gpio_desc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  br label %line_event_timestamp.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i58 = tail call i64 @ktime_get() #9
  br label %line_event_timestamp.exit

line_event_timestamp.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %call.i.i.i, %if.then.i ], [ %call.i.i58, %if.end.i ]
  %11 = ptrtoint ptr %le to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %retval.0.i, ptr %le, align 8
  %num_lines = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %num_lines to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_lines, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not = icmp eq i32 %13, 1
  br i1 %cmp.not, label %line_event_timestamp.exit.if.end6_crit_edge, label %if.then4

line_event_timestamp.exit.if.end6_crit_edge:      ; preds = %line_event_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %line_event_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %seqno = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqno, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %seqno, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %seqno, ptr %seqno, i32 1, ptr elementtype(i32) %seqno) #9, !srcloc !105
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !106
  %req_seqno = getelementptr inbounds %struct.line, ptr %p, i32 0, i32 5
  %15 = ptrtoint ptr %req_seqno to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %asmresult.i.i.i.i, ptr %req_seqno, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %line_event_timestamp.exit.if.end6_crit_edge, %if.then
  %16 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %timestamp_ns, align 8
  %eflags8 = getelementptr inbounds %struct.line, ptr %p, i32 0, i32 3
  %17 = ptrtoint ptr %eflags8 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load volatile i64, ptr %eflags8, align 8
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.33)
  switch i64 %18, label %if.end6.cleanup_crit_edge [
    i64 48, label %if.then10
    i64 16, label %if.then19
    i64 32, label %if.then23
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  %19 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p, align 8
  %call11 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %id15 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %le, i32 0, i32 1
  br i1 %tobool12.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %id15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %id15, align 8
  br label %if.end28

if.else14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %id15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %id15, align 8
  br label %if.end28

if.then19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %id20 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %le, i32 0, i32 1
  %23 = ptrtoint ptr %id20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %id20, align 8
  br label %if.end28

if.then23:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %id24 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %le, i32 0, i32 1
  %24 = ptrtoint ptr %id24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %id24, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then19, %if.else14, %if.then13
  %line_seqno = getelementptr inbounds %struct.line, ptr %p, i32 0, i32 6
  %25 = ptrtoint ptr %line_seqno to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %line_seqno, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %line_seqno, align 4
  %line_seqno30 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %le, i32 0, i32 4
  %27 = ptrtoint ptr %line_seqno30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc, ptr %line_seqno30, align 4
  %num_lines31 = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %num_lines31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_lines31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp32 = icmp eq i32 %29, 1
  br i1 %cmp32, label %if.end28.cond.end_crit_edge, label %cond.false

if.end28.cond.end_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %req_seqno34 = getelementptr inbounds %struct.line, ptr %p, i32 0, i32 5
  %30 = ptrtoint ptr %req_seqno34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %req_seqno34, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end28.cond.end_crit_edge
  %cond = phi i32 [ %31, %cond.false ], [ %inc, %if.end28.cond.end_crit_edge ]
  %seqno35 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %le, i32 0, i32 3
  %32 = ptrtoint ptr %seqno35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond, ptr %seqno35, align 8
  %33 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %descs.i = getelementptr inbounds %struct.gpio_device, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %descs.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  %offset = getelementptr inbounds %struct.gpio_v2_line_event, ptr %le, i32 0, i32 2
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.ptr.div.i, ptr %offset, align 4
  call fastcc void @linereq_put_event(ptr noundef %1, ptr noundef nonnull %le)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %cond.end ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %le) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debounce_irq_handler(i32 noundef %irq, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 8
  %debounce_period_us = getelementptr inbounds %struct.gpio_desc, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %debounce_period_us to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %debounce_period_us, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %4) #9
  %work = getelementptr inbounds %struct.line, ptr %p, i32 0, i32 7
  %call.i3 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef %call3.i) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linereq_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_ps) #0 align 64 {
entry:
  %le = alloca %struct.gpio_v2_line_event, align 8
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %le) #9
  %2 = call ptr @memset(ptr %le, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %count)
  %cmp = icmp ult i32 %count, 48
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %wait = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 3
  %events = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 5
  %out = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %7 = getelementptr inbounds i8, ptr %__wait, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end121.do.body_crit_edge, %do.body.preheader
  %bytes_read.0 = phi i32 [ %add, %if.end121.do.body_crit_edge ], [ 0, %do.body.preheader ]
  call void @_raw_spin_lock(ptr noundef %wait) #9
  %8 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %events, align 8
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp1 = icmp eq i32 %9, %11
  br i1 %cmp1, label %if.then2, label %do.body.if.end107_crit_edge

do.body.if.end107_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_read.0)
  %tobool3.not = icmp eq i32 %bytes_read.0, 0
  br i1 %tobool3.not, label %if.end7, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.then2
  %12 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_flags, align 4
  %and = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %cond.false, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cond.false:                                       ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #9
  %14 = call ptr @memset(ptr %7, i32 255, i32 16)
  %15 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %__wait, align 4
  %16 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %3, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @autoremove_wake_function, ptr %4, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %5, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %5, ptr %6, align 4
  br label %do.body24

do.body24:                                        ; preds = %do.cond.do.body24_crit_edge, %cond.false
  %call26 = call i32 @do_wait_intr(ptr noundef %wait, ptr noundef nonnull %__wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.cond, label %do.body24.do.end_crit_edge

do.body24.do.end_crit_edge:                       ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond:                                          ; preds = %do.body24
  %24 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %events, align 8
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out, align 4
  %cmp35 = icmp eq i32 %25, %27
  br i1 %cmp35, label %do.cond.do.body24_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.cond.do.body24_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body24.do.end_crit_edge
  %call.i.i.i155 = call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i.i155, label %if.end.i.i.i, label %do.end.__remove_wait_queue.exit_crit_edge

do.end.__remove_wait_queue.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__remove_wait_queue.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i, %do.end.__remove_wait_queue.exit_crit_edge
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  br label %__here

__here:                                           ; preds = %__remove_wait_queue.exit
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 212
  %38 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 ptrtoint (ptr blockaddress(@linereq_read, %__here) to i32), ptr %task_state_change, align 4
  %39 = load ptr, ptr %task, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %39, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #9
  br i1 %tobool27.not, label %__here.if.end107_crit_edge, label %__here.cleanup.sink.split_crit_edge

__here.cleanup.sink.split_crit_edge:              ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

__here.if.end107_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.end107:                                        ; preds = %__here.if.end107_crit_edge, %do.body.if.end107_crit_edge
  %call110 = call i32 @__kfifo_out(ptr noundef %events, ptr noundef nonnull %le, i32 noundef 1) #9
  call void @_raw_spin_unlock(ptr noundef %wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call110)
  %cmp114.not = icmp eq i32 %call110, 1
  br i1 %cmp114.not, label %if.end117, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end117:                                        ; preds = %if.end107
  %add.ptr = getelementptr i8, ptr %buf, i32 %bytes_read.0
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end117.cleanup_crit_edge, label %if.end.i.i

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end117
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 48, i32 -1226833920) #12, !srcloc !93
  %asmresult.i.i = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %le, i32 noundef 48) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %le, i32 noundef 48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool119.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool119.not, label %if.end121, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end121:                                        ; preds = %copy_to_user.exit
  %add = add i32 %bytes_read.0, 48
  %add123 = add i32 %bytes_read.0, 96
  %cmp124.not = icmp ugt i32 %add123, %count
  br i1 %cmp124.not, label %if.end121.cleanup_crit_edge, label %if.end121.do.body_crit_edge

if.end121.do.body_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %__here.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %bytes_read.0, %if.then2.cleanup.sink.split_crit_edge ], [ -11, %if.end7.cleanup.sink.split_crit_edge ], [ %call26, %__here.cleanup.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %wait) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end121.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end117.cleanup_crit_edge ], [ %bytes_read.0, %if.end107.cleanup_crit_edge ], [ %add, %if.end121.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %le) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linereq_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait1 = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait1, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait1, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %wait1) #9
  %events3 = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %events3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %events3, align 8
  %out = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  tail call void @_raw_spin_unlock(ptr noundef %wait1) #9
  %spec.select = select i1 %cmp, i32 0, i32 65
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linereq_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %lc.i = alloca %struct.gpio_v2_line_config, align 8
  %vals.i.i = alloca [2 x i32], align 8
  %lv.i17 = alloca %struct.gpio_v2_line_values, align 8
  %lv.i = alloca %struct.gpio_v2_line_values, align 8
  %vals.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -1072647154, label %if.then
    i32 -1072647153, label %if.then2
    i32 -1055869939, label %if.then6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lv.i) #9
  %4 = getelementptr inbounds %struct.gpio_v2_line_values, ptr %lv.i, i32 0, i32 1
  %5 = call ptr @memset(ptr %lv.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vals.i) #9
  %6 = ptrtoint ptr %vals.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %vals.i, align 4, !annotation !101
  %7 = getelementptr inbounds [2 x i32], ptr %vals.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !101
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.then.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.if.then11.i.i.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #12
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !94

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %lv.i, i32 noundef 16) #9
  %10 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !95
  %and.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %lv.i, ptr noundef %2, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %for.cond.preheader.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !94

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

for.cond.preheader.i:                             ; preds = %if.end.i.i.i
  %num_lines.i = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %num_lines.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_lines.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp143.not.i = icmp eq i32 %14, 0
  br i1 %cmp143.not.i, label %for.cond.preheader.i.linereq_get_values.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.linereq_get_values.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_get_values.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %4, align 8
  br label %for.body.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.if.then11.i.i.i_crit_edge
  %res.0.i.i133.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.then.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i133.i
  %add.ptr.i.i.i = getelementptr i8, ptr %lv.i, i32 %sub.i.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i133.i)
  br label %linereq_get_values.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %num_get.0146.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_get.1.i, %for.body.i.for.body.i_crit_edge ]
  %i.0145.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc4.i, %for.body.i.for.body.i_crit_edge ]
  %descs.0144.i = phi ptr [ inttoptr (i32 -1 to ptr), %for.body.lr.ph.i ], [ %descs.1.i, %for.body.i.for.body.i_crit_edge ]
  %sh_prom.i = zext i32 %i.0145.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %shl.i, %16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool1.not.i = icmp eq i64 %and.i, 0
  %arrayidx.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.0145.i
  %descs.1.i = select i1 %tobool1.not.i, ptr %descs.0144.i, ptr %arrayidx.i
  %not.tobool1.not.i = xor i1 %tobool1.not.i, true
  %inc.i = zext i1 %not.tobool1.not.i to i32
  %num_get.1.i = add i32 %num_get.0146.i, %inc.i
  %inc4.i = add nuw i32 %i.0145.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, %14
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %18 = zext i32 %num_get.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %num_get.1.i, label %if.then9.i [
    i32 0, label %for.end.i.linereq_get_values.exit_crit_edge
    i32 1, label %if.end33.thread.i
  ]

for.end.i.linereq_get_values.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_get_values.exit

if.end33.thread.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call34139.i = call i32 @gpiod_get_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 1, ptr noundef %descs.1.i, ptr noundef null, ptr noundef nonnull %vals.i) #9
  br label %if.end37.i

if.then9.i:                                       ; preds = %for.end.i
  %19 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_get.1.i, i32 4) #9
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.then9.i.linereq_get_values.exit_crit_edge, label %if.end7.i.i, !prof !107

if.then9.i.linereq_get_values.exit_crit_edge:     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_get_values.exit

if.end7.i.i:                                      ; preds = %if.then9.i
  %21 = extractvalue { i32, i1 } %19, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #14
  %tobool11.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not.i, label %if.end7.i.i.linereq_get_values.exit_crit_edge, label %for.cond14.preheader.i

if.end7.i.i.linereq_get_values.exit_crit_edge:    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_get_values.exit

for.cond14.preheader.i:                           ; preds = %if.end7.i.i
  %22 = ptrtoint ptr %num_lines.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_lines.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp16148.not.i = icmp eq i32 %23, 0
  br i1 %cmp16148.not.i, label %for.cond14.preheader.i.if.then36.i_crit_edge, label %for.body17.lr.ph.i

for.cond14.preheader.i.if.then36.i_crit_edge:     ; preds = %for.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

for.body17.lr.ph.i:                               ; preds = %for.cond14.preheader.i
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %4, align 8
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.inc30.i.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %didx.0151.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %didx.1.i, %for.inc30.i.for.body17.i_crit_edge ]
  %i.1149.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc31.i, %for.inc30.i.for.body17.i_crit_edge ]
  %sh_prom19.i = zext i32 %i.1149.i to i64
  %shl20.i = shl nuw i64 1, %sh_prom19.i
  %and21.i = and i64 %shl20.i, %25
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21.i)
  %tobool22.not.i = icmp eq i64 %and21.i, 0
  br i1 %tobool22.not.i, label %for.body17.i.for.inc30.i_crit_edge, label %if.then23.i

for.body17.i.for.inc30.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.i

if.then23.i:                                      ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx25.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.1149.i
  %26 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx25.i, align 8
  %arrayidx27.i = getelementptr ptr, ptr %call8.i.i, i32 %didx.0151.i
  %28 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx27.i, align 4
  %inc28.i = add i32 %didx.0151.i, 1
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %if.then23.i, %for.body17.i.for.inc30.i_crit_edge
  %didx.1.i = phi i32 [ %inc28.i, %if.then23.i ], [ %didx.0151.i, %for.body17.i.for.inc30.i_crit_edge ]
  %inc31.i = add nuw i32 %i.1149.i, 1
  %29 = ptrtoint ptr %num_lines.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_lines.i, align 8
  %cmp16.i = icmp ult i32 %inc31.i, %30
  br i1 %cmp16.i, label %for.inc30.i.for.body17.i_crit_edge, label %for.inc30.i.if.then36.i_crit_edge

for.inc30.i.if.then36.i_crit_edge:                ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

for.inc30.i.for.body17.i_crit_edge:               ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i

if.then36.i:                                      ; preds = %for.inc30.i.if.then36.i_crit_edge, %for.cond14.preheader.i.if.then36.i_crit_edge
  %call34.i = call i32 @gpiod_get_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %num_get.1.i, ptr noundef nonnull %call8.i.i, ptr noundef null, ptr noundef nonnull %vals.i) #9
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %if.end33.thread.i
  %call34140.i = phi i32 [ %call34139.i, %if.end33.thread.i ], [ %call34.i, %if.then36.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34140.i)
  %tobool38.not.i = icmp eq i32 %call34140.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end37.i.linereq_get_values.exit_crit_edge

if.end37.i.linereq_get_values.exit_crit_edge:     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_get_values.exit

if.end40.i:                                       ; preds = %if.end37.i
  %31 = ptrtoint ptr %lv.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %lv.i, align 8
  %32 = ptrtoint ptr %num_lines.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_lines.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp43152.not.i = icmp eq i32 %33, 0
  br i1 %cmp43152.not.i, label %if.end40.i.if.end59.i.i120.i_crit_edge, label %for.body44.lr.ph.i

if.end40.i.if.end59.i.i120.i_crit_edge:           ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i120.i

for.body44.lr.ph.i:                               ; preds = %if.end40.i
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %4, align 8
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.inc71.i.for.body44.i_crit_edge, %for.body44.lr.ph.i
  %didx.2157.i = phi i32 [ 0, %for.body44.lr.ph.i ], [ %didx.3.i, %for.inc71.i.for.body44.i_crit_edge ]
  %i.2153.i = phi i32 [ 0, %for.body44.lr.ph.i ], [ %inc72.i, %for.inc71.i.for.body44.i_crit_edge ]
  %sh_prom46.i = zext i32 %i.2153.i to i64
  %shl47.i = shl nuw i64 1, %sh_prom46.i
  %and48.i = and i64 %shl47.i, %35
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48.i)
  %tobool49.not.i = icmp eq i64 %and48.i, 0
  br i1 %tobool49.not.i, label %for.body44.i.for.inc71.i_crit_edge, label %if.then50.i

for.body44.i.for.inc71.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc71.i

if.then50.i:                                      ; preds = %for.body44.i
  %sw_debounced.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.2153.i, i32 8
  %36 = ptrtoint ptr %sw_debounced.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sw_debounced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool53.not.i = icmp eq i32 %37, 0
  br i1 %tobool53.not.i, label %if.end62.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.then50.i
  %arrayidx52.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.2153.i
  %level.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.2153.i, i32 9
  %38 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.i = icmp ne i32 %39, 0
  %40 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx52.i, align 8
  %flags.i.i = getelementptr inbounds %struct.gpio_desc, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i.i, align 4
  %44 = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool1.not.i.i = icmp ne i32 %44, 0
  %spec.select.i.i = xor i1 %tobool.i.i, %tobool1.not.i.i
  br i1 %spec.select.i.i, label %if.then54.i.if.then64.i_crit_edge, label %if.then54.i.if.end68.i_crit_edge

if.then54.i.if.end68.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

if.then54.i.if.then64.i_crit_edge:                ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64.i

if.end62.i:                                       ; preds = %if.then50.i
  %div3.i.i = lshr i32 %didx.2157.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %vals.i, i32 %div3.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %didx.2157.i, 31
  %47 = shl nuw i32 1, %and.i.i
  %48 = and i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool60.not.i = icmp eq i32 %48, 0
  br i1 %tobool60.not.i, label %if.end62.i.if.end68.i_crit_edge, label %if.end62.i.if.then64.i_crit_edge

if.end62.i.if.then64.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64.i

if.end62.i.if.end68.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

if.then64.i:                                      ; preds = %if.end62.i.if.then64.i_crit_edge, %if.then54.i.if.then64.i_crit_edge
  %49 = ptrtoint ptr %lv.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lv.i, align 8
  %or.i = or i64 %50, %shl47.i
  store i64 %or.i, ptr %lv.i, align 8
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then64.i, %if.end62.i.if.end68.i_crit_edge, %if.then54.i.if.end68.i_crit_edge
  %inc69.i = add i32 %didx.2157.i, 1
  br label %for.inc71.i

for.inc71.i:                                      ; preds = %if.end68.i, %for.body44.i.for.inc71.i_crit_edge
  %didx.3.i = phi i32 [ %inc69.i, %if.end68.i ], [ %didx.2157.i, %for.body44.i.for.inc71.i_crit_edge ]
  %inc72.i = add nuw i32 %i.2153.i, 1
  %exitcond160.not.i = icmp eq i32 %inc72.i, %33
  br i1 %exitcond160.not.i, label %for.inc71.i.if.end59.i.i120.i_crit_edge, label %for.inc71.i.for.body44.i_crit_edge

for.inc71.i.for.body44.i_crit_edge:               ; preds = %for.inc71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44.i

for.inc71.i.if.end59.i.i120.i_crit_edge:          ; preds = %for.inc71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i120.i

if.end59.i.i120.i:                                ; preds = %for.inc71.i.if.end59.i.i120.i_crit_edge, %if.end40.i.if.end59.i.i120.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i121.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i121.i, label %if.end59.i.i120.i.linereq_get_values.exit_crit_edge, label %copy_to_user.exit.i

if.end59.i.i120.i.linereq_get_values.exit_crit_edge: ; preds = %if.end59.i.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_get_values.exit

copy_to_user.exit.i:                              ; preds = %if.end59.i.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i125.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %lv.i, i32 noundef 16) #9
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %lv.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool75.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool75.not.i, i32 0, i32 -14
  br label %linereq_get_values.exit

linereq_get_values.exit:                          ; preds = %copy_to_user.exit.i, %if.end59.i.i120.i.linereq_get_values.exit_crit_edge, %if.end37.i.linereq_get_values.exit_crit_edge, %if.end7.i.i.linereq_get_values.exit_crit_edge, %if.then9.i.linereq_get_values.exit_crit_edge, %for.end.i.linereq_get_values.exit_crit_edge, %if.then11.i.i.i, %for.cond.preheader.i.linereq_get_values.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %for.end.i.linereq_get_values.exit_crit_edge ], [ -12, %if.end7.i.i.linereq_get_values.exit_crit_edge ], [ %call34140.i, %if.end37.i.linereq_get_values.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -12, %if.then9.i.linereq_get_values.exit_crit_edge ], [ -14, %if.end59.i.i120.i.linereq_get_values.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ -22, %for.cond.preheader.i.linereq_get_values.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vals.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lv.i) #9
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lv.i17) #9
  %51 = getelementptr inbounds %struct.gpio_v2_line_values, ptr %lv.i17, i32 0, i32 1
  %52 = call ptr @memset(ptr %lv.i17, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i.i18 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i18, label %if.then2.if.then11.i.i.i32_crit_edge, label %land.lhs.true.i.i.i21

if.then2.if.then11.i.i.i32_crit_edge:             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i32

land.lhs.true.i.i.i21:                            ; preds = %if.then2
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #12, !srcloc !102
  %asmresult.i.i.i19 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i19)
  %cmp.i6.i.i20 = icmp eq i32 %asmresult.i.i.i19, 0
  br i1 %cmp.i6.i.i20, label %if.end.i.i.i29, label %land.lhs.true.i.i.i21.if.then11.i.i.i32_crit_edge, !prof !94

land.lhs.true.i.i.i21.if.then11.i.i.i32_crit_edge: ; preds = %land.lhs.true.i.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i32

if.end.i.i.i29:                                   ; preds = %land.lhs.true.i.i.i21
  %call.i.i.i.i22 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %lv.i17, i32 noundef 16) #9
  %54 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i.i23 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i.i23 to ptr
  %cpu_domain.i.i.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i24) #3, !srcloc !95
  %and.i.i.i.i.i25 = and i32 %56, -13
  %or.i.i.i.i.i26 = or i32 %and.i.i.i.i.i25, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i26) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i.i27 = call i32 @arm_copy_from_user(ptr noundef nonnull %lv.i17, ptr noundef %2, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i27)
  %tobool4.not.i.i.i28 = icmp eq i32 %call1.i.i.i.i27, 0
  br i1 %tobool4.not.i.i.i28, label %if.end.i, label %if.end.i.i.i29.if.then11.i.i.i32_crit_edge, !prof !94

if.end.i.i.i29.if.then11.i.i.i32_crit_edge:       ; preds = %if.end.i.i.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i32

if.then11.i.i.i32:                                ; preds = %if.end.i.i.i29.if.then11.i.i.i32_crit_edge, %land.lhs.true.i.i.i21.if.then11.i.i.i32_crit_edge, %if.then2.if.then11.i.i.i32_crit_edge
  %res.0.i.i10.i = phi i32 [ %call1.i.i.i.i27, %if.end.i.i.i29.if.then11.i.i.i32_crit_edge ], [ 16, %if.then2.if.then11.i.i.i32_crit_edge ], [ 16, %land.lhs.true.i.i.i21.if.then11.i.i.i32_crit_edge ]
  %sub.i.i.i30 = sub i32 16, %res.0.i.i10.i
  %add.ptr.i.i.i31 = getelementptr i8, ptr %lv.i17, i32 %sub.i.i.i30
  %57 = call ptr @memset(ptr %add.ptr.i.i.i31, i32 0, i32 %res.0.i.i10.i)
  br label %linereq_set_values.exit

if.end.i:                                         ; preds = %if.end.i.i.i29
  %config_mutex.i = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %config_mutex.i, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vals.i.i) #9
  %58 = ptrtoint ptr %vals.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %vals.i.i, align 8
  %num_lines.i.i = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %num_lines.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_lines.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp86.not.i.i = icmp eq i32 %60, 0
  br i1 %cmp86.not.i.i, label %if.end.i.linereq_set_values_unlocked.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.linereq_set_values_unlocked.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_values_unlocked.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %61 = ptrtoint ptr %51 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %51, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %num_set.090.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %num_set.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.088.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc14.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %descs.087.i.i = phi ptr [ inttoptr (i32 -1 to ptr), %for.body.lr.ph.i.i ], [ %descs.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sh_prom.i.i = zext i32 %i.088.i.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %and.i.i33 = and i64 %shl.i.i, %62
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i33)
  %tobool.not.i.i = icmp eq i64 %and.i.i33, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %arrayidx.i.i34 = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.088.i.i
  %63 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i34, align 8
  %flags.i.i35 = getelementptr inbounds %struct.gpio_desc, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i.i35 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags.i.i35, align 4
  %67 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool1.not.i.i36 = icmp eq i32 %67, 0
  br i1 %tobool1.not.i.i36, label %if.then.i.i.linereq_set_values_unlocked.exit.i_crit_edge, label %if.end.i.i37

if.then.i.i.linereq_set_values_unlocked.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_values_unlocked.exit.i

if.end.i.i37:                                     ; preds = %if.then.i.i
  %68 = ptrtoint ptr %lv.i17 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %lv.i17, align 8
  %and5.i.i = and i64 %69, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i.i)
  %tobool6.not.i.i = icmp eq i64 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i37.if.end9.i.i_crit_edge, label %if.then7.i.i

if.end.i.i37.if.end9.i.i_crit_edge:               ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i.i.i = and i32 %num_set.090.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %num_set.090.i.i, 5
  %add.ptr.i.i6.i = getelementptr i32, ptr %vals.i.i, i32 %div2.i.i.i
  %70 = ptrtoint ptr %add.ptr.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i.i6.i, align 4
  %or.i.i.i = or i32 %71, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i6.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.end.i.i37.if.end9.i.i_crit_edge
  %inc.i.i = add i32 %num_set.090.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end9.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %descs.1.i.i = phi ptr [ %arrayidx.i.i34, %if.end9.i.i ], [ %descs.087.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %num_set.1.i.i = phi i32 [ %inc.i.i, %if.end9.i.i ], [ %num_set.090.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc14.i.i = add nuw i32 %i.088.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc14.i.i, %60
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %72 = zext i32 %num_set.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %num_set.1.i.i, label %if.then19.i.i [
    i32 0, label %for.end.i.i.linereq_set_values_unlocked.exit.i_crit_edge
    i32 1, label %if.end43.thread.i.i
  ]

for.end.i.i.linereq_set_values_unlocked.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_values_unlocked.exit.i

if.end43.thread.i.i:                              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4582.i.i = call i32 @gpiod_set_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 1, ptr noundef %descs.1.i.i, ptr noundef null, ptr noundef nonnull %vals.i.i) #9
  br label %linereq_set_values_unlocked.exit.i

if.then19.i.i:                                    ; preds = %for.end.i.i
  %73 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_set.1.i.i, i32 4) #9
  %74 = extractvalue { i32, i1 } %73, 1
  br i1 %74, label %if.then19.i.i.linereq_set_values_unlocked.exit.i_crit_edge, label %if.end7.i.i.i, !prof !107

if.then19.i.i.linereq_set_values_unlocked.exit.i_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_values_unlocked.exit.i

if.end7.i.i.i:                                    ; preds = %if.then19.i.i
  %75 = extractvalue { i32, i1 } %73, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %75, i32 noundef 3264) #14
  %tobool21.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool21.not.i.i, label %if.end7.i.i.i.linereq_set_values_unlocked.exit.i_crit_edge, label %for.cond24.preheader.i.i

if.end7.i.i.i.linereq_set_values_unlocked.exit.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_values_unlocked.exit.i

for.cond24.preheader.i.i:                         ; preds = %if.end7.i.i.i
  %76 = ptrtoint ptr %num_lines.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_lines.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp2693.not.i.i = icmp eq i32 %77, 0
  br i1 %cmp2693.not.i.i, label %for.cond24.preheader.i.i.if.then47.i.i_crit_edge, label %for.body27.i.i.preheader

for.cond24.preheader.i.i.if.then47.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i.i

for.body27.i.i.preheader:                         ; preds = %for.cond24.preheader.i.i
  %78 = ptrtoint ptr %51 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %51, align 8
  br label %for.body27.i.i

for.body27.i.i:                                   ; preds = %for.inc40.i.i.for.body27.i.i_crit_edge, %for.body27.i.i.preheader
  %didx.096.i.i = phi i32 [ %didx.1.i.i, %for.inc40.i.i.for.body27.i.i_crit_edge ], [ 0, %for.body27.i.i.preheader ]
  %i.194.i.i = phi i32 [ %inc41.i.i, %for.inc40.i.i.for.body27.i.i_crit_edge ], [ 0, %for.body27.i.i.preheader ]
  %sh_prom29.i.i = zext i32 %i.194.i.i to i64
  %shl30.i.i = shl nuw i64 1, %sh_prom29.i.i
  %and31.i.i = and i64 %shl30.i.i, %79
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31.i.i)
  %tobool32.not.i.i = icmp eq i64 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %for.body27.i.i.for.inc40.i.i_crit_edge, label %if.then33.i.i

for.body27.i.i.for.inc40.i.i_crit_edge:           ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc40.i.i

if.then33.i.i:                                    ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx35.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.194.i.i
  %80 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i.i = getelementptr ptr, ptr %call8.i.i.i, i32 %didx.096.i.i
  %82 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %arrayidx37.i.i, align 4
  %inc38.i.i = add i32 %didx.096.i.i, 1
  br label %for.inc40.i.i

for.inc40.i.i:                                    ; preds = %if.then33.i.i, %for.body27.i.i.for.inc40.i.i_crit_edge
  %didx.1.i.i = phi i32 [ %inc38.i.i, %if.then33.i.i ], [ %didx.096.i.i, %for.body27.i.i.for.inc40.i.i_crit_edge ]
  %inc41.i.i = add nuw i32 %i.194.i.i, 1
  %83 = ptrtoint ptr %num_lines.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_lines.i.i, align 8
  %cmp26.i.i = icmp ult i32 %inc41.i.i, %84
  br i1 %cmp26.i.i, label %for.inc40.i.i.for.body27.i.i_crit_edge, label %for.inc40.i.i.if.then47.i.i_crit_edge

for.inc40.i.i.if.then47.i.i_crit_edge:            ; preds = %for.inc40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i.i

for.inc40.i.i.for.body27.i.i_crit_edge:           ; preds = %for.inc40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27.i.i

if.then47.i.i:                                    ; preds = %for.inc40.i.i.if.then47.i.i_crit_edge, %for.cond24.preheader.i.i.if.then47.i.i_crit_edge
  %call45.i.i = call i32 @gpiod_set_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %num_set.1.i.i, ptr noundef nonnull %call8.i.i.i, ptr noundef null, ptr noundef nonnull %vals.i.i) #9
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  br label %linereq_set_values_unlocked.exit.i

linereq_set_values_unlocked.exit.i:               ; preds = %if.then47.i.i, %if.end7.i.i.i.linereq_set_values_unlocked.exit.i_crit_edge, %if.then19.i.i.linereq_set_values_unlocked.exit.i_crit_edge, %if.end43.thread.i.i, %for.end.i.i.linereq_set_values_unlocked.exit.i_crit_edge, %if.then.i.i.linereq_set_values_unlocked.exit.i_crit_edge, %if.end.i.linereq_set_values_unlocked.exit.i_crit_edge
  %retval.0.i.i41 = phi i32 [ -22, %for.end.i.i.linereq_set_values_unlocked.exit.i_crit_edge ], [ -12, %if.end7.i.i.i.linereq_set_values_unlocked.exit.i_crit_edge ], [ %call45.i.i, %if.then47.i.i ], [ %call4582.i.i, %if.end43.thread.i.i ], [ -12, %if.then19.i.i.linereq_set_values_unlocked.exit.i_crit_edge ], [ -22, %if.end.i.linereq_set_values_unlocked.exit.i_crit_edge ], [ -1, %if.then.i.i.linereq_set_values_unlocked.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vals.i.i) #9
  call void @mutex_unlock(ptr noundef %config_mutex.i) #9
  br label %linereq_set_values.exit

linereq_set_values.exit:                          ; preds = %linereq_set_values_unlocked.exit.i, %if.then11.i.i.i32
  %retval.0.i42 = phi i32 [ %retval.0.i.i41, %linereq_set_values_unlocked.exit.i ], [ -14, %if.then11.i.i.i32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lv.i17) #9
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %lc.i) #9
  %85 = call ptr @memset(ptr %lc.i, i32 255, i32 272)
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i.i43 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i43, label %if.then6.if.then11.i.i.i57_crit_edge, label %land.lhs.true.i.i.i46

if.then6.if.then11.i.i.i57_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i57

land.lhs.true.i.i.i46:                            ; preds = %if.then6
  %86 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 272, i32 -1226833920) #12, !srcloc !102
  %asmresult.i.i.i44 = extractvalue { i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i44)
  %cmp.i6.i.i45 = icmp eq i32 %asmresult.i.i.i44, 0
  br i1 %cmp.i6.i.i45, label %if.end.i.i.i54, label %land.lhs.true.i.i.i46.if.then11.i.i.i57_crit_edge, !prof !94

land.lhs.true.i.i.i46.if.then11.i.i.i57_crit_edge: ; preds = %land.lhs.true.i.i.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i57

if.end.i.i.i54:                                   ; preds = %land.lhs.true.i.i.i46
  %call.i.i.i.i47 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %lc.i, i32 noundef 272) #9
  %87 = call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i.i.i.i48 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i.i.i48 to ptr
  %cpu_domain.i.i.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 4
  %89 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i49) #3, !srcloc !95
  %and.i.i.i.i.i50 = and i32 %89, -13
  %or.i.i.i.i.i51 = or i32 %and.i.i.i.i.i50, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i51) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %call1.i.i.i.i52 = call i32 @arm_copy_from_user(ptr noundef nonnull %lc.i, ptr noundef %2, i32 noundef 272) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i52)
  %tobool4.not.i.i.i53 = icmp eq i32 %call1.i.i.i.i52, 0
  br i1 %tobool4.not.i.i.i53, label %if.end.i59, label %if.end.i.i.i54.if.then11.i.i.i57_crit_edge, !prof !94

if.end.i.i.i54.if.then11.i.i.i57_crit_edge:       ; preds = %if.end.i.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i57

if.then11.i.i.i57:                                ; preds = %if.end.i.i.i54.if.then11.i.i.i57_crit_edge, %land.lhs.true.i.i.i46.if.then11.i.i.i57_crit_edge, %if.then6.if.then11.i.i.i57_crit_edge
  %res.0.i.i22.i = phi i32 [ %call1.i.i.i.i52, %if.end.i.i.i54.if.then11.i.i.i57_crit_edge ], [ 272, %if.then6.if.then11.i.i.i57_crit_edge ], [ 272, %land.lhs.true.i.i.i46.if.then11.i.i.i57_crit_edge ]
  %sub.i.i.i55 = sub i32 272, %res.0.i.i22.i
  %add.ptr.i.i.i56 = getelementptr i8, ptr %lc.i, i32 %sub.i.i.i55
  %90 = call ptr @memset(ptr %add.ptr.i.i.i56, i32 0, i32 %res.0.i.i22.i)
  br label %linereq_set_config.exit

if.end.i59:                                       ; preds = %if.end.i.i.i54
  %num_lines.i58 = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 2
  %91 = ptrtoint ptr %num_lines.i58 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_lines.i58, align 8
  %call1.i = call fastcc i32 @gpio_v2_line_config_validate(ptr noundef nonnull %lc.i, i32 noundef %92) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i59.linereq_set_config.exit_crit_edge

if.end.i59.linereq_set_config.exit_crit_edge:     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_config.exit

if.end4.i:                                        ; preds = %if.end.i59
  %config_mutex.i60 = getelementptr inbounds %struct.linereq, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %config_mutex.i60, i32 noundef 0) #9
  %93 = ptrtoint ptr %num_lines.i58 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_lines.i58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp92.not.i.i = icmp eq i32 %94, 0
  br i1 %cmp92.not.i.i, label %if.end4.i.linereq_set_config_unlocked.exit.i_crit_edge, label %for.body.lr.ph.i.i61

if.end4.i.linereq_set_config_unlocked.exit.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_config_unlocked.exit.i

for.body.lr.ph.i.i61:                             ; preds = %if.end4.i
  %num_attrs.i.i.i = getelementptr inbounds %struct.gpio_v2_line_config, ptr %lc.i, i32 0, i32 1
  br label %for.body.i.i64

for.body.i.i64:                                   ; preds = %if.end33.i.i.for.body.i.i64_crit_edge, %for.body.lr.ph.i.i61
  %i.093.i.i = phi i32 [ 0, %for.body.lr.ph.i.i61 ], [ %inc.i.i73, %if.end33.i.i.for.body.i.i64_crit_edge ]
  %arrayidx.i.i62 = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i
  %95 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i62, align 8
  %sh_prom.i.i.i = zext i32 %i.093.i.i to i64
  %shl.i.i.i63 = shl nuw i64 1, %sh_prom.i.i.i
  %97 = ptrtoint ptr %num_attrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_attrs.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp17.not.i.i.i = icmp eq i32 %98, 0
  br i1 %cmp17.not.i.i.i, label %for.body.i.i64.gpio_v2_line_config_flags.exit.i.i_crit_edge, label %for.body.i.i64.for.body.i.i.i_crit_edge

for.body.i.i64.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i64
  br label %for.body.i.i.i

for.body.i.i64.gpio_v2_line_config_flags.exit.i.i_crit_edge: ; preds = %for.body.i.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_flags.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i64.for.body.i.i.i_crit_edge
  %i.018.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i64.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.gpio_v2_line_config, ptr %lc.i, i32 0, i32 3, i32 %i.018.i.i.i
  %99 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp1.i.i13.i = icmp eq i32 %100, 1
  br i1 %cmp1.i.i13.i, label %land.lhs.true.i.i14.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

land.lhs.true.i.i14.i:                            ; preds = %for.body.i.i.i
  %mask4.i.i.i = getelementptr %struct.gpio_v2_line_config, ptr %lc.i, i32 0, i32 3, i32 %i.018.i.i.i, i32 1
  %101 = ptrtoint ptr %mask4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %mask4.i.i.i, align 8
  %and.i.i.i = and i64 %102, %shl.i.i.i63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i14.i.for.inc.i.i.i_crit_edge, label %if.then.i.i15.i

land.lhs.true.i.i14.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.then.i.i15.i:                                  ; preds = %land.lhs.true.i.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %arrayidx.i.i.i, i32 0, i32 2
  br label %gpio_v2_line_config_flags.exit.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i14.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.018.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %98
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.gpio_v2_line_config_flags.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.gpio_v2_line_config_flags.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_flags.exit.i.i

gpio_v2_line_config_flags.exit.i.i:               ; preds = %for.inc.i.i.i.gpio_v2_line_config_flags.exit.i.i_crit_edge, %if.then.i.i15.i, %for.body.i.i64.gpio_v2_line_config_flags.exit.i.i_crit_edge
  %retval.0.in.i.i.i = phi ptr [ %103, %if.then.i.i15.i ], [ %lc.i, %for.body.i.i64.gpio_v2_line_config_flags.exit.i.i_crit_edge ], [ %lc.i, %for.inc.i.i.i.gpio_v2_line_config_flags.exit.i.i_crit_edge ]
  %104 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %retval.0.i.i.i65 = load i64, ptr %retval.0.in.i.i.i, align 8
  %flags2.i.i = getelementptr inbounds %struct.gpio_desc, ptr %96, i32 0, i32 1
  %105 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %flags2.i.i, align 4
  %107 = and i32 %106, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.i66 = icmp ne i32 %107, 0
  %108 = and i64 %retval.0.i.i.i65, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %108)
  %109 = icmp ne i64 %108, 0
  %cmp6.i.i = xor i1 %109, %tobool.i.i66
  call fastcc void @gpio_v2_line_config_flags_to_desc_flags(i64 noundef %retval.0.i.i.i65, ptr noundef %flags2.i.i) #9
  %and9.i.i = and i64 %retval.0.i.i.i65, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i.i)
  %tobool10.not.i.i = icmp eq i64 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else.i.i, label %if.then.i.i67

if.then.i.i67:                                    ; preds = %gpio_v2_line_config_flags.exit.i.i
  %110 = ptrtoint ptr %num_attrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_attrs.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp20.not.i.i.i = icmp eq i32 %111, 0
  br i1 %cmp20.not.i.i.i, label %if.then.i.i67.gpio_v2_line_config_output_value.exit.i.i_crit_edge, label %if.then.i.i67.for.body.i71.i.i_crit_edge

if.then.i.i67.for.body.i71.i.i_crit_edge:         ; preds = %if.then.i.i67
  br label %for.body.i71.i.i

if.then.i.i67.gpio_v2_line_config_output_value.exit.i.i_crit_edge: ; preds = %if.then.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_output_value.exit.i.i

for.body.i71.i.i:                                 ; preds = %for.inc.i79.i.i.for.body.i71.i.i_crit_edge, %if.then.i.i67.for.body.i71.i.i_crit_edge
  %i.021.i.i.i = phi i32 [ %inc.i77.i.i, %for.inc.i79.i.i.for.body.i71.i.i_crit_edge ], [ 0, %if.then.i.i67.for.body.i71.i.i_crit_edge ]
  %arrayidx.i69.i.i = getelementptr %struct.gpio_v2_line_config, ptr %lc.i, i32 0, i32 3, i32 %i.021.i.i.i
  %112 = ptrtoint ptr %arrayidx.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i69.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp1.i70.i.i = icmp eq i32 %113, 2
  br i1 %cmp1.i70.i.i, label %land.lhs.true.i75.i.i, label %for.body.i71.i.i.for.inc.i79.i.i_crit_edge

for.body.i71.i.i.for.inc.i79.i.i_crit_edge:       ; preds = %for.body.i71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i79.i.i

land.lhs.true.i75.i.i:                            ; preds = %for.body.i71.i.i
  %mask4.i72.i.i = getelementptr %struct.gpio_v2_line_config, ptr %lc.i, i32 0, i32 3, i32 %i.021.i.i.i, i32 1
  %114 = ptrtoint ptr %mask4.i72.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %mask4.i72.i.i, align 8
  %and.i73.i.i = and i64 %115, %shl.i.i.i63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i73.i.i)
  %tobool.not.i74.i.i = icmp eq i64 %and.i73.i.i, 0
  br i1 %tobool.not.i74.i.i, label %land.lhs.true.i75.i.i.for.inc.i79.i.i_crit_edge, label %if.then.i76.i.i

land.lhs.true.i75.i.i.for.inc.i79.i.i_crit_edge:  ; preds = %land.lhs.true.i75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i79.i.i

if.then.i76.i.i:                                  ; preds = %land.lhs.true.i75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %arrayidx.i69.i.i, i32 0, i32 2
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %116, align 8
  %and8.i.i.i = and i64 %118, %shl.i.i.i63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i.i.i)
  %tobool9.i.i.i = icmp ne i64 %and8.i.i.i, 0
  %lnot.ext.i.i.i = zext i1 %tobool9.i.i.i to i32
  br label %gpio_v2_line_config_output_value.exit.i.i

for.inc.i79.i.i:                                  ; preds = %land.lhs.true.i75.i.i.for.inc.i79.i.i_crit_edge, %for.body.i71.i.i.for.inc.i79.i.i_crit_edge
  %inc.i77.i.i = add nuw i32 %i.021.i.i.i, 1
  %exitcond.not.i78.i.i = icmp eq i32 %inc.i77.i.i, %111
  br i1 %exitcond.not.i78.i.i, label %for.inc.i79.i.i.gpio_v2_line_config_output_value.exit.i.i_crit_edge, label %for.inc.i79.i.i.for.body.i71.i.i_crit_edge

for.inc.i79.i.i.for.body.i71.i.i_crit_edge:       ; preds = %for.inc.i79.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i71.i.i

for.inc.i79.i.i.gpio_v2_line_config_output_value.exit.i.i_crit_edge: ; preds = %for.inc.i79.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_output_value.exit.i.i

gpio_v2_line_config_output_value.exit.i.i:        ; preds = %for.inc.i79.i.i.gpio_v2_line_config_output_value.exit.i.i_crit_edge, %if.then.i76.i.i, %if.then.i.i67.gpio_v2_line_config_output_value.exit.i.i_crit_edge
  %retval.0.i80.i.i = phi i32 [ %lnot.ext.i.i.i, %if.then.i76.i.i ], [ 0, %if.then.i.i67.gpio_v2_line_config_output_value.exit.i.i_crit_edge ], [ 0, %for.inc.i79.i.i.gpio_v2_line_config_output_value.exit.i.i_crit_edge ]
  %irq.i.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 2
  %119 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %irq.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i81.i.i = icmp eq i32 %120, 0
  br i1 %tobool.not.i81.i.i, label %gpio_v2_line_config_output_value.exit.i.i.if.end.i.i17.i_crit_edge, label %if.then.i82.i.i

gpio_v2_line_config_output_value.exit.i.i.if.end.i.i17.i_crit_edge: ; preds = %gpio_v2_line_config_output_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i17.i

if.then.i82.i.i:                                  ; preds = %gpio_v2_line_config_output_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i16.i = call ptr @free_irq(i32 noundef %120, ptr noundef %arrayidx.i.i62) #9
  %121 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %irq.i.i.i, align 8
  br label %if.end.i.i17.i

if.end.i.i17.i:                                   ; preds = %if.then.i82.i.i, %gpio_v2_line_config_output_value.exit.i.i.if.end.i.i17.i_crit_edge
  %work.i.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 7
  %call3.i.i.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i.i.i) #9
  %sw_debounced.i.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 8
  %122 = ptrtoint ptr %sw_debounced.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 0, ptr %sw_debounced.i.i.i, align 4
  %eflags.i.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 3
  %123 = ptrtoint ptr %eflags.i.i.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store volatile i64 0, ptr %eflags.i.i.i, align 8
  %124 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.i62, align 8
  %tobool14.not.i.i.i = icmp eq ptr %125, null
  br i1 %tobool14.not.i.i.i, label %if.end.i.i17.i.edge_detector_stop.exit.i.i_crit_edge, label %do.body19.i.i.i

if.end.i.i17.i.edge_detector_stop.exit.i.i_crit_edge: ; preds = %if.end.i.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %edge_detector_stop.exit.i.i

do.body19.i.i.i:                                  ; preds = %if.end.i.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  %debounce_period_us.i.i.i = getelementptr inbounds %struct.gpio_desc, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %debounce_period_us.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 0, ptr %debounce_period_us.i.i.i, align 4
  br label %edge_detector_stop.exit.i.i

edge_detector_stop.exit.i.i:                      ; preds = %do.body19.i.i.i, %if.end.i.i17.i.edge_detector_stop.exit.i.i_crit_edge
  %call14.i.i = call i32 @gpiod_direction_output(ptr noundef %96, i32 noundef %retval.0.i80.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %edge_detector_stop.exit.i.i.if.end33.i.i_crit_edge, label %edge_detector_stop.exit.i.i.linereq_set_config_unlocked.exit.i_crit_edge

edge_detector_stop.exit.i.i.linereq_set_config_unlocked.exit.i_crit_edge: ; preds = %edge_detector_stop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_config_unlocked.exit.i

edge_detector_stop.exit.i.i.if.end33.i.i_crit_edge: ; preds = %edge_detector_stop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.else.i.i:                                      ; preds = %gpio_v2_line_config_flags.exit.i.i
  %and17.i.i = and i64 %retval.0.i.i.i65, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17.i.i)
  %tobool18.not.i.i = icmp eq i64 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.else.i.i.if.end33.i.i_crit_edge, label %if.then19.i.i69

if.else.i.i.if.end33.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.then19.i.i69:                                  ; preds = %if.else.i.i
  %call20.i.i = call i32 @gpiod_direction_input(ptr noundef %96) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i68 = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i68, label %if.end23.i.i, label %if.then19.i.i69.linereq_set_config_unlocked.exit.i_crit_edge

if.then19.i.i69.linereq_set_config_unlocked.exit.i_crit_edge: ; preds = %if.then19.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_config_unlocked.exit.i

if.end23.i.i:                                     ; preds = %if.then19.i.i69
  %and26.i.i = and i64 %retval.0.i.i.i65, 48
  %127 = ptrtoint ptr %num_attrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_attrs.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp16.not.i.i.i.i = icmp eq i32 %128, 0
  br i1 %cmp16.not.i.i.i.i, label %if.end23.i.i.gpio_v2_line_config_debounce_period.exit.i.i.i_crit_edge, label %if.end23.i.i.for.body.i.i.i.i_crit_edge

if.end23.i.i.for.body.i.i.i.i_crit_edge:          ; preds = %if.end23.i.i
  br label %for.body.i.i.i.i

if.end23.i.i.gpio_v2_line_config_debounce_period.exit.i.i.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_debounce_period.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end23.i.i.for.body.i.i.i.i_crit_edge
  %i.017.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end23.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.gpio_v2_line_config, ptr %lc.i, i32 0, i32 3, i32 %i.017.i.i.i.i
  %129 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %130)
  %cmp1.i.i.i.i = icmp eq i32 %130, 3
  br i1 %cmp1.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %mask4.i.i.i.i = getelementptr %struct.gpio_v2_line_config, ptr %lc.i, i32 0, i32 3, i32 %i.017.i.i.i.i, i32 1
  %131 = ptrtoint ptr %mask4.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %mask4.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %132, %shl.i.i.i63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.not.i.i.i.i70 = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i70, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then.i.i.i.i71

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

if.then.i.i.i.i71:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %133 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %arrayidx.i.i.i.i, i32 0, i32 2
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 8
  br label %gpio_v2_line_config_debounce_period.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw i32 %i.017.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %128
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.gpio_v2_line_config_debounce_period.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.gpio_v2_line_config_debounce_period.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpio_v2_line_config_debounce_period.exit.i.i.i

gpio_v2_line_config_debounce_period.exit.i.i.i:   ; preds = %for.inc.i.i.i.i.gpio_v2_line_config_debounce_period.exit.i.i.i_crit_edge, %if.then.i.i.i.i71, %if.end23.i.i.gpio_v2_line_config_debounce_period.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %135, %if.then.i.i.i.i71 ], [ 0, %if.end23.i.i.gpio_v2_line_config_debounce_period.exit.i.i.i_crit_edge ], [ 0, %for.inc.i.i.i.i.gpio_v2_line_config_debounce_period.exit.i.i.i_crit_edge ]
  %eflags1.i.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 3
  %136 = ptrtoint ptr %eflags1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load volatile i64, ptr %eflags1.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %137, i64 %and26.i.i)
  %cmp.i.i18.i = icmp ne i64 %137, %and26.i.i
  %brmerge.i.i.i = or i1 %cmp6.i.i, %cmp.i.i18.i
  br i1 %brmerge.i.i.i, label %gpio_v2_line_config_debounce_period.exit.i.i.i.if.end.i83.i.i_crit_edge, label %do.end5.i.i.i

gpio_v2_line_config_debounce_period.exit.i.i.i.if.end.i83.i.i_crit_edge: ; preds = %gpio_v2_line_config_debounce_period.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i83.i.i

do.end5.i.i.i:                                    ; preds = %gpio_v2_line_config_debounce_period.exit.i.i.i
  %138 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i.i62, align 8
  %debounce_period_us7.i.i.i = getelementptr inbounds %struct.gpio_desc, ptr %139, i32 0, i32 5
  %140 = ptrtoint ptr %debounce_period_us7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %debounce_period_us7.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %retval.0.i.i.i.i)
  %cmp8.i.i.i = icmp eq i32 %141, %retval.0.i.i.i.i
  br i1 %cmp8.i.i.i, label %do.end5.i.i.i.if.end33.i.i_crit_edge, label %do.end5.i.i.i.if.end.i83.i.i_crit_edge

do.end5.i.i.i.if.end.i83.i.i_crit_edge:           ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i83.i.i

do.end5.i.i.i.if.end33.i.i_crit_edge:             ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.end.i83.i.i:                                   ; preds = %do.end5.i.i.i.if.end.i83.i.i_crit_edge, %gpio_v2_line_config_debounce_period.exit.i.i.i.if.end.i83.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %retval.0.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end.i83.i.i.if.end38.i.i.i_crit_edge, label %do.end13.i.i.i

if.end.i83.i.i.if.end38.i.i.i_crit_edge:          ; preds = %if.end.i83.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i.i

do.end13.i.i.i:                                   ; preds = %if.end.i83.i.i
  %sw_debounced.i84.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 8
  %142 = ptrtoint ptr %sw_debounced.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %sw_debounced.i84.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool15.not.i.i.i = icmp eq i32 %143, 0
  br i1 %tobool15.not.i.i.i, label %do.end13.i.i.i.if.end38.i.i.i_crit_edge, label %do.body21.i.i.i

do.end13.i.i.i.if.end38.i.i.i_crit_edge:          ; preds = %do.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i.i

do.body21.i.i.i:                                  ; preds = %do.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %eflags1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store volatile i64 %and26.i.i, ptr %eflags1.i.i.i, align 8
  %145 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i.i62, align 8
  %debounce_period_us33.i.i.i = getelementptr inbounds %struct.gpio_desc, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %debounce_period_us33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 %retval.0.i.i.i.i, ptr %debounce_period_us33.i.i.i, align 4
  br label %if.end33.i.i

if.end38.i.i.i:                                   ; preds = %do.end13.i.i.i.if.end38.i.i.i_crit_edge, %if.end.i83.i.i.if.end38.i.i.i_crit_edge
  %irq.i85.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 2
  %148 = ptrtoint ptr %irq.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %irq.i85.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool39.not.i.i.i = icmp eq i32 %149, 0
  br i1 %tobool39.not.i.i.i, label %if.end38.i.i.i.lor.lhs.false.i.i.i_crit_edge, label %do.end43.i.i.i

if.end38.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i.i

do.end43.i.i.i:                                   ; preds = %if.end38.i.i.i
  %sw_debounced45.i.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 8
  %150 = ptrtoint ptr %sw_debounced45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %sw_debounced45.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool46.not.i.i.i = icmp eq i32 %151, 0
  br i1 %tobool46.not.i.i.i, label %do.end43.i.i.i.if.then.i75.i.i.i_crit_edge, label %do.end43.i.i.i.lor.lhs.false.i.i.i_crit_edge

do.end43.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %do.end43.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i.i

do.end43.i.i.i.if.then.i75.i.i.i_crit_edge:       ; preds = %do.end43.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i75.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end43.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.end38.i.i.i.lor.lhs.false.i.i.i_crit_edge
  br i1 %tobool9.not.i.i.i, label %do.end51.i.i.i, label %lor.lhs.false.i.i.i.edge_detector_update.exit.i.i_crit_edge

lor.lhs.false.i.i.i.edge_detector_update.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %edge_detector_update.exit.i.i

do.end51.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %sw_debounced53.i.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 8
  %152 = ptrtoint ptr %sw_debounced53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %sw_debounced53.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool54.not.i.i.i = icmp eq i32 %153, 0
  br i1 %tobool54.not.i.i.i, label %do.end51.i.i.i.edge_detector_update.exit.i.i_crit_edge, label %if.then55.i.i.i

do.end51.i.i.i.edge_detector_update.exit.i.i_crit_edge: ; preds = %do.end51.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %edge_detector_update.exit.i.i

if.then55.i.i.i:                                  ; preds = %do.end51.i.i.i
  br i1 %tobool39.not.i.i.i, label %if.then55.i.i.i.if.end.i.i.i.i72_crit_edge, label %if.then55.i.i.i.if.then.i75.i.i.i_crit_edge

if.then55.i.i.i.if.then.i75.i.i.i_crit_edge:      ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i75.i.i.i

if.then55.i.i.i.if.end.i.i.i.i72_crit_edge:       ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i72

if.then.i75.i.i.i:                                ; preds = %if.then55.i.i.i.if.then.i75.i.i.i_crit_edge, %do.end43.i.i.i.if.then.i75.i.i.i_crit_edge
  %call.i.i.i19.i = call ptr @free_irq(i32 noundef %149, ptr noundef %arrayidx.i.i62) #9
  %154 = ptrtoint ptr %irq.i85.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %irq.i85.i.i, align 8
  br label %if.end.i.i.i.i72

if.end.i.i.i.i72:                                 ; preds = %if.then.i75.i.i.i, %if.then55.i.i.i.if.end.i.i.i.i72_crit_edge
  %work.i.i.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 7
  %call3.i.i.i.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i.i.i.i) #9
  %sw_debounced.i.i.i.i = getelementptr %struct.linereq, ptr %1, i32 0, i32 8, i32 %i.093.i.i, i32 8
  %155 = ptrtoint ptr %sw_debounced.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile i32 0, ptr %sw_debounced.i.i.i.i, align 4
  %156 = ptrtoint ptr %eflags1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store volatile i64 0, ptr %eflags1.i.i.i, align 8
  %157 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx.i.i62, align 8
  %tobool14.not.i.i.i.i = icmp eq ptr %158, null
  br i1 %tobool14.not.i.i.i.i, label %if.end.i.i.i.i72.edge_detector_update.exit.i.i_crit_edge, label %do.body19.i.i.i.i

if.end.i.i.i.i72.edge_detector_update.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %edge_detector_update.exit.i.i

do.body19.i.i.i.i:                                ; preds = %if.end.i.i.i.i72
  call void @__sanitizer_cov_trace_pc() #11
  %debounce_period_us.i.i.i.i = getelementptr inbounds %struct.gpio_desc, ptr %158, i32 0, i32 5
  %159 = ptrtoint ptr %debounce_period_us.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile i32 0, ptr %debounce_period_us.i.i.i.i, align 4
  br label %edge_detector_update.exit.i.i

edge_detector_update.exit.i.i:                    ; preds = %do.body19.i.i.i.i, %if.end.i.i.i.i72.edge_detector_update.exit.i.i_crit_edge, %do.end51.i.i.i.edge_detector_update.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.edge_detector_update.exit.i.i_crit_edge
  %call57.i.i.i = call fastcc i32 @edge_detector_setup(ptr noundef %arrayidx.i.i62, ptr noundef nonnull %lc.i, i32 noundef %i.093.i.i, i64 noundef %and26.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i.i)
  %tobool29.not.i.i = icmp eq i32 %call57.i.i.i, 0
  br i1 %tobool29.not.i.i, label %edge_detector_update.exit.i.i.if.end33.i.i_crit_edge, label %edge_detector_update.exit.i.i.linereq_set_config_unlocked.exit.i_crit_edge

edge_detector_update.exit.i.i.linereq_set_config_unlocked.exit.i_crit_edge: ; preds = %edge_detector_update.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_config_unlocked.exit.i

edge_detector_update.exit.i.i.if.end33.i.i_crit_edge: ; preds = %edge_detector_update.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %edge_detector_update.exit.i.i.if.end33.i.i_crit_edge, %do.body21.i.i.i, %do.end5.i.i.i.if.end33.i.i_crit_edge, %if.else.i.i.if.end33.i.i_crit_edge, %edge_detector_stop.exit.i.i.if.end33.i.i_crit_edge
  %160 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %96, align 4
  %notifier.i.i = getelementptr inbounds %struct.gpio_device, ptr %161, i32 0, i32 12
  %call34.i.i = call i32 @blocking_notifier_call_chain(ptr noundef %notifier.i.i, i32 noundef 3, ptr noundef %96) #9
  %inc.i.i73 = add nuw i32 %i.093.i.i, 1
  %162 = ptrtoint ptr %num_lines.i58 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %num_lines.i58, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i73, %163
  br i1 %cmp.i.i, label %if.end33.i.i.for.body.i.i64_crit_edge, label %if.end33.i.i.linereq_set_config_unlocked.exit.i_crit_edge

if.end33.i.i.linereq_set_config_unlocked.exit.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %linereq_set_config_unlocked.exit.i

if.end33.i.i.for.body.i.i64_crit_edge:            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i64

linereq_set_config_unlocked.exit.i:               ; preds = %if.end33.i.i.linereq_set_config_unlocked.exit.i_crit_edge, %edge_detector_update.exit.i.i.linereq_set_config_unlocked.exit.i_crit_edge, %if.then19.i.i69.linereq_set_config_unlocked.exit.i_crit_edge, %edge_detector_stop.exit.i.i.linereq_set_config_unlocked.exit.i_crit_edge, %if.end4.i.linereq_set_config_unlocked.exit.i_crit_edge
  %retval.3.i.i = phi i32 [ 0, %if.end4.i.linereq_set_config_unlocked.exit.i_crit_edge ], [ 0, %if.end33.i.i.linereq_set_config_unlocked.exit.i_crit_edge ], [ %call57.i.i.i, %edge_detector_update.exit.i.i.linereq_set_config_unlocked.exit.i_crit_edge ], [ %call20.i.i, %if.then19.i.i69.linereq_set_config_unlocked.exit.i_crit_edge ], [ %call14.i.i, %edge_detector_stop.exit.i.i.linereq_set_config_unlocked.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %config_mutex.i60) #9
  br label %linereq_set_config.exit

linereq_set_config.exit:                          ; preds = %linereq_set_config_unlocked.exit.i, %if.end.i59.linereq_set_config.exit_crit_edge, %if.then11.i.i.i57
  %retval.0.i74 = phi i32 [ %retval.3.i.i, %linereq_set_config_unlocked.exit.i ], [ %call1.i, %if.end.i59.linereq_set_config.exit_crit_edge ], [ -14, %if.then11.i.i.i57 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %lc.i) #9
  br label %cleanup

cleanup:                                          ; preds = %linereq_set_config.exit, %linereq_set_values.exit, %linereq_get_values.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %linereq_get_values.exit ], [ %retval.0.i42, %linereq_set_values.exit ], [ %retval.0.i74, %linereq_set_config.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linereq_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @linereq_free(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lineinfo_changed_notify(ptr noundef %nb, i32 noundef %action, ptr noundef %data) #0 align 64 {
entry:
  %chg = alloca %struct.gpio_v2_line_info_changed, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %chg) #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %descs.i = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %descs.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %data to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  %watched_lines = getelementptr i8, ptr %nb, i32 12
  %4 = ptrtoint ptr %watched_lines to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %watched_lines, align 4
  %div3.i = lshr i32 %sub.ptr.div.i, 5
  %arrayidx.i = getelementptr i32, ptr %5, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %sub.ptr.div.i, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = call ptr @memset(ptr %chg, i32 0, i32 288)
  %event_type = getelementptr inbounds %struct.gpio_v2_line_info_changed, ptr %chg, i32 0, i32 2
  %11 = ptrtoint ptr %event_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %action, ptr %event_type, align 8
  %call.i = tail call i64 @ktime_get() #9
  %timestamp_ns = getelementptr inbounds %struct.gpio_v2_line_info_changed, ptr %chg, i32 0, i32 1
  %12 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i, ptr %timestamp_ns, align 8
  call fastcc void @gpio_desc_to_lineinfo(ptr noundef %data, ptr noundef nonnull %chg)
  %wait = getelementptr i8, ptr %nb, i32 -9292
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %wait) #9
  %events = getelementptr i8, ptr %nb, i32 -9240
  %call10 = call i32 @__kfifo_in(ptr noundef %events, ptr noundef nonnull %chg, i32 noundef 1) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait, i32 noundef %call6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool14.not = icmp eq i32 %call10, 0
  br i1 %tobool14.not, label %do.body17, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #9
  br label %cleanup

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lineinfo_changed_notify.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lineinfo_changed_notify, %cleanup)) #9
          to label %land.lhs.true [label %cleanup], !srcloc !92

land.lhs.true:                                    ; preds = %do.body17
  %call24 = call i32 @___ratelimit(ptr noundef nonnull @lineinfo_changed_notify._rs, ptr noundef nonnull @.str.29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %if.then26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lineinfo_changed_notify.descriptor, ptr noundef nonnull @.str.30) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true.cleanup_crit_edge, %do.body17, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.then26 ], [ 1, %if.then15 ], [ 1, %do.body17 ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %chg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !74, !76, !77, !79, !80, !81}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 2369, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @gpiolib_cdev_register.__UNIQUE_ID_ddebug265, !1, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!6 = !{ptr @gpio_fileops, !7, !"gpio_fileops", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 2344, i32 37}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 2222, i32 10}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!12 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 362, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @linehandle_create.__UNIQUE_ID_ddebug234, !18, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 372, i32 28}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 394, i32 2}
!25 = !{ptr @linehandle_create.__UNIQUE_ID_ddebug235, !24, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!26 = !{ptr @linehandle_fileops, !27, !"linehandle_fileops", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 275, i32 37}
!28 = !{ptr @lineevent_create.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1798, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1816, i32 28}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1689, i32 3}
!35 = !{ptr @lineevent_irq_thread._rs, !34, !"_rs", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @lineevent_irq_thread.descriptor, !34, !"descriptor", i1 false, i1 false}
!39 = !{ptr @lineevent_fileops, !40, !"lineevent_fileops", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1634, i32 37}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1552, i32 10}
!43 = !{ptr @linereq_create.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1347, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @linereq_create.__key.17, !44, !"__key", i1 false, i1 false}
!47 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @linereq_create.__key.19, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1360, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @linereq_create.__key.21, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1361, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1417, i32 3}
!56 = !{ptr @linereq_create.__UNIQUE_ID_ddebug260, !55, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1427, i32 28}
!59 = !{ptr @linereq_create.__UNIQUE_ID_ddebug261, !60, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1447, i32 2}
!61 = !{ptr @debounce_work_func._rs, !62, !"_rs", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 659, i32 3}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @debounce_work_func.descriptor, !62, !"descriptor", i1 false, i1 false}
!66 = !{ptr @linereq_put_event._rs, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 538, i32 3}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @linereq_put_event.descriptor, !67, !"descriptor", i1 false, i1 false}
!70 = !{ptr @line_fileops, !71, !"line_fileops", i1 false, i1 false}
!71 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1301, i32 37}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 1250, i32 10}
!74 = !{ptr @gpio_chrdev_open.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 2295, i32 2}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @lineinfo_changed_notify._rs, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/gpio/gpiolib-cdev.c", i32 2174, i32 3}
!79 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @lineinfo_changed_notify.descriptor, !78, !"descriptor", i1 false, i1 false}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148930275, i64 2148930280, i64 2148930293, i64 2148930337, i64 2148930371, i64 2148930392}
!93 = !{i64 2152803633, i64 2152803658}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 5298507}
!96 = !{i64 5298704}
!97 = !{i64 2152783937}
!98 = !{i64 2148280362}
!99 = !{i64 553373, i64 553397, i64 553418, i64 553435, i64 553452}
!100 = !{i64 2148280588}
!101 = !{!"auto-init"}
!102 = !{i64 2152802952, i64 2152802977}
!103 = !{i32 0, i32 2}
!104 = !{i64 2148263950}
!105 = !{i64 2148179259, i64 2148179291, i64 2148179320, i64 2148179354, i64 2148179385, i64 2148179408}
!106 = !{i64 2148264179}
!107 = !{!"branch_weights", i32 1, i32 2000}
