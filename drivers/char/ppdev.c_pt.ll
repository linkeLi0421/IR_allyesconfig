; ModuleID = '/llk/IR_all_yes/drivers/char/ppdev.c_pt.bc'
source_filename = "../drivers/char/ppdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.pp_struct = type { ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i8, %struct.ieee1284_info, %struct.ieee1284_info, i32, i32 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }

@pp_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @pp_detach, ptr @pp_attach, ptr @pp_probe, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@ppdev_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ppdev\00", [26 x i8] zeroinitializer }, align 32
@__initcall__kmod_ppdev__243_874_ppdev_init6 = internal global ptr @ppdev_init, section ".initcall6.init", align 4
@__exitcall_ppdev_cleanup = internal global ptr @ppdev_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file244 = internal constant [30 x i8] c"ppdev.file=drivers/char/ppdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [18 x i8] c"ppdev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [28 x i8] c"ppdev.alias=char-major-99-*\00", section ".modinfo", align 1
@devices = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"parport%d\00", [22 x i8] zeroinitializer }, align 32
@pp_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Failed to create device parport%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pp_attach\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/char/ppdev.c\00", [43 x i8] zeroinitializer }, align 32
@pp_attach._entry_ptr = internal global ptr @pp_attach._entry, section ".printk_index", align 4
@pp_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @pp_read, ptr @pp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pp_poll, ptr @pp_ioctl, ptr null, ptr null, i32 0, ptr @pp_open, ptr null, ptr @pp_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ppdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014ppdev: unable to get major %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ppdev_init\00", [21 x i8] zeroinitializer }, align 32
@ppdev_init._entry_ptr = internal global ptr @ppdev_init._entry, section ".printk_index", align 4
@ppdev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ppdev_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014ppdev: unable to register with parport\0A\00", [54 x i8] zeroinitializer }, align 32
@ppdev_init._entry_ptr.9 = internal global ptr @ppdev_init._entry.7, section ".printk_index", align 4
@ppdev_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.4, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ppdev: user-space parallel port driver\0A\00", [54 x i8] zeroinitializer }, align 32
@ppdev_init._entry_ptr.12 = internal global ptr @ppdev_init._entry.10, section ".printk_index", align 4
@pp_read.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pp_read\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ppdev%x: claim the port first\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@pp_write.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.4, ptr @.str.14, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pp_write\00", [23 x i8] zeroinitializer }, align 32
@pp_do_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pp_do_mutex, i64 52), ptr getelementptr (i8, ptr @pp_do_mutex, i64 52) }, ptr @pp_do_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pp_do_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pp_do_mutex\00", [20 x i8] zeroinitializer }, align 32
@pp_do_ioctl.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pp_do_ioctl\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"you've already got it!\0A\00", [40 x i8] zeroinitializer }, align 32
@pp_do_ioctl.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.23, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"too late for PPEXCL; already registered\0A\00", [55 x i8] zeroinitializer }, align 32
@pp_do_ioctl.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.14, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pp_do_ioctl.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.24, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"What? (cmd=0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ppdev%x\00", [24 x i8] zeroinitializer }, align 32
@register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: no associated port!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"register_device\00", [16 x i8] zeroinitializer }, align 32
@register_device._entry_ptr = internal global ptr @register_device._entry, section ".printk_index", align 4
@ida_index = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@register_device._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: failed to register device!\0A\00", [62 x i8] zeroinitializer }, align 32
@register_device._entry_ptr.30 = internal global ptr @register_device._entry.28, section ".printk_index", align 4
@register_device.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.31, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"registered pardevice\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ida_index.xa_lock\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pp_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pp->irq_wait\00", [18 x i8] zeroinitializer }, align 32
@pp_release.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pp_release\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"negotiated back to compatibility mode because user-space forgot\0A\00", [63 x i8] zeroinitializer }, align 32
@pp_release.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.36, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ppdev%x: released pardevice because user-space forgot\0A\00", [41 x i8] zeroinitializer }, align 32
@pp_release.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.37, i8 0, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ppdev%x: unregistered pardevice\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 28811, i64 28815, i64 1074032768, i64 1074032788, i64 1074032795, i64 2147774615, i64 2147774616, i64 2147774617, i64 2147774618]
@__sancov_gen_cov_switch_values.38 = internal global [18 x i64] [i64 16, i64 32, i64 28812, i64 28813, i64 1073836164, i64 1073836166, i64 1073836178, i64 1073901710, i64 1074032784, i64 1074032785, i64 1074294934, i64 1074819222, i64 2147577985, i64 2147577987, i64 2147577989, i64 2147774611, i64 2148036757, i64 2148561045]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"pp_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 828, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"ppdev_class\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 776, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 871, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 87, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 799, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 801, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [8 x i8] c"pp_fops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 778, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 841, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 844, i32 16 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 851, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 855, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 127, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 230, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 214, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 174, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 206, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"pp_do_mutex\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 100, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 372, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 407, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 659, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 291, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 297, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [10 x i8] c"ida_index\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 311, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 319, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 89, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 694, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 732, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 746, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [24 x i8] c"../drivers/char/ppdev.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 755, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_ppdev_cleanup, ptr @__initcall__kmod_ppdev__243_874_ppdev_init6, ptr @pp_attach._entry, ptr @pp_attach._entry_ptr, ptr @ppdev_cleanup, ptr @ppdev_init._entry, ptr @ppdev_init._entry.10, ptr @ppdev_init._entry.7, ptr @ppdev_init._entry_ptr, ptr @ppdev_init._entry_ptr.12, ptr @ppdev_init._entry_ptr.9, ptr @register_device._entry, ptr @register_device._entry.28, ptr @register_device._entry_ptr, ptr @register_device._entry_ptr.30, ptr @pp_driver, ptr @ppdev_class, ptr @.str, ptr @devices, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pp_fops, ptr @.str.5, ptr @.str.6, ptr @ppdev_init.__key, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @pp_do_mutex, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ida_index, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @pp_open.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppdev_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppdev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppdev_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppdev_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_do_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ida_index to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ppdev_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @parport_unregister_driver(ptr noundef nonnull @pp_driver) #13
  %0 = load ptr, ptr @ppdev_class, align 4
  tail call void @class_destroy(ptr noundef %0) #13
  tail call void @__unregister_chrdev(i32 noundef 99, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ppdev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__register_chrdev(i32 noundef 99, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @pp_fops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 99) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @ppdev_init.__key) #13
  store ptr %call3, ptr @ppdev_class, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %call3 to i32
  br label %out_chrdev

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @__parport_register_driver(ptr noundef nonnull @pp_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %do.end18

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #16
  %1 = load ptr, ptr @ppdev_class, align 4
  tail call void @class_destroy(ptr noundef %1) #13
  br label %out_chrdev

do.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #16
  br label %cleanup

out_chrdev:                                       ; preds = %do.end12, %if.then5
  %err.0 = phi i32 [ %0, %if.then5 ], [ %call8, %do.end12 ]
  tail call void @__unregister_chrdev(i32 noundef 99, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #13
  br label %cleanup

cleanup:                                          ; preds = %out_chrdev, %do.end18, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %err.0, %out_chrdev ], [ %call8, %do.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_detach(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %arrayidx = getelementptr [16 x ptr], ptr @devices, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = load ptr, ptr @ppdev_class, align 4
  %or = or i32 %1, 103809024
  tail call void @device_destroy(ptr noundef %4, i32 noundef %or) #13
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number, align 4
  %arrayidx3 = getelementptr [16 x ptr], ptr @devices, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx3, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_attach(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %arrayidx = getelementptr [16 x ptr], ptr @devices, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @ppdev_class, align 4
  %dev = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %or = or i32 %1, 103809024
  %call = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %4, ptr noundef %6, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef %1) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number, align 4
  br i1 %cmp.i, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %8) #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx9 = getelementptr [16 x ptr], ptr @devices, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %arrayidx9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pp_probe(ptr nocapture noundef readonly %par_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.pardevice, ptr %par_dev, i32 0, i32 10, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #17
  %4 = ptrtoint ptr %par_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par_dev, align 8
  %call3 = tail call i32 @strncmp(ptr noundef %5, ptr noundef %3, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 0, i32 -19
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_read.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_read, %if.then6)) #13
          to label %cleanup81 [label %if.then6], !srcloc !112

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_read.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.14, i32 noundef %and.i) #13
  br label %cleanup81

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %if.end7.cleanup81_crit_edge, label %if.end9

if.end7.cleanup81_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup81

if.end9:                                          ; preds = %if.end7
  %8 = tail call i32 @llvm.umin.i32(i32 %count, i32 1024)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #18
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %if.end9.cleanup81_crit_edge, label %if.end15

if.end9.cleanup81_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup81

if.end15:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %ieee1284 = getelementptr inbounds %struct.parport, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %ieee1284 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ieee1284, align 4
  %and17 = and i32 %14, -8197
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %and19 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %cond.false22, label %if.end15.cond.end23_crit_edge

if.end15.cond.end23_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end23

cond.false22:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %default_inactivity = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %default_inactivity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %default_inactivity, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %if.end15.cond.end23_crit_edge
  %cond24 = phi i32 [ %18, %cond.false22 ], [ 1, %if.end15.cond.end23_crit_edge ]
  %call25 = tail call i32 @parport_set_timeout(ptr noundef %10, i32 noundef %cond24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and17)
  %cmp33 = icmp eq i32 %and17, 64
  %ops = getelementptr inbounds %struct.parport, ptr %12, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %cleanup, %cond.end23
  br i1 %cmp33, label %if.then34, label %if.else55

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and37 = lshr i32 %20, 3
  %21 = and i32 %and37, 3
  %22 = ptrtoint ptr %ieee1284 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ieee1284, align 4
  %and49 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %epp_read_addr = getelementptr inbounds %struct.parport_operations, ptr %25, i32 0, i32 16
  %epp_read_data = getelementptr inbounds %struct.parport_operations, ptr %25, i32 0, i32 14
  %fn.0.in = select i1 %tobool50.not, ptr %epp_read_data, ptr %epp_read_addr
  %26 = ptrtoint ptr %fn.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %fn.0 = load ptr, ptr %fn.0.in, align 4
  %call54 = tail call i32 %fn.0(ptr noundef %12, ptr noundef nonnull %call9.i, i32 noundef %8, i32 noundef %21) #13
  br label %if.end57

if.else55:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call56 = tail call i32 @parport_read(ptr noundef %12, ptr noundef nonnull %call9.i, i32 noundef %8) #13
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then34
  %bytes_read.1 = phi i32 [ %call54, %if.then34 ], [ %call56, %if.else55 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_read.1)
  %cmp58.not = icmp eq i32 %bytes_read.1, 0
  br i1 %cmp58.not, label %if.end60, label %if.end57.while.end_crit_edge

if.end57.while.end_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end60:                                         ; preds = %if.end57
  %27 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_flags, align 4
  %and62 = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.while.end_crit_edge

if.end60.while.end_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end65:                                         ; preds = %if.end60
  %29 = tail call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i126 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i126 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stack.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end65.while.end_crit_edge, !prof !113

if.end65.while.end_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

signal_pending.exit:                              ; preds = %if.end65
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %34, align 4
  %and1.i.i.i.i.i = and i32 %39, 1
  %tobool68.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool68.not, label %cleanup, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup:                                          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 180, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  br label %while.body

while.end:                                        ; preds = %signal_pending.exit.while.end_crit_edge, %if.end65.while.end_crit_edge, %if.end60.while.end_crit_edge, %if.end57.while.end_crit_edge
  %bytes_read.3 = phi i32 [ -512, %signal_pending.exit.while.end_crit_edge ], [ -11, %if.end60.while.end_crit_edge ], [ %bytes_read.1, %if.end57.while.end_crit_edge ], [ -512, %if.end65.while.end_crit_edge ]
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 4
  %default_inactivity74 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 8
  %42 = ptrtoint ptr %default_inactivity74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %default_inactivity74, align 4
  %call75 = tail call i32 @parport_set_timeout(ptr noundef %41, i32 noundef %43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_read.3)
  %cmp76 = icmp sgt i32 %bytes_read.3, 0
  br i1 %cmp76, label %if.then.i.i.i, label %while.end.if.end80_crit_edge

while.end.if.end80_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then.i.i.i:                                    ; preds = %while.end
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %bytes_read.3, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end80_crit_edge, label %if.end.i.i124

if.then.i.i.i.if.end80_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.end.i.i124:                                    ; preds = %if.then.i.i.i
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %bytes_read.3, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i124.if.end80_crit_edge

if.end.i.i124.if.end80_crit_edge:                 ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then2.i.i:                                     ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %bytes_read.3) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call9.i, i32 noundef %bytes_read.3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %bytes_read.3, i32 -14
  br label %if.end80

if.end80:                                         ; preds = %if.then2.i.i, %if.end.i.i124.if.end80_crit_edge, %if.then.i.i.i.if.end80_crit_edge, %while.end.if.end80_crit_edge
  %bytes_read.4 = phi i32 [ %bytes_read.3, %while.end.if.end80_crit_edge ], [ -14, %if.then.i.i.i.if.end80_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i124.if.end80_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %48, i32 0, i32 24
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %enable_irq.i = getelementptr inbounds %struct.parport_operations, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %enable_irq.i, align 4
  tail call void %52(ptr noundef %48) #13
  br label %cleanup81

cleanup81:                                        ; preds = %if.end80, %if.end9.cleanup81_crit_edge, %if.end7.cleanup81_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ %bytes_read.4, %if.end80 ], [ -22, %if.then6 ], [ 0, %if.end7.cleanup81_crit_edge ], [ -12, %if.end9.cleanup81_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end8.i

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_write.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_write, %if.then6)) #13
          to label %cleanup77 [label %if.then6], !srcloc !112

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_write.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.14, i32 noundef %and.i) #13
  br label %cleanup77

if.end8.i:                                        ; preds = %entry
  %8 = tail call i32 @llvm.umin.i32(i32 %count, i32 1024)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #18
  %tobool10.not = icmp eq ptr %call9.i, null
  br i1 %tobool10.not, label %if.end8.i.cleanup77_crit_edge, label %if.end12

if.end8.i.cleanup77_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

if.end12:                                         ; preds = %if.end8.i
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  %ieee1284 = getelementptr inbounds %struct.parport, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %ieee1284 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ieee1284, align 4
  %and14 = and i32 %14, -8197
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %and16 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %cond.false19, label %if.end12.cond.end20_crit_edge

if.end12.cond.end20_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end20

cond.false19:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %default_inactivity = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %default_inactivity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %default_inactivity, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %if.end12.cond.end20_crit_edge
  %cond21 = phi i32 [ %18, %cond.false19 ], [ 1, %if.end12.cond.end20_crit_edge ]
  %call22 = tail call i32 @parport_set_timeout(ptr noundef %10, i32 noundef %cond21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp23158.not = icmp eq i32 %count, 0
  br i1 %cmp23158.not, label %cond.end20.while.end_crit_edge, label %while.body.lr.ph

cond.end20.while.end_crit_edge:                   ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %cond.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and14)
  %cmp37 = icmp eq i32 %and14, 64
  %ops = getelementptr inbounds %struct.parport, ptr %12, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %bytes_written.0159 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %sub = sub i32 %count, %bytes_written.0159
  %19 = tail call i32 @llvm.umin.i32(i32 %sub, i32 1024)
  %add.ptr = getelementptr i8, ptr %buf, i32 %bytes_written.0159
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %19, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %while.body.if.end.i.i124_crit_edge, label %land.lhs.true.i.i

while.body.if.end.i.i124_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i124

land.lhs.true.i.i:                                ; preds = %while.body
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %19, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i124_crit_edge, !prof !113

land.lhs.true.i.i.if.end.i.i124_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i124

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %19) #13
  %21 = tail call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !116
  %and.i.i.i.i = and i32 %23, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %add.ptr, i32 noundef %19) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #13, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  br label %if.end.i.i124

if.end.i.i124:                                    ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i124_crit_edge, %while.body.if.end.i.i124_crit_edge
  %res.0.i.i = phi i32 [ %19, %while.body.if.end.i.i124_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %19, %land.lhs.true.i.i.if.end.i.i124_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end33, label %if.then11.i.i, !prof !113

if.then11.i.i:                                    ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %19, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %24 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %while.end

if.end33:                                         ; preds = %if.end.i.i124
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and35 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp ne i32 %and35, 0
  %or.cond = select i1 %tobool36.not, i1 %cmp37, i1 false
  br i1 %or.cond, label %if.then38, label %if.else48

if.then38:                                        ; preds = %if.end33
  %27 = ptrtoint ptr %ieee1284 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ieee1284, align 4
  %and41 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  %epp_write_addr = getelementptr inbounds %struct.parport_operations, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %epp_write_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %epp_write_addr, align 4
  %call44 = tail call i32 %32(ptr noundef %12, ptr noundef nonnull %call9.i, i32 noundef %19, i32 noundef 1) #13
  br label %if.end52

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  %epp_write_data = getelementptr inbounds %struct.parport_operations, ptr %30, i32 0, i32 13
  %33 = ptrtoint ptr %epp_write_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %epp_write_data, align 4
  %call46 = tail call i32 %34(ptr noundef %12, ptr noundef nonnull %call9.i, i32 noundef %19, i32 noundef 1) #13
  br label %if.end52

if.else48:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  %port50 = getelementptr inbounds %struct.pardevice, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %port50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port50, align 4
  %call51 = tail call i32 @parport_write(ptr noundef %38, ptr noundef nonnull %call9.i, i32 noundef %19) #13
  br label %if.end52

if.end52:                                         ; preds = %if.else48, %if.else, %if.then43
  %wrote.0 = phi i32 [ %call44, %if.then43 ], [ %call46, %if.else ], [ %call51, %if.else48 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wrote.0)
  %cmp53 = icmp slt i32 %wrote.0, 1
  br i1 %cmp53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_written.0159)
  %tobool55.not = icmp eq i32 %bytes_written.0159, 0
  %spec.select = select i1 %tobool55.not, i32 %wrote.0, i32 %bytes_written.0159
  br label %while.end

if.end58:                                         ; preds = %if.end52
  %add = add i32 %wrote.0, %bytes_written.0159
  %39 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %f_flags, align 4
  %and60 = and i32 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end66, label %if.then62

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool63.not = icmp eq i32 %add, 0
  %spec.store.select = select i1 %tobool63.not, i32 -11, i32 %add
  br label %while.end

if.end66:                                         ; preds = %if.end58
  %41 = tail call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i126 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i126 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stack.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %49 = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end66.while.end_crit_edge, !prof !113

if.end66.while.end_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

signal_pending.exit:                              ; preds = %if.end66
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %46, align 4
  %and1.i.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool69.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool69.not, label %cleanup, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup:                                          ; preds = %signal_pending.exit
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 260, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  %cmp23 = icmp ult i32 %add, %count
  br i1 %cmp23, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end66.while.end_crit_edge, %if.then62, %if.then54, %if.then11.i.i, %cond.end20.while.end_crit_edge
  %bytes_written.3 = phi i32 [ %spec.store.select, %if.then62 ], [ %spec.select, %if.then54 ], [ -14, %if.then11.i.i ], [ 0, %cond.end20.while.end_crit_edge ], [ %add, %if.end66.while.end_crit_edge ], [ %add, %signal_pending.exit.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %5, align 4
  %default_inactivity75 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 8
  %54 = ptrtoint ptr %default_inactivity75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %default_inactivity75, align 4
  %call76 = tail call i32 @parport_set_timeout(ptr noundef %53, i32 noundef %55) #13
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %59, i32 0, i32 24
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %enable_irq.i = getelementptr inbounds %struct.parport_operations, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %enable_irq.i, align 4
  tail call void %63(ptr noundef %59) #13
  br label %cleanup77

cleanup77:                                        ; preds = %while.end, %if.end8.i.cleanup77_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ %bytes_written.3, %while.end ], [ -22, %if.then6 ], [ -12, %if.end8.i.cleanup77_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %irq_wait = getelementptr inbounds %struct.pp_struct, ptr %1, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %irq_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef %file, ptr noundef nonnull %irq_wait, ptr noundef nonnull %wait) #13
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %irqc = getelementptr inbounds %struct.pp_struct, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %irqc, i32 noundef 4) #13
  %4 = ptrtoint ptr %irqc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %irqc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 65
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pp_do_mutex, i32 noundef 0) #13
  %call = tail call fastcc i32 @pp_do_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg)
  tail call void @mutex_unlock(ptr noundef nonnull @pp_do_mutex) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 208) #20
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %state = getelementptr inbounds %struct.pp_struct, ptr %call7.i, i32 0, i32 6
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %state, align 8
  %phase = getelementptr inbounds %struct.pp_struct, ptr %call7.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %phase, align 4
  %flags = getelementptr inbounds %struct.pp_struct, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags, align 4
  %irqresponse = getelementptr inbounds %struct.pp_struct, ptr %call7.i, i32 0, i32 4
  %6 = ptrtoint ptr %irqresponse to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %irqresponse, align 8
  %irqc = getelementptr inbounds %struct.pp_struct, ptr %call7.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irqc, i32 noundef 4) #13
  %7 = ptrtoint ptr %irqc to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %irqc, align 8
  %irq_wait = getelementptr inbounds %struct.pp_struct, ptr %call7.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %irq_wait, ptr noundef nonnull @.str.33, ptr noundef nonnull @pp_open.__key) #13
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %call7.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.pp_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true20

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool1.not, label %land.lhs.true.if.end43_crit_edge, label %land.lhs.true2

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.lhs.true2:                                   ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.pp_struct, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %cmp.not = icmp eq i32 %9, 256
  br i1 %cmp.not, label %land.lhs.true2.if.end43_crit_edge, label %if.end30.thread157

land.lhs.true2.if.end43_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.end30.thread157:                               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 @parport_claim_or_block(ptr noundef nonnull %7) #13
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %flags, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 4
  %ieee1284 = getelementptr inbounds %struct.parport, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %ieee1284 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ieee1284, align 4
  %saved_state = getelementptr inbounds %struct.pp_struct, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %saved_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %saved_state, align 4
  %phase = getelementptr inbounds %struct.parport, ptr %15, i32 0, i32 23, i32 1
  %19 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %phase, align 4
  %phase10 = getelementptr inbounds %struct.pp_struct, ptr %3, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %phase10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %20, ptr %phase10, align 4
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  store i32 %23, ptr %ieee1284, align 4
  %phase15 = getelementptr inbounds %struct.pp_struct, ptr %3, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %phase15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %phase15, align 4
  store volatile i32 %25, ptr %phase, align 4
  br label %if.then32

land.lhs.true20:                                  ; preds = %entry
  br i1 %tobool1.not, label %land.lhs.true20.if.end43_crit_edge, label %if.end30

land.lhs.true20.if.end43_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.end30:                                         ; preds = %land.lhs.true20
  %port25 = getelementptr inbounds %struct.pardevice, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %port25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port25, align 4
  %ieee128426 = getelementptr inbounds %struct.parport, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %ieee128426 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ieee128426, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %29)
  %cmp28.not = icmp eq i32 %29, 256
  br i1 %cmp28.not, label %if.end30.if.end43_crit_edge, label %if.end30.if.then32_crit_edge

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then32:                                        ; preds = %if.end30.if.then32_crit_edge, %if.end30.thread157
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %port34 = getelementptr inbounds %struct.pardevice, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %port34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port34, align 4
  %call35 = tail call i32 @parport_negotiate(ptr noundef %33, i32 noundef 256) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_release.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_release, %if.then40)) #13
          to label %if.end43 [label %if.then40], !srcloc !112

if.then40:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.pardevice, ptr %35, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_release.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.35) #13
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then32, %if.end30.if.end43_crit_edge, %land.lhs.true20.if.end43_crit_edge, %land.lhs.true2.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge
  %cmp68.not156 = phi i1 [ %tobool.not, %if.then40 ], [ false, %if.end30.if.end43_crit_edge ], [ %tobool.not, %if.then32 ], [ false, %land.lhs.true20.if.end43_crit_edge ], [ false, %land.lhs.true2.if.end43_crit_edge ], [ false, %land.lhs.true.if.end43_crit_edge ]
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and45 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end87_crit_edge, label %land.lhs.true47

if.end43.if.end87_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

land.lhs.true47:                                  ; preds = %if.end43
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %tobool49.not = icmp eq ptr %39, null
  br i1 %tobool49.not, label %land.lhs.true47.if.end87_crit_edge, label %if.then50

land.lhs.true47.if.end87_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then50:                                        ; preds = %land.lhs.true47
  %port53 = getelementptr inbounds %struct.pardevice, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %port53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port53, align 4
  %ieee128454 = getelementptr inbounds %struct.parport, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %ieee128454 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ieee128454, align 4
  %state56 = getelementptr inbounds %struct.pp_struct, ptr %3, i32 0, i32 6
  %44 = ptrtoint ptr %state56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %state56, align 4
  %phase58 = getelementptr inbounds %struct.parport, ptr %41, i32 0, i32 23, i32 1
  %45 = ptrtoint ptr %phase58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %phase58, align 4
  %phase60 = getelementptr inbounds %struct.pp_struct, ptr %3, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %phase60 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %46, ptr %phase60, align 4
  %saved_state61 = getelementptr inbounds %struct.pp_struct, ptr %3, i32 0, i32 7
  %48 = ptrtoint ptr %saved_state61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %saved_state61, align 4
  store i32 %49, ptr %ieee128454, align 4
  %phase65 = getelementptr inbounds %struct.pp_struct, ptr %3, i32 0, i32 7, i32 1
  %50 = ptrtoint ptr %phase65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %phase65, align 4
  store volatile i32 %51, ptr %phase58, align 4
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  tail call void @parport_release(ptr noundef %53) #13
  br i1 %cmp68.not156, label %if.then50.if.end87_crit_edge, label %do.body70

if.then50.if.end87_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

do.body70:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_release.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_release, %if.then82)) #13
          to label %if.end87 [label %if.then82], !srcloc !112

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_release.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.36, i32 noundef %and.i) #13
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %do.body70, %if.then50.if.end87_crit_edge, %land.lhs.true47.if.end87_crit_edge, %if.end43.if.end87_crit_edge
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %tobool89.not = icmp eq ptr %55, null
  br i1 %tobool89.not, label %if.end87.if.end109_crit_edge, label %if.then90

if.end87.if.end109_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @parport_unregister_device(ptr noundef nonnull %55) #13
  %index = getelementptr inbounds %struct.pp_struct, ptr %3, i32 0, i32 9
  %56 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index, align 4
  tail call void @ida_free(ptr noundef nonnull @ida_index, i32 noundef %57) #13
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_release.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_release, %if.then105)) #13
          to label %if.end109 [label %if.then105], !srcloc !112

if.then105:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_release.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.37, i32 noundef %and.i) #13
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %if.then90, %if.end87.if.end109_crit_edge
  tail call void @kfree(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_set_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pp_do_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i8, align 1
  %mask = alloca i8, align 1
  %mode = alloca i32, align 4
  %time32 = alloca [2 x i32], align 4
  %time64 = alloca [2 x i64], align 8
  %ts = alloca %struct.timespec64, align 8
  %ret = alloca i32, align 4
  %mode68 = alloca i32, align 4
  %mode95 = alloca i32, align 4
  %phase113 = alloca i32, align 4
  %phase131 = alloca i32, align 4
  %modes = alloca i32, align 4
  %uflags = alloca i32, align 4
  %uflags172 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #13
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %reg, align 1, !annotation !119
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mask) #13
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %mask, align 1, !annotation !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #13
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %mode, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time32) #13
  %10 = ptrtoint ptr %time32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %time32, align 4, !annotation !119
  %11 = getelementptr inbounds [2 x i32], ptr %time32, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %time64) #13
  %13 = getelementptr inbounds [2 x i64], ptr %time64, i32 0, i32 1
  %14 = call ptr @memset(ptr %time64, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #13
  %15 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #13
  %16 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %ret, align 4, !annotation !119
  %17 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.epilog [
    i32 28811, label %sw.bb
    i32 28815, label %sw.bb37
    i32 1074032768, label %sw.bb67
    i32 -2147192680, label %sw.bb94
    i32 1074032788, label %sw.bb112
    i32 -2147192679, label %sw.bb130
    i32 -2147192681, label %sw.bb149
    i32 1074032795, label %sw.bb160
    i32 -2147192678, label %sw.bb171
  ]

sw.bb:                                            ; preds = %entry
  %flags = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_do_ioctl.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_do_ioctl, %if.then6)) #13
          to label %cleanup374 [label %if.then6], !srcloc !112

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.pardevice, ptr %21, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_do_ioctl.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.22) #13
  br label %cleanup374

if.end7:                                          ; preds = %sw.bb
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %call11 = tail call fastcc i32 @register_device(i32 noundef %and.i, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.cleanup374_crit_edge

if.then10.cleanup374_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %call17 = tail call i32 @parport_claim_or_block(ptr noundef %25) #13
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call17, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end15.cleanup374_crit_edge, label %if.end19

if.end15.cleanup374_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %or = or i32 %28, 1
  store i32 %or, ptr %flags, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %32, i32 0, i32 24
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %enable_irq.i = getelementptr inbounds %struct.parport_operations, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enable_irq.i, align 4
  tail call void %36(ptr noundef %32) #13
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  %port22 = getelementptr inbounds %struct.pardevice, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %port22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port22, align 4
  %ieee1284 = getelementptr inbounds %struct.parport, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %ieee1284 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ieee1284, align 4
  %saved_state = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 7
  %43 = ptrtoint ptr %saved_state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %saved_state, align 4
  %phase = getelementptr inbounds %struct.parport, ptr %40, i32 0, i32 23, i32 1
  %44 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %phase, align 4
  %phase26 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %phase26 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %45, ptr %phase26, align 4
  %state = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 6
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state, align 4
  store i32 %48, ptr %ieee1284, align 4
  %phase30 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %phase30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %phase30, align 4
  store volatile i32 %50, ptr %phase, align 4
  %51 = load ptr, ptr %5, align 4
  %call33 = tail call i32 @parport_set_timeout(ptr noundef %51, i32 noundef 0) #13
  %default_inactivity = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 8
  %52 = ptrtoint ptr %default_inactivity to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call33, ptr %default_inactivity, align 4
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %5, align 4
  %call36 = tail call i32 @parport_set_timeout(ptr noundef %54, i32 noundef %call33) #13
  br label %cleanup374

sw.bb37:                                          ; preds = %entry
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 4
  %tobool39.not = icmp eq ptr %56, null
  br i1 %tobool39.not, label %if.end64, label %do.body41

do.body41:                                        ; preds = %sw.bb37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_do_ioctl.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_do_ioctl, %if.then53)) #13
          to label %do.end58 [label %if.then53], !srcloc !112

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %5, align 4
  %dev55 = getelementptr inbounds %struct.pardevice, ptr %58, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_do_ioctl.__UNIQUE_ID_ddebug237, ptr noundef %dev55, ptr noundef nonnull @.str.23) #13
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.body41
  %flags59 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %59 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags59, align 4
  %and60 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %. = select i1 %tobool61.not, i32 -22, i32 0
  br label %cleanup374

if.end64:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #15
  %flags65 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %61 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags65, align 4
  %or66 = or i32 %62, 2
  store i32 %or66, ptr %flags65, align 4
  br label %cleanup374

sw.bb67:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode68) #13
  %63 = ptrtoint ptr %mode68 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %mode68, align 4, !annotation !119
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %sw.bb67.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb67.if.then11.i.i_crit_edge:                  ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb67
  %64 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i = extractvalue { i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !113

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mode68, i32 noundef 4) #13
  %65 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 4
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !116
  %and.i.i.i.i = and i32 %67, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mode68, ptr noundef %6, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end72, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !113

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb67.if.then11.i.i_crit_edge
  %res.0.i.i932 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %sw.bb67.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i932
  %add.ptr.i.i = getelementptr i8, ptr %mode68, i32 %sub.i.i
  %68 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i932)
  br label %cleanup93

if.end72:                                         ; preds = %if.end.i.i
  %69 = ptrtoint ptr %mode68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mode68, align 4
  %state73 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 6
  %71 = ptrtoint ptr %state73 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %state73, align 4
  %and.i900 = and i32 %70, -8198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i900)
  %switch.i = icmp eq i32 %and.i900, 0
  %..i = select i1 %switch.i, i32 5, i32 1
  %phase77 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 6, i32 1
  %72 = ptrtoint ptr %phase77 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %..i, ptr %phase77, align 4
  %flags78 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %73 = ptrtoint ptr %flags78 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags78, align 4
  %and79 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end72.cleanup93_crit_edge, label %if.then81

if.end72.cleanup93_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup93

if.then81:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %5, align 4
  %port83 = getelementptr inbounds %struct.pardevice, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %port83 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %port83, align 4
  %ieee128484 = getelementptr inbounds %struct.parport, ptr %78, i32 0, i32 23
  %79 = ptrtoint ptr %ieee128484 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %70, ptr %ieee128484, align 4
  %80 = ptrtoint ptr %phase77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %phase77, align 4
  %82 = load ptr, ptr %5, align 4
  %port89 = getelementptr inbounds %struct.pardevice, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %port89 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %port89, align 4
  %phase91 = getelementptr inbounds %struct.parport, ptr %84, i32 0, i32 23, i32 1
  %85 = ptrtoint ptr %phase91 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 %81, ptr %phase91, align 4
  br label %cleanup93

cleanup93:                                        ; preds = %if.then81, %if.end72.cleanup93_crit_edge, %if.then11.i.i
  %retval.1 = phi i32 [ 0, %if.then81 ], [ 0, %if.end72.cleanup93_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode68) #13
  br label %cleanup374

sw.bb94:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode95) #13
  %flags96 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %86 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags96, align 4
  %and97 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else, label %if.then99

if.then99:                                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %5, align 4
  %port101 = getelementptr inbounds %struct.pardevice, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %port101 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port101, align 4
  %ieee1284102 = getelementptr inbounds %struct.parport, ptr %91, i32 0, i32 23
  br label %if.end106

if.else:                                          ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #15
  %state104 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 6
  br label %if.end106

if.end106:                                        ; preds = %if.else, %if.then99
  %storemerge499.in = phi ptr [ %state104, %if.else ], [ %ieee1284102, %if.then99 ]
  %92 = ptrtoint ptr %storemerge499.in to i32
  call void @__asan_load4_noabort(i32 %92)
  %storemerge499 = load i32, ptr %storemerge499.in, align 4
  %93 = ptrtoint ptr %mode95 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %storemerge499, ptr %mode95, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i516 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i516, label %if.end106.copy_to_user.exit.thread_crit_edge, label %if.end.i.i519

if.end106.copy_to_user.exit.thread_crit_edge:     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.end.i.i519:                                    ; preds = %if.end106
  %94 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i517 = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i517)
  %cmp.i6.i518 = icmp eq i32 %asmresult.i.i517, 0
  br i1 %cmp.i6.i518, label %copy_to_user.exit, label %if.end.i.i519.copy_to_user.exit.thread_crit_edge

if.end.i.i519.copy_to_user.exit.thread_crit_edge: ; preds = %if.end.i.i519
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i519
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i520 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mode95, i32 noundef 4) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %mode95, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool108.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool108.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i519.copy_to_user.exit.thread_crit_edge, %if.end106.copy_to_user.exit.thread_crit_edge
  %95 = phi i32 [ -14, %if.end106.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i519.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode95) #13
  br label %cleanup374

sw.bb112:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phase113) #13
  %96 = ptrtoint ptr %phase113 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %phase113, align 4, !annotation !119
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i526 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i526, label %sw.bb112.if.then11.i.i542_crit_edge, label %land.lhs.true.i.i529

sw.bb112.if.then11.i.i542_crit_edge:              ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i542

land.lhs.true.i.i529:                             ; preds = %sw.bb112
  %97 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i527 = extractvalue { i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i527)
  %cmp.i6.i528 = icmp eq i32 %asmresult.i.i527, 0
  br i1 %cmp.i6.i528, label %if.end.i.i539, label %land.lhs.true.i.i529.if.then11.i.i542_crit_edge, !prof !113

land.lhs.true.i.i529.if.then11.i.i542_crit_edge:  ; preds = %land.lhs.true.i.i529
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i542

if.end.i.i539:                                    ; preds = %land.lhs.true.i.i529
  %call.i.i.i530 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %phase113, i32 noundef 4) #13
  %98 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i531 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i.i531 to ptr
  %cpu_domain.i.i.i.i.i532 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 4
  %100 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i532) #9, !srcloc !116
  %and.i.i.i.i533 = and i32 %100, -13
  %or.i.i.i.i534 = or i32 %and.i.i.i.i533, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i534) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i535 = call i32 @arm_copy_from_user(ptr noundef nonnull %phase113, ptr noundef %6, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i535)
  %tobool4.not.i.i538 = icmp eq i32 %call1.i.i.i535, 0
  br i1 %tobool4.not.i.i538, label %if.end117, label %if.end.i.i539.if.then11.i.i542_crit_edge, !prof !113

if.end.i.i539.if.then11.i.i542_crit_edge:         ; preds = %if.end.i.i539
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i542

if.then11.i.i542:                                 ; preds = %if.end.i.i539.if.then11.i.i542_crit_edge, %land.lhs.true.i.i529.if.then11.i.i542_crit_edge, %sw.bb112.if.then11.i.i542_crit_edge
  %res.0.i.i537939 = phi i32 [ %call1.i.i.i535, %if.end.i.i539.if.then11.i.i542_crit_edge ], [ 4, %sw.bb112.if.then11.i.i542_crit_edge ], [ 4, %land.lhs.true.i.i529.if.then11.i.i542_crit_edge ]
  %sub.i.i540 = sub i32 4, %res.0.i.i537939
  %add.ptr.i.i541 = getelementptr i8, ptr %phase113, i32 %sub.i.i540
  %101 = call ptr @memset(ptr %add.ptr.i.i541, i32 0, i32 %res.0.i.i537939)
  br label %cleanup129

if.end117:                                        ; preds = %if.end.i.i539
  %102 = ptrtoint ptr %phase113 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %phase113, align 4
  %phase119 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 6, i32 1
  %104 = ptrtoint ptr %phase119 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 %103, ptr %phase119, align 4
  %flags120 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %105 = ptrtoint ptr %flags120 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags120, align 4
  %and121 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end117.cleanup129_crit_edge, label %if.then123

if.end117.cleanup129_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup129

if.then123:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %5, align 4
  %port125 = getelementptr inbounds %struct.pardevice, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %port125 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %port125, align 4
  %phase127 = getelementptr inbounds %struct.parport, ptr %110, i32 0, i32 23, i32 1
  %111 = ptrtoint ptr %phase127 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 %103, ptr %phase127, align 4
  br label %cleanup129

cleanup129:                                       ; preds = %if.then123, %if.end117.cleanup129_crit_edge, %if.then11.i.i542
  %retval.3 = phi i32 [ 0, %if.then123 ], [ 0, %if.end117.cleanup129_crit_edge ], [ -14, %if.then11.i.i542 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phase113) #13
  br label %cleanup374

sw.bb130:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phase131) #13
  %flags132 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %112 = ptrtoint ptr %flags132 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags132, align 4
  %and133 = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.else140, label %if.then135

if.then135:                                       ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %5, align 4
  %port137 = getelementptr inbounds %struct.pardevice, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %port137 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %port137, align 4
  %phase139 = getelementptr inbounds %struct.parport, ptr %117, i32 0, i32 23, i32 1
  br label %if.end143

if.else140:                                       ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #15
  %phase142 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 6, i32 1
  br label %if.end143

if.end143:                                        ; preds = %if.else140, %if.then135
  %storemerge.in = phi ptr [ %phase142, %if.else140 ], [ %phase139, %if.then135 ]
  %118 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %118)
  %storemerge = load volatile i32, ptr %storemerge.in, align 4
  %119 = ptrtoint ptr %phase131 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %storemerge, ptr %phase131, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i549 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i549, label %if.end143.copy_to_user.exit557.thread_crit_edge, label %if.end.i.i552

if.end143.copy_to_user.exit557.thread_crit_edge:  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit557.thread

if.end.i.i552:                                    ; preds = %if.end143
  %120 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i550 = extractvalue { i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i550)
  %cmp.i6.i551 = icmp eq i32 %asmresult.i.i550, 0
  br i1 %cmp.i6.i551, label %copy_to_user.exit557, label %if.end.i.i552.copy_to_user.exit557.thread_crit_edge

if.end.i.i552.copy_to_user.exit557.thread_crit_edge: ; preds = %if.end.i.i552
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit557.thread

copy_to_user.exit557:                             ; preds = %if.end.i.i552
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i553 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %phase131, i32 noundef 4) #13
  %call.i12.i.i554 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %phase131, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i554)
  %tobool145.not = icmp eq i32 %call.i12.i.i554, 0
  %spec.select1012 = select i1 %tobool145.not, i32 0, i32 -14
  br label %copy_to_user.exit557.thread

copy_to_user.exit557.thread:                      ; preds = %copy_to_user.exit557, %if.end.i.i552.copy_to_user.exit557.thread_crit_edge, %if.end143.copy_to_user.exit557.thread_crit_edge
  %121 = phi i32 [ -14, %if.end143.copy_to_user.exit557.thread_crit_edge ], [ -14, %if.end.i.i552.copy_to_user.exit557.thread_crit_edge ], [ %spec.select1012, %copy_to_user.exit557 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phase131) #13
  br label %cleanup374

sw.bb149:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %modes) #13
  %call150 = tail call ptr @parport_find_number(i32 noundef %and.i) #13
  %tobool151.not = icmp eq ptr %call150, null
  br i1 %tobool151.not, label %sw.bb149.cleanup159_crit_edge, label %if.end153

sw.bb149.cleanup159_crit_edge:                    ; preds = %sw.bb149
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end153:                                        ; preds = %sw.bb149
  %modes154 = getelementptr inbounds %struct.parport, ptr %call150, i32 0, i32 4
  %122 = ptrtoint ptr %modes154 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %modes154, align 8
  %124 = ptrtoint ptr %modes to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %modes, align 4
  tail call void @parport_put_port(ptr noundef nonnull %call150) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i562 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i562, label %if.end153.cleanup159_crit_edge, label %if.end.i.i565

if.end153.cleanup159_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end.i.i565:                                    ; preds = %if.end153
  %125 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i563 = extractvalue { i32, i32 } %125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i563)
  %cmp.i6.i564 = icmp eq i32 %asmresult.i.i563, 0
  br i1 %cmp.i6.i564, label %copy_to_user.exit570, label %if.end.i.i565.cleanup159_crit_edge

if.end.i.i565.cleanup159_crit_edge:               ; preds = %if.end.i.i565
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

copy_to_user.exit570:                             ; preds = %if.end.i.i565
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i566 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %modes, i32 noundef 4) #13
  %call.i12.i.i567 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %modes, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i567)
  %tobool156.not = icmp eq i32 %call.i12.i.i567, 0
  %spec.select1013 = select i1 %tobool156.not, i32 0, i32 -14
  br label %cleanup159

cleanup159:                                       ; preds = %copy_to_user.exit570, %if.end.i.i565.cleanup159_crit_edge, %if.end153.cleanup159_crit_edge, %sw.bb149.cleanup159_crit_edge
  %retval.5 = phi i32 [ -19, %sw.bb149.cleanup159_crit_edge ], [ -14, %if.end153.cleanup159_crit_edge ], [ -14, %if.end.i.i565.cleanup159_crit_edge ], [ %spec.select1013, %copy_to_user.exit570 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %modes) #13
  br label %cleanup374

sw.bb160:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uflags) #13
  %126 = ptrtoint ptr %uflags to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %uflags, align 4, !annotation !119
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i575 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i575, label %sw.bb160.if.then11.i.i591_crit_edge, label %land.lhs.true.i.i578

sw.bb160.if.then11.i.i591_crit_edge:              ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i591

land.lhs.true.i.i578:                             ; preds = %sw.bb160
  %127 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i576 = extractvalue { i32, i32 } %127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i576)
  %cmp.i6.i577 = icmp eq i32 %asmresult.i.i576, 0
  br i1 %cmp.i6.i577, label %if.end.i.i588, label %land.lhs.true.i.i578.if.then11.i.i591_crit_edge, !prof !113

land.lhs.true.i.i578.if.then11.i.i591_crit_edge:  ; preds = %land.lhs.true.i.i578
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i591

if.end.i.i588:                                    ; preds = %land.lhs.true.i.i578
  %call.i.i.i579 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uflags, i32 noundef 4) #13
  %128 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i580 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i.i.i.i.i580 to ptr
  %cpu_domain.i.i.i.i.i581 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 4
  %130 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i581) #9, !srcloc !116
  %and.i.i.i.i582 = and i32 %130, -13
  %or.i.i.i.i583 = or i32 %and.i.i.i.i582, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i583) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i584 = call i32 @arm_copy_from_user(ptr noundef nonnull %uflags, ptr noundef %6, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i584)
  %tobool4.not.i.i587 = icmp eq i32 %call1.i.i.i584, 0
  br i1 %tobool4.not.i.i587, label %if.end164, label %if.end.i.i588.if.then11.i.i591_crit_edge, !prof !113

if.end.i.i588.if.then11.i.i591_crit_edge:         ; preds = %if.end.i.i588
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i591

if.then11.i.i591:                                 ; preds = %if.end.i.i588.if.then11.i.i591_crit_edge, %land.lhs.true.i.i578.if.then11.i.i591_crit_edge, %sw.bb160.if.then11.i.i591_crit_edge
  %res.0.i.i586948 = phi i32 [ %call1.i.i.i584, %if.end.i.i588.if.then11.i.i591_crit_edge ], [ 4, %sw.bb160.if.then11.i.i591_crit_edge ], [ 4, %land.lhs.true.i.i578.if.then11.i.i591_crit_edge ]
  %sub.i.i589 = sub i32 4, %res.0.i.i586948
  %add.ptr.i.i590 = getelementptr i8, ptr %uflags, i32 %sub.i.i589
  %131 = call ptr @memset(ptr %add.ptr.i.i590, i32 0, i32 %res.0.i.i586948)
  br label %cleanup170

if.end164:                                        ; preds = %if.end.i.i588
  call void @__sanitizer_cov_trace_pc() #15
  %flags165 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %132 = ptrtoint ptr %flags165 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags165, align 4
  %and166 = and i32 %133, -29
  %134 = ptrtoint ptr %uflags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %uflags, align 4
  %and167 = and i32 %135, 28
  %or169 = or i32 %and167, %and166
  store i32 %or169, ptr %flags165, align 4
  br label %cleanup170

cleanup170:                                       ; preds = %if.end164, %if.then11.i.i591
  %retval.6 = phi i32 [ 0, %if.end164 ], [ -14, %if.then11.i.i591 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uflags) #13
  br label %cleanup374

sw.bb171:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uflags172) #13
  %flags173 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %136 = ptrtoint ptr %flags173 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %flags173, align 4
  %and174 = and i32 %137, 28
  %138 = ptrtoint ptr %uflags172 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %and174, ptr %uflags172, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i598 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i598, label %sw.bb171.copy_to_user.exit606.thread_crit_edge, label %if.end.i.i601

sw.bb171.copy_to_user.exit606.thread_crit_edge:   ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit606.thread

if.end.i.i601:                                    ; preds = %sw.bb171
  %139 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i599 = extractvalue { i32, i32 } %139, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i599)
  %cmp.i6.i600 = icmp eq i32 %asmresult.i.i599, 0
  br i1 %cmp.i6.i600, label %copy_to_user.exit606, label %if.end.i.i601.copy_to_user.exit606.thread_crit_edge

if.end.i.i601.copy_to_user.exit606.thread_crit_edge: ; preds = %if.end.i.i601
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit606.thread

copy_to_user.exit606:                             ; preds = %if.end.i.i601
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i602 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uflags172, i32 noundef 4) #13
  %call.i12.i.i603 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %uflags172, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i603)
  %tobool176.not = icmp eq i32 %call.i12.i.i603, 0
  %spec.select1014 = select i1 %tobool176.not, i32 0, i32 -14
  br label %copy_to_user.exit606.thread

copy_to_user.exit606.thread:                      ; preds = %copy_to_user.exit606, %if.end.i.i601.copy_to_user.exit606.thread_crit_edge, %sw.bb171.copy_to_user.exit606.thread_crit_edge
  %140 = phi i32 [ -14, %sw.bb171.copy_to_user.exit606.thread_crit_edge ], [ -14, %if.end.i.i601.copy_to_user.exit606.thread_crit_edge ], [ %spec.select1014, %copy_to_user.exit606 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uflags172) #13
  br label %cleanup374

sw.epilog:                                        ; preds = %entry
  %flags180 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 3
  %141 = ptrtoint ptr %flags180 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags180, align 4
  %and181 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %cmp182 = icmp eq i32 %and181, 0
  br i1 %cmp182, label %do.body184, label %if.end200

do.body184:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_do_ioctl.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_do_ioctl, %if.then196)) #13
          to label %cleanup374 [label %if.then196], !srcloc !112

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_do_ioctl.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.14, i32 noundef %and.i) #13
  br label %cleanup374

if.end200:                                        ; preds = %sw.epilog
  %143 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %5, align 4
  %port202 = getelementptr inbounds %struct.pardevice, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %port202 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %port202, align 4
  %147 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %cmd, label %do.body356 [
    i32 -2147389311, label %sw.bb203
    i32 -2147389307, label %sw.bb209
    i32 -2147389309, label %sw.bb216
    i32 28813, label %sw.bb223
    i32 28812, label %sw.bb226
    i32 1073836164, label %if.end59.i.i652
    i32 1073836166, label %if.end59.i.i675
    i32 1073901710, label %if.end59.i.i698
    i32 1074032784, label %if.end59.i.i744
    i32 1074032785, label %if.end59.i.i767
    i32 1073836178, label %if.end59.i.i790
    i32 -2147192685, label %sw.bb293
    i32 1074294934, label %if.end59.i.i828
    i32 1074819222, label %if.end59.i.i851
    i32 -2146930539, label %sw.bb332
    i32 -2146406251, label %sw.bb342
  ]

sw.bb203:                                         ; preds = %if.end200
  %ops = getelementptr inbounds %struct.parport, ptr %146, i32 0, i32 24
  %148 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ops, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read_status, align 4
  %call204 = tail call zeroext i8 %151(ptr noundef %146) #13
  %152 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %call204, ptr %reg, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i614 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i614, label %sw.bb203.cleanup374_crit_edge, label %if.end.i.i617

sw.bb203.cleanup374_crit_edge:                    ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end.i.i617:                                    ; preds = %sw.bb203
  %153 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 1, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i615 = extractvalue { i32, i32 } %153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i615)
  %cmp.i6.i616 = icmp eq i32 %asmresult.i.i615, 0
  br i1 %cmp.i6.i616, label %copy_to_user.exit622, label %if.end.i.i617.cleanup374_crit_edge

if.end.i.i617.cleanup374_crit_edge:               ; preds = %if.end.i.i617
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

copy_to_user.exit622:                             ; preds = %if.end.i.i617
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i618 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %reg, i32 noundef 1) #13
  %call.i12.i.i619 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %reg, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i619)
  %tobool206.not = icmp eq i32 %call.i12.i.i619, 0
  %spec.select1015 = select i1 %tobool206.not, i32 0, i32 -14
  br label %cleanup374

sw.bb209:                                         ; preds = %if.end200
  %ops210 = getelementptr inbounds %struct.parport, ptr %146, i32 0, i32 24
  %154 = ptrtoint ptr %ops210 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ops210, align 4
  %read_data = getelementptr inbounds %struct.parport_operations, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %read_data to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read_data, align 4
  %call211 = tail call zeroext i8 %157(ptr noundef %146) #13
  %158 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %call211, ptr %reg, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i627 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i627, label %sw.bb209.cleanup374_crit_edge, label %if.end.i.i630

sw.bb209.cleanup374_crit_edge:                    ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end.i.i630:                                    ; preds = %sw.bb209
  %159 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 1, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i628 = extractvalue { i32, i32 } %159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i628)
  %cmp.i6.i629 = icmp eq i32 %asmresult.i.i628, 0
  br i1 %cmp.i6.i629, label %copy_to_user.exit635, label %if.end.i.i630.cleanup374_crit_edge

if.end.i.i630.cleanup374_crit_edge:               ; preds = %if.end.i.i630
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

copy_to_user.exit635:                             ; preds = %if.end.i.i630
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i631 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %reg, i32 noundef 1) #13
  %call.i12.i.i632 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %reg, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i632)
  %tobool213.not = icmp eq i32 %call.i12.i.i632, 0
  %spec.select1016 = select i1 %tobool213.not, i32 0, i32 -14
  br label %cleanup374

sw.bb216:                                         ; preds = %if.end200
  %ops217 = getelementptr inbounds %struct.parport, ptr %146, i32 0, i32 24
  %160 = ptrtoint ptr %ops217 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ops217, align 4
  %read_control = getelementptr inbounds %struct.parport_operations, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %read_control to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read_control, align 4
  %call218 = tail call zeroext i8 %163(ptr noundef %146) #13
  %164 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %call218, ptr %reg, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i640 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i640, label %sw.bb216.cleanup374_crit_edge, label %if.end.i.i643

sw.bb216.cleanup374_crit_edge:                    ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end.i.i643:                                    ; preds = %sw.bb216
  %165 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 1, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i641 = extractvalue { i32, i32 } %165, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i641)
  %cmp.i6.i642 = icmp eq i32 %asmresult.i.i641, 0
  br i1 %cmp.i6.i642, label %copy_to_user.exit648, label %if.end.i.i643.cleanup374_crit_edge

if.end.i.i643.cleanup374_crit_edge:               ; preds = %if.end.i.i643
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

copy_to_user.exit648:                             ; preds = %if.end.i.i643
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i644 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %reg, i32 noundef 1) #13
  %call.i12.i.i645 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %reg, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i645)
  %tobool220.not = icmp eq i32 %call.i12.i.i645, 0
  %spec.select1017 = select i1 %tobool220.not, i32 0, i32 -14
  br label %cleanup374

sw.bb223:                                         ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @parport_yield_blocking(ptr noundef %144)
  br label %cleanup374

sw.bb226:                                         ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #15
  %ieee1284229 = getelementptr inbounds %struct.parport, ptr %146, i32 0, i32 23
  %166 = ptrtoint ptr %ieee1284229 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ieee1284229, align 4
  %state231 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 6
  %168 = ptrtoint ptr %state231 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %state231, align 4
  %phase233 = getelementptr inbounds %struct.parport, ptr %146, i32 0, i32 23, i32 1
  %169 = ptrtoint ptr %phase233 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %phase233, align 4
  %phase235 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 6, i32 1
  %171 = ptrtoint ptr %phase235 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile i32 %170, ptr %phase235, align 4
  %saved_state236 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 7
  %172 = ptrtoint ptr %saved_state236 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %saved_state236, align 4
  store i32 %173, ptr %ieee1284229, align 4
  %phase240 = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 7, i32 1
  %174 = ptrtoint ptr %phase240 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %phase240, align 4
  store volatile i32 %175, ptr %phase233, align 4
  %176 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %5, align 4
  tail call void @parport_release(ptr noundef %177) #13
  %178 = ptrtoint ptr %flags180 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %flags180, align 4
  %and244 = and i32 %179, -2
  store i32 %and244, ptr %flags180, align 4
  br label %cleanup374

if.end59.i.i652:                                  ; preds = %if.end200
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i653 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i653, label %if.end59.i.i652.if.then11.i.i669_crit_edge, label %land.lhs.true.i.i656

if.end59.i.i652.if.then11.i.i669_crit_edge:       ; preds = %if.end59.i.i652
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i669

land.lhs.true.i.i656:                             ; preds = %if.end59.i.i652
  %180 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 1, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i654 = extractvalue { i32, i32 } %180, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i654)
  %cmp.i6.i655 = icmp eq i32 %asmresult.i.i654, 0
  br i1 %cmp.i6.i655, label %if.end.i.i666, label %land.lhs.true.i.i656.if.then11.i.i669_crit_edge, !prof !113

land.lhs.true.i.i656.if.then11.i.i669_crit_edge:  ; preds = %land.lhs.true.i.i656
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i669

if.end.i.i666:                                    ; preds = %land.lhs.true.i.i656
  %call.i.i.i657 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reg, i32 noundef 1) #13
  %181 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i658 = and i32 %181, -16384
  %182 = inttoptr i32 %and.i.i.i.i.i.i658 to ptr
  %cpu_domain.i.i.i.i.i659 = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 4
  %183 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i659) #9, !srcloc !116
  %and.i.i.i.i660 = and i32 %183, -13
  %or.i.i.i.i661 = or i32 %and.i.i.i.i660, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i661) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i662 = call i32 @arm_copy_from_user(ptr noundef nonnull %reg, ptr noundef %6, i32 noundef 1) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %183) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i662)
  %tobool4.not.i.i665 = icmp eq i32 %call1.i.i.i662, 0
  br i1 %tobool4.not.i.i665, label %if.end249, label %if.end.i.i666.if.then11.i.i669_crit_edge, !prof !113

if.end.i.i666.if.then11.i.i669_crit_edge:         ; preds = %if.end.i.i666
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i669

if.then11.i.i669:                                 ; preds = %if.end.i.i666.if.then11.i.i669_crit_edge, %land.lhs.true.i.i656.if.then11.i.i669_crit_edge, %if.end59.i.i652.if.then11.i.i669_crit_edge
  %res.0.i.i664962 = phi i32 [ %call1.i.i.i662, %if.end.i.i666.if.then11.i.i669_crit_edge ], [ 1, %if.end59.i.i652.if.then11.i.i669_crit_edge ], [ 1, %land.lhs.true.i.i656.if.then11.i.i669_crit_edge ]
  %sub.i.i667 = sub i32 1, %res.0.i.i664962
  %add.ptr.i.i668 = getelementptr i8, ptr %reg, i32 %sub.i.i667
  %184 = call ptr @memset(ptr %add.ptr.i.i668, i32 0, i32 %res.0.i.i664962)
  br label %cleanup374

if.end249:                                        ; preds = %if.end.i.i666
  call void @__sanitizer_cov_trace_pc() #15
  %ops250 = getelementptr inbounds %struct.parport, ptr %146, i32 0, i32 24
  %185 = ptrtoint ptr %ops250 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ops250, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write_control, align 4
  %189 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %reg, align 1
  call void %188(ptr noundef %146, i8 noundef zeroext %190) #13
  br label %cleanup374

if.end59.i.i675:                                  ; preds = %if.end200
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i676 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i676, label %if.end59.i.i675.if.then11.i.i692_crit_edge, label %land.lhs.true.i.i679

if.end59.i.i675.if.then11.i.i692_crit_edge:       ; preds = %if.end59.i.i675
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i692

land.lhs.true.i.i679:                             ; preds = %if.end59.i.i675
  %191 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 1, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i677 = extractvalue { i32, i32 } %191, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i677)
  %cmp.i6.i678 = icmp eq i32 %asmresult.i.i677, 0
  br i1 %cmp.i6.i678, label %if.end.i.i689, label %land.lhs.true.i.i679.if.then11.i.i692_crit_edge, !prof !113

land.lhs.true.i.i679.if.then11.i.i692_crit_edge:  ; preds = %land.lhs.true.i.i679
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i692

if.end.i.i689:                                    ; preds = %land.lhs.true.i.i679
  %call.i.i.i680 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reg, i32 noundef 1) #13
  %192 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i681 = and i32 %192, -16384
  %193 = inttoptr i32 %and.i.i.i.i.i.i681 to ptr
  %cpu_domain.i.i.i.i.i682 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 4
  %194 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i682) #9, !srcloc !116
  %and.i.i.i.i683 = and i32 %194, -13
  %or.i.i.i.i684 = or i32 %and.i.i.i.i683, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i684) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i685 = call i32 @arm_copy_from_user(ptr noundef nonnull %reg, ptr noundef %6, i32 noundef 1) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %194) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i685)
  %tobool4.not.i.i688 = icmp eq i32 %call1.i.i.i685, 0
  br i1 %tobool4.not.i.i688, label %if.end255, label %if.end.i.i689.if.then11.i.i692_crit_edge, !prof !113

if.end.i.i689.if.then11.i.i692_crit_edge:         ; preds = %if.end.i.i689
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i692

if.then11.i.i692:                                 ; preds = %if.end.i.i689.if.then11.i.i692_crit_edge, %land.lhs.true.i.i679.if.then11.i.i692_crit_edge, %if.end59.i.i675.if.then11.i.i692_crit_edge
  %res.0.i.i687967 = phi i32 [ %call1.i.i.i685, %if.end.i.i689.if.then11.i.i692_crit_edge ], [ 1, %if.end59.i.i675.if.then11.i.i692_crit_edge ], [ 1, %land.lhs.true.i.i679.if.then11.i.i692_crit_edge ]
  %sub.i.i690 = sub i32 1, %res.0.i.i687967
  %add.ptr.i.i691 = getelementptr i8, ptr %reg, i32 %sub.i.i690
  %195 = call ptr @memset(ptr %add.ptr.i.i691, i32 0, i32 %res.0.i.i687967)
  br label %cleanup374

if.end255:                                        ; preds = %if.end.i.i689
  call void @__sanitizer_cov_trace_pc() #15
  %ops256 = getelementptr inbounds %struct.parport, ptr %146, i32 0, i32 24
  %196 = ptrtoint ptr %ops256 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ops256, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %200 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %reg, align 1
  call void %199(ptr noundef %146, i8 noundef zeroext %201) #13
  br label %cleanup374

if.end59.i.i698:                                  ; preds = %if.end200
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i699 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i699, label %if.end59.i.i698.if.then11.i.i715_crit_edge, label %land.lhs.true.i.i702

if.end59.i.i698.if.then11.i.i715_crit_edge:       ; preds = %if.end59.i.i698
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i715

land.lhs.true.i.i702:                             ; preds = %if.end59.i.i698
  %202 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 1, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i700 = extractvalue { i32, i32 } %202, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i700)
  %cmp.i6.i701 = icmp eq i32 %asmresult.i.i700, 0
  br i1 %cmp.i6.i701, label %if.end.i.i712, label %land.lhs.true.i.i702.if.then11.i.i715_crit_edge, !prof !113

land.lhs.true.i.i702.if.then11.i.i715_crit_edge:  ; preds = %land.lhs.true.i.i702
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i715

if.end.i.i712:                                    ; preds = %land.lhs.true.i.i702
  %call.i.i.i703 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mask, i32 noundef 1) #13
  %203 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i704 = and i32 %203, -16384
  %204 = inttoptr i32 %and.i.i.i.i.i.i704 to ptr
  %cpu_domain.i.i.i.i.i705 = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 4
  %205 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i705) #9, !srcloc !116
  %and.i.i.i.i706 = and i32 %205, -13
  %or.i.i.i.i707 = or i32 %and.i.i.i.i706, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i707) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i708 = call i32 @arm_copy_from_user(ptr noundef nonnull %mask, ptr noundef %6, i32 noundef 1) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %205) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i708)
  %tobool4.not.i.i711 = icmp eq i32 %call1.i.i.i708, 0
  br i1 %tobool4.not.i.i711, label %if.end261, label %if.end.i.i712.if.then11.i.i715_crit_edge, !prof !113

if.end.i.i712.if.then11.i.i715_crit_edge:         ; preds = %if.end.i.i712
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i715

if.then11.i.i715:                                 ; preds = %if.end.i.i712.if.then11.i.i715_crit_edge, %land.lhs.true.i.i702.if.then11.i.i715_crit_edge, %if.end59.i.i698.if.then11.i.i715_crit_edge
  %res.0.i.i710972 = phi i32 [ %call1.i.i.i708, %if.end.i.i712.if.then11.i.i715_crit_edge ], [ 1, %if.end59.i.i698.if.then11.i.i715_crit_edge ], [ 1, %land.lhs.true.i.i702.if.then11.i.i715_crit_edge ]
  %sub.i.i713 = sub i32 1, %res.0.i.i710972
  %add.ptr.i.i714 = getelementptr i8, ptr %mask, i32 %sub.i.i713
  %206 = call ptr @memset(ptr %add.ptr.i.i714, i32 0, i32 %res.0.i.i710972)
  br label %cleanup374

if.end261:                                        ; preds = %if.end.i.i712
  %add.ptr = getelementptr i8, ptr %6, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i722 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i722, label %if.end261.if.then11.i.i738_crit_edge, label %land.lhs.true.i.i725

if.end261.if.then11.i.i738_crit_edge:             ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i738

land.lhs.true.i.i725:                             ; preds = %if.end261
  %207 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 1, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i723 = extractvalue { i32, i32 } %207, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i723)
  %cmp.i6.i724 = icmp eq i32 %asmresult.i.i723, 0
  br i1 %cmp.i6.i724, label %if.end.i.i735, label %land.lhs.true.i.i725.if.then11.i.i738_crit_edge, !prof !113

land.lhs.true.i.i725.if.then11.i.i738_crit_edge:  ; preds = %land.lhs.true.i.i725
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i738

if.end.i.i735:                                    ; preds = %land.lhs.true.i.i725
  %call.i.i.i726 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reg, i32 noundef 1) #13
  %208 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i727 = and i32 %208, -16384
  %209 = inttoptr i32 %and.i.i.i.i.i.i727 to ptr
  %cpu_domain.i.i.i.i.i728 = getelementptr inbounds %struct.thread_info, ptr %209, i32 0, i32 4
  %210 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i728) #9, !srcloc !116
  %and.i.i.i.i729 = and i32 %210, -13
  %or.i.i.i.i730 = or i32 %and.i.i.i.i729, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i730) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i731 = call i32 @arm_copy_from_user(ptr noundef nonnull %reg, ptr noundef %add.ptr, i32 noundef 1) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %210) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i731)
  %tobool4.not.i.i734 = icmp eq i32 %call1.i.i.i731, 0
  br i1 %tobool4.not.i.i734, label %if.end265, label %if.end.i.i735.if.then11.i.i738_crit_edge, !prof !113

if.end.i.i735.if.then11.i.i738_crit_edge:         ; preds = %if.end.i.i735
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i738

if.then11.i.i738:                                 ; preds = %if.end.i.i735.if.then11.i.i738_crit_edge, %land.lhs.true.i.i725.if.then11.i.i738_crit_edge, %if.end261.if.then11.i.i738_crit_edge
  %res.0.i.i733977 = phi i32 [ %call1.i.i.i731, %if.end.i.i735.if.then11.i.i738_crit_edge ], [ 1, %if.end261.if.then11.i.i738_crit_edge ], [ 1, %land.lhs.true.i.i725.if.then11.i.i738_crit_edge ]
  %sub.i.i736 = sub i32 1, %res.0.i.i733977
  %add.ptr.i.i737 = getelementptr i8, ptr %reg, i32 %sub.i.i736
  %211 = call ptr @memset(ptr %add.ptr.i.i737, i32 0, i32 %res.0.i.i733977)
  br label %cleanup374

if.end265:                                        ; preds = %if.end.i.i735
  call void @__sanitizer_cov_trace_pc() #15
  %ops266 = getelementptr inbounds %struct.parport, ptr %146, i32 0, i32 24
  %212 = ptrtoint ptr %ops266 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ops266, align 4
  %frob_control = getelementptr inbounds %struct.parport_operations, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %frob_control to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %frob_control, align 4
  %216 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %mask, align 1
  %218 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %reg, align 1
  %call267 = call zeroext i8 %215(ptr noundef %146, i8 noundef zeroext %217, i8 noundef zeroext %219) #13
  br label %cleanup374

if.end59.i.i744:                                  ; preds = %if.end200
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i745 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i745, label %if.end59.i.i744.if.then11.i.i761_crit_edge, label %land.lhs.true.i.i748

if.end59.i.i744.if.then11.i.i761_crit_edge:       ; preds = %if.end59.i.i744
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i761

land.lhs.true.i.i748:                             ; preds = %if.end59.i.i744
  %220 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i746 = extractvalue { i32, i32 } %220, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i746)
  %cmp.i6.i747 = icmp eq i32 %asmresult.i.i746, 0
  br i1 %cmp.i6.i747, label %if.end.i.i758, label %land.lhs.true.i.i748.if.then11.i.i761_crit_edge, !prof !113

land.lhs.true.i.i748.if.then11.i.i761_crit_edge:  ; preds = %land.lhs.true.i.i748
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i761

if.end.i.i758:                                    ; preds = %land.lhs.true.i.i748
  %call.i.i.i749 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mode, i32 noundef 4) #13
  %221 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i750 = and i32 %221, -16384
  %222 = inttoptr i32 %and.i.i.i.i.i.i750 to ptr
  %cpu_domain.i.i.i.i.i751 = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 4
  %223 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i751) #9, !srcloc !116
  %and.i.i.i.i752 = and i32 %223, -13
  %or.i.i.i.i753 = or i32 %and.i.i.i.i752, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i753) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i754 = call i32 @arm_copy_from_user(ptr noundef nonnull %mode, ptr noundef %6, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i754)
  %tobool4.not.i.i757 = icmp eq i32 %call1.i.i.i754, 0
  br i1 %tobool4.not.i.i757, label %if.end272, label %if.end.i.i758.if.then11.i.i761_crit_edge, !prof !113

if.end.i.i758.if.then11.i.i761_crit_edge:         ; preds = %if.end.i.i758
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i761

if.then11.i.i761:                                 ; preds = %if.end.i.i758.if.then11.i.i761_crit_edge, %land.lhs.true.i.i748.if.then11.i.i761_crit_edge, %if.end59.i.i744.if.then11.i.i761_crit_edge
  %res.0.i.i756982 = phi i32 [ %call1.i.i.i754, %if.end.i.i758.if.then11.i.i761_crit_edge ], [ 4, %if.end59.i.i744.if.then11.i.i761_crit_edge ], [ 4, %land.lhs.true.i.i748.if.then11.i.i761_crit_edge ]
  %sub.i.i759 = sub i32 4, %res.0.i.i756982
  %add.ptr.i.i760 = getelementptr i8, ptr %mode, i32 %sub.i.i759
  %224 = call ptr @memset(ptr %add.ptr.i.i760, i32 0, i32 %res.0.i.i756982)
  br label %cleanup374

if.end272:                                        ; preds = %if.end.i.i758
  %225 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool273.not = icmp eq i32 %226, 0
  %ops277 = getelementptr inbounds %struct.parport, ptr %146, i32 0, i32 24
  %227 = ptrtoint ptr %ops277 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ops277, align 4
  br i1 %tobool273.not, label %if.else276, label %if.then274

if.then274:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #15
  %data_reverse = getelementptr inbounds %struct.parport_operations, ptr %228, i32 0, i32 9
  %229 = ptrtoint ptr %data_reverse to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %data_reverse, align 4
  call void %230(ptr noundef %146) #13
  br label %cleanup374

if.else276:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #15
  %data_forward = getelementptr inbounds %struct.parport_operations, ptr %228, i32 0, i32 8
  %231 = ptrtoint ptr %data_forward to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %data_forward, align 4
  call void %232(ptr noundef %146) #13
  br label %cleanup374

if.end59.i.i767:                                  ; preds = %if.end200
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i768 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i768, label %if.end59.i.i767.if.then11.i.i784_crit_edge, label %land.lhs.true.i.i771

if.end59.i.i767.if.then11.i.i784_crit_edge:       ; preds = %if.end59.i.i767
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i784

land.lhs.true.i.i771:                             ; preds = %if.end59.i.i767
  %233 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i769 = extractvalue { i32, i32 } %233, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i769)
  %cmp.i6.i770 = icmp eq i32 %asmresult.i.i769, 0
  br i1 %cmp.i6.i770, label %if.end.i.i781, label %land.lhs.true.i.i771.if.then11.i.i784_crit_edge, !prof !113

land.lhs.true.i.i771.if.then11.i.i784_crit_edge:  ; preds = %land.lhs.true.i.i771
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i784

if.end.i.i781:                                    ; preds = %land.lhs.true.i.i771
  %call.i.i.i772 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mode, i32 noundef 4) #13
  %234 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i773 = and i32 %234, -16384
  %235 = inttoptr i32 %and.i.i.i.i.i.i773 to ptr
  %cpu_domain.i.i.i.i.i774 = getelementptr inbounds %struct.thread_info, ptr %235, i32 0, i32 4
  %236 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i774) #9, !srcloc !116
  %and.i.i.i.i775 = and i32 %236, -13
  %or.i.i.i.i776 = or i32 %and.i.i.i.i775, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i776) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i777 = call i32 @arm_copy_from_user(ptr noundef nonnull %mode, ptr noundef %6, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %236) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i777)
  %tobool4.not.i.i780 = icmp eq i32 %call1.i.i.i777, 0
  br i1 %tobool4.not.i.i780, label %if.end283, label %if.end.i.i781.if.then11.i.i784_crit_edge, !prof !113

if.end.i.i781.if.then11.i.i784_crit_edge:         ; preds = %if.end.i.i781
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i784

if.then11.i.i784:                                 ; preds = %if.end.i.i781.if.then11.i.i784_crit_edge, %land.lhs.true.i.i771.if.then11.i.i784_crit_edge, %if.end59.i.i767.if.then11.i.i784_crit_edge
  %res.0.i.i779987 = phi i32 [ %call1.i.i.i777, %if.end.i.i781.if.then11.i.i784_crit_edge ], [ 4, %if.end59.i.i767.if.then11.i.i784_crit_edge ], [ 4, %land.lhs.true.i.i771.if.then11.i.i784_crit_edge ]
  %sub.i.i782 = sub i32 4, %res.0.i.i779987
  %add.ptr.i.i783 = getelementptr i8, ptr %mode, i32 %sub.i.i782
  %237 = call ptr @memset(ptr %add.ptr.i.i783, i32 0, i32 %res.0.i.i779987)
  br label %cleanup374

if.end283:                                        ; preds = %if.end.i.i781
  %238 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %mode, align 4
  %call284 = call i32 @parport_negotiate(ptr noundef %146, i32 noundef %239) #13
  %240 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %call284, ptr %ret, align 4
  %241 = zext i32 %call284 to i64
  call void @__sanitizer_cov_trace_switch(i64 %241, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call284, label %if.end283.sw.epilog287_crit_edge [
    i32 1, label %sw.bb286
    i32 -1, label %sw.bb285
  ]

if.end283.sw.epilog287_crit_edge:                 ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog287

sw.bb285:                                         ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #15
  %242 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 -5, ptr %ret, align 4
  br label %sw.epilog287

sw.bb286:                                         ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #15
  %243 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 -6, ptr %ret, align 4
  br label %sw.epilog287

sw.epilog287:                                     ; preds = %sw.bb286, %sw.bb285, %if.end283.sw.epilog287_crit_edge
  %244 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %5, align 4
  %port1.i901 = getelementptr inbounds %struct.pardevice, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %port1.i901 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %port1.i901, align 4
  %ops.i902 = getelementptr inbounds %struct.parport, ptr %247, i32 0, i32 24
  %248 = ptrtoint ptr %ops.i902 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ops.i902, align 4
  %enable_irq.i903 = getelementptr inbounds %struct.parport_operations, ptr %249, i32 0, i32 6
  %250 = ptrtoint ptr %enable_irq.i903 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %enable_irq.i903, align 4
  call void %251(ptr noundef %247) #13
  %252 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %ret, align 4
  br label %cleanup374

if.end59.i.i790:                                  ; preds = %if.end200
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i791 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i791, label %if.end59.i.i790.if.then11.i.i807_crit_edge, label %land.lhs.true.i.i794

if.end59.i.i790.if.then11.i.i807_crit_edge:       ; preds = %if.end59.i.i790
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i807

land.lhs.true.i.i794:                             ; preds = %if.end59.i.i790
  %254 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 1, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i792 = extractvalue { i32, i32 } %254, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i792)
  %cmp.i6.i793 = icmp eq i32 %asmresult.i.i792, 0
  br i1 %cmp.i6.i793, label %if.end.i.i804, label %land.lhs.true.i.i794.if.then11.i.i807_crit_edge, !prof !113

land.lhs.true.i.i794.if.then11.i.i807_crit_edge:  ; preds = %land.lhs.true.i.i794
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i807

if.end.i.i804:                                    ; preds = %land.lhs.true.i.i794
  %call.i.i.i795 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reg, i32 noundef 1) #13
  %255 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i796 = and i32 %255, -16384
  %256 = inttoptr i32 %and.i.i.i.i.i.i796 to ptr
  %cpu_domain.i.i.i.i.i797 = getelementptr inbounds %struct.thread_info, ptr %256, i32 0, i32 4
  %257 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i797) #9, !srcloc !116
  %and.i.i.i.i798 = and i32 %257, -13
  %or.i.i.i.i799 = or i32 %and.i.i.i.i798, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i799) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i800 = call i32 @arm_copy_from_user(ptr noundef nonnull %reg, ptr noundef %6, i32 noundef 1) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %257) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i800)
  %tobool4.not.i.i803 = icmp eq i32 %call1.i.i.i800, 0
  br i1 %tobool4.not.i.i803, label %if.end292, label %if.end.i.i804.if.then11.i.i807_crit_edge, !prof !113

if.end.i.i804.if.then11.i.i807_crit_edge:         ; preds = %if.end.i.i804
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i807

if.then11.i.i807:                                 ; preds = %if.end.i.i804.if.then11.i.i807_crit_edge, %land.lhs.true.i.i794.if.then11.i.i807_crit_edge, %if.end59.i.i790.if.then11.i.i807_crit_edge
  %res.0.i.i802992 = phi i32 [ %call1.i.i.i800, %if.end.i.i804.if.then11.i.i807_crit_edge ], [ 1, %if.end59.i.i790.if.then11.i.i807_crit_edge ], [ 1, %land.lhs.true.i.i794.if.then11.i.i807_crit_edge ]
  %sub.i.i805 = sub i32 1, %res.0.i.i802992
  %add.ptr.i.i806 = getelementptr i8, ptr %reg, i32 %sub.i.i805
  %258 = call ptr @memset(ptr %add.ptr.i.i806, i32 0, i32 %res.0.i.i802992)
  br label %cleanup374

if.end292:                                        ; preds = %if.end.i.i804
  call void @__sanitizer_cov_trace_pc() #15
  %259 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %reg, align 1
  %irqctl = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 5
  %261 = ptrtoint ptr %irqctl to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %260, ptr %irqctl, align 4
  %irqresponse = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 4
  %262 = ptrtoint ptr %irqresponse to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 1, ptr %irqresponse, align 4
  br label %cleanup374

sw.bb293:                                         ; preds = %if.end200
  %irqc = getelementptr inbounds %struct.pp_struct, ptr %5, i32 0, i32 2
  %call.i.i810 = tail call zeroext i1 @__kasan_check_read(ptr noundef %irqc, i32 noundef 4) #13
  %263 = ptrtoint ptr %irqc to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile i32, ptr %irqc, align 4
  %265 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %ret, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i815 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i815, label %sw.bb293.cleanup374_crit_edge, label %if.end.i.i818

sw.bb293.cleanup374_crit_edge:                    ; preds = %sw.bb293
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end.i.i818:                                    ; preds = %sw.bb293
  %266 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i816 = extractvalue { i32, i32 } %266, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i816)
  %cmp.i6.i817 = icmp eq i32 %asmresult.i.i816, 0
  br i1 %cmp.i6.i817, label %copy_to_user.exit823, label %if.end.i.i818.cleanup374_crit_edge

if.end.i.i818.cleanup374_crit_edge:               ; preds = %if.end.i.i818
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

copy_to_user.exit823:                             ; preds = %if.end.i.i818
  %call.i.i.i819 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ret, i32 noundef 4) #13
  %call.i12.i.i820 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %ret, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i820)
  %tobool296.not = icmp eq i32 %call.i12.i.i820, 0
  br i1 %tobool296.not, label %if.end298, label %copy_to_user.exit823.cleanup374_crit_edge

copy_to_user.exit823.cleanup374_crit_edge:        ; preds = %copy_to_user.exit823
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end298:                                        ; preds = %copy_to_user.exit823
  call void @__sanitizer_cov_trace_pc() #15
  %267 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %ret, align 4
  %call.i.i824 = call zeroext i1 @__kasan_check_write(ptr noundef %irqc, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %irqc, i32 1, i32 3, i32 1) #13
  %269 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irqc, ptr %irqc, i32 %268, ptr elementtype(i32) %irqc) #13, !srcloc !120
  br label %cleanup374

if.end59.i.i828:                                  ; preds = %if.end200
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i829 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i829, label %if.end59.i.i828.if.then11.i.i845_crit_edge, label %land.lhs.true.i.i832

if.end59.i.i828.if.then11.i.i845_crit_edge:       ; preds = %if.end59.i.i828
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i845

land.lhs.true.i.i832:                             ; preds = %if.end59.i.i828
  %270 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i830 = extractvalue { i32, i32 } %270, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i830)
  %cmp.i6.i831 = icmp eq i32 %asmresult.i.i830, 0
  br i1 %cmp.i6.i831, label %if.end.i.i842, label %land.lhs.true.i.i832.if.then11.i.i845_crit_edge, !prof !113

land.lhs.true.i.i832.if.then11.i.i845_crit_edge:  ; preds = %land.lhs.true.i.i832
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i845

if.end.i.i842:                                    ; preds = %land.lhs.true.i.i832
  %call.i.i.i833 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %time32, i32 noundef 8) #13
  %271 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i834 = and i32 %271, -16384
  %272 = inttoptr i32 %and.i.i.i.i.i.i834 to ptr
  %cpu_domain.i.i.i.i.i835 = getelementptr inbounds %struct.thread_info, ptr %272, i32 0, i32 4
  %273 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i835) #9, !srcloc !116
  %and.i.i.i.i836 = and i32 %273, -13
  %or.i.i.i.i837 = or i32 %and.i.i.i.i836, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i837) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i838 = call i32 @arm_copy_from_user(ptr noundef nonnull %time32, ptr noundef %6, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %273) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i838)
  %tobool4.not.i.i841 = icmp eq i32 %call1.i.i.i838, 0
  br i1 %tobool4.not.i.i841, label %if.end304, label %if.end.i.i842.if.then11.i.i845_crit_edge, !prof !113

if.end.i.i842.if.then11.i.i845_crit_edge:         ; preds = %if.end.i.i842
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i845

if.then11.i.i845:                                 ; preds = %if.end.i.i842.if.then11.i.i845_crit_edge, %land.lhs.true.i.i832.if.then11.i.i845_crit_edge, %if.end59.i.i828.if.then11.i.i845_crit_edge
  %res.0.i.i840999 = phi i32 [ %call1.i.i.i838, %if.end.i.i842.if.then11.i.i845_crit_edge ], [ 8, %if.end59.i.i828.if.then11.i.i845_crit_edge ], [ 8, %land.lhs.true.i.i832.if.then11.i.i845_crit_edge ]
  %sub.i.i843 = sub i32 8, %res.0.i.i840999
  %add.ptr.i.i844 = getelementptr i8, ptr %time32, i32 %sub.i.i843
  %274 = call ptr @memset(ptr %add.ptr.i.i844, i32 0, i32 %res.0.i.i840999)
  br label %cleanup374

if.end304:                                        ; preds = %if.end.i.i842
  %275 = ptrtoint ptr %time32 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %time32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %cmp305 = icmp slt i32 %276, 0
  br i1 %cmp305, label %if.end304.cleanup374_crit_edge, label %lor.lhs.false

if.end304.cleanup374_crit_edge:                   ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

lor.lhs.false:                                    ; preds = %if.end304
  %277 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %cmp307 = icmp slt i32 %278, 0
  br i1 %cmp307, label %lor.lhs.false.cleanup374_crit_edge, label %if.end309

lor.lhs.false.cleanup374_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end309:                                        ; preds = %lor.lhs.false
  %279 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %5, align 4
  %281 = or i32 %278, %276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %281)
  %.not.i = icmp sgt i32 %281, -1
  br i1 %.not.i, label %if.else.i.i, label %if.end309.cleanup374_crit_edge

if.end309.cleanup374_crit_edge:                   ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.else.i.i:                                      ; preds = %if.end309
  %call3.i.i = call i32 @__usecs_to_jiffies(i32 noundef %278) #13
  %mul.i = mul i32 %276, 100
  %add.i = add i32 %call3.i.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp2.i = icmp slt i32 %add.i, 1
  br i1 %cmp2.i, label %if.else.i.i.cleanup374_crit_edge, label %if.end4.i

if.else.i.i.cleanup374_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end4.i:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %timeout.i = getelementptr inbounds %struct.pardevice, ptr %280, i32 0, i32 16
  %282 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store volatile i32 %add.i, ptr %timeout.i, align 4
  br label %cleanup374

if.end59.i.i851:                                  ; preds = %if.end200
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i852 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i852, label %if.end59.i.i851.if.then11.i.i868_crit_edge, label %land.lhs.true.i.i855

if.end59.i.i851.if.then11.i.i868_crit_edge:       ; preds = %if.end59.i.i851
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i868

land.lhs.true.i.i855:                             ; preds = %if.end59.i.i851
  %283 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1226833920) #19, !srcloc !115
  %asmresult.i.i853 = extractvalue { i32, i32 } %283, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i853)
  %cmp.i6.i854 = icmp eq i32 %asmresult.i.i853, 0
  br i1 %cmp.i6.i854, label %if.end.i.i865, label %land.lhs.true.i.i855.if.then11.i.i868_crit_edge, !prof !113

land.lhs.true.i.i855.if.then11.i.i868_crit_edge:  ; preds = %land.lhs.true.i.i855
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i868

if.end.i.i865:                                    ; preds = %land.lhs.true.i.i855
  %call.i.i.i856 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %time64, i32 noundef 16) #13
  %284 = call i32 @llvm.read_register.i32(metadata !102) #13
  %and.i.i.i.i.i.i857 = and i32 %284, -16384
  %285 = inttoptr i32 %and.i.i.i.i.i.i857 to ptr
  %cpu_domain.i.i.i.i.i858 = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 4
  %286 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i858) #9, !srcloc !116
  %and.i.i.i.i859 = and i32 %286, -13
  %or.i.i.i.i860 = or i32 %and.i.i.i.i859, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i860) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %call1.i.i.i861 = call i32 @arm_copy_from_user(ptr noundef nonnull %time64, ptr noundef %6, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %286) #13, !srcloc !117
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i861)
  %tobool4.not.i.i864 = icmp eq i32 %call1.i.i.i861, 0
  br i1 %tobool4.not.i.i864, label %if.end319, label %if.end.i.i865.if.then11.i.i868_crit_edge, !prof !113

if.end.i.i865.if.then11.i.i868_crit_edge:         ; preds = %if.end.i.i865
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i868

if.then11.i.i868:                                 ; preds = %if.end.i.i865.if.then11.i.i868_crit_edge, %land.lhs.true.i.i855.if.then11.i.i868_crit_edge, %if.end59.i.i851.if.then11.i.i868_crit_edge
  %res.0.i.i8631004 = phi i32 [ %call1.i.i.i861, %if.end.i.i865.if.then11.i.i868_crit_edge ], [ 16, %if.end59.i.i851.if.then11.i.i868_crit_edge ], [ 16, %land.lhs.true.i.i855.if.then11.i.i868_crit_edge ]
  %sub.i.i866 = sub i32 16, %res.0.i.i8631004
  %add.ptr.i.i867 = getelementptr i8, ptr %time64, i32 %sub.i.i866
  %287 = call ptr @memset(ptr %add.ptr.i.i867, i32 0, i32 %res.0.i.i8631004)
  br label %cleanup374

if.end319:                                        ; preds = %if.end.i.i865
  %288 = ptrtoint ptr %time64 to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %time64, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %289)
  %cmp321 = icmp slt i64 %289, 0
  br i1 %cmp321, label %if.end319.cleanup374_crit_edge, label %lor.lhs.false322

if.end319.cleanup374_crit_edge:                   ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

lor.lhs.false322:                                 ; preds = %if.end319
  %290 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %290)
  %291 = load i64, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %291)
  %cmp324 = icmp slt i64 %291, 0
  br i1 %cmp324, label %lor.lhs.false322.cleanup374_crit_edge, label %if.end326

lor.lhs.false322.cleanup374_crit_edge:            ; preds = %lor.lhs.false322
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end326:                                        ; preds = %lor.lhs.false322
  %292 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %5, align 4
  %294 = or i64 %291, %289
  %295 = and i64 %294, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %295)
  %.not.i909 = icmp eq i64 %295, 0
  br i1 %.not.i909, label %if.else.i.i918, label %if.end326.cleanup374_crit_edge

if.end326.cleanup374_crit_edge:                   ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.else.i.i918:                                   ; preds = %if.end326
  %conv330 = trunc i64 %291 to i32
  %conv = trunc i64 %289 to i32
  %call3.i.i917 = call i32 @__usecs_to_jiffies(i32 noundef %conv330) #13
  %mul.i920 = mul i32 %conv, 100
  %add.i921 = add i32 %call3.i.i917, %mul.i920
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i921)
  %cmp2.i922 = icmp slt i32 %add.i921, 1
  br i1 %cmp2.i922, label %if.else.i.i918.cleanup374_crit_edge, label %if.end4.i925

if.else.i.i918.cleanup374_crit_edge:              ; preds = %if.else.i.i918
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end4.i925:                                     ; preds = %if.else.i.i918
  call void @__sanitizer_cov_trace_pc() #15
  %timeout.i924 = getelementptr inbounds %struct.pardevice, ptr %293, i32 0, i32 16
  %296 = ptrtoint ptr %timeout.i924 to i32
  call void @__asan_store4_noabort(i32 %296)
  store volatile i32 %add.i921, ptr %timeout.i924, align 4
  br label %cleanup374

sw.bb332:                                         ; preds = %if.end200
  %timeout = getelementptr inbounds %struct.pardevice, ptr %144, i32 0, i32 16
  %297 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load volatile i32, ptr %timeout, align 4
  call void @jiffies_to_timespec64(i32 noundef %298, ptr noundef nonnull %ts) #13
  %299 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %299)
  %300 = load i64, ptr %ts, align 8
  %conv334 = trunc i64 %300 to i32
  %301 = ptrtoint ptr %time32 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %conv334, ptr %time32, align 4
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %302 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %303, 1000
  %304 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %div, ptr %11, align 4
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i875 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i875, label %sw.bb332.cleanup374_crit_edge, label %if.end.i.i878

sw.bb332.cleanup374_crit_edge:                    ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end.i.i878:                                    ; preds = %sw.bb332
  %305 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i876 = extractvalue { i32, i32 } %305, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i876)
  %cmp.i6.i877 = icmp eq i32 %asmresult.i.i876, 0
  br i1 %cmp.i6.i877, label %copy_to_user.exit883, label %if.end.i.i878.cleanup374_crit_edge

if.end.i.i878.cleanup374_crit_edge:               ; preds = %if.end.i.i878
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

copy_to_user.exit883:                             ; preds = %if.end.i.i878
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i879 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %time32, i32 noundef 8) #13
  %call.i12.i.i880 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %time32, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i880)
  %tobool339.not = icmp eq i32 %call.i12.i.i880, 0
  %spec.select1018 = select i1 %tobool339.not, i32 0, i32 -14
  br label %cleanup374

sw.bb342:                                         ; preds = %if.end200
  %timeout344 = getelementptr inbounds %struct.pardevice, ptr %144, i32 0, i32 16
  %306 = ptrtoint ptr %timeout344 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load volatile i32, ptr %timeout344, align 4
  call void @jiffies_to_timespec64(i32 noundef %307, ptr noundef nonnull %ts) #13
  %308 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %ts, align 8
  %310 = ptrtoint ptr %time64 to i32
  call void @__asan_store8_noabort(i32 %310)
  store i64 %309, ptr %time64, align 8
  %tv_nsec347 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %311 = ptrtoint ptr %tv_nsec347 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %tv_nsec347, align 8
  %div348 = sdiv i32 %312, 1000
  %conv349 = sext i32 %div348 to i64
  %313 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %313)
  store i64 %conv349, ptr %13, align 8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i888 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i888, label %sw.bb342.cleanup374_crit_edge, label %if.end.i.i891

sw.bb342.cleanup374_crit_edge:                    ; preds = %sw.bb342
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

if.end.i.i891:                                    ; preds = %sw.bb342
  %314 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1226833920) #19, !srcloc !114
  %asmresult.i.i889 = extractvalue { i32, i32 } %314, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i889)
  %cmp.i6.i890 = icmp eq i32 %asmresult.i.i889, 0
  br i1 %cmp.i6.i890, label %copy_to_user.exit896, label %if.end.i.i891.cleanup374_crit_edge

if.end.i.i891.cleanup374_crit_edge:               ; preds = %if.end.i.i891
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup374

copy_to_user.exit896:                             ; preds = %if.end.i.i891
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i892 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %time64, i32 noundef 16) #13
  %call.i12.i.i893 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %time64, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i893)
  %tobool353.not = icmp eq i32 %call.i12.i.i893, 0
  %spec.select1019 = select i1 %tobool353.not, i32 0, i32 -14
  br label %cleanup374

do.body356:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_do_ioctl.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_do_ioctl, %if.then368)) #13
          to label %cleanup374 [label %if.then368], !srcloc !112

if.then368:                                       ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #15
  %315 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %5, align 4
  %dev370 = getelementptr inbounds %struct.pardevice, ptr %316, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_do_ioctl.__UNIQUE_ID_ddebug239, ptr noundef %dev370, ptr noundef nonnull @.str.24, i32 noundef %cmd) #13
  br label %cleanup374

cleanup374:                                       ; preds = %if.then368, %do.body356, %copy_to_user.exit896, %if.end.i.i891.cleanup374_crit_edge, %sw.bb342.cleanup374_crit_edge, %copy_to_user.exit883, %if.end.i.i878.cleanup374_crit_edge, %sw.bb332.cleanup374_crit_edge, %if.end4.i925, %if.else.i.i918.cleanup374_crit_edge, %if.end326.cleanup374_crit_edge, %lor.lhs.false322.cleanup374_crit_edge, %if.end319.cleanup374_crit_edge, %if.then11.i.i868, %if.end4.i, %if.else.i.i.cleanup374_crit_edge, %if.end309.cleanup374_crit_edge, %lor.lhs.false.cleanup374_crit_edge, %if.end304.cleanup374_crit_edge, %if.then11.i.i845, %if.end298, %copy_to_user.exit823.cleanup374_crit_edge, %if.end.i.i818.cleanup374_crit_edge, %sw.bb293.cleanup374_crit_edge, %if.end292, %if.then11.i.i807, %sw.epilog287, %if.then11.i.i784, %if.else276, %if.then274, %if.then11.i.i761, %if.end265, %if.then11.i.i738, %if.then11.i.i715, %if.end255, %if.then11.i.i692, %if.end249, %if.then11.i.i669, %sw.bb226, %sw.bb223, %copy_to_user.exit648, %if.end.i.i643.cleanup374_crit_edge, %sw.bb216.cleanup374_crit_edge, %copy_to_user.exit635, %if.end.i.i630.cleanup374_crit_edge, %sw.bb209.cleanup374_crit_edge, %copy_to_user.exit622, %if.end.i.i617.cleanup374_crit_edge, %sw.bb203.cleanup374_crit_edge, %if.then196, %do.body184, %copy_to_user.exit606.thread, %cleanup170, %cleanup159, %copy_to_user.exit557.thread, %cleanup129, %copy_to_user.exit.thread, %cleanup93, %if.end64, %do.end58, %if.end19, %if.end15.cleanup374_crit_edge, %if.then10.cleanup374_crit_edge, %if.then6, %do.body
  %retval.8 = phi i32 [ 0, %if.end298 ], [ 0, %if.end292 ], [ %253, %sw.epilog287 ], [ 0, %if.end265 ], [ 0, %if.end255 ], [ 0, %if.end249 ], [ 0, %sw.bb226 ], [ 0, %sw.bb223 ], [ %140, %copy_to_user.exit606.thread ], [ %retval.6, %cleanup170 ], [ %retval.5, %cleanup159 ], [ %121, %copy_to_user.exit557.thread ], [ %retval.3, %cleanup129 ], [ %95, %copy_to_user.exit.thread ], [ %retval.1, %cleanup93 ], [ 0, %if.end64 ], [ 0, %if.end19 ], [ %call11, %if.then10.cleanup374_crit_edge ], [ -22, %if.then6 ], [ %call17, %if.end15.cleanup374_crit_edge ], [ %., %do.end58 ], [ -22, %if.then196 ], [ 0, %if.else276 ], [ 0, %if.then274 ], [ -14, %copy_to_user.exit823.cleanup374_crit_edge ], [ -22, %lor.lhs.false.cleanup374_crit_edge ], [ -22, %if.end304.cleanup374_crit_edge ], [ -22, %lor.lhs.false322.cleanup374_crit_edge ], [ -22, %if.end319.cleanup374_crit_edge ], [ -22, %if.then368 ], [ -22, %do.body ], [ -22, %do.body184 ], [ 0, %if.end4.i ], [ -22, %if.end309.cleanup374_crit_edge ], [ -22, %if.else.i.i.cleanup374_crit_edge ], [ 0, %if.end4.i925 ], [ -22, %if.end326.cleanup374_crit_edge ], [ -22, %if.else.i.i918.cleanup374_crit_edge ], [ -22, %do.body356 ], [ -14, %sw.bb203.cleanup374_crit_edge ], [ -14, %if.end.i.i617.cleanup374_crit_edge ], [ -14, %sw.bb209.cleanup374_crit_edge ], [ -14, %if.end.i.i630.cleanup374_crit_edge ], [ -14, %sw.bb216.cleanup374_crit_edge ], [ -14, %if.end.i.i643.cleanup374_crit_edge ], [ -14, %if.then11.i.i669 ], [ -14, %if.then11.i.i692 ], [ -14, %if.then11.i.i715 ], [ -14, %if.then11.i.i738 ], [ -14, %if.then11.i.i761 ], [ -14, %if.then11.i.i784 ], [ -14, %if.then11.i.i807 ], [ -14, %sw.bb293.cleanup374_crit_edge ], [ -14, %if.end.i.i818.cleanup374_crit_edge ], [ -14, %if.then11.i.i845 ], [ -14, %if.then11.i.i868 ], [ -14, %sw.bb332.cleanup374_crit_edge ], [ -14, %if.end.i.i878.cleanup374_crit_edge ], [ -14, %sw.bb342.cleanup374_crit_edge ], [ -14, %if.end.i.i891.cleanup374_crit_edge ], [ %spec.select1015, %copy_to_user.exit622 ], [ %spec.select1016, %copy_to_user.exit635 ], [ %spec.select1017, %copy_to_user.exit648 ], [ %spec.select1018, %copy_to_user.exit883 ], [ %spec.select1019, %copy_to_user.exit896 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %time64) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time32) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mask) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #13
  ret i32 %retval.8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_device(i32 noundef %minor, ptr noundef %pp) unnamed_addr #2 align 64 {
entry:
  %ppdev_cb = alloca %struct.pardev_cb, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ppdev_cb) #13
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %ppdev_cb, i32 0, i32 2
  %1 = getelementptr inbounds %struct.pardev_cb, ptr %ppdev_cb, i32 0, i32 3
  %2 = getelementptr inbounds %struct.pardev_cb, ptr %ppdev_cb, i32 0, i32 4
  %3 = call ptr @memset(ptr %ppdev_cb, i32 255, i32 20)
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.25, i32 noundef %minor) #13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @parport_find_number(i32 noundef %minor) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull %call) #16
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida_index, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #13
  %4 = ptrtoint ptr %ppdev_cb to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %ppdev_cb, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pp_irq, ptr %1, align 4
  %flags = getelementptr inbounds %struct.pp_struct, ptr %pp, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %2, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pp, ptr %0, align 8
  %call8 = call ptr @parport_register_dev_model(ptr noundef nonnull %call1, ptr noundef nonnull %call, ptr noundef nonnull %ppdev_cb, i32 noundef %call5) #13
  call void @parport_put_port(ptr noundef nonnull %call1) #13
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull %call) #16
  call void @ida_free(ptr noundef nonnull @ida_index, i32 noundef %call5) #13
  br label %err

if.end16:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %pp, align 4
  %index18 = getelementptr inbounds %struct.pp_struct, ptr %pp, i32 0, i32 9
  %11 = ptrtoint ptr %index18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call5, ptr %index18, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_device.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@register_device, %if.then25)) #13
          to label %err [label %if.then25], !srcloc !112

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.pardevice, ptr %call8, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @register_device.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.31) #13
  br label %err

err:                                              ; preds = %if.then25, %if.end16, %do.end13, %do.end
  %rc.0 = phi i32 [ 0, %if.then25 ], [ -6, %do.end13 ], [ -6, %do.end ], [ 0, %if.end16 ]
  call void @kfree(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ppdev_cb) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim_or_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_find_number(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_put_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parport_yield_blocking(ptr noundef %dev) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %port = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  %waithead = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %waithead to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %waithead, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %time = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %time, align 4
  %sub = sub i32 %0, %6
  %timeslice = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 15
  %7 = ptrtoint ptr %timeslice to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeslice, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %8)
  %cmp1 = icmp ult i32 %sub, %8
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @parport_release(ptr noundef %dev) #13
  %call = tail call i32 @parport_claim_or_block(ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_negotiate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jiffies_to_timespec64(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_irq(ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irqresponse = getelementptr inbounds %struct.pp_struct, ptr %private, i32 0, i32 4
  %0 = ptrtoint ptr %irqresponse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irqresponse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_control, align 4
  %irqctl = getelementptr inbounds %struct.pp_struct, ptr %private, i32 0, i32 5
  %10 = ptrtoint ptr %irqctl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %irqctl, align 4
  tail call void %9(ptr noundef %5, i8 noundef zeroext %11) #13
  %12 = ptrtoint ptr %irqresponse to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %irqresponse, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irqc = getelementptr inbounds %struct.pp_struct, ptr %private, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irqc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %irqc, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irqc, ptr %irqc, i32 1, ptr elementtype(i32) %irqc) #13, !srcloc !121
  %irq_wait = getelementptr inbounds %struct.pp_struct, ptr %private, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %irq_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101}
!llvm.named.register.sp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/ppdev.c", i32 871, i32 30}
!2 = !{ptr @__initcall__kmod_ppdev__243_874_ppdev_init6, !3, !"__initcall__kmod_ppdev__243_874_ppdev_init6", i1 false, i1 false}
!3 = !{!"../drivers/char/ppdev.c", i32 874, i32 1}
!4 = !{ptr @__exitcall_ppdev_cleanup, !5, !"__exitcall_ppdev_cleanup", i1 false, i1 false}
!5 = !{!"../drivers/char/ppdev.c", i32 875, i32 1}
!6 = !{ptr @__UNIQUE_ID_file244, !7, !"__UNIQUE_ID_file244", i1 false, i1 false}
!7 = !{!"../drivers/char/ppdev.c", i32 877, i32 1}
!8 = !{ptr @__UNIQUE_ID_license245, !7, !"__UNIQUE_ID_license245", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias246, !10, !"__UNIQUE_ID_alias246", i1 false, i1 false}
!10 = !{!"../drivers/char/ppdev.c", i32 878, i32 1}
!11 = !{ptr @ppdev_class, !12, !"ppdev_class", i1 false, i1 false}
!12 = !{!"../drivers/char/ppdev.c", i32 776, i32 22}
!13 = !{ptr @pp_driver, !14, !"pp_driver", i1 false, i1 false}
!14 = !{!"../drivers/char/ppdev.c", i32 828, i32 30}
!15 = !{ptr @devices, !16, !"devices", i1 false, i1 false}
!16 = !{!"../drivers/char/ppdev.c", i32 87, i32 23}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/char/ppdev.c", i32 799, i32 8}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/char/ppdev.c", i32 801, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pp_attach._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @pp_attach._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/char/ppdev.c", i32 841, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ppdev_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ppdev_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ppdev_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/char/ppdev.c", i32 844, i32 16}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/ppdev.c", i32 851, i32 3}
!34 = !{ptr @ppdev_init._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ppdev_init._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/ppdev.c", i32 855, i32 2}
!38 = !{ptr @ppdev_init._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ppdev_init._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @pp_fops, !41, !"pp_fops", i1 false, i1 false}
!41 = !{!"../drivers/char/ppdev.c", i32 778, i32 37}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/char/ppdev.c", i32 127, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pp_read.__UNIQUE_ID_ddebug225, !43, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/char/ppdev.c", i32 206, i32 3}
!55 = !{ptr @pp_write.__UNIQUE_ID_ddebug230, !54, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/char/ppdev.c", i32 100, i32 8}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pp_do_mutex, !57, !"pp_do_mutex", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/char/ppdev.c", i32 372, i32 4}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pp_do_ioctl.__UNIQUE_ID_ddebug236, !61, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/char/ppdev.c", i32 407, i32 4}
!66 = !{ptr @pp_do_ioctl.__UNIQUE_ID_ddebug237, !65, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!67 = !{ptr @pp_do_ioctl.__UNIQUE_ID_ddebug238, !68, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!68 = !{!"../drivers/char/ppdev.c", i32 515, i32 3}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/char/ppdev.c", i32 659, i32 3}
!71 = !{ptr @pp_do_ioctl.__UNIQUE_ID_ddebug239, !70, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/char/ppdev.c", i32 291, i32 31}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/char/ppdev.c", i32 297, i32 3}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @register_device._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @register_device._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/char/ppdev.c", i32 311, i32 3}
!81 = !{ptr @register_device._entry.28, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @register_device._entry_ptr.30, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/char/ppdev.c", i32 319, i32 2}
!85 = !{ptr @register_device.__UNIQUE_ID_ddebug235, !84, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/char/ppdev.c", i32 89, i32 8}
!88 = !{ptr @ida_index, !87, !"ida_index", i1 false, i1 false}
!89 = !{ptr @pp_open.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/char/ppdev.c", i32 694, i32 2}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/char/ppdev.c", i32 732, i32 3}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @pp_release.__UNIQUE_ID_ddebug240, !93, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/char/ppdev.c", i32 746, i32 4}
!98 = !{ptr @pp_release.__UNIQUE_ID_ddebug241, !97, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/char/ppdev.c", i32 755, i32 3}
!101 = !{ptr @pp_release.__UNIQUE_ID_ddebug242, !100, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!102 = !{!"sp"}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148972164, i64 2148972169, i64 2148972182, i64 2148972226, i64 2148972260, i64 2148972281}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2152135336, i64 2152135361}
!115 = !{i64 2152134655, i64 2152134680}
!116 = !{i64 4626149}
!117 = !{i64 4626346}
!118 = !{i64 2152111579}
!119 = !{!"auto-init"}
!120 = !{i64 2148361252, i64 2148361278, i64 2148361307, i64 2148361341, i64 2148361372, i64 2148361395}
!121 = !{i64 2148358787, i64 2148358813, i64 2148358842, i64 2148358876, i64 2148358907, i64 2148358930}
