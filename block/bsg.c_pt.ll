; ModuleID = '/llk/IR_all_yes/block/bsg.c_pt.bc'
source_filename = "../block/bsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bsg_unregister_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_bsg_unregister_queue\09\09\09\09"
module asm "\09.long\09__crc_bsg_unregister_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsg_unregister_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22bsg_unregister_queue\22\09\09\09\09\09"
module asm "__kstrtabns_bsg_unregister_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bsg_register_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_bsg_register_queue\09\09\09\09"
module asm "\09.long\09__crc_bsg_register_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsg_register_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22bsg_register_queue\22\09\09\09\09\09"
module asm "__kstrtabns_bsg_register_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.bsg_device = type { ptr, %struct.device, %struct.cdev, i32, i32, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sg_io_v4 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bsg\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_bsg_unregister_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsg_unregister_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_bsg_unregister_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsg_unregister_queue to i32), ptr @__kstrtab_bsg_unregister_queue, ptr @__kstrtabns_bsg_unregister_queue }, section "___ksymtab_gpl+bsg_unregister_queue", align 4
@bsg_minor_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@bsg_register_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bsg: too many bsg devices\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bsg_register_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"block/bsg.c\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bsg_register_queue._entry_ptr = internal global ptr @bsg_register_queue._entry, section ".printk_index", align 4
@bsg_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bsg_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@bsg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bsg_ioctl, ptr null, ptr null, i32 0, ptr @bsg_open, ptr null, ptr @bsg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_bsg_register_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsg_register_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_bsg_register_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsg_register_queue to i32), ptr @__kstrtab_bsg_register_queue, ptr @__kstrtabns_bsg_register_queue }, section "___ksymtab_gpl+bsg_register_queue", align 4
@__UNIQUE_ID_author275 = internal constant [22 x i8] c"bsg.author=Jens Axboe\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [54 x i8] c"bsg.description=Block layer SCSI generic (bsg) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [19 x i8] c"bsg.file=block/bsg\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [16 x i8] c"bsg.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_bsg__279_268_bsg_init6 = internal global ptr @bsg_init, section ".initcall6.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bsg_minor_ida.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@bsg_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.bsg_ioctl = private unnamed_addr constant [10 x i8] c"bsg_ioctl\00", align 1
@bsg_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.bsg_ioctl, ptr @.str.3, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: calling unsupported SCSI_IOCTL_SEND_COMMAND\0A\00", [45 x i8] zeroinitializer }, align 32
@bsg_ioctl._entry_ptr = internal global ptr @bsg_ioctl._entry, section ".printk_index", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@bsg_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bsg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016Block layer SCSI generic (bsg) driver version 0.4 loaded (major %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bsg_init\00", [23 x i8] zeroinitializer }, align 32
@bsg_init._entry_ptr = internal global ptr @bsg_init._entry, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bsg/%s\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 8705, i64 8706, i64 8707, i64 8816, i64 8817, i64 8818, i64 8821, i64 8834, i64 8837, i64 21378, i64 21382]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 179, i32 39 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"bsg_minor_ida\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 202, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"bsg_major\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 43, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"bsg_class\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 42, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 210, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"bsg_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 159, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 41, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 151, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 156, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 245, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 255, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [15 x i8] c"../block/bsg.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 237, i32 31 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__initcall__kmod_bsg__279_268_bsg_init6, ptr @__ksymtab_bsg_register_queue, ptr @__ksymtab_bsg_unregister_queue, ptr @bsg_init._entry, ptr @bsg_init._entry_ptr, ptr @bsg_ioctl._entry, ptr @bsg_ioctl._entry_ptr, ptr @bsg_register_queue._entry, ptr @bsg_register_queue._entry_ptr, ptr @.str, ptr @bsg_minor_ida, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bsg_major, ptr @bsg_class, ptr @.str.6, ptr @bsg_fops, ptr @.str.7, ptr @bsg_ioctl._rs, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @bsg_init.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsg_minor_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsg_register_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsg_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsg_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsg_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsg_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsg_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bsg_unregister_queue(ptr noundef %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 8
  %sd = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 16, i32 5
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %kobj = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 16
  tail call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef nonnull @.str) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cdev = getelementptr inbounds %struct.bsg_device, ptr %bd, i32 0, i32 2
  %device = getelementptr inbounds %struct.bsg_device, ptr %bd, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %device) #8
  tail call void @put_device(ptr noundef %device) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bsg_register_queue(ptr noundef %q, ptr noundef %parent, ptr noundef %name, ptr noundef %sg_io_fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1112) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_queue = getelementptr inbounds %struct.bsg_device, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %max_queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 64, ptr %max_queue, align 8
  %reserved_size = getelementptr inbounds %struct.bsg_device, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %reserved_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2147483647, ptr %reserved_size, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %q, ptr %call7.i.i, align 8
  %sg_io_fn2 = getelementptr inbounds %struct.bsg_device, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %sg_io_fn2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sg_io_fn, ptr %sg_io_fn2, align 4
  %call3 = tail call i32 @ida_alloc_range(ptr noundef nonnull @bsg_minor_ida, i32 noundef 0, i32 noundef 32767, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call3)
  %cmp5 = icmp eq i32 %call3, -28
  br i1 %cmp5, label %do.end, label %if.then4.if.end7_crit_edge

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.1) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then4.if.end7_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %5 = inttoptr i32 %call3 to ptr
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = load i32, ptr @bsg_major, align 4
  %shl = shl i32 %6, 20
  %or = or i32 %shl, %call3
  %device = getelementptr inbounds %struct.bsg_device, ptr %call7.i.i, i32 0, i32 1
  %devt = getelementptr inbounds %struct.bsg_device, ptr %call7.i.i, i32 0, i32 1, i32 29
  %7 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %devt, align 8
  %8 = load ptr, ptr @bsg_class, align 4
  %class = getelementptr inbounds %struct.bsg_device, ptr %call7.i.i, i32 0, i32 1, i32 33
  %9 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %class, align 4
  %parent12 = getelementptr inbounds %struct.bsg_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %parent12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent, ptr %parent12, align 8
  %release = getelementptr inbounds %struct.bsg_device, ptr %call7.i.i, i32 0, i32 1, i32 35
  %11 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bsg_device_release, ptr %release, align 4
  %call15 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %device, ptr noundef nonnull @.str.6, ptr noundef %name) #8
  tail call void @device_initialize(ptr noundef %device) #8
  %cdev = getelementptr inbounds %struct.bsg_device, ptr %call7.i.i, i32 0, i32 2
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @bsg_fops) #8
  %owner = getelementptr inbounds %struct.bsg_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %owner, align 8
  %call20 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %device) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end9.out_put_device_crit_edge

if.end9.out_put_device_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_device

if.end23:                                         ; preds = %if.end9
  %sd = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 16, i32 5
  %13 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd, align 4
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  %kobj = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 16
  %call29 = tail call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %device, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then25.cleanup_crit_edge, label %out_device_del

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_device_del:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %device) #8
  br label %out_put_device

out_put_device:                                   ; preds = %out_device_del, %if.end9.out_put_device_crit_edge
  %ret.0 = phi i32 [ %call20, %if.end9.out_put_device_crit_edge ], [ %call29, %out_device_del ]
  tail call void @put_device(ptr noundef %device) #8
  %15 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_put_device, %if.then25.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.end7 ], [ %15, %out_put_device ], [ %call7.i.i, %if.then25.cleanup_crit_edge ], [ %call7.i.i, %if.end23.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bsg_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %devt = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  tail call void @ida_free(ptr noundef nonnull @bsg_minor_ida, i32 noundef %and) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bsg_init() #4 section ".init.text" align 64 {
entry:
  %devid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devid) #8
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %devid, align 4, !annotation !67
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @bsg_init.__key) #8
  store ptr %call, ptr @bsg_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %devnode = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bsg_devnode, ptr %devnode, align 4
  %call3 = call i32 @alloc_chrdev_region(ptr noundef nonnull %devid, i32 noundef 0, i32 noundef 32768, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %destroy_bsg_class

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devid, align 4
  %shr = lshr i32 %4, 20
  store i32 %shr, ptr @bsg_major, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %shr) #12
  br label %cleanup

destroy_bsg_class:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load ptr, ptr @bsg_class, align 4
  call void @class_destroy(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %destroy_bsg_class, %if.end5, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call3, %destroy_bsg_class ], [ 0, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devid) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bsg_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %hdr.i = alloca %struct.sg_io_v4, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 48
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 -936
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %7 = inttoptr i32 %arg to ptr
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 8816, label %sw.bb
    i32 8817, label %sw.bb3
    i32 8834, label %sw.bb5
    i32 21378, label %sw.bb8
    i32 21382, label %sw.bb24
    i32 8705, label %sw.bb40
    i32 8706, label %sw.bb52
    i32 8818, label %sw.bb55
    i32 8821, label %sw.bb73
    i32 8707, label %sw.bb100
    i32 8837, label %sw.bb116
    i32 1, label %sw.bb118
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_queue.i = getelementptr i8, ptr %4, i32 160
  %9 = ptrtoint ptr %max_queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %max_queue.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 87) #8
  %11 = tail call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #6, !srcloc !68
  %and.i.i = and i32 %13, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %10, i32 -1226833921) #8, !srcloc !71
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 94) #8
  %15 = tail call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i.i.i.i181 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i181 to ptr
  %cpu_domain.i.i.i182 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i182) #6, !srcloc !68
  %and.i.i183 = and i32 %17, -13
  %or.i.i184 = or i32 %and.i.i183, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i184) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %7, i32 -1226833921) #8, !srcloc !72
  %asmresult.i = extractvalue { i32, i32 } %18, 0
  %asmresult1.i = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult1.i)
  %cmp.i = icmp slt i32 %asmresult1.i, 1
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %do.body6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_queue7.i = getelementptr i8, ptr %4, i32 160
  %19 = ptrtoint ptr %max_queue7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %asmresult1.i, ptr %max_queue7.i, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 123) #8
  %20 = tail call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !68
  %and.i = and i32 %22, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 30527, i32 -1226833921) #8, !srcloc !73
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 125) #8
  %24 = tail call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i.i.i157 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i157 to ptr
  %cpu_domain.i.i158 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i158) #6, !srcloc !68
  %and.i159 = and i32 %26, -13
  %or.i160 = or i32 %and.i159, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i160) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %27 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 0, i32 -1226833921) #8, !srcloc !74
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 127) #8
  %28 = tail call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i.i.i161 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i161 to ptr
  %cpu_domain.i.i162 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i162) #6, !srcloc !68
  %and.i163 = and i32 %30, -13
  %or.i164 = or i32 %and.i163, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i164) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 0, i32 -1226833921) #8, !srcloc !75
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 129) #8
  %32 = tail call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i.i.i165 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i165 to ptr
  %cpu_domain.i.i166 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i166) #6, !srcloc !68
  %and.i167 = and i32 %34, -13
  %or.i168 = or i32 %and.i167, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i168) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %35 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %7, i32 -1226833921) #8, !srcloc !76
  %asmresult = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult49 = extractvalue { i32, i32 } %35, 1
  %call51 = tail call i32 @clock_t_to_jiffies(i32 noundef %asmresult49) #8
  %timeout = getelementptr i8, ptr %4, i32 164
  %36 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call51, ptr %timeout, align 4
  br label %cleanup

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %timeout53 = getelementptr i8, ptr %4, i32 164
  %37 = ptrtoint ptr %timeout53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeout53, align 4
  %call54 = tail call i32 @jiffies_to_clock_t(i32 noundef %38) #8
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reserved_size = getelementptr i8, ptr %4, i32 168
  %39 = ptrtoint ptr %reserved_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reserved_size, align 8
  %max_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 37, i32 6
  %41 = ptrtoint ptr %max_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %42)
  %cmp.i185 = icmp ult i32 %42, 4194303
  %phi.bo.i = shl i32 %42, 9
  %cond.i = select i1 %cmp.i185, i32 %phi.bo.i, i32 2147483136
  %43 = tail call i32 @llvm.umin.i32(i32 %40, i32 %cond.i)
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 137) #8
  %44 = tail call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i.i.i169 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i169 to ptr
  %cpu_domain.i.i170 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i170) #6, !srcloc !68
  %and.i171 = and i32 %46, -13
  %or.i172 = or i32 %and.i171, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i172) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %47 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %43, i32 -1226833921) #8, !srcloc !77
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  br label %cleanup

sw.bb73:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 139) #8
  %48 = tail call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i.i.i173 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i173 to ptr
  %cpu_domain.i.i174 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i174) #6, !srcloc !68
  %and.i175 = and i32 %50, -13
  %or.i176 = or i32 %and.i175, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i176) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %51 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %7, i32 -1226833921) #8, !srcloc !78
  %asmresult83 = extractvalue { i32, i32 } %51, 0
  %asmresult84 = extractvalue { i32, i32 } %51, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult83)
  %tobool86.not = icmp eq i32 %asmresult83, 0
  br i1 %tobool86.not, label %if.end88, label %sw.bb73.cleanup_crit_edge

sw.bb73.cleanup_crit_edge:                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end88:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult84)
  %cmp89 = icmp slt i32 %asmresult84, 0
  br i1 %cmp89, label %if.end88.cleanup_crit_edge, label %if.end91

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end91:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %max_sectors.i.i186 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 37, i32 6
  %52 = ptrtoint ptr %max_sectors.i.i186 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_sectors.i.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %53)
  %cmp.i187 = icmp ult i32 %53, 4194303
  %phi.bo.i188 = shl i32 %53, 9
  %cond.i189 = select i1 %cmp.i187, i32 %phi.bo.i188, i32 2147483136
  %54 = tail call i32 @llvm.umin.i32(i32 %asmresult84, i32 %cond.i189)
  %reserved_size99 = getelementptr i8, ptr %4, i32 168
  %55 = ptrtoint ptr %reserved_size99 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %reserved_size99, align 8
  br label %cleanup

sw.bb100:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 147) #8
  %56 = tail call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i.i.i177 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i177 to ptr
  %cpu_domain.i.i178 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i178) #6, !srcloc !68
  %and.i179 = and i32 %58, -13
  %or.i180 = or i32 %and.i179, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i180) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %59 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 1, i32 -1226833921) #8, !srcloc !79
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  br label %cleanup

sw.bb116:                                         ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %60 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %f_mode, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %hdr.i) #8
  %62 = call ptr @memset(ptr %hdr.i, i32 255, i32 160)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %sw.bb116.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb116.if.then11.i.i.i_crit_edge:               ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb116
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 160, i32 -1226833920) #13
  %asmresult.i.i.i = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !80

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr.i, i32 noundef 160) #8
  %64 = call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i.i.i.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !68
  %and.i.i.i.i.i = and i32 %66, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr.i, ptr noundef %7, i32 noundef 160) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #8, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i190, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !80

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb116.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 160, %sw.bb116.if.then11.i.i.i_crit_edge ], [ 160, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 160, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %hdr.i, i32 %sub.i.i.i
  %67 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %bsg_sg_io.exit

if.end.i190:                                      ; preds = %if.end.i.i.i
  %68 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hdr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %69)
  %cmp.not.i = icmp eq i32 %69, 81
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i190.bsg_sg_io.exit_crit_edge

if.end.i190.bsg_sg_io.exit_crit_edge:             ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #10
  br label %bsg_sg_io.exit

if.end2.i:                                        ; preds = %if.end.i190
  %sg_io_fn.i = getelementptr i8, ptr %4, i32 172
  %70 = ptrtoint ptr %sg_io_fn.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sg_io_fn.i, align 4
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 8
  %timeout1.i.i = getelementptr inbounds %struct.sg_io_v4, ptr %hdr.i, i32 0, i32 17
  %74 = ptrtoint ptr %timeout1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %timeout1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %75) #8
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end2.i
  %timeout3.i.i = getelementptr i8, ptr %4, i32 164
  %76 = ptrtoint ptr %timeout3.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %timeout3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool4.not.i.i = icmp eq i32 %77, 0
  br i1 %tobool4.not.i.i, label %if.else.i.i.if.end7.thread.i.i_crit_edge, label %if.else.i.i.if.end7.i.i_crit_edge

if.else.i.i.if.end7.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

if.else.i.i.if.end7.thread.i.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.thread.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i.if.end7.i.i_crit_edge, %if.else.i.i.i
  %timeout.0.i.i = phi i32 [ %77, %if.else.i.i.if.end7.i.i_crit_edge ], [ %call2.i.i.i, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 700, i32 %timeout.0.i.i)
  %cmp.i.i = icmp ugt i32 %timeout.0.i.i, 700
  br i1 %cmp.i.i, label %if.end7.i.i.if.end7.thread.i.i_crit_edge, label %if.end7.i.i.bsg_timeout.exit.i_crit_edge

if.end7.i.i.bsg_timeout.exit.i_crit_edge:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bsg_timeout.exit.i

if.end7.i.i.if.end7.thread.i.i_crit_edge:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.thread.i.i

if.end7.thread.i.i:                               ; preds = %if.end7.i.i.if.end7.thread.i.i_crit_edge, %if.else.i.i.if.end7.thread.i.i_crit_edge
  %timeout.015.i.i = phi i32 [ %timeout.0.i.i, %if.end7.i.i.if.end7.thread.i.i_crit_edge ], [ 6000, %if.else.i.i.if.end7.thread.i.i_crit_edge ]
  br label %bsg_timeout.exit.i

bsg_timeout.exit.i:                               ; preds = %if.end7.thread.i.i, %if.end7.i.i.bsg_timeout.exit.i_crit_edge
  %78 = phi i32 [ %timeout.015.i.i, %if.end7.thread.i.i ], [ 700, %if.end7.i.i.bsg_timeout.exit.i_crit_edge ]
  %call4.i = call i32 %71(ptr noundef %73, ptr noundef nonnull %hdr.i, i32 noundef %61, i32 noundef %78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i18.i, label %bsg_timeout.exit.i.if.end9.i_crit_edge

bsg_timeout.exit.i.if.end9.i_crit_edge:           ; preds = %bsg_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i18.i:                                    ; preds = %bsg_timeout.exit.i
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #8
  %call.i.i17.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i17.i, label %if.then.i18.i.bsg_sg_io.exit_crit_edge, label %copy_to_user.exit.i

if.then.i18.i.bsg_sg_io.exit_crit_edge:           ; preds = %if.then.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bsg_sg_io.exit

copy_to_user.exit.i:                              ; preds = %if.then.i18.i
  %call.i.i.i22.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hdr.i, i32 noundef 160) #8
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %hdr.i, i32 noundef 160) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool7.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool7.not.i, label %copy_to_user.exit.i.if.end9.i_crit_edge, label %copy_to_user.exit.i.bsg_sg_io.exit_crit_edge

copy_to_user.exit.i.bsg_sg_io.exit_crit_edge:     ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bsg_sg_io.exit

copy_to_user.exit.i.if.end9.i_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %copy_to_user.exit.i.if.end9.i_crit_edge, %bsg_timeout.exit.i.if.end9.i_crit_edge
  br label %bsg_sg_io.exit

bsg_sg_io.exit:                                   ; preds = %if.end9.i, %copy_to_user.exit.i.bsg_sg_io.exit_crit_edge, %if.then.i18.i.bsg_sg_io.exit_crit_edge, %if.end.i190.bsg_sg_io.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i191 = phi i32 [ %call4.i, %if.end9.i ], [ -22, %if.end.i190.bsg_sg_io.exit_crit_edge ], [ -14, %copy_to_user.exit.i.bsg_sg_io.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i18.i.bsg_sg_io.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %hdr.i) #8
  br label %cleanup

sw.bb118:                                         ; preds = %entry
  %call119 = tail call i32 @___ratelimit(ptr noundef nonnull @bsg_ioctl._rs, ptr noundef nonnull @__func__.bsg_ioctl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %sw.bb118.cleanup_crit_edge, label %do.end124

sw.bb118.cleanup_crit_edge:                       ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end124:                                        ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #10
  %79 = tail call i32 @llvm.read_register.i32(metadata !57) #8
  %and.i192 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i192 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 101
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end124, %sw.bb118.cleanup_crit_edge, %bsg_sg_io.exit, %sw.bb100, %if.end91, %if.end88.cleanup_crit_edge, %sw.bb73.cleanup_crit_edge, %sw.bb55, %sw.bb52, %if.end, %sw.bb40.cleanup_crit_edge, %sw.bb24, %sw.bb8, %sw.bb5, %do.body6.i, %if.end.i.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i191, %bsg_sg_io.exit ], [ %59, %sw.bb100 ], [ 0, %if.end91 ], [ %47, %sw.bb55 ], [ %call54, %sw.bb52 ], [ 0, %if.end ], [ %31, %sw.bb24 ], [ %27, %sw.bb8 ], [ %23, %sw.bb5 ], [ %14, %sw.bb ], [ -14, %sw.bb40.cleanup_crit_edge ], [ -14, %sw.bb73.cleanup_crit_edge ], [ -22, %if.end88.cleanup_crit_edge ], [ -22, %do.end124 ], [ -22, %sw.bb118.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge ], [ 0, %do.body6.i ], [ -14, %sw.bb3.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bsg_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -936
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i1 @blk_get_queue(ptr noundef %4) #8
  %. = select i1 %call1, i32 0, i32 -6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bsg_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -936
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  tail call void @blk_put_queue(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @bsg_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i) #8
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !36, !37, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52, !53, !54, !55}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/bsg.c", i32 179, i32 39}
!2 = !{ptr @__ksymtab_bsg_unregister_queue, !3, !"__ksymtab_bsg_unregister_queue", i1 false, i1 false}
!3 = !{!"../block/bsg.c", i32 183, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/bsg.c", i32 202, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bsg_register_queue._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @bsg_register_queue._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/bsg.c", i32 210, i32 28}
!14 = !{ptr @__ksymtab_bsg_register_queue, !15, !"__ksymtab_bsg_register_queue", i1 false, i1 false}
!15 = !{!"../block/bsg.c", i32 233, i32 1}
!16 = !{ptr @__UNIQUE_ID_author275, !17, !"__UNIQUE_ID_author275", i1 false, i1 false}
!17 = !{!"../block/bsg.c", i32 264, i32 1}
!18 = !{ptr @__UNIQUE_ID_description276, !19, !"__UNIQUE_ID_description276", i1 false, i1 false}
!19 = !{!"../block/bsg.c", i32 265, i32 1}
!20 = !{ptr @__UNIQUE_ID_file277, !21, !"__UNIQUE_ID_file277", i1 false, i1 false}
!21 = !{!"../block/bsg.c", i32 266, i32 1}
!22 = !{ptr @__UNIQUE_ID_license278, !21, !"__UNIQUE_ID_license278", i1 false, i1 false}
!23 = !{ptr @__initcall__kmod_bsg__279_268_bsg_init6, !24, !"__initcall__kmod_bsg__279_268_bsg_init6", i1 false, i1 false}
!24 = !{!"../block/bsg.c", i32 268, i32 1}
!25 = !{ptr @bsg_class, !26, !"bsg_class", i1 false, i1 false}
!26 = !{!"../block/bsg.c", i32 42, i32 22}
!27 = !{ptr @bsg_major, !28, !"bsg_major", i1 false, i1 false}
!28 = !{!"../block/bsg.c", i32 43, i32 12}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../block/bsg.c", i32 41, i32 8}
!31 = !{ptr @bsg_minor_ida, !30, !"bsg_minor_ida", i1 false, i1 false}
!32 = !{ptr @bsg_fops, !33, !"bsg_fops", i1 false, i1 false}
!33 = !{!"../block/bsg.c", i32 159, i32 37}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../block/bsg.c", i32 151, i32 3}
!36 = !{ptr @bsg_ioctl._rs, !35, !"_rs", i1 false, i1 false}
!37 = !{ptr @__func__.bsg_ioctl, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bsg_ioctl._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @bsg_ioctl._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!43 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!48 = !{ptr @bsg_init.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../block/bsg.c", i32 245, i32 14}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../block/bsg.c", i32 255, i32 2}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @bsg_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @bsg_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../block/bsg.c", i32 237, i32 31}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{i64 4995894}
!69 = !{i64 4996091}
!70 = !{i64 2152481324}
!71 = !{i64 2154439677, i64 2154439957, i64 2154440291, i64 2154440625}
!72 = !{i64 2154451187, i64 2154451467, i64 2154451801, i64 2154452135}
!73 = !{i64 2154462794, i64 2154463074, i64 2154463408, i64 2154463742}
!74 = !{i64 2154471561, i64 2154471841, i64 2154472175, i64 2154472509}
!75 = !{i64 2154480328, i64 2154480608, i64 2154480942, i64 2154481276}
!76 = !{i64 2154491798, i64 2154492078, i64 2154492412, i64 2154492746}
!77 = !{i64 2154504215, i64 2154504495, i64 2154504829, i64 2154505163}
!78 = !{i64 2154515685, i64 2154515965, i64 2154516299, i64 2154516633}
!79 = !{i64 2154527112, i64 2154527392, i64 2154527726, i64 2154528060}
!80 = !{!"branch_weights", i32 2000, i32 1}
