; ModuleID = '/llk/IR_all_yes/fs/autofs/dev-ioctl.c_pt.bc'
source_filename = "../fs/autofs/dev-ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.autofs_dev_ioctl = type { i32, i32, i32, i32, %union.anon.71, [0 x i8] }
%union.anon.71 = type { %struct.args_timeout }
%struct.args_timeout = type { i64 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.55, %struct.list_head, %struct.list_head, %union.anon.56 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.spinlock, i32 }
%union.anon.55 = type { %struct.list_head }
%union.anon.56 = type { %struct.hlist_node }
%struct.args_fail = type { i32, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.args_requester = type { i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.34 = type { %struct.callback_head }
%struct.autofs_info = type { ptr, ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.args_out = type { i32, i32 }

@__UNIQUE_ID_alias235 = internal constant [32 x i8] c"autofs4.alias=char-major-10-235\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [29 x i8] c"autofs4.alias=devname:autofs\00", section ".modinfo", align 1
@_autofs_dev_ioctl_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 235, ptr @.str.3, ptr @_dev_ioctl_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 420 }, [56 x i8] zeroinitializer }, align 32
@autofs_dev_ioctl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013autofs4:pid:%d:%s: misc_register failed for control device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"autofs_dev_ioctl_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/autofs/dev-ioctl.c\00", [42 x i8] zeroinitializer }, align 32
@autofs_dev_ioctl_init._entry_ptr = internal global ptr @autofs_dev_ioctl_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"autofs\00", [25 x i8] zeroinitializer }, align 32
@_dev_ioctl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_dev_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@_autofs_dev_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014autofs4:pid:%d:%s: unknown command 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_autofs_dev_ioctl\00", [46 x i8] zeroinitializer }, align 32
@_autofs_dev_ioctl._entry_ptr = internal global ptr @_autofs_dev_ioctl._entry, section ".printk_index", align 4
@autofs_fs_type = external dso_local global %struct.file_system_type, align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@validate_dev_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014autofs4:pid:%d:%s: invalid device control module version supplied for cmd(0x%08x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"validate_dev_ioctl\00", [45 x i8] zeroinitializer }, align 32
@validate_dev_ioctl._entry_ptr = internal global ptr @validate_dev_ioctl._entry, section ".printk_index", align 4
@validate_dev_ioctl._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014autofs4:pid:%d:%s: path string terminator missing for cmd(0x%08x)\0A\00", [59 x i8] zeroinitializer }, align 32
@validate_dev_ioctl._entry_ptr.13 = internal global ptr @validate_dev_ioctl._entry.11, section ".printk_index", align 4
@validate_dev_ioctl._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014autofs4:pid:%d:%s: invalid path supplied for cmd(0x%08x)\0A\00", [36 x i8] zeroinitializer }, align 32
@validate_dev_ioctl._entry_ptr.16 = internal global ptr @validate_dev_ioctl._entry.14, section ".printk_index", align 4
@check_dev_ioctl_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\014autofs4:pid:%d:%s: ioctl control interface version mismatch: kernel(%u.%u), user(%u.%u), cmd(0x%08x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"check_dev_ioctl_version\00", [40 x i8] zeroinitializer }, align 32
@check_dev_ioctl_version._entry_ptr = internal global ptr @check_dev_ioctl_version._entry, section ".printk_index", align 4
@lookup_dev_ioctl._ioctls = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @autofs_dev_ioctl_version, ptr @autofs_dev_ioctl_protover, ptr @autofs_dev_ioctl_protosubver, ptr @autofs_dev_ioctl_openmount, ptr @autofs_dev_ioctl_closemount, ptr @autofs_dev_ioctl_ready, ptr @autofs_dev_ioctl_fail, ptr @autofs_dev_ioctl_setpipefd, ptr @autofs_dev_ioctl_catatonic, ptr @autofs_dev_ioctl_timeout, ptr @autofs_dev_ioctl_requester, ptr @autofs_dev_ioctl_expire, ptr @autofs_dev_ioctl_askumount, ptr @autofs_dev_ioctl_ismountpoint], [40 x i8] zeroinitializer }, align 32
@autofs_dev_ioctl_setpipefd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014autofs4:pid:%d:%s: not allowed to change PID namespace\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"autofs_dev_ioctl_setpipefd\00", [37 x i8] zeroinitializer }, align 32
@autofs_dev_ioctl_setpipefd._entry_ptr = internal global ptr @autofs_dev_ioctl_setpipefd._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 113, i64 126]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 8, i64 116, i64 123, i64 126]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 113, i64 116, i64 117]
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"_autofs_dev_ioctl_misc\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 714, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 731, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 716, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"_dev_ioctl_fops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 707, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 630, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 156, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 117, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 125, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 133, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 62, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [8 x i8] c"_ioctls\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 568, i32 24 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [25 x i8] c"../fs/autofs/dev-ioctl.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 361, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_alias236, ptr @_autofs_dev_ioctl._entry, ptr @_autofs_dev_ioctl._entry_ptr, ptr @autofs_dev_ioctl_init._entry, ptr @autofs_dev_ioctl_init._entry_ptr, ptr @autofs_dev_ioctl_setpipefd._entry, ptr @autofs_dev_ioctl_setpipefd._entry_ptr, ptr @check_dev_ioctl_version._entry, ptr @check_dev_ioctl_version._entry_ptr, ptr @validate_dev_ioctl._entry, ptr @validate_dev_ioctl._entry.11, ptr @validate_dev_ioctl._entry.14, ptr @validate_dev_ioctl._entry_ptr, ptr @validate_dev_ioctl._entry_ptr.13, ptr @validate_dev_ioctl._entry_ptr.16, ptr @_autofs_dev_ioctl_misc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @_dev_ioctl_fops, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @lookup_dev_ioctl._ioctls, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_autofs_dev_ioctl_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_dev_ioctl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dev_ioctl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_autofs_dev_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_dev_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_dev_ioctl._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_dev_ioctl._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_dev_ioctl_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_dev_ioctl._ioctls to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_dev_ioctl_setpipefd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @autofs_dev_ioctl_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @_autofs_dev_ioctl_misc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @autofs_dev_ioctl_exit() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misc_deregister(ptr noundef nonnull @_autofs_dev_ioctl_misc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl(ptr nocapture noundef readnone %file, i32 noundef %command, i32 noundef %u) #4 align 64 {
entry:
  %tmp.i.i = alloca %struct.autofs_dev_ioctl, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %u to ptr
  %and.i = and i32 %command, 255
  %1 = and i32 %command, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 37632, i32 %1)
  %cmp.not.i = icmp ne i32 %1, 37632
  %2 = add nsw i32 %and.i, -127
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %2)
  %cmp3.i = icmp ult i32 %2, -14
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %entry._autofs_dev_ioctl.exit_crit_edge, label %if.end.i

entry._autofs_dev_ioctl.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_autofs_dev_ioctl.exit

if.end.i:                                         ; preds = %entry
  %trunc.i = trunc i32 %command to i8
  %3 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %land.lhs.true6.i [
    i8 126, label %if.end.i.if.end8.i_crit_edge
    i8 113, label %if.end.i.if.end8.i_crit_edge1
  ]

if.end.i.if.end8.i_crit_edge1:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

land.lhs.true6.i:                                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call.i, label %land.lhs.true6.i.if.end8.i_crit_edge, label %land.lhs.true6.i._autofs_dev_ioctl.exit_crit_edge

land.lhs.true6.i._autofs_dev_ioctl.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_autofs_dev_ioctl.exit

land.lhs.true6.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true6.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp.i.i) #9
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %tmp.i.i, i32 0, i32 2
  %5 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #9
  %call.i.i.i99.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i99.i, label %if.end8.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.if.then11.i.i.i.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 24, i32 -1226833920) #13
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !69

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i.i, i32 noundef 24) #9
  %7 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #8, !srcloc !70
  %and.i.i.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp.i.i, ptr noundef %0, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !69

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 24, %if.end8.i.if.then11.i.i.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 24, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %tmp.i.i, i32 %sub.i.i.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %copy_dev_ioctl.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i.i.i.i
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %12)
  %cmp.i.i = icmp ult i32 %12, 24
  br i1 %cmp.i.i, label %if.end.i.i.copy_dev_ioctl.exit.thread.i_crit_edge, label %if.end4.i.i

if.end.i.i.copy_dev_ioctl.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_dev_ioctl.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4120, i32 %12)
  %cmp6.i.i = icmp ugt i32 %12, 4120
  br i1 %cmp6.i.i, label %if.end4.i.i.copy_dev_ioctl.exit.thread.i_crit_edge, label %if.end9.i.i

if.end4.i.i.copy_dev_ioctl.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_dev_ioctl.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %call11.i.i = call ptr @memdup_user(ptr noundef %0, i32 noundef %12) #9
  %cmp.i.i100.i = icmp ugt ptr %call11.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i100.i, label %copy_dev_ioctl.exit.thread144.i, label %if.end13.i

copy_dev_ioctl.exit.thread144.i:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp.i.i) #9
  br label %if.then11.i

copy_dev_ioctl.exit.thread.i:                     ; preds = %if.end4.i.i.copy_dev_ioctl.exit.thread.i_crit_edge, %if.end.i.i.copy_dev_ioctl.exit.thread.i_crit_edge, %if.then11.i.i.i.i
  %retval.0.i.ph.i = phi ptr [ inttoptr (i32 -36 to ptr), %if.end4.i.i.copy_dev_ioctl.exit.thread.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.i.copy_dev_ioctl.exit.thread.i_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp.i.i) #9
  br label %if.then11.i

if.then11.i:                                      ; preds = %copy_dev_ioctl.exit.thread.i, %copy_dev_ioctl.exit.thread144.i
  %retval.0.i117.i = phi ptr [ %retval.0.i.ph.i, %copy_dev_ioctl.exit.thread.i ], [ %call11.i.i, %copy_dev_ioctl.exit.thread144.i ]
  %13 = ptrtoint ptr %retval.0.i117.i to i32
  br label %_autofs_dev_ioctl.exit

if.end13.i:                                       ; preds = %if.end9.i.i
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %4, align 8
  %size15.i.i = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %call11.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %size15.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %size15.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp.i.i) #9
  %17 = ptrtoint ptr %call11.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call11.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.not.i.i.i = icmp eq i32 %18, 1
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end13.i.do.end.i.i_crit_edge

if.end13.i.do.end.i.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end13.i
  %ver_minor.i.i.i = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %call11.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %ver_minor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ver_minor.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp1.i.i102.i = icmp ugt i32 %20, 1
  br i1 %cmp1.i.i102.i, label %lor.lhs.false.i.i.i.do.end.i.i_crit_edge, label %if.end.i104.i

lor.lhs.false.i.i.i.do.end.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.i.do.end.i.i_crit_edge, %if.end13.i.do.end.i.i_crit_edge
  %21 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i, align 8
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid.i.i.i, align 8
  %ver_minor3.i.i.i = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %call11.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %ver_minor3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ver_minor3.i.i.i, align 4
  %call4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %26, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 1, i32 noundef %18, i32 noundef %28, i32 noundef %command) #12
  %29 = ptrtoint ptr %call11.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %call11.i.i, align 8
  %30 = ptrtoint ptr %ver_minor3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %ver_minor3.i.i.i, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid.i.i, align 8
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %36, ptr noundef nonnull @.str.10, i32 noundef %command) #12
  br label %out.i

if.end.i104.i:                                    ; preds = %lor.lhs.false.i.i.i
  %37 = ptrtoint ptr %call11.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %call11.i.i, align 8
  %38 = ptrtoint ptr %ver_minor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %ver_minor.i.i.i, align 4
  %39 = ptrtoint ptr %size15.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size15.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %40)
  %cmp.i103.i = icmp ugt i32 %40, 24
  br i1 %cmp.i103.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.end.i104.i
  %path.i.i = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %call11.i.i, i32 0, i32 5
  %sub.i.i = add i32 %40, -24
  %call.i.i105.i = call ptr @memchr(ptr noundef %path.i.i, i32 noundef 0, i32 noundef %sub.i.i) #14
  %tobool.not.i.not.i.i = icmp eq ptr %call.i.i105.i, null
  br i1 %tobool.not.i.not.i.i, label %do.end10.i.i, label %if.end16.i.i

do.end10.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i53.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i53.i.i to ptr
  %task13.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task13.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task13.i.i, align 8
  %pid14.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid14.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid14.i.i, align 8
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %46, ptr noundef nonnull @.str.10, i32 noundef %command) #12
  br label %out.i

if.end16.i.i:                                     ; preds = %if.then3.i.i
  %call.i54.i.i = call ptr @strchr(ptr noundef %path.i.i, i32 noundef 47) #9
  %tobool.not.i55.not.i.i = icmp eq ptr %call.i54.i.i, null
  br i1 %tobool.not.i55.not.i.i, label %do.end24.i.i, label %if.end16.i.i.lookup_dev_ioctl.exit.i_crit_edge

if.end16.i.i.lookup_dev_ioctl.exit.i_crit_edge:   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lookup_dev_ioctl.exit.i

do.end24.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i57.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i57.i.i to ptr
  %task27.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task27.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task27.i.i, align 8
  %pid28.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 68
  %51 = ptrtoint ptr %pid28.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pid28.i.i, align 8
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %52, ptr noundef nonnull @.str.10, i32 noundef %command) #12
  br label %out.i

if.else.i.i:                                      ; preds = %if.end.i104.i
  %53 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %trunc.i, label %if.else.i.i.lookup_dev_ioctl.exit.i_crit_edge [
    i8 116, label %if.else.i.i.out.i_crit_edge
    i8 123, label %if.else.i.i.out.i_crit_edge2
    i8 126, label %if.else.i.i.out.i_crit_edge3
  ]

if.else.i.i.out.i_crit_edge3:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else.i.i.out.i_crit_edge2:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else.i.i.out.i_crit_edge:                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else.i.i.lookup_dev_ioctl.exit.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lookup_dev_ioctl.exit.i

lookup_dev_ioctl.exit.i:                          ; preds = %if.else.i.i.lookup_dev_ioctl.exit.i_crit_edge, %if.end16.i.i.lookup_dev_ioctl.exit.i_crit_edge
  %sub.i106.i = add nsw i32 %and.i, -113
  %54 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i106.i, i32 14) #9, !srcloc !73
  %and.i.i = and i32 %54, %sub.i106.i
  %arrayidx.i.i = getelementptr [14 x ptr], ptr @lookup_dev_ioctl._ioctls, i32 0, i32 %and.i.i
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %57 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %trunc.i, label %if.then28.i [
    i8 117, label %lookup_dev_ioctl.exit.i.cont.thread.i_crit_edge
    i8 116, label %lookup_dev_ioctl.exit.i.cont.thread.i_crit_edge4
    i8 113, label %lookup_dev_ioctl.exit.i.cont.thread.i_crit_edge5
  ]

lookup_dev_ioctl.exit.i.cont.thread.i_crit_edge5: ; preds = %lookup_dev_ioctl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cont.thread.i

lookup_dev_ioctl.exit.i.cont.thread.i_crit_edge4: ; preds = %lookup_dev_ioctl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cont.thread.i

lookup_dev_ioctl.exit.i.cont.thread.i_crit_edge:  ; preds = %lookup_dev_ioctl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cont.thread.i

if.then28.i:                                      ; preds = %lookup_dev_ioctl.exit.i
  %ioctlfd.i = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %call11.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %ioctlfd.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ioctlfd.i, align 4
  %call29.i = call ptr @fget(i32 noundef %59) #9
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end35.i

if.then31.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and.i)
  %cmp32.i = icmp eq i32 %and.i, 126
  br i1 %cmp32.i, label %cont.i, label %if.then31.i.out.i_crit_edge

if.then31.i.out.i_crit_edge:                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end35.i:                                       ; preds = %if.then28.i
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %call29.i, i32 0, i32 2
  %60 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb.i, align 4
  %s_type.i = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_type.i, align 32
  %cmp37.not.i = icmp eq ptr %65, @autofs_fs_type
  br i1 %cmp37.not.i, label %if.end39.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @fput(ptr noundef nonnull %call29.i) #9
  br label %out.i

if.end39.i:                                       ; preds = %if.end35.i
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 33
  %66 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i.i = getelementptr inbounds %struct.autofs_sb_info, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i.i, align 4
  %and.i111.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111.i)
  %tobool.not.i.i = icmp eq i32 %and.i111.i, 0
  br i1 %tobool.not.i.i, label %autofs_oz_mode.exit.i, label %if.end39.i.if.then50.i_crit_edge

if.end39.i.if.then50.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

autofs_oz_mode.exit.i:                            ; preds = %if.end39.i
  %70 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i112.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i112.i to ptr
  %task.i113.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task.i113.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task.i113.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 111
  %74 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %75, i32 0, i32 22, i32 2
  %76 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i.i, align 8
  %oz_pgrp.i.i = getelementptr inbounds %struct.autofs_sb_info, ptr %67, i32 0, i32 3
  %78 = ptrtoint ptr %oz_pgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %oz_pgrp.i.i, align 4
  %cmp.i114.i = icmp eq ptr %77, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 121, i32 %and.i)
  %cmp44.not.i = icmp eq i32 %and.i, 121
  %or.cond98.i = or i1 %cmp44.not.i, %cmp.i114.i
  br i1 %or.cond98.i, label %autofs_oz_mode.exit.i.if.then50.i_crit_edge, label %if.then45.i

autofs_oz_mode.exit.i.if.then50.i_crit_edge:      ; preds = %autofs_oz_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

if.then45.i:                                      ; preds = %autofs_oz_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @fput(ptr noundef nonnull %call29.i) #9
  br label %out.i

cont.thread.i:                                    ; preds = %lookup_dev_ioctl.exit.i.cont.thread.i_crit_edge, %lookup_dev_ioctl.exit.i.cont.thread.i_crit_edge4, %lookup_dev_ioctl.exit.i.cont.thread.i_crit_edge5
  %call48130.i = call i32 %56(ptr noundef null, ptr noundef null, ptr noundef %call11.i.i) #9
  br label %if.end51.i

cont.i:                                           ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  %call48.i = call i32 %56(ptr noundef null, ptr noundef null, ptr noundef %call11.i.i) #9
  br label %if.end51.i

if.then50.i:                                      ; preds = %autofs_oz_mode.exit.i.if.then50.i_crit_edge, %if.end39.i.if.then50.i_crit_edge
  %call48136.i = call i32 %56(ptr noundef nonnull %call29.i, ptr noundef %67, ptr noundef %call11.i.i) #9
  call void @fput(ptr noundef nonnull %call29.i) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then50.i, %cont.i, %cont.thread.i
  %call48132.i = phi i32 [ %call48130.i, %cont.thread.i ], [ %call48136.i, %if.then50.i ], [ %call48.i, %cont.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call48132.i)
  %cmp52.i = icmp sgt i32 %call48132.i, -1
  br i1 %cmp52.i, label %if.then.i.i, label %if.end51.i.out.i_crit_edge

if.end51.i.out.i_crit_edge:                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then.i.i:                                      ; preds = %if.end51.i
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #9
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.then.i.i.out.i_crit_edge, label %copy_to_user.exit.i

if.then.i.i.out.i_crit_edge:                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

copy_to_user.exit.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %call11.i.i, i32 noundef 24) #9
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %call11.i.i, i32 noundef 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool55.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool55.not.i, i32 %call48132.i, i32 -14
  br label %out.i

out.i:                                            ; preds = %copy_to_user.exit.i, %if.then.i.i.out.i_crit_edge, %if.end51.i.out.i_crit_edge, %if.then45.i, %if.then38.i, %if.then31.i.out.i_crit_edge, %if.else.i.i.out.i_crit_edge, %if.else.i.i.out.i_crit_edge2, %if.else.i.i.out.i_crit_edge3, %do.end24.i.i, %do.end10.i.i, %do.end.i.i
  %err.1.i = phi i32 [ %call48132.i, %if.end51.i.out.i_crit_edge ], [ -22, %if.then38.i ], [ -13, %if.then45.i ], [ -9, %if.then31.i.out.i_crit_edge ], [ -22, %do.end.i.i ], [ -22, %do.end10.i.i ], [ -22, %do.end24.i.i ], [ -22, %if.else.i.i.out.i_crit_edge ], [ -22, %if.else.i.i.out.i_crit_edge2 ], [ -22, %if.else.i.i.out.i_crit_edge3 ], [ -14, %if.then.i.i.out.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @kfree(ptr noundef %call11.i.i) #9
  br label %_autofs_dev_ioctl.exit

_autofs_dev_ioctl.exit:                           ; preds = %out.i, %if.then11.i, %land.lhs.true6.i._autofs_dev_ioctl.exit_crit_edge, %entry._autofs_dev_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then11.i ], [ %err.1.i, %out.i ], [ -25, %entry._autofs_dev_ioctl.exit_crit_edge ], [ -1, %land.lhs.true6.i._autofs_dev_ioctl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @autofs_dev_ioctl_version(ptr nocapture noundef readnone %fp, ptr nocapture noundef readnone %sbi, ptr nocapture noundef writeonly %param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %param, align 8
  %ver_minor = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %ver_minor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %ver_minor, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @autofs_dev_ioctl_protover(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %param) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 4
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  %2 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %2, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @autofs_dev_ioctl_protosubver(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %sbi, ptr nocapture noundef writeonly %param) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub_version = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 5
  %0 = ptrtoint ptr %sub_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub_version, align 4
  %2 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_openmount(ptr nocapture noundef readnone %fp, ptr nocapture noundef readnone %sbi, ptr noundef %param) #4 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 8
  %path.i = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioctlfd = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 3
  %3 = ptrtoint ptr %ioctlfd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ioctlfd, align 4
  %and1.i = and i32 %2, 255
  %shr2.i = lshr i32 %2, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %4 = shl i32 %2, 12
  %shl.i = and i32 %4, -1048576
  %or4.i = or i32 %or.i, %shl.i
  %call.i = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.cleanup_crit_edge, !prof !69

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %path2 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #9
  %5 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 8, !annotation !74
  %6 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !74
  %call.i.i = call i32 @kern_path(ptr noundef %path2, i32 noundef 128, ptr noundef nonnull %path.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.while.cond.i.i_crit_edge, label %find_autofs_mount.exit.thread.i

if.then.i.while.cond.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.cond.i.i

find_autofs_mount.exit.thread.i:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #9
  br label %out.i

while.cond.i.i:                                   ; preds = %if.end8.i.i.while.cond.i.i_crit_edge, %if.then.i.while.cond.i.i_crit_edge
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 4
  %10 = ptrtoint ptr %path.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %path.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp.i.i = icmp eq ptr %9, %13
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.find_autofs_mount.exit.thread27.i_crit_edge

while.cond.i.i.find_autofs_mount.exit.thread27.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_autofs_mount.exit.thread27.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 9
  %14 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_sb.i.i, align 4
  %s_magic.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %s_magic.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 391, i32 %17)
  %cmp2.i.i = icmp eq i32 %17, 391
  br i1 %cmp2.i.i, label %if.then3.i.i, label %while.body.i.i.if.end8.i.i_crit_edge

while.body.i.i.if.end8.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then3.i.i:                                     ; preds = %while.body.i.i
  %s_dev.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %s_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_dev.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %or4.i)
  %cmp.i24.not.i = icmp eq i32 %19, %or4.i
  br i1 %cmp.i24.not.i, label %do.end.i, label %if.then3.i.i.if.end8.i.i_crit_edge

if.then3.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then3.i.i.if.end8.i.i_crit_edge, %while.body.i.i.if.end8.i.i_crit_edge
  %call9.i.i = call i32 @follow_up(ptr noundef nonnull %path.i.i) #9
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end8.i.i.find_autofs_mount.exit.thread27.i_crit_edge, label %if.end8.i.i.while.cond.i.i_crit_edge

if.end8.i.i.while.cond.i.i_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

if.end8.i.i.find_autofs_mount.exit.thread27.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_autofs_mount.exit.thread27.i

find_autofs_mount.exit.thread27.i:                ; preds = %if.end8.i.i.find_autofs_mount.exit.thread27.i_crit_edge, %while.cond.i.i.find_autofs_mount.exit.thread27.i_crit_edge
  call void @path_put(ptr noundef nonnull %path.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #9
  br label %out.i

do.end.i:                                         ; preds = %if.then3.i.i
  call void @path_get(ptr noundef nonnull %path.i.i) #9
  %20 = ptrtoint ptr %path.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %path.i.i, align 8
  %22 = ptrtoint ptr %path.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %path.i, align 8
  call void @path_put(ptr noundef nonnull %path.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #9
  %23 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred.i, align 16
  %call6.i = call ptr @dentry_open(ptr noundef nonnull %path.i, i32 noundef 0, ptr noundef %28) #9
  call void @path_put(ptr noundef nonnull %path.i) #9
  %cmp.i22.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i, label %if.then8.i, label %cleanup.i

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call6.i to i32
  br label %out.i

cleanup.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @fd_install(i32 noundef %call.i, ptr noundef %call6.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #9
  br label %autofs_dev_ioctl_open_mountpoint.exit

out.i:                                            ; preds = %if.then8.i, %find_autofs_mount.exit.thread27.i, %find_autofs_mount.exit.thread.i
  %err.0.ph.i = phi i32 [ -2, %find_autofs_mount.exit.thread27.i ], [ %call.i.i, %find_autofs_mount.exit.thread.i ], [ %29, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #9
  call void @put_unused_fd(i32 noundef %call.i) #9
  br label %autofs_dev_ioctl_open_mountpoint.exit

autofs_dev_ioctl_open_mountpoint.exit:            ; preds = %out.i, %cleanup.i
  %retval.0.i = phi i32 [ %err.0.ph.i, %out.i ], [ %call.i, %cleanup.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %autofs_dev_ioctl_open_mountpoint.exit.cleanup_crit_edge, label %if.end8, !prof !75

autofs_dev_ioctl_open_mountpoint.exit.cleanup_crit_edge: ; preds = %autofs_dev_ioctl_open_mountpoint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %autofs_dev_ioctl_open_mountpoint.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %ioctlfd to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i, ptr %ioctlfd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %autofs_dev_ioctl_open_mountpoint.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end8 ], [ %retval.0.i, %autofs_dev_ioctl_open_mountpoint.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_closemount(ptr nocapture noundef readnone %fp, ptr nocapture noundef readnone %sbi, ptr nocapture noundef readonly %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioctlfd = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 3
  %0 = ptrtoint ptr %ioctlfd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioctlfd, align 4
  %call = tail call i32 @close_fd(i32 noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_ready(ptr nocapture noundef readnone %fp, ptr noundef %sbi, ptr nocapture noundef readonly %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %call = tail call i32 @autofs_wait_release(ptr noundef %sbi, i32 noundef %2, i32 noundef 0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_fail(ptr nocapture noundef readnone %fp, ptr noundef %sbi, ptr nocapture noundef readonly %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %status2 = getelementptr inbounds %struct.args_fail, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  %spec.select = select i1 %cmp, i32 %4, i32 -2
  %call = tail call i32 @autofs_wait_release(ptr noundef %sbi, i32 noundef %2, i32 noundef %spec.select) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_setpipefd(ptr nocapture noundef readnone %fp, ptr noundef %sbi, ptr nocapture noundef readonly %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup33

if.end:                                           ; preds = %entry
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %wq_mutex, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup33.sink.split_crit_edge, label %if.else

if.end.cleanup33.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup33.sink.split

if.else:                                          ; preds = %if.end
  %5 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %call5 = tail call ptr @get_task_pid(ptr noundef %8, i32 noundef 2) #9
  %tobool.not.i = icmp eq ptr %call5, null
  br i1 %tobool.not.i, label %if.else.ns_of_pid.exit_crit_edge, label %if.then.i

if.else.ns_of_pid.exit_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %ns_of_pid.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %level.i = getelementptr inbounds %struct.pid, ptr %call5, i32 0, i32 1
  %9 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level.i, align 4
  %ns1.i = getelementptr %struct.pid, ptr %call5, i32 0, i32 7, i32 %10, i32 1
  %11 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns1.i, align 4
  br label %ns_of_pid.exit

ns_of_pid.exit:                                   ; preds = %if.then.i, %if.else.ns_of_pid.exit_crit_edge
  %ns.0.i = phi ptr [ %12, %if.then.i ], [ null, %if.else.ns_of_pid.exit_crit_edge ]
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 3
  %13 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %oz_pgrp, align 4
  %tobool.not.i52 = icmp eq ptr %14, null
  br i1 %tobool.not.i52, label %ns_of_pid.exit.ns_of_pid.exit57_crit_edge, label %if.then.i55

ns_of_pid.exit.ns_of_pid.exit57_crit_edge:        ; preds = %ns_of_pid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ns_of_pid.exit57

if.then.i55:                                      ; preds = %ns_of_pid.exit
  call void @__sanitizer_cov_trace_pc() #11
  %level.i53 = getelementptr inbounds %struct.pid, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %level.i53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %level.i53, align 4
  %ns1.i54 = getelementptr %struct.pid, ptr %14, i32 0, i32 7, i32 %16, i32 1
  %17 = ptrtoint ptr %ns1.i54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns1.i54, align 4
  br label %ns_of_pid.exit57

ns_of_pid.exit57:                                 ; preds = %if.then.i55, %ns_of_pid.exit.ns_of_pid.exit57_crit_edge
  %ns.0.i56 = phi ptr [ %18, %if.then.i55 ], [ null, %ns_of_pid.exit.ns_of_pid.exit57_crit_edge ]
  %cmp8.not = icmp eq ptr %ns.0.i, %ns.0.i56
  br i1 %cmp8.not, label %if.end13, label %do.end

do.end:                                           ; preds = %ns_of_pid.exit57
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid, align 8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %22, ptr noundef nonnull @.str.20) #12
  br label %out

if.end13:                                         ; preds = %ns_of_pid.exit57
  %call14 = tail call ptr @fget(i32 noundef %2) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.out_crit_edge, label %if.end17

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end17:                                         ; preds = %if.end13
  %f_mode.i = getelementptr inbounds %struct.file, ptr %call14, i32 0, i32 8
  %23 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f_mode.i, align 8
  %and.i58 = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i59 = icmp eq i32 %and.i58, 0
  br i1 %tobool.not.i59, label %if.end17.if.then20_crit_edge, label %if.end.i

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end.i:                                         ; preds = %if.end17
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %call14, i32 0, i32 2
  %25 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_inode.i.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 8
  %29 = and i16 %28, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %29)
  %cmp.i = icmp eq i16 %29, 4096
  br i1 %cmp.i, label %do.body22, label %if.end.i.if.then20_crit_edge

if.end.i.if.then20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %if.end.i.if.then20_crit_edge, %if.end17.if.then20_crit_edge
  tail call void @fput(ptr noundef nonnull %call14) #9
  br label %out

do.body22:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %f_flags.i = getelementptr inbounds %struct.file, ptr %call14, i32 0, i32 7
  %30 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_flags.i, align 4
  %or.i = and i32 %31, -67585
  %and6.i = or i32 %or.i, 65536
  store i32 %and6.i, ptr %f_flags.i, align 4
  %32 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %oz_pgrp, align 4
  store ptr %call5, ptr %oz_pgrp, align 4
  %pipefd27 = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 1
  %34 = ptrtoint ptr %pipefd27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %2, ptr %pipefd27, align 4
  %pipe28 = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 2
  %35 = ptrtoint ptr %pipe28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call14, ptr %pipe28, align 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and30 = and i32 %37, -2
  store i32 %and30, ptr %flags, align 4
  br label %out

out:                                              ; preds = %do.body22, %if.then20, %if.end13.out_crit_edge, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ -32, %if.then20 ], [ 0, %do.body22 ], [ -9, %if.end13.out_crit_edge ]
  %new_pid.0 = phi ptr [ %call5, %do.end ], [ %call5, %if.then20 ], [ %33, %do.body22 ], [ %call5, %if.end13.out_crit_edge ]
  tail call void @put_pid(ptr noundef %new_pid.0) #9
  br label %cleanup33.sink.split

cleanup33.sink.split:                             ; preds = %out, %if.end.cleanup33.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.0, %out ], [ -16, %if.end.cleanup33.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wq_mutex) #9
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup33.sink.split, %entry.cleanup33_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup33_crit_edge ], [ %retval.0.ph, %cleanup33.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_catatonic(ptr nocapture noundef readnone %fp, ptr noundef %sbi, ptr nocapture noundef readnone %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @autofs_catatonic_mode(ptr noundef %sbi) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @autofs_dev_ioctl_timeout(ptr nocapture noundef readnone %fp, ptr nocapture noundef %sbi, ptr nocapture noundef %param) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  %conv = trunc i64 %2 to i32
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 9
  %3 = ptrtoint ptr %exp_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %exp_timeout, align 4
  %div = udiv i32 %4, 100
  %conv2 = zext i32 %div to i64
  store i64 %conv2, ptr %0, align 8
  %mul = mul i32 %conv, 100
  store i32 %mul, ptr %exp_timeout, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_requester(ptr nocapture noundef readnone %fp, ptr noundef %sbi, ptr noundef %param) #4 align 64 {
entry:
  %path.i = alloca %struct.path, align 8
  %path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #9
  %sb = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 11
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dev, align 8
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %gid = getelementptr inbounds %struct.args_requester, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %gid, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %4, align 8
  %path1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #9
  %7 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 8, !annotation !74
  %8 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !74
  %call.i = call i32 @kern_path(ptr noundef %path1, i32 noundef 128, ptr noundef nonnull %path.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.while.cond.i_crit_edge, label %find_autofs_mount.exit.thread

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

find_autofs_mount.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #9
  br label %out

while.cond.i:                                     ; preds = %if.end8.i.while.cond.i_crit_edge, %entry.while.cond.i_crit_edge
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %8, align 4
  %12 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %path.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %cmp.i = icmp eq ptr %11, %15
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.find_autofs_mount.exit.thread40_crit_edge

while.cond.i.find_autofs_mount.exit.thread40_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_autofs_mount.exit.thread40

while.body.i:                                     ; preds = %while.cond.i
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 9
  %16 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_sb.i, align 4
  %s_magic.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 391, i32 %19)
  %cmp2.i = icmp eq i32 %19, 391
  br i1 %cmp2.i, label %if.then3.i, label %while.body.i.if.end8.i_crit_edge

while.body.i.if.end8.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then3.i:                                       ; preds = %while.body.i
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_dev.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %3)
  %cmp.i37.not = icmp eq i32 %21, %3
  br i1 %cmp.i37.not, label %if.end, label %if.then3.i.if.end8.i_crit_edge

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %while.body.i.if.end8.i_crit_edge
  %call9.i = call i32 @follow_up(ptr noundef nonnull %path.i) #9
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.find_autofs_mount.exit.thread40_crit_edge, label %if.end8.i.while.cond.i_crit_edge

if.end8.i.while.cond.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end8.i.find_autofs_mount.exit.thread40_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_autofs_mount.exit.thread40

find_autofs_mount.exit.thread40:                  ; preds = %if.end8.i.find_autofs_mount.exit.thread40_crit_edge, %while.cond.i.find_autofs_mount.exit.thread40_crit_edge
  call void @path_put(ptr noundef nonnull %path.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #9
  br label %out

if.end:                                           ; preds = %if.then3.i
  call void @path_get(ptr noundef nonnull %path.i) #9
  %22 = ptrtoint ptr %path.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %path.i, align 8
  %24 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %path, align 8
  call void @path_put(ptr noundef nonnull %path.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #9
  %25 = trunc i64 %23 to i32
  %26 = inttoptr i32 %25 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_fsdata.i, align 4
  %tobool3.not = icmp eq ptr %28, null
  br i1 %tobool3.not, label %if.end.if.end25_crit_edge, label %if.then4

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @autofs_expire_wait(ptr noundef nonnull %path, i32 noundef 0) #9
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %fs_lock) #9
  %29 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 99
  %33 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 25
  %35 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %user_ns, align 4
  %uid8 = getelementptr inbounds %struct.autofs_info, ptr %28, i32 0, i32 9
  %37 = ptrtoint ptr %uid8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack = load i32, ptr %uid8, align 4
  %38 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call9 = call i32 @from_kuid_munged(ptr noundef %36, [1 x i32] %38) #9
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call9, ptr %4, align 8
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %cred18 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 99
  %42 = ptrtoint ptr %cred18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cred18, align 16
  %user_ns19 = getelementptr inbounds %struct.cred, ptr %43, i32 0, i32 25
  %44 = ptrtoint ptr %user_ns19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %user_ns19, align 4
  %gid20 = getelementptr inbounds %struct.autofs_info, ptr %28, i32 0, i32 10
  %46 = ptrtoint ptr %gid20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack35 = load i32, ptr %gid20, align 4
  %47 = insertvalue [1 x i32] undef, i32 %.unpack35, 0
  %call22 = call i32 @from_kgid_munged(ptr noundef %45, [1 x i32] %47) #9
  %48 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call22, ptr %gid, align 4
  call void @_raw_spin_unlock(ptr noundef %fs_lock) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then4, %if.end.if.end25_crit_edge
  call void @path_put(ptr noundef nonnull %path) #9
  br label %out

out:                                              ; preds = %if.end25, %find_autofs_mount.exit.thread40, %find_autofs_mount.exit.thread
  %err.1 = phi i32 [ 0, %if.end25 ], [ %call.i, %find_autofs_mount.exit.thread ], [ -2, %find_autofs_mount.exit.thread40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #9
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_expire(ptr nocapture noundef readonly %fp, ptr noundef %sbi, ptr nocapture noundef readonly %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %f_path = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 1
  %3 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_path, align 8
  %sb = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 11
  %5 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sb, align 4
  %call = tail call i32 @autofs_do_expire_multi(ptr noundef %6, ptr noundef %4, ptr noundef %sbi, i32 noundef %2) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_askumount(ptr nocapture noundef readonly %fp, ptr nocapture noundef readnone %sbi, ptr nocapture noundef writeonly %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 8
  %f_path = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 1
  %2 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_path, align 8
  %call = tail call i32 @may_umount(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dev_ioctl_ismountpoint(ptr noundef readnone %fp, ptr nocapture noundef readonly %sbi, ptr noundef %param) #4 align 64 {
entry:
  %path.i61 = alloca %struct.path, align 8
  %path.i = alloca %struct.path, align 8
  %path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #9
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 8, !annotation !74
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !74
  %path1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 5
  %3 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  store i32 0, ptr %3, align 8
  %magic4 = getelementptr inbounds %struct.args_out, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %magic4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %magic4, align 4
  %tobool.not = icmp eq ptr %fp, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ioctlfd = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %param, i32 0, i32 3
  %7 = ptrtoint ptr %ioctlfd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ioctlfd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.else19

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 @kern_path(ptr noundef %path1, i32 noundef 129, ptr noundef nonnull %path) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #9
  %9 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 8, !annotation !74
  %10 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !74
  %call.i = call i32 @kern_path(ptr noundef %path1, i32 noundef 128, ptr noundef nonnull %path.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.while.cond.i_crit_edge, label %if.else.find_autofs_mount.exit_crit_edge

if.else.find_autofs_mount.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_autofs_mount.exit

if.else.while.cond.i_crit_edge:                   ; preds = %if.else
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end8.i.while.cond.i_crit_edge, %if.else.while.cond.i_crit_edge
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  %14 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %cmp.i60 = icmp eq ptr %13, %17
  br i1 %cmp.i60, label %while.body.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 9
  %18 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_sb.i, align 4
  %s_magic.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 391, i32 %21)
  %cmp2.i = icmp eq i32 %21, 391
  br i1 %cmp2.i, label %if.then3.i, label %while.body.i.if.end8.i_crit_edge

while.body.i.if.end8.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then3.i:                                       ; preds = %while.body.i
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 11
  %22 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_fsdata.i.i, align 4
  %tobool.not.i81 = icmp eq ptr %23, null
  br i1 %tobool.not.i81, label %if.then3.i.if.end8.i_crit_edge, label %test_by_type.exit

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

test_by_type.exit:                                ; preds = %if.then3.i
  %sbi.i = getelementptr inbounds %struct.autofs_info, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %sbi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sbi.i, align 4
  %type.i = getelementptr inbounds %struct.autofs_sb_info, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 4
  %and.i = and i32 %27, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.i.not, label %test_by_type.exit.if.end8.i_crit_edge, label %if.then6.i

test_by_type.exit.if.end8.i_crit_edge:            ; preds = %test_by_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %test_by_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @path_get(ptr noundef nonnull %path.i) #9
  %28 = ptrtoint ptr %path.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %path.i, align 8
  %30 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %path, align 8
  br label %while.end.i

if.end8.i:                                        ; preds = %test_by_type.exit.if.end8.i_crit_edge, %if.then3.i.if.end8.i_crit_edge, %while.body.i.if.end8.i_crit_edge
  %call9.i = call i32 @follow_up(ptr noundef nonnull %path.i) #9
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.while.end.i_crit_edge, label %if.end8.i.while.cond.i_crit_edge

if.end8.i.while.cond.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end8.i.while.end.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end8.i.while.end.i_crit_edge, %if.then6.i, %while.cond.i.while.end.i_crit_edge
  %err.0.i = phi i32 [ 0, %if.then6.i ], [ -2, %while.cond.i.while.end.i_crit_edge ], [ -2, %if.end8.i.while.end.i_crit_edge ]
  call void @path_put(ptr noundef nonnull %path.i) #9
  br label %find_autofs_mount.exit

find_autofs_mount.exit:                           ; preds = %while.end.i, %if.else.find_autofs_mount.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %while.end.i ], [ %call.i, %if.else.find_autofs_mount.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #9
  br label %if.end

if.end:                                           ; preds = %find_autofs_mount.exit, %if.then6
  %err.0 = phi i32 [ %call7, %if.then6 ], [ %retval.0.i, %find_autofs_mount.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool9.not = icmp eq i32 %err.0, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup37_crit_edge

if.end.cleanup37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

if.end11:                                         ; preds = %if.end
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_dev, align 8
  %and1.i = and i32 %36, 255
  %37 = lshr i32 %36, 12
  %shl.i = and i32 %37, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %36, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %38 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %path, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %cmp14 = icmp eq ptr %41, %32
  br i1 %cmp14, label %if.end11.if.end34.sink.split_crit_edge, label %if.end11.if.end34_crit_edge

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end11.if.end34.sink.split_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

if.else19:                                        ; preds = %lor.lhs.false
  %sb = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 11
  %42 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sb, align 4
  %s_dev20 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %s_dev20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_dev20, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i61) #9
  %46 = ptrtoint ptr %path.i61 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i61, align 8, !annotation !74
  %47 = getelementptr inbounds %struct.path, ptr %path.i61, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -1 to ptr), ptr %47, align 4, !annotation !74
  %call.i62 = call i32 @kern_path(ptr noundef %path1, i32 noundef 128, ptr noundef nonnull %path.i61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.else19.while.cond.i65_crit_edge, label %find_autofs_mount.exit80.thread

if.else19.while.cond.i65_crit_edge:               ; preds = %if.else19
  br label %while.cond.i65

find_autofs_mount.exit80.thread:                  ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i61) #9
  br label %cleanup37

while.cond.i65:                                   ; preds = %if.end8.i76.while.cond.i65_crit_edge, %if.else19.while.cond.i65_crit_edge
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %47, align 4
  %51 = ptrtoint ptr %path.i61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %path.i61, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %cmp.i64 = icmp eq ptr %50, %54
  br i1 %cmp.i64, label %while.body.i69, label %while.cond.i65.find_autofs_mount.exit80.thread91_crit_edge

while.cond.i65.find_autofs_mount.exit80.thread91_crit_edge: ; preds = %while.cond.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_autofs_mount.exit80.thread91

while.body.i69:                                   ; preds = %while.cond.i65
  %d_sb.i66 = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 9
  %55 = ptrtoint ptr %d_sb.i66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %d_sb.i66, align 4
  %s_magic.i67 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %s_magic.i67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_magic.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 391, i32 %58)
  %cmp2.i68 = icmp eq i32 %58, 391
  br i1 %cmp2.i68, label %if.then3.i72, label %while.body.i69.if.end8.i76_crit_edge

while.body.i69.if.end8.i76_crit_edge:             ; preds = %while.body.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i76

if.then3.i72:                                     ; preds = %while.body.i69
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_dev.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %45)
  %cmp.i84.not = icmp eq i32 %60, %45
  br i1 %cmp.i84.not, label %if.end24, label %if.then3.i72.if.end8.i76_crit_edge

if.then3.i72.if.end8.i76_crit_edge:               ; preds = %if.then3.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i76

if.end8.i76:                                      ; preds = %if.then3.i72.if.end8.i76_crit_edge, %while.body.i69.if.end8.i76_crit_edge
  %call9.i74 = call i32 @follow_up(ptr noundef nonnull %path.i61) #9
  %tobool10.not.i75 = icmp eq i32 %call9.i74, 0
  br i1 %tobool10.not.i75, label %if.end8.i76.find_autofs_mount.exit80.thread91_crit_edge, label %if.end8.i76.while.cond.i65_crit_edge

if.end8.i76.while.cond.i65_crit_edge:             ; preds = %if.end8.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i65

if.end8.i76.find_autofs_mount.exit80.thread91_crit_edge: ; preds = %if.end8.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_autofs_mount.exit80.thread91

find_autofs_mount.exit80.thread91:                ; preds = %if.end8.i76.find_autofs_mount.exit80.thread91_crit_edge, %while.cond.i65.find_autofs_mount.exit80.thread91_crit_edge
  call void @path_put(ptr noundef nonnull %path.i61) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i61) #9
  br label %cleanup37

if.end24:                                         ; preds = %if.then3.i72
  call void @path_get(ptr noundef nonnull %path.i61) #9
  %61 = ptrtoint ptr %path.i61 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %path.i61, align 8
  %63 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %path, align 8
  call void @path_put(ptr noundef nonnull %path.i61) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i61) #9
  %and1.i54 = and i32 %45, 255
  %64 = lshr i32 %45, 12
  %shl.i55 = and i32 %64, 1048320
  %or.i56 = or i32 %shl.i55, %and1.i54
  %and2.i57 = shl i32 %45, 12
  %shl3.i58 = and i32 %and2.i57, -1048576
  %or4.i59 = or i32 %or.i56, %shl3.i58
  %call26 = call i32 @path_has_submounts(ptr noundef nonnull %path) #9
  %call27 = call i32 @follow_down_one(ptr noundef nonnull %path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end24.if.end34_crit_edge, label %if.then29

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %d_sb31 = getelementptr inbounds %struct.dentry, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %d_sb31 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %d_sb31, align 4
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then29, %if.end11.if.end34.sink.split_crit_edge
  %.sink = phi ptr [ %68, %if.then29 ], [ %34, %if.end11.if.end34.sink.split_crit_edge ]
  %devid.1.ph = phi i32 [ %or4.i59, %if.then29 ], [ %or4.i, %if.end11.if.end34.sink.split_crit_edge ]
  %err.2.ph = phi i32 [ %call26, %if.then29 ], [ 1, %if.end11.if.end34.sink.split_crit_edge ]
  %s_magic32 = getelementptr inbounds %struct.super_block, ptr %.sink, i32 0, i32 12
  %69 = ptrtoint ptr %s_magic32 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_magic32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.end24.if.end34_crit_edge, %if.end11.if.end34_crit_edge
  %devid.1 = phi i32 [ %or4.i, %if.end11.if.end34_crit_edge ], [ %or4.i59, %if.end24.if.end34_crit_edge ], [ %devid.1.ph, %if.end34.sink.split ]
  %magic.2 = phi i32 [ 0, %if.end11.if.end34_crit_edge ], [ 0, %if.end24.if.end34_crit_edge ], [ %70, %if.end34.sink.split ]
  %err.2 = phi i32 [ 0, %if.end11.if.end34_crit_edge ], [ %call26, %if.end24.if.end34_crit_edge ], [ %err.2.ph, %if.end34.sink.split ]
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %devid.1, ptr %3, align 8
  %72 = ptrtoint ptr %magic4 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %magic.2, ptr %magic4, align 4
  call void @path_put(ptr noundef nonnull %path) #9
  br label %cleanup37

cleanup37:                                        ; preds = %if.end34, %find_autofs_mount.exit80.thread91, %find_autofs_mount.exit80.thread, %if.end.cleanup37_crit_edge
  %err.3 = phi i32 [ %err.0, %if.end.cleanup37_crit_edge ], [ %err.2, %if.end34 ], [ %call.i62, %find_autofs_mount.exit80.thread ], [ -2, %find_autofs_mount.exit80.thread91 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #9
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @close_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_wait_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_catatonic_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_expire_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_do_expire_multi(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @may_umount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_has_submounts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_down_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__UNIQUE_ID_alias235, !1, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!1 = !{!"../fs/autofs/dev-ioctl.c", i32 721, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias236, !3, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!3 = !{!"../fs/autofs/dev-ioctl.c", i32 722, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/autofs/dev-ioctl.c", i32 731, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @autofs_dev_ioctl_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @autofs_dev_ioctl_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/autofs/dev-ioctl.c", i32 716, i32 11}
!12 = !{ptr @_autofs_dev_ioctl_misc, !13, !"_autofs_dev_ioctl_misc", i1 false, i1 false}
!13 = !{!"../fs/autofs/dev-ioctl.c", i32 714, i32 26}
!14 = !{ptr @_dev_ioctl_fops, !15, !"_dev_ioctl_fops", i1 false, i1 false}
!15 = !{!"../fs/autofs/dev-ioctl.c", i32 707, i32 37}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/autofs/dev-ioctl.c", i32 630, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @_autofs_dev_ioctl._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @_autofs_dev_ioctl._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/autofs/dev-ioctl.c", i32 117, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @validate_dev_ioctl._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @validate_dev_ioctl._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/autofs/dev-ioctl.c", i32 125, i32 4}
!35 = !{ptr @validate_dev_ioctl._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @validate_dev_ioctl._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/autofs/dev-ioctl.c", i32 133, i32 4}
!39 = !{ptr @validate_dev_ioctl._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @validate_dev_ioctl._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/autofs/dev-ioctl.c", i32 62, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @check_dev_ioctl_version._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @check_dev_ioctl_version._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @lookup_dev_ioctl._ioctls, !47, !"_ioctls", i1 false, i1 false}
!47 = !{!"../fs/autofs/dev-ioctl.c", i32 568, i32 24}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../fs/autofs/dev-ioctl.c", i32 240, i32 39}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/autofs/dev-ioctl.c", i32 361, i32 4}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @autofs_dev_ioctl_setpipefd._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @autofs_dev_ioctl_setpipefd._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../fs/autofs/dev-ioctl.c", i32 445, i32 21}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../fs/autofs/dev-ioctl.c", i32 447, i32 21}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 5261364}
!71 = !{i64 5261561}
!72 = !{i64 2152746794}
!73 = !{i64 615967, i64 615984}
!74 = !{!"auto-init"}
!75 = !{!"branch_weights", i32 1, i32 2000}
