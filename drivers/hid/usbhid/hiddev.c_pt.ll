; ModuleID = '/llk/IR_all_yes/drivers/hid/usbhid/hiddev.c_pt.bc'
source_filename = "../drivers/hid/usbhid/hiddev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hiddev_hid_event\22, \22a\22\09"
module asm "\09.weak\09__crc_hiddev_hid_event\09\09\09\09"
module asm "\09.long\09__crc_hiddev_hid_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hiddev_hid_event:\09\09\09\09\09"
module asm "\09.asciz \09\22hiddev_hid_event\22\09\09\09\09\09"
module asm "__kstrtabns_hiddev_hid_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hiddev_usage_ref = type { i32, i32, i32, i32, i32, i32 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hiddev = type { i32, i32, i32, %struct.mutex, %struct.wait_queue_head, ptr, %struct.list_head, %struct.spinlock, i8 }
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.usbhid_device = type { ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, [256 x %struct.hid_control_fifo], i8, i8, ptr, i32, i32, ptr, [256 x %struct.hid_output_fifo], i8, i8, ptr, i32, i32, %struct.mutex, %struct.spinlock, i32, %struct.timer_list, i32, i32, %struct.work_struct, %struct.wait_queue_head }
%struct.hid_control_fifo = type { i8, ptr, ptr }
%struct.hid_output_fifo = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hiddev_event = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.hiddev_list = type { [2048 x %struct.hiddev_usage_ref], i32, i32, i32, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hiddev_collection_info = type { i32, i32, i32, i32 }
%struct.hiddev_report_info = type { i32, i32, i32 }
%struct.hiddev_field_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hiddev_devinfo = type { i32, i32, i32, i32, i16, i16, i16, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.63 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.67 = type { ptr }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hiddev_usage_ref_multi = type { %struct.hiddev_usage_ref, i32, [1024 x i32] }

@__kstrtab_hiddev_hid_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_hiddev_hid_event = external dso_local constant [0 x i8], align 1
@__ksymtab_hiddev_hid_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hiddev_hid_event to i32), ptr @__kstrtab_hiddev_hid_event, ptr @__kstrtabns_hiddev_hid_event }, section "___ksymtab_gpl+hiddev_hid_event", align 4
@hiddev_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hiddev->wait\00", [18 x i8] zeroinitializer }, align 32
@hiddev_connect.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&hiddev->list_lock\00", [45 x i8] zeroinitializer }, align 32
@hiddev_connect.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&hiddev->existancelock\00", [41 x i8] zeroinitializer }, align 32
@hiddev_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.10, ptr @hiddev_devnode, ptr @hiddev_fops, i32 0 }, [16 x i8] zeroinitializer }, align 32
@hiddev_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 905, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Not able to get a minor for this device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hiddev_connect\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/hid/usbhid/hiddev.c\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hiddev_connect._entry_ptr = internal global ptr @hiddev_connect._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hiddev%d\00", [23 x i8] zeroinitializer }, align 32
@hiddev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @hiddev_read, ptr @hiddev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hiddev_poll, ptr @hiddev_ioctl, ptr null, ptr null, i32 0, ptr @hiddev_open, ptr null, ptr @hiddev_release, ptr null, ptr @hiddev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb/%s\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__hiddev_open.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&list->thread_lock\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 65548, i64 65664, i64 786433]
@__sancov_gen_cov_switch_values.18 = internal global [20 x i64] [i64 18, i64 32, i64 18434, i64 18437, i64 1074022415, i64 1074546695, i64 1074546696, i64 1075333132, i64 1075333136, i64 1344030740, i64 2147764225, i64 2147764238, i64 2149337091, i64 2164541444, i64 3222030345, i64 3222292497, i64 3222816779, i64 3222816781, i64 3224913930, i64 3491514387]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 18]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 512]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1344030740, i64 3491514387]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 3222816779, i64 3222816781, i64 3491514387]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 512]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 512]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 1075333132, i64 1075333136, i64 1344030740, i64 3222816779, i64 3491514387]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 1344030740, i64 3222816779, i64 3491514387]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 896, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 898, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 899, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"hiddev_class\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 865, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 905, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 866, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"hiddev_fops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 847, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 862, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 230, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 214, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 174, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [31 x i8] c"../drivers/hid/usbhid/hiddev.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 255, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_hiddev_hid_event, ptr @hiddev_connect._entry, ptr @hiddev_connect._entry_ptr, ptr @hiddev_connect.__key, ptr @.str, ptr @hiddev_connect.__key.1, ptr @.str.2, ptr @hiddev_connect.__key.3, ptr @.str.4, ptr @hiddev_class, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @hiddev_fops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiddev_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiddev_connect.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiddev_connect.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiddev_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiddev_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiddev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hiddev_hid_event(ptr nocapture noundef readonly %hid, ptr nocapture noundef readonly %field, ptr noundef %usage, i32 noundef %value) #0 align 64 {
entry:
  %uref = alloca %struct.hiddev_usage_ref, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %report_type = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 9
  %0 = ptrtoint ptr %report_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %report_type, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uref) #12
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %cond.false3 [
    i32 0, label %entry.cond.end6_crit_edge
    i32 1, label %cond.end6.fold.split
  ]

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end6

cond.false3:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp4 = icmp eq i32 %1, 2
  %cond = select i1 %cmp4, i32 3, i32 0
  br label %cond.end6

cond.end6.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end6

cond.end6:                                        ; preds = %cond.end6.fold.split, %cond.false3, %entry.cond.end6_crit_edge
  %cond7 = phi i32 [ 1, %entry.cond.end6_crit_edge ], [ %cond, %cond.false3 ], [ 2, %cond.end6.fold.split ]
  %3 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %uref, i32 0, i32 5
  %4 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %uref, i32 0, i32 4
  %5 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %uref, i32 0, i32 3
  %6 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %uref, i32 0, i32 2
  %7 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %uref, i32 0, i32 1
  %8 = ptrtoint ptr %uref to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond7, ptr %uref, align 4
  %report = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %9 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %report, align 4
  %id = getelementptr inbounds %struct.hid_report, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %7, align 4
  %index = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 18
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %6, align 4
  %usage9 = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 3
  %17 = ptrtoint ptr %usage9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usage9, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %usage to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.ptr.div, ptr %5, align 4
  %20 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usage, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %4, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %value, ptr %3, align 4
  call fastcc void @hiddev_send_event(ptr noundef %hid, ptr noundef nonnull %uref)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uref) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hiddev_send_event(ptr nocapture noundef readonly %hid, ptr nocapture noundef readonly %uref) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hiddev1 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 37
  %0 = ptrtoint ptr %hiddev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hiddev1, align 8
  %list_lock = getelementptr inbounds %struct.hiddev, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #12
  %list6 = getelementptr inbounds %struct.hiddev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %list6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn37 = load ptr, ptr %list6, align 4
  %cmp9.not39 = icmp eq ptr %.pn37, %list6
  br i1 %cmp9.not39, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %field_index = getelementptr inbounds %struct.hiddev_usage_ref, ptr %uref, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn40 = phi ptr [ %.pn37, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %list.041 = getelementptr i8, ptr %.pn40, i32 -49172
  %3 = ptrtoint ptr %field_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %field_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp11.not = icmp eq i32 %4, -1
  br i1 %cmp11.not, label %lor.lhs.false, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %flags13 = getelementptr i8, ptr %.pn40, i32 -12
  %5 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags13, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14.not = icmp eq i32 %and, 0
  br i1 %cmp14.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %head = getelementptr i8, ptr %.pn40, i32 -20
  %7 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %head, align 4
  %arrayidx = getelementptr [2048 x %struct.hiddev_usage_ref], ptr %list.041, i32 0, i32 %8
  %9 = call ptr @memcpy(ptr %arrayidx, ptr %uref, i32 24)
  %10 = load i32, ptr %head, align 4
  %add = add i32 %10, 1
  %and17 = and i32 %add, 2047
  store i32 %and17, ptr %head, align 4
  %fasync = getelementptr i8, ptr %.pn40, i32 -8
  tail call void @kill_fasync(ptr noundef %fasync, i32 noundef 29, i32 noundef 1) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %lor.lhs.false.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp9.not = icmp eq ptr %.pn, %list6
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call3) #12
  %wait = getelementptr inbounds %struct.hiddev, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hiddev_report_event(ptr nocapture noundef readonly %hid, ptr nocapture noundef readonly %report) local_unnamed_addr #0 align 64 {
entry:
  %uref = alloca %struct.hiddev_usage_ref, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 3
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uref) #12
  %2 = getelementptr inbounds i8, ptr %uref, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 12)
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %1, label %cond.false4 [
    i32 0, label %entry.cond.end7_crit_edge
    i32 1, label %cond.end7.fold.split
  ]

entry.cond.end7_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end7

cond.false4:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp5 = icmp eq i32 %1, 2
  %cond = select i1 %cmp5, i32 3, i32 0
  br label %cond.end7

cond.end7.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end7

cond.end7:                                        ; preds = %cond.end7.fold.split, %cond.false4, %entry.cond.end7_crit_edge
  %cond8 = phi i32 [ 1, %entry.cond.end7_crit_edge ], [ %cond, %cond.false4 ], [ 2, %cond.end7.fold.split ]
  %5 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %uref, i32 0, i32 2
  %6 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %uref, i32 0, i32 1
  %7 = ptrtoint ptr %uref to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond8, ptr %uref, align 4
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %6, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %5, align 4
  call fastcc void @hiddev_send_event(ptr noundef %hid, ptr noundef nonnull %uref)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uref) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hiddev_connect(ptr noundef %hid, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool.not = icmp eq i32 %force, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

for.cond.preheader:                               ; preds = %entry
  %maxcollection = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 6
  %2 = ptrtoint ptr %maxcollection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxcollection, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp107.not = icmp eq i32 %3, 0
  br i1 %cmp107.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %collection = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 4
  %4 = ptrtoint ptr %collection to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %collection, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %type = getelementptr %struct.hid_collection, ptr %5, i32 %i.0108, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %usage = getelementptr %struct.hid_collection, ptr %5, i32 %i.0108, i32 2
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usage, align 4
  %10 = add i32 %9, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %10)
  %11 = icmp ult i32 %10, 9
  %12 = add i32 %9, -851970
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %13 = icmp ult i32 %12, 5
  %or.cond = or i1 %11, %13
  br i1 %or.cond, label %land.lhs.true.for.inc_crit_edge, label %lor.lhs.false20

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false20:                                  ; preds = %land.lhs.true
  %14 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %9, label %lor.lhs.false20.for.end_crit_edge [
    i32 65664, label %lor.lhs.false20.for.inc_crit_edge
    i32 786433, label %lor.lhs.false20.for.inc_crit_edge119
    i32 65548, label %lor.lhs.false20.for.inc_crit_edge120
  ]

lor.lhs.false20.for.inc_crit_edge120:             ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false20.for.inc_crit_edge119:             ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false20.for.inc_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false20.for.end_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false20.for.inc_crit_edge, %lor.lhs.false20.for.inc_crit_edge119, %lor.lhs.false20.for.inc_crit_edge120, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup64_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup64_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

for.end:                                          ; preds = %lor.lhs.false20.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0108, %lor.lhs.false20.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %3)
  %cmp37 = icmp eq i32 %i.0.lcssa, %3
  br i1 %cmp37, label %for.end.cleanup64_crit_edge, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

for.end.cleanup64_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

if.end40:                                         ; preds = %for.end.if.end40_crit_edge, %entry.if.end40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 216) #15
  %tobool41.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool41.not, label %if.end40.cleanup64_crit_edge, label %do.body

if.end40.cleanup64_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

do.body:                                          ; preds = %if.end40
  %wait = getelementptr inbounds %struct.hiddev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str, ptr noundef nonnull @hiddev_connect.__key) #12
  %list = getelementptr inbounds %struct.hiddev, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.hiddev, ptr %call7.i.i, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i, align 4
  %list_lock = getelementptr inbounds %struct.hiddev, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hiddev_connect.__key.1, i16 noundef signext 3) #12
  %existancelock = getelementptr inbounds %struct.hiddev, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %existancelock, ptr noundef nonnull @.str.4, ptr noundef nonnull @hiddev_connect.__key.3) #12
  %hiddev51 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 37
  %18 = ptrtoint ptr %hiddev51 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %hiddev51, align 8
  %hid52 = getelementptr inbounds %struct.hiddev, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %hid52 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hid, ptr %hid52, align 4
  %exist = getelementptr inbounds %struct.hiddev, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %exist to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %exist, align 4
  %intf = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intf, align 4
  %call53 = tail call i32 @usb_register_dev(ptr noundef %22, ptr noundef nonnull @hiddev_class) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end60, label %do.end58

do.end58:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #16
  %23 = ptrtoint ptr %hiddev51 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %hiddev51, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup64

if.end60:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %24 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks, align 8
  %initialized = getelementptr inbounds %struct.hiddev, ptr %call7.i.i, i32 0, i32 8
  %and = lshr i32 %25, 29
  %26 = trunc i32 %and to i8
  %27 = and i8 %26, 1
  %28 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %initialized, align 4
  %29 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %intf, align 4
  %minor = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %minor, align 8
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %call7.i.i, align 8
  br label %cleanup64

cleanup64:                                        ; preds = %if.end60, %do.end58, %if.end40.cleanup64_crit_edge, %for.end.cleanup64_crit_edge, %for.inc.cleanup64_crit_edge
  %retval.1 = phi i32 [ %call53, %do.end58 ], [ 0, %if.end60 ], [ -22, %for.end.cleanup64_crit_edge ], [ -12, %if.end40.cleanup64_crit_edge ], [ -22, %for.inc.cleanup64_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hiddev_disconnect(ptr nocapture noundef readonly %hid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hiddev1 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 37
  %0 = ptrtoint ptr %hiddev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hiddev1, align 8
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 8
  %intf = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  tail call void @usb_deregister_dev(ptr noundef %5, ptr noundef nonnull @hiddev_class) #12
  %existancelock = getelementptr inbounds %struct.hiddev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %existancelock, i32 noundef 0) #12
  %exist = getelementptr inbounds %struct.hiddev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %exist to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %exist, align 4
  %open = getelementptr inbounds %struct.hiddev, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hid2 = getelementptr inbounds %struct.hiddev, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %hid2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hid2, align 4
  tail call void @hid_hw_close(ptr noundef %10) #12
  %wait = getelementptr inbounds %struct.hiddev, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void @mutex_unlock(ptr noundef %existancelock) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %existancelock) #12
  tail call void @kfree(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @hiddev_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i) #12
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiddev_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %event = alloca %struct.hiddev_event, align 4
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !39) #12
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
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  %flags5 = getelementptr inbounds %struct.hiddev_list, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags5, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %cond = select i1 %cmp.not, i32 8, i32 24
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %count)
  %cmp6 = icmp ugt i32 %cond, %count
  br i1 %cmp6, label %entry.cleanup170_crit_edge, label %if.end

entry.cleanup170_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup170

if.end:                                           ; preds = %entry
  %thread_lock = getelementptr inbounds %struct.hiddev_list, ptr %14, i32 0, i32 7
  %call7 = call i32 @mutex_lock_interruptible_nested(ptr noundef %thread_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.end.cleanup170_crit_edge

if.end.cleanup170_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup170

while.cond.preheader:                             ; preds = %if.end
  %head = getelementptr inbounds %struct.hiddev_list, ptr %14, i32 0, i32 1
  %tail = getelementptr inbounds %struct.hiddev_list, ptr %14, i32 0, i32 2
  %hiddev = getelementptr inbounds %struct.hiddev_list, ptr %14, i32 0, i32 5
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %17 = getelementptr inbounds %struct.hiddev_event, ptr %event, i32 0, i32 1
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end162.while.cond.loopexit_crit_edge, %while.cond112.preheader.while.cond.loopexit_crit_edge
  %retval4.3.lcssa = phi i32 [ 0, %while.cond112.preheader.while.cond.loopexit_crit_edge ], [ %retval4.5, %if.end162.while.cond.loopexit_crit_edge ]
  %cmp10 = icmp eq i32 %retval4.3.lcssa, 0
  br i1 %cmp10, label %while.cond.loopexit.while.body_crit_edge, label %while.end168

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.cond.preheader
  %18 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head, align 4
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp11 = icmp eq i32 %19, %21
  br i1 %cmp11, label %if.then12, label %while.body.while.cond112.preheader_crit_edge

while.body.while.cond112.preheader_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond112.preheader

if.then12:                                        ; preds = %while.body
  %22 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hiddev, align 4
  %wait13 = getelementptr inbounds %struct.hiddev, ptr %23, i32 0, i32 4
  call void @prepare_to_wait(ptr noundef %wait13, ptr noundef nonnull %wait, i32 noundef 1) #12
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head, align 4
  %26 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp17256 = icmp eq i32 %25, %27
  br i1 %cmp17256, label %if.then12.while.body18_crit_edge, label %if.then12.if.end107_crit_edge

if.then12.if.end107_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then12.while.body18_crit_edge:                 ; preds = %if.then12
  br label %while.body18

while.body18:                                     ; preds = %__here.while.body18_crit_edge, %if.then12.while.body18_crit_edge
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stack.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body18.if.end107_crit_edge, !prof !49

while.body18.if.end107_crit_edge:                 ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

signal_pending.exit:                              ; preds = %while.body18
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %31, align 4
  %and1.i.i.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool22.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool22.not, label %if.end24, label %signal_pending.exit.if.end107_crit_edge

signal_pending.exit.if.end107_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.end24:                                         ; preds = %signal_pending.exit
  %37 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hiddev, align 4
  %exist = getelementptr inbounds %struct.hiddev, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool26.not = icmp eq i32 %40, 0
  br i1 %tobool26.not, label %if.end24.if.end107_crit_edge, label %if.end28

if.end24.if.end107_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.end28:                                         ; preds = %if.end24
  %41 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %f_flags, align 4
  %and29 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.if.end107_crit_edge

if.end28.if.end107_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.end32:                                         ; preds = %if.end28
  call void @mutex_unlock(ptr noundef %thread_lock) #12
  call void @schedule() #12
  %call35 = call i32 @mutex_lock_interruptible_nested(ptr noundef %thread_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %__here, label %if.then37

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hiddev, align 4
  %wait39 = getelementptr inbounds %struct.hiddev, ptr %44, i32 0, i32 4
  call void @finish_wait(ptr noundef %wait39, ptr noundef nonnull %wait) #12
  br label %cleanup170

__here:                                           ; preds = %if.end32
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 212
  %47 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 ptrtoint (ptr blockaddress(@hiddev_read, %__here) to i32), ptr %task_state_change, align 4
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 1, ptr %48, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !50
  %50 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %head, align 4
  %52 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tail, align 4
  %cmp17 = icmp eq i32 %51, %53
  br i1 %cmp17, label %__here.while.body18_crit_edge, label %__here.if.end107_crit_edge

__here.if.end107_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

__here.while.body18_crit_edge:                    ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body18

if.end107:                                        ; preds = %__here.if.end107_crit_edge, %if.end28.if.end107_crit_edge, %if.end24.if.end107_crit_edge, %signal_pending.exit.if.end107_crit_edge, %while.body18.if.end107_crit_edge, %if.then12.if.end107_crit_edge
  %tobool108.not = phi i1 [ true, %if.then12.if.end107_crit_edge ], [ false, %while.body18.if.end107_crit_edge ], [ false, %if.end28.if.end107_crit_edge ], [ false, %if.end24.if.end107_crit_edge ], [ false, %signal_pending.exit.if.end107_crit_edge ], [ true, %__here.if.end107_crit_edge ]
  %retval4.1 = phi i32 [ 0, %if.then12.if.end107_crit_edge ], [ -512, %while.body18.if.end107_crit_edge ], [ -11, %if.end28.if.end107_crit_edge ], [ -5, %if.end24.if.end107_crit_edge ], [ -512, %signal_pending.exit.if.end107_crit_edge ], [ 0, %__here.if.end107_crit_edge ]
  %54 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hiddev, align 4
  %wait106 = getelementptr inbounds %struct.hiddev, ptr %55, i32 0, i32 4
  call void @finish_wait(ptr noundef %wait106, ptr noundef nonnull %wait) #12
  br i1 %tobool108.not, label %if.end107.while.cond112.preheader_crit_edge, label %if.then109

if.end107.while.cond112.preheader_crit_edge:      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond112.preheader

while.cond112.preheader:                          ; preds = %if.end107.while.cond112.preheader_crit_edge, %while.body.while.cond112.preheader_crit_edge
  %56 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %head, align 4
  %58 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp115.not261 = icmp eq i32 %57, %59
  br i1 %cmp115.not261, label %while.cond112.preheader.while.cond.loopexit_crit_edge, label %while.cond112.preheader.while.body119_crit_edge

while.cond112.preheader.while.body119_crit_edge:  ; preds = %while.cond112.preheader
  br label %while.body119

while.cond112.preheader.while.cond.loopexit_crit_edge: ; preds = %while.cond112.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %thread_lock) #12
  br label %cleanup170

while.body119:                                    ; preds = %if.end162.while.body119_crit_edge, %while.cond112.preheader.while.body119_crit_edge
  %60 = phi i32 [ %and165, %if.end162.while.body119_crit_edge ], [ %59, %while.cond112.preheader.while.body119_crit_edge ]
  %retval4.3264 = phi i32 [ %retval4.5, %if.end162.while.body119_crit_edge ], [ 0, %while.cond112.preheader.while.body119_crit_edge ]
  %61 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags5, align 4
  %and121 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %cmp122 = icmp eq i32 %and121, 0
  %field_index = getelementptr [2048 x %struct.hiddev_usage_ref], ptr %14, i32 0, i32 %60, i32 2
  %63 = ptrtoint ptr %field_index to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %field_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp126.not = icmp eq i32 %64, -1
  br i1 %cmp122, label %if.then123, label %if.else

if.then123:                                       ; preds = %while.body119
  br i1 %cmp126.not, label %if.then123.if.end162_crit_edge, label %if.then127

if.then123.if.end162_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

if.then127:                                       ; preds = %if.then123
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #12
  %usage_code = getelementptr [2048 x %struct.hiddev_usage_ref], ptr %14, i32 0, i32 %60, i32 4
  %65 = ptrtoint ptr %usage_code to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %usage_code, align 4
  %67 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %event, align 4
  %value = getelementptr [2048 x %struct.hiddev_usage_ref], ptr %14, i32 0, i32 %60, i32 5
  %68 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %value, align 4
  %70 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %17, align 4
  %add.ptr = getelementptr i8, ptr %buffer, i32 %retval4.3264
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then127.cleanup_crit_edge, label %if.end.i.i

if.then127.cleanup_crit_edge:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then127
  %71 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 8, i32 -1226833920) #17, !srcloc !51
  %asmresult.i.i = extractvalue { i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event, i32 noundef 8) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %event, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool136.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool136.not, label %cleanup.thread, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.thread:                                   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add140 = add i32 %retval4.3264, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #12
  br label %if.end162

cleanup:                                          ; preds = %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then127.cleanup_crit_edge
  call void @mutex_unlock(ptr noundef %thread_lock) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #12
  br label %cleanup170

if.else:                                          ; preds = %while.body119
  %and148 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %cmp149.not = icmp eq i32 %and148, 0
  %or.cond221 = select i1 %cmp126.not, i1 %cmp149.not, i1 false
  br i1 %or.cond221, label %if.else.if.end162_crit_edge, label %if.then150

if.else.if.end162_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

if.then150:                                       ; preds = %if.else
  %add.ptr151 = getelementptr i8, ptr %buffer, i32 %retval4.3264
  %add.ptr154 = getelementptr %struct.hiddev_usage_ref, ptr %14, i32 %60
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i226 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i226, label %if.then150.if.then157_crit_edge, label %if.end.i.i229

if.then150.if.then157_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then157

if.end.i.i229:                                    ; preds = %if.then150
  %72 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr151, i32 24, i32 -1226833920) #17, !srcloc !51
  %asmresult.i.i227 = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i227)
  %cmp.i6.i228 = icmp eq i32 %asmresult.i.i227, 0
  br i1 %cmp.i6.i228, label %copy_to_user.exit234, label %if.end.i.i229.if.then157_crit_edge

if.end.i.i229.if.then157_crit_edge:               ; preds = %if.end.i.i229
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then157

copy_to_user.exit234:                             ; preds = %if.end.i.i229
  %call.i.i.i230 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr154, i32 noundef 24) #12
  %call.i12.i.i231 = call i32 @arm_copy_to_user(ptr noundef %add.ptr151, ptr noundef %add.ptr154, i32 noundef 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i231)
  %tobool156.not = icmp eq i32 %call.i12.i.i231, 0
  br i1 %tobool156.not, label %if.end159, label %copy_to_user.exit234.if.then157_crit_edge

copy_to_user.exit234.if.then157_crit_edge:        ; preds = %copy_to_user.exit234
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then157

if.then157:                                       ; preds = %copy_to_user.exit234.if.then157_crit_edge, %if.end.i.i229.if.then157_crit_edge, %if.then150.if.then157_crit_edge
  call void @mutex_unlock(ptr noundef %thread_lock) #12
  br label %cleanup170

if.end159:                                        ; preds = %copy_to_user.exit234
  call void @__sanitizer_cov_trace_pc() #14
  %add160 = add i32 %retval4.3264, 24
  br label %if.end162

if.end162:                                        ; preds = %if.end159, %if.else.if.end162_crit_edge, %cleanup.thread, %if.then123.if.end162_crit_edge
  %retval4.5 = phi i32 [ %retval4.3264, %if.then123.if.end162_crit_edge ], [ %add160, %if.end159 ], [ %retval4.3264, %if.else.if.end162_crit_edge ], [ %add140, %cleanup.thread ]
  %73 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tail, align 4
  %add164 = add i32 %74, 1
  %and165 = and i32 %add164, 2047
  store i32 %and165, ptr %tail, align 4
  %75 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %and165)
  %cmp115.not = icmp eq i32 %76, %and165
  %add = add i32 %retval4.5, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp117.not = icmp ugt i32 %add, %count
  %or.cond = select i1 %cmp115.not, i1 true, i1 %cmp117.not
  br i1 %or.cond, label %if.end162.while.cond.loopexit_crit_edge, label %if.end162.while.body119_crit_edge

if.end162.while.body119_crit_edge:                ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body119

if.end162.while.cond.loopexit_crit_edge:          ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit

while.end168:                                     ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %thread_lock) #12
  br label %cleanup170

cleanup170:                                       ; preds = %while.end168, %if.then157, %cleanup, %if.then109, %if.then37, %if.end.cleanup170_crit_edge, %entry.cleanup170_crit_edge
  %retval.4 = phi i32 [ %retval4.1, %if.then109 ], [ -14, %cleanup ], [ -14, %if.then157 ], [ -4, %if.then37 ], [ %retval4.3.lcssa, %while.end168 ], [ 0, %entry.cleanup170_crit_edge ], [ -512, %if.end.cleanup170_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #12
  ret i32 %retval.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hiddev_write(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiddev_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hiddev = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hiddev, align 4
  %wait1 = getelementptr inbounds %struct.hiddev, ptr %3, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %wait1, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wait1, ptr noundef nonnull %wait) #12
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %head = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %if.end, label %poll_wait.exit.cleanup_crit_edge

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hiddev, align 4
  %exist = getelementptr inbounds %struct.hiddev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %. = select i1 %tobool.not, i32 24, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 69, %poll_wait.exit.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiddev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %cinfo = alloca %struct.hiddev_collection_info, align 4
  %rinfo = alloca %struct.hiddev_report_info, align 4
  %finfo = alloca %struct.hiddev_field_info, align 4
  %dinfo = alloca %struct.hiddev_devinfo, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hiddev1 = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hiddev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hiddev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cinfo) #12
  %4 = getelementptr inbounds %struct.hiddev_collection_info, ptr %cinfo, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hiddev_collection_info, ptr %cinfo, i32 0, i32 2
  %6 = getelementptr inbounds %struct.hiddev_collection_info, ptr %cinfo, i32 0, i32 3
  %7 = call ptr @memset(ptr %cinfo, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rinfo) #12
  %8 = ptrtoint ptr %rinfo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %rinfo, align 4, !annotation !52
  %9 = getelementptr inbounds %struct.hiddev_report_info, ptr %rinfo, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !52
  %11 = getelementptr inbounds %struct.hiddev_report_info, ptr %rinfo, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %finfo) #12
  %13 = call ptr @memset(ptr %finfo, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dinfo) #12
  %14 = call ptr @memset(ptr %dinfo, i32 255, i32 28)
  %15 = inttoptr i32 %arg to ptr
  %existancelock = getelementptr inbounds %struct.hiddev, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %existancelock, i32 noundef 0) #12
  %exist = getelementptr inbounds %struct.hiddev, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %entry.ret_unlock_crit_edge, label %if.end

entry.ret_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end:                                           ; preds = %entry
  %hid2 = getelementptr inbounds %struct.hiddev, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %hid2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hid2, align 4
  %20 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %cmd, label %sw.default [
    i32 -2147203071, label %sw.bb
    i32 18434, label %sw.bb5
    i32 -2145630205, label %sw.bb19
    i32 -2147203058, label %sw.bb32
    i32 1074022415, label %sw.bb50
    i32 -2130425852, label %sw.bb73
    i32 18437, label %sw.bb75
    i32 1074546695, label %if.end8.i.i393
    i32 1074546696, label %if.end8.i.i403
    i32 -1072936951, label %if.end8.i.i426
    i32 -1070053366, label %if.end8.i.i462
    i32 -1072150515, label %if.end.sw.bb164_crit_edge
    i32 -1072150517, label %if.end.sw.bb164_crit_edge622
    i32 1075333132, label %if.end.sw.bb164_crit_edge623
    i32 -803452909, label %if.end.sw.bb164_crit_edge624
    i32 1344030740, label %if.end.sw.bb164_crit_edge625
    i32 1075333136, label %if.end.sw.bb164_crit_edge626
    i32 -1072674799, label %if.end8.i.i498
  ]

if.end.sw.bb164_crit_edge626:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb164

if.end.sw.bb164_crit_edge625:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb164

if.end.sw.bb164_crit_edge624:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb164

if.end.sw.bb164_crit_edge623:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb164

if.end.sw.bb164_crit_edge622:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb164

if.end.sw.bb164_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb164

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 621) #12
  %21 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !53
  %and.i = and i32 %23, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %15, i32 65540, i32 -1226833921) #12, !srcloc !56
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not = icmp eq i32 %24, 0
  %cond = select i1 %tobool4.not, i32 0, i32 -14
  br label %ret_unlock

sw.bb5:                                           ; preds = %if.end
  %maxapplication = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 7
  %25 = ptrtoint ptr %maxapplication to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxapplication, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %arg)
  %cmp.not = icmp ugt i32 %26, %arg
  br i1 %cmp.not, label %for.cond.preheader, label %sw.bb5.ret_unlock_crit_edge

sw.bb5.ret_unlock_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

for.cond.preheader:                               ; preds = %sw.bb5
  %maxcollection = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 6
  %27 = ptrtoint ptr %maxcollection to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %maxcollection, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp8608.not = icmp eq i32 %28, 0
  br i1 %cmp8608.not, label %for.cond.preheader.ret_unlock_crit_edge, label %for.body.lr.ph

for.cond.preheader.ret_unlock_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %collection = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 4
  %29 = ptrtoint ptr %collection to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %collection, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %arg.addr.0611 = phi i32 [ %arg, %for.body.lr.ph ], [ %arg.addr.1, %for.inc.for.body_crit_edge ]
  %i.0609 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %type = getelementptr %struct.hid_collection, ptr %30, i32 %i.0609, i32 1
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp9 = icmp eq i32 %32, 1
  br i1 %cmp9, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dec = add i32 %arg.addr.0611, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg.addr.0611)
  %cmp10 = icmp eq i32 %arg.addr.0611, 0
  br i1 %cmp10, label %if.then15, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %arg.addr.1 = phi i32 [ %dec, %land.lhs.true.for.inc_crit_edge ], [ %arg.addr.0611, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0609, 1
  %exitcond.not = icmp eq i32 %inc, %28
  br i1 %exitcond.not, label %for.inc.ret_unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.ret_unlock_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %collection to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %collection, align 8
  %usage = getelementptr %struct.hid_collection, ptr %34, i32 %i.0609, i32 2
  %35 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %usage, align 4
  br label %ret_unlock

sw.bb19:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 8
  %parent21 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent21, align 8
  %add.ptr = getelementptr i8, ptr %40, i32 -128
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 42
  %41 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data, align 8
  %43 = getelementptr inbounds i8, ptr %dinfo, i32 20
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %43, align 4
  %45 = ptrtoint ptr %dinfo to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %dinfo, align 4
  %bus = getelementptr i8, ptr %40, i32 -64
  %46 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %busnum, align 4
  %busnum23 = getelementptr inbounds %struct.hiddev_devinfo, ptr %dinfo, i32 0, i32 1
  %50 = ptrtoint ptr %busnum23 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %busnum23, align 4
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr, align 8
  %devnum24 = getelementptr inbounds %struct.hiddev_devinfo, ptr %dinfo, i32 0, i32 2
  %53 = ptrtoint ptr %devnum24 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %devnum24, align 4
  %ifnum = getelementptr inbounds %struct.usbhid_device, ptr %42, i32 0, i32 2
  %54 = ptrtoint ptr %ifnum to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ifnum, align 4
  %ifnum25 = getelementptr inbounds %struct.hiddev_devinfo, ptr %dinfo, i32 0, i32 3
  %56 = ptrtoint ptr %ifnum25 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %ifnum25, align 4
  %idVendor = getelementptr i8, ptr %40, i32 936
  %57 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %idVendor, align 8
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  %vendor = getelementptr inbounds %struct.hiddev_devinfo, ptr %dinfo, i32 0, i32 4
  %60 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %vendor, align 4
  %idProduct = getelementptr i8, ptr %40, i32 938
  %61 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %idProduct, align 2
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  %product = getelementptr inbounds %struct.hiddev_devinfo, ptr %dinfo, i32 0, i32 5
  %64 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %product, align 2
  %bcdDevice = getelementptr i8, ptr %40, i32 940
  %65 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %bcdDevice, align 4
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %version = getelementptr inbounds %struct.hiddev_devinfo, ptr %dinfo, i32 0, i32 6
  %68 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %version, align 4
  %maxapplication28 = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 7
  %69 = ptrtoint ptr %maxapplication28 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %maxapplication28, align 4
  %num_applications = getelementptr inbounds %struct.hiddev_devinfo, ptr %dinfo, i32 0, i32 7
  %71 = ptrtoint ptr %num_applications to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %num_applications, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %sw.bb19.ret_unlock_crit_edge, label %if.end.i.i

sw.bb19.ret_unlock_crit_edge:                     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end.i.i:                                       ; preds = %sw.bb19
  %72 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 28, i32 -1226833920) #17, !srcloc !51
  %asmresult.i.i = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.ret_unlock_crit_edge

if.end.i.i.ret_unlock_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %dinfo, i32 noundef 28) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef nonnull %dinfo, i32 noundef 28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool30.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select602 = select i1 %tobool30.not, i32 0, i32 -14
  br label %ret_unlock

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 3
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 660) #12
  %75 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i382 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i382 to ptr
  %cpu_domain.i.i383 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 4
  %77 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i383) #6, !srcloc !53
  %and.i384 = and i32 %77, -13
  %or.i385 = or i32 %and.i384, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i385) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %78 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %15, i32 %74, i32 -1226833921) #12, !srcloc !57
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool48.not = icmp eq i32 %78, 0
  %cond49 = select i1 %tobool48.not, i32 0, i32 -14
  br label %ret_unlock

sw.bb50:                                          ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 668) #12
  %79 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i386 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i386 to ptr
  %cpu_domain.i.i387 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 4
  %81 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i387) #6, !srcloc !53
  %and.i388 = and i32 %81, -13
  %or.i389 = or i32 %and.i388, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i389) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %82 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %15, i32 -1226833921) #12, !srcloc !58
  %asmresult = extractvalue { i32, i32 } %82, 0
  %asmresult59 = extractvalue { i32, i32 } %82, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool61.not = icmp eq i32 %asmresult, 0
  br i1 %tobool61.not, label %if.end63, label %sw.bb50.ret_unlock_crit_edge

sw.bb50.ret_unlock_crit_edge:                     ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end63:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult59)
  %cmp64.not = icmp ugt i32 %asmresult59, 3
  %83 = and i32 %asmresult59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %84 = icmp eq i32 %83, 2
  %or.cond = or i1 %cmp64.not, %84
  br i1 %or.cond, label %if.end63.ret_unlock_crit_edge, label %if.end71

if.end63.ret_unlock_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %flags72 = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 3
  %85 = ptrtoint ptr %flags72 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %asmresult59, ptr %flags72, align 4
  br label %ret_unlock

sw.bb73:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call74 = tail call fastcc i32 @hiddev_ioctl_string(ptr noundef %3, ptr noundef %15)
  br label %ret_unlock

sw.bb75:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usbhid_init_reports(ptr noundef %19) #12
  %initialized = getelementptr inbounds %struct.hiddev, ptr %3, i32 0, i32 8
  %86 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %initialized, align 4
  br label %ret_unlock

if.end8.i.i393:                                   ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #12
  %call.i.i394 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i394, label %if.end8.i.i393.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i393.if.then11.i.i_crit_edge:           ; preds = %if.end8.i.i393
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i393
  %87 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 12, i32 -1226833920) #17, !srcloc !59
  %asmresult.i.i395 = extractvalue { i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i395)
  %cmp.i6.i396 = icmp eq i32 %asmresult.i.i395, 0
  br i1 %cmp.i6.i396, label %if.end.i.i398, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !49

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i398:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i397 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rinfo, i32 noundef 12) #12
  %88 = call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 4
  %90 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !53
  %and.i.i.i.i = and i32 %90, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rinfo, ptr noundef %15, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #12, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end80, label %if.end.i.i398.if.then11.i.i_crit_edge, !prof !49

if.end.i.i398.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i398
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i398.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i393.if.then11.i.i_crit_edge
  %res.0.i.i573 = phi i32 [ %call1.i.i.i, %if.end.i.i398.if.then11.i.i_crit_edge ], [ 12, %if.end8.i.i393.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i573
  %add.ptr.i.i = getelementptr i8, ptr %rinfo, i32 %sub.i.i
  %91 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i573)
  br label %ret_unlock

if.end80:                                         ; preds = %if.end.i.i398
  %92 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp81 = icmp eq i32 %93, 2
  br i1 %cmp81, label %if.end80.ret_unlock_crit_edge, label %if.end83

if.end80.ret_unlock_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end83:                                         ; preds = %if.end80
  %call84 = call fastcc ptr @hiddev_lookup_report(ptr noundef %19, ptr noundef nonnull %rinfo)
  %cmp85 = icmp eq ptr %call84, null
  br i1 %cmp85, label %if.end83.ret_unlock_crit_edge, label %if.end87

if.end83.ret_unlock_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end87:                                         ; preds = %if.end83
  call void @hid_hw_request(ptr noundef %19, ptr noundef nonnull %call84, i32 noundef 1) #12
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 20
  %94 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ll_driver.i, align 4
  %wait.i = getelementptr inbounds %struct.hid_ll_driver, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wait.i, align 4
  %tobool.not.i = icmp eq ptr %97, null
  br i1 %tobool.not.i, label %if.end87.ret_unlock_crit_edge, label %if.then.i562

if.end87.ret_unlock_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.then.i562:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 %97(ptr noundef %19) #12
  br label %ret_unlock

if.end8.i.i403:                                   ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #12
  %call.i.i404 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i404, label %if.end8.i.i403.if.then11.i.i420_crit_edge, label %land.lhs.true.i.i407

if.end8.i.i403.if.then11.i.i420_crit_edge:        ; preds = %if.end8.i.i403
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i420

land.lhs.true.i.i407:                             ; preds = %if.end8.i.i403
  %98 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 12, i32 -1226833920) #17, !srcloc !59
  %asmresult.i.i405 = extractvalue { i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i405)
  %cmp.i6.i406 = icmp eq i32 %asmresult.i.i405, 0
  br i1 %cmp.i6.i406, label %if.end.i.i417, label %land.lhs.true.i.i407.if.then11.i.i420_crit_edge, !prof !49

land.lhs.true.i.i407.if.then11.i.i420_crit_edge:  ; preds = %land.lhs.true.i.i407
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i420

if.end.i.i417:                                    ; preds = %land.lhs.true.i.i407
  %call.i.i.i408 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rinfo, i32 noundef 12) #12
  %99 = call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i.i409 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i.i409 to ptr
  %cpu_domain.i.i.i.i.i410 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 4
  %101 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i410) #6, !srcloc !53
  %and.i.i.i.i411 = and i32 %101, -13
  %or.i.i.i.i412 = or i32 %and.i.i.i.i411, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i412) #12, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %call1.i.i.i413 = call i32 @arm_copy_from_user(ptr noundef nonnull %rinfo, ptr noundef %15, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #12, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i413)
  %tobool4.not.i.i416 = icmp eq i32 %call1.i.i.i413, 0
  br i1 %tobool4.not.i.i416, label %if.end92, label %if.end.i.i417.if.then11.i.i420_crit_edge, !prof !49

if.end.i.i417.if.then11.i.i420_crit_edge:         ; preds = %if.end.i.i417
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i420

if.then11.i.i420:                                 ; preds = %if.end.i.i417.if.then11.i.i420_crit_edge, %land.lhs.true.i.i407.if.then11.i.i420_crit_edge, %if.end8.i.i403.if.then11.i.i420_crit_edge
  %res.0.i.i415578 = phi i32 [ %call1.i.i.i413, %if.end.i.i417.if.then11.i.i420_crit_edge ], [ 12, %if.end8.i.i403.if.then11.i.i420_crit_edge ], [ 12, %land.lhs.true.i.i407.if.then11.i.i420_crit_edge ]
  %sub.i.i418 = sub i32 12, %res.0.i.i415578
  %add.ptr.i.i419 = getelementptr i8, ptr %rinfo, i32 %sub.i.i418
  %102 = call ptr @memset(ptr %add.ptr.i.i419, i32 0, i32 %res.0.i.i415578)
  br label %ret_unlock

if.end92:                                         ; preds = %if.end.i.i417
  %103 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp94 = icmp eq i32 %104, 1
  br i1 %cmp94, label %if.end92.ret_unlock_crit_edge, label %if.end96

if.end92.ret_unlock_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end96:                                         ; preds = %if.end92
  %call97 = call fastcc ptr @hiddev_lookup_report(ptr noundef %19, ptr noundef nonnull %rinfo)
  %cmp98 = icmp eq ptr %call97, null
  br i1 %cmp98, label %if.end96.ret_unlock_crit_edge, label %if.end100

if.end96.ret_unlock_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end100:                                        ; preds = %if.end96
  call void @hid_hw_request(ptr noundef %19, ptr noundef nonnull %call97, i32 noundef 9) #12
  %ll_driver.i563 = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 20
  %105 = ptrtoint ptr %ll_driver.i563 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ll_driver.i563, align 4
  %wait.i564 = getelementptr inbounds %struct.hid_ll_driver, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %wait.i564 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wait.i564, align 4
  %tobool.not.i565 = icmp eq ptr %108, null
  br i1 %tobool.not.i565, label %if.end100.ret_unlock_crit_edge, label %if.then.i567

if.end100.ret_unlock_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.then.i567:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %call.i566 = call i32 %108(ptr noundef %19) #12
  br label %ret_unlock

if.end8.i.i426:                                   ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #12
  %call.i.i427 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i427, label %if.end8.i.i426.if.then11.i.i443_crit_edge, label %land.lhs.true.i.i430

if.end8.i.i426.if.then11.i.i443_crit_edge:        ; preds = %if.end8.i.i426
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i443

land.lhs.true.i.i430:                             ; preds = %if.end8.i.i426
  %109 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 12, i32 -1226833920) #17
  %asmresult.i.i428 = extractvalue { i32, i32 } %109, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i428)
  %cmp.i6.i429 = icmp eq i32 %asmresult.i.i428, 0
  br i1 %cmp.i6.i429, label %if.end.i.i440, label %land.lhs.true.i.i430.if.then11.i.i443_crit_edge, !prof !49

land.lhs.true.i.i430.if.then11.i.i443_crit_edge:  ; preds = %land.lhs.true.i.i430
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i443

if.end.i.i440:                                    ; preds = %land.lhs.true.i.i430
  %call.i.i.i431 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rinfo, i32 noundef 12) #12
  %110 = call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i.i432 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i.i.i432 to ptr
  %cpu_domain.i.i.i.i.i433 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 4
  %112 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i433) #6, !srcloc !53
  %and.i.i.i.i434 = and i32 %112, -13
  %or.i.i.i.i435 = or i32 %and.i.i.i.i434, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i435) #12, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %call1.i.i.i436 = call i32 @arm_copy_from_user(ptr noundef nonnull %rinfo, ptr noundef %15, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #12, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i436)
  %tobool4.not.i.i439 = icmp eq i32 %call1.i.i.i436, 0
  br i1 %tobool4.not.i.i439, label %if.end105, label %if.end.i.i440.if.then11.i.i443_crit_edge, !prof !49

if.end.i.i440.if.then11.i.i443_crit_edge:         ; preds = %if.end.i.i440
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i443

if.then11.i.i443:                                 ; preds = %if.end.i.i440.if.then11.i.i443_crit_edge, %land.lhs.true.i.i430.if.then11.i.i443_crit_edge, %if.end8.i.i426.if.then11.i.i443_crit_edge
  %res.0.i.i438583 = phi i32 [ %call1.i.i.i436, %if.end.i.i440.if.then11.i.i443_crit_edge ], [ 12, %if.end8.i.i426.if.then11.i.i443_crit_edge ], [ 12, %land.lhs.true.i.i430.if.then11.i.i443_crit_edge ]
  %sub.i.i441 = sub i32 12, %res.0.i.i438583
  %add.ptr.i.i442 = getelementptr i8, ptr %rinfo, i32 %sub.i.i441
  %113 = call ptr @memset(ptr %add.ptr.i.i442, i32 0, i32 %res.0.i.i438583)
  br label %ret_unlock

if.end105:                                        ; preds = %if.end.i.i440
  %call106 = call fastcc ptr @hiddev_lookup_report(ptr noundef %19, ptr noundef nonnull %rinfo)
  %cmp107 = icmp eq ptr %call106, null
  br i1 %cmp107, label %if.end105.ret_unlock_crit_edge, label %if.end8.i.i449

if.end105.ret_unlock_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end8.i.i449:                                   ; preds = %if.end105
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %call106, i32 0, i32 6
  %114 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %maxfield, align 4
  %116 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %11, align 4
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i450 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i450, label %if.end8.i.i449.ret_unlock_crit_edge, label %copy_to_user.exit458

if.end8.i.i449.ret_unlock_crit_edge:              ; preds = %if.end8.i.i449
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

copy_to_user.exit458:                             ; preds = %if.end8.i.i449
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i454 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rinfo, i32 noundef 12) #12
  %call.i12.i.i455 = call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef nonnull %rinfo, i32 noundef 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i455)
  %tobool111.not = icmp eq i32 %call.i12.i.i455, 0
  %spec.select603 = select i1 %tobool111.not, i32 0, i32 -14
  br label %ret_unlock

if.end8.i.i462:                                   ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #12
  %call.i.i463 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i463, label %if.end8.i.i462.if.then11.i.i479_crit_edge, label %land.lhs.true.i.i466

if.end8.i.i462.if.then11.i.i479_crit_edge:        ; preds = %if.end8.i.i462
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i479

land.lhs.true.i.i466:                             ; preds = %if.end8.i.i462
  %117 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 56, i32 -1226833920) #17
  %asmresult.i.i464 = extractvalue { i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i464)
  %cmp.i6.i465 = icmp eq i32 %asmresult.i.i464, 0
  br i1 %cmp.i6.i465, label %if.end.i.i476, label %land.lhs.true.i.i466.if.then11.i.i479_crit_edge, !prof !49

land.lhs.true.i.i466.if.then11.i.i479_crit_edge:  ; preds = %land.lhs.true.i.i466
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i479

if.end.i.i476:                                    ; preds = %land.lhs.true.i.i466
  %call.i.i.i467 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %finfo, i32 noundef 56) #12
  %118 = call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i.i468 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i.i.i468 to ptr
  %cpu_domain.i.i.i.i.i469 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 4
  %120 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i469) #6, !srcloc !53
  %and.i.i.i.i470 = and i32 %120, -13
  %or.i.i.i.i471 = or i32 %and.i.i.i.i470, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i471) #12, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %call1.i.i.i472 = call i32 @arm_copy_from_user(ptr noundef nonnull %finfo, ptr noundef %15, i32 noundef 56) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #12, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i472)
  %tobool4.not.i.i475 = icmp eq i32 %call1.i.i.i472, 0
  br i1 %tobool4.not.i.i475, label %if.end117, label %if.end.i.i476.if.then11.i.i479_crit_edge, !prof !49

if.end.i.i476.if.then11.i.i479_crit_edge:         ; preds = %if.end.i.i476
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i479

if.then11.i.i479:                                 ; preds = %if.end.i.i476.if.then11.i.i479_crit_edge, %land.lhs.true.i.i466.if.then11.i.i479_crit_edge, %if.end8.i.i462.if.then11.i.i479_crit_edge
  %res.0.i.i474590 = phi i32 [ %call1.i.i.i472, %if.end.i.i476.if.then11.i.i479_crit_edge ], [ 56, %if.end8.i.i462.if.then11.i.i479_crit_edge ], [ 56, %land.lhs.true.i.i466.if.then11.i.i479_crit_edge ]
  %sub.i.i477 = sub i32 56, %res.0.i.i474590
  %add.ptr.i.i478 = getelementptr i8, ptr %finfo, i32 %sub.i.i477
  %121 = call ptr @memset(ptr %add.ptr.i.i478, i32 0, i32 %res.0.i.i474590)
  br label %ret_unlock

if.end117:                                        ; preds = %if.end.i.i476
  %122 = ptrtoint ptr %finfo to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %finfo, align 4
  %124 = ptrtoint ptr %rinfo to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %rinfo, align 4
  %report_id = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 1
  %125 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %report_id, align 4
  %127 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %9, align 4
  %call121 = call fastcc ptr @hiddev_lookup_report(ptr noundef %19, ptr noundef nonnull %rinfo)
  %cmp122 = icmp eq ptr %call121, null
  br i1 %cmp122, label %if.end117.ret_unlock_crit_edge, label %if.end124

if.end117.ret_unlock_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end124:                                        ; preds = %if.end117
  %field_index = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 2
  %128 = ptrtoint ptr %field_index to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %field_index, align 4
  %maxfield125 = getelementptr inbounds %struct.hid_report, ptr %call121, i32 0, i32 6
  %130 = ptrtoint ptr %maxfield125 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %maxfield125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %131)
  %cmp126.not = icmp ult i32 %129, %131
  br i1 %cmp126.not, label %if.end8.i.i485, label %if.end124.ret_unlock_crit_edge

if.end124.ret_unlock_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end8.i.i485:                                   ; preds = %if.end124
  %132 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %129, i32 %131) #12, !srcloc !60
  %and139 = and i32 %132, %129
  %133 = ptrtoint ptr %field_index to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %and139, ptr %field_index, align 4
  %arrayidx143 = getelementptr %struct.hid_report, ptr %call121, i32 0, i32 5, i32 %and139
  %134 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx143, align 4
  %136 = getelementptr inbounds i8, ptr %finfo, i32 8
  %137 = call ptr @memset(ptr %136, i32 0, i32 48)
  %138 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rinfo, align 4
  %140 = ptrtoint ptr %finfo to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %finfo, align 4
  %141 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %9, align 4
  %143 = ptrtoint ptr %report_id to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %report_id, align 4
  %report_count = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 8
  %144 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %report_count, align 4
  %sub = add i32 %145, -1
  store i32 %sub, ptr %field_index, align 4
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 4
  %146 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %maxusage, align 4
  %maxusage149 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 3
  %148 = ptrtoint ptr %maxusage149 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %maxusage149, align 4
  %flags150 = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 5
  %149 = ptrtoint ptr %flags150 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags150, align 4
  %flags151 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 4
  %151 = ptrtoint ptr %flags151 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %flags151, align 4
  %152 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %135, align 4
  %physical152 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 5
  %154 = ptrtoint ptr %physical152 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %physical152, align 4
  %logical = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 1
  %155 = ptrtoint ptr %logical to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %logical, align 4
  %logical153 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 6
  %157 = ptrtoint ptr %logical153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %logical153, align 4
  %application = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 2
  %158 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %application, align 4
  %application154 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 7
  %160 = ptrtoint ptr %application154 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %application154, align 4
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 11
  %161 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %logical_minimum, align 4
  %logical_minimum155 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 8
  %163 = ptrtoint ptr %logical_minimum155 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %logical_minimum155, align 4
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 12
  %164 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %logical_maximum, align 4
  %logical_maximum156 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 9
  %166 = ptrtoint ptr %logical_maximum156 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %logical_maximum156, align 4
  %physical_minimum = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 13
  %167 = ptrtoint ptr %physical_minimum to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %physical_minimum, align 4
  %physical_minimum157 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 10
  %169 = ptrtoint ptr %physical_minimum157 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %physical_minimum157, align 4
  %physical_maximum = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 14
  %170 = ptrtoint ptr %physical_maximum to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %physical_maximum, align 4
  %physical_maximum158 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 11
  %172 = ptrtoint ptr %physical_maximum158 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %physical_maximum158, align 4
  %unit_exponent = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 15
  %173 = ptrtoint ptr %unit_exponent to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %unit_exponent, align 4
  %unit_exponent159 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 12
  %175 = ptrtoint ptr %unit_exponent159 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %unit_exponent159, align 4
  %unit = getelementptr inbounds %struct.hid_field, ptr %135, i32 0, i32 16
  %176 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %unit, align 4
  %unit160 = getelementptr inbounds %struct.hiddev_field_info, ptr %finfo, i32 0, i32 13
  %178 = ptrtoint ptr %unit160 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %unit160, align 4
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i486 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i486, label %if.end8.i.i485.ret_unlock_crit_edge, label %copy_to_user.exit494

if.end8.i.i485.ret_unlock_crit_edge:              ; preds = %if.end8.i.i485
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

copy_to_user.exit494:                             ; preds = %if.end8.i.i485
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i490 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %finfo, i32 noundef 56) #12
  %call.i12.i.i491 = call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef nonnull %finfo, i32 noundef 56) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i491)
  %tobool162.not = icmp eq i32 %call.i12.i.i491, 0
  %spec.select604 = select i1 %tobool162.not, i32 0, i32 -14
  br label %ret_unlock

sw.bb164:                                         ; preds = %if.end.sw.bb164_crit_edge, %if.end.sw.bb164_crit_edge622, %if.end.sw.bb164_crit_edge623, %if.end.sw.bb164_crit_edge624, %if.end.sw.bb164_crit_edge625, %if.end.sw.bb164_crit_edge626
  %initialized165 = getelementptr inbounds %struct.hiddev, ptr %3, i32 0, i32 8
  %179 = ptrtoint ptr %initialized165 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %initialized165, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool166.not = icmp eq i8 %180, 0
  br i1 %tobool166.not, label %if.then167, label %sw.bb164.if.end169_crit_edge

sw.bb164.if.end169_crit_edge:                     ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169

if.then167:                                       ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usbhid_init_reports(ptr noundef %19) #12
  %181 = ptrtoint ptr %initialized165 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 1, ptr %initialized165, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %sw.bb164.if.end169_crit_edge
  %call170 = tail call fastcc i32 @hiddev_ioctl_usage(ptr noundef %3, i32 noundef %cmd, ptr noundef %15)
  br label %ret_unlock

if.end8.i.i498:                                   ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #12
  %call.i.i499 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i499, label %if.end8.i.i498.if.then11.i.i515_crit_edge, label %land.lhs.true.i.i502

if.end8.i.i498.if.then11.i.i515_crit_edge:        ; preds = %if.end8.i.i498
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i515

land.lhs.true.i.i502:                             ; preds = %if.end8.i.i498
  %182 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 16, i32 -1226833920) #17
  %asmresult.i.i500 = extractvalue { i32, i32 } %182, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i500)
  %cmp.i6.i501 = icmp eq i32 %asmresult.i.i500, 0
  br i1 %cmp.i6.i501, label %if.end.i.i512, label %land.lhs.true.i.i502.if.then11.i.i515_crit_edge, !prof !49

land.lhs.true.i.i502.if.then11.i.i515_crit_edge:  ; preds = %land.lhs.true.i.i502
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i515

if.end.i.i512:                                    ; preds = %land.lhs.true.i.i502
  %call.i.i.i503 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cinfo, i32 noundef 16) #12
  %183 = call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i.i504 = and i32 %183, -16384
  %184 = inttoptr i32 %and.i.i.i.i.i.i504 to ptr
  %cpu_domain.i.i.i.i.i505 = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 4
  %185 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i505) #6, !srcloc !53
  %and.i.i.i.i506 = and i32 %185, -13
  %or.i.i.i.i507 = or i32 %and.i.i.i.i506, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i507) #12, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %call1.i.i.i508 = call i32 @arm_copy_from_user(ptr noundef nonnull %cinfo, ptr noundef %15, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %185) #12, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i508)
  %tobool4.not.i.i511 = icmp eq i32 %call1.i.i.i508, 0
  br i1 %tobool4.not.i.i511, label %if.end175, label %if.end.i.i512.if.then11.i.i515_crit_edge, !prof !49

if.end.i.i512.if.then11.i.i515_crit_edge:         ; preds = %if.end.i.i512
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i515

if.then11.i.i515:                                 ; preds = %if.end.i.i512.if.then11.i.i515_crit_edge, %land.lhs.true.i.i502.if.then11.i.i515_crit_edge, %if.end8.i.i498.if.then11.i.i515_crit_edge
  %res.0.i.i510597 = phi i32 [ %call1.i.i.i508, %if.end.i.i512.if.then11.i.i515_crit_edge ], [ 16, %if.end8.i.i498.if.then11.i.i515_crit_edge ], [ 16, %land.lhs.true.i.i502.if.then11.i.i515_crit_edge ]
  %sub.i.i513 = sub i32 16, %res.0.i.i510597
  %add.ptr.i.i514 = getelementptr i8, ptr %cinfo, i32 %sub.i.i513
  %186 = call ptr @memset(ptr %add.ptr.i.i514, i32 0, i32 %res.0.i.i510597)
  br label %ret_unlock

if.end175:                                        ; preds = %if.end.i.i512
  %187 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cinfo, align 4
  %maxcollection176 = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 6
  %189 = ptrtoint ptr %maxcollection176 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %maxcollection176, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %190)
  %cmp177.not = icmp ult i32 %188, %190
  br i1 %cmp177.not, label %if.end8.i.i521, label %if.end175.ret_unlock_crit_edge

if.end175.ret_unlock_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end8.i.i521:                                   ; preds = %if.end175
  %191 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %188, i32 %190) #12, !srcloc !60
  %and193 = and i32 %191, %188
  %192 = ptrtoint ptr %cinfo to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %and193, ptr %cinfo, align 4
  %collection195 = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 4
  %193 = ptrtoint ptr %collection195 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %collection195, align 8
  %type198 = getelementptr %struct.hid_collection, ptr %194, i32 %and193, i32 1
  %195 = ptrtoint ptr %type198 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %type198, align 4
  %197 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %4, align 4
  %usage203 = getelementptr %struct.hid_collection, ptr %194, i32 %and193, i32 2
  %198 = ptrtoint ptr %usage203 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %usage203, align 4
  %200 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %5, align 4
  %level = getelementptr %struct.hid_collection, ptr %194, i32 %and193, i32 3
  %201 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %level, align 4
  %203 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %6, align 4
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i522 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i522, label %if.end8.i.i521.ret_unlock_crit_edge, label %copy_to_user.exit530

if.end8.i.i521.ret_unlock_crit_edge:              ; preds = %if.end8.i.i521
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

copy_to_user.exit530:                             ; preds = %if.end8.i.i521
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i526 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cinfo, i32 noundef 16) #12
  %call.i12.i.i527 = call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef nonnull %cinfo, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i527)
  %tobool210.not = icmp eq i32 %call.i12.i.i527, 0
  %spec.select605 = select i1 %tobool210.not, i32 0, i32 -14
  br label %ret_unlock

sw.default:                                       ; preds = %if.end
  %204 = and i32 %cmd, -1073676544
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147465216, i32 %204)
  %205 = icmp eq i32 %204, -2147465216
  br i1 %205, label %if.end219, label %sw.default.ret_unlock_crit_edge

sw.default.ret_unlock_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.end219:                                        ; preds = %sw.default
  %trunc = trunc i32 %cmd to i8
  %206 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %trunc, label %if.end219.ret_unlock_crit_edge [
    i8 6, label %if.then223
    i8 18, label %if.then242
  ]

if.end219.ret_unlock_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %ret_unlock

if.then223:                                       ; preds = %if.end219
  %name = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 39
  %call224 = tail call i32 @strlen(ptr noundef %name) #18
  %add = add i32 %call224, 1
  %shr225 = lshr i32 %cmd, 16
  %and226 = and i32 %shr225, 16383
  %207 = tail call i32 @llvm.umin.i32(i32 %add, i32 %and226)
  tail call void @__check_object_size(ptr noundef %name, i32 noundef %207, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i535 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i535, label %if.then223.copy_to_user.exit543_crit_edge, label %if.end.i.i538

if.then223.copy_to_user.exit543_crit_edge:        ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit543

if.end.i.i538:                                    ; preds = %if.then223
  %208 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 %207, i32 -1226833920) #17, !srcloc !51
  %asmresult.i.i536 = extractvalue { i32, i32 } %208, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i536)
  %cmp.i6.i537 = icmp eq i32 %asmresult.i.i536, 0
  br i1 %cmp.i6.i537, label %if.then2.i.i541, label %if.end.i.i538.copy_to_user.exit543_crit_edge

if.end.i.i538.copy_to_user.exit543_crit_edge:     ; preds = %if.end.i.i538
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit543

if.then2.i.i541:                                  ; preds = %if.end.i.i538
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i539 = tail call zeroext i1 @__kasan_check_read(ptr noundef %name, i32 noundef %207) #12
  %call.i12.i.i540 = tail call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef %name, i32 noundef %207) #12
  br label %copy_to_user.exit543

copy_to_user.exit543:                             ; preds = %if.then2.i.i541, %if.end.i.i538.copy_to_user.exit543_crit_edge, %if.then223.copy_to_user.exit543_crit_edge
  %n.addr.0.i542 = phi i32 [ %207, %if.then223.copy_to_user.exit543_crit_edge ], [ %call.i12.i.i540, %if.then2.i.i541 ], [ %207, %if.end.i.i538.copy_to_user.exit543_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i542)
  %tobool235.not = icmp eq i32 %n.addr.0.i542, 0
  %spec.select = select i1 %tobool235.not, i32 %207, i32 -14
  br label %ret_unlock

if.then242:                                       ; preds = %if.end219
  %phys = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 40
  %call245 = tail call i32 @strlen(ptr noundef %phys) #18
  %add246 = add i32 %call245, 1
  %shr247 = lshr i32 %cmd, 16
  %and248 = and i32 %shr247, 16383
  %209 = tail call i32 @llvm.umin.i32(i32 %add246, i32 %and248)
  tail call void @__check_object_size(ptr noundef %phys, i32 noundef %209, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i552 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i552, label %if.then242.copy_to_user.exit561_crit_edge, label %if.end.i.i556

if.then242.copy_to_user.exit561_crit_edge:        ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit561

if.end.i.i556:                                    ; preds = %if.then242
  %210 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 %209, i32 -1226833920) #17, !srcloc !51
  %asmresult.i.i554 = extractvalue { i32, i32 } %210, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i554)
  %cmp.i6.i555 = icmp eq i32 %asmresult.i.i554, 0
  br i1 %cmp.i6.i555, label %if.then2.i.i559, label %if.end.i.i556.copy_to_user.exit561_crit_edge

if.end.i.i556.copy_to_user.exit561_crit_edge:     ; preds = %if.end.i.i556
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit561

if.then2.i.i559:                                  ; preds = %if.end.i.i556
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i557 = tail call zeroext i1 @__kasan_check_read(ptr noundef %phys, i32 noundef %209) #12
  %call.i12.i.i558 = tail call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef %phys, i32 noundef %209) #12
  br label %copy_to_user.exit561

copy_to_user.exit561:                             ; preds = %if.then2.i.i559, %if.end.i.i556.copy_to_user.exit561_crit_edge, %if.then242.copy_to_user.exit561_crit_edge
  %n.addr.0.i560 = phi i32 [ %209, %if.then242.copy_to_user.exit561_crit_edge ], [ %call.i12.i.i558, %if.then2.i.i559 ], [ %209, %if.end.i.i556.copy_to_user.exit561_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i560)
  %tobool257.not = icmp eq i32 %n.addr.0.i560, 0
  %spec.select618 = select i1 %tobool257.not, i32 %209, i32 -14
  br label %ret_unlock

ret_unlock:                                       ; preds = %copy_to_user.exit561, %copy_to_user.exit543, %if.end219.ret_unlock_crit_edge, %sw.default.ret_unlock_crit_edge, %copy_to_user.exit530, %if.end8.i.i521.ret_unlock_crit_edge, %if.end175.ret_unlock_crit_edge, %if.then11.i.i515, %if.end169, %copy_to_user.exit494, %if.end8.i.i485.ret_unlock_crit_edge, %if.end124.ret_unlock_crit_edge, %if.end117.ret_unlock_crit_edge, %if.then11.i.i479, %copy_to_user.exit458, %if.end8.i.i449.ret_unlock_crit_edge, %if.end105.ret_unlock_crit_edge, %if.then11.i.i443, %if.then.i567, %if.end100.ret_unlock_crit_edge, %if.end96.ret_unlock_crit_edge, %if.end92.ret_unlock_crit_edge, %if.then11.i.i420, %if.then.i562, %if.end87.ret_unlock_crit_edge, %if.end83.ret_unlock_crit_edge, %if.end80.ret_unlock_crit_edge, %if.then11.i.i, %sw.bb75, %sw.bb73, %if.end71, %if.end63.ret_unlock_crit_edge, %sw.bb50.ret_unlock_crit_edge, %sw.bb32, %copy_to_user.exit, %if.end.i.i.ret_unlock_crit_edge, %sw.bb19.ret_unlock_crit_edge, %if.then15, %for.inc.ret_unlock_crit_edge, %for.cond.preheader.ret_unlock_crit_edge, %sw.bb5.ret_unlock_crit_edge, %sw.bb, %entry.ret_unlock_crit_edge
  %r.1 = phi i32 [ -22, %sw.default.ret_unlock_crit_edge ], [ -22, %if.end175.ret_unlock_crit_edge ], [ %call170, %if.end169 ], [ -22, %if.end117.ret_unlock_crit_edge ], [ -22, %if.end124.ret_unlock_crit_edge ], [ -22, %if.end105.ret_unlock_crit_edge ], [ -22, %if.end92.ret_unlock_crit_edge ], [ -22, %if.end96.ret_unlock_crit_edge ], [ -22, %if.end80.ret_unlock_crit_edge ], [ -22, %if.end83.ret_unlock_crit_edge ], [ 0, %sw.bb75 ], [ %call74, %sw.bb73 ], [ %cond49, %sw.bb32 ], [ -22, %sw.bb5.ret_unlock_crit_edge ], [ %36, %if.then15 ], [ %cond, %sw.bb ], [ -19, %entry.ret_unlock_crit_edge ], [ 0, %if.end71 ], [ -14, %sw.bb50.ret_unlock_crit_edge ], [ -22, %if.end63.ret_unlock_crit_edge ], [ -22, %if.end219.ret_unlock_crit_edge ], [ 0, %if.end87.ret_unlock_crit_edge ], [ 0, %if.then.i562 ], [ 0, %if.end100.ret_unlock_crit_edge ], [ 0, %if.then.i567 ], [ -14, %sw.bb19.ret_unlock_crit_edge ], [ -14, %if.end.i.i.ret_unlock_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i420 ], [ -14, %if.then11.i.i443 ], [ -14, %if.end8.i.i449.ret_unlock_crit_edge ], [ -14, %if.then11.i.i479 ], [ -14, %if.end8.i.i485.ret_unlock_crit_edge ], [ -14, %if.then11.i.i515 ], [ -14, %if.end8.i.i521.ret_unlock_crit_edge ], [ %spec.select602, %copy_to_user.exit ], [ %spec.select603, %copy_to_user.exit458 ], [ %spec.select604, %copy_to_user.exit494 ], [ %spec.select605, %copy_to_user.exit530 ], [ -22, %for.cond.preheader.ret_unlock_crit_edge ], [ %spec.select, %copy_to_user.exit543 ], [ %spec.select618, %copy_to_user.exit561 ], [ -22, %for.inc.ret_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %existancelock) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dinfo) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %finfo) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rinfo) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cinfo) #12
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiddev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @usbhid_find_interface(i32 noundef %and.i) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hiddev3 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %hiddev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hiddev3, align 8
  %existancelock = getelementptr inbounds %struct.hiddev, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %existancelock, i32 noundef 0) #12
  %exist = getelementptr inbounds %struct.hiddev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %cond.true.if.end.i_crit_edge, label %land.rhs.i

cond.true.if.end.i_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %cond.true
  %dep_map.i = getelementptr inbounds %struct.hiddev, ptr %5, i32 0, i32 3, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !62

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 249, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %cond.true.if.end.i_crit_edge
  %call24.i = tail call noalias ptr @vzalloc(i32 noundef 49272) #19
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end.i.cond.end_crit_edge, label %do.body28.i

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

do.body28.i:                                      ; preds = %if.end.i
  %thread_lock.i = getelementptr inbounds %struct.hiddev_list, ptr %call24.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %thread_lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @__hiddev_open.__key) #12
  %hiddev31.i = getelementptr inbounds %struct.hiddev_list, ptr %call24.i, i32 0, i32 5
  %9 = ptrtoint ptr %hiddev31.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %hiddev31.i, align 4
  %open.i = getelementptr inbounds %struct.hiddev, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %open.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %open.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool32.not.i = icmp eq i32 %11, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %do.body28.i.if.end43.i_crit_edge

do.body28.i.if.end43.i_crit_edge:                 ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then33.i:                                      ; preds = %do.body28.i
  %hid.i = getelementptr inbounds %struct.hiddev, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hid.i, align 4
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ll_driver.i.i, align 4
  %power.i.i = getelementptr inbounds %struct.hid_ll_driver, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %power.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then33.i.if.end37.i_crit_edge, label %hid_hw_power.exit.i

if.then33.i.if.end37.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

hid_hw_power.exit.i:                              ; preds = %if.then33.i
  %call.i67.i = tail call i32 %17(ptr noundef %13, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %cmp35.i = icmp slt i32 %call.i67.i, 0
  br i1 %cmp35.i, label %hid_hw_power.exit.i.err_drop_count.i_crit_edge, label %hid_hw_power.exit.i.if.end37.i_crit_edge

hid_hw_power.exit.i.if.end37.i_crit_edge:         ; preds = %hid_hw_power.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

hid_hw_power.exit.i.err_drop_count.i_crit_edge:   ; preds = %hid_hw_power.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_drop_count.i

if.end37.i:                                       ; preds = %hid_hw_power.exit.i.if.end37.i_crit_edge, %if.then33.i.if.end37.i_crit_edge
  %18 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hid.i, align 4
  %call39.i = tail call i32 @hid_hw_open(ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %err_normal_power.i, label %if.end37.i.if.end43.i_crit_edge

if.end37.i.if.end43.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end37.i.if.end43.i_crit_edge, %do.body28.i.if.end43.i_crit_edge
  %list_lock.i = getelementptr inbounds %struct.hiddev, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %list_lock.i) #12
  %node.i = getelementptr inbounds %struct.hiddev_list, ptr %call24.i, i32 0, i32 6
  %list44.i = getelementptr inbounds %struct.hiddev, ptr %5, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.hiddev, ptr %5, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %21, ptr noundef %list44.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end43.i.list_add_tail.exit.i_crit_edge

if.end43.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %node.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list44.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.hiddev_list, ptr %call24.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %node.i, ptr %21, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end43.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %list_lock.i) #12
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %26 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call24.i, ptr %private_data.i, align 4
  br label %cond.end

err_normal_power.i:                               ; preds = %if.end37.i
  %27 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hid.i, align 4
  %ll_driver.i68.i = getelementptr inbounds %struct.hid_device, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %ll_driver.i68.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ll_driver.i68.i, align 4
  %power.i69.i = getelementptr inbounds %struct.hid_ll_driver, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %power.i69.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %power.i69.i, align 4
  %tobool.not.i70.i = icmp eq ptr %32, null
  br i1 %tobool.not.i70.i, label %err_normal_power.i.err_drop_count.i_crit_edge, label %cond.true.i72.i

err_normal_power.i.err_drop_count.i_crit_edge:    ; preds = %err_normal_power.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_drop_count.i

cond.true.i72.i:                                  ; preds = %err_normal_power.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i71.i = tail call i32 %32(ptr noundef %28, i32 noundef 2) #12
  br label %err_drop_count.i

err_drop_count.i:                                 ; preds = %cond.true.i72.i, %err_normal_power.i.err_drop_count.i_crit_edge, %hid_hw_power.exit.i.err_drop_count.i_crit_edge
  %error.0.i = phi i32 [ %call.i67.i, %hid_hw_power.exit.i.err_drop_count.i_crit_edge ], [ %call39.i, %err_normal_power.i.err_drop_count.i_crit_edge ], [ %call39.i, %cond.true.i72.i ]
  %33 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %open.i, align 4
  %dec.i = add i32 %34, -1
  store i32 %dec.i, ptr %open.i, align 4
  tail call void @vfree(ptr noundef nonnull %call24.i) #12
  br label %cond.end

cond.end:                                         ; preds = %err_drop_count.i, %list_add_tail.exit.i, %if.end.i.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %cond = phi i32 [ -19, %if.end.cond.end_crit_edge ], [ 0, %list_add_tail.exit.i ], [ %error.0.i, %err_drop_count.i ], [ -12, %if.end.i.cond.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %existancelock) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %cond.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiddev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hiddev = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hiddev, align 4
  %list_lock = getelementptr inbounds %struct.hiddev, ptr %3, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #12
  %node = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hiddev, align 4
  %list_lock6 = getelementptr inbounds %struct.hiddev, ptr %13, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock6, i32 noundef %call2) #12
  %14 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hiddev, align 4
  %existancelock = getelementptr inbounds %struct.hiddev, ptr %15, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %existancelock, i32 noundef 0) #12
  %16 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hiddev, align 4
  %open = getelementptr inbounds %struct.hiddev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %open, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %list_del.exit.if.end19_crit_edge

list_del.exit.if.end19_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then:                                          ; preds = %list_del.exit
  %20 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hiddev, align 4
  %exist = getelementptr inbounds %struct.hiddev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not = icmp eq i32 %23, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then
  %hid = getelementptr inbounds %struct.hiddev, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hid, align 4
  tail call void @hid_hw_close(ptr noundef %25) #12
  %26 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hiddev, align 4
  %hid14 = getelementptr inbounds %struct.hiddev, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %hid14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hid14, align 4
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.then11.if.end19_crit_edge, label %cond.true.i

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

cond.true.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %33(ptr noundef %29, i32 noundef 2) #12
  br label %if.end19

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %existancelock17 = getelementptr inbounds %struct.hiddev, ptr %21, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %existancelock17) #12
  %34 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hiddev, align 4
  tail call void @kfree(ptr noundef %35) #12
  br label %cleanup

if.end19:                                         ; preds = %cond.true.i, %if.then11.if.end19_crit_edge, %list_del.exit.if.end19_crit_edge
  %36 = ptrtoint ptr %hiddev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hiddev, align 4
  %existancelock21 = getelementptr inbounds %struct.hiddev, ptr %37, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %existancelock21) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.else
  tail call void @vfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiddev_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fasync = getelementptr inbounds %struct.hiddev_list, ptr %1, i32 0, i32 4
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %fasync) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hiddev_ioctl_string(ptr nocapture noundef readonly %hiddev, ptr noundef %user_arg) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hid1 = getelementptr inbounds %struct.hiddev, ptr %hiddev, i32 0, i32 5
  %0 = ptrtoint ptr %hid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hid1, align 4
  %parent = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %parent3 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent3, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -128
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 573) #12
  %6 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !53
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %user_arg, i32 -1226833921) #12, !srcloc !63
  %asmresult = extractvalue { i32, i32 } %9, 0
  %asmresult5 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 256) #15
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @usb_string(ptr noundef %add.ptr, i32 noundef %asmresult5, ptr noundef nonnull %call7.i, i32 noundef 255) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup.sink.split_crit_edge, label %if.end13

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end9
  %add.ptr14 = getelementptr i8, ptr %user_arg, i32 4
  %add = add nuw i32 %call10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call10)
  %cmp1.i.i = icmp ugt i32 %call10, 255
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !62

if.then3.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef 256, i32 noundef %add) #12
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %if.end13
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %add, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.cleanup.sink.split_crit_edge, label %if.end.i.i

if.then.i.i.i.cleanup.sink.split_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr14, i32 %add, i32 -1226833920) #17, !srcloc !51
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup.sink.split_crit_edge

if.end.i.i.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %add) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr14, ptr noundef nonnull %call7.i, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool16.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool16.not, i32 %call10, i32 -14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %copy_to_user.exit, %if.end.i.i.cleanup.sink.split_crit_edge, %if.then.i.i.i.cleanup.sink.split_crit_edge, %if.then3.i.i, %if.end9.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end9.cleanup.sink.split_crit_edge ], [ -14, %if.then3.i.i ], [ -14, %if.end.i.i.cleanup.sink.split_crit_edge ], [ -14, %if.then.i.i.i.cleanup.sink.split_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhid_init_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @hiddev_lookup_report(ptr noundef %hid, ptr nocapture noundef %rinfo) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %report_id = getelementptr inbounds %struct.hiddev_report_info, ptr %rinfo, i32 0, i32 1
  %0 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %report_id, align 4
  %and2 = and i32 %1, 255
  %2 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rinfo, align 4
  %4 = add i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %4)
  %5 = icmp ult i32 %4, -3
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, -256
  %report_enum5 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 15
  %sub = add nsw i32 %3, -1
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 256, label %sw.bb
    i32 512, label %sw.bb12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %report_list = getelementptr %struct.hid_report_enum, ptr %report_enum5, i32 %sub, i32 1
  %7 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %report_list, align 4
  %cmp.i.not = icmp eq ptr %8, %report_list
  br i1 %cmp.i.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.hid_report_enum, ptr %report_enum5, i32 %sub, i32 2, i32 %and2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %sw.bb12.cleanup_crit_edge, label %if.end15

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %sw.bb12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %report_list18 = getelementptr %struct.hid_report_enum, ptr %report_enum5, i32 %sub, i32 1
  %cmp19 = icmp eq ptr %12, %report_list18
  br i1 %cmp19, label %if.end15.cleanup_crit_edge, label %if.end15.sw.epilog.sink.split_crit_edge

if.end15.sw.epilog.sink.split_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.end15.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %8, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %12, %if.end15.sw.epilog.sink.split_crit_edge ]
  %id25 = getelementptr inbounds %struct.hid_report, ptr %.sink, i32 0, i32 2
  %13 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id25, align 4
  %15 = ptrtoint ptr %report_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %report_id, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %16 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %report_id, align 4
  %arrayidx29 = getelementptr %struct.hid_report_enum, ptr %report_enum5, i32 %sub, i32 2, i32 %17
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx29, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end15.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %sw.epilog ], [ null, %entry.cleanup_crit_edge ], [ null, %sw.bb.cleanup_crit_edge ], [ null, %sw.bb12.cleanup_crit_edge ], [ null, %if.end15.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hiddev_ioctl_usage(ptr nocapture noundef readonly %hiddev, i32 noundef %cmd, ptr noundef %user_arg) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hid1 = getelementptr inbounds %struct.hiddev, ptr %hiddev, i32 0, i32 5
  %0 = ptrtoint ptr %hid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hid1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 4124) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %cmd, label %if.end8.i.i334 [
    i32 -803452909, label %if.end.if.end8.i.i_crit_edge
    i32 1344030740, label %if.end.if.end8.i.i_crit_edge478
  ]

if.end.if.end8.i.i_crit_edge478:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end.if.end8.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.if.end8.i.i_crit_edge, %if.end.if.end8.i.i_crit_edge478
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_arg, i32 4124, i32 -1226833920) #17, !srcloc !59
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !49

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4124) #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !53
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i, ptr noundef %user_arg, i32 noundef 4124) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end13_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !49

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i.if.end13_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i424 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4124, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 4124, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4124, %res.0.i.i424
  br label %fault.sink.split

if.end8.i.i334:                                   ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #12
  %call.i.i335 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i335, label %if.end8.i.i334.if.then11.i.i351_crit_edge, label %land.lhs.true.i.i338

if.end8.i.i334.if.then11.i.i351_crit_edge:        ; preds = %if.end8.i.i334
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i351

land.lhs.true.i.i338:                             ; preds = %if.end8.i.i334
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_arg, i32 24, i32 -1226833920) #17, !srcloc !59
  %asmresult.i.i336 = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i336)
  %cmp.i6.i337 = icmp eq i32 %asmresult.i.i336, 0
  br i1 %cmp.i6.i337, label %if.end.i.i348, label %land.lhs.true.i.i338.if.then11.i.i351_crit_edge, !prof !49

land.lhs.true.i.i338.if.then11.i.i351_crit_edge:  ; preds = %land.lhs.true.i.i338
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i351

if.end.i.i348:                                    ; preds = %land.lhs.true.i.i338
  %call.i.i.i339 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 24) #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i.i340 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i340 to ptr
  %cpu_domain.i.i.i.i.i341 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i341) #6, !srcloc !53
  %and.i.i.i.i342 = and i32 %11, -13
  %or.i.i.i.i343 = or i32 %and.i.i.i.i342, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i343) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %call1.i.i.i344 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i, ptr noundef %user_arg, i32 noundef 24) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #12, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i344)
  %tobool4.not.i.i347 = icmp eq i32 %call1.i.i.i344, 0
  br i1 %tobool4.not.i.i347, label %if.end.i.i348.if.end13_crit_edge, label %if.end.i.i348.if.then11.i.i351_crit_edge, !prof !49

if.end.i.i348.if.then11.i.i351_crit_edge:         ; preds = %if.end.i.i348
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i351

if.end.i.i348.if.end13_crit_edge:                 ; preds = %if.end.i.i348
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11.i.i351:                                 ; preds = %if.end.i.i348.if.then11.i.i351_crit_edge, %land.lhs.true.i.i338.if.then11.i.i351_crit_edge, %if.end8.i.i334.if.then11.i.i351_crit_edge
  %res.0.i.i346429 = phi i32 [ %call1.i.i.i344, %if.end.i.i348.if.then11.i.i351_crit_edge ], [ 24, %if.end8.i.i334.if.then11.i.i351_crit_edge ], [ 24, %land.lhs.true.i.i338.if.then11.i.i351_crit_edge ]
  %sub.i.i349 = sub i32 24, %res.0.i.i346429
  br label %fault.sink.split

if.end13:                                         ; preds = %if.end.i.i348.if.end13_crit_edge, %if.end.i.i.if.end13_crit_edge
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %cmd, label %land.lhs.true59 [
    i32 -1072150515, label %sw.bb
    i32 -1072150517, label %if.end13.if.end63_crit_edge
    i32 -803452909, label %if.end13.if.end63_crit_edge479
  ]

if.end13.if.end63_crit_edge479:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.end13.if.end63_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

sw.bb:                                            ; preds = %if.end13
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call7.i, align 8
  %report_id = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %report_id, align 4
  %and2.i = and i32 %16, 255
  %17 = add i32 %14, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %17)
  %18 = icmp ult i32 %17, -3
  br i1 %18, label %sw.bb.cleanup.sink.split_crit_edge, label %if.end.i

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %sw.bb
  %and.i = and i32 %16, -256
  %report_enum5.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 15
  %sub.i = add nsw i32 %14, -1
  %19 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and.i, label %if.end.i.cleanup.sink.split_crit_edge [
    i32 0, label %if.end.i.hiddev_lookup_report.exit_crit_edge
    i32 256, label %sw.bb.i
    i32 512, label %sw.bb12.i
  ]

if.end.i.hiddev_lookup_report.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hiddev_lookup_report.exit

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb.i:                                          ; preds = %if.end.i
  %report_list.i = getelementptr %struct.hid_report_enum, ptr %report_enum5.i, i32 %sub.i, i32 1
  %20 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %report_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %report_list.i
  br i1 %cmp.i.not.i, label %sw.bb.i.cleanup.sink.split_crit_edge, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

sw.bb.i.cleanup.sink.split_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb12.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.hid_report_enum, ptr %report_enum5.i, i32 %sub.i, i32 2, i32 %and2.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool13.not.i = icmp eq ptr %23, null
  br i1 %tobool13.not.i, label %sw.bb12.i.cleanup.sink.split_crit_edge, label %if.end15.i

sw.bb12.i.cleanup.sink.split_crit_edge:           ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end15.i:                                       ; preds = %sw.bb12.i
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %report_list18.i = getelementptr %struct.hid_report_enum, ptr %report_enum5.i, i32 %sub.i, i32 1
  %cmp19.i = icmp eq ptr %25, %report_list18.i
  br i1 %cmp19.i, label %if.end15.i.cleanup.sink.split_crit_edge, label %if.end15.i.sw.epilog.sink.split.i_crit_edge

if.end15.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

if.end15.i.cleanup.sink.split_crit_edge:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.epilog.sink.split.i:                           ; preds = %if.end15.i.sw.epilog.sink.split.i_crit_edge, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %21, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ %25, %if.end15.i.sw.epilog.sink.split.i_crit_edge ]
  %id25.i = getelementptr inbounds %struct.hid_report, ptr %.sink.i, i32 0, i32 2
  %26 = ptrtoint ptr %id25.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id25.i, align 4
  br label %hiddev_lookup_report.exit

hiddev_lookup_report.exit:                        ; preds = %sw.epilog.sink.split.i, %if.end.i.hiddev_lookup_report.exit_crit_edge
  %rinfo.sroa.7.0 = phi i32 [ %27, %sw.epilog.sink.split.i ], [ %16, %if.end.i.hiddev_lookup_report.exit_crit_edge ]
  %arrayidx29.i = getelementptr %struct.hid_report_enum, ptr %report_enum5.i, i32 %sub.i, i32 2, i32 %rinfo.sroa.7.0
  %28 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx29.i, align 4
  %cmp17 = icmp eq ptr %29, null
  br i1 %cmp17, label %hiddev_lookup_report.exit.cleanup.sink.split_crit_edge, label %if.end19

hiddev_lookup_report.exit.cleanup.sink.split_crit_edge: ; preds = %hiddev_lookup_report.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end19:                                         ; preds = %hiddev_lookup_report.exit
  %field_index = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 2
  %30 = ptrtoint ptr %field_index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %field_index, align 8
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %29, i32 0, i32 6
  %32 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp20.not = icmp ult i32 %31, %33
  br i1 %cmp20.not, label %if.end22, label %if.end19.cleanup.sink.split_crit_edge

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end19
  %34 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %31, i32 %33) #12, !srcloc !60
  %and = and i32 %34, %31
  %35 = ptrtoint ptr %field_index to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and, ptr %field_index, align 8
  %arrayidx = getelementptr %struct.hid_report, ptr %29, i32 0, i32 5, i32 %and
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %usage_index = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 3
  %38 = ptrtoint ptr %usage_index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usage_index, align 4
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %maxusage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp32.not = icmp ult i32 %39, %41
  br i1 %cmp32.not, label %if.end34, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end34:                                         ; preds = %if.end22
  %42 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %39, i32 %41) #12, !srcloc !60
  %and48 = and i32 %42, %39
  %43 = ptrtoint ptr %usage_index to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and48, ptr %usage_index, align 4
  %usage = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 3
  %44 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usage, align 4
  %arrayidx51 = getelementptr %struct.hid_usage, ptr %45, i32 %and48
  %46 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx51, align 4
  %usage_code = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 4
  %48 = ptrtoint ptr %usage_code to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %usage_code, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i358 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i358, label %if.end34.fault_crit_edge, label %if.end.i.i361

if.end34.fault_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %fault

if.end.i.i361:                                    ; preds = %if.end34
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_arg, i32 24, i32 -1226833920) #17, !srcloc !51
  %asmresult.i.i359 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i359)
  %cmp.i6.i360 = icmp eq i32 %asmresult.i.i359, 0
  br i1 %cmp.i6.i360, label %copy_to_user.exit, label %if.end.i.i361.fault_crit_edge

if.end.i.i361.fault_crit_edge:                    ; preds = %if.end.i.i361
  call void @__sanitizer_cov_trace_pc() #14
  br label %fault

copy_to_user.exit:                                ; preds = %if.end.i.i361
  %call.i.i.i362 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef 24) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %user_arg, ptr noundef nonnull %call7.i, i32 noundef 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool54.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool54.not, label %copy_to_user.exit.cleanup.sink.split_crit_edge, label %copy_to_user.exit.fault_crit_edge

copy_to_user.exit.fault_crit_edge:                ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fault

copy_to_user.exit.cleanup.sink.split_crit_edge:   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true59:                                  ; preds = %if.end13
  %50 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp61 = icmp eq i32 %51, 1
  br i1 %cmp61, label %land.lhs.true59.cleanup.sink.split_crit_edge, label %land.lhs.true59.if.end63_crit_edge

land.lhs.true59.if.end63_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true59.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end63:                                         ; preds = %land.lhs.true59.if.end63_crit_edge, %if.end13.if.end63_crit_edge, %if.end13.if.end63_crit_edge479
  %report_id64 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 1
  %52 = ptrtoint ptr %report_id64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %report_id64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp65 = icmp eq i32 %53, -1
  %54 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call7.i, align 8
  br i1 %cmp65, label %if.then66, label %if.else71

if.then66:                                        ; preds = %if.end63
  %56 = add i32 %55, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %56)
  %57 = icmp ult i32 %56, -3
  br i1 %57, label %if.then66.cleanup.sink.split_crit_edge, label %if.end.i392

if.then66.cleanup.sink.split_crit_edge:           ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end.i392:                                      ; preds = %if.then66
  %report_enum3.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 15
  %sub.i390 = add nsw i32 %55, -1
  %report_list.i391 = getelementptr %struct.hid_report_enum, ptr %report_enum3.i, i32 %sub.i390, i32 1
  %58 = ptrtoint ptr %report_list.i391 to i32
  call void @__asan_load4_noabort(i32 %58)
  %report.061.i = load ptr, ptr %report_list.i391, align 4
  %cmp7.not62.i = icmp eq ptr %report.061.i, %report_list.i391
  br i1 %cmp7.not62.i, label %if.end.i392.cleanup.sink.split_crit_edge, label %for.cond8.preheader.lr.ph.i

if.end.i392.cleanup.sink.split_crit_edge:         ; preds = %if.end.i392
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.cond8.preheader.lr.ph.i:                      ; preds = %if.end.i392
  %usage_code.i = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 4
  br label %for.cond8.preheader.i

for.cond.loopexit.i:                              ; preds = %for.inc20.i.for.cond.loopexit.i_crit_edge, %for.cond8.preheader.i.for.cond.loopexit.i_crit_edge
  %59 = ptrtoint ptr %report.063.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %report.0.i = load ptr, ptr %report.063.i, align 4
  %cmp7.not.i = icmp eq ptr %report.0.i, %report_list.i391
  br i1 %cmp7.not.i, label %for.cond.loopexit.i.cleanup.sink.split_crit_edge, label %for.cond.loopexit.i.for.cond8.preheader.i_crit_edge

for.cond.loopexit.i.for.cond8.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond8.preheader.i

for.cond.loopexit.i.cleanup.sink.split_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.cond8.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.lr.ph.i
  %report.063.i = phi ptr [ %report.061.i, %for.cond8.preheader.lr.ph.i ], [ %report.0.i, %for.cond.loopexit.i.for.cond8.preheader.i_crit_edge ]
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %report.063.i, i32 0, i32 6
  %60 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp958.not.i = icmp eq i32 %61, 0
  br i1 %cmp958.not.i, label %for.cond8.preheader.i.for.cond.loopexit.i_crit_edge, label %for.cond8.preheader.i.for.body10.i_crit_edge

for.cond8.preheader.i.for.body10.i_crit_edge:     ; preds = %for.cond8.preheader.i
  br label %for.body10.i

for.cond8.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

for.body10.i:                                     ; preds = %for.inc20.i.for.body10.i_crit_edge, %for.cond8.preheader.i.for.body10.i_crit_edge
  %i.059.i = phi i32 [ %inc21.i, %for.inc20.i.for.body10.i_crit_edge ], [ 0, %for.cond8.preheader.i.for.body10.i_crit_edge ]
  %arrayidx.i393 = getelementptr %struct.hid_report, ptr %report.063.i, i32 0, i32 5, i32 %i.059.i
  %62 = ptrtoint ptr %arrayidx.i393 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i393, align 4
  %maxusage.i = getelementptr inbounds %struct.hid_field, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %maxusage.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %maxusage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp1356.not.i = icmp eq i32 %65, 0
  br i1 %cmp1356.not.i, label %for.body10.i.for.inc20.i_crit_edge, label %for.body14.lr.ph.i

for.body10.i.for.inc20.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc20.i

for.body14.lr.ph.i:                               ; preds = %for.body10.i
  %usage.i = getelementptr inbounds %struct.hid_field, ptr %63, i32 0, i32 3
  %66 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usage.i, align 4
  %68 = ptrtoint ptr %usage_code.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %usage_code.i, align 8
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.inc.i.for.body14.i_crit_edge, %for.body14.lr.ph.i
  %j.057.i = phi i32 [ 0, %for.body14.lr.ph.i ], [ %inc.i, %for.inc.i.for.body14.i_crit_edge ]
  %arrayidx15.i = getelementptr %struct.hid_usage, ptr %67, i32 %j.057.i
  %70 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %69)
  %cmp17.i = icmp eq i32 %71, %69
  br i1 %cmp17.i, label %hiddev_lookup_usage.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body14.i
  %inc.i = add nuw i32 %j.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %65
  br i1 %exitcond.not.i, label %for.inc.i.for.inc20.i_crit_edge, label %for.inc.i.for.body14.i_crit_edge

for.inc.i.for.body14.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14.i

for.inc.i.for.inc20.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %for.inc.i.for.inc20.i_crit_edge, %for.body10.i.for.inc20.i_crit_edge
  %inc21.i = add nuw i32 %i.059.i, 1
  %exitcond68.not.i = icmp eq i32 %inc21.i, %61
  br i1 %exitcond68.not.i, label %for.inc20.i.for.cond.loopexit.i_crit_edge, label %for.inc20.i.for.body10.i_crit_edge

for.inc20.i.for.body10.i_crit_edge:               ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10.i

for.inc20.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

hiddev_lookup_usage.exit:                         ; preds = %for.body14.i
  %id.i = getelementptr inbounds %struct.hid_report, ptr %report.063.i, i32 0, i32 2
  %72 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id.i, align 4
  %74 = ptrtoint ptr %report_id64 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %report_id64, align 4
  %field_index.i = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 2
  %75 = ptrtoint ptr %field_index.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %i.059.i, ptr %field_index.i, align 8
  %usage_index.i = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 3
  %76 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %j.057.i, ptr %usage_index.i, align 4
  %cmp68 = icmp eq ptr %63, null
  br i1 %cmp68, label %hiddev_lookup_usage.exit.cleanup.sink.split_crit_edge, label %hiddev_lookup_usage.exit.if.end131_crit_edge

hiddev_lookup_usage.exit.if.end131_crit_edge:     ; preds = %hiddev_lookup_usage.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

hiddev_lookup_usage.exit.cleanup.sink.split_crit_edge: ; preds = %hiddev_lookup_usage.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else71:                                        ; preds = %if.end63
  %and2.i397 = and i32 %53, 255
  %77 = add i32 %55, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %77)
  %78 = icmp ult i32 %77, -3
  br i1 %78, label %if.else71.cleanup.sink.split_crit_edge, label %if.end.i401

if.else71.cleanup.sink.split_crit_edge:           ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end.i401:                                      ; preds = %if.else71
  %and.i398 = and i32 %53, -256
  %report_enum5.i399 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 15
  %sub.i400 = add nsw i32 %55, -1
  %79 = zext i32 %and.i398 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %and.i398, label %if.end.i401.cleanup.sink.split_crit_edge [
    i32 0, label %if.end.i401.hiddev_lookup_report.exit417_crit_edge
    i32 256, label %sw.bb.i404
    i32 512, label %sw.bb12.i407
  ]

if.end.i401.hiddev_lookup_report.exit417_crit_edge: ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #14
  br label %hiddev_lookup_report.exit417

if.end.i401.cleanup.sink.split_crit_edge:         ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb.i404:                                       ; preds = %if.end.i401
  %report_list.i402 = getelementptr %struct.hid_report_enum, ptr %report_enum5.i399, i32 %sub.i400, i32 1
  %80 = ptrtoint ptr %report_list.i402 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %report_list.i402, align 4
  %cmp.i.not.i403 = icmp eq ptr %81, %report_list.i402
  br i1 %cmp.i.not.i403, label %sw.bb.i404.cleanup.sink.split_crit_edge, label %sw.bb.i404.sw.epilog.sink.split.i413_crit_edge

sw.bb.i404.sw.epilog.sink.split.i413_crit_edge:   ; preds = %sw.bb.i404
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i413

sw.bb.i404.cleanup.sink.split_crit_edge:          ; preds = %sw.bb.i404
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb12.i407:                                     ; preds = %if.end.i401
  %arrayidx.i405 = getelementptr %struct.hid_report_enum, ptr %report_enum5.i399, i32 %sub.i400, i32 2, i32 %and2.i397
  %82 = ptrtoint ptr %arrayidx.i405 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i405, align 4
  %tobool13.not.i406 = icmp eq ptr %83, null
  br i1 %tobool13.not.i406, label %sw.bb12.i407.cleanup.sink.split_crit_edge, label %if.end15.i410

sw.bb12.i407.cleanup.sink.split_crit_edge:        ; preds = %sw.bb12.i407
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end15.i410:                                    ; preds = %sw.bb12.i407
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %report_list18.i408 = getelementptr %struct.hid_report_enum, ptr %report_enum5.i399, i32 %sub.i400, i32 1
  %cmp19.i409 = icmp eq ptr %85, %report_list18.i408
  br i1 %cmp19.i409, label %if.end15.i410.cleanup.sink.split_crit_edge, label %if.end15.i410.sw.epilog.sink.split.i413_crit_edge

if.end15.i410.sw.epilog.sink.split.i413_crit_edge: ; preds = %if.end15.i410
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i413

if.end15.i410.cleanup.sink.split_crit_edge:       ; preds = %if.end15.i410
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.epilog.sink.split.i413:                        ; preds = %if.end15.i410.sw.epilog.sink.split.i413_crit_edge, %sw.bb.i404.sw.epilog.sink.split.i413_crit_edge
  %.sink.i411 = phi ptr [ %81, %sw.bb.i404.sw.epilog.sink.split.i413_crit_edge ], [ %85, %if.end15.i410.sw.epilog.sink.split.i413_crit_edge ]
  %id25.i412 = getelementptr inbounds %struct.hid_report, ptr %.sink.i411, i32 0, i32 2
  %86 = ptrtoint ptr %id25.i412 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %id25.i412, align 4
  br label %hiddev_lookup_report.exit417

hiddev_lookup_report.exit417:                     ; preds = %sw.epilog.sink.split.i413, %if.end.i401.hiddev_lookup_report.exit417_crit_edge
  %rinfo.sroa.7.1 = phi i32 [ %87, %sw.epilog.sink.split.i413 ], [ %53, %if.end.i401.hiddev_lookup_report.exit417_crit_edge ]
  %arrayidx29.i414 = getelementptr %struct.hid_report_enum, ptr %report_enum5.i399, i32 %sub.i400, i32 2, i32 %rinfo.sroa.7.1
  %88 = ptrtoint ptr %arrayidx29.i414 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx29.i414, align 4
  %cmp77 = icmp eq ptr %89, null
  br i1 %cmp77, label %hiddev_lookup_report.exit417.cleanup.sink.split_crit_edge, label %if.end79

hiddev_lookup_report.exit417.cleanup.sink.split_crit_edge: ; preds = %hiddev_lookup_report.exit417
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end79:                                         ; preds = %hiddev_lookup_report.exit417
  %field_index80 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 2
  %90 = ptrtoint ptr %field_index80 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %field_index80, align 8
  %maxfield81 = getelementptr inbounds %struct.hid_report, ptr %89, i32 0, i32 6
  %92 = ptrtoint ptr %maxfield81 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %maxfield81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp82.not = icmp ult i32 %91, %93
  br i1 %cmp82.not, label %if.end84, label %if.end79.cleanup.sink.split_crit_edge

if.end79.cleanup.sink.split_crit_edge:            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end84:                                         ; preds = %if.end79
  %94 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %91, i32 %93) #12, !srcloc !60
  %and98 = and i32 %94, %91
  %95 = ptrtoint ptr %field_index80 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and98, ptr %field_index80, align 8
  %arrayidx102 = getelementptr %struct.hid_report, ptr %89, i32 0, i32 5, i32 %and98
  %96 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1075333136, i32 %cmd)
  %cmp103 = icmp eq i32 %cmd, 1075333136
  %usage_index105 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 3
  %98 = ptrtoint ptr %usage_index105 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %usage_index105, align 4
  br i1 %cmp103, label %if.then104, label %if.else125

if.then104:                                       ; preds = %if.end84
  %maxusage106 = getelementptr inbounds %struct.hid_field, ptr %97, i32 0, i32 4
  %100 = ptrtoint ptr %maxusage106 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %maxusage106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp107.not = icmp ult i32 %99, %101
  br i1 %cmp107.not, label %if.end131.thread, label %if.then104.cleanup.sink.split_crit_edge

if.then104.cleanup.sink.split_crit_edge:          ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end131.thread:                                 ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  %102 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %99, i32 %101) #12, !srcloc !60
  %and123 = and i32 %102, %99
  %103 = ptrtoint ptr %usage_index105 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and123, ptr %usage_index105, align 4
  br label %sw.bb184

if.else125:                                       ; preds = %if.end84
  %report_count = getelementptr inbounds %struct.hid_field, ptr %97, i32 0, i32 8
  %104 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %report_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %105)
  %cmp127.not = icmp ult i32 %99, %105
  br i1 %cmp127.not, label %if.else125.if.end131_crit_edge, label %if.else125.cleanup.sink.split_crit_edge

if.else125.cleanup.sink.split_crit_edge:          ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else125.if.end131_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.end131:                                        ; preds = %if.else125.if.end131_crit_edge, %hiddev_lookup_usage.exit.if.end131_crit_edge
  %field.0 = phi ptr [ %63, %hiddev_lookup_usage.exit.if.end131_crit_edge ], [ %97, %if.else125.if.end131_crit_edge ]
  %106 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cmd, label %if.end131.cleanup.sink.split_crit_edge [
    i32 -803452909, label %if.end131.if.then135_crit_edge
    i32 1344030740, label %if.end131.if.then135_crit_edge480
    i32 -1072150517, label %if.end131.sw.bb161_crit_edge
    i32 1075333132, label %sw.bb174
    i32 1075333136, label %if.end131.sw.bb184_crit_edge
  ]

if.end131.sw.bb184_crit_edge:                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb184

if.end131.sw.bb161_crit_edge:                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb161

if.end131.if.then135_crit_edge480:                ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then135

if.end131.if.then135_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then135

if.end131.cleanup.sink.split_crit_edge:           ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then135:                                       ; preds = %if.end131.if.then135_crit_edge, %if.end131.if.then135_crit_edge480
  %num_values = getelementptr inbounds %struct.hiddev_usage_ref_multi, ptr %call7.i, i32 0, i32 1
  %107 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_values, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %108)
  %cmp136 = icmp ugt i32 %108, 1024
  br i1 %cmp136, label %if.then135.cleanup.sink.split_crit_edge, label %lor.lhs.false137

if.then135.cleanup.sink.split_crit_edge:          ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

lor.lhs.false137:                                 ; preds = %if.then135
  %usage_index138 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 3
  %109 = ptrtoint ptr %usage_index138 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %usage_index138, align 4
  %add = add i32 %110, %108
  %report_count140 = getelementptr inbounds %struct.hid_field, ptr %field.0, i32 0, i32 8
  %111 = ptrtoint ptr %report_count140 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %report_count140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %112)
  %cmp141 = icmp ugt i32 %add, %112
  br i1 %cmp141, label %lor.lhs.false137.cleanup.sink.split_crit_edge, label %if.end143

lor.lhs.false137.cleanup.sink.split_crit_edge:    ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end143:                                        ; preds = %lor.lhs.false137
  %sub = sub i32 %112, %108
  %113 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %110, i32 %sub) #12, !srcloc !60
  %and158 = and i32 %113, %110
  %114 = ptrtoint ptr %usage_index138 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and158, ptr %usage_index138, align 4
  %115 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %cmd, label %if.end143.cleanup.sink.split_crit_edge [
    i32 -1072150517, label %if.end143.sw.bb161_crit_edge
    i32 1344030740, label %for.cond201.preheader
    i32 -803452909, label %for.cond.preheader
  ]

if.end143.sw.bb161_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb161

if.end143.cleanup.sink.split_crit_edge:           ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end143
  %116 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_values, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp190452.not = icmp eq i32 %117, 0
  br i1 %cmp190452.not, label %for.cond.preheader.if.end8.i.i380_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end8.i.i380_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i380

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %value191 = getelementptr inbounds %struct.hid_field, ptr %field.0, i32 0, i32 10
  br label %for.body

for.cond201.preheader:                            ; preds = %if.end143
  %118 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_values, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp203454.not = icmp eq i32 %119, 0
  br i1 %cmp203454.not, label %for.cond201.preheader.cleanup.sink.split_crit_edge, label %for.body204.lr.ph

for.cond201.preheader.cleanup.sink.split_crit_edge: ; preds = %for.cond201.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.body204.lr.ph:                                ; preds = %for.cond201.preheader
  %value207 = getelementptr inbounds %struct.hid_field, ptr %field.0, i32 0, i32 10
  br label %for.body204

sw.bb161:                                         ; preds = %if.end143.sw.bb161_crit_edge, %if.end131.sw.bb161_crit_edge
  %usage_index162 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 3
  %120 = ptrtoint ptr %usage_index162 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %usage_index162, align 4
  %report_count163 = getelementptr inbounds %struct.hid_field, ptr %field.0, i32 0, i32 8
  %122 = ptrtoint ptr %report_count163 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %report_count163, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %123)
  %cmp164.not = icmp ult i32 %121, %123
  br i1 %cmp164.not, label %if.end166, label %sw.bb161.cleanup.sink.split_crit_edge

sw.bb161.cleanup.sink.split_crit_edge:            ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end166:                                        ; preds = %sw.bb161
  %value = getelementptr inbounds %struct.hid_field, ptr %field.0, i32 0, i32 10
  %124 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %value, align 4
  %arrayidx168 = getelementptr i32, ptr %125, i32 %121
  %126 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx168, align 4
  %value169 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 5
  %128 = ptrtoint ptr %value169 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %value169, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i368 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i368, label %if.end166.fault_crit_edge, label %if.end.i.i371

if.end166.fault_crit_edge:                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %fault

if.end.i.i371:                                    ; preds = %if.end166
  %129 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_arg, i32 24, i32 -1226833920) #17, !srcloc !51
  %asmresult.i.i369 = extractvalue { i32, i32 } %129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i369)
  %cmp.i6.i370 = icmp eq i32 %asmresult.i.i369, 0
  br i1 %cmp.i6.i370, label %copy_to_user.exit376, label %if.end.i.i371.fault_crit_edge

if.end.i.i371.fault_crit_edge:                    ; preds = %if.end.i.i371
  call void @__sanitizer_cov_trace_pc() #14
  br label %fault

copy_to_user.exit376:                             ; preds = %if.end.i.i371
  %call.i.i.i372 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef 24) #12
  %call.i12.i.i373 = tail call i32 @arm_copy_to_user(ptr noundef %user_arg, ptr noundef nonnull %call7.i, i32 noundef 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i373)
  %tobool171.not = icmp eq i32 %call.i12.i.i373, 0
  br i1 %tobool171.not, label %copy_to_user.exit376.cleanup.sink.split_crit_edge, label %copy_to_user.exit376.fault_crit_edge

copy_to_user.exit376.fault_crit_edge:             ; preds = %copy_to_user.exit376
  call void @__sanitizer_cov_trace_pc() #14
  br label %fault

copy_to_user.exit376.cleanup.sink.split_crit_edge: ; preds = %copy_to_user.exit376
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb174:                                         ; preds = %if.end131
  %usage_index175 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 3
  %130 = ptrtoint ptr %usage_index175 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %usage_index175, align 4
  %report_count176 = getelementptr inbounds %struct.hid_field, ptr %field.0, i32 0, i32 8
  %132 = ptrtoint ptr %report_count176 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %report_count176, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp177.not = icmp ult i32 %131, %133
  br i1 %cmp177.not, label %if.end179, label %sw.bb174.cleanup.sink.split_crit_edge

sw.bb174.cleanup.sink.split_crit_edge:            ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end179:                                        ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #14
  %value180 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 5
  %134 = ptrtoint ptr %value180 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %value180, align 4
  %value181 = getelementptr inbounds %struct.hid_field, ptr %field.0, i32 0, i32 10
  %136 = ptrtoint ptr %value181 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %value181, align 4
  %arrayidx183 = getelementptr i32, ptr %137, i32 %131
  %138 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %135, ptr %arrayidx183, align 4
  br label %cleanup.sink.split

sw.bb184:                                         ; preds = %if.end131.sw.bb184_crit_edge, %if.end131.thread
  %field.0441 = phi ptr [ %97, %if.end131.thread ], [ %field.0, %if.end131.sw.bb184_crit_edge ]
  %usage185 = getelementptr inbounds %struct.hid_field, ptr %field.0441, i32 0, i32 3
  %139 = ptrtoint ptr %usage185 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %usage185, align 4
  %usage_index186 = getelementptr inbounds %struct.hiddev_usage_ref, ptr %call7.i, i32 0, i32 3
  %141 = ptrtoint ptr %usage_index186 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %usage_index186, align 4
  %collection_index = getelementptr %struct.hid_usage, ptr %140, i32 %142, i32 1
  %143 = ptrtoint ptr %collection_index to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %collection_index, align 4
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0453 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %145 = ptrtoint ptr %value191 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %value191, align 4
  %147 = ptrtoint ptr %usage_index138 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %usage_index138, align 4
  %add193 = add i32 %148, %i.0453
  %arrayidx194 = getelementptr i32, ptr %146, i32 %add193
  %149 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx194, align 4
  %arrayidx195 = getelementptr %struct.hiddev_usage_ref_multi, ptr %call7.i, i32 0, i32 2, i32 %i.0453
  %151 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx195, align 4
  %inc = add nuw i32 %i.0453, 1
  %152 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_values, align 8
  %cmp190 = icmp ult i32 %inc, %153
  br i1 %cmp190, label %for.body.for.body_crit_edge, label %for.body.if.end8.i.i380_crit_edge

for.body.if.end8.i.i380_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i380

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end8.i.i380:                                   ; preds = %for.body.if.end8.i.i380_crit_edge, %for.cond.preheader.if.end8.i.i380_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #12
  %call.i.i381 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i381, label %if.end8.i.i380.fault_crit_edge, label %if.end.i.i384

if.end8.i.i380.fault_crit_edge:                   ; preds = %if.end8.i.i380
  call void @__sanitizer_cov_trace_pc() #14
  br label %fault

if.end.i.i384:                                    ; preds = %if.end8.i.i380
  %154 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_arg, i32 4124, i32 -1226833920) #17, !srcloc !51
  %asmresult.i.i382 = extractvalue { i32, i32 } %154, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i382)
  %cmp.i6.i383 = icmp eq i32 %asmresult.i.i382, 0
  br i1 %cmp.i6.i383, label %copy_to_user.exit389, label %if.end.i.i384.fault_crit_edge

if.end.i.i384.fault_crit_edge:                    ; preds = %if.end.i.i384
  call void @__sanitizer_cov_trace_pc() #14
  br label %fault

copy_to_user.exit389:                             ; preds = %if.end.i.i384
  %call.i.i.i385 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef 4124) #12
  %call.i12.i.i386 = tail call i32 @arm_copy_to_user(ptr noundef %user_arg, ptr noundef nonnull %call7.i, i32 noundef 4124) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i386)
  %tobool197.not = icmp eq i32 %call.i12.i.i386, 0
  br i1 %tobool197.not, label %copy_to_user.exit389.cleanup.sink.split_crit_edge, label %copy_to_user.exit389.fault_crit_edge

copy_to_user.exit389.fault_crit_edge:             ; preds = %copy_to_user.exit389
  call void @__sanitizer_cov_trace_pc() #14
  br label %fault

copy_to_user.exit389.cleanup.sink.split_crit_edge: ; preds = %copy_to_user.exit389
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.body204:                                      ; preds = %for.body204.for.body204_crit_edge, %for.body204.lr.ph
  %i.1455 = phi i32 [ 0, %for.body204.lr.ph ], [ %inc212, %for.body204.for.body204_crit_edge ]
  %arrayidx206 = getelementptr %struct.hiddev_usage_ref_multi, ptr %call7.i, i32 0, i32 2, i32 %i.1455
  %155 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx206, align 4
  %157 = ptrtoint ptr %value207 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %value207, align 4
  %159 = ptrtoint ptr %usage_index138 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %usage_index138, align 4
  %add209 = add i32 %160, %i.1455
  %arrayidx210 = getelementptr i32, ptr %158, i32 %add209
  %161 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %156, ptr %arrayidx210, align 4
  %inc212 = add nuw i32 %i.1455, 1
  %162 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %num_values, align 8
  %cmp203 = icmp ult i32 %inc212, %163
  br i1 %cmp203, label %for.body204.for.body204_crit_edge, label %for.body204.cleanup.sink.split_crit_edge

for.body204.cleanup.sink.split_crit_edge:         ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.body204.for.body204_crit_edge:                ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body204

fault.sink.split:                                 ; preds = %if.then11.i.i351, %if.then11.i.i
  %sub.i.i349.sink = phi i32 [ %sub.i.i349, %if.then11.i.i351 ], [ %sub.i.i, %if.then11.i.i ]
  %res.0.i.i346429.sink = phi i32 [ %res.0.i.i346429, %if.then11.i.i351 ], [ %res.0.i.i424, %if.then11.i.i ]
  %add.ptr.i.i350 = getelementptr i8, ptr %call7.i, i32 %sub.i.i349.sink
  %164 = call ptr @memset(ptr %add.ptr.i.i350, i32 0, i32 %res.0.i.i346429.sink)
  br label %fault

fault:                                            ; preds = %fault.sink.split, %copy_to_user.exit389.fault_crit_edge, %if.end.i.i384.fault_crit_edge, %if.end8.i.i380.fault_crit_edge, %copy_to_user.exit376.fault_crit_edge, %if.end.i.i371.fault_crit_edge, %if.end166.fault_crit_edge, %copy_to_user.exit.fault_crit_edge, %if.end.i.i361.fault_crit_edge, %if.end34.fault_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %fault, %for.body204.cleanup.sink.split_crit_edge, %copy_to_user.exit389.cleanup.sink.split_crit_edge, %sw.bb184, %if.end179, %sw.bb174.cleanup.sink.split_crit_edge, %copy_to_user.exit376.cleanup.sink.split_crit_edge, %sw.bb161.cleanup.sink.split_crit_edge, %for.cond201.preheader.cleanup.sink.split_crit_edge, %if.end143.cleanup.sink.split_crit_edge, %lor.lhs.false137.cleanup.sink.split_crit_edge, %if.then135.cleanup.sink.split_crit_edge, %if.end131.cleanup.sink.split_crit_edge, %if.else125.cleanup.sink.split_crit_edge, %if.then104.cleanup.sink.split_crit_edge, %if.end79.cleanup.sink.split_crit_edge, %hiddev_lookup_report.exit417.cleanup.sink.split_crit_edge, %if.end15.i410.cleanup.sink.split_crit_edge, %sw.bb12.i407.cleanup.sink.split_crit_edge, %sw.bb.i404.cleanup.sink.split_crit_edge, %if.end.i401.cleanup.sink.split_crit_edge, %if.else71.cleanup.sink.split_crit_edge, %hiddev_lookup_usage.exit.cleanup.sink.split_crit_edge, %for.cond.loopexit.i.cleanup.sink.split_crit_edge, %if.end.i392.cleanup.sink.split_crit_edge, %if.then66.cleanup.sink.split_crit_edge, %land.lhs.true59.cleanup.sink.split_crit_edge, %copy_to_user.exit.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge, %if.end19.cleanup.sink.split_crit_edge, %hiddev_lookup_report.exit.cleanup.sink.split_crit_edge, %if.end15.i.cleanup.sink.split_crit_edge, %sw.bb12.i.cleanup.sink.split_crit_edge, %sw.bb.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %144, %sw.bb184 ], [ -14, %fault ], [ 0, %for.cond201.preheader.cleanup.sink.split_crit_edge ], [ 0, %if.end131.cleanup.sink.split_crit_edge ], [ 0, %if.end143.cleanup.sink.split_crit_edge ], [ 0, %copy_to_user.exit389.cleanup.sink.split_crit_edge ], [ 0, %copy_to_user.exit376.cleanup.sink.split_crit_edge ], [ 0, %copy_to_user.exit.cleanup.sink.split_crit_edge ], [ 0, %if.end179 ], [ -22, %if.end.i401.cleanup.sink.split_crit_edge ], [ -22, %if.end15.i410.cleanup.sink.split_crit_edge ], [ -22, %sw.bb12.i407.cleanup.sink.split_crit_edge ], [ -22, %sw.bb.i404.cleanup.sink.split_crit_edge ], [ -22, %if.else71.cleanup.sink.split_crit_edge ], [ -22, %if.end.i392.cleanup.sink.split_crit_edge ], [ -22, %if.then66.cleanup.sink.split_crit_edge ], [ -22, %if.end.i.cleanup.sink.split_crit_edge ], [ -22, %if.end15.i.cleanup.sink.split_crit_edge ], [ -22, %sw.bb12.i.cleanup.sink.split_crit_edge ], [ -22, %sw.bb.i.cleanup.sink.split_crit_edge ], [ -22, %sw.bb.cleanup.sink.split_crit_edge ], [ -22, %sw.bb174.cleanup.sink.split_crit_edge ], [ -22, %sw.bb161.cleanup.sink.split_crit_edge ], [ -22, %if.then135.cleanup.sink.split_crit_edge ], [ -22, %lor.lhs.false137.cleanup.sink.split_crit_edge ], [ -22, %if.else125.cleanup.sink.split_crit_edge ], [ -22, %if.then104.cleanup.sink.split_crit_edge ], [ -22, %if.end79.cleanup.sink.split_crit_edge ], [ -22, %hiddev_lookup_report.exit417.cleanup.sink.split_crit_edge ], [ -22, %hiddev_lookup_usage.exit.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true59.cleanup.sink.split_crit_edge ], [ -22, %if.end22.cleanup.sink.split_crit_edge ], [ -22, %if.end19.cleanup.sink.split_crit_edge ], [ -22, %hiddev_lookup_report.exit.cleanup.sink.split_crit_edge ], [ 0, %for.body204.cleanup.sink.split_crit_edge ], [ -22, %for.cond.loopexit.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhid_find_interface(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__ksymtab_hiddev_hid_event, !1, !"__ksymtab_hiddev_hid_event", i1 false, i1 false}
!1 = !{!"../drivers/hid/usbhid/hiddev.c", i32 184, i32 1}
!2 = !{ptr @hiddev_connect.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/hid/usbhid/hiddev.c", i32 896, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hiddev_connect.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/hid/usbhid/hiddev.c", i32 898, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hiddev_connect.__key.3, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/hid/usbhid/hiddev.c", i32 899, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/usbhid/hiddev.c", i32 905, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @hiddev_connect._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @hiddev_connect._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/usbhid/hiddev.c", i32 866, i32 11}
!21 = !{ptr @hiddev_class, !22, !"hiddev_class", i1 false, i1 false}
!22 = !{!"../drivers/hid/usbhid/hiddev.c", i32 865, i32 32}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hid/usbhid/hiddev.c", i32 862, i32 31}
!25 = !{ptr @hiddev_fops, !26, !"hiddev_fops", i1 false, i1 false}
!26 = !{!"../drivers/hid/usbhid/hiddev.c", i32 847, i32 37}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/hid/usbhid/hiddev.c", i32 362, i32 5}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!36 = !{ptr @__hiddev_open.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/hid/usbhid/hiddev.c", i32 255, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2154249959}
!51 = !{i64 2152190282, i64 2152190307}
!52 = !{!"auto-init"}
!53 = !{i64 4685156}
!54 = !{i64 4685353}
!55 = !{i64 2152170586}
!56 = !{i64 2154301532, i64 2154301812, i64 2154302146, i64 2154302480}
!57 = !{i64 2154314365, i64 2154314645, i64 2154314979, i64 2154315313}
!58 = !{i64 2154326641, i64 2154326921, i64 2154327255, i64 2154327589}
!59 = !{i64 2152189601, i64 2152189626}
!60 = !{i64 679195, i64 679212}
!61 = !{i8 0, i8 2}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2154291015, i64 2154291295, i64 2154291629, i64 2154291963}
