; ModuleID = '/llk/IR_all_yes/drivers/hid/hidraw.c_pt.bc'
source_filename = "../drivers/hid/hidraw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hidraw_report_event\22, \22a\22\09"
module asm "\09.weak\09__crc_hidraw_report_event\09\09\09\09"
module asm "\09.long\09__crc_hidraw_report_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidraw_report_event:\09\09\09\09\09"
module asm "\09.asciz \09\22hidraw_report_event\22\09\09\09\09\09"
module asm "__kstrtabns_hidraw_report_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hidraw_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_hidraw_connect\09\09\09\09"
module asm "\09.long\09__crc_hidraw_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidraw_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22hidraw_connect\22\09\09\09\09\09"
module asm "__kstrtabns_hidraw_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hidraw_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_hidraw_disconnect\09\09\09\09"
module asm "\09.long\09__crc_hidraw_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidraw_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22hidraw_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_hidraw_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hidraw = type { i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.spinlock, %struct.list_head }
%struct.hidraw_report = type { ptr, i32 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hidraw_list = type { [64 x %struct.hidraw_report], i32, i32, ptr, ptr, %struct.list_head, %struct.mutex }
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
%struct.hidraw_devinfo = type { i32, i16, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.64 = type { ptr }

@__kstrtab_hidraw_report_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidraw_report_event = external dso_local constant [0 x i8], align 1
@__ksymtab_hidraw_report_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidraw_report_event to i32), ptr @__kstrtab_hidraw_report_event, ptr @__kstrtabns_hidraw_report_event }, section "___ksymtab_gpl+hidraw_report_event", align 4
@minors_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @minors_rwsem, i64 56), ptr getelementptr (i8, ptr @minors_rwsem, i64 56) }, ptr @minors_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@hidraw_table = internal global { [64 x ptr], [64 x i8] } zeroinitializer, align 32
@hidraw_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hidraw_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hidraw\00", [25 x i8] zeroinitializer }, align 32
@hidraw_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->wait\00", [21 x i8] zeroinitializer }, align 32
@hidraw_connect.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->list_lock\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_hidraw_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidraw_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_hidraw_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidraw_connect to i32), ptr @__kstrtab_hidraw_connect, ptr @__kstrtabns_hidraw_connect }, section "___ksymtab_gpl+hidraw_connect", align 4
@__kstrtab_hidraw_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidraw_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_hidraw_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidraw_disconnect to i32), ptr @__kstrtab_hidraw_disconnect, ptr @__kstrtabns_hidraw_disconnect }, section "___ksymtab_gpl+hidraw_disconnect", align 4
@hidraw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014hid: can't get major number\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hidraw_init\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hid/hidraw.c\00", [43 x i8] zeroinitializer }, align 32
@hidraw_init._entry_ptr = internal global ptr @hidraw_init._entry, section ".printk_index", align 4
@hidraw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hidraw_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@hidraw_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @hidraw_read, ptr @hidraw_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hidraw_poll, ptr @hidraw_ioctl, ptr null, ptr null, i32 0, ptr @hidraw_open, ptr null, ptr @hidraw_release, ptr null, ptr @hidraw_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hidraw_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016hid: raw HID events driver (C) Jiri Kosina\0A\00", [50 x i8] zeroinitializer }, align 32
@hidraw_init._entry_ptr.10 = internal global ptr @hidraw_init._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"minors_rwsem.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"minors_rwsem\00", [19 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@hidraw_send_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.7, i32 121, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pid %d passed too large report\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hidraw_send_report\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hidraw_send_report._entry_ptr = internal global ptr @hidraw_send_report._entry, section ".printk_index", align 4
@hidraw_send_report._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.7, i32 128, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pid %d passed too short report\0A\00", [32 x i8] zeroinitializer }, align 32
@hidraw_send_report._entry_ptr.24 = internal global ptr @hidraw_send_report._entry.22, section ".printk_index", align 4
@hidraw_get_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.25, ptr @.str.7, i32 201, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hidraw_get_report\00", [46 x i8] zeroinitializer }, align 32
@hidraw_get_report._entry_ptr = internal global ptr @hidraw_get_report._entry, section ".printk_index", align 4
@hidraw_get_report._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.25, ptr @.str.7, i32 208, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@hidraw_get_report._entry_ptr.27 = internal global ptr @hidraw_get_report._entry.26, section ".printk_index", align 4
@hidraw_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&list->read_mutex\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2147764225, i64 2148026371, i64 2416199682]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 8, i64 6, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 8]
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"minors_rwsem\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"hidraw_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 36, i32 23 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"hidraw_class\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 35, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"hidraw_major\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 33, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 566, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 566, i32 20 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 576, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 577, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 613, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 619, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"hidraw_cdev\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 34, i32 20 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"hidraw_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 494, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 630, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 37, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 230, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 214, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 174, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 120, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 127, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 200, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 207, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [24 x i8] c"../drivers/hid/hidraw.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 298, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__ksymtab_hidraw_connect, ptr @__ksymtab_hidraw_disconnect, ptr @__ksymtab_hidraw_report_event, ptr @hidraw_get_report._entry, ptr @hidraw_get_report._entry.26, ptr @hidraw_get_report._entry_ptr, ptr @hidraw_get_report._entry_ptr.27, ptr @hidraw_init._entry, ptr @hidraw_init._entry.8, ptr @hidraw_init._entry_ptr, ptr @hidraw_init._entry_ptr.10, ptr @hidraw_send_report._entry, ptr @hidraw_send_report._entry.22, ptr @hidraw_send_report._entry_ptr, ptr @hidraw_send_report._entry_ptr.24, ptr @minors_rwsem, ptr @hidraw_table, ptr @hidraw_class, ptr @hidraw_major, ptr @.str, ptr @.str.1, ptr @hidraw_connect.__key, ptr @.str.2, ptr @hidraw_connect.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @hidraw_init.__key, ptr @hidraw_cdev, ptr @hidraw_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @hidraw_open.__key, ptr @.str.28], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minors_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_connect.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_send_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_send_report._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_get_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_get_report._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidraw_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidraw_report_event(ptr nocapture noundef readonly %hid, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hidraw = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 38
  %0 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hidraw, align 4
  %list_lock = getelementptr inbounds %struct.hidraw, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #10
  %list5 = getelementptr inbounds %struct.hidraw, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %list5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn50 = load ptr, ptr %list5, align 4
  %cmp8.not52 = icmp eq ptr %.pn50, %list5
  br i1 %cmp8.not52, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn53 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn50, %entry.for.body_crit_edge ]
  %list.054 = getelementptr i8, ptr %.pn53, i32 -528
  %head = getelementptr i8, ptr %.pn53, i32 -16
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %head, align 4
  %add = add i32 %4, 1
  %and = and i32 %add, 63
  %tail = getelementptr i8, ptr %.pn53, i32 -12
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %6)
  %cmp10 = icmp eq i32 %and, %6
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call12 = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %len, i32 noundef 2592) #10
  %7 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %head, align 4
  %arrayidx = getelementptr [64 x %struct.hidraw_report], ptr %list.054, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end15

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head, align 4
  %arrayidx18 = getelementptr [64 x %struct.hidraw_report], ptr %list.054, i32 0, i32 %11
  %len19 = getelementptr inbounds %struct.hidraw_report, ptr %arrayidx18, i32 0, i32 1
  %12 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %len19, align 4
  store i32 %and, ptr %head, align 4
  %fasync = getelementptr i8, ptr %.pn53, i32 -8
  tail call void @kill_fasync(ptr noundef %fasync, i32 noundef 29, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %for.body.cleanup_crit_edge
  %13 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn53, align 4
  %cmp8.not = icmp eq ptr %.pn, %list5
  br i1 %cmp8.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -12, %if.end.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call2) #10
  %wait = getelementptr inbounds %struct.hidraw, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidraw_connect(ptr noundef %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_write(ptr noundef nonnull @minors_rwsem) #10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %minor.051 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x ptr], ptr @hidraw_table, i32 0, i32 %minor.051
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end7, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %minor.051, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %if.then6, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then6:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef nonnull @minors_rwsem) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end7:                                          ; preds = %for.body
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %4 = load ptr, ptr @hidraw_class, align 4
  %dev8 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %5 = load i32, ptr @hidraw_major, align 4
  %shl = shl i32 %5, 20
  %or = or i32 %shl, %minor.051
  %call9 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %4, ptr noundef %dev8, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %minor.051) #10
  %dev10 = getelementptr inbounds %struct.hidraw, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %dev10, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %do.body

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  tail call void @up_write(ptr noundef nonnull @minors_rwsem) #10
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 4
  %10 = ptrtoint ptr %9 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %wait = getelementptr inbounds %struct.hidraw, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @hidraw_connect.__key) #10
  %list_lock = getelementptr inbounds %struct.hidraw, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @hidraw_connect.__key.3, i16 noundef signext 3) #10
  %list = getelementptr inbounds %struct.hidraw, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.hidraw, ptr %call7.i.i, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %prev.i, align 8
  %hid22 = getelementptr inbounds %struct.hidraw, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %hid22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hid, ptr %hid22, align 8
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %minor.051, ptr %call7.i.i, align 8
  %exist = getelementptr inbounds %struct.hidraw, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %exist to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %exist, align 4
  %hidraw = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 38
  %16 = ptrtoint ptr %hidraw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %hidraw, align 4
  tail call void @up_write(ptr noundef nonnull @minors_rwsem) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -22, %if.then6 ], [ %10, %if.then13 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidraw_disconnect(ptr nocapture noundef readonly %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hidraw1 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 38
  %0 = ptrtoint ptr %hidraw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hidraw1, align 4
  tail call void @down_write(ptr noundef nonnull @minors_rwsem) #10
  tail call fastcc void @drop_ref(ptr noundef %1, i32 noundef 1)
  tail call void @up_write(ptr noundef nonnull @minors_rwsem) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drop_ref(ptr noundef %hidraw, i32 noundef %exists_bit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exists_bit)
  %tobool.not = icmp eq i32 %exists_bit, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %exist = getelementptr inbounds %struct.hidraw, ptr %hidraw, i32 0, i32 1
  %0 = ptrtoint ptr %exist to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %exist, align 4
  %open = getelementptr inbounds %struct.hidraw, ptr %hidraw, i32 0, i32 2
  %1 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %hid = getelementptr inbounds %struct.hidraw, ptr %hidraw, i32 0, i32 4
  %3 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hid, align 4
  tail call void @hid_hw_close(ptr noundef %4) #10
  %wait = getelementptr inbounds %struct.hidraw, ptr %hidraw, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %5 = load ptr, ptr @hidraw_class, align 4
  %6 = load i32, ptr @hidraw_major, align 4
  %shl = shl i32 %6, 20
  %7 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hidraw, align 4
  %or = or i32 %shl, %8
  tail call void @device_destroy(ptr noundef %5, i32 noundef %or) #10
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %open3 = getelementptr inbounds %struct.hidraw, ptr %hidraw, i32 0, i32 2
  %9 = ptrtoint ptr %open3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %open3, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %open3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %open5 = getelementptr inbounds %struct.hidraw, ptr %hidraw, i32 0, i32 2
  %11 = ptrtoint ptr %open5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %open5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %if.then7, label %if.end4.if.end16_crit_edge

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then7:                                         ; preds = %if.end4
  %exist8 = getelementptr inbounds %struct.hidraw, ptr %hidraw, i32 0, i32 1
  %13 = ptrtoint ptr %exist8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %exist8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hidraw, align 4
  %arrayidx = getelementptr [64 x ptr], ptr @hidraw_table, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %hidraw) #10
  br label %if.end16

if.else12:                                        ; preds = %if.then7
  %hid13 = getelementptr inbounds %struct.hidraw, ptr %hidraw, i32 0, i32 4
  %18 = ptrtoint ptr %hid13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hid13, align 4
  tail call void @hid_hw_close(ptr noundef %19) #10
  %20 = ptrtoint ptr %hid13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hid13, align 4
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.else12.if.end16_crit_edge, label %cond.true.i

if.else12.if.end16_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

cond.true.i:                                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %25(ptr noundef %21, i32 noundef 2) #10
  br label %if.end16

if.end16:                                         ; preds = %cond.true.i, %if.else12.if.end16_crit_edge, %if.then10, %if.end4.if.end16_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidraw_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %dev_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_id) #10
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev_id, align 4, !annotation !86
  %call = call i32 @alloc_chrdev_region(ptr noundef nonnull %dev_id, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_id, align 4
  %shr = lshr i32 %2, 20
  store i32 %shr, ptr @hidraw_major, align 4
  %call3 = call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @hidraw_init.__key) #10
  store ptr %call3, ptr @hidraw_class, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call3 to i32
  br label %error_cdev

if.end7:                                          ; preds = %if.end
  call void @cdev_init(ptr noundef nonnull @hidraw_cdev, ptr noundef nonnull @hidraw_ops) #10
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_id, align 4
  %call8 = call i32 @cdev_add(ptr noundef nonnull @hidraw_cdev, i32 noundef %5, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %error_class, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  br label %out

out:                                              ; preds = %error_cdev, %do.end14, %do.end
  %result.0 = phi i32 [ %call, %do.end ], [ %result.1, %error_cdev ], [ %call8, %do.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_id) #10
  ret i32 %result.0

error_class:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %6 = load ptr, ptr @hidraw_class, align 4
  call void @class_destroy(ptr noundef %6) #10
  br label %error_cdev

error_cdev:                                       ; preds = %error_class, %if.then5
  %result.1 = phi i32 [ %3, %if.then5 ], [ %call8, %error_class ]
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  call void @unregister_chrdev_region(i32 noundef %8, i32 noundef 64) #10
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hidraw_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @hidraw_major, align 4
  %shl = shl i32 %0, 20
  tail call void @cdev_del(ptr noundef nonnull @hidraw_cdev) #10
  %1 = load ptr, ptr @hidraw_class, align 4
  tail call void @class_destroy(ptr noundef %1) #10
  tail call void @unregister_chrdev_region(i32 noundef %shl, i32 noundef 64) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidraw_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !76) #10
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
  %read_mutex = getelementptr inbounds %struct.hidraw_list, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %read_mutex, i32 noundef 0) #10
  %head = getelementptr inbounds %struct.hidraw_list, ptr %1, i32 0, i32 1
  %tail = getelementptr inbounds %struct.hidraw_list, ptr %1, i32 0, i32 2
  %hidraw = getelementptr inbounds %struct.hidraw_list, ptr %1, i32 0, i32 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end273.while.body_crit_edge, %entry
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head, align 4
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp2 = icmp eq i32 %16, %18
  br i1 %cmp2, label %if.then, label %while.body.if.end251_crit_edge

while.body.if.end251_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251

if.then:                                          ; preds = %while.body
  %19 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hidraw, align 4
  %wait3 = getelementptr inbounds %struct.hidraw, ptr %20, i32 0, i32 3
  call void @add_wait_queue(ptr noundef %wait3, ptr noundef nonnull %wait) #10
  br label %__here

__here:                                           ; preds = %if.then
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@hidraw_read, %__here) to i32), ptr %task_state_change, align 4
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %24, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  %26 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %head, align 4
  %28 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp69332 = icmp eq i32 %27, %29
  br i1 %cmp69332, label %__here.while.body70_crit_edge, label %__here.if.end248_crit_edge

__here.if.end248_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

__here.while.body70_crit_edge:                    ; preds = %__here
  br label %while.body70

while.body70:                                     ; preds = %__here136.while.body70_crit_edge, %__here.while.body70_crit_edge
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stack.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body70.if.end248_crit_edge, !prof !88

while.body70.if.end248_crit_edge:                 ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

signal_pending.exit:                              ; preds = %while.body70
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %and1.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool74.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool74.not, label %if.end76, label %signal_pending.exit.if.end248_crit_edge

signal_pending.exit.if.end248_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.end76:                                         ; preds = %signal_pending.exit
  %39 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hidraw, align 4
  %exist = getelementptr inbounds %struct.hidraw, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool78.not = icmp eq i32 %42, 0
  br i1 %tobool78.not, label %if.end76.if.end248_crit_edge, label %if.end80

if.end76.if.end248_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.end80:                                         ; preds = %if.end76
  %43 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %f_flags, align 4
  %and = and i32 %44, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool81.not = icmp eq i32 %and, 0
  br i1 %tobool81.not, label %if.end83, label %if.end80.if.end248_crit_edge

if.end80.if.end248_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

if.end83:                                         ; preds = %if.end80
  call void @mutex_unlock(ptr noundef %read_mutex) #10
  call void @schedule() #10
  call void @mutex_lock_nested(ptr noundef %read_mutex, i32 noundef 0) #10
  br label %__here136

__here136:                                        ; preds = %if.end83
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %task_state_change140 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 212
  %47 = ptrtoint ptr %task_state_change140 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 ptrtoint (ptr blockaddress(@hidraw_read, %__here136) to i32), ptr %task_state_change140, align 4
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 1, ptr %48, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  %50 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %head, align 4
  %52 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tail, align 4
  %cmp69 = icmp eq i32 %51, %53
  br i1 %cmp69, label %__here136.while.body70_crit_edge, label %__here136.if.end248_crit_edge

__here136.if.end248_crit_edge:                    ; preds = %__here136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end248

__here136.while.body70_crit_edge:                 ; preds = %__here136
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body70

if.end248:                                        ; preds = %__here136.if.end248_crit_edge, %if.end80.if.end248_crit_edge, %if.end76.if.end248_crit_edge, %signal_pending.exit.if.end248_crit_edge, %while.body70.if.end248_crit_edge, %__here.if.end248_crit_edge
  %cmp69.lcssa = phi i1 [ false, %__here.if.end248_crit_edge ], [ true, %while.body70.if.end248_crit_edge ], [ true, %if.end80.if.end248_crit_edge ], [ true, %if.end76.if.end248_crit_edge ], [ true, %signal_pending.exit.if.end248_crit_edge ], [ false, %__here136.if.end248_crit_edge ]
  %ret.1 = phi i32 [ 0, %__here.if.end248_crit_edge ], [ -512, %while.body70.if.end248_crit_edge ], [ -11, %if.end80.if.end248_crit_edge ], [ -5, %if.end76.if.end248_crit_edge ], [ -512, %signal_pending.exit.if.end248_crit_edge ], [ 0, %__here136.if.end248_crit_edge ]
  %54 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task, align 8
  %task_state_change220 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 212
  %56 = ptrtoint ptr %task_state_change220 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 ptrtoint (ptr blockaddress(@hidraw_read, %if.end248) to i32), ptr %task_state_change220, align 4
  %57 = load ptr, ptr %task, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %57, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %59 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hidraw, align 4
  %wait247 = getelementptr inbounds %struct.hidraw, ptr %60, i32 0, i32 3
  call void @remove_wait_queue(ptr noundef %wait247, ptr noundef nonnull %wait) #10
  br i1 %cmp69.lcssa, label %if.end248.out_crit_edge, label %if.end248.if.end251_crit_edge

if.end248.if.end251_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251

if.end248.out_crit_edge:                          ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end251:                                        ; preds = %if.end248.if.end251_crit_edge, %while.body.if.end251_crit_edge
  %61 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tail, align 4
  %len254 = getelementptr [64 x %struct.hidraw_report], ptr %1, i32 0, i32 %62, i32 1
  %63 = ptrtoint ptr %len254 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len254, align 4
  %65 = call i32 @llvm.umin.i32(i32 %64, i32 %count)
  %arrayidx262 = getelementptr [64 x %struct.hidraw_report], ptr %1, i32 0, i32 %62
  %66 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx262, align 4
  %tobool263.not = icmp eq ptr %67, null
  br i1 %tobool263.not, label %if.end251.if.end273_crit_edge, label %if.end8.i.i

if.end251.if.end273_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273

if.end8.i.i:                                      ; preds = %if.end251
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp9.i.i = icmp slt i32 %65, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !88

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %out

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef nonnull %67, i32 noundef %65, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %68 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %65, i32 -1226833920) #15, !srcloc !91
  %asmresult.i.i = extractvalue { i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %67, i32 noundef %65) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef nonnull %67, i32 noundef %65) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %65, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %65, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool270.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool270.not, label %copy_to_user.exit.if.end273_crit_edge, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

copy_to_user.exit.if.end273_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end273

if.end273:                                        ; preds = %copy_to_user.exit.if.end273_crit_edge, %if.end251.if.end273_crit_edge
  %ret.3 = phi i32 [ 0, %if.end251.if.end273_crit_edge ], [ %65, %copy_to_user.exit.if.end273_crit_edge ]
  %69 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tail, align 4
  %arrayidx276 = getelementptr [64 x %struct.hidraw_report], ptr %1, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx276, align 4
  call void @kfree(ptr noundef %72) #10
  %73 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tail, align 4
  %arrayidx280 = getelementptr [64 x %struct.hidraw_report], ptr %1, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arrayidx280, align 4
  %add = add i32 %74, 1
  %and283 = and i32 %add, 63
  store i32 %and283, ptr %tail, align 4
  %cmp = icmp eq i32 %ret.3, 0
  br i1 %cmp, label %if.end273.while.body_crit_edge, label %if.end273.out_crit_edge

if.end273.out_crit_edge:                          ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end273.while.body_crit_edge:                   ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

out:                                              ; preds = %if.end273.out_crit_edge, %copy_to_user.exit.out_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge, %if.end248.out_crit_edge
  %ret.4 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ], [ -14, %copy_to_user.exit.out_crit_edge ], [ %ret.3, %if.end273.out_crit_edge ], [ %ret.1, %if.end248.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %read_mutex) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidraw_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @minors_rwsem) #10
  %call = tail call fastcc i32 @hidraw_send_report(ptr noundef %file, ptr noundef %buffer, i32 noundef %count, i8 noundef zeroext 1)
  tail call void @up_read(ptr noundef nonnull @minors_rwsem) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidraw_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hidraw = getelementptr inbounds %struct.hidraw_list, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hidraw, align 4
  %wait1 = getelementptr inbounds %struct.hidraw, ptr %3, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wait1, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %head = getelementptr inbounds %struct.hidraw_list, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.hidraw_list, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  %spec.select = select i1 %cmp.not, i32 260, i32 325
  %10 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hidraw, align 4
  %exist = getelementptr inbounds %struct.hidraw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %or4 = or i32 %spec.select, 24
  %mask.1 = select i1 %tobool.not, i32 %or4, i32 %spec.select
  ret i32 %mask.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidraw_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %dinfo = alloca %struct.hidraw_devinfo, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i346 = and i32 %3, 1048575
  %4 = inttoptr i32 %arg to ptr
  tail call void @down_read(ptr noundef nonnull @minors_rwsem) #10
  %arrayidx = getelementptr [64 x ptr], ptr @hidraw_table, i32 0, i32 %and.i346
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %exist = getelementptr inbounds %struct.hidraw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 -2147203071, label %sw.bb
    i32 -1878767614, label %sw.bb8
    i32 -2146940925, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hid = getelementptr inbounds %struct.hidraw, ptr %6, i32 0, i32 4
  %10 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hid, align 4
  %rsize = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rsize, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 381) #10
  %14 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !92
  %and.i = and i32 %16, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %17 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %13, i32 -1226833921) #10, !srcloc !95
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -14
  br label %out

sw.bb8:                                           ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 389) #10
  %18 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i.i.i269 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i269 to ptr
  %cpu_domain.i.i270 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i270) #7, !srcloc !92
  %and.i271 = and i32 %20, -13
  %or.i272 = or i32 %and.i271, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i272) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %21 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #10, !srcloc !96
  %asmresult = extractvalue { i32, i32 } %21, 0
  %asmresult17 = extractvalue { i32, i32 } %21, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool19.not = icmp eq i32 %asmresult, 0
  br i1 %tobool19.not, label %if.else, label %sw.bb8.out_crit_edge

sw.bb8.out_crit_edge:                             ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %asmresult17)
  %cmp = icmp ugt i32 %asmresult17, 4095
  br i1 %cmp, label %if.else.out_crit_edge, label %if.else22

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else22:                                        ; preds = %if.else
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %hid23 = getelementptr inbounds %struct.hidraw, ptr %6, i32 0, i32 4
  %22 = ptrtoint ptr %hid23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hid23, align 4
  %rdesc = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %rdesc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdesc, align 8
  %rsize25 = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %rsize25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rsize25, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %asmresult17)
  tail call void @__check_object_size(ptr noundef %25, i32 noundef %28, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.else22.copy_to_user.exit_crit_edge, label %if.end.i.i

if.else22.copy_to_user.exit_crit_edge:            ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.else22
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %28, i32 -1226833920) #15, !srcloc !91
  %asmresult.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %25, i32 noundef %28) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %25, i32 noundef %28) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.else22.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %28, %if.else22.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %28, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool29.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select362 = select i1 %tobool29.not, i32 0, i32 -14
  br label %out

sw.bb34:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dinfo) #10
  %30 = getelementptr inbounds %struct.hidraw_devinfo, ptr %dinfo, i32 0, i32 1
  %31 = getelementptr inbounds %struct.hidraw_devinfo, ptr %dinfo, i32 0, i32 2
  %hid35 = getelementptr inbounds %struct.hidraw, ptr %6, i32 0, i32 4
  %32 = ptrtoint ptr %hid35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hid35, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bus, align 8
  %conv = zext i16 %35 to i32
  %36 = ptrtoint ptr %dinfo to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv, ptr %dinfo, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %33, i32 0, i32 10
  %37 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vendor, align 4
  %conv37 = trunc i32 %38 to i16
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv37, ptr %30, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %33, i32 0, i32 11
  %40 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %product, align 8
  %conv40 = trunc i32 %41 to i16
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv40, ptr %31, align 2
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #10
  %call.i.i279 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i279, label %sw.bb34.copy_to_user.exit288.thread_crit_edge, label %if.end.i.i283

sw.bb34.copy_to_user.exit288.thread_crit_edge:    ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit288.thread

if.end.i.i283:                                    ; preds = %sw.bb34
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 8, i32 -1226833920) #15, !srcloc !91
  %asmresult.i.i281 = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i281)
  %cmp.i6.i282 = icmp eq i32 %asmresult.i.i281, 0
  br i1 %cmp.i6.i282, label %copy_to_user.exit288, label %if.end.i.i283.copy_to_user.exit288.thread_crit_edge

if.end.i.i283.copy_to_user.exit288.thread_crit_edge: ; preds = %if.end.i.i283
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit288.thread

copy_to_user.exit288:                             ; preds = %if.end.i.i283
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i284 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %dinfo, i32 noundef 8) #10
  %call.i12.i.i285 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %dinfo, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i285)
  %tobool43.not = icmp eq i32 %call.i12.i.i285, 0
  %spec.select352 = select i1 %tobool43.not, i32 0, i32 -14
  br label %copy_to_user.exit288.thread

copy_to_user.exit288.thread:                      ; preds = %copy_to_user.exit288, %if.end.i.i283.copy_to_user.exit288.thread_crit_edge, %sw.bb34.copy_to_user.exit288.thread_crit_edge
  %44 = phi i32 [ -14, %sw.bb34.copy_to_user.exit288.thread_crit_edge ], [ -14, %if.end.i.i283.copy_to_user.exit288.thread_crit_edge ], [ %spec.select352, %copy_to_user.exit288 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dinfo) #10
  br label %out

sw.default:                                       ; preds = %if.end
  %hid47 = getelementptr inbounds %struct.hidraw, ptr %6, i32 0, i32 4
  %45 = ptrtoint ptr %hid47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hid47, align 4
  %47 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 18432, i32 %47)
  %cmp48.not = icmp eq i32 %47, 18432
  br i1 %cmp48.not, label %if.end51, label %sw.default.out_crit_edge

sw.default.out_crit_edge:                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end51:                                         ; preds = %sw.default
  %trunc = trunc i32 %cmd to i8
  %48 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %trunc, label %if.end111 [
    i8 6, label %if.then56
    i8 7, label %if.then66
    i8 9, label %if.then76
    i8 10, label %if.then86
    i8 11, label %if.then96
    i8 12, label %if.then106
  ]

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %shr58 = lshr i32 %cmd, 16
  %and59 = and i32 %shr58, 16383
  %call60 = tail call fastcc i32 @hidraw_send_report(ptr noundef %file, ptr noundef %4, i32 noundef %and59, i8 noundef zeroext 2)
  br label %out

if.then66:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %shr68 = lshr i32 %cmd, 16
  %and69 = and i32 %shr68, 16383
  %call70 = tail call fastcc i32 @hidraw_get_report(ptr noundef %file, ptr noundef %4, i32 noundef %and69, i8 noundef zeroext 2)
  br label %out

if.then76:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %shr78 = lshr i32 %cmd, 16
  %and79 = and i32 %shr78, 16383
  %call80 = tail call fastcc i32 @hidraw_send_report(ptr noundef %file, ptr noundef %4, i32 noundef %and79, i8 noundef zeroext 0)
  br label %out

if.then86:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %shr88 = lshr i32 %cmd, 16
  %and89 = and i32 %shr88, 16383
  %call90 = tail call fastcc i32 @hidraw_get_report(ptr noundef %file, ptr noundef %4, i32 noundef %and89, i8 noundef zeroext 0)
  br label %out

if.then96:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %shr98 = lshr i32 %cmd, 16
  %and99 = and i32 %shr98, 16383
  %call100 = tail call fastcc i32 @hidraw_send_report(ptr noundef %file, ptr noundef %4, i32 noundef %and99, i8 noundef zeroext 1)
  br label %out

if.then106:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %shr108 = lshr i32 %cmd, 16
  %and109 = and i32 %shr108, 16383
  %call110 = tail call fastcc i32 @hidraw_get_report(ptr noundef %file, ptr noundef %4, i32 noundef %and109, i8 noundef zeroext 1)
  br label %out

if.end111:                                        ; preds = %if.end51
  %shr112.mask = and i32 %cmd, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr112.mask)
  %cmp114.not = icmp eq i32 %shr112.mask, -2147483648
  br i1 %cmp114.not, label %if.end117, label %if.end111.out_crit_edge

if.end111.out_crit_edge:                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end117:                                        ; preds = %if.end111
  %49 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %trunc, label %if.end117.out_crit_edge [
    i8 4, label %if.then122
    i8 5, label %if.then146
    i8 8, label %if.then172
  ]

if.end117.out_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then122:                                       ; preds = %if.end117
  %name = getelementptr inbounds %struct.hid_device, ptr %46, i32 0, i32 39
  %call124 = tail call i32 @strlen(ptr noundef %name) #16
  %add = add i32 %call124, 1
  %shr125 = lshr i32 %cmd, 16
  %and126 = and i32 %shr125, 16383
  %50 = tail call i32 @llvm.umin.i32(i32 %add, i32 %and126)
  tail call void @__check_object_size(ptr noundef %name, i32 noundef %50, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #10
  %call.i.i298 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i298, label %if.then122.copy_to_user.exit307_crit_edge, label %if.end.i.i302

if.then122.copy_to_user.exit307_crit_edge:        ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit307

if.end.i.i302:                                    ; preds = %if.then122
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %50, i32 -1226833920) #15, !srcloc !91
  %asmresult.i.i300 = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i300)
  %cmp.i6.i301 = icmp eq i32 %asmresult.i.i300, 0
  br i1 %cmp.i6.i301, label %if.then2.i.i305, label %if.end.i.i302.copy_to_user.exit307_crit_edge

if.end.i.i302.copy_to_user.exit307_crit_edge:     ; preds = %if.end.i.i302
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit307

if.then2.i.i305:                                  ; preds = %if.end.i.i302
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i303 = tail call zeroext i1 @__kasan_check_read(ptr noundef %name, i32 noundef %50) #10
  %call.i12.i.i304 = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %name, i32 noundef %50) #10
  br label %copy_to_user.exit307

copy_to_user.exit307:                             ; preds = %if.then2.i.i305, %if.end.i.i302.copy_to_user.exit307_crit_edge, %if.then122.copy_to_user.exit307_crit_edge
  %n.addr.0.i306 = phi i32 [ %50, %if.then122.copy_to_user.exit307_crit_edge ], [ %call.i12.i.i304, %if.then2.i.i305 ], [ %50, %if.end.i.i302.copy_to_user.exit307_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i306)
  %tobool136.not = icmp eq i32 %n.addr.0.i306, 0
  %spec.select363 = select i1 %tobool136.not, i32 %50, i32 -14
  br label %out

if.then146:                                       ; preds = %if.end117
  %phys = getelementptr inbounds %struct.hid_device, ptr %46, i32 0, i32 40
  %call149 = tail call i32 @strlen(ptr noundef %phys) #16
  %add150 = add i32 %call149, 1
  %shr151 = lshr i32 %cmd, 16
  %and152 = and i32 %shr151, 16383
  %52 = tail call i32 @llvm.umin.i32(i32 %add150, i32 %and152)
  tail call void @__check_object_size(ptr noundef %phys, i32 noundef %52, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #10
  %call.i.i317 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i317, label %if.then146.copy_to_user.exit326_crit_edge, label %if.end.i.i321

if.then146.copy_to_user.exit326_crit_edge:        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit326

if.end.i.i321:                                    ; preds = %if.then146
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %52, i32 -1226833920) #15, !srcloc !91
  %asmresult.i.i319 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i319)
  %cmp.i6.i320 = icmp eq i32 %asmresult.i.i319, 0
  br i1 %cmp.i6.i320, label %if.then2.i.i324, label %if.end.i.i321.copy_to_user.exit326_crit_edge

if.end.i.i321.copy_to_user.exit326_crit_edge:     ; preds = %if.end.i.i321
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit326

if.then2.i.i324:                                  ; preds = %if.end.i.i321
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i322 = tail call zeroext i1 @__kasan_check_read(ptr noundef %phys, i32 noundef %52) #10
  %call.i12.i.i323 = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %phys, i32 noundef %52) #10
  br label %copy_to_user.exit326

copy_to_user.exit326:                             ; preds = %if.then2.i.i324, %if.end.i.i321.copy_to_user.exit326_crit_edge, %if.then146.copy_to_user.exit326_crit_edge
  %n.addr.0.i325 = phi i32 [ %52, %if.then146.copy_to_user.exit326_crit_edge ], [ %call.i12.i.i323, %if.then2.i.i324 ], [ %52, %if.end.i.i321.copy_to_user.exit326_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i325)
  %tobool162.not = icmp eq i32 %n.addr.0.i325, 0
  %spec.select364 = select i1 %tobool162.not, i32 %52, i32 -14
  br label %out

if.then172:                                       ; preds = %if.end117
  %uniq = getelementptr inbounds %struct.hid_device, ptr %46, i32 0, i32 41
  %call175 = tail call i32 @strlen(ptr noundef %uniq) #16
  %add176 = add i32 %call175, 1
  %shr177 = lshr i32 %cmd, 16
  %and178 = and i32 %shr177, 16383
  %54 = tail call i32 @llvm.umin.i32(i32 %add176, i32 %and178)
  tail call void @__check_object_size(ptr noundef %uniq, i32 noundef %54, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #10
  %call.i.i336 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i336, label %if.then172.copy_to_user.exit345_crit_edge, label %if.end.i.i340

if.then172.copy_to_user.exit345_crit_edge:        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit345

if.end.i.i340:                                    ; preds = %if.then172
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %54, i32 -1226833920) #15, !srcloc !91
  %asmresult.i.i338 = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i338)
  %cmp.i6.i339 = icmp eq i32 %asmresult.i.i338, 0
  br i1 %cmp.i6.i339, label %if.then2.i.i343, label %if.end.i.i340.copy_to_user.exit345_crit_edge

if.end.i.i340.copy_to_user.exit345_crit_edge:     ; preds = %if.end.i.i340
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit345

if.then2.i.i343:                                  ; preds = %if.end.i.i340
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i341 = tail call zeroext i1 @__kasan_check_read(ptr noundef %uniq, i32 noundef %54) #10
  %call.i12.i.i342 = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %uniq, i32 noundef %54) #10
  br label %copy_to_user.exit345

copy_to_user.exit345:                             ; preds = %if.then2.i.i343, %if.end.i.i340.copy_to_user.exit345_crit_edge, %if.then172.copy_to_user.exit345_crit_edge
  %n.addr.0.i344 = phi i32 [ %54, %if.then172.copy_to_user.exit345_crit_edge ], [ %call.i12.i.i342, %if.then2.i.i343 ], [ %54, %if.end.i.i340.copy_to_user.exit345_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i344)
  %tobool188.not = icmp eq i32 %n.addr.0.i344, 0
  %spec.select365 = select i1 %tobool188.not, i32 %54, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit345, %copy_to_user.exit326, %copy_to_user.exit307, %if.end117.out_crit_edge, %if.end111.out_crit_edge, %if.then106, %if.then96, %if.then86, %if.then76, %if.then66, %if.then56, %sw.default.out_crit_edge, %copy_to_user.exit288.thread, %copy_to_user.exit, %if.else.out_crit_edge, %sw.bb8.out_crit_edge, %sw.bb, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.3 = phi i32 [ %44, %copy_to_user.exit288.thread ], [ -19, %lor.lhs.false.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ %spec.select, %sw.bb ], [ -14, %sw.bb8.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ -25, %if.end117.out_crit_edge ], [ -22, %if.end111.out_crit_edge ], [ -22, %sw.default.out_crit_edge ], [ %call110, %if.then106 ], [ %call100, %if.then96 ], [ %call90, %if.then86 ], [ %call80, %if.then76 ], [ %call70, %if.then66 ], [ %call60, %if.then56 ], [ %spec.select362, %copy_to_user.exit ], [ %spec.select363, %copy_to_user.exit307 ], [ %spec.select364, %copy_to_user.exit326 ], [ %spec.select365, %copy_to_user.exit345 ]
  call void @up_read(ptr noundef nonnull @minors_rwsem) #10
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidraw_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 628) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.then41_crit_edge, label %if.end

entry.if.then41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.end:                                           ; preds = %entry
  %and.i = and i32 %1, 1048575
  tail call void @down_read(ptr noundef nonnull @minors_rwsem) #10
  %arrayidx = getelementptr [64 x ptr], ptr @hidraw_table, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.out.thread74_crit_edge, label %lor.lhs.false

if.end.out.thread74_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread74

lor.lhs.false:                                    ; preds = %if.end
  %exist = getelementptr inbounds %struct.hidraw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %lor.lhs.false.out.thread74_crit_edge, label %if.end6

lor.lhs.false.out.thread74_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread74

if.end6:                                          ; preds = %lor.lhs.false
  %open = getelementptr inbounds %struct.hidraw, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %open, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end23_crit_edge

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then9:                                         ; preds = %if.end6
  %hid = getelementptr inbounds %struct.hidraw, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hid, align 4
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then9.if.end13_crit_edge, label %hid_hw_power.exit

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

hid_hw_power.exit:                                ; preds = %if.then9
  %call.i = tail call i32 %14(ptr noundef %10, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %hid_hw_power.exit.out.thread74.sink.split_crit_edge, label %hid_hw_power.exit.if.end13_crit_edge

hid_hw_power.exit.if.end13_crit_edge:             ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

hid_hw_power.exit.out.thread74.sink.split_crit_edge: ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread74.sink.split

if.end13:                                         ; preds = %hid_hw_power.exit.if.end13_crit_edge, %if.then9.if.end13_crit_edge
  %15 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hid, align 4
  %call15 = tail call i32 @hid_hw_open(ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then17:                                        ; preds = %if.end13
  %17 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hid, align 4
  %ll_driver.i61 = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %ll_driver.i61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ll_driver.i61, align 4
  %power.i62 = getelementptr inbounds %struct.hid_ll_driver, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %power.i62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %power.i62, align 4
  %tobool.not.i63 = icmp eq ptr %22, null
  br i1 %tobool.not.i63, label %if.then17.out.thread74.sink.split_crit_edge, label %cond.true.i65

if.then17.out.thread74.sink.split_crit_edge:      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread74.sink.split

cond.true.i65:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %call.i64 = tail call i32 %22(ptr noundef %18, i32 noundef 2) #10
  br label %out.thread74.sink.split

if.end23:                                         ; preds = %if.end13.if.end23_crit_edge, %if.end6.if.end23_crit_edge
  %err.0 = phi i32 [ 0, %if.end6.if.end23_crit_edge ], [ %call15, %if.end13.if.end23_crit_edge ]
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %hidraw = getelementptr inbounds %struct.hidraw_list, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %hidraw to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %hidraw, align 4
  %read_mutex = getelementptr inbounds %struct.hidraw_list, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %read_mutex, ptr noundef nonnull @.str.28, ptr noundef nonnull @hidraw_open.__key) #10
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %list_lock = getelementptr inbounds %struct.hidraw, ptr %27, i32 0, i32 6
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #10
  %node = getelementptr inbounds %struct.hidraw_list, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %list36 = getelementptr inbounds %struct.hidraw, ptr %29, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.hidraw, ptr %29, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %31, ptr noundef %list36) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %node, ptr %prev.i, align 4
  %33 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list36, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.hidraw_list, ptr %call7.i.i, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %node, ptr %31, align 4
  br label %out

out.thread74.sink.split:                          ; preds = %cond.true.i65, %if.then17.out.thread74.sink.split_crit_edge, %hid_hw_power.exit.out.thread74.sink.split_crit_edge
  %err.1.ph.ph = phi i32 [ %call.i, %hid_hw_power.exit.out.thread74.sink.split_crit_edge ], [ %call15, %if.then17.out.thread74.sink.split_crit_edge ], [ %call15, %cond.true.i65 ]
  %36 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %open, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %open, align 4
  br label %out.thread74

out.thread74:                                     ; preds = %out.thread74.sink.split, %lor.lhs.false.out.thread74_crit_edge, %if.end.out.thread74_crit_edge
  %err.1.ph = phi i32 [ -19, %if.end.out.thread74_crit_edge ], [ -19, %lor.lhs.false.out.thread74_crit_edge ], [ %err.1.ph.ph, %out.thread74.sink.split ]
  tail call void @up_read(ptr noundef nonnull @minors_rwsem) #10
  br label %if.then41

out:                                              ; preds = %if.end.i.i, %if.end23.out_crit_edge
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %list_lock38 = getelementptr inbounds %struct.hidraw, ptr %39, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock38, i32 noundef %call30) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %40 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @up_read(ptr noundef nonnull @minors_rwsem) #10
  br label %if.end42

if.then41:                                        ; preds = %out.thread74, %entry.if.then41_crit_edge
  %err.273 = phi i32 [ %err.1.ph, %out.thread74 ], [ -12, %entry.if.then41_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %out
  %err.272 = phi i32 [ %err.273, %if.then41 ], [ %err.0, %out ]
  ret i32 %err.272
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidraw_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void @down_write(ptr noundef nonnull @minors_rwsem) #10
  %arrayidx = getelementptr [64 x ptr], ptr @hidraw_table, i32 0, i32 %and.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %list_lock = getelementptr inbounds %struct.hidraw, ptr %5, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #10
  %node = getelementptr inbounds %struct.hidraw_list, ptr %3, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.hidraw_list, ptr %3, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.hidraw_list, ptr %3, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %list_lock7 = getelementptr inbounds %struct.hidraw, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock7, i32 noundef %call3) #10
  tail call void @kfree(ptr noundef %3) #10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %open3.i = getelementptr inbounds %struct.hidraw, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %open3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %open3.i, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %open3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %list_del.exit.drop_ref.exit_crit_edge

list_del.exit.drop_ref.exit_crit_edge:            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop_ref.exit

if.then7.i:                                       ; preds = %list_del.exit
  %exist8.i = getelementptr inbounds %struct.hidraw, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %exist8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %exist8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not.i = icmp eq i32 %21, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.else12.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %17, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @hidraw_table, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %17) #10
  br label %drop_ref.exit

if.else12.i:                                      ; preds = %if.then7.i
  %hid13.i = getelementptr inbounds %struct.hidraw, ptr %17, i32 0, i32 4
  %25 = ptrtoint ptr %hid13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hid13.i, align 4
  tail call void @hid_hw_close(ptr noundef %26) #10
  %27 = ptrtoint ptr %hid13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hid13.i, align 4
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ll_driver.i.i, align 4
  %power.i.i = getelementptr inbounds %struct.hid_ll_driver, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %power.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.else12.i.drop_ref.exit_crit_edge, label %cond.true.i.i

if.else12.i.drop_ref.exit_crit_edge:              ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop_ref.exit

cond.true.i.i:                                    ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i12 = tail call i32 %32(ptr noundef %28, i32 noundef 2) #10
  br label %drop_ref.exit

drop_ref.exit:                                    ; preds = %cond.true.i.i, %if.else12.i.drop_ref.exit_crit_edge, %if.then10.i, %list_del.exit.drop_ref.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @minors_rwsem) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidraw_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fasync = getelementptr inbounds %struct.hidraw_list, ptr %1, i32 0, i32 3
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %fasync) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidraw_send_report(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, i8 noundef zeroext %report_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @minors_rwsem, i32 0, i32 6), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !97

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 110, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx = getelementptr [64 x ptr], ptr @hidraw_table, i32 0, i32 %and.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %6, null
  br i1 %tobool26.not, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %exist = getelementptr inbounds %struct.hidraw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool28.not = icmp eq i32 %8, 0
  br i1 %tobool28.not, label %lor.lhs.false.out_crit_edge, label %if.end30

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end30:                                         ; preds = %lor.lhs.false
  %hid = getelementptr inbounds %struct.hidraw, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %count)
  %cmp32 = icmp ugt i32 %count, 16384
  br i1 %cmp32, label %do.end36, label %if.end40

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %dev37 = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  %11 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i86 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i86 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.18, i32 noundef %16) #14
  br label %out

if.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp41 = icmp ult i32 %count, 2
  br i1 %cmp41, label %do.end45, label %if.end50

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %dev46 = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i87 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i87 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task48, align 8
  %pid.i88 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid.i88 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid.i88, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev46, ptr noundef nonnull @.str.23, i32 noundef %22) #14
  br label %out

if.end50:                                         ; preds = %if.end40
  %call51 = tail call ptr @memdup_user(ptr noundef %buffer, i32 noundef %count) #10
  %cmp.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %call51 to i32
  br label %out

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %report_type)
  %cmp56 = icmp eq i8 %report_type, 1
  br i1 %cmp56, label %land.lhs.true, label %if.end55.if.end65_crit_edge

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end55
  %quirks = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 34
  %24 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks, align 8
  %and = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %if.then59, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then59:                                        ; preds = %land.lhs.true
  %call60 = tail call i32 @hid_hw_output_report(ptr noundef %10, ptr noundef %call51, i32 noundef %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, -38
  br i1 %cmp61.not, label %if.then59.if.end65_crit_edge, label %if.then59.out_free_crit_edge

if.then59.out_free_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.then59.if.end65_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.end65:                                         ; preds = %if.then59.if.end65_crit_edge, %land.lhs.true.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  %26 = ptrtoint ptr %call51 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %call51, align 1
  %call67 = tail call i32 @hid_hw_raw_request(ptr noundef %10, i8 noundef zeroext %27, ptr noundef %call51, i32 noundef %count, i8 noundef zeroext %report_type, i32 noundef 9) #10
  br label %out_free

out_free:                                         ; preds = %if.end65, %if.then59.out_free_crit_edge
  %ret.0 = phi i32 [ %call67, %if.end65 ], [ %call60, %if.then59.out_free_crit_edge ]
  tail call void @kfree(ptr noundef %call51) #10
  br label %out

out:                                              ; preds = %out_free, %if.then53, %do.end45, %do.end36, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %ret.1 = phi i32 [ -22, %do.end36 ], [ -22, %do.end45 ], [ %23, %if.then53 ], [ %ret.0, %out_free ], [ -19, %lor.lhs.false.out_crit_edge ], [ -19, %if.end.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidraw_get_report(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, i8 noundef zeroext %report_type) unnamed_addr #0 align 64 {
entry:
  %report_number = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %report_number) #10
  %4 = ptrtoint ptr %report_number to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %report_number, align 1, !annotation !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @minors_rwsem, i32 0, i32 6), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !97

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 185, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx = getelementptr [64 x ptr], ptr @hidraw_table, i32 0, i32 %and.i
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %7, null
  br i1 %tobool26.not, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %exist = getelementptr inbounds %struct.hidraw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool28.not = icmp eq i32 %9, 0
  br i1 %tobool28.not, label %lor.lhs.false.out_crit_edge, label %if.end30

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end30:                                         ; preds = %lor.lhs.false
  %hid = getelementptr inbounds %struct.hidraw, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hid, align 4
  %ll_driver = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %ll_driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ll_driver, align 4
  %raw_request = getelementptr inbounds %struct.hid_ll_driver, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %raw_request to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %raw_request, align 4
  %tobool32.not = icmp eq ptr %15, null
  br i1 %tobool32.not, label %if.end30.out_crit_edge, label %if.end43

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end43:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp44 = icmp ult i32 %count, 2
  br i1 %cmp44, label %do.end48, label %if.end8.i

do.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %dev49 = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 18
  %16 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i102 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i102 to ptr
  %task51 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task51, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev49, ptr noundef nonnull @.str.23, i32 noundef %21) #14
  br label %out

if.end8.i:                                        ; preds = %if.end43
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %count, i32 noundef 3264) #17
  %tobool55.not = icmp eq ptr %call9.i, null
  br i1 %tobool55.not, label %if.end8.i.out_crit_edge, label %if.then.i90

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i90:                                      ; preds = %if.end8.i
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i90.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i90.if.then11.i.i_crit_edge:              ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i90
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 1, i32 -1226833920) #15, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !88

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %report_number, i32 noundef 1) #10
  %23 = call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !92
  %and.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %report_number, ptr noundef %buffer, i32 noundef 1) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end61, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !88

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i90.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 1, %if.then.i90.if.then11.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 1, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %report_number, i32 %sub.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %out_free

if.end61:                                         ; preds = %if.end.i.i
  %27 = ptrtoint ptr %report_number to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %report_number, align 1
  %call62 = call i32 @hid_hw_raw_request(ptr noundef %11, i8 noundef zeroext %28, ptr noundef nonnull %call9.i, i32 noundef %count, i8 noundef zeroext %report_type, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.out_free_crit_edge, label %if.end65

if.end61.out_free_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end65:                                         ; preds = %if.end61
  %29 = call i32 @llvm.umin.i32(i32 %call62, i32 %count)
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %29, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #10
  %call.i.i95 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i95, label %if.end65.copy_to_user.exit_crit_edge, label %if.end.i.i98

if.end65.copy_to_user.exit_crit_edge:             ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i98:                                     ; preds = %if.end65
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %29, i32 -1226833920) #15, !srcloc !91
  %asmresult.i.i97 = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i97)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i97, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i98.copy_to_user.exit_crit_edge

if.end.i.i98.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i99 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %29) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef nonnull %call9.i, i32 noundef %29) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i98.copy_to_user.exit_crit_edge, %if.end65.copy_to_user.exit_crit_edge
  %n.addr.0.i100 = phi i32 [ %29, %if.end65.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %29, %if.end.i.i98.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i100)
  %tobool68.not = icmp eq i32 %n.addr.0.i100, 0
  %spec.select = select i1 %tobool68.not, i32 %29, i32 -14
  br label %out_free

out_free:                                         ; preds = %copy_to_user.exit, %if.end61.out_free_crit_edge, %if.then11.i.i
  %ret.0 = phi i32 [ %call62, %if.end61.out_free_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %out

out:                                              ; preds = %out_free, %if.end8.i.out_crit_edge, %do.end48, %if.end30.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %ret.1 = phi i32 [ -22, %do.end48 ], [ %ret.0, %out_free ], [ -19, %lor.lhs.false.out_crit_edge ], [ -19, %if.end.out_crit_edge ], [ -19, %if.end30.out_crit_edge ], [ -12, %if.end8.i.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %report_number) #10
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !51, !53, !55, !57, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__ksymtab_hidraw_report_event, !1, !"__ksymtab_hidraw_report_event", i1 false, i1 false}
!1 = !{!"../drivers/hid/hidraw.c", i32 534, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hid/hidraw.c", i32 566, i32 12}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/hid/hidraw.c", i32 566, i32 20}
!6 = !{ptr @hidraw_connect.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/hid/hidraw.c", i32 576, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hidraw_connect.__key.3, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/hid/hidraw.c", i32 577, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_hidraw_connect, !13, !"__ksymtab_hidraw_connect", i1 false, i1 false}
!13 = !{!"../drivers/hid/hidraw.c", i32 591, i32 1}
!14 = !{ptr @__ksymtab_hidraw_disconnect, !15, !"__ksymtab_hidraw_disconnect", i1 false, i1 false}
!15 = !{!"../drivers/hid/hidraw.c", i32 603, i32 1}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hid/hidraw.c", i32 613, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hidraw_init._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @hidraw_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @hidraw_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hid/hidraw.c", i32 619, i32 17}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hid/hidraw.c", i32 630, i32 2}
!26 = !{ptr @hidraw_init._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hidraw_init._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @hidraw_major, !29, !"hidraw_major", i1 false, i1 false}
!29 = !{!"../drivers/hid/hidraw.c", i32 33, i32 12}
!30 = !{ptr @hidraw_cdev, !31, !"hidraw_cdev", i1 false, i1 false}
!31 = !{!"../drivers/hid/hidraw.c", i32 34, i32 20}
!32 = !{ptr @hidraw_class, !33, !"hidraw_class", i1 false, i1 false}
!33 = !{!"../drivers/hid/hidraw.c", i32 35, i32 22}
!34 = !{ptr @hidraw_table, !35, !"hidraw_table", i1 false, i1 false}
!35 = !{!"../drivers/hid/hidraw.c", i32 36, i32 23}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hidraw.c", i32 37, i32 8}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @minors_rwsem, !37, !"minors_rwsem", i1 false, i1 false}
!40 = !{ptr @hidraw_ops, !41, !"hidraw_ops", i1 false, i1 false}
!41 = !{!"../drivers/hid/hidraw.c", i32 494, i32 37}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/hid/hidraw.c", i32 50, i32 4}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/hid/hidraw.c", i32 70, i32 5}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/hid/hidraw.c", i32 73, i32 4}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hid/hidraw.c", i32 120, i32 3}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @hidraw_send_report._entry, !56, !"_entry", i1 false, i1 false}
!61 = !{ptr @hidraw_send_report._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hidraw.c", i32 127, i32 3}
!64 = !{ptr @hidraw_send_report._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @hidraw_send_report._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/hidraw.c", i32 200, i32 3}
!68 = !{ptr @hidraw_get_report._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hidraw_get_report._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @hidraw_get_report._entry.26, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/hid/hidraw.c", i32 207, i32 3}
!72 = !{ptr @hidraw_get_report._entry_ptr.27, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @hidraw_open.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/hid/hidraw.c", i32 298, i32 2}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i64 2153627070}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 2153631901}
!90 = !{i64 2153636625}
!91 = !{i64 2152178217, i64 2152178242}
!92 = !{i64 4673091}
!93 = !{i64 4673288}
!94 = !{i64 2152158521}
!95 = !{i64 2153654079, i64 2153654359, i64 2153654693, i64 2153655027}
!96 = !{i64 2153666587, i64 2153666867, i64 2153667201, i64 2153667535}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2152177536, i64 2152177561}
