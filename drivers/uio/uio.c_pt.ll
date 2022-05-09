; ModuleID = '/llk/IR_all_yes/drivers/uio/uio.c_pt.bc'
source_filename = "../drivers/uio/uio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+uio_event_notify\22, \22a\22\09"
module asm "\09.weak\09__crc_uio_event_notify\09\09\09\09"
module asm "\09.long\09__crc_uio_event_notify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uio_event_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22uio_event_notify\22\09\09\09\09\09"
module asm "__kstrtabns_uio_event_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__uio_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc___uio_register_device\09\09\09\09"
module asm "\09.long\09__crc___uio_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___uio_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__uio_register_device\22\09\09\09\09\09"
module asm "__kstrtabns___uio_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_uio_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_uio_register_device\09\09\09\09"
module asm "\09.long\09__crc___devm_uio_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_uio_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_uio_register_device\22\09\09\09\09\09"
module asm "__kstrtabns___devm_uio_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+uio_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_uio_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_uio_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uio_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22uio_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_uio_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.map_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.portio_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.uio_device = type { ptr, %struct.device, i32, %struct.atomic_t, ptr, %struct.wait_queue_head, ptr, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uio_info = type { ptr, ptr, ptr, [5 x %struct.uio_mem], [5 x %struct.uio_port], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uio_mem = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.uio_port = type { ptr, i32, i32, i32, ptr }
%struct.uio_map = type { %struct.kobject, ptr }
%struct.uio_portio = type { %struct.kobject, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
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
%struct.uio_listener = type { ptr, i32 }
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
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.70 = type { ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }

@__kstrtab_uio_event_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_uio_event_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_uio_event_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uio_event_notify to i32), ptr @__kstrtab_uio_event_notify, ptr @__kstrtabns_uio_event_notify }, section "___ksymtab_gpl+uio_event_notify", align 4
@uio_class_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__uio_register_device.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&idev->info_lock\00", [47 x i8] zeroinitializer }, align 32
@__uio_register_device.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&idev->wait\00", [20 x i8] zeroinitializer }, align 32
@uio_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@uio_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.12, ptr null, ptr null, ptr @uio_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uio%d\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab___uio_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___uio_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab___uio_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__uio_register_device to i32), ptr @__kstrtab___uio_register_device, ptr @__kstrtabns___uio_register_device }, section "___ksymtab_gpl+__uio_register_device", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"devm_uio_unregister_device\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab___devm_uio_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_uio_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_uio_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_uio_register_device to i32), ptr @__kstrtab___devm_uio_register_device, ptr @__kstrtabns___devm_uio_register_device }, section "___ksymtab_gpl+__devm_uio_register_device", align 4
@__kstrtab_uio_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_uio_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_uio_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uio_unregister_device to i32), ptr @__kstrtab_uio_unregister_device, ptr @__kstrtabns_uio_unregister_device }, section "___ksymtab_gpl+uio_unregister_device", align 4
@uio_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_uio__235_1086_uio_init6 = internal global ptr @uio_init, section ".initcall6.init", align 4
@__exitcall_uio_exit = internal global ptr @uio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file236 = internal constant [25 x i8] c"uio.file=drivers/uio/uio\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [19 x i8] c"uio.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@minor_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @minor_lock, i64 52), ptr getelementptr (i8, ptr @minor_lock, i64 52) }, ptr @minor_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@uio_get_minor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 411, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"too many uio devices\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uio_get_minor\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/uio/uio.c\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uio_get_minor._entry_ptr = internal global ptr @uio_get_minor._entry, section ".printk_index", align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"minor_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"minor_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uio\00", [28 x i8] zeroinitializer }, align 32
@uio_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @uio_group, ptr null], [24 x i8] zeroinitializer }, align 32
@uio_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @uio_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@uio_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_name, ptr @dev_attr_version, ptr @dev_attr_event, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_event = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @event_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@name_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 224, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"the device has been unregistered\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"name_show\00", [22 x i8] zeroinitializer }, align 32
@name_show._entry_ptr = internal global ptr @name_show._entry, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@version_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.18, ptr @.str.7, i32 245, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"version_show\00", [19 x i8] zeroinitializer }, align 32
@version_show._entry_ptr = internal global ptr @version_show._entry, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"maps\00", [27 x i8] zeroinitializer }, align 32
@map_attr_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @map_release, ptr @map_sysfs_ops, ptr null, ptr @map_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"map%d\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"portio\00", [25 x i8] zeroinitializer }, align 32
@portio_attr_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @portio_release, ptr @portio_sysfs_ops, ptr null, ptr @portio_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"port%d\00", [25 x i8] zeroinitializer }, align 32
@uio_dev_add_attributes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 374, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error creating sysfs files (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uio_dev_add_attributes\00", [41 x i8] zeroinitializer }, align 32
@uio_dev_add_attributes._entry_ptr = internal global ptr @uio_dev_add_attributes._entry, section ".printk_index", align 4
@map_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @map_type_show, ptr null }, [24 x i8] zeroinitializer }, align 32
@map_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @map_group, ptr null], [24 x i8] zeroinitializer }, align 32
@map_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @map_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@map_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @name_attribute, ptr @addr_attribute, ptr @size_attribute, ptr @offset_attribute, ptr null], [44 x i8] zeroinitializer }, align 32
@name_attribute = internal global { %struct.map_sysfs_entry, [36 x i8] } { %struct.map_sysfs_entry { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @map_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@addr_attribute = internal global { %struct.map_sysfs_entry, [36 x i8] } { %struct.map_sysfs_entry { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @map_addr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@size_attribute = internal global { %struct.map_sysfs_entry, [36 x i8] } { %struct.map_sysfs_entry { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @map_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@offset_attribute = internal global { %struct.map_sysfs_entry, [36 x i8] } { %struct.map_sysfs_entry { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @map_offset_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pa\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@portio_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @portio_type_show, ptr null }, [24 x i8] zeroinitializer }, align 32
@portio_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @portio_group, ptr null], [24 x i8] zeroinitializer }, align 32
@portio_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @portio_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@portio_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @portio_name_attribute, ptr @portio_start_attribute, ptr @portio_size_attribute, ptr @portio_porttype_attribute, ptr null], [44 x i8] zeroinitializer }, align 32
@portio_name_attribute = internal global { %struct.portio_sysfs_entry, [36 x i8] } { %struct.portio_sysfs_entry { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @portio_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@portio_start_attribute = internal global { %struct.portio_sysfs_entry, [36 x i8] } { %struct.portio_sysfs_entry { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @portio_start_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@portio_size_attribute = internal global { %struct.portio_sysfs_entry, [36 x i8] } { %struct.portio_sysfs_entry { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @portio_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@portio_porttype_attribute = internal global { %struct.portio_sysfs_entry, [36 x i8] } { %struct.portio_sysfs_entry { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @portio_porttype_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%lx\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"porttype\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x86\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"other\00", [26 x i8] zeroinitializer }, align 32
@__const.portio_porttype_show.porttypes = private unnamed_addr constant [4 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], align 4
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"port_%s\0A\00", [23 x i8] zeroinitializer }, align 32
@uio_cdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uio_idr.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@init_uio_class.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@init_uio_class._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013class_register failed for uio\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_uio_class\00", [17 x i8] zeroinitializer }, align 32
@init_uio_class._entry_ptr = internal global ptr @init_uio_class._entry, section ".printk_index", align 4
@uio_major_init.name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uio\00", [28 x i8] zeroinitializer }, align 32
@uio_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @uio_read, ptr @uio_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uio_poll, ptr null, ptr null, ptr @uio_mmap, i32 0, ptr @uio_open, ptr null, ptr @uio_release, ptr null, ptr @uio_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@uio_physical_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } zeroinitializer, align 32
@uio_logical_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uio_vma_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.50 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"uio_class_registered\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 940, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 941, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"uio_major\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 30, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"uio_class\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 274, i32 21 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 957, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1021, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"uio_idr\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"minor_lock\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 411, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 36, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 275, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"uio_groups\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [10 x i8] c"uio_group\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 271, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [10 x i8] c"uio_attrs\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 265, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"dev_attr_version\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"dev_attr_event\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 234, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 224, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 228, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 255, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 245, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 263, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 261, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 301, i32 43 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"map_attr_type\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 120, i32 25 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 316, i32 48 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 330, i32 46 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"portio_attr_type\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 209, i32 25 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 346, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 374, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [14 x i8] c"map_sysfs_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 116, i32 31 }
@___asan_gen_.183 = private unnamed_addr constant [11 x i8] c"map_groups\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [10 x i8] c"map_group\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 93, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant [10 x i8] c"map_attrs\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 86, i32 26 }
@___asan_gen_.192 = private unnamed_addr constant [15 x i8] c"name_attribute\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 77, i32 31 }
@___asan_gen_.195 = private unnamed_addr constant [15 x i8] c"addr_attribute\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 79, i32 31 }
@___asan_gen_.198 = private unnamed_addr constant [15 x i8] c"size_attribute\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 81, i32 31 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"offset_attribute\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 83, i32 31 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 51, i32 15 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 80, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 58, i32 22 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 82, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 84, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 68, i32 22 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"portio_sysfs_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 205, i32 31 }
@___asan_gen_.225 = private unnamed_addr constant [14 x i8] c"portio_groups\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [13 x i8] c"portio_group\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 182, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [13 x i8] c"portio_attrs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 175, i32 26 }
@___asan_gen_.234 = private unnamed_addr constant [22 x i8] c"portio_name_attribute\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 166, i32 34 }
@___asan_gen_.237 = private unnamed_addr constant [23 x i8] c"portio_start_attribute\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 168, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant [22 x i8] c"portio_size_attribute\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 170, i32 34 }
@___asan_gen_.243 = private unnamed_addr constant [26 x i8] c"portio_porttype_attribute\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 172, i32 34 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 169, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 142, i32 22 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 173, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 152, i32 29 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 152, i32 37 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 152, i32 44 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 152, i32 52 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 157, i32 22 }
@___asan_gen_.270 = private unnamed_addr constant [9 x i8] c"uio_cdev\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 31, i32 21 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 32, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 880, i32 8 }
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 882, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 832, i32 20 }
@___asan_gen_.291 = private unnamed_addr constant [9 x i8] c"uio_fops\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 818, i32 37 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 848, i32 32 }
@___asan_gen_.298 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 174, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c"uio_physical_vm_ops\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 721, i32 42 }
@___asan_gen_.303 = private unnamed_addr constant [19 x i8] c"uio_logical_vm_ops\00", align 1
@___asan_gen_.304 = private constant [21 x i8] c"../drivers/uio/uio.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 710, i32 42 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1160, i32 2 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_uio_exit, ptr @__initcall__kmod_uio__235_1086_uio_init6, ptr @__ksymtab___devm_uio_register_device, ptr @__ksymtab___uio_register_device, ptr @__ksymtab_uio_event_notify, ptr @__ksymtab_uio_unregister_device, ptr @init_uio_class._entry, ptr @init_uio_class._entry_ptr, ptr @name_show._entry, ptr @name_show._entry_ptr, ptr @uio_dev_add_attributes._entry, ptr @uio_dev_add_attributes._entry_ptr, ptr @uio_exit, ptr @uio_get_minor._entry, ptr @uio_get_minor._entry_ptr, ptr @version_show._entry, ptr @version_show._entry_ptr, ptr @uio_class_registered, ptr @.str, ptr @.str.2, ptr @uio_major, ptr @uio_class, ptr @.str.3, ptr @.str.4, ptr @uio_idr, ptr @minor_lock, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @uio_groups, ptr @uio_group, ptr @uio_attrs, ptr @dev_attr_name, ptr @dev_attr_version, ptr @dev_attr_event, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @map_attr_type, ptr @.str.22, ptr @.str.23, ptr @portio_attr_type, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @map_sysfs_ops, ptr @map_groups, ptr @map_group, ptr @map_attrs, ptr @name_attribute, ptr @addr_attribute, ptr @size_attribute, ptr @offset_attribute, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @portio_sysfs_ops, ptr @portio_groups, ptr @portio_group, ptr @portio_attrs, ptr @portio_name_attribute, ptr @portio_start_attribute, ptr @portio_size_attribute, ptr @portio_porttype_attribute, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @uio_cdev, ptr @.str.41, ptr @init_uio_class.__key, ptr @.str.42, ptr @.str.43, ptr @uio_major_init.name, ptr @uio_fops, ptr @.str.44, ptr @.str.49, ptr @uio_physical_vm_ops, ptr @uio_logical_vm_ops, ptr @.str.50], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_class_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minor_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_get_minor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portio_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dev_add_attributes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @size_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offset_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portio_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portio_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portio_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portio_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portio_name_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portio_start_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portio_size_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portio_porttype_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_cdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_uio_class.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_uio_class._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_major_init.name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_physical_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_logical_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uio_event_notify(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %event = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %event, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event, ptr %event, i32 1, ptr elementtype(i32) %event) #10, !srcloc !194
  %wait = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %async_queue = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 4
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__uio_register_device(ptr noundef %owner, ptr noundef %parent, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b101 = load i1, ptr @uio_class_registered, align 1
  br i1 %.b101, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %parent, null
  %tobool2.not = icmp eq ptr %info, null
  %or.cond = or i1 %tobool1.not, %tobool2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %name = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %version = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %version, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %info, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1104) #13
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %owner, ptr %call7.i.i, align 8
  %info13 = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %info13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %info, ptr %info13, align 8
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %info_lock, ptr noundef nonnull @.str, ptr noundef nonnull @__uio_register_device.__key) #10
  %wait = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @__uio_register_device.__key.1) #10
  %event = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event, i32 noundef 4) #10
  %8 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %event, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @minor_lock, i32 noundef 0) #10
  %call.i = tail call i32 @idr_alloc(ptr noundef nonnull @uio_idr, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 1048576, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end20, label %if.else.i

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, -28
  br i1 %cmp2.i, label %do.end.i, label %if.else.i.if.then19_crit_edge

if.else.i.if.then19_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5) #14
  br label %if.then19

if.then19:                                        ; preds = %do.end.i, %if.else.i.if.then19_crit_edge
  %retval1.0.i.ph = phi i32 [ %call.i, %if.else.i.if.then19_crit_edge ], [ -22, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @minor_lock) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %minor.i = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i, ptr %minor.i, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @minor_lock) #10
  %dev = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %dev) #10
  %10 = load i32, ptr @uio_major, align 4
  %shl = shl i32 %10, 20
  %11 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor.i, align 8
  %or = or i32 %shl, %12
  %devt = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 1, i32 29
  %13 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %devt, align 8
  %class = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 1, i32 33
  %14 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @uio_class, ptr %class, align 4
  %parent24 = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %parent24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %parent, ptr %parent24, align 8
  %release = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 1, i32 35
  %16 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @uio_device_release, ptr %release, align 4
  %driver_data.i = getelementptr inbounds %struct.uio_device, ptr %call7.i.i, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %call29 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end20.err_device_create_crit_edge

if.end20.err_device_create_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_device_create

if.end32:                                         ; preds = %if.end20
  %call34 = tail call i32 @device_add(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.err_device_create_crit_edge

if.end32.err_device_create_crit_edge:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_device_create

if.end37:                                         ; preds = %if.end32
  %call38 = tail call fastcc i32 @uio_dev_add_attributes(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.err_uio_dev_add_attributes_crit_edge

if.end37.err_uio_dev_add_attributes_crit_edge:    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_uio_dev_add_attributes

if.end41:                                         ; preds = %if.end37
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %info, align 4
  %irq = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 5
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.then45 [
    i32 0, label %if.end41.cleanup_crit_edge
    i32 -1, label %if.end41.cleanup_crit_edge107
  ]

if.end41.cleanup_crit_edge107:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45:                                        ; preds = %if.end41
  %irq_flags = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 6
  %22 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_flags, align 4
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %call.i102 = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @uio_interrupt, ptr noundef null, i32 noundef %23, ptr noundef %25, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool49.not = icmp eq i32 %call.i102, 0
  br i1 %tobool49.not, label %if.then45.cleanup_crit_edge, label %if.then50

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %info, align 4
  tail call fastcc void @uio_dev_del_attributes(ptr noundef nonnull %call7.i.i)
  br label %err_uio_dev_add_attributes

err_uio_dev_add_attributes:                       ; preds = %if.then50, %if.end37.err_uio_dev_add_attributes_crit_edge
  %ret.0 = phi i32 [ %call38, %if.end37.err_uio_dev_add_attributes_crit_edge ], [ %call.i102, %if.then50 ]
  tail call void @device_del(ptr noundef %dev) #10
  br label %err_device_create

err_device_create:                                ; preds = %err_uio_dev_add_attributes, %if.end32.err_device_create_crit_edge, %if.end20.err_device_create_crit_edge
  %ret.1 = phi i32 [ %call29, %if.end20.err_device_create_crit_edge ], [ %call34, %if.end32.err_device_create_crit_edge ], [ %ret.0, %err_uio_dev_add_attributes ]
  %27 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %minor.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @minor_lock, i32 noundef 0) #10
  %call.i103 = tail call ptr @idr_remove(ptr noundef nonnull @uio_idr, i32 noundef %28) #10
  tail call void @mutex_unlock(ptr noundef nonnull @minor_lock) #10
  tail call void @put_device(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_device_create, %if.then45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end41.cleanup_crit_edge107, %if.then19, %if.end8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0.i.ph, %if.then19 ], [ %ret.1, %err_device_create ], [ -517, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge107 ], [ 0, %if.then45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uio_device_release(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uio_dev_add_attributes(ptr noundef %idev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.uio_device, ptr %idev, i32 0, i32 6
  %dev = getelementptr inbounds %struct.uio_device, ptr %idev, i32 0, i32 1
  %map_dir = getelementptr inbounds %struct.uio_device, ptr %idev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %tobool.not162 = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %mi.0161 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %arrayidx = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 %mi.0161
  %size = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 %mi.0161, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  br i1 %tobool.not162, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.21, ptr noundef %dev) #10
  %4 = ptrtoint ptr %map_dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %map_dir, align 8
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then3.err_map_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3.err_map_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_map

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 140) #13
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.err_map_crit_edge, label %if.end12

if.end8.err_map_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_map

if.end12:                                         ; preds = %if.end8
  tail call void @kobject_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @map_attr_type) #10
  %mem14 = getelementptr inbounds %struct.uio_map, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %mem14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %mem14, align 8
  %map15 = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 %mi.0161, i32 6
  %7 = ptrtoint ptr %map15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %map15, align 4
  %8 = ptrtoint ptr %map_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map_dir, align 8
  %call18 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %call7.i.i, ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef %mi.0161) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end12.err_map_kobj_crit_edge

if.end12.err_map_kobj_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_map_kobj

if.end21:                                         ; preds = %if.end12
  %call23 = tail call i32 @kobject_uevent(ptr noundef nonnull %call7.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.inc, label %if.end21.err_map_kobj_crit_edge

if.end21.err_map_kobj_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_map_kobj

for.inc:                                          ; preds = %if.end21
  %inc = add nuw nsw i32 %mi.0161, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %mi.0.lcssa = phi i32 [ %mi.0161, %for.body.for.end_crit_edge ], [ 5, %for.inc.for.end_crit_edge ]
  %portio_dir = getelementptr inbounds %struct.uio_device, ptr %idev, i32 0, i32 9
  br label %for.body29

for.body29:                                       ; preds = %for.inc65.for.body29_crit_edge, %for.end
  %tobool37.not165 = phi i1 [ true, %for.end ], [ false, %for.inc65.for.body29_crit_edge ]
  %pi.0164 = phi i32 [ 0, %for.end ], [ %inc66, %for.inc65.for.body29_crit_edge ]
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 8
  %arrayidx32 = getelementptr %struct.uio_info, ptr %11, i32 0, i32 4, i32 %pi.0164
  %size33 = getelementptr %struct.uio_info, ptr %11, i32 0, i32 4, i32 %pi.0164, i32 2
  %12 = ptrtoint ptr %size33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp34 = icmp eq i32 %13, 0
  br i1 %cmp34, label %for.body29.cleanup_crit_edge, label %if.end36

for.body29.cleanup_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %for.body29
  br i1 %tobool37.not165, label %if.then38, label %if.end36.if.end46_crit_edge

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then38:                                        ; preds = %if.end36
  %call41 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.23, ptr noundef %dev) #10
  %14 = ptrtoint ptr %portio_dir to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call41, ptr %portio_dir, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.then38.err_portio_crit_edge, label %if.then38.if.end46_crit_edge

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then38.err_portio_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_portio

if.end46:                                         ; preds = %if.then38.if.end46_crit_edge, %if.end36.if.end46_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i153 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 140) #13
  %tobool48.not = icmp eq ptr %call7.i.i153, null
  br i1 %tobool48.not, label %if.end46.err_portio_crit_edge, label %if.end50

if.end46.err_portio_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_portio

if.end50:                                         ; preds = %if.end46
  tail call void @kobject_init(ptr noundef nonnull %call7.i.i153, ptr noundef nonnull @portio_attr_type) #10
  %port52 = getelementptr inbounds %struct.uio_portio, ptr %call7.i.i153, i32 0, i32 1
  %16 = ptrtoint ptr %port52 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx32, ptr %port52, align 8
  %portio53 = getelementptr %struct.uio_info, ptr %11, i32 0, i32 4, i32 %pi.0164, i32 4
  %17 = ptrtoint ptr %portio53 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i153, ptr %portio53, align 4
  %18 = ptrtoint ptr %portio_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %portio_dir, align 4
  %call56 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %call7.i.i153, ptr noundef %19, ptr noundef nonnull @.str.24, i32 noundef %pi.0164) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end50.err_portio_kobj_crit_edge

if.end50.err_portio_kobj_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_portio_kobj

if.end59:                                         ; preds = %if.end50
  %call61 = tail call i32 @kobject_uevent(ptr noundef nonnull %call7.i.i153, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.inc65, label %if.end59.err_portio_kobj_crit_edge

if.end59.err_portio_kobj_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_portio_kobj

for.inc65:                                        ; preds = %if.end59
  %inc66 = add nuw nsw i32 %pi.0164, 1
  %exitcond174.not = icmp eq i32 %inc66, 5
  br i1 %exitcond174.not, label %for.inc65.cleanup_crit_edge, label %for.inc65.for.body29_crit_edge

for.inc65.for.body29_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

for.inc65.cleanup_crit_edge:                      ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_portio:                                       ; preds = %if.end46.err_portio_crit_edge, %if.then38.err_portio_crit_edge
  %dec = add nsw i32 %pi.0164, -1
  br label %err_portio_kobj

err_portio_kobj:                                  ; preds = %err_portio, %if.end59.err_portio_kobj_crit_edge, %if.end50.err_portio_kobj_crit_edge
  %ret.1 = phi i32 [ -12, %err_portio ], [ %call56, %if.end50.err_portio_kobj_crit_edge ], [ %call61, %if.end59.err_portio_kobj_crit_edge ]
  %pi.1 = phi i32 [ %dec, %err_portio ], [ %pi.0164, %if.end50.err_portio_kobj_crit_edge ], [ %pi.0164, %if.end59.err_portio_kobj_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pi.1)
  %cmp69166 = icmp sgt i32 %pi.1, -1
  br i1 %cmp69166, label %for.body70, label %err_portio_kobj.for.end78_crit_edge

err_portio_kobj.for.end78_crit_edge:              ; preds = %err_portio_kobj
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

for.body70:                                       ; preds = %err_portio_kobj
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 8
  %portio74 = getelementptr %struct.uio_info, ptr %21, i32 0, i32 4, i32 %pi.1, i32 4
  %22 = ptrtoint ptr %portio74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %portio74, align 4
  tail call void @kobject_put(ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pi.1)
  %cmp69.not = icmp eq i32 %pi.1, 0
  br i1 %cmp69.not, label %for.body70.for.end78_crit_edge, label %for.body70.1

for.body70.for.end78_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

for.body70.1:                                     ; preds = %for.body70
  %dec77 = add nsw i32 %pi.1, -1
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 8
  %portio74.1 = getelementptr %struct.uio_info, ptr %25, i32 0, i32 4, i32 %dec77, i32 4
  %26 = ptrtoint ptr %portio74.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %portio74.1, align 4
  tail call void @kobject_put(ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec77)
  %cmp69.not.1 = icmp eq i32 %dec77, 0
  br i1 %cmp69.not.1, label %for.body70.1.for.end78_crit_edge, label %for.body70.2

for.body70.1.for.end78_crit_edge:                 ; preds = %for.body70.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

for.body70.2:                                     ; preds = %for.body70.1
  %dec77.1 = add nsw i32 %pi.1, -2
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info, align 8
  %portio74.2 = getelementptr %struct.uio_info, ptr %29, i32 0, i32 4, i32 %dec77.1, i32 4
  %30 = ptrtoint ptr %portio74.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %portio74.2, align 4
  tail call void @kobject_put(ptr noundef %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec77.1)
  %cmp69.not.2 = icmp eq i32 %dec77.1, 0
  br i1 %cmp69.not.2, label %for.body70.2.for.end78_crit_edge, label %for.body70.3

for.body70.2.for.end78_crit_edge:                 ; preds = %for.body70.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

for.body70.3:                                     ; preds = %for.body70.2
  %dec77.2 = add nsw i32 %pi.1, -3
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 8
  %portio74.3 = getelementptr %struct.uio_info, ptr %33, i32 0, i32 4, i32 %dec77.2, i32 4
  %34 = ptrtoint ptr %portio74.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %portio74.3, align 4
  tail call void @kobject_put(ptr noundef %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec77.2)
  %cmp69.not.3 = icmp eq i32 %dec77.2, 0
  br i1 %cmp69.not.3, label %for.body70.3.for.end78_crit_edge, label %for.body70.4

for.body70.3.for.end78_crit_edge:                 ; preds = %for.body70.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

for.body70.4:                                     ; preds = %for.body70.3
  call void @__sanitizer_cov_trace_pc() #12
  %dec77.3 = add nsw i32 %pi.1, -4
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 8
  %portio74.4 = getelementptr %struct.uio_info, ptr %37, i32 0, i32 4, i32 %dec77.3, i32 4
  %38 = ptrtoint ptr %portio74.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %portio74.4, align 4
  tail call void @kobject_put(ptr noundef %39) #10
  br label %for.end78

for.end78:                                        ; preds = %for.body70.4, %for.body70.3.for.end78_crit_edge, %for.body70.2.for.end78_crit_edge, %for.body70.1.for.end78_crit_edge, %for.body70.for.end78_crit_edge, %err_portio_kobj.for.end78_crit_edge
  %40 = ptrtoint ptr %portio_dir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %portio_dir, align 4
  tail call void @kobject_put(ptr noundef %41) #10
  br label %err_map

err_map:                                          ; preds = %for.end78, %if.end8.err_map_crit_edge, %if.then3.err_map_crit_edge
  %mi.0160 = phi i32 [ %mi.0.lcssa, %for.end78 ], [ %mi.0161, %if.then3.err_map_crit_edge ], [ %mi.0161, %if.end8.err_map_crit_edge ]
  %ret.2 = phi i32 [ %ret.1, %for.end78 ], [ -12, %if.then3.err_map_crit_edge ], [ -12, %if.end8.err_map_crit_edge ]
  %dec80 = add nsw i32 %mi.0160, -1
  br label %err_map_kobj

err_map_kobj:                                     ; preds = %err_map, %if.end21.err_map_kobj_crit_edge, %if.end12.err_map_kobj_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_map ], [ %call23, %if.end21.err_map_kobj_crit_edge ], [ %call18, %if.end12.err_map_kobj_crit_edge ]
  %mi.1 = phi i32 [ %dec80, %err_map ], [ %mi.0161, %if.end12.err_map_kobj_crit_edge ], [ %mi.0161, %if.end21.err_map_kobj_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mi.1)
  %cmp82168 = icmp sgt i32 %mi.1, -1
  br i1 %cmp82168, label %for.body83, label %err_map_kobj.for.end91_crit_edge

err_map_kobj.for.end91_crit_edge:                 ; preds = %err_map_kobj
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

for.body83:                                       ; preds = %err_map_kobj
  %42 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info, align 8
  %map87 = getelementptr %struct.uio_info, ptr %43, i32 0, i32 3, i32 %mi.1, i32 6
  %44 = ptrtoint ptr %map87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map87, align 4
  tail call void @kobject_put(ptr noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mi.1)
  %cmp82.not = icmp eq i32 %mi.1, 0
  br i1 %cmp82.not, label %for.body83.for.end91_crit_edge, label %for.body83.1

for.body83.for.end91_crit_edge:                   ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

for.body83.1:                                     ; preds = %for.body83
  %dec90 = add nsw i32 %mi.1, -1
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info, align 8
  %map87.1 = getelementptr %struct.uio_info, ptr %47, i32 0, i32 3, i32 %dec90, i32 6
  %48 = ptrtoint ptr %map87.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map87.1, align 4
  tail call void @kobject_put(ptr noundef %49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec90)
  %cmp82.not.1 = icmp eq i32 %dec90, 0
  br i1 %cmp82.not.1, label %for.body83.1.for.end91_crit_edge, label %for.body83.2

for.body83.1.for.end91_crit_edge:                 ; preds = %for.body83.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

for.body83.2:                                     ; preds = %for.body83.1
  %dec90.1 = add nsw i32 %mi.1, -2
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info, align 8
  %map87.2 = getelementptr %struct.uio_info, ptr %51, i32 0, i32 3, i32 %dec90.1, i32 6
  %52 = ptrtoint ptr %map87.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map87.2, align 4
  tail call void @kobject_put(ptr noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec90.1)
  %cmp82.not.2 = icmp eq i32 %dec90.1, 0
  br i1 %cmp82.not.2, label %for.body83.2.for.end91_crit_edge, label %for.body83.3

for.body83.2.for.end91_crit_edge:                 ; preds = %for.body83.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

for.body83.3:                                     ; preds = %for.body83.2
  %dec90.2 = add nsw i32 %mi.1, -3
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 8
  %map87.3 = getelementptr %struct.uio_info, ptr %55, i32 0, i32 3, i32 %dec90.2, i32 6
  %56 = ptrtoint ptr %map87.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map87.3, align 4
  tail call void @kobject_put(ptr noundef %57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec90.2)
  %cmp82.not.3 = icmp eq i32 %dec90.2, 0
  br i1 %cmp82.not.3, label %for.body83.3.for.end91_crit_edge, label %for.body83.4

for.body83.3.for.end91_crit_edge:                 ; preds = %for.body83.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

for.body83.4:                                     ; preds = %for.body83.3
  call void @__sanitizer_cov_trace_pc() #12
  %dec90.3 = add nsw i32 %mi.1, -4
  %58 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %info, align 8
  %map87.4 = getelementptr %struct.uio_info, ptr %59, i32 0, i32 3, i32 %dec90.3, i32 6
  %60 = ptrtoint ptr %map87.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map87.4, align 4
  tail call void @kobject_put(ptr noundef %61) #10
  br label %for.end91

for.end91:                                        ; preds = %for.body83.4, %for.body83.3.for.end91_crit_edge, %for.body83.2.for.end91_crit_edge, %for.body83.1.for.end91_crit_edge, %for.body83.for.end91_crit_edge, %err_map_kobj.for.end91_crit_edge
  %62 = ptrtoint ptr %map_dir to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %map_dir, align 8
  tail call void @kobject_put(ptr noundef %63) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %ret.3) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end91, %for.inc65.cleanup_crit_edge, %for.body29.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %for.end91 ], [ 0, %for.body29.cleanup_crit_edge ], [ 0, %for.inc65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.uio_device, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %handler = getelementptr inbounds %struct.uio_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 4
  %call = tail call i32 %3(i32 noundef %irq, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %event.i = getelementptr inbounds %struct.uio_device, ptr %7, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %event.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event.i, ptr %event.i, i32 1, ptr elementtype(i32) %event.i) #10, !srcloc !194
  %wait.i = getelementptr inbounds %struct.uio_device, ptr %7, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %async_queue.i = getelementptr inbounds %struct.uio_device, ptr %7, i32 0, i32 4
  tail call void @kill_fasync(ptr noundef %async_queue.i, i32 noundef 29, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uio_dev_del_attributes(ptr nocapture noundef readonly %idev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.uio_device, ptr %idev, i32 0, i32 6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %size = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %entry
  %map = getelementptr %struct.uio_info, ptr %1, i32 0, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  tail call void @kobject_put(ptr noundef %5) #10
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 8
  %size.1 = getelementptr %struct.uio_info, ptr %7, i32 0, i32 3, i32 1, i32 3
  %8 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.1 = icmp eq i32 %9, 0
  br i1 %cmp2.1, label %if.end.for.end_crit_edge, label %if.end.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.1:                                         ; preds = %if.end
  %map.1 = getelementptr %struct.uio_info, ptr %7, i32 0, i32 3, i32 1, i32 6
  %10 = ptrtoint ptr %map.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.1, align 4
  tail call void @kobject_put(ptr noundef %11) #10
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 8
  %size.2 = getelementptr %struct.uio_info, ptr %13, i32 0, i32 3, i32 2, i32 3
  %14 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2.2 = icmp eq i32 %15, 0
  br i1 %cmp2.2, label %if.end.1.for.end_crit_edge, label %if.end.2

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.2:                                         ; preds = %if.end.1
  %map.2 = getelementptr %struct.uio_info, ptr %13, i32 0, i32 3, i32 2, i32 6
  %16 = ptrtoint ptr %map.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.2, align 4
  tail call void @kobject_put(ptr noundef %17) #10
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 8
  %size.3 = getelementptr %struct.uio_info, ptr %19, i32 0, i32 3, i32 3, i32 3
  %20 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2.3 = icmp eq i32 %21, 0
  br i1 %cmp2.3, label %if.end.2.for.end_crit_edge, label %if.end.3

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.3:                                         ; preds = %if.end.2
  %map.3 = getelementptr %struct.uio_info, ptr %19, i32 0, i32 3, i32 3, i32 6
  %22 = ptrtoint ptr %map.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.3, align 4
  tail call void @kobject_put(ptr noundef %23) #10
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 8
  %size.4 = getelementptr %struct.uio_info, ptr %25, i32 0, i32 3, i32 4, i32 3
  %26 = ptrtoint ptr %size.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2.4 = icmp eq i32 %27, 0
  br i1 %cmp2.4, label %if.end.3.for.end_crit_edge, label %if.end.4

if.end.3.for.end_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  %map.4 = getelementptr %struct.uio_info, ptr %25, i32 0, i32 3, i32 4, i32 6
  %28 = ptrtoint ptr %map.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map.4, align 4
  tail call void @kobject_put(ptr noundef %29) #10
  br label %for.end

for.end:                                          ; preds = %if.end.4, %if.end.3.for.end_crit_edge, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %map_dir = getelementptr inbounds %struct.uio_device, ptr %idev, i32 0, i32 8
  %30 = ptrtoint ptr %map_dir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map_dir, align 8
  tail call void @kobject_put(ptr noundef %31) #10
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 8
  %size9 = getelementptr %struct.uio_info, ptr %33, i32 0, i32 4, i32 0, i32 2
  %34 = ptrtoint ptr %size9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp10 = icmp eq i32 %35, 0
  br i1 %cmp10, label %for.end.for.end16_crit_edge, label %if.end12

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16

if.end12:                                         ; preds = %for.end
  %portio = getelementptr %struct.uio_info, ptr %33, i32 0, i32 4, i32 0, i32 4
  %36 = ptrtoint ptr %portio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %portio, align 4
  tail call void @kobject_put(ptr noundef %37) #10
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 8
  %size9.1 = getelementptr %struct.uio_info, ptr %39, i32 0, i32 4, i32 1, i32 2
  %40 = ptrtoint ptr %size9.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size9.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp10.1 = icmp eq i32 %41, 0
  br i1 %cmp10.1, label %if.end12.for.end16_crit_edge, label %if.end12.1

if.end12.for.end16_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16

if.end12.1:                                       ; preds = %if.end12
  %portio.1 = getelementptr %struct.uio_info, ptr %39, i32 0, i32 4, i32 1, i32 4
  %42 = ptrtoint ptr %portio.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %portio.1, align 4
  tail call void @kobject_put(ptr noundef %43) #10
  %44 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info, align 8
  %size9.2 = getelementptr %struct.uio_info, ptr %45, i32 0, i32 4, i32 2, i32 2
  %46 = ptrtoint ptr %size9.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size9.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp10.2 = icmp eq i32 %47, 0
  br i1 %cmp10.2, label %if.end12.1.for.end16_crit_edge, label %if.end12.2

if.end12.1.for.end16_crit_edge:                   ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16

if.end12.2:                                       ; preds = %if.end12.1
  %portio.2 = getelementptr %struct.uio_info, ptr %45, i32 0, i32 4, i32 2, i32 4
  %48 = ptrtoint ptr %portio.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %portio.2, align 4
  tail call void @kobject_put(ptr noundef %49) #10
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info, align 8
  %size9.3 = getelementptr %struct.uio_info, ptr %51, i32 0, i32 4, i32 3, i32 2
  %52 = ptrtoint ptr %size9.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size9.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp10.3 = icmp eq i32 %53, 0
  br i1 %cmp10.3, label %if.end12.2.for.end16_crit_edge, label %if.end12.3

if.end12.2.for.end16_crit_edge:                   ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16

if.end12.3:                                       ; preds = %if.end12.2
  %portio.3 = getelementptr %struct.uio_info, ptr %51, i32 0, i32 4, i32 3, i32 4
  %54 = ptrtoint ptr %portio.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %portio.3, align 4
  tail call void @kobject_put(ptr noundef %55) #10
  %56 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info, align 8
  %size9.4 = getelementptr %struct.uio_info, ptr %57, i32 0, i32 4, i32 4, i32 2
  %58 = ptrtoint ptr %size9.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size9.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp10.4 = icmp eq i32 %59, 0
  br i1 %cmp10.4, label %if.end12.3.for.end16_crit_edge, label %if.end12.4

if.end12.3.for.end16_crit_edge:                   ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16

if.end12.4:                                       ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #12
  %portio.4 = getelementptr %struct.uio_info, ptr %57, i32 0, i32 4, i32 4, i32 4
  %60 = ptrtoint ptr %portio.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %portio.4, align 4
  tail call void @kobject_put(ptr noundef %61) #10
  br label %for.end16

for.end16:                                        ; preds = %if.end12.4, %if.end12.3.for.end16_crit_edge, %if.end12.2.for.end16_crit_edge, %if.end12.1.for.end16_crit_edge, %if.end12.for.end16_crit_edge, %for.end.for.end16_crit_edge
  %portio_dir = getelementptr inbounds %struct.uio_device, ptr %idev, i32 0, i32 9
  %62 = ptrtoint ptr %portio_dir to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %portio_dir, align 4
  tail call void @kobject_put(ptr noundef %63) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__devm_uio_register_device(ptr noundef %owner, ptr noundef %parent, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_uio_unregister_device, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %info, ptr %call, align 4
  %call1 = tail call i32 @__uio_register_device(ptr noundef %owner, ptr noundef %parent, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devres_free(ptr noundef nonnull %call) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devres_add(ptr noundef %parent, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_uio_unregister_device(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @uio_unregister_device(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uio_unregister_device(ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %minor3 = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %minor3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor3, align 8
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  tail call fastcc void @uio_dev_del_attributes(ptr noundef nonnull %1)
  %irq = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %5, label %if.then6 [
    i32 0, label %if.end.if.end8_crit_edge
    i32 -1, label %if.end.if.end8_crit_edge26
  ]

if.end.if.end8_crit_edge26:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef nonnull %1) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge26
  %info9 = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %info9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %info9, align 8
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  %wait = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %async_queue = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 4
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 6) #10
  %dev = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %dev) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @minor_lock, i32 noundef 0) #10
  %call.i = tail call ptr @idr_remove(ptr noundef nonnull @uio_idr, i32 noundef %3) #10
  tail call void @mutex_unlock(ptr noundef nonnull @minor_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uio_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  store i1 false, ptr @uio_class_registered, align 1
  tail call void @class_unregister(ptr noundef nonnull @uio_class) #10
  %0 = load i32, ptr @uio_major, align 4
  %shl.i.i = shl i32 %0, 20
  tail call void @unregister_chrdev_region(i32 noundef %shl.i.i, i32 noundef 1048576) #10
  %1 = load ptr, ptr @uio_cdev, align 4
  tail call void @cdev_del(ptr noundef %1) #10
  tail call void @idr_destroy(ptr noundef nonnull @uio_idr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_init() #3 section ".init.text" align 64 {
entry:
  %uio_dev.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uio_dev.i.i) #10
  %0 = ptrtoint ptr %uio_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %uio_dev.i.i, align 4
  %call.i.i = call i32 @alloc_chrdev_region(ptr noundef nonnull %uio_dev.i.i, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @uio_major_init.name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.uio_major_init.exit.thread.i_crit_edge

entry.uio_major_init.exit.thread.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %uio_major_init.exit.thread.i

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = call ptr @cdev_alloc() #10
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.out_unregister.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.out_unregister.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unregister.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %owner.i.i = getelementptr inbounds %struct.cdev, ptr %call1.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %owner.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.cdev, ptr %call1.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @uio_fops, ptr %ops.i.i, align 4
  %call5.i.i = call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef nonnull %call1.i.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @uio_major_init.name) #10
  %3 = ptrtoint ptr %uio_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uio_dev.i.i, align 4
  %call6.i.i = call i32 @cdev_add(ptr noundef nonnull %call1.i.i, i32 noundef %4, i32 noundef 1048576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i, label %out_put.i.i

out_put.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kobject_put(ptr noundef nonnull %call1.i.i) #10
  br label %out_unregister.i.i

out_unregister.i.i:                               ; preds = %out_put.i.i, %if.end.i.i.out_unregister.i.i_crit_edge
  %result.0.i.i = phi i32 [ %call6.i.i, %out_put.i.i ], [ -12, %if.end.i.i.out_unregister.i.i_crit_edge ]
  %5 = ptrtoint ptr %uio_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uio_dev.i.i, align 4
  call void @unregister_chrdev_region(i32 noundef %6, i32 noundef 1048576) #10
  br label %uio_major_init.exit.thread.i

uio_major_init.exit.thread.i:                     ; preds = %out_unregister.i.i, %entry.uio_major_init.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %result.0.i.i, %out_unregister.i.i ], [ %call.i.i, %entry.uio_major_init.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uio_dev.i.i) #10
  br label %init_uio_class.exit

if.end.i:                                         ; preds = %if.end4.i.i
  %7 = ptrtoint ptr %uio_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uio_dev.i.i, align 4
  %shr.i.i = lshr i32 %8, 20
  store i32 %shr.i.i, ptr @uio_major, align 4
  store ptr %call1.i.i, ptr @uio_cdev, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uio_dev.i.i) #10
  %call1.i = call i32 @__class_register(ptr noundef nonnull @uio_class, ptr noundef nonnull @init_uio_class.__key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #14
  %9 = load i32, ptr @uio_major, align 4
  %shl.i.i = shl i32 %9, 20
  call void @unregister_chrdev_region(i32 noundef %shl.i.i, i32 noundef 1048576) #10
  %10 = load ptr, ptr @uio_cdev, align 4
  call void @cdev_del(ptr noundef %10) #10
  br label %init_uio_class.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @uio_class_registered, align 1
  br label %init_uio_class.exit

init_uio_class.exit:                              ; preds = %if.end6.i, %do.end.i, %uio_major_init.exit.thread.i
  %retval.0.i = phi i32 [ 0, %if.end6.i ], [ %call1.i, %do.end.i ], [ %retval.0.i.ph.i, %uio_major_init.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  %info = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.uio_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef %5)
  br label %out

out:                                              ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ %call2, %if.end ], [ -22, %if.then ]
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  %info = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %version = getelementptr inbounds %struct.uio_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %version, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef %5)
  br label %out

out:                                              ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ %call2, %if.end ], [ -22, %if.then ]
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %event = getelementptr inbounds %struct.uio_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #10
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %event, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @map_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_type_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.map_sysfs_entry, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mem1 = getelementptr inbounds %struct.uio_map, ptr %kobj, i32 0, i32 1
  %2 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem1, align 4
  %call = tail call i32 %1(ptr noundef %3, ptr noundef %buf) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_name_show(ptr nocapture noundef %mem, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !195

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.27, ptr %mem, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef %4)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_addr_show(ptr noundef %mem, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.uio_mem, ptr %mem, i32 0, i32 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, ptr noundef %addr)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_size_show(ptr noundef %mem, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.uio_mem, ptr %mem, i32 0, i32 3
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, ptr noundef %size)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_offset_show(ptr nocapture noundef readonly %mem, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %offs = getelementptr inbounds %struct.uio_mem, ptr %mem, i32 0, i32 2
  %0 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offs, align 4
  %conv = zext i32 %1 to i64
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i64 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @portio_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @portio_type_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.portio_sysfs_entry, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port1 = getelementptr inbounds %struct.uio_portio, ptr %kobj, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %call = tail call i32 %1(ptr noundef %3, ptr noundef %buf) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @portio_name_show(ptr nocapture noundef %port, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !195

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.27, ptr %port, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef %4)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @portio_start_show(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.uio_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @portio_size_show(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.uio_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @portio_porttype_show(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %porttype = getelementptr inbounds %struct.uio_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %porttype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %porttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ugt i32 %1, 3
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [4 x ptr], ptr @__const.portio_porttype_show.porttypes, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, ptr noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdev_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_read(ptr nocapture noundef readonly %filep, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %event_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !184) #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event_count) #10
  %17 = ptrtoint ptr %event_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %event_count, align 4, !annotation !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp.not = icmp eq i32 %count, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %wait3 = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 5
  call void @add_wait_queue(ptr noundef %wait3, ptr noundef nonnull %wait) #10
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  %info = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 8
  %tobool.not269 = icmp eq ptr %19, null
  br i1 %tobool.not269, label %if.end.if.then6_crit_edge, label %lor.lhs.false.lr.ph

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

lor.lhs.false.lr.ph:                              ; preds = %if.end
  %event = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 3
  %event_count76 = getelementptr inbounds %struct.uio_listener, ptr %1, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 7
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end164.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %20 = phi ptr [ %19, %lor.lhs.false.lr.ph ], [ %54, %if.end164.lor.lhs.false_crit_edge ]
  %irq = getelementptr inbounds %struct.uio_info, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool5.not = icmp eq i32 %22, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then6_crit_edge, label %if.end8

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %if.end164.if.then6_crit_edge, %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  call void @mutex_unlock(ptr noundef %info_lock) #10
  br label %__here217

if.end8:                                          ; preds = %lor.lhs.false
  call void @mutex_unlock(ptr noundef %info_lock) #10
  br label %__here

__here:                                           ; preds = %if.end8
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@uio_read, %__here) to i32), ptr %task_state_change, align 4
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %26, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !197
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #10
  %28 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %event, align 4
  %30 = ptrtoint ptr %event_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %event_count, align 4
  %31 = ptrtoint ptr %event_count76 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %event_count76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %32)
  %cmp77.not = icmp eq i32 %29, %32
  br i1 %cmp77.not, label %if.end155, label %__here129

__here129:                                        ; preds = %__here
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %task_state_change133 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 212
  %35 = ptrtoint ptr %task_state_change133 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 ptrtoint (ptr blockaddress(@uio_read, %__here129) to i32), ptr %task_state_change133, align 4
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %36, align 128
  call void @__might_fault(ptr noundef nonnull @.str.49, i32 noundef 174) #10
  %call.i.i261 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i261, label %__here129.__here217_crit_edge, label %if.end.i.i

__here129.__here217_crit_edge:                    ; preds = %__here129
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here217

if.end.i.i:                                       ; preds = %__here129
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 4, i32 -1226833920) #15, !srcloc !198
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.__here217_crit_edge

if.end.i.i.__here217_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here217

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event_count, i32 noundef 4) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %event_count, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool151.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool151.not, label %if.else, label %copy_to_user.exit.__here217_crit_edge

copy_to_user.exit.__here217_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here217

if.else:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %event_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %event_count, align 4
  %41 = ptrtoint ptr %event_count76 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %event_count76, align 4
  br label %__here217

if.end155:                                        ; preds = %__here
  %42 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %f_flags, align 4
  %and = and i32 %43, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool156.not = icmp eq i32 %and, 0
  br i1 %tobool156.not, label %if.end158, label %if.end155.__here217_crit_edge

if.end155.__here217_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here217

if.end158:                                        ; preds = %if.end155
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %stack.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %50 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end158.__here217_crit_edge, !prof !199

if.end158.__here217_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here217

signal_pending.exit:                              ; preds = %if.end158
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %47, align 4
  %and1.i.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool162.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool162.not, label %if.end164, label %signal_pending.exit.__here217_crit_edge

signal_pending.exit.__here217_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here217

if.end164:                                        ; preds = %signal_pending.exit
  call void @schedule() #10
  call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  %53 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %info, align 8
  %tobool.not = icmp eq ptr %54, null
  br i1 %tobool.not, label %if.end164.if.then6_crit_edge, label %if.end164.lor.lhs.false_crit_edge

if.end164.lor.lhs.false_crit_edge:                ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end164.if.then6_crit_edge:                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

__here217:                                        ; preds = %signal_pending.exit.__here217_crit_edge, %if.end158.__here217_crit_edge, %if.end155.__here217_crit_edge, %if.else, %copy_to_user.exit.__here217_crit_edge, %if.end.i.i.__here217_crit_edge, %__here129.__here217_crit_edge, %if.then6
  %retval2.0 = phi i32 [ 4, %if.else ], [ -5, %if.then6 ], [ -14, %copy_to_user.exit.__here217_crit_edge ], [ -14, %__here129.__here217_crit_edge ], [ -14, %if.end.i.i.__here217_crit_edge ], [ -512, %if.end158.__here217_crit_edge ], [ -512, %signal_pending.exit.__here217_crit_edge ], [ -11, %if.end155.__here217_crit_edge ]
  %55 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task, align 8
  %task_state_change221 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 212
  %57 = ptrtoint ptr %task_state_change221 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 ptrtoint (ptr blockaddress(@uio_read, %__here217) to i32), ptr %task_state_change221, align 4
  %58 = load ptr, ptr %task, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 0, ptr %58, align 128
  call void @remove_wait_queue(ptr noundef %wait3, ptr noundef nonnull %wait) #10
  br label %cleanup

cleanup:                                          ; preds = %__here217, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %__here217 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event_count) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_write(ptr nocapture noundef readonly %filep, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %irq_on = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_on) #10
  %4 = ptrtoint ptr %irq_on to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq_on, align 4, !annotation !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp.not = icmp eq i32 %count, 4
  br i1 %cmp.not, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.49, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 4, i32 -1226833920) #15, !srcloc !200
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !199

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %irq_on, i32 noundef 4) #10
  %6 = call i32 @llvm.read_register.i32(metadata !184) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !201
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !202
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %irq_on, ptr noundef %buf, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !202
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !199

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.then.i.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %irq_on, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  %info = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 8
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end3.out.thread_crit_edge, label %if.end6

if.end3.out.thread_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end6:                                          ; preds = %if.end3
  %irq = getelementptr inbounds %struct.uio_info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.end6.out.thread_crit_edge, label %if.end10

if.end6.out.thread_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end10:                                         ; preds = %if.end6
  %irqcontrol = getelementptr inbounds %struct.uio_info, ptr %11, i32 0, i32 12
  %14 = ptrtoint ptr %irqcontrol to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irqcontrol, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end10.out.thread_crit_edge, label %out

if.end10.out.thread_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

out.thread:                                       ; preds = %if.end10.out.thread_crit_edge, %if.end6.out.thread_crit_edge, %if.end3.out.thread_crit_edge
  %retval1.0.ph = phi i32 [ -38, %if.end10.out.thread_crit_edge ], [ -5, %if.end6.out.thread_crit_edge ], [ -22, %if.end3.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %info_lock) #10
  br label %cleanup

out:                                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %irq_on to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_on, align 4
  %call18 = call i32 %15(ptr noundef nonnull %11, i32 noundef %17) #10
  call void @mutex_unlock(ptr noundef %info_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool20.not = icmp eq i32 %call18, 0
  %spec.select = select i1 %tobool20.not, i32 4, i32 %call18
  br label %cleanup

cleanup:                                          ; preds = %out, %out.thread, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval1.0.ph, %out.thread ], [ -14, %if.then11.i.i ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_on) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_poll(ptr noundef %filep, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  %info = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %irq = getelementptr inbounds %struct.uio_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %if.end6

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  %wait7 = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end6.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end6.poll_wait.exit_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  %tobool3.not.i = icmp eq ptr %wait7, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef %filep, ptr noundef nonnull %wait7, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end6.poll_wait.exit_crit_edge
  %event_count = getelementptr inbounds %struct.uio_listener, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %event_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_count, align 4
  %event = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #10
  %12 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp eq i32 %11, %13
  %. = select i1 %cmp.not, i32 0, i32 65
  br label %cleanup

cleanup:                                          ; preds = %poll_wait.exit, %if.end
  %retval.0 = phi i32 [ -5, %if.end ], [ %., %poll_wait.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_mmap(ptr nocapture noundef readonly %filep, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %8 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %vm_private_data, align 4
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %7, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  %info = getelementptr inbounds %struct.uio_device, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end2:                                          ; preds = %if.end
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %11 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp.i = icmp ult i32 %12, 5
  br i1 %cmp.i, label %if.then.i, label %if.end2.out_crit_edge

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i:                                        ; preds = %if.end2
  %13 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_private_data, align 4
  %info.i = getelementptr inbounds %struct.uio_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i, align 8
  %size.i = getelementptr %struct.uio_info, ptr %16, i32 0, i32 3, i32 %12, i32 3
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2.i = icmp eq i32 %18, 0
  br i1 %cmp2.i, label %if.then.i.out_crit_edge, label %if.end5

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %if.then.i
  %19 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_end, align 4
  %21 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %20, %22
  %shr.i = lshr i32 %sub.i, 12
  %addr = getelementptr %struct.uio_info, ptr %10, i32 0, i32 3, i32 %12, i32 1
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %and = and i32 %24, 4095
  %size = getelementptr %struct.uio_info, ptr %10, i32 0, i32 3, i32 %12, i32 3
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %add = add i32 %26, 4095
  %sub = add i32 %add, %and
  %shr = lshr i32 %sub, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr)
  %cmp12 = icmp ugt i32 %shr.i, %shr
  br i1 %cmp12, label %if.end5.out_crit_edge, label %if.end14

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %if.end5
  %mmap = getelementptr inbounds %struct.uio_info, ptr %10, i32 0, i32 9
  %27 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmap, align 4
  %tobool16.not = icmp eq ptr %28, null
  br i1 %tobool16.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 %28(ptr noundef nonnull %10, ptr noundef %vma) #10
  br label %out

if.end22:                                         ; preds = %if.end14
  %memtype = getelementptr %struct.uio_info, ptr %10, i32 0, i32 3, i32 %12, i32 4
  %29 = ptrtoint ptr %memtype to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %memtype, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %30, label %if.end22.out_crit_edge [
    i32 4, label %if.end22.sw.bb_crit_edge
    i32 1, label %if.end22.sw.bb_crit_edge56
    i32 2, label %if.end22.sw.bb27_crit_edge
    i32 3, label %if.end22.sw.bb27_crit_edge57
  ]

if.end22.sw.bb27_crit_edge57:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb27

if.end22.sw.bb27_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb27

if.end22.sw.bb_crit_edge56:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end22.sw.bb_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb:                                            ; preds = %if.end22.sw.bb_crit_edge, %if.end22.sw.bb_crit_edge56
  %call26 = tail call fastcc i32 @uio_mmap_physical(ptr noundef %vma)
  br label %out

sw.bb27:                                          ; preds = %if.end22.sw.bb27_crit_edge, %if.end22.sw.bb27_crit_edge57
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %32 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vm_flags.i, align 4
  %or.i = or i32 %33, 67371008
  store i32 %or.i, ptr %vm_flags.i, align 4
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %34 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @uio_logical_vm_ops, ptr %vm_ops.i, align 4
  br label %out

out:                                              ; preds = %sw.bb27, %sw.bb, %if.end22.out_crit_edge, %if.then17, %if.end5.out_crit_edge, %if.then.i.out_crit_edge, %if.end2.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call21, %if.then17 ], [ 0, %sw.bb27 ], [ %call26, %sw.bb ], [ -22, %if.end.out_crit_edge ], [ -22, %if.end5.out_crit_edge ], [ -22, %if.end22.out_crit_edge ], [ -22, %if.end2.out_crit_edge ], [ -22, %if.then.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_open(ptr noundef %inode, ptr nocapture noundef writeonly %filep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @minor_lock, i32 noundef 0) #10
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @idr_find(ptr noundef nonnull @uio_idr, i32 noundef %and.i) #10
  tail call void @mutex_unlock(ptr noundef nonnull @minor_lock) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.uio_device, ptr %call1, i32 0, i32 1
  %call2 = tail call ptr @get_device(ptr noundef %dev) #10
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call1, align 8
  %call3 = tail call zeroext i1 @try_module_get(ptr noundef %3) #10
  br i1 %call3, label %if.end5, label %if.end.err_module_get_crit_edge

if.end.err_module_get_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_module_get

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 8) #13
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.end5.err_alloc_listener_crit_edge, label %if.end9

if.end5.err_alloc_listener_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc_listener

if.end9:                                          ; preds = %if.end5
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %call7.i, align 8
  %event = getelementptr inbounds %struct.uio_device, ptr %call1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event, i32 noundef 4) #10
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %event, align 4
  %event_count = getelementptr inbounds %struct.uio_listener, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %event_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %event_count, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %private_data, align 4
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %call1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  %info = getelementptr inbounds %struct.uio_device, ptr %call1, i32 0, i32 6
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 8
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  br label %err_infoopen

if.end15:                                         ; preds = %if.end9
  %open = getelementptr inbounds %struct.uio_info, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %open, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.end23.thread, label %if.end23

if.end23.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call22 = tail call i32 %13(ptr noundef nonnull %11, ptr noundef %inode) #10
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool25.not = icmp eq i32 %call22, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end23.err_infoopen_crit_edge

if.end23.err_infoopen_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_infoopen

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_infoopen:                                     ; preds = %if.end23.err_infoopen_crit_edge, %if.then13
  %ret.1 = phi i32 [ %call22, %if.end23.err_infoopen_crit_edge ], [ -22, %if.then13 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %err_alloc_listener

err_alloc_listener:                               ; preds = %err_infoopen, %if.end5.err_alloc_listener_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_infoopen ], [ -12, %if.end5.err_alloc_listener_crit_edge ]
  %14 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call1, align 8
  tail call void @module_put(ptr noundef %15) #10
  br label %err_module_get

err_module_get:                                   ; preds = %err_alloc_listener, %if.end.err_module_get_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_alloc_listener ], [ -19, %if.end.err_module_get_crit_edge ]
  tail call void @put_device(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_module_get, %if.end23.cleanup_crit_edge, %if.end23.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23.cleanup_crit_edge ], [ %ret.3, %err_module_get ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end23.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_release(ptr noundef %inode, ptr nocapture noundef readonly %filep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  %info = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %release = getelementptr inbounds %struct.uio_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %release, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %7(ptr noundef nonnull %5, ptr noundef %inode) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  tail call void @module_put(ptr noundef %9) #10
  tail call void @kfree(ptr noundef %1) #10
  %dev7 = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev7) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_fasync(i32 noundef %fd, ptr noundef %filep, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %async_queue = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 4
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filep, i32 noundef %on, ptr noundef %async_queue) #10
  ret i32 %call
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
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uio_mmap_physical(ptr noundef %vma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.i = icmp ult i32 %1, 5
  br i1 %cmp.i, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %info.i = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 8
  %size.i = getelementptr %struct.uio_info, ptr %5, i32 0, i32 3, i32 %1, i32 3
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i = icmp eq i32 %7, 0
  br i1 %cmp2.i, label %if.then.i.cleanup_crit_edge, label %if.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then.i
  %8 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info.i, align 8
  %mem1 = getelementptr inbounds %struct.uio_info, ptr %9, i32 0, i32 3
  %addr = getelementptr %struct.uio_mem, ptr %mem1, i32 %1, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %and = and i32 %11, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %12 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_end, align 4
  %14 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vma, align 4
  %sub = sub i32 %13, %15
  %size = getelementptr %struct.uio_mem, ptr %mem1, i32 %1, i32 3
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %17)
  %cmp4 = icmp ugt i32 %sub, %17
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %18 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @uio_physical_vm_ops, ptr %vm_ops, align 4
  %19 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info.i, align 8
  %memtype = getelementptr %struct.uio_info, ptr %20, i32 0, i32 3, i32 %1, i32 4
  %21 = ptrtoint ptr %memtype to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %memtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp9 = icmp eq i32 %22, 1
  br i1 %cmp9, label %if.then10, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %23 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_page_prot, align 4
  %and11 = and i32 %24, -61
  store i32 %and11, ptr %vm_page_prot, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6.if.end13_crit_edge
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr, align 4
  %shr = lshr i32 %26, 12
  %vm_page_prot19 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %27 = ptrtoint ptr %vm_page_prot19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_page_prot19, align 4
  %call20 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %15, i32 noundef %shr, i32 noundef %sub, i32 noundef %28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end13 ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_vma_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %info_lock = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #10
  %info = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vmf, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp.i = icmp ult i32 %9, 5
  br i1 %cmp.i, label %if.then.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i:                                        ; preds = %if.end
  %vm_private_data.i = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 15
  %10 = ptrtoint ptr %vm_private_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_private_data.i, align 4
  %info.i = getelementptr inbounds %struct.uio_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info.i, align 8
  %size.i = getelementptr %struct.uio_info, ptr %13, i32 0, i32 3, i32 %9, i32 3
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2.i = icmp eq i32 %15, 0
  br i1 %cmp2.i, label %if.then.i.out_crit_edge, label %if.end3

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %if.then.i
  %pgoff = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 2
  %16 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pgoff, align 4
  %sub = sub i32 %17, %9
  %shl = shl i32 %sub, 12
  %addr5 = getelementptr %struct.uio_info, ptr %5, i32 0, i32 3, i32 %9, i32 1
  %18 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr5, align 4
  %20 = inttoptr i32 %19 to ptr
  %add.ptr = getelementptr i8, ptr %20, i32 %shl
  %memtype = getelementptr %struct.uio_info, ptr %5, i32 0, i32 3, i32 %9, i32 4
  %21 = ptrtoint ptr %memtype to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %memtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp9 = icmp eq i32 %22, 2
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %add.ptr to i32
  %sub11 = add i32 %24, 1073741824
  %shr = lshr i32 %sub11, 12
  %add.ptr13 = getelementptr %struct.page, ptr %23, i32 %shr
  br label %if.end15

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr) #10
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  %page.0 = phi ptr [ %add.ptr13, %if.then10 ], [ %call14, %if.else ]
  %25 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !199

if.then.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %30 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %31, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !195

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.50) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !204
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !194
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@uio_vma_fault, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !205

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %29, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page16 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %33 = ptrtoint ptr %page16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %page.0, ptr %page16, align 4
  br label %out

out:                                              ; preds = %get_page.exit, %if.then.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %get_page.exit ], [ 2, %entry.out_crit_edge ], [ 2, %if.end.out_crit_edge ], [ 2, %if.then.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %info_lock) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !48, !50, !52, !53, !55, !56, !57, !58, !60, !62, !63, !65, !66, !67, !69, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !154, !156, !157, !158, !159, !161, !163, !165, !167, !169, !171, !173, !174, !176, !178, !180, !182}
!llvm.named.register.sp = !{!184}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__ksymtab_uio_event_notify, !1, !"__ksymtab_uio_event_notify", i1 false, i1 false}
!1 = !{!"../drivers/uio/uio.c", i32 437, i32 1}
!2 = !{ptr @__uio_register_device.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/uio/uio.c", i32 940, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__uio_register_device.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/uio/uio.c", i32 941, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/uio/uio.c", i32 957, i32 33}
!10 = !{ptr @__ksymtab___uio_register_device, !11, !"__ksymtab___uio_register_device", i1 false, i1 false}
!11 = !{!"../drivers/uio/uio.c", i32 999, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/uio/uio.c", i32 1021, i32 8}
!14 = !{ptr @__ksymtab___devm_uio_register_device, !15, !"__ksymtab___devm_uio_register_device", i1 false, i1 false}
!15 = !{!"../drivers/uio/uio.c", i32 1037, i32 1}
!16 = !{ptr @__ksymtab_uio_unregister_device, !17, !"__ksymtab_uio_unregister_device", i1 false, i1 false}
!17 = !{!"../drivers/uio/uio.c", i32 1073, i32 1}
!18 = !{ptr @__initcall__kmod_uio__235_1086_uio_init6, !19, !"__initcall__kmod_uio__235_1086_uio_init6", i1 false, i1 false}
!19 = !{!"../drivers/uio/uio.c", i32 1086, i32 1}
!20 = !{ptr @__exitcall_uio_exit, !21, !"__exitcall_uio_exit", i1 false, i1 false}
!21 = !{!"../drivers/uio/uio.c", i32 1087, i32 1}
!22 = !{ptr @__UNIQUE_ID_file236, !23, !"__UNIQUE_ID_file236", i1 false, i1 false}
!23 = !{!"../drivers/uio/uio.c", i32 1088, i32 1}
!24 = !{ptr @__UNIQUE_ID_license237, !23, !"__UNIQUE_ID_license237", i1 false, i1 false}
!25 = !{ptr @uio_major, !26, !"uio_major", i1 false, i1 false}
!26 = !{!"../drivers/uio/uio.c", i32 30, i32 12}
!27 = distinct !{null, !28, !"uio_class_registered", i1 false, i1 false}
!28 = !{!"../drivers/uio/uio.c", i32 279, i32 13}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/uio/uio.c", i32 411, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @uio_get_minor._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @uio_get_minor._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/uio/uio.c", i32 36, i32 8}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @minor_lock, !38, !"minor_lock", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/uio/uio.c", i32 275, i32 10}
!43 = !{ptr @uio_class, !44, !"uio_class", i1 false, i1 false}
!44 = !{!"../drivers/uio/uio.c", i32 274, i32 21}
!45 = !{ptr @uio_groups, !46, !"uio_groups", i1 false, i1 false}
!46 = !{!"../drivers/uio/uio.c", i32 271, i32 1}
!47 = !{ptr @uio_group, !46, !"uio_group", i1 false, i1 false}
!48 = !{ptr @uio_attrs, !49, !"uio_attrs", i1 false, i1 false}
!49 = !{!"../drivers/uio/uio.c", i32 265, i32 26}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/uio/uio.c", i32 234, i32 8}
!52 = !{ptr @dev_attr_name, !51, !"dev_attr_name", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/uio/uio.c", i32 224, i32 3}
!55 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @name_show._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @name_show._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/uio/uio.c", i32 228, i32 21}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/uio/uio.c", i32 255, i32 8}
!62 = !{ptr @dev_attr_version, !61, !"dev_attr_version", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/uio/uio.c", i32 245, i32 3}
!65 = !{ptr @version_show._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @version_show._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/uio/uio.c", i32 263, i32 8}
!69 = !{ptr @dev_attr_event, !68, !"dev_attr_event", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/uio/uio.c", i32 261, i32 22}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/uio/uio.c", i32 301, i32 43}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/uio/uio.c", i32 316, i32 48}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/uio/uio.c", i32 330, i32 46}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/uio/uio.c", i32 346, i32 8}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/uio/uio.c", i32 374, i32 2}
!82 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @uio_dev_add_attributes._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @uio_dev_add_attributes._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @map_attr_type, !86, !"map_attr_type", i1 false, i1 false}
!86 = !{!"../drivers/uio/uio.c", i32 120, i32 25}
!87 = !{ptr @map_sysfs_ops, !88, !"map_sysfs_ops", i1 false, i1 false}
!88 = !{!"../drivers/uio/uio.c", i32 116, i32 31}
!89 = !{ptr @map_groups, !90, !"map_groups", i1 false, i1 false}
!90 = !{!"../drivers/uio/uio.c", i32 93, i32 1}
!91 = !{ptr @map_group, !90, !"map_group", i1 false, i1 false}
!92 = !{ptr @map_attrs, !93, !"map_attrs", i1 false, i1 false}
!93 = !{!"../drivers/uio/uio.c", i32 86, i32 26}
!94 = !{ptr @name_attribute, !95, !"name_attribute", i1 false, i1 false}
!95 = !{!"../drivers/uio/uio.c", i32 77, i32 31}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/uio/uio.c", i32 51, i32 15}
!98 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/uio/uio.c", i32 80, i32 2}
!100 = !{ptr @addr_attribute, !101, !"addr_attribute", i1 false, i1 false}
!101 = !{!"../drivers/uio/uio.c", i32 79, i32 31}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/uio/uio.c", i32 58, i32 22}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/uio/uio.c", i32 82, i32 2}
!106 = !{ptr @size_attribute, !107, !"size_attribute", i1 false, i1 false}
!107 = !{!"../drivers/uio/uio.c", i32 81, i32 31}
!108 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/uio/uio.c", i32 84, i32 2}
!110 = !{ptr @offset_attribute, !111, !"offset_attribute", i1 false, i1 false}
!111 = !{!"../drivers/uio/uio.c", i32 83, i32 31}
!112 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/uio/uio.c", i32 68, i32 22}
!114 = !{ptr @portio_attr_type, !115, !"portio_attr_type", i1 false, i1 false}
!115 = !{!"../drivers/uio/uio.c", i32 209, i32 25}
!116 = !{ptr @portio_sysfs_ops, !117, !"portio_sysfs_ops", i1 false, i1 false}
!117 = !{!"../drivers/uio/uio.c", i32 205, i32 31}
!118 = !{ptr @portio_groups, !119, !"portio_groups", i1 false, i1 false}
!119 = !{!"../drivers/uio/uio.c", i32 182, i32 1}
!120 = !{ptr @portio_group, !119, !"portio_group", i1 false, i1 false}
!121 = !{ptr @portio_attrs, !122, !"portio_attrs", i1 false, i1 false}
!122 = !{!"../drivers/uio/uio.c", i32 175, i32 26}
!123 = !{ptr @portio_name_attribute, !124, !"portio_name_attribute", i1 false, i1 false}
!124 = !{!"../drivers/uio/uio.c", i32 166, i32 34}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/uio/uio.c", i32 169, i32 2}
!127 = !{ptr @portio_start_attribute, !128, !"portio_start_attribute", i1 false, i1 false}
!128 = !{!"../drivers/uio/uio.c", i32 168, i32 34}
!129 = !{ptr @.str.34, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/uio/uio.c", i32 142, i32 22}
!131 = !{ptr @portio_size_attribute, !132, !"portio_size_attribute", i1 false, i1 false}
!132 = !{!"../drivers/uio/uio.c", i32 170, i32 34}
!133 = !{ptr @.str.35, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/uio/uio.c", i32 173, i32 2}
!135 = !{ptr @portio_porttype_attribute, !136, !"portio_porttype_attribute", i1 false, i1 false}
!136 = !{!"../drivers/uio/uio.c", i32 172, i32 34}
!137 = !{ptr @.str.36, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/uio/uio.c", i32 152, i32 29}
!139 = !{ptr @.str.37, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/uio/uio.c", i32 152, i32 37}
!141 = !{ptr @.str.38, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/uio/uio.c", i32 152, i32 44}
!143 = !{ptr @.str.39, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/uio/uio.c", i32 152, i32 52}
!145 = !{ptr @.str.40, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/uio/uio.c", i32 157, i32 22}
!147 = !{ptr @uio_cdev, !148, !"uio_cdev", i1 false, i1 false}
!148 = !{!"../drivers/uio/uio.c", i32 31, i32 21}
!149 = !{ptr @.str.41, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/uio/uio.c", i32 32, i32 8}
!151 = !{ptr @uio_idr, !150, !"uio_idr", i1 false, i1 false}
!152 = !{ptr @init_uio_class.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/uio/uio.c", i32 880, i32 8}
!154 = !{ptr @.str.42, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/uio/uio.c", i32 882, i32 3}
!156 = !{ptr @.str.43, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @init_uio_class._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @init_uio_class._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @uio_major_init.name, !160, !"name", i1 false, i1 false}
!160 = !{!"../drivers/uio/uio.c", i32 832, i32 20}
!161 = !{ptr @.str.44, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/uio/uio.c", i32 848, i32 32}
!163 = !{ptr @uio_fops, !164, !"uio_fops", i1 false, i1 false}
!164 = !{!"../drivers/uio/uio.c", i32 818, i32 37}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../drivers/uio/uio.c", i32 588, i32 3}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../drivers/uio/uio.c", i32 592, i32 4}
!169 = distinct !{null, !170, !"__already_done", i1 false, i1 false}
!170 = !{!"../drivers/uio/uio.c", i32 614, i32 2}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!173 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!174 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!176 = !{ptr @.str.49, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!178 = !{ptr @uio_physical_vm_ops, !179, !"uio_physical_vm_ops", i1 false, i1 false}
!179 = !{!"../drivers/uio/uio.c", i32 721, i32 42}
!180 = !{ptr @uio_logical_vm_ops, !181, !"uio_logical_vm_ops", i1 false, i1 false}
!181 = !{!"../drivers/uio/uio.c", i32 710, i32 42}
!182 = !{ptr @.str.50, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!184 = !{!"sp"}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i64 2148361479, i64 2148361505, i64 2148361534, i64 2148361568, i64 2148361599, i64 2148361622}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{!"auto-init"}
!197 = !{i64 2154103558}
!198 = !{i64 2152430863, i64 2152430888}
!199 = !{!"branch_weights", i32 2000, i32 1}
!200 = !{i64 2152430182, i64 2152430207}
!201 = !{i64 4925737}
!202 = !{i64 4925934}
!203 = !{i64 2152411167}
!204 = !{i64 2153628948, i64 2153629432, i64 2153628985, i64 2153629041, i64 2153629075, i64 2153629099, i64 2153629140, i64 2153629161, i64 2153629189, i64 2153629223}
!205 = !{i64 2148974856, i64 2148974861, i64 2148974874, i64 2148974918, i64 2148974952, i64 2148974973}
