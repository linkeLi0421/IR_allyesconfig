; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-roccat.c_pt.bc'
source_filename = "../drivers/hid/hid-roccat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+roccat_report_event\22, \22a\22\09"
module asm "\09.weak\09__crc_roccat_report_event\09\09\09\09"
module asm "\09.long\09__crc_roccat_report_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_roccat_report_event:\09\09\09\09\09"
module asm "\09.asciz \09\22roccat_report_event\22\09\09\09\09\09"
module asm "__kstrtabns_roccat_report_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+roccat_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_roccat_connect\09\09\09\09"
module asm "\09.long\09__crc_roccat_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_roccat_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22roccat_connect\22\09\09\09\09\09"
module asm "__kstrtabns_roccat_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+roccat_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_roccat_disconnect\09\09\09\09"
module asm "\09.long\09__crc_roccat_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_roccat_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22roccat_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_roccat_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.roccat_device = type { i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.list_head, %struct.mutex, [16 x %struct.roccat_report], i32, %struct.mutex }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.roccat_report = type { ptr }
%struct.roccat_reader = type { %struct.list_head, ptr, i32 }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.68 = type { ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@devices = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@__kstrtab_roccat_report_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_roccat_report_event = external dso_local constant [0 x i8], align 1
@__ksymtab_roccat_report_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @roccat_report_event to i32), ptr @__kstrtab_roccat_report_event, ptr @__kstrtabns_roccat_report_event }, section "___ksymtab_gpl+roccat_report_event", align 4
@devices_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devices_lock, i64 52), ptr getelementptr (i8, ptr @devices_lock, i64 52) }, ptr @devices_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@roccat_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%s%d\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"roccat\00", [25 x i8] zeroinitializer }, align 32
@roccat_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&device->wait\00", [18 x i8] zeroinitializer }, align 32
@roccat_connect.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&device->readers_lock\00", [42 x i8] zeroinitializer }, align 32
@roccat_connect.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&device->cbuf_lock\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_roccat_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_roccat_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_roccat_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @roccat_connect to i32), ptr @__kstrtab_roccat_connect, ptr @__kstrtabns_roccat_connect }, section "___ksymtab_gpl+roccat_connect", align 4
@__kstrtab_roccat_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_roccat_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_roccat_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @roccat_disconnect to i32), ptr @__kstrtab_roccat_disconnect, ptr @__kstrtabns_roccat_disconnect }, section "___ksymtab_gpl+roccat_disconnect", align 4
@roccat_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@__initcall__kmod_hid_roccat__226_452_roccat_init6 = internal global ptr @roccat_init, section ".initcall6.init", align 4
@__exitcall_roccat_exit = internal global ptr @roccat_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author227 = internal constant [32 x i8] c"hid_roccat.author=Stefan Achatz\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [46 x i8] c"hid_roccat.description=USB Roccat char device\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [39 x i8] c"hid_roccat.file=drivers/hid/hid-roccat\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [26 x i8] c"hid_roccat.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devices_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"devices_lock\00", [19 x i8] zeroinitializer }, align 32
@roccat_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014hid_roccat: can't get major number\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"roccat_init\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hid/hid-roccat.c\00", [39 x i8] zeroinitializer }, align 32
@roccat_init._entry_ptr = internal global ptr @roccat_init._entry, section ".printk_index", align 4
@roccat_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @roccat_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @roccat_poll, ptr @roccat_ioctl, ptr null, ptr null, i32 0, ptr @roccat_open, ptr null, ptr @roccat_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@roccat_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.11, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014hid_roccat: cannot add cdev\0A\00", [33 x i8] zeroinitializer }, align 32
@roccat_init._entry_ptr.14 = internal global ptr @roccat_init._entry.12, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@roccat_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.11, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\010hid_roccat: roccat device with minor %d doesn't exist\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"roccat_open\00", [20 x i8] zeroinitializer }, align 32
@roccat_open._entry_ptr = internal global ptr @roccat_open._entry, section ".printk_index", align 4
@roccat_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.11, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"roccat_release\00", [17 x i8] zeroinitializer }, align 32
@roccat_release._entry_ptr = internal global ptr @roccat_release._entry, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 69, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"devices_lock\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"roccat_major\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 66, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 322, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 322, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 334, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 336, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 337, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"roccat_cdev\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 67, i32 20 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 71, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 422, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"roccat_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 404, i32 37 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 432, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 230, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 214, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 174, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 164, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [28 x i8] c"../drivers/hid/hid-roccat.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 214, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_roccat_exit, ptr @__initcall__kmod_hid_roccat__226_452_roccat_init6, ptr @__ksymtab_roccat_connect, ptr @__ksymtab_roccat_disconnect, ptr @__ksymtab_roccat_report_event, ptr @roccat_exit, ptr @roccat_init._entry, ptr @roccat_init._entry.12, ptr @roccat_init._entry_ptr, ptr @roccat_init._entry_ptr.14, ptr @roccat_open._entry, ptr @roccat_open._entry_ptr, ptr @roccat_release._entry, ptr @roccat_release._entry_ptr, ptr @devices, ptr @devices_lock, ptr @roccat_major, ptr @.str, ptr @.str.1, ptr @roccat_connect.__key, ptr @.str.2, ptr @roccat_connect.__key.3, ptr @.str.4, ptr @roccat_connect.__key.5, ptr @.str.6, ptr @roccat_cdev, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @roccat_ops, ptr @.str.13, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_connect.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_connect.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @roccat_report_event(i32 noundef %minor, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x ptr], ptr @devices, i32 0, i32 %minor
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %report_size = getelementptr inbounds %struct.roccat_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %report_size, align 4
  %call = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %3, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cbuf_end = getelementptr inbounds %struct.roccat_device, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %cbuf_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cbuf_end, align 4
  %arrayidx1 = getelementptr %struct.roccat_device, ptr %1, i32 0, i32 9, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %arrayidx1, align 4
  %9 = ptrtoint ptr %cbuf_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cbuf_end, align 4
  %add = add i32 %10, 1
  %rem = srem i32 %add, 16
  store i32 %rem, ptr %cbuf_end, align 4
  %readers = getelementptr inbounds %struct.roccat_device, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %11)
  %reader.036 = load ptr, ptr %readers, align 4
  %cmp.not37 = icmp eq ptr %reader.036, %readers
  br i1 %cmp.not37, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %reader.038 = phi ptr [ %reader.0, %for.inc.for.body_crit_edge ], [ %reader.036, %if.end.for.body_crit_edge ]
  %cbuf_start = getelementptr inbounds %struct.roccat_reader, ptr %reader.038, i32 0, i32 2
  %12 = ptrtoint ptr %cbuf_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cbuf_start, align 4
  %14 = ptrtoint ptr %cbuf_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cbuf_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp7 = icmp eq i32 %13, %15
  br i1 %cmp7, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add10 = add i32 %13, 1
  %rem11 = srem i32 %add10, 16
  %16 = ptrtoint ptr %cbuf_start to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rem11, ptr %cbuf_start, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %reader.038 to i32
  call void @__asan_load4_noabort(i32 %17)
  %reader.0 = load ptr, ptr %reader.038, align 4
  %cmp.not = icmp eq ptr %reader.0, %readers
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %wait = getelementptr inbounds %struct.roccat_device, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @roccat_connect(ptr noundef %klass, ptr noundef %hid, i32 noundef %report_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 336) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_lock, i32 noundef 0) #8
  %1 = load ptr, ptr @devices, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.then5.critedge_crit_edge, label %for.inc

if.end.if.then5.critedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.critedge

for.inc:                                          ; preds = %if.end
  %2 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 1), align 4
  %tobool1.not.1 = icmp eq ptr %2, null
  br i1 %tobool1.not.1, label %for.inc.if.then5.critedge_crit_edge, label %for.inc.1

for.inc.if.then5.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.critedge

for.inc.1:                                        ; preds = %for.inc
  %3 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 2), align 4
  %tobool1.not.2 = icmp eq ptr %3, null
  br i1 %tobool1.not.2, label %for.inc.1.if.then5.critedge_crit_edge, label %for.inc.2

for.inc.1.if.then5.critedge_crit_edge:            ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.critedge

for.inc.2:                                        ; preds = %for.inc.1
  %4 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 3), align 4
  %tobool1.not.3 = icmp eq ptr %4, null
  br i1 %tobool1.not.3, label %for.inc.2.if.then5.critedge_crit_edge, label %for.inc.3

for.inc.2.if.then5.critedge_crit_edge:            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.critedge

for.inc.3:                                        ; preds = %for.inc.2
  %5 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 4), align 4
  %tobool1.not.4 = icmp eq ptr %5, null
  br i1 %tobool1.not.4, label %for.inc.3.if.then5.critedge_crit_edge, label %for.inc.4

for.inc.3.if.then5.critedge_crit_edge:            ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.critedge

for.inc.4:                                        ; preds = %for.inc.3
  %6 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 5), align 4
  %tobool1.not.5 = icmp eq ptr %6, null
  br i1 %tobool1.not.5, label %for.inc.4.if.then5.critedge_crit_edge, label %for.inc.5

for.inc.4.if.then5.critedge_crit_edge:            ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.critedge

for.inc.5:                                        ; preds = %for.inc.4
  %7 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 6), align 4
  %tobool1.not.6 = icmp eq ptr %7, null
  br i1 %tobool1.not.6, label %for.inc.5.if.then5.critedge_crit_edge, label %for.inc.6

for.inc.5.if.then5.critedge_crit_edge:            ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.critedge

for.inc.6:                                        ; preds = %for.inc.5
  %8 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 7), align 4
  %tobool1.not.7 = icmp eq ptr %8, null
  br i1 %tobool1.not.7, label %for.inc.6.if.then5.critedge_crit_edge, label %for.inc.7

for.inc.6.if.then5.critedge_crit_edge:            ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.critedge

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @devices_lock) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.then5.critedge:                                ; preds = %for.inc.6.if.then5.critedge_crit_edge, %for.inc.5.if.then5.critedge_crit_edge, %for.inc.4.if.then5.critedge_crit_edge, %for.inc.3.if.then5.critedge_crit_edge, %for.inc.2.if.then5.critedge_crit_edge, %for.inc.1.if.then5.critedge_crit_edge, %for.inc.if.then5.critedge_crit_edge, %if.end.if.then5.critedge_crit_edge
  %minor.055.lcssa = phi i32 [ 0, %if.end.if.then5.critedge_crit_edge ], [ 1, %for.inc.if.then5.critedge_crit_edge ], [ 2, %for.inc.1.if.then5.critedge_crit_edge ], [ 3, %for.inc.2.if.then5.critedge_crit_edge ], [ 4, %for.inc.3.if.then5.critedge_crit_edge ], [ 5, %for.inc.4.if.then5.critedge_crit_edge ], [ 6, %for.inc.5.if.then5.critedge_crit_edge ], [ 7, %for.inc.6.if.then5.critedge_crit_edge ]
  %arrayidx.lcssa = phi ptr [ @devices, %if.end.if.then5.critedge_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 1), %for.inc.if.then5.critedge_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 2), %for.inc.1.if.then5.critedge_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 3), %for.inc.2.if.then5.critedge_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 4), %for.inc.3.if.then5.critedge_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 5), %for.inc.4.if.then5.critedge_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 6), %for.inc.5.if.then5.critedge_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @devices, i32 0, i32 7), %for.inc.6.if.then5.critedge_crit_edge ]
  %9 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %arrayidx.lcssa, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %10 = load i32, ptr @roccat_major, align 4
  %shl = shl i32 %10, 20
  %or = or i32 %shl, %minor.055.lcssa
  %driver = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 19
  %11 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call8 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %klass, ptr noundef %dev, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %14, i32 noundef %minor.055.lcssa) #8
  %dev9 = getelementptr inbounds %struct.roccat_device, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8, ptr %dev9, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.then5.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.lcssa, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devices_lock) #8
  %17 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev9, align 4
  %19 = ptrtoint ptr %18 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.then5.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @devices_lock) #8
  %wait = getelementptr inbounds %struct.roccat_device, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @roccat_connect.__key) #8
  %readers = getelementptr inbounds %struct.roccat_device, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %readers to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %readers, ptr %readers, align 4
  %prev.i = getelementptr inbounds %struct.roccat_device, ptr %call7.i.i, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %readers, ptr %prev.i, align 8
  %readers_lock = getelementptr inbounds %struct.roccat_device, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %readers_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @roccat_connect.__key.3) #8
  %cbuf_lock = getelementptr inbounds %struct.roccat_device, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %cbuf_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @roccat_connect.__key.5) #8
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %minor.055.lcssa, ptr %call7.i.i, align 8
  %hid24 = getelementptr inbounds %struct.roccat_device, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %hid24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %hid, ptr %hid24, align 8
  %exist = getelementptr inbounds %struct.roccat_device, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %exist to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %exist, align 4
  %cbuf_end = getelementptr inbounds %struct.roccat_device, ptr %call7.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %cbuf_end to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cbuf_end, align 8
  %report_size25 = getelementptr inbounds %struct.roccat_device, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %report_size25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %report_size, ptr %report_size25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then12, %for.inc.7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then12 ], [ %minor.055.lcssa, %if.end16 ], [ -22, %for.inc.7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @roccat_disconnect(i32 noundef %minor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_lock, i32 noundef 0) #8
  %arrayidx = getelementptr [8 x ptr], ptr @devices, i32 0, i32 %minor
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devices_lock) #8
  %exist = getelementptr inbounds %struct.roccat_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %exist to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %exist, align 4
  %dev = getelementptr inbounds %struct.roccat_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %class = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class, align 4
  %7 = load i32, ptr @roccat_major, align 4
  %shl = shl i32 %7, 20
  %or = or i32 %shl, %minor
  tail call void @device_destroy(ptr noundef %6, i32 noundef %or) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_lock, i32 noundef 0) #8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devices_lock) #8
  %open = getelementptr inbounds %struct.roccat_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hid = getelementptr inbounds %struct.roccat_device, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hid, align 4
  tail call void @hid_hw_close(ptr noundef %12) #8
  %wait = getelementptr inbounds %struct.roccat_device, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @roccat_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @roccat_major, align 4
  %shl = shl i32 %0, 20
  tail call void @cdev_del(ptr noundef nonnull @roccat_cdev) #8
  tail call void @unregister_chrdev_region(i32 noundef %shl, i32 noundef 8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_init() #3 section ".init.text" align 64 {
entry:
  %dev_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_id) #8
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev_id, align 4, !annotation !84
  %call = call i32 @alloc_chrdev_region(ptr noundef nonnull %dev_id, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_id, align 4
  %shr = lshr i32 %2, 20
  store i32 %shr, ptr @roccat_major, align 4
  call void @cdev_init(ptr noundef nonnull @roccat_cdev, ptr noundef nonnull @roccat_ops) #8
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_id, align 4
  %call3 = call i32 @cdev_add(ptr noundef nonnull @roccat_cdev, i32 noundef %4, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_id, align 4
  call void @unregister_chrdev_region(i32 noundef %6, i32 noundef 8) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %do.end ], [ %call3, %do.end8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_id) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %device1 = getelementptr inbounds %struct.roccat_reader, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !74) #8
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
  store ptr @default_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  %cbuf_lock = getelementptr inbounds %struct.roccat_device, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %cbuf_lock, i32 noundef 0) #8
  %cbuf_start = getelementptr inbounds %struct.roccat_reader, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %cbuf_start to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cbuf_start, align 4
  %cbuf_end = getelementptr inbounds %struct.roccat_device, ptr %3, i32 0, i32 10
  %19 = ptrtoint ptr %cbuf_end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cbuf_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp = icmp eq i32 %18, %20
  br i1 %cmp, label %if.then, label %entry.if.end248_crit_edge

entry.if.end248_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.then:                                          ; preds = %entry
  %wait4 = getelementptr inbounds %struct.roccat_device, ptr %3, i32 0, i32 4
  call void @add_wait_queue(ptr noundef %wait4, ptr noundef nonnull %wait) #8
  br label %__here

__here:                                           ; preds = %if.then
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@roccat_read, %__here) to i32), ptr %task_state_change, align 4
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %24, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %exist = getelementptr inbounds %struct.roccat_device, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %cbuf_start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cbuf_start, align 4
  %28 = ptrtoint ptr %cbuf_end to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cbuf_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp69293 = icmp eq i32 %27, %29
  br i1 %cmp69293, label %__here.while.body_crit_edge, label %__here.if.end245_crit_edge

__here.if.end245_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

__here.while.body_crit_edge:                      ; preds = %__here
  br label %while.body

while.body:                                       ; preds = %__here134.while.body_crit_edge, %__here.while.body_crit_edge
  %30 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_flags, align 4
  %and = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %if.end72, label %while.body.if.end245_crit_edge

while.body.if.end245_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

if.end72:                                         ; preds = %while.body
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stack.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end72.if.end245_crit_edge, !prof !86

if.end72.if.end245_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

signal_pending.exit:                              ; preds = %if.end72
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %35, align 4
  %and1.i.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool76.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool76.not, label %if.end78, label %signal_pending.exit.if.end245_crit_edge

signal_pending.exit.if.end245_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

if.end78:                                         ; preds = %signal_pending.exit
  %41 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool79.not = icmp eq i32 %42, 0
  br i1 %tobool79.not, label %if.end78.if.end245_crit_edge, label %if.end81

if.end78.if.end245_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

if.end81:                                         ; preds = %if.end78
  call void @mutex_unlock(ptr noundef %cbuf_lock) #8
  call void @schedule() #8
  call void @mutex_lock_nested(ptr noundef %cbuf_lock, i32 noundef 0) #8
  br label %__here134

__here134:                                        ; preds = %if.end81
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %task_state_change138 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 212
  %45 = ptrtoint ptr %task_state_change138 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 ptrtoint (ptr blockaddress(@roccat_read, %__here134) to i32), ptr %task_state_change138, align 4
  %46 = load ptr, ptr %task, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %46, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %48 = ptrtoint ptr %cbuf_start to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cbuf_start, align 4
  %50 = ptrtoint ptr %cbuf_end to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cbuf_end, align 4
  %cmp69 = icmp eq i32 %49, %51
  br i1 %cmp69, label %__here134.while.body_crit_edge, label %__here134.if.end245_crit_edge

__here134.if.end245_crit_edge:                    ; preds = %__here134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

__here134.while.body_crit_edge:                   ; preds = %__here134
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end245:                                        ; preds = %__here134.if.end245_crit_edge, %if.end78.if.end245_crit_edge, %signal_pending.exit.if.end245_crit_edge, %if.end72.if.end245_crit_edge, %while.body.if.end245_crit_edge, %__here.if.end245_crit_edge
  %cmp69.lcssa = phi i1 [ false, %__here.if.end245_crit_edge ], [ true, %if.end72.if.end245_crit_edge ], [ true, %if.end78.if.end245_crit_edge ], [ true, %signal_pending.exit.if.end245_crit_edge ], [ true, %while.body.if.end245_crit_edge ], [ false, %__here134.if.end245_crit_edge ]
  %retval2.0 = phi i32 [ 0, %__here.if.end245_crit_edge ], [ -512, %if.end72.if.end245_crit_edge ], [ -5, %if.end78.if.end245_crit_edge ], [ -512, %signal_pending.exit.if.end245_crit_edge ], [ -11, %while.body.if.end245_crit_edge ], [ 0, %__here134.if.end245_crit_edge ]
  %52 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task, align 8
  %task_state_change218 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 212
  %54 = ptrtoint ptr %task_state_change218 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 ptrtoint (ptr blockaddress(@roccat_read, %if.end245) to i32), ptr %task_state_change218, align 4
  %55 = load ptr, ptr %task, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %55, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  call void @remove_wait_queue(ptr noundef %wait4, ptr noundef nonnull %wait) #8
  br i1 %cmp69.lcssa, label %if.end245.exit_unlock_crit_edge, label %if.end245.if.end248_crit_edge

if.end245.if.end248_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.end245.exit_unlock_crit_edge:                  ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_unlock

if.end248:                                        ; preds = %if.end245.if.end248_crit_edge, %entry.if.end248_crit_edge
  %57 = ptrtoint ptr %cbuf_start to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cbuf_start, align 4
  %arrayidx = getelementptr %struct.roccat_device, ptr %3, i32 0, i32 9, i32 %58
  %report_size = getelementptr inbounds %struct.roccat_device, ptr %3, i32 0, i32 1
  %59 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %report_size, align 4
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 %count)
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp9.i.i = icmp slt i32 %61, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end248
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.exit_unlock_crit_edge, label %if.then27.i.i, !prof !86

land.rhs16.i.i.exit_unlock_crit_edge:             ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_unlock

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %exit_unlock

if.then.i.i.i:                                    ; preds = %if.end248
  call void @__check_object_size(ptr noundef %63, i32 noundef %61, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %64 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %61, i32 -1226833920) #13, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %63, i32 noundef %61) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %63, i32 noundef %61) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %61, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %61, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool253.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool253.not, label %if.end255, label %copy_to_user.exit.exit_unlock_crit_edge

copy_to_user.exit.exit_unlock_crit_edge:          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_unlock

if.end255:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %cbuf_start to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cbuf_start, align 4
  %add257 = add i32 %66, 1
  %rem = srem i32 %add257, 16
  store i32 %rem, ptr %cbuf_start, align 4
  br label %exit_unlock

exit_unlock:                                      ; preds = %if.end255, %copy_to_user.exit.exit_unlock_crit_edge, %if.then27.i.i, %land.rhs16.i.i.exit_unlock_crit_edge, %if.end245.exit_unlock_crit_edge
  %retval2.2 = phi i32 [ %retval2.0, %if.end245.exit_unlock_crit_edge ], [ %61, %if.end255 ], [ -14, %copy_to_user.exit.exit_unlock_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.exit_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %cbuf_lock) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %retval2.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %device = getelementptr inbounds %struct.roccat_reader, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %wait1 = getelementptr inbounds %struct.roccat_device, ptr %3, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wait1, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %cbuf_start = getelementptr inbounds %struct.roccat_reader, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cbuf_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cbuf_start, align 4
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %cbuf_end = getelementptr inbounds %struct.roccat_device, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %cbuf_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cbuf_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp.not = icmp eq i32 %7, %11
  br i1 %cmp.not, label %if.end, label %poll_wait.exit.cleanup_crit_edge

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  %exist = getelementptr inbounds %struct.roccat_device, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %. = select i1 %tobool.not, i32 24, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 65, %poll_wait.exit.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i9 = and i32 %3, 1048575
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_lock, i32 noundef 0) #8
  %arrayidx = getelementptr [8 x ptr], ptr @devices, i32 0, i32 %and.i9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147202831, i32 %cmd)
  %cond = icmp eq i32 %cmd, -2147202831
  br i1 %cond, label %sw.bb, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = inttoptr i32 %arg to ptr
  %report_size = getelementptr inbounds %struct.roccat_device, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %report_size, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 393) #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !90
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %8, i32 -1226833921) #8, !srcloc !93
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %sw.bb, %if.end.out_crit_edge, %entry.out_crit_edge
  %retval2.0 = phi i32 [ -19, %entry.out_crit_edge ], [ %spec.select, %sw.bb ], [ -25, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @devices_lock) #8
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_lock, i32 noundef 0) #8
  %arrayidx = getelementptr [8 x ptr], ptr @devices, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %exit_err_devices.thread, label %if.end5

exit_err_devices.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and.i) #12
  tail call void @mutex_unlock(ptr noundef nonnull @devices_lock) #8
  br label %if.then25

if.end5:                                          ; preds = %if.end
  %readers_lock = getelementptr inbounds %struct.roccat_device, ptr %4, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %readers_lock, i32 noundef 0) #8
  %open = getelementptr inbounds %struct.roccat_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %open, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then7:                                         ; preds = %if.end5
  %hid = getelementptr inbounds %struct.roccat_device, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hid, align 4
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then7.if.end11_crit_edge, label %hid_hw_power.exit

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

hid_hw_power.exit:                                ; preds = %if.then7
  %call.i = tail call i32 %12(ptr noundef %8, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %hid_hw_power.exit.if.end11_crit_edge

hid_hw_power.exit.if.end11_crit_edge:             ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %open, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %open, align 4
  br label %exit_err_devices

if.end11:                                         ; preds = %hid_hw_power.exit.if.end11_crit_edge, %if.then7.if.end11_crit_edge
  %15 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hid, align 4
  %call13 = tail call i32 @hid_hw_open(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end11.if.end21_crit_edge

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then15:                                        ; preds = %if.end11
  %17 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hid, align 4
  %ll_driver.i50 = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %ll_driver.i50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ll_driver.i50, align 4
  %power.i51 = getelementptr inbounds %struct.hid_ll_driver, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %power.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %power.i51, align 4
  %tobool.not.i52 = icmp eq ptr %22, null
  br i1 %tobool.not.i52, label %if.then15.hid_hw_power.exit56_crit_edge, label %cond.true.i54

if.then15.hid_hw_power.exit56_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %hid_hw_power.exit56

cond.true.i54:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %call.i53 = tail call i32 %22(ptr noundef %18, i32 noundef 2) #8
  br label %hid_hw_power.exit56

hid_hw_power.exit56:                              ; preds = %cond.true.i54, %if.then15.hid_hw_power.exit56_crit_edge
  %23 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %open, align 4
  %dec19 = add i32 %24, -1
  store i32 %dec19, ptr %open, align 4
  br label %exit_err_devices

if.end21:                                         ; preds = %if.end11.if.end21_crit_edge, %if.end5.if.end21_crit_edge
  %error.0 = phi i32 [ 0, %if.end5.if.end21_crit_edge ], [ %call13, %if.end11.if.end21_crit_edge ]
  %device22 = getelementptr inbounds %struct.roccat_reader, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %device22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %4, ptr %device22, align 8
  %cbuf_end = getelementptr inbounds %struct.roccat_device, ptr %4, i32 0, i32 10
  %26 = ptrtoint ptr %cbuf_end to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cbuf_end, align 4
  %cbuf_start = getelementptr inbounds %struct.roccat_reader, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %cbuf_start to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cbuf_start, align 4
  %readers = getelementptr inbounds %struct.roccat_device, ptr %4, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.roccat_device, ptr %4, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %30, ptr noundef %readers) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_add_tail.exit_crit_edge

if.end21.list_add_tail.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %readers, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %30, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end21.list_add_tail.exit_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %35 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %exit_err_devices

exit_err_devices:                                 ; preds = %list_add_tail.exit, %hid_hw_power.exit56, %if.then9
  %error.1 = phi i32 [ %error.0, %list_add_tail.exit ], [ %call.i, %if.then9 ], [ %call13, %hid_hw_power.exit56 ]
  tail call void @mutex_unlock(ptr noundef %readers_lock) #8
  tail call void @mutex_unlock(ptr noundef nonnull @devices_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool24.not = icmp eq i32 %error.1, 0
  br i1 %tobool24.not, label %exit_err_devices.cleanup_crit_edge, label %exit_err_devices.if.then25_crit_edge

exit_err_devices.if.then25_crit_edge:             ; preds = %exit_err_devices
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

exit_err_devices.cleanup_crit_edge:               ; preds = %exit_err_devices
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %exit_err_devices.if.then25_crit_edge, %exit_err_devices.thread
  %error.261 = phi i32 [ -19, %exit_err_devices.thread ], [ %error.1, %exit_err_devices.if.then25_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %exit_err_devices.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %error.261, %if.then25 ], [ 0, %exit_err_devices.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_lock, i32 noundef 0) #8
  %arrayidx = getelementptr [8 x ptr], ptr @devices, i32 0, i32 %and.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @devices_lock) #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %readers_lock = getelementptr inbounds %struct.roccat_device, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %readers_lock, i32 noundef 0) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %readers_lock) #8
  tail call void @kfree(ptr noundef %3) #8
  %open = getelementptr inbounds %struct.roccat_device, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %open, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %if.then4, label %list_del.exit.if.end10_crit_edge

list_del.exit.if.end10_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then4:                                         ; preds = %list_del.exit
  %exist = getelementptr inbounds %struct.roccat_device, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %exist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  %hid = getelementptr inbounds %struct.roccat_device, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hid, align 4
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then6.hid_hw_power.exit_crit_edge, label %cond.true.i

if.then6.hid_hw_power.exit_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %hid_hw_power.exit

cond.true.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %23(ptr noundef %19, i32 noundef 2) #8
  br label %hid_hw_power.exit

hid_hw_power.exit:                                ; preds = %cond.true.i, %if.then6.hid_hw_power.exit_crit_edge
  %24 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hid, align 4
  tail call void @hid_hw_close(ptr noundef %25) #8
  br label %if.end10

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %hid_hw_power.exit, %list_del.exit.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devices_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !68, !69, !70, !72, !73}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__ksymtab_roccat_report_event, !1, !"__ksymtab_roccat_report_event", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-roccat.c", i32 282, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-roccat.c", i32 322, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-roccat.c", i32 322, i32 14}
!6 = !{ptr @roccat_connect.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-roccat.c", i32 334, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @roccat_connect.__key.3, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-roccat.c", i32 336, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @roccat_connect.__key.5, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-roccat.c", i32 337, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_roccat_connect, !16, !"__ksymtab_roccat_connect", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-roccat.c", i32 346, i32 1}
!17 = !{ptr @__ksymtab_roccat_disconnect, !18, !"__ksymtab_roccat_disconnect", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-roccat.c", i32 374, i32 1}
!19 = !{ptr @__initcall__kmod_hid_roccat__226_452_roccat_init6, !20, !"__initcall__kmod_hid_roccat__226_452_roccat_init6", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-roccat.c", i32 452, i32 1}
!21 = !{ptr @__exitcall_roccat_exit, !22, !"__exitcall_roccat_exit", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-roccat.c", i32 453, i32 1}
!23 = !{ptr @__UNIQUE_ID_author227, !24, !"__UNIQUE_ID_author227", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-roccat.c", i32 455, i32 1}
!25 = !{ptr @__UNIQUE_ID_description228, !26, !"__UNIQUE_ID_description228", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-roccat.c", i32 456, i32 1}
!27 = !{ptr @__UNIQUE_ID_file229, !28, !"__UNIQUE_ID_file229", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-roccat.c", i32 457, i32 1}
!29 = !{ptr @__UNIQUE_ID_license230, !28, !"__UNIQUE_ID_license230", i1 false, i1 false}
!30 = !{ptr @roccat_major, !31, !"roccat_major", i1 false, i1 false}
!31 = !{!"../drivers/hid/hid-roccat.c", i32 66, i32 12}
!32 = !{ptr @roccat_cdev, !33, !"roccat_cdev", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-roccat.c", i32 67, i32 20}
!34 = !{ptr @devices, !35, !"devices", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-roccat.c", i32 69, i32 30}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-roccat.c", i32 71, i32 8}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @devices_lock, !37, !"devices_lock", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-roccat.c", i32 422, i32 3}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @roccat_init._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @roccat_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-roccat.c", i32 432, i32 3}
!48 = !{ptr @roccat_init._entry.12, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @roccat_init._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @roccat_ops, !51, !"roccat_ops", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-roccat.c", i32 404, i32 37}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-roccat.c", i32 87, i32 3}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-roccat.c", i32 107, i32 4}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-roccat.c", i32 110, i32 3}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-roccat.c", i32 164, i32 3}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @roccat_open._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @roccat_open._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-roccat.c", i32 214, i32 3}
!72 = !{ptr @roccat_release._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @roccat_release._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{i64 2153615490}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2153620327}
!88 = !{i64 2153625056}
!89 = !{i64 2152657823, i64 2152657848}
!90 = !{i64 5152697}
!91 = !{i64 5152894}
!92 = !{i64 2152638127}
!93 = !{i64 2153645052, i64 2153645332, i64 2153645666, i64 2153646000}
