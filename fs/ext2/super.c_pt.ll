; ModuleID = '/llk/IR_all_yes/fs/ext2/super.c_pt.bc'
source_filename = "../fs/ext2/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dquot_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.quotactl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ext2_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, %struct.spinlock, i32, i32, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.spinlock, %struct.rb_root, %struct.ext2_reserve_window_node, %struct.spinlock, ptr, ptr, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ext2_reserve_window_node = type { %struct.rb_node, i32, i32, %struct.ext2_reserve_window }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext2_reserve_window = type { i32, i32 }
%struct.ext2_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, [190 x i32] }
%struct.ext2_mount_options = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.76 = type { ptr }
%struct.substring_t = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.bgl_lock = type { %struct.spinlock, [84 x i8] }
%struct.ext2_group_desc = type { i32, i32, i32, i16, i16, i16, i16, [3 x i32] }
%struct.ext2_inode_info = type { [15 x i32], i32, i32, i8, i8, i16, i32, i32, i32, i32, ptr, i32, %struct.rw_semaphore, %struct.rwlock_t, %struct.mutex, %struct.inode, %struct.list_head, [3 x ptr] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.path = type { ptr, ptr }

@ext2_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\012EXT2-fs (%s): error: %s: %pV\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ext2_error\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ext2/super.c\00", [16 x i8] zeroinitializer }, align 32
@ext2_error._entry_ptr = internal global ptr @ext2_error._entry, section ".printk_index", align 4
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"EXT2-fs: panic from previous error\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: remounting filesystem read-only\00", [57 x i8] zeroinitializer }, align 32
@ext2_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sEXT2-fs (%s): %pV\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext2_msg\00", [23 x i8] zeroinitializer }, align 32
@ext2_msg._entry_ptr = internal global ptr @ext2_msg._entry, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"warning: updating to rev %d because of new feature flag, running e2fsck is recommended\00", [41 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias274 = internal constant [19 x i8] c"ext2.alias=fs-ext2\00", section ".modinfo", align 1
@ext2_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.12, i32 1, ptr null, ptr null, ptr @ext2_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author275 = internal constant [33 x i8] c"ext2.author=Remy Card and others\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [44 x i8] c"ext2.description=Second Extended Filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [23 x i8] c"ext2.file=fs/ext2/ext2\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [17 x i8] c"ext2.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ext2__279_1648_init_ext2_fs6 = internal global ptr @init_ext2_fs, section ".initcall6.init", align 4
@__exitcall_exit_ext2_fs = internal global ptr @exit_ext2_fs, section ".exitcall.exit", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"previous I/O error to superblock detected\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ext2\00", [27 x i8] zeroinitializer }, align 32
@ext2_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sbi->s_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: unable to set blocksize\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: unable to read superblock\00", [63 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.16 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"warning: feature flags set on rev 0 fs, running e2fsck is recommended\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"error: couldn't mount because of unsupported optional features (%x)\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"error: couldn't mount RDWR because of unsupported optional features (%x)\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DAX unsupported by block device. Turning off DAX.\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported blocksize for DAX\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error: bad blocksize %d\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: couldn't readsuperblock on 2nd try\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error: magic mismatch\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: unsupported inode size: %d\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error: unsupported blocksize\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"error: fragsize %lu != blocksize %lu(not supported yet)\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: #blocks per group too big: %lu\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: #fragments per group too big: %lu\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: #inodes per group too big: %lu\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error: not enough memory\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: unable to read group descriptors\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"group descriptors corrupted\00", [36 x i8] zeroinitializer }, align 32
@ext2_fill_super.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sbi->s_next_gen_lock\00", [42 x i8] zeroinitializer }, align 32
@ext2_fill_super.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&sbi->s_rsv_window_lock\00", [40 x i8] zeroinitializer }, align 32
@ext2_fill_super.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ext2_fill_super.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ext2_fill_super.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error: insufficient memory\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create ea_block_cache\00", [32 x i8] zeroinitializer }, align 32
@ext2_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @ext2_alloc_inode, ptr null, ptr @ext2_free_in_core_inode, ptr null, ptr @ext2_write_inode, ptr null, ptr @ext2_evict_inode, ptr @ext2_put_super, ptr @ext2_sync_fs, ptr null, ptr @ext2_freeze, ptr null, ptr @ext2_unfreeze, ptr @ext2_statfs, ptr @ext2_remount, ptr null, ptr @ext2_show_options, ptr null, ptr null, ptr null, ptr @ext2_quota_read, ptr @ext2_quota_write, ptr @ext2_get_dquots, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ext2_export_ops = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @ext2_fh_to_dentry, ptr @ext2_fh_to_parent, ptr null, ptr @ext2_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@ext2_xattr_handlers = external dso_local global [0 x ptr], align 4
@dquot_operations = external dso_local constant %struct.dquot_operations, align 4
@ext2_quotactl_ops = internal constant { %struct.quotactl_ops, [52 x i8] } { %struct.quotactl_ops { ptr @ext2_quota_on, ptr @ext2_quota_off, ptr null, ptr null, ptr @dquot_quota_sync, ptr @dquot_set_dqinfo, ptr @dquot_get_dqblk, ptr @dquot_get_next_dqblk, ptr @dquot_set_dqblk, ptr @dquot_get_state, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: corrupt root inode, run e2fsck\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error: get root inode failed\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"warning: mounting ext3 filesystem as ext2\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error: can't find an ext2 filesystem on dev %s.\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sb=\00", [28 x i8] zeroinitializer }, align 32
@get_sb_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"EXT2-fs: Invalid sb specification: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_sb_block\00", [19 x i8] zeroinitializer }, align 32
@get_sb_block._entry_ptr = internal global ptr @get_sb_block._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [30 x %struct.match_token], [48 x i8] } { [30 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.58 }, %struct.match_token { i32 1, ptr @.str.59 }, %struct.match_token { i32 2, ptr @.str.60 }, %struct.match_token { i32 2, ptr @.str.61 }, %struct.match_token { i32 3, ptr @.str.62 }, %struct.match_token { i32 3, ptr @.str.63 }, %struct.match_token { i32 4, ptr @.str.64 }, %struct.match_token { i32 5, ptr @.str.65 }, %struct.match_token { i32 6, ptr @.str.66 }, %struct.match_token { i32 7, ptr @.str.67 }, %struct.match_token { i32 8, ptr @.str.68 }, %struct.match_token { i32 9, ptr @.str.69 }, %struct.match_token { i32 10, ptr @.str.70 }, %struct.match_token { i32 11, ptr @.str.71 }, %struct.match_token { i32 12, ptr @.str.72 }, %struct.match_token { i32 13, ptr @.str.73 }, %struct.match_token { i32 14, ptr @.str.74 }, %struct.match_token { i32 15, ptr @.str.75 }, %struct.match_token { i32 16, ptr @.str.76 }, %struct.match_token { i32 17, ptr @.str.77 }, %struct.match_token { i32 18, ptr @.str.78 }, %struct.match_token { i32 19, ptr @.str.79 }, %struct.match_token { i32 20, ptr @.str.80 }, %struct.match_token { i32 25, ptr @.str.81 }, %struct.match_token { i32 21, ptr @.str.82 }, %struct.match_token { i32 23, ptr @.str.83 }, %struct.match_token { i32 24, ptr @.str.84 }, %struct.match_token { i32 26, ptr @.str.85 }, %struct.match_token { i32 27, ptr @.str.86 }, %struct.match_token { i32 22, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid uid value %d\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid gid value %d\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"use dax instead of xip\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dax option not supported\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reservations ON\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reservations OFF\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bsddf\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"minixdf\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"grpid\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bsdgroups\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nogrpid\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysvgroups\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resgid=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resuid=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sb=%u\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"errors=continue\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"errors=panic\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"errors=remount-ro\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nouid32\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"oldalloc\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"orlov\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nobh\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"user_xattr\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nouser_xattr\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"noacl\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xip\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dax\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"grpquota\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noquota\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quota\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usrquota\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reservation\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noreservation\00", [18 x i8] zeroinitializer }, align 32
@bgl_lock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&bgl->locks[i].lock\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ext2_check_descriptors\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Block bitmap for group %d not in group (block %lu)!\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Inode bitmap for group %d not in group (block %lu)!\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Inode table for group %d not in group (block %lu)!\00", [45 x i8] zeroinitializer }, align 32
@ext2_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"warning: refusing change of dax flag with busy inodes while remounting\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"warning: couldn't remount RDWR because of unsupported optional features (%x).\00", [50 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",sb=%lu\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",minixdf\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",grpid\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",nogrpid\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",resuid=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",resgid=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",errors=remount-ro\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",errors=continue\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",errors=panic\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",nouid32\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",debug\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",oldalloc\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",user_xattr\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",nouser_xattr\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",acl\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",noacl\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",nobh\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",usrquota\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",grpquota\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",xip\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",dax\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",noreservation\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"error: revision level too high, forcing read-only mode\00", [41 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"warning: mounting unchecked fs, running e2fsck is recommended\00", [34 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"warning: mounting fs with errors, running e2fsck is recommended\00", [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"warning: maximal mount count reached, running e2fsck is recommended\00", [60 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"warning: checktime reached, running e2fsck is recommended\00", [38 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s, %s, bs=%lu, fs=%lu, gc=%lu, bpg=%lu, ipg=%lu, mo=%04lx]\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.5b\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"95/08/09\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ext2_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ei->i_meta_lock\00", [47 x i8] zeroinitializer }, align 32
@init_once.__key.128 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ei->xattr_sem\00", [17 x i8] zeroinitializer }, align 32
@init_once.__key.130 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ei->truncate_mutex\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1024]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 768]
@__sancov_gen_cov_switch_values.134 = internal global [29 x i64] [i64 27, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 23, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 768]
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 70, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 76, i32 9 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 78, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 79, i32 9 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 95, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 110, i32 15 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 111, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant [13 x i8] c"ext2_fs_type\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1614, i32 32 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1223, i32 16 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1224, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1616, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 836, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 848, i32 26 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 864, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 924, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 933, i32 26 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 939, i32 26 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 950, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 953, i32 27 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 964, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 972, i32 27 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 979, i32 27 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 999, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1034, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1040, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1048, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1054, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1060, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1077, i32 26 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1094, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1099, i32 26 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1104, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1107, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1121, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1124, i32 9 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1128, i32 9 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1133, i32 26 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1141, i32 26 }
@___asan_gen_.274 = private unnamed_addr constant [10 x i8] c"ext2_sops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 343, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant [16 x i8] c"ext2_export_ops\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 402, i32 39 }
@___asan_gen_.280 = private unnamed_addr constant [18 x i8] c"ext2_quotactl_ops\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 331, i32 34 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1165, i32 26 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1171, i32 26 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1177, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1186, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 413, i32 35 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 418, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 482, i32 32 }
@___asan_gen_.310 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 437, i32 28 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 506, i32 28 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 517, i32 28 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 585, i32 17 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 585, i32 28 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 594, i32 28 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 618, i32 28 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 622, i32 28 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 438, i32 15 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 439, i32 17 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 440, i32 14 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 441, i32 14 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 442, i32 16 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 443, i32 16 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 444, i32 15 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 445, i32 15 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 446, i32 11 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 447, i32 17 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 448, i32 18 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 449, i32 15 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 450, i32 16 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 451, i32 14 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 452, i32 17 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 453, i32 14 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 454, i32 13 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 455, i32 19 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 456, i32 21 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 457, i32 12 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 458, i32 14 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 459, i32 12 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 460, i32 12 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 461, i32 17 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 462, i32 15 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 463, i32 14 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 464, i32 17 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 465, i32 20 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 466, i32 22 }
@___asan_gen_.425 = private unnamed_addr constant [35 x i8] c"../include/linux/blockgroup_lock.h\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 32, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 699, i32 20 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 700, i32 9 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 709, i32 9 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 719, i32 9 }
@___asan_gen_.439 = private unnamed_addr constant [18 x i8] c"ext2_inode_cachep\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 178, i32 28 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1333, i32 30 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1363, i32 5 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 247, i32 19 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 249, i32 17 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 251, i32 17 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 253, i32 17 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 256, i32 19 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 261, i32 19 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 269, i32 18 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 273, i32 17 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 275, i32 17 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 277, i32 17 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 279, i32 17 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 281, i32 17 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 285, i32 17 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 288, i32 17 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 294, i32 17 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 296, i32 17 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 300, i32 17 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 303, i32 17 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 306, i32 17 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 309, i32 17 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 312, i32 17 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 315, i32 17 }
@___asan_gen_.515 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 366, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 271, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 642, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 650, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 654, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 660, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 667, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 673, i32 27 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 675, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 675, i32 20 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 214, i32 49 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 204, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 206, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.562 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.563 = private constant [19 x i8] c"../fs/ext2/super.c\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 208, i32 2 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @__UNIQUE_ID_alias274, ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_exit_ext2_fs, ptr @__initcall__kmod_ext2__279_1648_init_ext2_fs6, ptr @exit_ext2_fs, ptr @ext2_error._entry, ptr @ext2_error._entry_ptr, ptr @ext2_msg._entry, ptr @ext2_msg._entry_ptr, ptr @get_sb_block._entry, ptr @get_sb_block._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ext2_fs_type, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ext2_fill_super.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ext2_fill_super.__key.33, ptr @.str.34, ptr @ext2_fill_super.__key.35, ptr @.str.36, ptr @ext2_fill_super.__key.37, ptr @ext2_fill_super.__key.38, ptr @ext2_fill_super.__key.39, ptr @.str.40, ptr @.str.41, ptr @ext2_sops, ptr @ext2_export_ops, ptr @ext2_quotactl_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @tokens, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @bgl_lock_init.__key, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @ext2_inode_cachep, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @init_once.__key, ptr @.str.127, ptr @init_once.__key.128, ptr @.str.129, ptr @init_once.__key.130, ptr @.str.131], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_fill_super.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_fill_super.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_fill_super.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_fill_super.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_fill_super.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_quotactl_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_sb_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgl_lock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_error(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #17
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #17
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !303
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_es, align 4
  %s_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock) #17
  %s_mount_state = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_mount_state, align 4
  %10 = or i16 %9, 2
  store i16 %10, ptr %s_mount_state, align 4
  %s_state = getelementptr inbounds %struct.ext2_super_block, ptr %7, i32 0, i32 16
  %11 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %s_state, align 2
  %13 = or i16 %12, 512
  store i16 %13, ptr %s_state, align 2
  tail call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  tail call void @ext2_sync_super(ptr noundef %sb, ptr noundef %7, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %14 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fmt, ptr %vaf, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id, ptr noundef %function, ptr noundef nonnull %vaf) #20
  call void @llvm.va_end(ptr nonnull %args)
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #21
  unreachable

if.end11:                                         ; preds = %if.end
  %20 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_flags.i, align 4
  %and.i34 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.i35 = icmp ne i32 %and.i34, 0
  %and15 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool.i35, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.end11.if.end19_crit_edge, label %if.then17

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  %22 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_flags.i, align 4
  %or18 = or i32 %23, 1
  store i32 %or18, ptr %s_flags.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end11.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_sync_super(ptr noundef %sb, ptr nocapture noundef writeonly %es, i32 noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_sbh.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_sbh.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.ext2_clear_super_error.exit_crit_edge, label %if.then.i

entry.ext2_clear_super_error.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ext2_clear_super_error.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #17
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %3) #17
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %3, align 4
  %and1.i.i5.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i5.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i5.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.ext2_clear_super_error.exit_crit_edge

if.then.i.ext2_clear_super_error.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ext2_clear_super_error.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 0, ptr noundef %3) #17
  br label %ext2_clear_super_error.exit

ext2_clear_super_error.exit:                      ; preds = %if.then.i.i, %if.then.i.ext2_clear_super_error.exit_crit_edge, %entry.ext2_clear_super_error.exit_crit_edge
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %10, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock) #17
  %call1 = tail call i32 @ext2_count_free_blocks(ptr noundef %sb) #17
  %11 = tail call i32 @llvm.bswap.i32(i32 %call1)
  %s_free_blocks_count = getelementptr inbounds %struct.ext2_super_block, ptr %es, i32 0, i32 3
  %12 = ptrtoint ptr %s_free_blocks_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %s_free_blocks_count, align 4
  %call2 = tail call i32 @ext2_count_free_inodes(ptr noundef %sb) #17
  %13 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %s_free_inodes_count = getelementptr inbounds %struct.ext2_super_block, ptr %es, i32 0, i32 4
  %14 = ptrtoint ptr %s_free_inodes_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %s_free_inodes_count, align 4
  %call3 = tail call i64 @ktime_get_real_seconds() #17
  %conv = trunc i64 %call3 to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %s_wtime = getelementptr inbounds %struct.ext2_super_block, ptr %es, i32 0, i32 12
  %16 = ptrtoint ptr %s_wtime to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %s_wtime, align 4
  %17 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_lock5 = getelementptr inbounds %struct.ext2_sb_info, ptr %18, i32 0, i32 36
  tail call void @_raw_spin_unlock(ptr noundef %s_lock5) #17
  %19 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_sbh = getelementptr inbounds %struct.ext2_sb_info, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_sbh, align 8
  tail call void @mark_buffer_dirty(ptr noundef %22) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %ext2_clear_super_error.exit.if.end_crit_edge, label %if.then

ext2_clear_super_error.exit.if.end_crit_edge:     ; preds = %ext2_clear_super_error.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %ext2_clear_super_error.exit
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_sbh8 = getelementptr inbounds %struct.ext2_sb_info, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %s_sbh8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_sbh8, align 8
  %call9 = tail call i32 @sync_dirty_buffer(ptr noundef %26) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %ext2_clear_super_error.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_msg(ptr noundef %sb, ptr noundef %prefix, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #17
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #17
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !303
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %prefix, ptr noundef %s_id, ptr noundef nonnull %vaf) #20
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_update_dynamic_rev(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %s_rev_level = getelementptr inbounds %struct.ext2_super_block, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %s_rev_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_rev_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1)
  %s_first_ino = getelementptr inbounds %struct.ext2_super_block, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 184549376, ptr %s_first_ino, align 4
  %s_inode_size = getelementptr inbounds %struct.ext2_super_block, ptr %3, i32 0, i32 26
  %7 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -32768, ptr %s_inode_size, align 4
  %8 = ptrtoint ptr %s_rev_level to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %s_rev_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_count_free_blocks(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_count_free_inodes(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_ext2_fs() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @ext2_fs_type) #17
  tail call void @rcu_barrier() #17
  %0 = load ptr, ptr @ext2_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ext2_fs() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_inodecache() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @ext2_fs_type) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rcu_barrier() #17
  %0 = load ptr, ptr @ext2_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ext2_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @ext2_fill_super) #17
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %options.i = alloca ptr, align 4
  %opts = alloca %struct.ext2_mount_options, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.i) #17
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %entry.get_sb_block.exit_crit_edge, label %lor.lhs.false.i

entry.get_sb_block.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_sb_block.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call i32 @strncmp(ptr noundef nonnull %data, ptr noundef nonnull dereferenceable(4) @.str.46, i32 noundef 3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.get_sb_block.exit_crit_edge

lor.lhs.false.i.get_sb_block.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_sb_block.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %data, i32 3
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr.i, ptr %options.i, align 4
  %call1.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef nonnull %options.i, i32 noundef 0) #17
  %1 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %options.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %do.end.i [
    i8 44, label %if.then12.i
    i8 0, label %if.end.i.if.end13.i_crit_edge
  ]

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull %data) #20
  br label %get_sb_block.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr.i = getelementptr i8, ptr %2, i32 1
  %6 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %incdec.ptr.i, ptr %options.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end.i.if.end13.i_crit_edge
  %7 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %options.i, align 4
  br label %get_sb_block.exit

get_sb_block.exit:                                ; preds = %if.end13.i, %do.end.i, %lor.lhs.false.i.get_sb_block.exit_crit_edge, %entry.get_sb_block.exit_crit_edge
  %data.addr.0 = phi ptr [ null, %entry.get_sb_block.exit_crit_edge ], [ %data, %do.end.i ], [ %8, %if.end13.i ], [ %data, %lor.lhs.false.i.get_sb_block.exit_crit_edge ]
  %retval.0.i = phi i32 [ 1, %entry.get_sb_block.exit_crit_edge ], [ 1, %do.end.i ], [ %call1.i, %if.end13.i ], [ 1, %lor.lhs.false.i.get_sb_block.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %opts) #17
  %9 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %opts, align 4, !annotation !303
  %10 = getelementptr inbounds %struct.ext2_mount_options, ptr %opts, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !303
  %12 = getelementptr inbounds %struct.ext2_mount_options, ptr %opts, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !303
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 512) #23
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %get_sb_block.exit.cleanup_crit_edge, label %if.end

get_sb_block.exit.cleanup_crit_edge:              ; preds = %get_sb_block.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %get_sb_block.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i733 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 2048) #23
  %s_blockgroup_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 32
  %16 = ptrtoint ptr %s_blockgroup_lock to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i733, ptr %s_blockgroup_lock, align 8
  %tobool4.not = icmp eq ptr %call7.i.i733, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_sb_block = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %s_sb_block to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %s_sb_block, align 8
  %s_daxdev = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 38
  %19 = ptrtoint ptr %s_daxdev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %s_daxdev, align 8
  %s_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 36
  call void @__raw_spin_lock_init(ptr noundef %s_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ext2_fill_super.__key, i16 noundef signext 3) #17
  %call9 = call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 1024) #17
  %20 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %call9, label %if.then13 [
    i32 0, label %if.then11
    i32 1024, label %if.end6.if.end15_crit_edge
  ]

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14)
  br label %failed_sbi

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %mul = shl i32 %retval.0.i, 10
  %mul.frozen = freeze i32 %mul
  %div = udiv i32 %mul.frozen, %call9
  %21 = mul i32 %div, %call9
  %rem.decomposed = sub i32 %mul.frozen, %21
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end6.if.end15_crit_edge
  %logic_sb_block.0 = phi i32 [ %div, %if.then13 ], [ %retval.0.i, %if.end6.if.end15_crit_edge ]
  %offset.0 = phi i32 [ %rem.decomposed, %if.then13 ], [ 0, %if.end6.if.end15_crit_edge ]
  %conv = zext i32 %logic_sb_block.0 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %22 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %24 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize.i, align 16
  %call.i734 = call ptr @__bread_gfp(ptr noundef %23, i64 noundef %conv, i32 noundef %25, i32 noundef 8) #17
  %tobool17.not = icmp eq ptr %call.i734, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15)
  br label %failed_sbi

if.end19:                                         ; preds = %if.end15
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i734, i32 0, i32 5
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 %offset.0
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 13
  %28 = ptrtoint ptr %s_es to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %s_es, align 4
  %s_magic = getelementptr inbounds %struct.ext2_super_block, ptr %add.ptr, i32 0, i32 15
  %29 = ptrtoint ptr %s_magic to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %s_magic, align 4
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %conv20 = zext i16 %31 to i32
  %s_magic21 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %32 = ptrtoint ptr %s_magic21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv20, ptr %s_magic21, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21487, i16 %30)
  %cmp23.not = icmp eq i16 %30, 21487
  br i1 %cmp23.not, label %if.end26, label %if.end19.cantfind_ext2_crit_edge

if.end19.cantfind_ext2_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cantfind_ext2

if.end26:                                         ; preds = %if.end19
  %33 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %opts, align 4
  %s_default_mount_opts = getelementptr inbounds %struct.ext2_super_block, ptr %add.ptr, i32 0, i32 46
  %34 = ptrtoint ptr %s_default_mount_opts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_default_mount_opts, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %and = shl i32 %36, 3
  %37 = and i32 %and, 8
  %and31 = shl i32 %36, 1
  %38 = and i32 %and31, 4
  %39 = or i32 %38, %37
  %40 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %opts, align 4
  %and37 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end26.if.end42_crit_edge, label %if.then39

if.end26.if.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.then39:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %opts, align 4
  %or41 = or i32 %42, 512
  store i32 %or41, ptr %opts, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end26.if.end42_crit_edge
  %and43 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end48_crit_edge, label %if.then45

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %opts, align 4
  %or47 = or i32 %44, 16384
  store i32 %or47, ptr %opts, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42.if.end48_crit_edge
  %and49 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end54_crit_edge, label %if.then51

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %opts, align 4
  %or53 = or i32 %46, 32768
  store i32 %or53, ptr %opts, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48.if.end54_crit_edge
  %s_errors = getelementptr inbounds %struct.ext2_super_block, ptr %add.ptr, i32 0, i32 17
  %47 = ptrtoint ptr %s_errors to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %s_errors, align 4
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %48, label %if.else71 [
    i16 768, label %if.then59
    i16 256, label %if.then68
  ]

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %opts, align 4
  %or61 = or i32 %51, 64
  store i32 %or61, ptr %opts, align 4
  br label %if.end75

if.then68:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %opts, align 4
  %or70 = or i32 %53, 16
  store i32 %or70, ptr %opts, align 4
  br label %if.end75

if.else71:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %opts, align 4
  %or73 = or i32 %55, 32
  store i32 %or73, ptr %opts, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else71, %if.then68, %if.then59
  %s_def_resuid = getelementptr inbounds %struct.ext2_super_block, ptr %add.ptr, i32 0, i32 23
  %56 = ptrtoint ptr %s_def_resuid to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %s_def_resuid, align 4
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  %conv76 = zext i16 %58 to i32
  %call77 = call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %conv76) #17
  %59 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call77, ptr %10, align 4
  %s_def_resgid = getelementptr inbounds %struct.ext2_super_block, ptr %add.ptr, i32 0, i32 24
  %60 = ptrtoint ptr %s_def_resgid to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %s_def_resgid, align 2
  %62 = call i16 @llvm.bswap.i16(i16 %61)
  %conv79 = zext i16 %62 to i32
  %call80 = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %conv79) #17
  %63 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call80, ptr %12, align 4
  %64 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %opts, align 4
  %or83 = or i32 %65, 524288
  store i32 %or83, ptr %opts, align 4
  %call84 = call fastcc i32 @parse_options(ptr noundef %data.addr.0, ptr noundef %sb, ptr noundef nonnull %opts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end75.brelse.exit778_crit_edge, label %if.end87

if.end75.brelse.exit778_crit_edge:                ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit778

if.end87:                                         ; preds = %if.end75
  %66 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %opts, align 4
  %s_mount_opt89 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 15
  %68 = ptrtoint ptr %s_mount_opt89 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %s_mount_opt89, align 4
  %s_resuid90 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 17
  %69 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %10, align 4
  %71 = ptrtoint ptr %s_resuid90 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %s_resuid90, align 4
  %s_resgid92 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 18
  %72 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %12, align 4
  %74 = ptrtoint ptr %s_resgid92 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %s_resgid92, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %75 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_flags, align 4
  %and94 = and i32 %76, -65537
  %77 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info, align 16
  %s_mount_opt96 = getelementptr inbounds %struct.ext2_sb_info, ptr %78, i32 0, i32 15
  %79 = ptrtoint ptr %s_mount_opt96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_mount_opt96, align 4
  %and97 = shl i32 %80, 1
  %81 = and i32 %and97, 65536
  %or99 = or i32 %81, %and94
  store i32 %or99, ptr %s_flags, align 4
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 11
  %82 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_iflags, align 8
  %or101 = or i32 %83, 1
  store i32 %or101, ptr %s_iflags, align 8
  %s_rev_level = getelementptr inbounds %struct.ext2_super_block, ptr %add.ptr, i32 0, i32 22
  %84 = ptrtoint ptr %s_rev_level to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_rev_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp102 = icmp eq i32 %85, 0
  br i1 %cmp102, label %land.lhs.true, label %if.end87.if.end118_crit_edge

if.end87.if.end118_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end118

land.lhs.true:                                    ; preds = %if.end87
  %s_es105 = getelementptr inbounds %struct.ext2_sb_info, ptr %78, i32 0, i32 13
  %86 = ptrtoint ptr %s_es105 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_es105, align 4
  %s_feature_compat = getelementptr inbounds %struct.ext2_super_block, ptr %87, i32 0, i32 28
  %88 = ptrtoint ptr %s_feature_compat to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_feature_compat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool107.not = icmp eq i32 %89, 0
  br i1 %tobool107.not, label %lor.lhs.false, label %land.lhs.true.if.then117_crit_edge

land.lhs.true.if.then117_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then117

lor.lhs.false:                                    ; preds = %land.lhs.true
  %s_feature_ro_compat = getelementptr inbounds %struct.ext2_super_block, ptr %87, i32 0, i32 30
  %90 = ptrtoint ptr %s_feature_ro_compat to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_feature_ro_compat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool111.not = icmp eq i32 %91, 0
  br i1 %tobool111.not, label %lor.lhs.false112, label %lor.lhs.false.if.then117_crit_edge

lor.lhs.false.if.then117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then117

lor.lhs.false112:                                 ; preds = %lor.lhs.false
  %s_feature_incompat = getelementptr inbounds %struct.ext2_super_block, ptr %87, i32 0, i32 29
  %92 = ptrtoint ptr %s_feature_incompat to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_feature_incompat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool116.not = icmp eq i32 %93, 0
  br i1 %tobool116.not, label %lor.lhs.false112.if.end118_crit_edge, label %lor.lhs.false112.if.then117_crit_edge

lor.lhs.false112.if.then117_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then117

lor.lhs.false112.if.end118_crit_edge:             ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end118

if.then117:                                       ; preds = %lor.lhs.false112.if.then117_crit_edge, %lor.lhs.false.if.then117_crit_edge, %land.lhs.true.if.then117_crit_edge
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.16)
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %lor.lhs.false112.if.end118_crit_edge, %if.end87.if.end118_crit_edge
  %94 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info, align 16
  %s_es120 = getelementptr inbounds %struct.ext2_sb_info, ptr %95, i32 0, i32 13
  %96 = ptrtoint ptr %s_es120 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_es120, align 4
  %s_feature_incompat121 = getelementptr inbounds %struct.ext2_super_block, ptr %97, i32 0, i32 29
  %98 = ptrtoint ptr %s_feature_incompat121 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %s_feature_incompat121, align 4
  %and122 = and i32 %99, -301989889
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end125, label %if.then124

if.then124:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  %100 = call i32 @llvm.bswap.i32(i32 %and122)
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, i32 noundef %100)
  br label %brelse.exit778

if.end125:                                        ; preds = %if.end118
  %101 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %s_flags, align 4
  %and.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true127, label %if.end125.if.end134_crit_edge

if.end125.if.end134_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end134

land.lhs.true127:                                 ; preds = %if.end125
  %s_feature_ro_compat130 = getelementptr inbounds %struct.ext2_super_block, ptr %97, i32 0, i32 30
  %103 = ptrtoint ptr %s_feature_ro_compat130 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_feature_ro_compat130, align 4
  %and131 = and i32 %104, -117440513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %land.lhs.true127.if.end134_crit_edge, label %if.then133

land.lhs.true127.if.end134_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end134

if.then133:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #19
  %105 = call i32 @llvm.bswap.i32(i32 %and131)
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18, i32 noundef %105)
  br label %brelse.exit778

if.end134:                                        ; preds = %land.lhs.true127.if.end134_crit_edge, %if.end125.if.end134_crit_edge
  %106 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_es, align 4
  %s_log_block_size = getelementptr inbounds %struct.ext2_super_block, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %s_log_block_size to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_log_block_size, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  %shl = shl i32 1024, %110
  %s_mount_opt137 = getelementptr inbounds %struct.ext2_sb_info, ptr %95, i32 0, i32 15
  %111 = ptrtoint ptr %s_mount_opt137 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %s_mount_opt137, align 4
  %and138 = and i32 %112, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end134.if.end154_crit_edge, label %if.then140

if.end134.if.end154_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

if.then140:                                       ; preds = %if.end134
  %113 = ptrtoint ptr %s_daxdev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s_daxdev, align 8
  %tobool142.not = icmp eq ptr %114, null
  br i1 %tobool142.not, label %if.then140.if.end154.sink.split_crit_edge, label %if.else146

if.then140.if.end154.sink.split_crit_edge:        ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154.sink.split

if.else146:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %109)
  %cmp147.not = icmp eq i32 %109, 33554432
  br i1 %cmp147.not, label %if.else146.if.end154_crit_edge, label %if.else146.if.end154.sink.split_crit_edge

if.else146.if.end154.sink.split_crit_edge:        ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154.sink.split

if.else146.if.end154_crit_edge:                   ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

if.end154.sink.split:                             ; preds = %if.else146.if.end154.sink.split_crit_edge, %if.then140.if.end154.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.19, %if.then140.if.end154.sink.split_crit_edge ], [ @.str.20, %if.else146.if.end154.sink.split_crit_edge ]
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull %.str.19.sink)
  %115 = ptrtoint ptr %s_mount_opt89 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %s_mount_opt89, align 4
  %and145 = and i32 %116, -1048577
  store i32 %and145, ptr %s_mount_opt89, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.end154.sink.split, %if.else146.if.end154_crit_edge, %if.end134.if.end154_crit_edge
  %117 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_blocksize.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %shl)
  %cmp155.not = icmp eq i32 %118, %shl
  br i1 %cmp155.not, label %if.end154.if.end180_crit_edge, label %brelse.exit

if.end154.if.end180_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end180

brelse.exit:                                      ; preds = %if.end154
  call void @__brelse(ptr noundef nonnull %call.i734) #17
  %call158 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %shl) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.then160, label %if.end161

if.then160:                                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.21, i32 noundef %shl)
  br label %failed_sbi

if.end161:                                        ; preds = %brelse.exit
  %mul162 = shl i32 %retval.0.i, 10
  %119 = add i32 %110, 10
  %div163732 = lshr i32 %mul162, %119
  %conv166 = zext i32 %div163732 to i64
  %120 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %s_bdev.i, align 4
  %122 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_blocksize.i, align 16
  %call.i745 = call ptr @__bread_gfp(ptr noundef %121, i64 noundef %conv166, i32 noundef %123, i32 noundef 8) #17
  %tobool168.not = icmp eq ptr %call.i745, null
  br i1 %tobool168.not, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22)
  br label %failed_sbi

if.end170:                                        ; preds = %if.end161
  %124 = add i32 %shl, -1
  %rem165 = and i32 %124, %mul162
  %b_data171 = getelementptr inbounds %struct.buffer_head, ptr %call.i745, i32 0, i32 5
  %125 = ptrtoint ptr %b_data171 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %b_data171, align 4
  %add.ptr172 = getelementptr i8, ptr %126, i32 %rem165
  %127 = ptrtoint ptr %s_es to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr172, ptr %s_es, align 4
  %s_magic174 = getelementptr inbounds %struct.ext2_super_block, ptr %add.ptr172, i32 0, i32 15
  %128 = ptrtoint ptr %s_magic174 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %s_magic174, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21487, i16 %129)
  %cmp176.not = icmp eq i16 %129, 21487
  br i1 %cmp176.not, label %if.end170.if.end180_crit_edge, label %if.then178

if.end170.if.end180_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end180

if.then178:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.23)
  br label %brelse.exit778

if.end180:                                        ; preds = %if.end170.if.end180_crit_edge, %if.end154.if.end180_crit_edge
  %logic_sb_block.1 = phi i32 [ %div163732, %if.end170.if.end180_crit_edge ], [ %logic_sb_block.0, %if.end154.if.end180_crit_edge ]
  %es.0 = phi ptr [ %add.ptr172, %if.end170.if.end180_crit_edge ], [ %add.ptr, %if.end154.if.end180_crit_edge ]
  %bh.0 = phi ptr [ %call.i745, %if.end170.if.end180_crit_edge ], [ %call.i734, %if.end154.if.end180_crit_edge ]
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %130 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %s_blocksize_bits, align 4
  %conv181 = zext i8 %131 to i32
  %call182 = call fastcc i64 @ext2_max_size(i32 noundef %conv181)
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %132 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %call182, ptr %s_maxbytes, align 8
  %s_max_links = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 41
  %133 = ptrtoint ptr %s_max_links to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 32000, ptr %s_max_links, align 128
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %134 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 -2147483648, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %135 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 2147483647, ptr %s_time_max, align 64
  %s_rev_level183 = getelementptr inbounds %struct.ext2_super_block, ptr %es.0, i32 0, i32 22
  %136 = ptrtoint ptr %s_rev_level183 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %s_rev_level183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp184 = icmp eq i32 %137, 0
  br i1 %cmp184, label %if.then186, label %if.else187

if.then186:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #19
  %s_inode_size = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 23
  %138 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 128, ptr %s_inode_size, align 8
  %s_first_ino = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 24
  %139 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 11, ptr %s_first_ino, align 4
  br label %if.end206

if.else187:                                       ; preds = %if.end180
  %s_inode_size188 = getelementptr inbounds %struct.ext2_super_block, ptr %es.0, i32 0, i32 26
  %140 = ptrtoint ptr %s_inode_size188 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %s_inode_size188, align 4
  %142 = call i16 @llvm.bswap.i16(i16 %141)
  %conv189 = zext i16 %142 to i32
  %s_inode_size190 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 23
  %143 = ptrtoint ptr %s_inode_size190 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv189, ptr %s_inode_size190, align 8
  %s_first_ino191 = getelementptr inbounds %struct.ext2_super_block, ptr %es.0, i32 0, i32 25
  %144 = ptrtoint ptr %s_first_ino191 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %s_first_ino191, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %145)
  %s_first_ino192 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 24
  %147 = ptrtoint ptr %s_first_ino192 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %s_first_ino192, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %142)
  %cmp194 = icmp ult i16 %142, 128
  br i1 %cmp194, label %if.else187.if.then203_crit_edge, label %lor.lhs.false196

if.else187.if.then203_crit_edge:                  ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then203

lor.lhs.false196:                                 ; preds = %if.else187
  %148 = call i32 @llvm.ctpop.i32(i32 %conv189) #17, !range !304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp1.i = icmp ugt i32 %148, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv189)
  %cmp201 = icmp slt i32 %shl, %conv189
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp201
  br i1 %or.cond, label %lor.lhs.false196.if.then203_crit_edge, label %lor.lhs.false196.if.end206_crit_edge

lor.lhs.false196.if.end206_crit_edge:             ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end206

lor.lhs.false196.if.then203_crit_edge:            ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then203

if.then203:                                       ; preds = %lor.lhs.false196.if.then203_crit_edge, %if.else187.if.then203_crit_edge
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.24, i32 noundef %conv189)
  br label %brelse.exit778

if.end206:                                        ; preds = %lor.lhs.false196.if.end206_crit_edge, %if.then186
  %s_log_frag_size = getelementptr inbounds %struct.ext2_super_block, ptr %es.0, i32 0, i32 7
  %149 = ptrtoint ptr %s_log_frag_size to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %s_log_frag_size, align 4
  %151 = call i32 @llvm.bswap.i32(i32 %150)
  %shl207 = shl i32 1024, %151
  %152 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %shl207, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %151)
  %cmp209 = icmp ugt i32 %151, 21
  br i1 %cmp209, label %if.end206.cantfind_ext2_crit_edge, label %if.end212

if.end206.cantfind_ext2_crit_edge:                ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #19
  br label %cantfind_ext2

if.end212:                                        ; preds = %if.end206
  %153 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %s_blocksize.i, align 16
  %155 = add nuw nsw i32 %151, 10
  %div215729 = lshr i32 %154, %155
  %s_frags_per_block = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 1
  %156 = ptrtoint ptr %s_frags_per_block to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %div215729, ptr %s_frags_per_block, align 4
  %s_blocks_per_group = getelementptr inbounds %struct.ext2_super_block, ptr %es.0, i32 0, i32 8
  %157 = ptrtoint ptr %s_blocks_per_group to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %s_blocks_per_group, align 4
  %159 = call i32 @llvm.bswap.i32(i32 %158)
  %s_blocks_per_group216 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 4
  %160 = ptrtoint ptr %s_blocks_per_group216 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %s_blocks_per_group216, align 8
  %s_frags_per_group = getelementptr inbounds %struct.ext2_super_block, ptr %es.0, i32 0, i32 9
  %161 = ptrtoint ptr %s_frags_per_group to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %s_frags_per_group, align 4
  %163 = call i32 @llvm.bswap.i32(i32 %162)
  %s_frags_per_group217 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 3
  %164 = ptrtoint ptr %s_frags_per_group217 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %s_frags_per_group217, align 4
  %s_inodes_per_group = getelementptr inbounds %struct.ext2_super_block, ptr %es.0, i32 0, i32 10
  %165 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %s_inodes_per_group, align 4
  %167 = call i32 @llvm.bswap.i32(i32 %166)
  %s_inodes_per_group218 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 5
  %168 = ptrtoint ptr %s_inodes_per_group218 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %s_inodes_per_group218, align 4
  %169 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %s_fs_info, align 16
  %s_inode_size221 = getelementptr inbounds %struct.ext2_sb_info, ptr %170, i32 0, i32 23
  %171 = ptrtoint ptr %s_inode_size221 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %s_inode_size221, align 8
  %div222 = udiv i32 %154, %172
  %s_inodes_per_block = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 2
  %173 = ptrtoint ptr %s_inodes_per_block to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %div222, ptr %s_inodes_per_block, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %154)
  %cmp224 = icmp ugt i32 %172, %154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp228 = icmp eq i32 %166, 0
  %or.cond795 = select i1 %cmp224, i1 true, i1 %cmp228
  br i1 %or.cond795, label %if.end212.cantfind_ext2_crit_edge, label %if.end231

if.end212.cantfind_ext2_crit_edge:                ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #19
  br label %cantfind_ext2

if.end231:                                        ; preds = %if.end212
  %div234 = udiv i32 %167, %div222
  %s_itb_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 6
  %174 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %div234, ptr %s_itb_per_group, align 8
  %div236730 = lshr i32 %154, 5
  %s_desc_per_block = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 8
  %175 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %div236730, ptr %s_desc_per_block, align 8
  %s_sbh = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 12
  %176 = ptrtoint ptr %s_sbh to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %bh.0, ptr %s_sbh, align 8
  %s_state = getelementptr inbounds %struct.ext2_super_block, ptr %es.0, i32 0, i32 16
  %177 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %s_state, align 2
  %179 = call i16 @llvm.bswap.i16(i16 %178)
  %s_mount_state = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 19
  %180 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %s_mount_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %154)
  %tobool.not.i.i = icmp ult i32 %154, 4
  %div238731 = lshr i32 %154, 2
  %181 = call i32 @llvm.ctlz.i32(i32 %div238731, i1 true) #17, !range !304
  %sub.i.op.i = xor i32 %181, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %s_addr_per_block_bits = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 21
  %182 = ptrtoint ptr %s_addr_per_block_bits to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %sub.i, ptr %s_addr_per_block_bits, align 8
  %s_desc_per_block255 = getelementptr inbounds %struct.ext2_sb_info, ptr %170, i32 0, i32 8
  %183 = ptrtoint ptr %s_desc_per_block255 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %s_desc_per_block255, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i.i748 = icmp eq i32 %184, 0
  %185 = call i32 @llvm.ctlz.i32(i32 %184, i1 true) #17, !range !304
  %sub.i.op.i749 = xor i32 %185, 31
  %sub.i750 = select i1 %tobool.not.i.i748, i32 -1, i32 %sub.i.op.i749
  %s_desc_per_block_bits = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 22
  %186 = ptrtoint ptr %s_desc_per_block_bits to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %sub.i750, ptr %s_desc_per_block_bits, align 4
  %187 = ptrtoint ptr %s_magic21 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %s_magic21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61267, i32 %188)
  %cmp258.not = icmp eq i32 %188, 61267
  br i1 %cmp258.not, label %if.end261, label %if.end231.cantfind_ext2_crit_edge

if.end231.cantfind_ext2_crit_edge:                ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #19
  br label %cantfind_ext2

if.end261:                                        ; preds = %if.end231
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 4
  %189 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %b_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %190)
  %cmp263.not = icmp eq i32 %154, %190
  br i1 %cmp263.not, label %if.end269, label %if.then265

if.then265:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool266.not = icmp eq i32 %silent, 0
  br i1 %tobool266.not, label %if.then267, label %if.then265.brelse.exit778_crit_edge

if.then265.brelse.exit778_crit_edge:              ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit778

if.then267:                                       ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.25)
  br label %brelse.exit778

if.end269:                                        ; preds = %if.end261
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %shl207)
  %cmp272.not = icmp eq i32 %154, %shl207
  br i1 %cmp272.not, label %if.end277, label %if.then274

if.then274:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.26, i32 noundef %shl207, i32 noundef %154)
  br label %brelse.exit778

if.end277:                                        ; preds = %if.end269
  %mul280 = shl i32 %shl207, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %mul280)
  %cmp281 = icmp ugt i32 %159, %mul280
  br i1 %cmp281, label %if.then283, label %if.end285

if.then283:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.27, i32 noundef %159)
  br label %brelse.exit778

if.end285:                                        ; preds = %if.end277
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %mul280)
  %cmp289 = icmp ugt i32 %163, %mul280
  br i1 %cmp289, label %if.then291, label %if.end293

if.then291:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.28, i32 noundef %163)
  br label %brelse.exit778

if.end293:                                        ; preds = %if.end285
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %mul280)
  %cmp297 = icmp ugt i32 %167, %mul280
  br i1 %cmp297, label %if.then299, label %if.end301

if.then299:                                       ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.29, i32 noundef %167)
  br label %brelse.exit778

if.end301:                                        ; preds = %if.end293
  %s_blocks_per_group303 = getelementptr inbounds %struct.ext2_sb_info, ptr %170, i32 0, i32 4
  %191 = ptrtoint ptr %s_blocks_per_group303 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %s_blocks_per_group303, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp304 = icmp eq i32 %192, 0
  br i1 %cmp304, label %if.end301.cantfind_ext2_crit_edge, label %if.end307

if.end301.cantfind_ext2_crit_edge:                ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #19
  br label %cantfind_ext2

if.end307:                                        ; preds = %if.end301
  %s_blocks_count = getelementptr inbounds %struct.ext2_super_block, ptr %es.0, i32 0, i32 1
  %193 = ptrtoint ptr %s_blocks_count to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %s_blocks_count, align 4
  %195 = call i32 @llvm.bswap.i32(i32 %194)
  %s_first_data_block = getelementptr inbounds %struct.ext2_super_block, ptr %es.0, i32 0, i32 5
  %196 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %s_first_data_block, align 4
  %198 = xor i32 %197, -1
  %199 = call i32 @llvm.bswap.i32(i32 %198)
  %sub309 = add i32 %199, %195
  %div312 = udiv i32 %sub309, %192
  %add = add i32 %div312, 1
  %s_groups_count = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 9
  %200 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %add, ptr %s_groups_count, align 4
  %201 = ptrtoint ptr %s_desc_per_block255 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %s_desc_per_block255, align 8
  %sub317 = add i32 %202, %div312
  %div320 = udiv i32 %sub317, %202
  %203 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div320, i32 4) #17
  %204 = extractvalue { i32, i1 } %203, 1
  br i1 %204, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !305

kmalloc_array.exit.thread:                        ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #19
  %s_group_desc782 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 14
  %205 = ptrtoint ptr %s_group_desc782 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %s_group_desc782, align 8
  br label %if.then325

if.end7.i:                                        ; preds = %if.end307
  %206 = extractvalue { i32, i1 } %203, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %206, i32 noundef 3264) #24
  %s_group_desc = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 14
  %207 = ptrtoint ptr %s_group_desc to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call8.i, ptr %s_group_desc, align 8
  %cmp323 = icmp eq ptr %call8.i, null
  br i1 %cmp323, label %if.end7.i.if.then325_crit_edge, label %if.end326

if.end7.i.if.then325_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then325

if.then325:                                       ; preds = %if.end7.i.if.then325_crit_edge, %kmalloc_array.exit.thread
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.30)
  br label %brelse.exit778

if.end326:                                        ; preds = %if.end7.i
  %208 = ptrtoint ptr %s_blockgroup_lock to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %s_blockgroup_lock, align 8
  call fastcc void @bgl_lock_init(ptr noundef %209)
  %210 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %s_groups_count, align 4
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %211, i32 noundef 3520) #24
  %s_debts = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 28
  %212 = ptrtoint ptr %s_debts to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %call8.i.i, ptr %s_debts, align 4
  %tobool331.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool331.not, label %if.end326.failed_mount_group_desc.sink.split_crit_edge, label %for.cond.preheader

if.end326.failed_mount_group_desc.sink.split_crit_edge: ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #19
  br label %failed_mount_group_desc.sink.split

for.cond.preheader:                               ; preds = %if.end326
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %sub317)
  %cmp334797.not = icmp ugt i32 %202, %sub317
  br i1 %cmp334797.not, label %for.cond.preheader.for.end353_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end353_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end353

for.body:                                         ; preds = %for.inc351.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0798 = phi i32 [ %inc352, %for.inc351.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call336 = call fastcc i32 @descriptor_loc(ptr noundef %sb, i32 noundef %logic_sb_block.1, i32 noundef %i.0798)
  %conv337 = zext i32 %call336 to i64
  %213 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %s_bdev.i, align 4
  %215 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %s_blocksize.i, align 16
  %call.i762 = call ptr @__bread_gfp(ptr noundef %214, i64 noundef %conv337, i32 noundef %216, i32 noundef 8) #17
  %217 = ptrtoint ptr %s_group_desc to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %s_group_desc, align 8
  %arrayidx = getelementptr ptr, ptr %218, i32 %i.0798
  %219 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call.i762, ptr %arrayidx, align 4
  %220 = load ptr, ptr %s_group_desc, align 8
  %arrayidx341 = getelementptr ptr, ptr %220, i32 %i.0798
  %221 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx341, align 4
  %tobool342.not = icmp eq ptr %222, null
  br i1 %tobool342.not, label %for.cond344.preheader, label %for.inc351

for.cond344.preheader:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0798)
  %cmp345801.not = icmp eq i32 %i.0798, 0
  br i1 %cmp345801.not, label %for.cond344.preheader.failed_mount_group_desc.sink.split_crit_edge, label %for.cond344.preheader.for.body347_crit_edge

for.cond344.preheader.for.body347_crit_edge:      ; preds = %for.cond344.preheader
  br label %for.body347

for.cond344.preheader.failed_mount_group_desc.sink.split_crit_edge: ; preds = %for.cond344.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %failed_mount_group_desc.sink.split

for.body347:                                      ; preds = %brelse.exit766.for.body347_crit_edge, %for.cond344.preheader.for.body347_crit_edge
  %j.0802 = phi i32 [ %inc, %brelse.exit766.for.body347_crit_edge ], [ 0, %for.cond344.preheader.for.body347_crit_edge ]
  %223 = ptrtoint ptr %s_group_desc to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %s_group_desc, align 8
  %arrayidx349 = getelementptr ptr, ptr %224, i32 %j.0802
  %225 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx349, align 4
  %tobool.not.i763 = icmp eq ptr %226, null
  br i1 %tobool.not.i763, label %for.body347.brelse.exit766_crit_edge, label %if.then.i764

for.body347.brelse.exit766_crit_edge:             ; preds = %for.body347
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit766

if.then.i764:                                     ; preds = %for.body347
  call void @__sanitizer_cov_trace_pc() #19
  call void @__brelse(ptr noundef nonnull %226) #17
  br label %brelse.exit766

brelse.exit766:                                   ; preds = %if.then.i764, %for.body347.brelse.exit766_crit_edge
  %inc = add nuw nsw i32 %j.0802, 1
  %exitcond805.not = icmp eq i32 %inc, %i.0798
  br i1 %exitcond805.not, label %brelse.exit766.failed_mount_group_desc.sink.split_crit_edge, label %brelse.exit766.for.body347_crit_edge

brelse.exit766.for.body347_crit_edge:             ; preds = %brelse.exit766
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body347

brelse.exit766.failed_mount_group_desc.sink.split_crit_edge: ; preds = %brelse.exit766
  call void @__sanitizer_cov_trace_pc() #19
  br label %failed_mount_group_desc.sink.split

for.inc351:                                       ; preds = %for.body
  %inc352 = add nuw nsw i32 %i.0798, 1
  %exitcond.not = icmp eq i32 %inc352, %div320
  br i1 %exitcond.not, label %for.inc351.for.end353_crit_edge, label %for.inc351.for.body_crit_edge

for.inc351.for.body_crit_edge:                    ; preds = %for.inc351
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc351.for.end353_crit_edge:                  ; preds = %for.inc351
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end353

for.end353:                                       ; preds = %for.inc351.for.end353_crit_edge, %for.cond.preheader.for.end353_crit_edge
  %call354 = call fastcc i32 @ext2_check_descriptors(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %if.then356, label %if.end357

if.then356:                                       ; preds = %for.end353
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.32)
  br label %failed_mount2

if.end357:                                        ; preds = %for.end353
  %s_gdb_count = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 7
  %227 = ptrtoint ptr %s_gdb_count to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %div320, ptr %s_gdb_count, align 4
  %s_next_generation = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 26
  call void @get_random_bytes(ptr noundef %s_next_generation, i32 noundef 4) #17
  %s_next_gen_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 25
  call void @__raw_spin_lock_init(ptr noundef %s_next_gen_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @ext2_fill_super.__key.33, i16 noundef signext 3) #17
  %s_rsv_window_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 33
  call void @__raw_spin_lock_init(ptr noundef %s_rsv_window_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @ext2_fill_super.__key.35, i16 noundef signext 3) #17
  %s_rsv_window_root = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 34
  %228 = ptrtoint ptr %s_rsv_window_root to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr null, ptr %s_rsv_window_root, align 8
  %s_rsv_window_head = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 35
  %rsv_goal_size = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 1
  %229 = call ptr @memset(ptr %rsv_goal_size, i32 0, i32 16)
  call void @ext2_rsv_window_add(ptr noundef %sb, ptr noundef %s_rsv_window_head) #17
  %s_freeblocks_counter = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 29
  %call372 = call i32 @ext2_count_free_blocks(ptr noundef %sb) #17
  %conv373 = zext i32 %call372 to i64
  %call374 = call i32 @__percpu_counter_init(ptr noundef %s_freeblocks_counter, i64 noundef %conv373, i32 noundef 3264, ptr noundef nonnull @ext2_fill_super.__key.37) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %tobool375.not = icmp eq i32 %call374, 0
  br i1 %tobool375.not, label %if.end381, label %if.end357.if.then390_crit_edge

if.end357.if.then390_crit_edge:                   ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then390

if.end381:                                        ; preds = %if.end357
  %s_freeinodes_counter = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 30
  %call378 = call i32 @ext2_count_free_inodes(ptr noundef %sb) #17
  %conv379 = zext i32 %call378 to i64
  %call380 = call i32 @__percpu_counter_init(ptr noundef %s_freeinodes_counter, i64 noundef %conv379, i32 noundef 3264, ptr noundef nonnull @ext2_fill_super.__key.38) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call380)
  %tobool382.not = icmp eq i32 %call380, 0
  br i1 %tobool382.not, label %if.end388, label %if.end381.if.then390_crit_edge

if.end381.if.then390_crit_edge:                   ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then390

if.end388:                                        ; preds = %if.end381
  %s_dirs_counter = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 31
  %call385 = call i32 @ext2_count_dirs(ptr noundef %sb) #17
  %conv386 = zext i32 %call385 to i64
  %call387 = call i32 @__percpu_counter_init(ptr noundef %s_dirs_counter, i64 noundef %conv386, i32 noundef 3264, ptr noundef nonnull @ext2_fill_super.__key.39) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387)
  %tobool389.not = icmp eq i32 %call387, 0
  br i1 %tobool389.not, label %if.end391, label %if.end388.if.then390_crit_edge

if.end388.if.then390_crit_edge:                   ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then390

if.then390:                                       ; preds = %if.end388.if.then390_crit_edge, %if.end381.if.then390_crit_edge, %if.end357.if.then390_crit_edge
  %err.1794 = phi i32 [ %call387, %if.end388.if.then390_crit_edge ], [ %call380, %if.end381.if.then390_crit_edge ], [ %call374, %if.end357.if.then390_crit_edge ]
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.40)
  br label %failed_mount3

if.end391:                                        ; preds = %if.end388
  %call392 = call ptr @ext2_xattr_create_cache() #17
  %s_ea_block_cache = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 37
  %230 = ptrtoint ptr %s_ea_block_cache to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call392, ptr %s_ea_block_cache, align 4
  %tobool394.not = icmp eq ptr %call392, null
  br i1 %tobool394.not, label %if.then395, label %if.end396

if.then395:                                       ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.41)
  br label %failed_mount3

if.end396:                                        ; preds = %if.end391
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %231 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr @ext2_sops, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %232 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @ext2_export_ops, ptr %s_export_op, align 16
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %233 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr @ext2_xattr_handlers, ptr %s_xattr, align 16
  %dq_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 7
  %234 = ptrtoint ptr %dq_op to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @dquot_operations, ptr %dq_op, align 8
  %s_qcop = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 8
  %235 = ptrtoint ptr %s_qcop to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr @ext2_quotactl_ops, ptr %s_qcop, align 4
  %s_quota_types = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 30
  %236 = ptrtoint ptr %s_quota_types to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 3, ptr %s_quota_types, align 8
  %call397 = call ptr @ext2_iget(ptr noundef %sb, i32 noundef 2) #17
  %cmp.i = icmp ugt ptr %call397, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then399, label %if.end401

if.then399:                                       ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #19
  %237 = ptrtoint ptr %call397 to i32
  br label %failed_mount3

if.end401:                                        ; preds = %if.end396
  %238 = ptrtoint ptr %call397 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %call397, align 8
  %240 = and i16 %239, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %240)
  %cmp404 = icmp eq i16 %240, 16384
  br i1 %cmp404, label %lor.lhs.false406, label %if.end401.if.then410_crit_edge

if.end401.if.then410_crit_edge:                   ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then410

lor.lhs.false406:                                 ; preds = %if.end401
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call397, i32 0, i32 22
  %241 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %242)
  %tobool407.not = icmp eq i64 %242, 0
  br i1 %tobool407.not, label %lor.lhs.false406.if.then410_crit_edge, label %lor.lhs.false408

lor.lhs.false406.if.then410_crit_edge:            ; preds = %lor.lhs.false406
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then410

lor.lhs.false408:                                 ; preds = %lor.lhs.false406
  %i_size = getelementptr inbounds %struct.inode, ptr %call397, i32 0, i32 14
  %243 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %244)
  %tobool409.not = icmp eq i64 %244, 0
  br i1 %tobool409.not, label %lor.lhs.false408.if.then410_crit_edge, label %if.end411

lor.lhs.false408.if.then410_crit_edge:            ; preds = %lor.lhs.false408
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then410

if.then410:                                       ; preds = %lor.lhs.false408.if.then410_crit_edge, %lor.lhs.false406.if.then410_crit_edge, %if.end401.if.then410_crit_edge
  call void @iput(ptr noundef %call397) #17
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.42)
  br label %failed_mount3

if.end411:                                        ; preds = %lor.lhs.false408
  %call412 = call ptr @d_make_root(ptr noundef %call397) #17
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %245 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call412, ptr %s_root, align 64
  %tobool414.not = icmp eq ptr %call412, null
  br i1 %tobool414.not, label %if.then415, label %if.end416

if.then415:                                       ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.43)
  br label %failed_mount3

if.end416:                                        ; preds = %if.end411
  %246 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %s_fs_info, align 16
  %s_es418 = getelementptr inbounds %struct.ext2_sb_info, ptr %247, i32 0, i32 13
  %248 = ptrtoint ptr %s_es418 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %s_es418, align 4
  %s_feature_compat419 = getelementptr inbounds %struct.ext2_super_block, ptr %249, i32 0, i32 28
  %250 = ptrtoint ptr %s_feature_compat419 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %s_feature_compat419, align 4
  %and420 = and i32 %251, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and420)
  %tobool421.not = icmp eq i32 %and420, 0
  br i1 %tobool421.not, label %if.end416.if.end423_crit_edge, label %if.then422

if.end416.if.end423_crit_edge:                    ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end423

if.then422:                                       ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.44)
  br label %if.end423

if.end423:                                        ; preds = %if.then422, %if.end416.if.end423_crit_edge
  %252 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %s_flags, align 4
  %and.i769 = and i32 %253, 1
  %call426 = call fastcc i32 @ext2_setup_super(ptr noundef %sb, ptr noundef %es.0, i32 noundef %and.i769)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call426)
  %tobool427.not = icmp eq i32 %call426, 0
  br i1 %tobool427.not, label %if.end423.if.end431_crit_edge, label %if.then428

if.end423.if.end431_crit_edge:                    ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end431

if.then428:                                       ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #19
  %254 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %s_flags, align 4
  %or430 = or i32 %255, 1
  store i32 %or430, ptr %s_flags, align 4
  br label %if.end431

if.end431:                                        ; preds = %if.then428, %if.end423.if.end431_crit_edge
  call fastcc void @ext2_write_super(ptr noundef %sb)
  br label %cleanup

cantfind_ext2:                                    ; preds = %if.end301.cantfind_ext2_crit_edge, %if.end231.cantfind_ext2_crit_edge, %if.end212.cantfind_ext2_crit_edge, %if.end206.cantfind_ext2_crit_edge, %if.end19.cantfind_ext2_crit_edge
  %bh.1 = phi ptr [ %call.i734, %if.end19.cantfind_ext2_crit_edge ], [ %bh.0, %if.end206.cantfind_ext2_crit_edge ], [ %bh.0, %if.end212.cantfind_ext2_crit_edge ], [ %bh.0, %if.end231.cantfind_ext2_crit_edge ], [ %bh.0, %if.end301.cantfind_ext2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool432.not = icmp eq i32 %silent, 0
  br i1 %tobool432.not, label %if.then433, label %cantfind_ext2.brelse.exit778_crit_edge

cantfind_ext2.brelse.exit778_crit_edge:           ; preds = %cantfind_ext2
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit778

if.then433:                                       ; preds = %cantfind_ext2
  call void @__sanitizer_cov_trace_pc() #19
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.45, ptr noundef %s_id)
  br label %brelse.exit778

failed_mount3:                                    ; preds = %if.then415, %if.then410, %if.then399, %if.then395, %if.then390
  %ret.0 = phi i32 [ %err.1794, %if.then390 ], [ %237, %if.then399 ], [ -12, %if.then415 ], [ -22, %if.then410 ], [ -12, %if.then395 ]
  %s_ea_block_cache435 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 37
  %256 = ptrtoint ptr %s_ea_block_cache435 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %s_ea_block_cache435, align 4
  call void @ext2_xattr_destroy_cache(ptr noundef %257) #17
  call void @percpu_counter_destroy(ptr noundef %s_freeblocks_counter) #17
  %s_freeinodes_counter437 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 30
  call void @percpu_counter_destroy(ptr noundef %s_freeinodes_counter437) #17
  %s_dirs_counter438 = getelementptr inbounds %struct.ext2_sb_info, ptr %call7.i.i, i32 0, i32 31
  call void @percpu_counter_destroy(ptr noundef %s_dirs_counter438) #17
  br label %failed_mount2

failed_mount2:                                    ; preds = %failed_mount3, %if.then356
  %ret.1 = phi i32 [ %ret.0, %failed_mount3 ], [ -22, %if.then356 ]
  br i1 %cmp334797.not, label %failed_mount2.failed_mount_group_desc_crit_edge, label %failed_mount2.for.body442_crit_edge

failed_mount2.for.body442_crit_edge:              ; preds = %failed_mount2
  br label %for.body442

failed_mount2.failed_mount_group_desc_crit_edge:  ; preds = %failed_mount2
  call void @__sanitizer_cov_trace_pc() #19
  br label %failed_mount_group_desc

for.body442:                                      ; preds = %brelse.exit774.for.body442_crit_edge, %failed_mount2.for.body442_crit_edge
  %i.1800 = phi i32 [ %inc446, %brelse.exit774.for.body442_crit_edge ], [ 0, %failed_mount2.for.body442_crit_edge ]
  %258 = ptrtoint ptr %s_group_desc to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %s_group_desc, align 8
  %arrayidx444 = getelementptr ptr, ptr %259, i32 %i.1800
  %260 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx444, align 4
  %tobool.not.i771 = icmp eq ptr %261, null
  br i1 %tobool.not.i771, label %for.body442.brelse.exit774_crit_edge, label %if.then.i772

for.body442.brelse.exit774_crit_edge:             ; preds = %for.body442
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit774

if.then.i772:                                     ; preds = %for.body442
  call void @__sanitizer_cov_trace_pc() #19
  call void @__brelse(ptr noundef nonnull %261) #17
  br label %brelse.exit774

brelse.exit774:                                   ; preds = %if.then.i772, %for.body442.brelse.exit774_crit_edge
  %inc446 = add nuw nsw i32 %i.1800, 1
  %exitcond804.not = icmp eq i32 %inc446, %div320
  br i1 %exitcond804.not, label %brelse.exit774.failed_mount_group_desc_crit_edge, label %brelse.exit774.for.body442_crit_edge

brelse.exit774.for.body442_crit_edge:             ; preds = %brelse.exit774
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body442

brelse.exit774.failed_mount_group_desc_crit_edge: ; preds = %brelse.exit774
  call void @__sanitizer_cov_trace_pc() #19
  br label %failed_mount_group_desc

failed_mount_group_desc.sink.split:               ; preds = %brelse.exit766.failed_mount_group_desc.sink.split_crit_edge, %for.cond344.preheader.failed_mount_group_desc.sink.split_crit_edge, %if.end326.failed_mount_group_desc.sink.split_crit_edge
  %.str.31.sink = phi ptr [ @.str.30, %if.end326.failed_mount_group_desc.sink.split_crit_edge ], [ @.str.31, %for.cond344.preheader.failed_mount_group_desc.sink.split_crit_edge ], [ @.str.31, %brelse.exit766.failed_mount_group_desc.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ -12, %if.end326.failed_mount_group_desc.sink.split_crit_edge ], [ -22, %for.cond344.preheader.failed_mount_group_desc.sink.split_crit_edge ], [ -22, %brelse.exit766.failed_mount_group_desc.sink.split_crit_edge ]
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull %.str.31.sink)
  br label %failed_mount_group_desc

failed_mount_group_desc:                          ; preds = %failed_mount_group_desc.sink.split, %brelse.exit774.failed_mount_group_desc_crit_edge, %failed_mount2.failed_mount_group_desc_crit_edge
  %ret.2 = phi i32 [ %ret.1, %failed_mount2.failed_mount_group_desc_crit_edge ], [ %ret.2.ph, %failed_mount_group_desc.sink.split ], [ %ret.1, %brelse.exit774.failed_mount_group_desc_crit_edge ]
  %262 = ptrtoint ptr %s_group_desc to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %s_group_desc, align 8
  call void @kfree(ptr noundef %263) #17
  %264 = ptrtoint ptr %s_debts to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %s_debts, align 4
  call void @kfree(ptr noundef %265) #17
  br label %brelse.exit778

brelse.exit778:                                   ; preds = %failed_mount_group_desc, %if.then433, %cantfind_ext2.brelse.exit778_crit_edge, %if.then325, %if.then299, %if.then291, %if.then283, %if.then274, %if.then267, %if.then265.brelse.exit778_crit_edge, %if.then203, %if.then178, %if.then133, %if.then124, %if.end75.brelse.exit778_crit_edge
  %ret.3 = phi i32 [ -22, %cantfind_ext2.brelse.exit778_crit_edge ], [ -22, %if.then433 ], [ -22, %if.then124 ], [ -22, %if.then178 ], [ -22, %if.then265.brelse.exit778_crit_edge ], [ -22, %if.then267 ], [ -22, %if.then274 ], [ -22, %if.then283 ], [ -22, %if.then291 ], [ -22, %if.then299 ], [ -12, %if.then325 ], [ %ret.2, %failed_mount_group_desc ], [ -22, %if.then203 ], [ -22, %if.then133 ], [ -22, %if.end75.brelse.exit778_crit_edge ]
  %bh.2 = phi ptr [ %bh.1, %cantfind_ext2.brelse.exit778_crit_edge ], [ %bh.1, %if.then433 ], [ %call.i734, %if.then124 ], [ %call.i745, %if.then178 ], [ %bh.0, %if.then265.brelse.exit778_crit_edge ], [ %bh.0, %if.then267 ], [ %bh.0, %if.then274 ], [ %bh.0, %if.then283 ], [ %bh.0, %if.then291 ], [ %bh.0, %if.then299 ], [ %bh.0, %if.then325 ], [ %bh.0, %failed_mount_group_desc ], [ %bh.0, %if.then203 ], [ %call.i734, %if.then133 ], [ %call.i734, %if.end75.brelse.exit778_crit_edge ]
  call void @__brelse(ptr noundef nonnull %bh.2) #17
  br label %failed_sbi

failed_sbi:                                       ; preds = %brelse.exit778, %if.then169, %if.then160, %if.then18, %if.then11
  %ret.4 = phi i32 [ %ret.3, %brelse.exit778 ], [ -22, %if.then169 ], [ -22, %if.then160 ], [ -22, %if.then18 ], [ -22, %if.then11 ]
  %266 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr null, ptr %s_fs_info, align 16
  %267 = ptrtoint ptr %s_blockgroup_lock to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %s_blockgroup_lock, align 8
  call void @kfree(ptr noundef %268) #17
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %failed_sbi, %if.end431, %if.then5, %get_sb_block.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %failed_sbi ], [ 0, %if.end431 ], [ -12, %if.then5 ], [ -12, %get_sb_block.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %opts) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_options(ptr noundef %options, ptr noundef %sb, ptr noundef %opts) unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %option = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #17
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #17
  %2 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %option, align 4, !annotation !303
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup112_crit_edge, label %while.cond.preheader

entry.cleanup112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup112

while.cond.preheader:                             ; preds = %entry
  %call155 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.49) #17
  %cmp.not156 = icmp eq ptr %call155, null
  br i1 %cmp.not156, label %while.cond.preheader.cleanup112_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup112_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup112

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %s_resgid = getelementptr inbounds %struct.ext2_mount_options, ptr %opts, i32 0, i32 2
  %s_resuid = getelementptr inbounds %struct.ext2_mount_options, ptr %opts, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call157 = phi ptr [ %call155, %while.body.lr.ph ], [ %call, %cleanup.while.body_crit_edge ]
  %3 = ptrtoint ptr %call157 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %if.end3

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %while.body
  %call4 = call i32 @match_token(ptr noundef nonnull %call157, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #17
  %5 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call4, label %if.end3.cleanup112_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
    i32 3, label %sw.bb10
    i32 5, label %sw.bb13
    i32 4, label %sw.bb26
    i32 6, label %if.end3.cleanup_crit_edge
    i32 8, label %sw.bb48
    i32 9, label %sw.bb55
    i32 7, label %sw.bb62
    i32 10, label %sw.bb69
    i32 11, label %sw.bb72
    i32 12, label %sw.bb75
    i32 13, label %sw.bb78
    i32 14, label %sw.bb81
    i32 15, label %sw.bb84
    i32 16, label %sw.bb87
    i32 17, label %sw.bb90
    i32 18, label %sw.bb93
    i32 19, label %sw.bb96
    i32 20, label %if.end3.sw.bb99_crit_edge
    i32 23, label %if.end3.sw.bb100_crit_edge
    i32 24, label %if.end3.sw.bb100_crit_edge161
    i32 25, label %sw.bb103
    i32 26, label %sw.bb106
    i32 27, label %sw.bb109
    i32 21, label %if.end3.cleanup_crit_edge162
  ]

if.end3.cleanup_crit_edge162:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3.sw.bb100_crit_edge161:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb100

if.end3.sw.bb100_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb100

if.end3.sw.bb99_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb99

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3.cleanup112_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup112

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opts, align 4
  %and = and i32 %7, -129
  store i32 %and, ptr %opts, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opts, align 4
  %or = or i32 %9, 128
  store i32 %or, ptr %opts, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opts, align 4
  %or9 = or i32 %11, 4
  store i32 %or9, ptr %opts, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opts, align 4
  %and12 = and i32 %13, -5
  store i32 %and12, ptr %opts, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end3
  %call14 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %sw.bb13.cleanup112_crit_edge

sw.bb13.cleanup112_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup112

if.end17:                                         ; preds = %sw.bb13
  %14 = call i32 @llvm.read_register.i32(metadata !293) #17
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %18 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 25
  %20 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_ns, align 4
  %22 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %option, align 4
  %call21 = call i32 @make_kuid(ptr noundef %21, i32 noundef %23) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp.i.not = icmp eq i32 %call21, -1
  br i1 %cmp.i.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %option, align 4
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.50, i32 noundef %25)
  br label %cleanup112

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %s_resuid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call21, ptr %s_resuid, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %if.end3
  %call28 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %sw.bb26.cleanup112_crit_edge

sw.bb26.cleanup112_crit_edge:                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup112

if.end31:                                         ; preds = %sw.bb26
  %27 = call i32 @llvm.read_register.i32(metadata !293) #17
  %and.i152 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i152 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task39, align 8
  %cred40 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 99
  %31 = ptrtoint ptr %cred40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cred40, align 16
  %user_ns41 = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 25
  %33 = ptrtoint ptr %user_ns41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %user_ns41, align 4
  %35 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %option, align 4
  %call42 = call i32 @make_kgid(ptr noundef %34, i32 noundef %36) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call42)
  %cmp.i153.not = icmp eq i32 %call42, -1
  br i1 %cmp.i153.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %option, align 4
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.52, i32 noundef %38)
  br label %cleanup112

if.end47:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %s_resgid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call42, ptr %s_resgid, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %opts, align 4
  %and52 = and i32 %41, -113
  %or54 = or i32 %and52, 64
  store i32 %or54, ptr %opts, align 4
  br label %cleanup

sw.bb55:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %opts, align 4
  %and59 = and i32 %43, -113
  %or61 = or i32 %and59, 32
  store i32 %or61, ptr %opts, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %opts, align 4
  %and66 = and i32 %45, -113
  %or68 = or i32 %and66, 16
  store i32 %or68, ptr %opts, align 4
  br label %cleanup

sw.bb69:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %46 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %opts, align 4
  %or71 = or i32 %47, 512
  store i32 %or71, ptr %opts, align 4
  br label %cleanup

sw.bb72:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %48 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %opts, align 4
  %or74 = or i32 %49, 8
  store i32 %or74, ptr %opts, align 4
  br label %cleanup

sw.bb75:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %opts, align 4
  %or77 = or i32 %51, 2
  store i32 %or77, ptr %opts, align 4
  br label %cleanup

sw.bb78:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %opts, align 4
  %and80 = and i32 %53, -3
  store i32 %and80, ptr %opts, align 4
  br label %cleanup

sw.bb81:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %opts, align 4
  %or83 = or i32 %55, 256
  store i32 %or83, ptr %opts, align 4
  br label %cleanup

sw.bb84:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %56 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %opts, align 4
  %or86 = or i32 %57, 16384
  store i32 %or86, ptr %opts, align 4
  br label %cleanup

sw.bb87:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %58 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %opts, align 4
  %and89 = and i32 %59, -16385
  store i32 %and89, ptr %opts, align 4
  br label %cleanup

sw.bb90:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %60 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %opts, align 4
  %or92 = or i32 %61, 32768
  store i32 %or92, ptr %opts, align 4
  br label %cleanup

sw.bb93:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %62 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %opts, align 4
  %and95 = and i32 %63, -32769
  store i32 %and95, ptr %opts, align 4
  br label %cleanup

sw.bb96:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54)
  %64 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %opts, align 4
  %or98 = or i32 %65, 65536
  store i32 %or98, ptr %opts, align 4
  br label %sw.bb99

sw.bb99:                                          ; preds = %sw.bb96, %if.end3.sw.bb99_crit_edge
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.55)
  br label %cleanup

sw.bb100:                                         ; preds = %if.end3.sw.bb100_crit_edge, %if.end3.sw.bb100_crit_edge161
  %66 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %opts, align 4
  %or102 = or i32 %67, 131072
  store i32 %or102, ptr %opts, align 4
  br label %cleanup

sw.bb103:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %68 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %opts, align 4
  %or105 = or i32 %69, 262144
  store i32 %or105, ptr %opts, align 4
  br label %cleanup

sw.bb106:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %70 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %opts, align 4
  %or108 = or i32 %71, 524288
  store i32 %or108, ptr %opts, align 4
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.56)
  br label %cleanup

sw.bb109:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %72 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %opts, align 4
  %and111 = and i32 %73, -524289
  store i32 %and111, ptr %opts, align 4
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.57)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb109, %sw.bb106, %sw.bb103, %sw.bb100, %sw.bb99, %sw.bb93, %sw.bb90, %sw.bb87, %sw.bb84, %sw.bb81, %sw.bb78, %sw.bb75, %sw.bb72, %sw.bb69, %sw.bb62, %sw.bb55, %sw.bb48, %if.end47, %if.end25, %sw.bb10, %sw.bb7, %sw.bb5, %sw.bb, %if.end3.cleanup_crit_edge, %if.end3.cleanup_crit_edge162, %while.body.cleanup_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.49) #17
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %cleanup.cleanup112_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

cleanup.cleanup112_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup112

cleanup112:                                       ; preds = %cleanup.cleanup112_crit_edge, %if.then46, %sw.bb26.cleanup112_crit_edge, %if.then24, %sw.bb13.cleanup112_crit_edge, %if.end3.cleanup112_crit_edge, %while.cond.preheader.cleanup112_crit_edge, %entry.cleanup112_crit_edge
  %retval.2 = phi i32 [ 1, %entry.cleanup112_crit_edge ], [ 0, %if.then46 ], [ 0, %if.then24 ], [ 1, %while.cond.preheader.cleanup112_crit_edge ], [ 1, %cleanup.cleanup112_crit_edge ], [ 0, %sw.bb13.cleanup112_crit_edge ], [ 0, %sw.bb26.cleanup112_crit_edge ], [ 0, %if.end3.cleanup112_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #17
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i64 @ext2_max_size(i32 noundef %bits) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %bits, -2
  %shl = shl nuw i32 1, %sub
  %sub1 = add i32 %bits, -9
  %shr = lshr i32 -1, %sub1
  %sh_prom = zext i32 %sub to i64
  %shl3 = shl nuw i64 1, %sh_prom
  %add = add nuw i64 %shl3, 12
  %mul = shl i32 %sub, 1
  %sh_prom5 = zext i32 %mul to i64
  %shl6 = shl nuw i64 1, %sh_prom5
  %add7 = add i64 %add, %shl6
  %mul9 = mul i32 %sub, 3
  %sh_prom10 = zext i32 %mul9 to i64
  %shl11 = shl nuw i64 1, %sh_prom10
  %add12 = add i64 %add7, %shl11
  %conv = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add12, i64 %conv)
  %cmp = icmp slt i64 %add12, %conv
  br i1 %cmp, label %entry.check_lfs_crit_edge, label %if.end

entry.check_lfs_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_lfs

if.end:                                           ; preds = %entry
  %sub15 = add i32 %shr, -12
  %sub16 = sub i32 %sub15, %shl
  %mul17 = shl i32 %shl, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %sub16, i32 %mul17)
  %cmp18 = icmp ult i32 %sub16, %mul17
  br i1 %cmp18, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sub22 = add i32 %shr, -13
  %div92 = lshr i32 %sub22, %sub
  %add24 = add i32 %div92, 2
  %conv25 = sext i32 %add24 to i64
  %sub26 = sub nsw i64 %conv, %conv25
  br label %check_lfs

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %0 = xor i32 %mul17, -1
  %sub33 = add i32 %sub15, %0
  %div3490 = lshr i32 %sub33, %sub
  %sub38 = add i32 %sub16, -1
  %div4091 = lshr i32 %sub38, %mul
  %add41 = add nuw i32 %shl, 3
  %add29 = add i32 %add41, %div4091
  %add42 = add i32 %add29, %div3490
  %conv43 = sext i32 %add42 to i64
  %sub44 = sub nsw i64 %conv, %conv43
  br label %check_lfs

check_lfs:                                        ; preds = %if.end27, %if.then20, %entry.check_lfs_crit_edge
  %res.0 = phi i64 [ %add12, %entry.check_lfs_crit_edge ], [ %sub26, %if.then20 ], [ %sub44, %if.end27 ]
  %sh_prom45 = zext i32 %bits to i64
  %shl46 = shl i64 %res.0, %sh_prom45
  %1 = tail call i64 @llvm.smin.i64(i64 %shl46, i64 17592186040320)
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bgl_lock_init(ptr noundef %bgl) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__raw_spin_lock_init(ptr noundef %bgl, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.1 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.2 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.3 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.3, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.4 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.4, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.5 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.5, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.6 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.6, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.7 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.7, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.8 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.8, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.9 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.9, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.10 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.10, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.11 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.11, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.12 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.12, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.13 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.13, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.14 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.14, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  %arrayidx.15 = getelementptr [16 x %struct.bgl_lock], ptr %bgl, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.15, ptr noundef nonnull @.str.87, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @descriptor_loc(ptr noundef %sb, i32 noundef %logic_sb_block, i32 noundef %nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %s_first_meta_bg = getelementptr inbounds %struct.ext2_super_block, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %s_first_meta_bg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_first_meta_bg, align 4
  %s_feature_incompat = getelementptr inbounds %struct.ext2_super_block, ptr %3, i32 0, i32 29
  %6 = ptrtoint ptr %s_feature_incompat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_incompat, align 4
  %and = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %8 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %nr)
  %cmp = icmp ugt i32 %8, %nr
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add = add i32 %logic_sb_block, 1
  %add3 = add i32 %add, %nr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %s_desc_per_block = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_desc_per_block, align 8
  %mul = mul i32 %10, %nr
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocks_per_group.i, align 8
  %mul.i = mul i32 %12, %mul
  %s_first_data_block.i = getelementptr inbounds %struct.ext2_super_block, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_first_data_block.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #17
  %add.i = add i32 %15, %mul.i
  %call5 = tail call i32 @ext2_bg_has_super(ptr noundef %sb, i32 noundef %mul) #17
  %add6 = add i32 %add.i, %call5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %add3, %if.then ], [ %add6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext2_check_descriptors(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_groups_count = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp68.not = icmp eq i32 %3, 0
  br i1 %cmp68.not, label %entry.cleanup24_crit_edge, label %for.body.lr.ph

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup24

for.body.lr.ph:                                   ; preds = %entry
  %s_itb_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call1 = tail call ptr @ext2_get_group_desc(ptr noundef %sb, i32 noundef %i.069, ptr noundef null) #17
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocks_per_group.i, align 8
  %mul.i = mul i32 %7, %i.069
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext2_super_block, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_first_data_block.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #17
  %add.i = add i32 %12, %mul.i
  %s_groups_count.i = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 9
  %13 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_groups_count.i, align 4
  %sub.i = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %i.069)
  %cmp.i = icmp eq i32 %sub.i, %i.069
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %s_blocks_count.i = getelementptr inbounds %struct.ext2_super_block, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %s_blocks_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocks_count.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #17
  br label %ext2_group_last_block_no.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %add.i59 = add i32 %add.i, %7
  br label %ext2_group_last_block_no.exit

ext2_group_last_block_no.exit:                    ; preds = %if.else.i, %if.then.i
  %retval.0.in.i = phi i32 [ %17, %if.then.i ], [ %add.i59, %if.else.i ]
  %retval.0.i = add i32 %retval.0.in.i, -1
  %18 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call1, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add.i)
  %cmp4 = icmp ult i32 %20, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %retval.0.i)
  %cmp6 = icmp ugt i32 %20, %retval.0.i
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %ext2_group_last_block_no.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %sb, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef %i.069, i32 noundef %20)
  br label %cleanup24

if.end:                                           ; preds = %ext2_group_last_block_no.exit
  %bg_inode_bitmap = getelementptr inbounds %struct.ext2_group_desc, ptr %call1, i32 0, i32 1
  %21 = ptrtoint ptr %bg_inode_bitmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bg_inode_bitmap, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add.i)
  %cmp8 = icmp ult i32 %23, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %retval.0.i)
  %cmp11 = icmp ugt i32 %23, %retval.0.i
  %or.cond54 = select i1 %cmp8, i1 true, i1 %cmp11
  br i1 %or.cond54, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %sb, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.90, i32 noundef %i.069, i32 noundef %23)
  br label %cleanup24

if.end14:                                         ; preds = %if.end
  %bg_inode_table = getelementptr inbounds %struct.ext2_group_desc, ptr %call1, i32 0, i32 2
  %24 = ptrtoint ptr %bg_inode_table to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bg_inode_table, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add.i)
  %cmp15 = icmp ult i32 %26, %add.i
  br i1 %cmp15, label %if.end14.if.then19_crit_edge, label %lor.lhs.false16

if.end14.if.then19_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19

lor.lhs.false16:                                  ; preds = %if.end14
  %27 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_itb_per_group, align 8
  %add = add i32 %26, -1
  %sub = add i32 %add, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %retval.0.i)
  %cmp18 = icmp ugt i32 %sub, %retval.0.i
  br i1 %cmp18, label %lor.lhs.false16.if.then19_crit_edge, label %for.inc

lor.lhs.false16.if.then19_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false16.if.then19_crit_edge, %if.end14.if.then19_crit_edge
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %sb, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.91, i32 noundef %i.069, i32 noundef %26)
  br label %cleanup24

for.inc:                                          ; preds = %lor.lhs.false16
  %inc = add nuw i32 %i.069, 1
  %29 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_groups_count, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup24_crit_edge

for.inc.cleanup24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup24

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup24:                                        ; preds = %for.inc.cleanup24_crit_edge, %if.then19, %if.then12, %if.then, %entry.cleanup24_crit_edge
  %retval.2 = phi i32 [ 0, %if.then19 ], [ 0, %if.then12 ], [ 0, %if.then ], [ 1, %entry.cleanup24_crit_edge ], [ 1, %for.inc.cleanup24_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_rsv_window_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_count_dirs(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_xattr_create_cache() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_iget(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext2_setup_super(ptr noundef %sb, ptr nocapture noundef %es, i32 noundef %read_only) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_rev_level = getelementptr inbounds %struct.ext2_super_block, ptr %es, i32 0, i32 22
  %2 = ptrtoint ptr %s_rev_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_rev_level, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.118)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_only)
  %tobool.not = icmp eq i32 %read_only, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %s_mount_state = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %s_mount_state, align 4
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end2.if.end32.sink.split_crit_edge, label %if.else

if.end2.if.end32.sink.split_crit_edge:            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.sink.split

if.else:                                          ; preds = %if.end2
  %and7 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else10, label %if.else.if.end32.sink.split_crit_edge

if.else.if.end32.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.sink.split

if.else10:                                        ; preds = %if.else
  %s_max_mnt_count = getelementptr inbounds %struct.ext2_super_block, ptr %es, i32 0, i32 14
  %7 = ptrtoint ptr %s_max_mnt_count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %s_max_mnt_count, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp12 = icmp sgt i16 %9, -1
  br i1 %cmp12, label %land.lhs.true, label %if.else10.if.else20_crit_edge

if.else10.if.else20_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else20

land.lhs.true:                                    ; preds = %if.else10
  %s_mnt_count = getelementptr inbounds %struct.ext2_super_block, ptr %es, i32 0, i32 13
  %10 = ptrtoint ptr %s_mnt_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %s_mnt_count, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %9)
  %cmp17.not = icmp ult i16 %12, %9
  br i1 %cmp17.not, label %land.lhs.true.if.else20_crit_edge, label %land.lhs.true.if.end32.sink.split_crit_edge

land.lhs.true.if.end32.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.sink.split

land.lhs.true.if.else20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true.if.else20_crit_edge, %if.else10.if.else20_crit_edge
  %s_checkinterval = getelementptr inbounds %struct.ext2_super_block, ptr %es, i32 0, i32 20
  %13 = ptrtoint ptr %s_checkinterval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_checkinterval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not = icmp eq i32 %14, 0
  br i1 %tobool21.not, label %if.else20.if.end32_crit_edge, label %land.lhs.true22

if.else20.if.end32_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

land.lhs.true22:                                  ; preds = %if.else20
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %s_lastcheck = getelementptr inbounds %struct.ext2_super_block, ptr %es, i32 0, i32 19
  %16 = ptrtoint ptr %s_lastcheck to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_lastcheck, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add = add i32 %18, %15
  %conv24 = zext i32 %add to i64
  %call25 = tail call i64 @ktime_get_real_seconds() #17
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %conv24)
  %cmp26.not = icmp slt i64 %call25, %conv24
  br i1 %cmp26.not, label %land.lhs.true22.if.end32_crit_edge, label %land.lhs.true22.if.end32.sink.split_crit_edge

land.lhs.true22.if.end32.sink.split_crit_edge:    ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.sink.split

land.lhs.true22.if.end32_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.end32.sink.split:                              ; preds = %land.lhs.true22.if.end32.sink.split_crit_edge, %land.lhs.true.if.end32.sink.split_crit_edge, %if.else.if.end32.sink.split_crit_edge, %if.end2.if.end32.sink.split_crit_edge
  %.str.120.sink = phi ptr [ @.str.119, %if.end2.if.end32.sink.split_crit_edge ], [ @.str.120, %if.else.if.end32.sink.split_crit_edge ], [ @.str.121, %land.lhs.true.if.end32.sink.split_crit_edge ], [ @.str.122, %land.lhs.true22.if.end32.sink.split_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull %.str.120.sink)
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %land.lhs.true22.if.end32_crit_edge, %if.else20.if.end32_crit_edge
  %s_max_mnt_count33 = getelementptr inbounds %struct.ext2_super_block, ptr %es, i32 0, i32 14
  %19 = ptrtoint ptr %s_max_mnt_count33 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %s_max_mnt_count33, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool34.not = icmp eq i16 %20, 0
  br i1 %tobool34.not, label %if.then35, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %s_max_mnt_count33 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 5120, ptr %s_max_mnt_count33, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %s_mnt_count38 = getelementptr inbounds %struct.ext2_super_block, ptr %es, i32 0, i32 13
  %22 = ptrtoint ptr %s_mnt_count38 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %s_mnt_count38, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #17
  %add.i = add i16 %24, 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %add.i) #17
  %26 = ptrtoint ptr %s_mnt_count38 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %s_mnt_count38, align 2
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_mount_opt, align 4
  %and40 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.cleanup_crit_edge, label %if.then42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %31 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocksize, align 16
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 8
  %s_groups_count = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_groups_count, align 4
  %s_blocks_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %28, i32 0, i32 4
  %37 = ptrtoint ptr %s_blocks_per_group to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocks_per_group, align 8
  %s_inodes_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %28, i32 0, i32 5
  %39 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_inodes_per_group, align 4
  %s_mount_opt45 = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 15
  %41 = ptrtoint ptr %s_mount_opt45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_mount_opt45, align 4
  tail call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42)
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end37.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext2_write_super(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i, align 4
  %call2.i = tail call i32 @dquot_writeback_dquots(ptr noundef %sb, i32 noundef -1) #17
  %s_lock.i = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock.i) #17
  %s_state.i = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %s_state.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s_state.i, align 2
  %8 = and i16 %7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %if.then.ext2_sync_fs.exit_crit_edge, label %if.then.i

if.then.ext2_sync_fs.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %ext2_sync_fs.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %and5.i = and i16 %7, -257
  %9 = ptrtoint ptr %s_state.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %and5.i, ptr %s_state.i, align 2
  br label %ext2_sync_fs.exit

ext2_sync_fs.exit:                                ; preds = %if.then.i, %if.then.ext2_sync_fs.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_lock.i) #17
  tail call void @ext2_sync_super(ptr noundef %sb, ptr noundef %5, i32 noundef 1) #17
  br label %if.end

if.end:                                           ; preds = %ext2_sync_fs.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_xattr_destroy_cache(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_bg_has_super(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ext2_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ext2_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %i_block_alloc_info = getelementptr inbounds %struct.ext2_inode_info, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %i_block_alloc_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %i_block_alloc_info, align 8
  %vfs_inode = getelementptr inbounds %struct.ext2_inode_info, ptr %call, i32 0, i32 15
  %i_version.i.i = getelementptr inbounds %struct.ext2_inode_info, ptr %call, i32 0, i32 15, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef 2) #17
  %i_dquot = getelementptr inbounds %struct.ext2_inode_info, ptr %call, i32 0, i32 17
  %2 = call ptr @memset(ptr %i_dquot, i32 0, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext2_free_in_core_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ext2_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_write_inode(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_evict_inode(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext2_put_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call.i = tail call i32 @ext2_quota_off(ptr noundef %sb, i32 noundef 0) #17
  %call.1.i = tail call i32 @ext2_quota_off(ptr noundef %sb, i32 noundef 1) #17
  %call.2.i = tail call i32 @ext2_quota_off(ptr noundef %sb, i32 noundef 2) #17
  %s_ea_block_cache = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %s_ea_block_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_ea_block_cache, align 4
  tail call void @ext2_xattr_destroy_cache(ptr noundef %3) #17
  %4 = ptrtoint ptr %s_ea_block_cache to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %s_ea_block_cache, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_es, align 4
  %s_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock) #17
  %s_mount_state = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s_mount_state, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %s_state = getelementptr inbounds %struct.ext2_super_block, ptr %8, i32 0, i32 16
  %12 = ptrtoint ptr %s_state to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %s_state, align 2
  tail call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  tail call void @ext2_sync_super(ptr noundef %sb, ptr noundef %8, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_gdb_count = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %s_gdb_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_gdb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp31 = icmp sgt i32 %14, 0
  br i1 %cmp31, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %s_group_desc = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %brelse.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %s_group_desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_group_desc, align 8
  %arrayidx = getelementptr ptr, ptr %16, i32 %i.032
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__brelse(ptr noundef nonnull %18) #17
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %brelse.exit.for.end_crit_edge, label %brelse.exit.for.body_crit_edge

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %brelse.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %s_group_desc4 = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %s_group_desc4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_group_desc4, align 8
  tail call void @kfree(ptr noundef %20) #17
  %s_debts = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 28
  %21 = ptrtoint ptr %s_debts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_debts, align 4
  tail call void @kfree(ptr noundef %22) #17
  %s_freeblocks_counter = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 29
  tail call void @percpu_counter_destroy(ptr noundef %s_freeblocks_counter) #17
  %s_freeinodes_counter = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 30
  tail call void @percpu_counter_destroy(ptr noundef %s_freeinodes_counter) #17
  %s_dirs_counter = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 31
  tail call void @percpu_counter_destroy(ptr noundef %s_dirs_counter) #17
  %s_sbh = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_sbh, align 8
  %tobool.not.i28 = icmp eq ptr %24, null
  br i1 %tobool.not.i28, label %for.end.brelse.exit30_crit_edge, label %if.then.i29

for.end.brelse.exit30_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit30

if.then.i29:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__brelse(ptr noundef nonnull %24) #17
  br label %brelse.exit30

brelse.exit30:                                    ; preds = %if.then.i29, %for.end.brelse.exit30_crit_edge
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %s_fs_info.i, align 16
  %s_blockgroup_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 32
  %26 = ptrtoint ptr %s_blockgroup_lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_blockgroup_lock, align 8
  tail call void @kfree(ptr noundef %27) #17
  tail call void @kfree(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_sync_fs(ptr noundef %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %call2 = tail call i32 @dquot_writeback_dquots(ptr noundef %sb, i32 noundef -1) #17
  %s_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock) #17
  %s_state = getelementptr inbounds %struct.ext2_super_block, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_state, align 2
  %6 = and i16 %5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and5 = and i16 %5, -257
  %7 = ptrtoint ptr %s_state to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %and5, ptr %s_state, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  tail call void @ext2_sync_super(ptr noundef %sb, ptr noundef %3, i32 noundef %wait)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_freeze(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_remove_count = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 47
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_remove_count, i32 noundef 4) #17
  %2 = ptrtoint ptr %s_remove_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %s_remove_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_es.i, align 4
  %call2.i = tail call i32 @dquot_writeback_dquots(ptr noundef %sb, i32 noundef -1) #17
  %s_lock.i = getelementptr inbounds %struct.ext2_sb_info, ptr %5, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock.i) #17
  %s_state.i = getelementptr inbounds %struct.ext2_super_block, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %s_state.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_state.i, align 2
  %10 = and i16 %9, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.then.ext2_sync_fs.exit_crit_edge, label %if.then.i

if.then.ext2_sync_fs.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %ext2_sync_fs.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %and5.i = and i16 %9, -257
  %11 = ptrtoint ptr %s_state.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %and5.i, ptr %s_state.i, align 2
  br label %ext2_sync_fs.exit

ext2_sync_fs.exit:                                ; preds = %if.then.i, %if.then.ext2_sync_fs.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_lock.i) #17
  tail call void @ext2_sync_super(ptr noundef %sb, ptr noundef %7, i32 noundef 1) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %s_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock) #17
  %s_mount_state = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_mount_state, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_es, align 4
  %s_state = getelementptr inbounds %struct.ext2_super_block, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %s_state to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %14, ptr %s_state, align 2
  tail call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  %18 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_es, align 4
  tail call void @ext2_sync_super(ptr noundef %sb, ptr noundef %19, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ext2_sync_fs.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_unfreeze(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %entry.ext2_write_super.exit_crit_edge

entry.ext2_write_super.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ext2_write_super.exit

if.then.i:                                        ; preds = %entry
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i.i, align 4
  %call2.i.i = tail call i32 @dquot_writeback_dquots(ptr noundef %sb, i32 noundef -1) #17
  %s_lock.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock.i.i) #17
  %s_state.i.i = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %s_state.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s_state.i.i, align 2
  %8 = and i16 %7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.ext2_sync_fs.exit.i_crit_edge, label %if.then.i.i

if.then.i.ext2_sync_fs.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ext2_sync_fs.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %and5.i.i = and i16 %7, -257
  %9 = ptrtoint ptr %s_state.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %and5.i.i, ptr %s_state.i.i, align 2
  br label %ext2_sync_fs.exit.i

ext2_sync_fs.exit.i:                              ; preds = %if.then.i.i, %if.then.i.ext2_sync_fs.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_lock.i.i) #17
  tail call void @ext2_sync_super(ptr noundef %sb, ptr noundef %5, i32 noundef 1) #17
  br label %ext2_write_super.exit

ext2_write_super.exit:                            ; preds = %ext2_sync_fs.exit.i, %entry.ext2_write_super.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es, align 4
  %s_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock) #17
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %s_overhead_last = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %s_overhead_last to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %s_overhead_last, align 8
  br label %if.end22

if.else:                                          ; preds = %entry
  %s_blocks_last = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %s_blocks_last to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocks_last, align 4
  %s_blocks_count = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %s_blocks_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocks_count, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %15)
  %cmp.not = icmp eq i32 %12, %15
  br i1 %cmp.not, label %if.else.if.end22_crit_edge, label %if.then2

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then2:                                         ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !306
  %s_first_data_block = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_first_data_block, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %s_groups_count = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_groups_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp690.not = icmp eq i32 %20, 0
  br i1 %cmp690.not, label %if.then2.for.end_crit_edge, label %if.then2.for.body_crit_edge

if.then2.for.body_crit_edge:                      ; preds = %if.then2
  br label %for.body

if.then2.for.end_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then2.for.body_crit_edge
  %overhead.092 = phi i32 [ %add9, %for.body.for.body_crit_edge ], [ %18, %if.then2.for.body_crit_edge ]
  %i.091 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then2.for.body_crit_edge ]
  %call7 = tail call i32 @ext2_bg_has_super(ptr noundef %1, i32 noundef %i.091) #17
  %call8 = tail call i32 @ext2_bg_num_gdb(ptr noundef %1, i32 noundef %i.091) #17
  %add = add i32 %call7, %overhead.092
  %add9 = add i32 %add, %call8
  %inc = add nuw i32 %i.091, 1
  %21 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_groups_count, align 4
  %cmp6 = icmp ult i32 %inc, %22
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then2.for.end_crit_edge
  %overhead.0.lcssa = phi i32 [ %18, %if.then2.for.end_crit_edge ], [ %add9, %for.body.for.end_crit_edge ]
  %.lcssa = phi i32 [ 0, %if.then2.for.end_crit_edge ], [ %22, %for.body.for.end_crit_edge ]
  %s_itb_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_itb_per_group, align 8
  %add11 = add i32 %24, 2
  %mul = mul i32 %add11, %.lcssa
  %add12 = add i32 %mul, %overhead.0.lcssa
  %s_overhead_last13 = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 10
  %25 = ptrtoint ptr %s_overhead_last13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add12, ptr %s_overhead_last13, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !307
  %26 = ptrtoint ptr %s_blocks_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocks_count, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %s_blocks_last to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %s_blocks_last, align 4
  br label %if.end22

if.end22:                                         ; preds = %for.end, %if.else.if.end22_crit_edge, %if.then
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 61267, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %33 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %f_bsize, align 4
  %s_blocks_count23 = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %s_blocks_count23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocks_count23, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %s_overhead_last24 = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 10
  %37 = ptrtoint ptr %s_overhead_last24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_overhead_last24, align 8
  %sub = sub i32 %36, %38
  %conv = zext i32 %sub to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %39 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv, ptr %f_blocks, align 8
  %call25 = tail call i32 @ext2_count_free_blocks(ptr noundef %1) #17
  %conv26 = zext i32 %call25 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %40 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv26, ptr %f_bfree, align 8
  %41 = tail call i32 @llvm.bswap.i32(i32 %call25)
  %s_free_blocks_count = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 3
  %42 = ptrtoint ptr %s_free_blocks_count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %s_free_blocks_count, align 4
  %43 = ptrtoint ptr %f_bfree to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %f_bfree, align 8
  %s_r_blocks_count = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 2
  %45 = ptrtoint ptr %s_r_blocks_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_r_blocks_count, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %conv30 = zext i32 %47 to i64
  %sub31 = sub i64 %44, %conv30
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %48 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %sub31, ptr %f_bavail, align 8
  %49 = ptrtoint ptr %s_r_blocks_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_r_blocks_count, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %conv34 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %conv34)
  %cmp35 = icmp ult i64 %44, %conv34
  %spec.store.select = select i1 %cmp35, i64 0, i64 %sub31
  %52 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %spec.store.select, ptr %f_bavail, align 8
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %5, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %conv40 = zext i32 %55 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %56 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv40, ptr %f_files, align 8
  %call41 = tail call i32 @ext2_count_free_inodes(ptr noundef %1) #17
  %conv42 = zext i32 %call41 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %57 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv42, ptr %f_ffree, align 8
  %58 = tail call i32 @llvm.bswap.i32(i32 %call41)
  %s_free_inodes_count = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 4
  %59 = ptrtoint ptr %s_free_inodes_count to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %s_free_inodes_count, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %60 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 255, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %s_uuid = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 31
  %61 = ptrtoint ptr %s_uuid to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %s_uuid, align 8, !noalias !308
  %add.ptr.i = getelementptr %struct.ext2_super_block, ptr %5, i32 0, i32 31, i32 8
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %add.ptr.i, align 8, !noalias !308
  %65 = xor i64 %64, %62
  %66 = tail call i64 @llvm.bswap.i64(i64 %65) #17
  %tmp.sroa.0.0.insert.insert = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 32)
  %67 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %f_fsid, align 8
  tail call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_remount(ptr noundef %sb, ptr nocapture noundef readonly %flags, ptr noundef %data) #0 align 64 {
entry:
  %new_opts = alloca %struct.ext2_mount_options, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %new_opts) #17
  %2 = getelementptr inbounds %struct.ext2_mount_options, ptr %new_opts, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ext2_mount_options, ptr %new_opts, i32 0, i32 2
  %call1 = tail call i32 @sync_filesystem(ptr noundef %sb) #17
  %s_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock) #17
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %6 = ptrtoint ptr %new_opts to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %new_opts, align 4
  %s_resuid3 = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %s_resuid3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_resuid3, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  %s_resgid4 = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %s_resgid4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_resgid4, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %3, align 4
  tail call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  %call6 = call fastcc i32 @parse_options(ptr noundef %data, ptr noundef %sb, ptr noundef nonnull %new_opts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup75

if.end:                                           ; preds = %entry
  call void @_raw_spin_lock(ptr noundef %s_lock) #17
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_es, align 4
  %15 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_mount_opt, align 4
  %17 = ptrtoint ptr %new_opts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %new_opts, align 4
  %xor = xor i32 %18, %16
  %and = and i32 %xor, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.92)
  %19 = ptrtoint ptr %new_opts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %new_opts, align 4
  %xor13 = xor i32 %20, 1048576
  store i32 %xor13, ptr %new_opts, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %23 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %25 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  %cmp = xor i1 %26, %tobool.i
  br i1 %cmp, label %if.end14.out_set_crit_edge, label %if.end21

if.end14.out_set_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_set

if.end21:                                         ; preds = %if.end14
  br i1 %26, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end21
  %s_state = getelementptr inbounds %struct.ext2_super_block, ptr %14, i32 0, i32 16
  %27 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %s_state, align 2
  %29 = and i16 %28, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool27.not = icmp eq i16 %29, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %if.then24.out_set_crit_edge

if.then24.out_set_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_set

lor.lhs.false:                                    ; preds = %if.then24
  %s_mount_state = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 19
  %30 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %s_mount_state, align 4
  %32 = and i16 %31, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool30.not = icmp eq i16 %32, 0
  br i1 %tobool30.not, label %lor.lhs.false.out_set_crit_edge, label %if.end32

lor.lhs.false.out_set_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_set

if.end32:                                         ; preds = %lor.lhs.false
  %33 = call i16 @llvm.bswap.i16(i16 %31)
  %34 = ptrtoint ptr %s_state to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %s_state, align 2
  %call35 = call i64 @ktime_get_real_seconds() #17
  %conv36 = trunc i64 %call35 to i32
  %35 = call i32 @llvm.bswap.i32(i32 %conv36)
  %s_mtime = getelementptr inbounds %struct.ext2_super_block, ptr %14, i32 0, i32 11
  %36 = ptrtoint ptr %s_mtime to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %s_mtime, align 4
  call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  %call.i = call i32 @dquot_disable(ptr noundef %sb, i32 noundef -1, i32 noundef 64) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp39 = icmp slt i32 %call.i, 0
  br i1 %cmp39, label %if.end32.cleanup75_crit_edge, label %if.end42

if.end32.cleanup75_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup75

if.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  call void @ext2_sync_super(ptr noundef %sb, ptr noundef %14, i32 noundef 1)
  br label %if.end59

if.else:                                          ; preds = %if.end21
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %s_es44 = getelementptr inbounds %struct.ext2_sb_info, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %s_es44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_es44, align 4
  %s_feature_ro_compat = getelementptr inbounds %struct.ext2_super_block, ptr %40, i32 0, i32 30
  %41 = ptrtoint ptr %s_feature_ro_compat to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_feature_ro_compat, align 4
  %and45 = and i32 %42, -117440513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  %43 = call i32 @llvm.bswap.i32(i32 %and45)
  call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.93, i32 noundef %43)
  br label %cleanup75

if.end49:                                         ; preds = %if.else
  %s_state50 = getelementptr inbounds %struct.ext2_super_block, ptr %14, i32 0, i32 16
  %44 = ptrtoint ptr %s_state50 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %s_state50, align 2
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  %s_mount_state51 = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 19
  %47 = ptrtoint ptr %s_mount_state51 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %s_mount_state51, align 4
  %call52 = call fastcc i32 @ext2_setup_super(ptr noundef %sb, ptr noundef %14, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  %48 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_flags.i, align 4
  %and55 = and i32 %49, -2
  store i32 %and55, ptr %s_flags.i, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end49.if.end56_crit_edge
  call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  %50 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_flags.i, align 4
  %and.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.end56.ext2_write_super.exit_crit_edge

if.end56.ext2_write_super.exit_crit_edge:         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %ext2_write_super.exit

if.then.i:                                        ; preds = %if.end56
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_es.i.i, align 4
  %call2.i.i = call i32 @dquot_writeback_dquots(ptr noundef %sb, i32 noundef -1) #17
  %s_lock.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %53, i32 0, i32 36
  call void @_raw_spin_lock(ptr noundef %s_lock.i.i) #17
  %s_state.i.i = getelementptr inbounds %struct.ext2_super_block, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %s_state.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %s_state.i.i, align 2
  %58 = and i16 %57, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i.i = icmp eq i16 %58, 0
  br i1 %tobool.not.i.i, label %if.then.i.ext2_sync_fs.exit.i_crit_edge, label %if.then.i.i

if.then.i.ext2_sync_fs.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ext2_sync_fs.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %and5.i.i = and i16 %57, -257
  %59 = ptrtoint ptr %s_state.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %and5.i.i, ptr %s_state.i.i, align 2
  br label %ext2_sync_fs.exit.i

ext2_sync_fs.exit.i:                              ; preds = %if.then.i.i, %if.then.i.ext2_sync_fs.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %s_lock.i.i) #17
  call void @ext2_sync_super(ptr noundef %sb, ptr noundef %55, i32 noundef 1) #17
  br label %ext2_write_super.exit

ext2_write_super.exit:                            ; preds = %ext2_sync_fs.exit.i, %if.end56.ext2_write_super.exit_crit_edge
  %call58 = call i32 @dquot_resume(ptr noundef %sb, i32 noundef -1) #17
  br label %if.end59

if.end59:                                         ; preds = %ext2_write_super.exit, %if.end42
  call void @_raw_spin_lock(ptr noundef %s_lock) #17
  br label %out_set

out_set:                                          ; preds = %if.end59, %lor.lhs.false.out_set_crit_edge, %if.then24.out_set_crit_edge, %if.end14.out_set_crit_edge
  %60 = ptrtoint ptr %new_opts to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %new_opts, align 4
  %62 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %s_mount_opt, align 4
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %2, align 4
  %65 = ptrtoint ptr %s_resuid3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %s_resuid3, align 4
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %3, align 4
  %68 = ptrtoint ptr %s_resgid4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %s_resgid4, align 8
  %69 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_flags.i, align 4
  %and68 = and i32 %70, -65537
  %71 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt70 = getelementptr inbounds %struct.ext2_sb_info, ptr %72, i32 0, i32 15
  %73 = ptrtoint ptr %s_mount_opt70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_mount_opt70, align 4
  %and71 = shl i32 %74, 1
  %75 = and i32 %and71, 65536
  %or = or i32 %75, %and68
  store i32 %or, ptr %s_flags.i, align 4
  call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  br label %cleanup75

cleanup75:                                        ; preds = %out_set, %if.then47, %if.end32.cleanup75_crit_edge, %entry.cleanup75_crit_edge
  %retval.1 = phi i32 [ 0, %out_set ], [ -22, %entry.cleanup75_crit_edge ], [ %call.i, %if.end32.cleanup75_crit_edge ], [ -30, %if.then47 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_opts) #17
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es, align 4
  %s_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock) #17
  %s_default_mount_opts = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %s_default_mount_opts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_default_mount_opts, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %s_sb_block = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %s_sb_block to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_sb_block, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not = icmp eq i32 %10, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.94, i32 noundef %10) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.95) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt6 = getelementptr inbounds %struct.ext2_sb_info, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %s_mount_opt6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_mount_opt6, align 4
  %and7 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.if.end10_crit_edge, label %if.then9

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.96) #17
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end4.if.end10_crit_edge
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt12 = getelementptr inbounds %struct.ext2_sb_info, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %s_mount_opt12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_mount_opt12, align 4
  %and13 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %and15 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool14.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.end10.if.end18_crit_edge, label %if.then17

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.97) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end10.if.end18_crit_edge
  %s_resuid = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 17
  %call19 = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef 0) #17
  %23 = ptrtoint ptr %s_resuid to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack = load i32, ptr %s_resuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %call19)
  %cmp.i = icmp eq i32 %.unpack, %call19
  br i1 %cmp.i, label %lor.lhs.false, label %if.end18.if.then25_crit_edge

if.end18.if.then25_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.end18
  %s_def_resuid = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 23
  %24 = ptrtoint ptr %s_def_resuid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %s_def_resuid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp23.not = icmp eq i16 %25, 0
  br i1 %cmp23.not, label %lor.lhs.false.if.end29_crit_edge, label %lor.lhs.false.if.then25_crit_edge

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then25

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.end18.if.then25_crit_edge
  %26 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call28 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %26) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.98, i32 noundef %call28) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %lor.lhs.false.if.end29_crit_edge
  %s_resgid = getelementptr inbounds %struct.ext2_sb_info, ptr %3, i32 0, i32 18
  %call31 = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef 0) #17
  %27 = ptrtoint ptr %s_resgid to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack212 = load i32, ptr %s_resgid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack212, i32 %call31)
  %cmp.i219 = icmp eq i32 %.unpack212, %call31
  br i1 %cmp.i219, label %lor.lhs.false36, label %if.end29.if.then40_crit_edge

if.end29.if.then40_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then40

lor.lhs.false36:                                  ; preds = %if.end29
  %s_def_resgid = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 24
  %28 = ptrtoint ptr %s_def_resgid to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %s_def_resgid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp38.not = icmp eq i16 %29, 0
  br i1 %cmp38.not, label %lor.lhs.false36.if.end44_crit_edge, label %lor.lhs.false36.if.then40_crit_edge

lor.lhs.false36.if.then40_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then40

lor.lhs.false36.if.end44_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then40:                                        ; preds = %lor.lhs.false36.if.then40_crit_edge, %if.end29.if.then40_crit_edge
  %30 = insertvalue [1 x i32] undef, i32 %.unpack212, 0
  %call43 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %30) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.99, i32 noundef %call43) #17
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %lor.lhs.false36.if.end44_crit_edge
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt46 = getelementptr inbounds %struct.ext2_sb_info, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %s_mount_opt46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_mount_opt46, align 4
  %and47 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end44.if.end58_crit_edge, label %if.then49

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

if.then49:                                        ; preds = %if.end44
  %s_errors = getelementptr inbounds %struct.ext2_super_block, ptr %5, i32 0, i32 17
  %35 = ptrtoint ptr %s_errors to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %s_errors, align 4
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.135)
  switch i16 %36, label %if.then49.if.end58_crit_edge [
    i16 768, label %if.then49.if.then56_crit_edge
    i16 256, label %if.then49.if.then56_crit_edge236
  ]

if.then49.if.then56_crit_edge236:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then56

if.then49.if.then56_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then56

if.then49.if.end58_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

if.then56:                                        ; preds = %if.then49.if.then56_crit_edge, %if.then49.if.then56_crit_edge236
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.100) #17
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then49.if.end58_crit_edge, %if.end44.if.end58_crit_edge
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt60 = getelementptr inbounds %struct.ext2_sb_info, ptr %39, i32 0, i32 15
  %40 = ptrtoint ptr %s_mount_opt60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_mount_opt60, align 4
  %and61 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end58.if.end64_crit_edge, label %if.then63

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.101) #17
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end58.if.end64_crit_edge
  %42 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt66 = getelementptr inbounds %struct.ext2_sb_info, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %s_mount_opt66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_mount_opt66, align 4
  %and67 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end64.if.end70_crit_edge, label %if.then69

if.end64.if.end70_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end70

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.102) #17
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end64.if.end70_crit_edge
  %46 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt72 = getelementptr inbounds %struct.ext2_sb_info, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %s_mount_opt72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_mount_opt72, align 4
  %and73 = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end70.if.end76_crit_edge, label %if.then75

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.103) #17
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end70.if.end76_crit_edge
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt78 = getelementptr inbounds %struct.ext2_sb_info, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %s_mount_opt78 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_mount_opt78, align 4
  %and79 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end76.if.end82_crit_edge, label %if.then81

if.end76.if.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.104) #17
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end76.if.end82_crit_edge
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt84 = getelementptr inbounds %struct.ext2_sb_info, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %s_mount_opt84 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_mount_opt84, align 4
  %and85 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end82.if.end88_crit_edge, label %if.then87

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.105) #17
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end82.if.end88_crit_edge
  %58 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt90 = getelementptr inbounds %struct.ext2_sb_info, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %s_mount_opt90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_mount_opt90, align 4
  %and91 = and i32 %61, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end88.if.end94_crit_edge, label %if.then93

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end94

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.106) #17
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end88.if.end94_crit_edge
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt96 = getelementptr inbounds %struct.ext2_sb_info, ptr %63, i32 0, i32 15
  %64 = ptrtoint ptr %s_mount_opt96 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_mount_opt96, align 4
  %and97 = and i32 %65, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp ne i32 %and97, 0
  %and100 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  %or.cond214 = select i1 %tobool98.not, i1 true, i1 %tobool101.not
  br i1 %or.cond214, label %if.end94.if.end103_crit_edge, label %if.then102

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

if.then102:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.107) #17
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end94.if.end103_crit_edge
  %66 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt105 = getelementptr inbounds %struct.ext2_sb_info, ptr %67, i32 0, i32 15
  %68 = ptrtoint ptr %s_mount_opt105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_mount_opt105, align 4
  %and106 = and i32 %69, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end103.if.end109_crit_edge, label %if.then108

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end109

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.108) #17
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end103.if.end109_crit_edge
  %70 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt111 = getelementptr inbounds %struct.ext2_sb_info, ptr %71, i32 0, i32 15
  %72 = ptrtoint ptr %s_mount_opt111 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_mount_opt111, align 4
  %and112 = and i32 %73, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp ne i32 %and112, 0
  %and115 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %or.cond215 = select i1 %tobool113.not, i1 true, i1 %tobool116.not
  br i1 %or.cond215, label %if.end109.if.end118_crit_edge, label %if.then117

if.end109.if.end118_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end118

if.then117:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.109) #17
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end109.if.end118_crit_edge
  %74 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt120 = getelementptr inbounds %struct.ext2_sb_info, ptr %75, i32 0, i32 15
  %76 = ptrtoint ptr %s_mount_opt120 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_mount_opt120, align 4
  %and121 = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end118.if.end124_crit_edge, label %if.then123

if.end118.if.end124_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end124

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.110) #17
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end118.if.end124_crit_edge
  %78 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt126 = getelementptr inbounds %struct.ext2_sb_info, ptr %79, i32 0, i32 15
  %80 = ptrtoint ptr %s_mount_opt126 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_mount_opt126, align 4
  %and127 = and i32 %81, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end124.if.end130_crit_edge, label %if.then129

if.end124.if.end130_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end130

if.then129:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.111) #17
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end124.if.end130_crit_edge
  %82 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt132 = getelementptr inbounds %struct.ext2_sb_info, ptr %83, i32 0, i32 15
  %84 = ptrtoint ptr %s_mount_opt132 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_mount_opt132, align 4
  %and133 = and i32 %85, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end130.if.end136_crit_edge, label %if.then135

if.end130.if.end136_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end136

if.then135:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.112) #17
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end130.if.end136_crit_edge
  %86 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt138 = getelementptr inbounds %struct.ext2_sb_info, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %s_mount_opt138 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_mount_opt138, align 4
  %and139 = and i32 %89, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end136.if.end142_crit_edge, label %if.then141

if.end136.if.end142_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end142

if.then141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.113) #17
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end136.if.end142_crit_edge
  %90 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt144 = getelementptr inbounds %struct.ext2_sb_info, ptr %91, i32 0, i32 15
  %92 = ptrtoint ptr %s_mount_opt144 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_mount_opt144, align 4
  %and145 = and i32 %93, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end142.if.end148_crit_edge, label %if.then147

if.end142.if.end148_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end148

if.then147:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.114) #17
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.end142.if.end148_crit_edge
  %94 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt150 = getelementptr inbounds %struct.ext2_sb_info, ptr %95, i32 0, i32 15
  %96 = ptrtoint ptr %s_mount_opt150 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_mount_opt150, align 4
  %and151 = and i32 %97, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.then153, label %if.end148.if.end154_crit_edge

if.end148.if.end154_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

if.then153:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.115) #17
  br label %if.end154

if.end154:                                        ; preds = %if.then153, %if.end148.if.end154_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %s_lock) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_quota_read(ptr nocapture noundef readonly %sb, i32 noundef %type, ptr nocapture noundef writeonly %data, i32 noundef %len, i64 noundef %off) #0 align 64 {
entry:
  %tmp_bh = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %3 to i64
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %6 = trunc i64 %off to i32
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh) #17
  %7 = call ptr @memset(ptr %tmp_bh, i32 255, i32 104)
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !311
  %and.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  %9 = tail call ptr @llvm.returnaddress(i32 0) #17
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #17
  tail call void @trace_hardirqs_on() #17
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %11 = tail call ptr @llvm.returnaddress(i32 0) #17
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %12) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %12) #17
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !312
  %and.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !305

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !313
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !314
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !315
  %16 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %17, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %15, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %17, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !316
  %18 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !317
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %21, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %shr = ashr i64 %off, %sh_prom
  %sub = add i32 %5, -1
  %conv2 = and i32 %sub, %6
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %off)
  %cmp = icmp slt i64 %19, %off
  br i1 %cmp, label %i_size_read.exit.cleanup_crit_edge, label %if.end

i_size_read.exit.cleanup_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %i_size_read.exit
  %conv5 = zext i32 %len to i64
  %add = add i64 %conv5, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %19)
  %cmp6 = icmp sgt i64 %add, %19
  %sub9 = sub i64 %19, %off
  %conv10 = trunc i64 %sub9 to i32
  %len.addr.0 = select i1 %cmp6, i32 %conv10, i32 %len
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp12.not74 = icmp eq i32 %len.addr.0, 0
  br i1 %cmp12.not74, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  %toread.079 = phi i32 [ %len.addr.0, %while.body.lr.ph ], [ %sub33, %if.end32.while.body_crit_edge ]
  %offset.078 = phi i32 [ %conv2, %while.body.lr.ph ], [ 0, %if.end32.while.body_crit_edge ]
  %blk.077 = phi i64 [ %shr, %while.body.lr.ph ], [ %inc, %if.end32.while.body_crit_edge ]
  %data.addr.075 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr34, %if.end32.while.body_crit_edge ]
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  %sub15 = sub i32 %23, %offset.078
  %24 = call i32 @llvm.umin.i32(i32 %sub15, i32 %toread.079)
  %25 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tmp_bh, align 8
  %26 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %b_size, align 8
  %call21 = call i32 @ext2_get_block(ptr noundef %1, i64 noundef %blk.077, ptr noundef nonnull %tmp_bh, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %while.body.cleanup_crit_edge, label %if.end25

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end25:                                         ; preds = %while.body
  %27 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %tmp_bh, align 8
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %30 = call ptr @memset(ptr %data.addr.075, i32 0, i32 %24)
  br label %if.end32

if.else:                                          ; preds = %if.end25
  %31 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %b_blocknr, align 8
  %33 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_bdev.i, align 4
  %35 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_blocksize, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %34, i64 noundef %32, i32 noundef %36, i32 noundef 8) #17
  %tobool29.not = icmp eq ptr %call.i, null
  br i1 %tobool29.not, label %if.else.cleanup_crit_edge, label %brelse.exit

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

brelse.exit:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 %offset.078
  %39 = call ptr @memcpy(ptr %data.addr.075, ptr %add.ptr, i32 %24)
  call void @__brelse(ptr noundef nonnull %call.i) #17
  br label %if.end32

if.end32:                                         ; preds = %brelse.exit, %if.then27
  %sub33 = sub i32 %toread.079, %24
  %add.ptr34 = getelementptr i8, ptr %data.addr.075, i32 %24
  %inc = add i64 %blk.077, 1
  %cmp12.not = icmp eq i32 %sub33, 0
  br i1 %cmp12.not, label %if.end32.cleanup_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.else.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %i_size_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %i_size_read.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call21, %while.body.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ %len.addr.0, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_quota_write(ptr nocapture noundef readonly %sb, i32 noundef %type, ptr nocapture noundef readonly %data, i32 noundef %len, i64 noundef %off) #0 align 64 {
entry:
  %tmp_bh = alloca %struct.buffer_head, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp_bh) #17
  %6 = call ptr @memset(ptr %tmp_bh, i32 255, i32 104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not108 = icmp eq i32 %len, 0
  br i1 %cmp.not108, label %entry.out_crit_edge, label %while.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %sub = add i32 %5, -1
  %7 = trunc i64 %off to i32
  %conv2 = and i32 %sub, %7
  %sh_prom = zext i8 %3 to i64
  %shr = ashr i64 %off, %sh_prom
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %tmp_bh, i32 0, i32 3
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %towrite.0112 = phi i32 [ %len, %while.body.lr.ph ], [ %sub28, %brelse.exit.while.body_crit_edge ]
  %offset.0111 = phi i32 [ %conv2, %while.body.lr.ph ], [ 0, %brelse.exit.while.body_crit_edge ]
  %blk.0110 = phi i64 [ %shr, %while.body.lr.ph ], [ %inc, %brelse.exit.while.body_crit_edge ]
  %data.addr.0109 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr29, %brelse.exit.while.body_crit_edge ]
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %sub5 = sub i32 %9, %offset.0111
  %10 = call i32 @llvm.umin.i32(i32 %sub5, i32 %towrite.0112)
  %11 = ptrtoint ptr %tmp_bh to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tmp_bh, align 8
  %12 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %b_size, align 8
  %call11 = call i32 @ext2_get_block(ptr noundef %1, i64 noundef %blk.0110, ptr noundef nonnull %tmp_bh, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %while.body.out_crit_edge, label %if.end

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0111)
  %tobool.not = icmp eq i32 %offset.0111, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then17_crit_edge

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp15.not = icmp eq i32 %10, %14
  br i1 %cmp15.not, label %if.else, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %15 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %b_blocknr, align 8
  %17 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev.i, align 4
  %19 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %18, i64 noundef %16, i32 noundef %20, i32 noundef 8) #17
  br label %if.end21

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %b_blocknr, align 8
  %23 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdev.i, align 4
  %call.i100 = call ptr @__getblk_gfp(ptr noundef %24, i64 noundef %22, i32 noundef %10, i32 noundef 8) #17
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %bh.0 = phi ptr [ %call.i, %if.then17 ], [ %call.i100, %if.else ]
  %tobool22.not = icmp eq ptr %bh.0, null
  br i1 %tobool22.not, label %if.end21.out_crit_edge, label %if.end27, !prof !305

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end27:                                         ; preds = %if.end21
  call void @__might_sleep(ptr noundef nonnull @.str.116, i32 noundef 366) #17
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bh.0, i32 noundef 4) #17
  %25 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end27.if.then.i101_crit_edge

if.end27.if.then.i101_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i101

trylock_buffer.exit.i:                            ; preds = %if.end27
  call void @llvm.prefetch.p0(ptr nonnull %bh.0, i32 1, i32 3, i32 1) #17
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %bh.0, ptr nonnull %bh.0, i32 4, ptr nonnull elementtype(i32) %bh.0) #17, !srcloc !318
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !319
  %28 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i101_crit_edge

trylock_buffer.exit.i.if.then.i101_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i101

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lock_buffer.exit

if.then.i101:                                     ; preds = %trylock_buffer.exit.i.if.then.i101_crit_edge, %if.end27.if.then.i101_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %bh.0) #17
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i101, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %29 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %offset.0111
  %31 = call ptr @memcpy(ptr %add.ptr, ptr %data.addr.0109, i32 %10)
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 2
  %32 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_page, align 8
  call void @flush_dcache_page(ptr noundef %33) #17
  %34 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.brelse.exit_crit_edge

lock_buffer.exit.brelse.exit_crit_edge:           ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %brelse.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %bh.0) #17
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %lock_buffer.exit.brelse.exit_crit_edge
  call void @mark_buffer_dirty(ptr noundef nonnull %bh.0) #17
  call void @unlock_buffer(ptr noundef nonnull %bh.0) #17
  call void @__brelse(ptr noundef nonnull %bh.0) #17
  %sub28 = sub i32 %towrite.0112, %10
  %add.ptr29 = getelementptr i8, ptr %data.addr.0109, i32 %10
  %inc = add i64 %blk.0110, 1
  %cmp.not = icmp eq i32 %sub28, 0
  br i1 %cmp.not, label %brelse.exit.out_crit_edge, label %brelse.exit.while.body_crit_edge

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

out:                                              ; preds = %brelse.exit.out_crit_edge, %if.end21.out_crit_edge, %while.body.out_crit_edge, %entry.out_crit_edge
  %towrite.0.lcssa = phi i32 [ 0, %entry.out_crit_edge ], [ %towrite.0112, %if.end21.out_crit_edge ], [ 0, %brelse.exit.out_crit_edge ], [ %towrite.0112, %while.body.out_crit_edge ]
  %err.1 = phi i32 [ 0, %entry.out_crit_edge ], [ -5, %if.end21.out_crit_edge ], [ %call11, %brelse.exit.out_crit_edge ], [ %call11, %while.body.out_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %towrite.0.lcssa, i32 %len)
  %cmp30 = icmp eq i32 %towrite.0.lcssa, %len
  br i1 %cmp30, label %out.cleanup_crit_edge, label %if.end33

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end33:                                         ; preds = %out
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_size, align 8
  %conv34 = zext i32 %len to i64
  %add = add i64 %conv34, %off
  %conv35 = zext i32 %towrite.0.lcssa to i64
  %sub36 = sub i64 %add, %conv35
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %sub36)
  %cmp37 = icmp slt i64 %37, %sub36
  br i1 %cmp37, label %if.then39, label %if.end33.if.end44_crit_edge

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then39:                                        ; preds = %if.end33
  %38 = call i32 @llvm.read_register.i32(metadata !293) #17
  %and.i.i.i.i104 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i104 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %41, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %42 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i, label %if.then39.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then39.i_size_write.exit_crit_edge:            ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then39
  %43 = call i32 @llvm.read_register.i32(metadata !293) #17
  %and.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !321
  %47 = call i32 @llvm.read_register.i32(metadata !293) #17
  %and.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %52, ptrtoint (ptr @lockdep_recursion to i32)
  %53 = inttoptr i32 %add.i28.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !322
  %56 = call i32 @llvm.read_register.i32(metadata !293) #17
  %and.i.i.i7.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool20.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %60 = call i32 @llvm.read_register.i32(metadata !293) #17
  %and.i.i.i29.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i = icmp eq i32 %63, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %64 = call i32 @llvm.read_register.i32(metadata !293) #17
  %and.i.i.i9.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %67, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !323
  %68 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %71, ptrtoint (ptr @hardirqs_enabled to i32)
  %72 = inttoptr i32 %add47.i.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !324
  %75 = call i32 @llvm.read_register.i32(metadata !293) #17
  %and.i.i.i12.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %78, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool54.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !325

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.117, i32 noundef 271, i32 noundef 9, ptr noundef null) #17
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then39.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %79 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !326
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %81 = call ptr @llvm.returnaddress(i32 0) #17
  %82 = ptrtoint ptr %81 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %82) #17
  %83 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %sub36, ptr %i_size, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %82) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !327
  %84 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %85, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !328
  %86 = call i32 @llvm.read_register.i32(metadata !293) #17
  %and.i.i.i26.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %89, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  br label %if.end44

if.end44:                                         ; preds = %i_size_write.exit, %if.end33.if.end44_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !329
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #17
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #17
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end44
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end44 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %90 = add i64 %cur.0.i.i, 2
  %add.i.i105 = and i64 %90, -2
  %call.i.i.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #17
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i105) #17
  %cmp.i.i107 = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i107, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !325

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #17
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #17
  %91 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #17
  %92 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #17
  %sub45 = sub i32 %len, %towrite.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %inode_inc_iversion.exit, %out.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub45, %inode_inc_iversion.exit ], [ %err.1, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp_bh) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ext2_get_dquots(ptr noundef readnone %inode) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dquot = getelementptr i8, ptr %inode, i32 792
  ret ptr %i_dquot
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_quota_off(ptr noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call ptr @igrab(ptr noundef nonnull %1) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 @dquot_quota_off(ptr noundef %sb, i32 noundef %type) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_put_crit_edge

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_put

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #17
  %i_flags = getelementptr i8, ptr %1, i32 -268
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, -145
  store i32 %and, ptr %i_flags, align 4
  tail call void @inode_set_flags(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 10) #17
  tail call void @up_write(ptr noundef %i_rwsem.i) #17
  tail call void @__mark_inode_dirty(ptr noundef nonnull %1, i32 noundef 7) #17
  br label %out_put

out_put:                                          ; preds = %if.end6, %if.end.out_put_crit_edge
  tail call void @iput(ptr noundef nonnull %1) #17
  br label %cleanup

out:                                              ; preds = %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %call8 = tail call i32 @dquot_quota_off(ptr noundef %sb, i32 noundef %type) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %out_put
  %retval.0 = phi i32 [ %call3, %out_put ], [ %call8, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_off(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_writeback_dquots(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_bg_num_gdb(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_resume(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ext2_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @ext2_nfs_get_inode) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ext2_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @ext2_nfs_get_inode) #17
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_get_parent(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ext2_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_first_ino = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_first_ino, align 4
  %conv = sext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %ino)
  %cmp = icmp ule i64 %conv, %ino
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %ino)
  %cmp2.not = icmp eq i64 %ino, 2
  %or.cond = or i1 %cmp2.not, %cmp
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %conv6 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv6, i64 %ino)
  %cmp7 = icmp ult i64 %conv6, %ino
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %conv12 = trunc i64 %ino to i32
  %call13 = tail call ptr @ext2_iget(ptr noundef %sb, i32 noundef %conv12) #17
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %generation)
  %tobool.not = icmp eq i32 %generation, 0
  %or.cond35 = or i1 %tobool.not, %cmp.i
  br i1 %or.cond35, label %if.end11.cleanup_crit_edge, label %land.lhs.true18

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true18:                                  ; preds = %if.end11
  %i_generation = getelementptr inbounds %struct.inode, ptr %call13, i32 0, i32 49
  %9 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %generation)
  %cmp19.not = icmp eq i32 %10, %generation
  br i1 %cmp19.not, label %land.lhs.true18.cleanup_crit_edge, label %if.then21

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @iput(ptr noundef %call13) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %land.lhs.true18.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -116 to ptr), %if.then21 ], [ %call13, %land.lhs.true18.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_quota_on(ptr noundef %sb, i32 noundef %type, i32 noundef %format_id, ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dquot_quota_on(ptr noundef %sb, i32 noundef %type, i32 noundef %format_id, ptr noundef %path) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #17
  %i_flags = getelementptr i8, ptr %3, i32 -268
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %or = or i32 %5, 144
  store i32 %or, ptr %i_flags, align 4
  tail call void @inode_set_flags(ptr noundef %3, i32 noundef 10, i32 noundef 10) #17
  tail call void @up_write(ptr noundef %i_rwsem.i) #17
  tail call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_sync(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_set_dqinfo(ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_get_dqblk(ptr noundef, [2 x i32], ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_get_next_dqblk(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_set_dqblk(ptr noundef, [2 x i32], ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_get_state(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_quota_on(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_inodecache() unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.126, i32 noundef 1136, i32 noundef 0, i32 noundef 68288512, i32 noundef 0, i32 noundef 60, ptr noundef nonnull @init_once) #17
  store ptr %call, ptr @ext2_inode_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %i_meta_lock = getelementptr inbounds %struct.ext2_inode_info, ptr %foo, i32 0, i32 13
  tail call void @__rwlock_init(ptr noundef %i_meta_lock, ptr noundef nonnull @.str.127, ptr noundef nonnull @init_once.__key) #17
  %xattr_sem = getelementptr inbounds %struct.ext2_inode_info, ptr %foo, i32 0, i32 12
  tail call void @__init_rwsem(ptr noundef %xattr_sem, ptr noundef nonnull @.str.129, ptr noundef nonnull @init_once.__key.128) #17
  %truncate_mutex = getelementptr inbounds %struct.ext2_inode_info, ptr %foo, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %truncate_mutex, ptr noundef nonnull @.str.131, ptr noundef nonnull @init_once.__key.130) #17
  %vfs_inode = getelementptr inbounds %struct.ext2_inode_info, ptr %foo, i32 0, i32 15
  tail call void @inode_init_once(ptr noundef %vfs_inode) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { cold }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !287, !289, !290, !292}
!llvm.named.register.sp = !{!293}
!llvm.module.flags = !{!294, !295, !296, !297, !298, !299, !300, !301}
!llvm.ident = !{!302}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext2/super.c", i32 70, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ext2_error._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ext2_error._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ext2/super.c", i32 76, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ext2/super.c", i32 78, i32 16}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ext2/super.c", i32 79, i32 9}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ext2/super.c", i32 95, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ext2_msg._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @ext2_msg._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ext2/super.c", i32 110, i32 15}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ext2/super.c", i32 111, i32 8}
!21 = !{ptr @__UNIQUE_ID_alias274, !22, !"__UNIQUE_ID_alias274", i1 false, i1 false}
!22 = !{!"../fs/ext2/super.c", i32 1621, i32 1}
!23 = !{ptr @__UNIQUE_ID_author275, !24, !"__UNIQUE_ID_author275", i1 false, i1 false}
!24 = !{!"../fs/ext2/super.c", i32 1645, i32 1}
!25 = !{ptr @__UNIQUE_ID_description276, !26, !"__UNIQUE_ID_description276", i1 false, i1 false}
!26 = !{!"../fs/ext2/super.c", i32 1646, i32 1}
!27 = !{ptr @__UNIQUE_ID_file277, !28, !"__UNIQUE_ID_file277", i1 false, i1 false}
!28 = !{!"../fs/ext2/super.c", i32 1647, i32 1}
!29 = !{ptr @__UNIQUE_ID_license278, !28, !"__UNIQUE_ID_license278", i1 false, i1 false}
!30 = !{ptr @__initcall__kmod_ext2__279_1648_init_ext2_fs6, !31, !"__initcall__kmod_ext2__279_1648_init_ext2_fs6", i1 false, i1 false}
!31 = !{!"../fs/ext2/super.c", i32 1648, i32 1}
!32 = !{ptr @__exitcall_exit_ext2_fs, !33, !"__exitcall_exit_ext2_fs", i1 false, i1 false}
!33 = !{!"../fs/ext2/super.c", i32 1649, i32 1}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ext2/super.c", i32 1223, i32 16}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ext2/super.c", i32 1224, i32 10}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ext2/super.c", i32 1616, i32 11}
!40 = !{ptr @ext2_fs_type, !41, !"ext2_fs_type", i1 false, i1 false}
!41 = !{!"../fs/ext2/super.c", i32 1614, i32 32}
!42 = !{ptr @ext2_fill_super.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../fs/ext2/super.c", i32 836, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ext2/super.c", i32 848, i32 26}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ext2/super.c", i32 864, i32 26}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ext2/super.c", i32 924, i32 4}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ext2/super.c", i32 933, i32 26}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ext2/super.c", i32 939, i32 26}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ext2/super.c", i32 950, i32 5}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ext2/super.c", i32 953, i32 27}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ext2/super.c", i32 964, i32 5}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ext2/super.c", i32 972, i32 27}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ext2/super.c", i32 979, i32 27}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ext2/super.c", i32 999, i32 5}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ext2/super.c", i32 1034, i32 27}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ext2/super.c", i32 1040, i32 4}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ext2/super.c", i32 1048, i32 4}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ext2/super.c", i32 1054, i32 4}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ext2/super.c", i32 1060, i32 4}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ext2/super.c", i32 1077, i32 26}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ext2/super.c", i32 1094, i32 5}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ext2/super.c", i32 1099, i32 26}
!83 = !{ptr @ext2_fill_super.__key.33, !84, !"__key", i1 false, i1 false}
!84 = !{!"../fs/ext2/super.c", i32 1104, i32 2}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ext2_fill_super.__key.35, !87, !"__key", i1 false, i1 false}
!87 = !{!"../fs/ext2/super.c", i32 1107, i32 2}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ext2_fill_super.__key.37, !90, !"__key", i1 false, i1 false}
!90 = !{!"../fs/ext2/super.c", i32 1121, i32 8}
!91 = !{ptr @ext2_fill_super.__key.38, !92, !"__key", i1 false, i1 false}
!92 = !{!"../fs/ext2/super.c", i32 1124, i32 9}
!93 = !{ptr @ext2_fill_super.__key.39, !94, !"__key", i1 false, i1 false}
!94 = !{!"../fs/ext2/super.c", i32 1128, i32 9}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ext2/super.c", i32 1133, i32 26}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ext2/super.c", i32 1141, i32 26}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ext2/super.c", i32 1165, i32 26}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ext2/super.c", i32 1171, i32 26}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ext2/super.c", i32 1177, i32 4}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ext2/super.c", i32 1186, i32 4}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ext2/super.c", i32 413, i32 35}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ext2/super.c", i32 418, i32 3}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @get_sb_block._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @get_sb_block._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ext2/super.c", i32 482, i32 32}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../fs/ext2/super.c", i32 504, i32 20}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ext2/super.c", i32 506, i32 28}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../fs/ext2/super.c", i32 515, i32 20}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ext2/super.c", i32 517, i32 28}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ext2/super.c", i32 585, i32 17}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/ext2/super.c", i32 585, i32 28}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ext2/super.c", i32 594, i32 28}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/ext2/super.c", i32 618, i32 28}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ext2/super.c", i32 622, i32 28}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ext2/super.c", i32 438, i32 15}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ext2/super.c", i32 439, i32 17}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ext2/super.c", i32 440, i32 14}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ext2/super.c", i32 441, i32 14}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ext2/super.c", i32 442, i32 16}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ext2/super.c", i32 443, i32 16}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/ext2/super.c", i32 444, i32 15}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ext2/super.c", i32 445, i32 15}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ext2/super.c", i32 446, i32 11}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ext2/super.c", i32 447, i32 17}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ext2/super.c", i32 448, i32 18}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ext2/super.c", i32 449, i32 15}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/ext2/super.c", i32 450, i32 16}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/ext2/super.c", i32 451, i32 14}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ext2/super.c", i32 452, i32 17}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ext2/super.c", i32 453, i32 14}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ext2/super.c", i32 454, i32 13}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ext2/super.c", i32 455, i32 19}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ext2/super.c", i32 456, i32 21}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/ext2/super.c", i32 457, i32 12}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/ext2/super.c", i32 458, i32 14}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/ext2/super.c", i32 459, i32 12}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/ext2/super.c", i32 460, i32 12}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/ext2/super.c", i32 461, i32 17}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/ext2/super.c", i32 462, i32 15}
!184 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ext2/super.c", i32 463, i32 14}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ext2/super.c", i32 464, i32 17}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ext2/super.c", i32 465, i32 20}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/ext2/super.c", i32 466, i32 22}
!192 = !{ptr @tokens, !193, !"tokens", i1 false, i1 false}
!193 = !{!"../fs/ext2/super.c", i32 437, i32 28}
!194 = !{ptr @bgl_lock_init.__key, !195, !"__key", i1 false, i1 false}
!195 = !{!"../include/linux/blockgroup_lock.h", i32 32, i32 3}
!196 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/ext2/super.c", i32 699, i32 20}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ext2/super.c", i32 700, i32 9}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/ext2/super.c", i32 709, i32 9}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ext2/super.c", i32 719, i32 9}
!205 = !{ptr @ext2_sops, !206, !"ext2_sops", i1 false, i1 false}
!206 = !{!"../fs/ext2/super.c", i32 343, i32 38}
!207 = !{ptr @ext2_inode_cachep, !208, !"ext2_inode_cachep", i1 false, i1 false}
!208 = !{!"../fs/ext2/super.c", i32 178, i32 28}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/ext2/super.c", i32 1333, i32 30}
!211 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ext2/super.c", i32 1363, i32 5}
!213 = !{ptr @.str.94, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ext2/super.c", i32 247, i32 19}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ext2/super.c", i32 249, i32 17}
!217 = !{ptr @.str.96, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/ext2/super.c", i32 251, i32 17}
!219 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ext2/super.c", i32 253, i32 17}
!221 = !{ptr @.str.98, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/ext2/super.c", i32 256, i32 19}
!223 = !{ptr @.str.99, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ext2/super.c", i32 261, i32 19}
!225 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/ext2/super.c", i32 269, i32 18}
!227 = !{ptr @.str.101, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ext2/super.c", i32 273, i32 17}
!229 = !{ptr @.str.102, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/ext2/super.c", i32 275, i32 17}
!231 = !{ptr @.str.103, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ext2/super.c", i32 277, i32 17}
!233 = !{ptr @.str.104, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/ext2/super.c", i32 279, i32 17}
!235 = !{ptr @.str.105, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ext2/super.c", i32 281, i32 17}
!237 = !{ptr @.str.106, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ext2/super.c", i32 285, i32 17}
!239 = !{ptr @.str.107, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ext2/super.c", i32 288, i32 17}
!241 = !{ptr @.str.108, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/ext2/super.c", i32 294, i32 17}
!243 = !{ptr @.str.109, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ext2/super.c", i32 296, i32 17}
!245 = !{ptr @.str.110, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/ext2/super.c", i32 300, i32 17}
!247 = !{ptr @.str.111, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ext2/super.c", i32 303, i32 17}
!249 = !{ptr @.str.112, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/ext2/super.c", i32 306, i32 17}
!251 = !{ptr @.str.113, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ext2/super.c", i32 309, i32 17}
!253 = !{ptr @.str.114, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/ext2/super.c", i32 312, i32 17}
!255 = !{ptr @.str.115, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/ext2/super.c", i32 315, i32 17}
!257 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!259 = distinct !{null, !260, !"__already_done", i1 false, i1 false}
!260 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!261 = !{ptr @.str.117, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @ext2_export_ops, !263, !"ext2_export_ops", i1 false, i1 false}
!263 = !{!"../fs/ext2/super.c", i32 402, i32 39}
!264 = !{ptr @ext2_quotactl_ops, !265, !"ext2_quotactl_ops", i1 false, i1 false}
!265 = !{!"../fs/ext2/super.c", i32 331, i32 34}
!266 = !{ptr @.str.118, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/ext2/super.c", i32 642, i32 4}
!268 = !{ptr @.str.119, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/ext2/super.c", i32 650, i32 4}
!270 = !{ptr @.str.120, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/ext2/super.c", i32 654, i32 4}
!272 = !{ptr @.str.121, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/ext2/super.c", i32 660, i32 4}
!274 = !{ptr @.str.122, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/ext2/super.c", i32 667, i32 4}
!276 = !{ptr @.str.123, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ext2/super.c", i32 673, i32 27}
!278 = !{ptr @.str.124, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/ext2/super.c", i32 675, i32 4}
!280 = !{ptr @.str.125, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/ext2/super.c", i32 675, i32 20}
!282 = !{ptr @.str.126, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ext2/super.c", i32 214, i32 49}
!284 = !{ptr @init_once.__key, !285, !"__key", i1 false, i1 false}
!285 = !{!"../fs/ext2/super.c", i32 204, i32 2}
!286 = !{ptr @.str.127, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @init_once.__key.128, !288, !"__key", i1 false, i1 false}
!288 = !{!"../fs/ext2/super.c", i32 206, i32 2}
!289 = !{ptr @.str.129, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @init_once.__key.130, !291, !"__key", i1 false, i1 false}
!291 = !{!"../fs/ext2/super.c", i32 208, i32 2}
!292 = !{ptr @.str.131, !291, !"<string literal>", i1 false, i1 false}
!293 = !{!"sp"}
!294 = !{i32 1, !"wchar_size", i32 2}
!295 = !{i32 1, !"min_enum_size", i32 4}
!296 = !{i32 8, !"branch-target-enforcement", i32 0}
!297 = !{i32 8, !"sign-return-address", i32 0}
!298 = !{i32 8, !"sign-return-address-all", i32 0}
!299 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!300 = !{i32 7, !"uwtable", i32 1}
!301 = !{i32 7, !"frame-pointer", i32 2}
!302 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!303 = !{!"auto-init"}
!304 = !{i32 0, i32 33}
!305 = !{!"branch_weights", i32 1, i32 2000}
!306 = !{i64 2154660195}
!307 = !{i64 2154660512}
!308 = !{!309}
!309 = distinct !{!309, !310, !"uuid_to_fsid: %agg.result"}
!310 = distinct !{!310, !"uuid_to_fsid"}
!311 = !{i64 786886, i64 786947}
!312 = !{i64 789618}
!313 = !{i64 789903}
!314 = !{i64 2152746310}
!315 = !{i64 2152746152}
!316 = !{i64 2152746480}
!317 = !{i64 2150015012}
!318 = !{i64 2148392044, i64 2148392076, i64 2148392105, i64 2148392139, i64 2148392170, i64 2148392193}
!319 = !{i64 2148481149}
!320 = !{i64 2152748241}
!321 = !{i64 2149907344}
!322 = !{i64 2149912276}
!323 = !{i64 2149933988}
!324 = !{i64 2149938880}
!325 = !{!"branch_weights", i32 2000, i32 1}
!326 = !{i64 2150015337}
!327 = !{i64 2150015662}
!328 = !{i64 2152760103}
!329 = !{i64 2154526097}
